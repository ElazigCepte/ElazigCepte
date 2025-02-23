import 'package:elazigcepte/otoServis/otoDoseme/serkanOD.dart';
import 'package:elazigcepte/otoServis/yedekParca/kadirYP.dart';
import 'package:flutter/material.dart';

class otoDoseme extends StatelessWidget {
  Widget build(BuildContext context) {
    void navigator (context,Widget sayfa)
    {
      Navigator.push(context, MaterialPageRoute(builder: (context) => sayfa));
    }
    return Scaffold(
        appBar: AppBar(title: Text("OTO DÖŞEME", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),),
        body: ListView(
          children: [
            SizedBox(height: 10,),
            butonOlustur(text: "Serkan Oto Döşeme ", fonksiyon:() => navigator(context, serkanOD()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "Oto Döşeme Dünyası", fonksiyon:() => navigator(context, serkanOD()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "Dizayn Oto Döşeme", fonksiyon:() => navigator(context, serkanOD()) , width: 700, height: 50),
            SizedBox(height: 10,),
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