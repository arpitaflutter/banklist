import 'package:banklist/model.dart';
import 'package:flutter/material.dart';

class bank1 extends StatefulWidget {
  const bank1({Key? key}) : super(key: key);

  @override
  State<bank1> createState() => _bank1State();
}

class _bank1State extends State<bank1> {
  @override
  Widget build(BuildContext context) {

    bank b1 = ModalRoute.of(context)!.settings.arguments as bank;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("${b1.name}"),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: Container(
            height: 280,width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Text("URL :- ${b1.url}"),
                SizedBox(height: 20,),
                Text("Contact:- ${b1.contact}"),
                SizedBox(height: 20,),
                Text("SMS:- ${b1.sms}"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
