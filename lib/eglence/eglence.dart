import 'package:elazigcepte/eglence/cocukE/cocukE.dart';
import 'package:elazigcepte/eglence/psNetCafe/psNetCafe.dart';
import 'package:flutter/material.dart';

class eglence extends StatelessWidget {
  Widget build(BuildContext context) {
    void navigator (context,Widget sayfa)
    {
      Navigator.push(context, MaterialPageRoute(builder: (context) => sayfa));
    }
    return Scaffold(
        appBar: AppBar(title: Text("EĞLENCE", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),),
        body: ListView(
          children: [
            Row(children: [
              SizedBox(width: 10,),
              butonOlustur(text: "ÇOCUK OYUN ALANLARI", fonksiyon: ()=> navigator(context, cocukE()), width: 70, height: 150),
              SizedBox(width: 10,),
              butonOlustur(text: "PLAYSTATİON & İNTERNET CAFE", fonksiyon:() => navigator(context, psNetCafe()) , width: 70, height: 150),
              SizedBox(width: 10,)
            ],
            )
          ],
        )
    );
  }
  Flexible butonOlustur({required String text, required VoidCallback fonksiyon , required width , required height}){
    int buttonColor= 0xFF800020;
    int textColor= (0xFFFFFFFF) ;
    return Flexible(
        child: ElevatedButton(
          onPressed: fonksiyon,
          child: Center(
              child:Text(text)
          ),
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(),
              minimumSize: Size(width.toDouble(), height.toDouble()),
              backgroundColor: Color(buttonColor),
              foregroundColor: Color(textColor)
          ),
        )
    );
  }
}