import 'package:emi_calculator/result.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class CalculateLoan extends StatelessWidget {
  // var formKey = GlobalKey<FormState>();
  //---------------------------------Form Validation
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  double amount, interest, tenure;
  String appName;

  TextEditingController amountVal = new TextEditingController();
  TextEditingController interestVal = new TextEditingController();
  TextEditingController tenureVal = new TextEditingController();

  FocusNode myFocusNode = new FocusNode(descendantsAreFocusable: false);
  CalculateLoan({
    required this.amount,
    required this.interest,
    required this.tenure,
    required this.appName,
  });

  void check() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff112031),
        appBar: AppBar(
          title: Center(child: Container(child: Text("${appName} CALCULATOR"))),
          backgroundColor: Color(0xff112031),
        ),
        body: Form(
          key: formKey,
          child: Container(
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      margin: const EdgeInsets.only(top: 50.0),
                      child: Text(
                        "Calculate Your EMI , Provide All The Required Value And Click On Calculate",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Lobster',
                          fontSize: 25.0,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 25.0, horizontal: 30.0),
                    child: Center(
                      child: Container(
                        // color: Color(0xffD4ECDD),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: TextFormField(
                              validator: RequiredValidator(errorText: 'this field is required'),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w200),
                                controller: amountVal,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                  hintStyle: TextStyle(
                                    color: Colors.white,
                                  ),
                                  border: OutlineInputBorder(),
                                  hintText: "UpTo ${amount}",
                                  labelText: "Enter amount",
                                  labelStyle: TextStyle(color: Colors.white),
                                ),
                                keyboardType: TextInputType.number,
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: TextFormField(
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w200),
                                controller: interestVal,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                  hintStyle: TextStyle(
                                    color: Colors.white,
                                  ),
                                  border: OutlineInputBorder(),
                                  hintText: "UpTo ${interest} %",
                                  labelText: "Interest Rate",
                                  labelStyle: TextStyle(color: Colors.white),
                                ),
                                keyboardType: TextInputType.number,
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: TextFormField(
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w200),
                                controller: tenureVal,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                  hintStyle: TextStyle(
                                    color: Colors.white,
                                  ),
                                  border: OutlineInputBorder(),
                                  hintText: "UpTo ${tenure} Years",
                                  labelText: "Loan Tenure",
                                  labelStyle: TextStyle(color: Colors.white),
                                ),
                                keyboardType: TextInputType.number,
                              ),
                            ),

                            //----------------------------------------------Button

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: OutlineButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7.0),
                                ),
                                highlightedBorderColor: Colors.white,
                                borderSide: BorderSide(
                                    width: 2, color: Color(0xff345B63)),
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Result(
                                          inpAmount: amountVal.text,
                                          inpInterest: interestVal.text,
                                          inpYear: tenureVal.text)));
                                },
                                child: Container(
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 20.0, horizontal: 0.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Calculate',
                                        style: TextStyle(
                                          fontSize: 30.0,
                                          fontWeight: FontWeight.w300,
                                          fontFamily: 'Anton',
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
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
