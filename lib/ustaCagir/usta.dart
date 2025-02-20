import 'package:elazigcepte/ustaCagir/elektrikci.dart';
import 'package:flutter/material.dart';


class usta extends StatelessWidget {
  Widget build(BuildContext context) {
    void navigator (context,Widget sayfa)
    {
      Navigator.push(context, MaterialPageRoute(builder: (context) => sayfa));
    }
    return Scaffold(
        appBar: AppBar(title: Text("USTA ÇAĞIR", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),),
        body: ListView(
          children: [
            SizedBox(height: 10,),
            butonOlustur(text: "ÇİLİNGİR", fonksiyon:() => navigator(context, elektrik()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "TELEFON & BİLGİSAYAR TAMİRİ", fonksiyon:() => navigator(context, elektrik()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "TADİLAT & TAMİRAT", fonksiyon:() => navigator(context, elektrik()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "BEYAZ EŞYA SERVİSİ", fonksiyon:() => navigator(context, elektrik()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "TESİSATÇI", fonksiyon:() => navigator(context, elektrik()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "ELEKTRİK & AVİZE", fonksiyon:() => navigator(context, elektrik()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "BOYACI", fonksiyon:() => navigator(context, elektrik()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "MOBİLYACI", fonksiyon:() => navigator(context, elektrik()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "HIRDAVATÇI", fonksiyon:() => navigator(context, elektrik()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "NAKLİYE", fonksiyon:() => navigator(context, elektrik()) , width: 700, height: 50),
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