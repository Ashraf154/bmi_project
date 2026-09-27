
import 'package:bmi/core/routing/router_generation_config.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( Calcularot());
}

class Calcularot extends StatelessWidget {
   Calcularot({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        routerConfig: RouterGenerationConfig.goRouter,
      debugShowCheckedModeBanner: false,
   
    
     
    );
  }
}
