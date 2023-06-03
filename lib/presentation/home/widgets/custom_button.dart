import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   CustomButton({
    super.key,required this.icon,required this.title,
    
  });
  IconData icon;
  final title;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Icon(icon,color: Colors.white,size: 30,),
      Text(title,style: TextStyle(color: Colors.white,fontSize: 18),),
    ],);
  }
}
