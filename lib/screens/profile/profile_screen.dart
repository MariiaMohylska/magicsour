import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magicsour/blocs/account/account_bloc.dart';
import 'package:magicsour/blocs/bloc_factory.dart';
import 'package:magicsour/blocs/router/router_bloc.dart';
import 'package:magicsour/blocs/router/router_data.dart';
import 'package:magicsour/s_localization.dart';
import 'package:magicsour/screens/log_in_screen.dart';
import 'package:magicsour/ui_kit/common/row_field.dart';
import 'package:magicsour/ui_kit/dialogs/allergens_dialog.dart';
import 'package:magicsour/ui_kit/dialogs/restricted_product_dialog.dart';

class ProfileScreen extends StatefulWidget {
  final RouterBloc routerBloc = BlocFactory.routerBloc;
  final AccountBloc accountBloc = BlocFactory.accountBloc;

  ProfileScreen({super.key});

  @override
  State<StatefulWidget> createState() => ProfileScreenState();
}

class ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
        bloc: widget.accountBloc,
        builder: (context, state) {
          if (state is AccountLoggedInState) {
            return _loggedInContent(state);
          } else {
            return LogInScreen(
              accountBloc: widget.accountBloc,
            );
          }
        });
  }

  Widget _loggedInContent(AccountLoggedInState accountState) {
    final restrictedProducts = accountState.restrictedProducts;
    final allergensList = accountState.allergensList;

    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          RowField(
            preTitle: const Icon(Icons.favorite),
            title: S.instance!.favorites,
            onPressed: () {
              widget.routerBloc
                  .add(const RouterEvent.push(data: RouterData.favorites()));
            },
          ),
          RowField(
            preTitle: const Icon(Icons.shopping_cart),
            title: S.instance!.shoppingList,
            onPressed: () {
              widget.routerBloc
                  .add(const RouterEvent.push(data: RouterData.shoppingList()));
            },
          ),
          RowField(
            preTitle: const Icon(Icons.coronavirus),
            title: S.instance!.allergens,
            onPressed: () => showDialog(
                context: context,
                builder: (context) {
                  return AllergensDialog(
                    allergens: allergensList,
                    onTap: () => widget.accountBloc.add(
                        AccountEvent.updateAllergens(
                            allergensList: allergensList)),
                  );
                }),
          ),
          RowField(
            preTitle: const Icon(Icons.cancel_outlined),
            title: S.instance!.restrictedProducts,
            onPressed: () => showDialog(
                context: context,
                builder: (context) {
                  return RestrictedProductDialog(
                    restrictedProducts: restrictedProducts,
                    onTap: () => widget.accountBloc.add(
                        AccountEvent.updateRestrictedProducts(
                            restrictedProducts: restrictedProducts)),
                  );
                }),
          ),
          RowField(
            preTitle: const Icon(Icons.map),
            title: S.instance!.guide,
            onPressed: () {},
          ),
          RowField(
            title: S.instance!.privacyPolicy,
            onPressed: () {},
          ),
          RowField(
            title: S.instance!.termsOfUse,
            onPressed: () {},
          ),
          RowField(
            title: S.instance!.faqs,
            onPressed: () {},
          ),
          RowField(
            title: 'Вийти',
            onPressed: () {
              widget.accountBloc.add(const AccountEvent.logOut());
            },
          ),
        ],
      ),
    );
  }
}
