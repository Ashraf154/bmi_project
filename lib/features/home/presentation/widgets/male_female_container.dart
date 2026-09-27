
import 'package:flutter/material.dart';

class MaleFemaleContainer extends StatelessWidget {
  const MaleFemaleContainer({super.key,required this.text,required this.icons});
 final String text;
 final IconData icons;
  @override
  Widget build(BuildContext context) {
    return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround
                  ,
                  children: [
                    Container(  
                      width: 136,
                      height: 159,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xff1A1F38),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                  Icon(icons,size: 75,color: Colors.white,),
                  Text('$text',style: TextStyle(
                    fontSize: 22,
                     color: Colors.white,
                  ),),
                        ],
                      ),
                    ),
            
           
                   
                  ],
                );
  }
}