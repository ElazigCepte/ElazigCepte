import 'package:flutter/material.dart';
import 'package:elazigcepte/saglik/hastaneler/hastaneler.dart';
import 'package:elazigcepte/saglik/eczane/eczaneler.dart';
import 'package:elazigcepte/saglik/disHekimi/disHekimleri.dart';

class saglik extends StatelessWidget {
  Widget build(BuildContext context) {
    void navigator (context,Widget sayfa)
    {
      Navigator.push(context, MaterialPageRoute(builder: (context) => sayfa));
    }
    return Scaffold(
        appBar: AppBar(title: Text("SAĞLIK", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),),
        body: ListView(
          children: [
            SizedBox(height: 10,),
            butonOlustur(text: "HASTANE", fonksiyon:() => navigator(context, hastaneler()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "ECZANE", fonksiyon:() => navigator(context, eczaneler()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "DİŞ HEKİMİ", fonksiyon:() => navigator(context, dishekimleri()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "DİYETİSYEN", fonksiyon:() => navigator(context, hastaneler()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "FİZYOTERAPİST", fonksiyon:() => navigator(context, hastaneler()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "OPTİK", fonksiyon:() => navigator(context, hastaneler()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "ALTERNATİF TIP", fonksiyon:() => navigator(context, hastaneler()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "VETERİNER", fonksiyon:() => navigator(context, hastaneler()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "AİLE SAĞLIĞI MERKEZİ", fonksiyon:() => navigator(context, hastaneler()) , width: 700, height: 50),
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