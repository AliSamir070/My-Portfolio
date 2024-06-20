import 'package:flutter/material.dart';
import 'package:my_portfolio/features/home/presentation/pages/home_screen.dart';

class MyRouter{

  static Route? onGenerateRoute(RouteSettings settings){
    switch(settings.name){
      case "/":return MaterialPageRoute(builder: (context) => const HomeScreen());
    }
  }
}