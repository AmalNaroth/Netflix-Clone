import 'package:flutter/material.dart';

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Center(child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("OOPS\n NO INTERNET!",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                          SizedBox(height: 10,),
                          CircularProgressIndicator(color: Colors.red,),
                        ],
                      ));
  }
}