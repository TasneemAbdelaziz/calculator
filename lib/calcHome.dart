import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task3/calc_button.dart';

class calcHome extends StatefulWidget{
  static String routeName = "calc";

  @override
  State<calcHome> createState() => _calcHomeState();
}

class _calcHomeState extends State<calcHome> {
  String resualt = '';

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          title: const Text('Calculator',),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Text("${resualt}",style: TextStyle(fontSize: 40),),
                        ],
                      ),
                    ),

              Spacer(),
              Expanded(
                flex: 4,
                child: GridView.count(
                    children: [
                      clacButton(text: "7",click:buttonClick ,),
                      clacButton(text: "8",click:buttonClick ,),
                      clacButton(text: "9",click:buttonClick ,),
                      clacButton(text: "*",click: operatorClick,),
                      clacButton(text: "4",click: buttonClick,),
                      clacButton(text: "5",click: buttonClick,),
                      clacButton(text: "6",click: buttonClick,),
                      clacButton(text: "/",click: operatorClick,),
                      clacButton(text: "1",click: buttonClick,),
                      clacButton(text: "2",click: buttonClick,),
                      clacButton(text: "3",click: buttonClick,),
                      clacButton(text: "+",click: operatorClick, ),
                      clacButton(text: ".",click: buttonClick,),
                      clacButton(text: "0",click: buttonClick,),
                      clacButton(text: "-",click: operatorClick,),
                      clacButton(text: "%",click: operatorClick,),
                      clacButton(text: "=",click: EqualClick,),
                      clacButton(text: "C",click:  clear ,),
                      clacButton(text: "del" ,click:delete ,),

                      // clacButton(text: "sin"),
                    ],
                    crossAxisCount: 4,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
              )
            ],
          ),
        ),
      );
  }

  buttonClick(String num)
  {
    resualt += num;

    setState(() {

    });
  }

  String lhs ='';
  String clickedOperator = '';

  operatorClick(String operator)
  {
    if(clickedOperator.isEmpty)
      {
        lhs = resualt;
      }

    else{
      String rhs = resualt;
     lhs = claclate(lhs,clickedOperator,rhs);
    }
    clickedOperator = operator;
    resualt = '';

    setState(() {

    });
  }

  String claclate(String lhs ,String operator , String rhs)
  {
    double num1 = double.parse(lhs);
    double num2 = double.parse(rhs);
    double res = 0;

    if(operator == "*")
      {
        res = num1 * num2;
      }
    else if(operator == "/")
      {
        res = num1 / num2;
      }
    else if(operator == "+")
      {
        res = num1 + num2;
      }
    else if(operator == "-")
      {
        res = num1 - num2;
      }
    else if(operator == "%")
      {
        res = num1 % num2;
      }

    return res.toString();
  }

  EqualClick(String text)
  {
    String rhs = resualt;
    resualt = claclate(lhs, clickedOperator, rhs);
    lhs = '';
    clickedOperator = '';

    setState(() {

    });
  }

  clear(String text)
  {
    resualt = '';
    clickedOperator = '';
    lhs = '';

    setState(() {

    });
  }

  delete(String text)
  {
    resualt = resualt.substring(0, resualt.length - 1);

    setState(() {

    });
  }
}