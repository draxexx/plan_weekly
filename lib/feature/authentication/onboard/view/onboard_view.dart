import 'package:flutter/material.dart';
import 'package:plan_weekly/core/base/state/base_state.dart';
import 'package:plan_weekly/core/base/view/base_view.dart';
import 'package:plan_weekly/feature/authentication/onboard/viewmodel/onboard_view_model.dart';

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
        floatingActionButton: floatingActionButtonNumberIncrement,
        body: textNumber,
      );

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
