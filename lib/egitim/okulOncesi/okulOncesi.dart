import 'package:elazigcepte/egitim/okulOncesi/altinOlukOO.dart';
import 'package:flutter/material.dart';

class okulOncesi extends StatelessWidget {
  Widget build(BuildContext context) {
    void navigator (context,Widget sayfa)
    {
      Navigator.push(context, MaterialPageRoute(builder: (context) => sayfa));
    }
    return Scaffold(
        appBar: AppBar(title: Text("OKUL ÖNCESİ", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),),
        body: ListView(
          children: [
            SizedBox(height: 10,),
            butonOlustur(text: "ÖZEL ELAZIĞ ALTINOLUK ANAOKULU", fonksiyon:() => navigator(context, altinOlukOO()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "Elazığ Özel Bilim Çocuk Anaokulu", fonksiyon:() => navigator(context, altinOlukOO()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "MERAKLI ÇOCUKLAR ANAOKULU", fonksiyon:() => navigator(context, altinOlukOO()) , width: 700, height: 50),
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