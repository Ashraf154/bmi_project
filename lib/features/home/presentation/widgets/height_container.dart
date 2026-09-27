
import 'package:flutter/material.dart';

class HeightContainer extends StatefulWidget {
  const HeightContainer({super.key});

  @override
  State<HeightContainer> createState() => _HeightContainerState();
}

class _HeightContainerState extends State<HeightContainer> {
  double value = 0;
  int weight= 0;
  int age =0; 
  @override
  Widget build(BuildContext context) {
    return  Container(
                  width: 334,
                  height: 189,
                  decoration: BoxDecoration(
                    color: Color(0xff1A1F38),
                    borderRadius: BorderRadius.circular(15),
                  
                  ),
                  child:  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 40),
                    child: Column(
                      children: [
                        Text('HEIGHT',style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),),
                        SizedBox(height: 20,),
                        Slider(
                                      value: value,
                                      min: 0,
                                      max: 100,
                                      divisions: 100,
                                      label: value.round().toString(),
                                      onChanged: (newValue) {
                        setState(() {
                          value = newValue;
                        });
                                      }
                                      ),
                      ],
                    ),
                  ));
  }
}