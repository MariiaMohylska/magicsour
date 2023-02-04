import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:magicsour/blocs/bloc_factory.dart';
import 'package:magicsour/blocs/router/routing/router_delegate.dart';
import 'package:magicsour/blocs/router/routing/router_information_parser.dart';

import 'package:magicsour/s_localization.dart';
import 'package:magicsour/screens/main_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp.router(
      title: 'Magic Sour',
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: const [
        ...AppLocalizations.localizationsDelegates,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      routeInformationParser: RouterInformationParser(),
      routerDelegate: RouteDelegate(bloc: BlocFactory.routerBloc),
      builder: (context, child) {
        S(AppLocalizations.of(context)!);

        return Scaffold(
        body: Container(
          color: Colors.brown.shade200,
          child: MainScreen(
            child: child ?? Container(),
          ),
        ),
      );
      },
    );
  }
}
