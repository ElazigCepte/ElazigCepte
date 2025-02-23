import 'package:elazigcepte/otoServis/yedekParca/kadirYP.dart';
import 'package:flutter/material.dart';

class yedekParcaci extends StatelessWidget {
  Widget build(BuildContext context) {
    void navigator (context,Widget sayfa)
    {
      Navigator.push(context, MaterialPageRoute(builder: (context) => sayfa));
    }
    return Scaffold(
        appBar: AppBar(title: Text("YEDEK PARÇA", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),),
        body: ListView(
          children: [
            SizedBox(height: 10,),
            butonOlustur(text: "KADİR OTO YEDEK PARÇA", fonksiyon:() => navigator(context, kadirYP()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "Demir Oto Yedek Parça ", fonksiyon:() => navigator(context, kadirYP()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "Dünya Oto Aksesuar", fonksiyon:() => navigator(context, kadirYP()) , width: 700, height: 50),
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