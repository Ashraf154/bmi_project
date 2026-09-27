
import 'package:bmi/features/home/presentation/widgets/age_container.dart';
import 'package:bmi/core/routing/app_routes.dart';
import 'package:bmi/features/home/presentation/widgets/height_container.dart';
import 'package:bmi/features/home/presentation/widgets/male_female_container.dart';
import 'package:bmi/features/home/presentation/widgets/weight_container.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class BmiCalculator extends StatefulWidget {
  const BmiCalculator({super.key});

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  double value = 0;
  int weight = 0;
  int age = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff1A1F38),
          centerTitle: true,
          title: Text(
            'BMI calculator',
            style: TextStyle(fontSize: 35, color: Color(0xffFFFFFF)),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 31),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MaleFemaleContainer(text: 'Female', icons: Icons.female),
                    SizedBox(width: 56),
                    MaleFemaleContainer(text: 'Male', icons: Icons.male),
                  ],
                ),

                SizedBox(height: 135),
                HeightContainer(),
                SizedBox(height: 100),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [WeightContainer(), AgeContainer()],
                ),

                SizedBox(height: 70),

                GestureDetector(
                  onDoubleTap: () {
                    GoRouter.of(context).pushNamed(AppRoutes.resultScreen);
                  },
                  child: Container(
                    width: double.infinity,
                    height: 84,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red,
                    ),
                    child: Center(
                      child: Text(
                        'CALCULATE',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Color(0xff0A0E21),
      ),
    );
  }
}
