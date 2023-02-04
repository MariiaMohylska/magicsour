import 'package:flutter/material.dart';
import 'package:magicsour/blocs/router/router_data.dart';
import 'package:magicsour/models/recipe/recipe_model.dart';
import 'package:magicsour/screens/result_screen.dart';

class ResultRoutingPage extends Page<Object> {
  late final List<RecipeModel> result;

  ResultRoutingPage(RouteResultData data)
      : super(key: ValueKey(data.route), name: data.route) {
    result = data.result ?? [];
  }

  @override
  Route<Object> createRoute(BuildContext context) {
    //TODO: pass result buy routing
    return MaterialPageRoute(builder: (_) => ResultScreen(result: result), settings: this);
  }
}