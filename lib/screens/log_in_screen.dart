import 'package:flutter/material.dart';
import 'package:magicsour/blocs/account/account_bloc.dart';
import 'package:magicsour/s_localization.dart';
import 'package:magicsour/ui_kit/common/app_colors.dart';
import 'package:magicsour/ui_kit/common/frosted_glass.dart';

class LogInScreen extends StatelessWidget {
  final AccountBloc accountBloc;

  const LogInScreen({
    required this.accountBloc,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () async {
        accountBloc.add(const AccountEvent.logIn());
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            S.instance!.plsLogIn,
            style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: AppColors.brown),
            softWrap: true,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          FrostedGlass(
            width: deviceSize.width / 2,
            height: deviceSize.height / 18,
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Center(
              child: Text(
                S.instance!.googleAuth,
                style: const TextStyle(fontSize: 18.0, color: AppColors.brown),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
