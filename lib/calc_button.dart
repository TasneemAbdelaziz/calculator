import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class clacButton extends StatelessWidget{
  String text;
  Function click;

  clacButton({required this.text ,required this.click});
  @override
  Widget build(BuildContext context) {
    return
        ElevatedButton(onPressed: (){click(text);}, child: Text('${text}',style: TextStyle(fontSize: 30)));

  }

}