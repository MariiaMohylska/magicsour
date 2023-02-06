import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magicsour/blocs/account/account_bloc.dart';
import 'package:magicsour/blocs/bloc_factory.dart';
import 'package:magicsour/blocs/favorites/favorites_bloc.dart';

class FavouriteButton extends StatefulWidget {
  final String dishId;
  final AccountBloc accountBloc = BlocFactory.accountBloc;
  final FavoritesBloc favoritesBloc = BlocFactory.favoritesBloc;
  final Color color;

  FavouriteButton({required this.dishId, this.color = Colors.brown, super.key});

  @override
  State<FavouriteButton> createState() => FavouriteButtonState();
}

class FavouriteButtonState extends State<FavouriteButton> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: widget.favoritesBloc,
      builder: (context, state) => BlocBuilder(
        bloc: widget.accountBloc,
        builder: (context, accountState) {
          if (accountState is AccountLoggedInState) {
            return Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                onTap: () => widget.favoritesBloc
                    .add(FavoritesEvent.updateStatus(widget.dishId)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 8, right: 8),
                  child: accountState.profile.favorites.contains(widget.dishId)
                      ? Icon(
                          Icons.favorite,
                          size: 48,
                          color: widget.color,
                        )
                      : Icon(
                          Icons.favorite_outline,
                          size: 48,
                          color: widget.color.withOpacity(0.8),
                        ),
                ),
              ),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
