import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magicsour/blocs/bloc_factory.dart';
import 'package:magicsour/blocs/navigation/navigation_bloc.dart';
import 'package:magicsour/s_localization.dart';
import 'package:magicsour/ui_kit/bars/bottom_navbar.dart';
import 'package:magicsour/ui_kit/bars/top_bar.dart';
import 'package:magicsour/models/navigation/navigation_bar_item_view_model.dart';

class MainScreen extends StatefulWidget {
  final Widget child;
  final NavigationBloc navigationBloc = BlocFactory.navigationBloc;

  MainScreen({super.key, required this.child});

  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBloc, NavigationState>(
      bloc: widget.navigationBloc,
      builder: (context, state) {
        final Map<String, List<NavigationBarItemViewModel>> navigationBarItems =
            state is NavigationSelectedState ? state.pages : {};

        return Container(
          color: Colors.white.withOpacity(0.2),
          child: Column(
            children: [
              TopBar(
                title: S.instance!.appName,
                iconViewModel: navigationBarItems['top'],
                onTap: onTap,
              ),
              Expanded(child: widget.child),
              BottomNavBar(
                  items: navigationBarItems['bottom'] ?? [], onTap: onTap),
            ],
          ),
        );
      },
    );
  }

  void onTap(int id) {
    setState(() {
      widget.navigationBloc.add(NavigationEvent.selectPage(pageId: id));
    });
  }
}
