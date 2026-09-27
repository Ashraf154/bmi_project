

import 'package:bmi/core/routing/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff0A0E21),
        ),
        backgroundColor: Color(0xff0A0E21),
      
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Your Result',style: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.w700,
          color: Colors.white,
              ),),
              IconButton(onPressed: (){
                                    GoRouter.of(context).pushNamed(AppRoutes.bmiCalculator);

              },
               icon: Icon(Icons.arrow_back,
               color: Colors.white,),
               ),
               Container(
                width: double.infinity,
                height: 400,
                
                decoration: BoxDecoration(
                  color: Color(0xff1A1F38),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 119,vertical: 45),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       
                      Text('NORMAL',style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w700,
                        color: Colors.green,
                      ),),
                           
                      Text('19.5',style: TextStyle(
                        fontSize: 80,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),),
                  Text('culees badan malihide is daji',style: TextStyle(
                   color:  Colors.white,
                   
                   
                  ),),
                  
                  
                    ],
                  ),
                ),
               ),
            ],
          ),
        ),
      ),
    );
  }
}