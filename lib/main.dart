import 'package:emi_calculator/calculateLoan.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  final Color color = _colorFromHex("#112031");
  // TextEditingController _amount = new TextEditingController();
  // TextEditingController _interest = new TextEditingController();
  // TextEditingController _tenure = new TextEditingController();
  late double amount, interest, tenure;
  String appName = "";
  //static const IconData car = IconData(0xe1d7,fontFamily: 'MaterialIcons');

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        home: Scaffold(
          backgroundColor: color,
          appBar: AppBar(
            title: Center(child: Text("EMI CALCULATOR")),
            backgroundColor: color,
          ),
          body: SafeArea(
            child: Expanded(
              child: Container(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          margin: const EdgeInsets.only(top: 50.0),
                          child: Text(
                            "WELCOME",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 70.0,
                              fontFamily: 'AntonRegular',
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "Select The Type Of Loan You Have Taken.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Lobster',
                        fontSize: 22.0,
                        color: Colors.blueGrey,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin:
                            const EdgeInsets.only(top: 100.0, bottom: 100.0),
                        child: Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
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
                                    amount = 20000000;
                                    interest = 20;
                                    tenure = 30;
                                    appName = "HOME LOAN";
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => CalculateLoan(
                                                  amount: amount,
                                                  interest: interest,
                                                  tenure: tenure,
                                                  appName: appName,
                                                )));
                                    //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CalculateLoan(amount: amount, interest: interest, tenure: tenure)));
                                  },
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 20.0, horizontal: 0.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'HOME LOAN',
                                          style: TextStyle(
                                            fontSize: 25.0,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Comic',
                                            color: Colors.white,
                                          ),
                                        ),
                                        Icon(
                                          Icons.home,
                                          color: Colors.white,
                                          size: 30.0,
                                        )
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
                                  borderSide: BorderSide(
                                      width: 2, color: Color(0xff345B63)),
                                  onPressed: () {
                                    amount = 1500000;
                                    interest = 25;
                                    tenure = 5;
                                    appName = 'PERSONAL LOAN';
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => CalculateLoan(
                                                  amount: amount,
                                                  interest: interest,
                                                  tenure: tenure,
                                                  appName: appName,
                                                )));
                                  },
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 20.0, horizontal: 0.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'PERSONAL LOAN',
                                          style: TextStyle(
                                            fontSize: 25.0,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Comic',
                                            color: Colors.white,
                                          ),
                                        ),
                                        Icon(
                                          Icons.people,
                                          color: Colors.white,
                                          size: 30.0,
                                        )
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
                                  borderSide: BorderSide(
                                      width: 2, color: Color(0xff345B63)),
                                  onPressed: () {
                                    amount = 2000000;
                                    interest = 20;
                                    tenure = 7;
                                    appName = 'CAR LOAN';
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => CalculateLoan(
                                                  amount: amount,
                                                  interest: interest,
                                                  tenure: tenure,
                                                  appName: appName,
                                                )));
                                  },
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 20.0, horizontal: 0.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'CAR LOAN',
                                          style: TextStyle(
                                            fontSize: 25.0,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Comic',
                                            color: Colors.white,
                                          ),
                                        ),
                                        Icon(
                                          Icons.add_location_alt,
                                          color: Colors.white,
                                          size: 30.0,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
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
        ),
      ),
    );
  }
}

Color _colorFromHex(String hexColor) {
  final hexCode = hexColor.replaceAll('#', '');
  return Color(int.parse('FF$hexCode', radix: 16));
}
