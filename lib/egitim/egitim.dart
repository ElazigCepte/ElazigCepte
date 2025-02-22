import 'package:elazigcepte/egitim/dershaneler/dershaneler.dart';
import 'package:elazigcepte/egitim/dilEgitim/dilEgitim.dart';
import 'package:elazigcepte/egitim/okulOncesi/okulOncesi.dart';
import 'package:elazigcepte/egitim/ozelEgitim/ozelE.dart';
import 'package:elazigcepte/egitim/surucuKursu/surucuKursu.dart';
import 'package:flutter/material.dart';


class egitim extends StatelessWidget {
  Widget build(BuildContext context) {
    void navigator (context,Widget sayfa)
    {
      Navigator.push(context, MaterialPageRoute(builder: (context) => sayfa));
    }
    return Scaffold(
        appBar: AppBar(title: Text("EĞİTİM", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),),
        body: ListView(
          children: [
            SizedBox(height: 10,),
            butonOlustur(text: "ÖZEL EĞİTİM", fonksiyon:() => navigator(context, ozelE()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "OKUL ÖNCESİ", fonksiyon:() => navigator(context, okulOncesi()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "DİL EĞİTİMİ", fonksiyon:() => navigator(context, dilEgitim()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "SÜRÜCÜ KURSU", fonksiyon:() => navigator(context, surucuKursu()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "DERSHANELER", fonksiyon:() => navigator(context, dershaneler()) , width: 700, height: 50),
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