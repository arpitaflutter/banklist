import 'package:banklist/model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
            height: 350,width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                InkWell(
                  onTap: () async{
                    await launchUrl(Uri.parse("${b1.url}"));
                  },
                  child: Container(
                    height: 70,width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(child: Text("Website")),
                        SizedBox(width: 20,),
                        Icon(Icons.chevron_right_rounded)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                InkWell(
                  onTap: () async{
                    await launchUrl(Uri.parse("${b1.contact}"));
                  },
                  child: Container(
                    height: 70,width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.black)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(child: Text("Contact")),
                        SizedBox(width: 20,),
                        Icon(Icons.chevron_right_rounded)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                InkWell(
                  onTap: () async{
                    await launchUrl(Uri.parse("${b1.sms}"));
                  },
                  child: Container(
                    height: 70,width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.black)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(child: Text("SMS")),
                        SizedBox(width: 20,),
                        Icon(Icons.chevron_right_rounded)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
