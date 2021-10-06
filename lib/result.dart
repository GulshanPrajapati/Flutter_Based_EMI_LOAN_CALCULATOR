import 'dart:math';

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  String inpAmount, inpInterest, inpYear;

  Result({
    required this.inpAmount,
    required this.inpInterest,
    required this.inpYear,
  });

  @override
  Widget build(BuildContext context) {
    List cal() {

      double A = 0.0;
      int P = int.parse(inpAmount);
      double r = double.parse(inpInterest) / 12 / 100;
      //int n = inpYear == "Year(s)" ? int.parse(inpYear) * 12  : int.parse(inpYear);
      int n = int.parse(inpYear) * 12;
      A = (P * r * pow((1 + r), n) / (pow((1 + r), n) - 1));
      double i = A * n - P;
       double  TA = P + i;
      var array = [A, i,TA];
      // String emi = A.toStringAsFixed(2);
      return array;
    }

    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color(0xff112031),
          appBar: AppBar(
            title: Text(" CALCULATED VALUES "),
            backgroundColor: Color(0xff112031),
          ),
          body: Container(
            margin: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 30.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlineButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7.0),
                    ),
                    highlightedBorderColor: Colors.white,
                    borderSide: BorderSide(width: 2, color: Color(0xff345B63)),
                    onPressed: () {},
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            ' Principal Amount ',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Comic',
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '${inpAmount}',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Lobster',
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlineButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7.0),
                    ),
                    highlightedBorderColor: Colors.white,
                    borderSide: BorderSide(width: 2, color: Color(0xff345B63)),
                    onPressed: () {},
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            ' No Of Years ',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Comic',
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '${inpYear}',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Lobster',
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlineButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7.0),
                    ),
                    highlightedBorderColor: Colors.white,
                    borderSide: BorderSide(width: 2, color: Color(0xff345B63)),
                    onPressed: () {},
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            ' Interest Rate ',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Comic',
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '${inpInterest}%',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Lobster',
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                 Divider(color: Colors.white,thickness: 3,),
                Text("Result",style: TextStyle(fontSize: 40.0,color: Colors.blueGrey,fontFamily: 'Lobster'),),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlineButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7.0),
                    ),
                    highlightedBorderColor: Colors.white,
                    borderSide: BorderSide(width: 2, color: Color(0xff345B63)),
                    onPressed: () {},
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            ' Monthly EMI ',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Comic',
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '${cal()[0].toStringAsFixed(2)}',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Lobster',
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlineButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7.0),
                    ),
                    highlightedBorderColor: Colors.white,
                    borderSide: BorderSide(width: 2, color: Color(0xff345B63)),
                    onPressed: () {},
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            ' Interest Amount ',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Comic',
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '${cal()[1].toStringAsFixed(2)}',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Lobster',
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlineButton(
                    shape: RoundedRectangleBorder(

                      borderRadius: BorderRadius.circular(7.0),
                    ),
                    highlightedBorderColor: Colors.white,
                    borderSide: BorderSide(width: 2, color: Color(0xff345B63)),
                    onPressed: () {},
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            ' Total Amount ',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Comic',
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '${(cal()[2]).toStringAsFixed(2)}',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Lobster',
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
