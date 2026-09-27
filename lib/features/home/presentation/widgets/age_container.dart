
import 'package:flutter/material.dart';

class AgeContainer extends StatefulWidget {
  const AgeContainer({super.key});

  @override
  State<AgeContainer> createState() => _AgeContainerState();
}

class _AgeContainerState extends State<AgeContainer> {
 double value = 0;

  int weight= 0;

  int age =0;

  @override
  Widget build(BuildContext context) {
    return  Container(
                  width: 136,
                  height: 159,
                  decoration: BoxDecoration(
                    color: Color(0xff1A1F38),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('AGE',style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),),

                       Text('$age',style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),),

                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Row(
                        
                          children: [
                                             IconButton(onPressed: (){
                                             setState(() {
                                                age--;
                                             });
                                             }, 
                                             icon: Icon(
                        Icons.remove,),style: IconButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: CircleBorder(),
                        minimumSize: Size(20, 20),
                                             ),),
                                        SizedBox(width: 19,),
                        IconButton(onPressed: (){
                         setState(() {
                            age++;
                         });
                        }, 
                                             icon: Icon(
                        Icons.add,),style: IconButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: CircleBorder(),
                        minimumSize: Size(20, 20),
                                             ),),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
  }
}