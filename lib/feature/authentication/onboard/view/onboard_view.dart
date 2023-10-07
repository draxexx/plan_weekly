import 'package:flutter/material.dart';
import 'package:plan_weekly/core/base/state/base_state.dart';
import 'package:plan_weekly/core/base/view/base_view.dart';
import 'package:plan_weekly/core/components/text/locale_text.dart';
import 'package:plan_weekly/core/init/lang/language_manager.dart';
import 'package:plan_weekly/core/init/lang/locale_keys.g.dart';
import 'package:plan_weekly/feature/authentication/onboard/viewmodel/onboard_view_model.dart';
// ignore: depend_on_referenced_packages
import 'package:easy_localization/easy_localization.dart';

class OnboardView extends StatefulWidget {
  const OnboardView({super.key});

  @override
  State<OnboardView> createState() => _OnboardViewState();
}

class _OnboardViewState extends BaseState<OnboardView> {
  late OnboardViewModel _viewModel;
  @override
  Widget build(BuildContext context) {
    return BaseView<OnboardViewModel>(
      onPageBuilder: (context, value) => scaffoldBody,
      viewModel: OnboardViewModel(),
      onReady: (model) => _viewModel = model,
    );
  }

  Widget get scaffoldBody => Scaffold(
        appBar: appBar,
        floatingActionButton: floatingActionButtonNumberIncrement,
        body: textNumber,
      );

  AppBar get appBar {
    return AppBar(
      title: textWelcomeWidget,
      actions: [
        changeLanguage,
      ],
    );
  }

  LocaleText get textWelcomeWidget {
    return const LocaleText(
      value: LocaleKeys.welcome,
    );
  }

  IconButton get changeLanguage {
    return IconButton(
      onPressed: () {
        context.setLocale(LanguageManager.instance!.enLocale);
      },
      icon: const Icon(
        Icons.change_history,
      ),
    );
  }

  FloatingActionButton get floatingActionButtonNumberIncrement {
    return FloatingActionButton(
      onPressed: () => _viewModel.incrementNumber(),
    );
  }

  Text get textNumber {
    return Text(
      _viewModel.number.toString(),
    );
  }
}
