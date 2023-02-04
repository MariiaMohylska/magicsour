import 'package:flutter/material.dart';
import 'package:magicsour/models/step_model.dart';
import 'package:magicsour/s_localization.dart';
import 'package:magicsour/ui_kit/common/frosted_glass.dart';

class StepsList extends StatelessWidget {
  final List<StepModel> steps;
  final TextStyle _stepTextStyle =
      TextStyle(color: Colors.brown.shade900, fontSize: 18);

  StepsList({required this.steps, super.key});

  @override
  Widget build(BuildContext context) {
    return FrostedGlass(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.instance!.steps,
            style:
                TextStyle(color: Colors.brown.shade800, fontSize: 25, shadows: [
              Shadow(
                color: Colors.brown.shade50,
                blurRadius: 15,
              )
            ]),
          ),
          Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              ..._getSteps(context),
            ],
          )
        ],
      ),
    );
  }

  List<Widget> _getSteps(BuildContext context) {
    return steps
        .map(
          (step) => Row(
            children: [
              Text(
                step.number.toString(),
                style: const TextStyle(fontSize: 24),
              ),
              const SizedBox(
                width: 25,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 110,
                child: _stepDescription(step.description),
              ),
            ],
          ),
        )
        .toList();
  }

  Widget _stepDescription(String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Text(
            description,
            style: _stepTextStyle,
          ),
        ),
        Divider(
          color: Colors.brown.shade500.withOpacity(0.6),
        )
      ],
    );
  }
}
