import 'package:flutter/material.dart';
import 'package:elazigcepte/spor/yuzme/yuzme.dart';
import 'package:elazigcepte/spor/haliSaha/halisaha.dart';
import 'package:elazigcepte/spor/fitness/fitness.dart';

class spor extends StatelessWidget {
  Widget build(BuildContext context) {
    void navigator (context,Widget sayfa)
    {
      Navigator.push(context, MaterialPageRoute(builder: (context) => sayfa));
    }
    return Scaffold(
        appBar: AppBar(title: Text("SPOR", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),),
        body: ListView(
          children: [
            SizedBox(height: 10,),
            butonOlustur(text: "Fitness & Vücut Geliştirme", fonksiyon:() => navigator(context, fitness()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "Halı saha", fonksiyon:() => navigator(context, halisaha()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "Yüzme Havuzu", fonksiyon:() => navigator(context, yuzme()) , width: 700, height: 50),
            SizedBox(height: 10,)
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