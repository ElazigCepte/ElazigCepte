import 'package:elazigcepte/otoServis/ekspertiz/ekspertiz.dart';
import 'package:elazigcepte/otoServis/galeri/galeri.dart';
import 'package:elazigcepte/otoServis/kaporta/kaporta.dart';
import 'package:elazigcepte/otoServis/lastikci/lastikci.dart';
import 'package:elazigcepte/otoServis/otoBakim/otoBakim.dart';
import 'package:elazigcepte/otoServis/otoDoseme/otoDoseme.dart';
import 'package:elazigcepte/otoServis/otoElektrik/otoElektrik.dart';
import 'package:elazigcepte/otoServis/otoKurtarma/otoKurtarma.dart';
import 'package:elazigcepte/otoServis/otoYikama/otoYikama.dart';
import 'package:elazigcepte/otoServis/sigorta/sigorta.dart';
import 'package:elazigcepte/otoServis/yedekParca/yedekParcaci.dart';
import 'package:flutter/material.dart';

class otoServis extends StatelessWidget {
  Widget build(BuildContext context) {
    void navigator (context,Widget sayfa)
    {
      Navigator.push(context, MaterialPageRoute(builder: (context) => sayfa));
    }
    return Scaffold(
        appBar: AppBar(title: Text("OTO SERVİS", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),),
        body: ListView(
          children: [
            SizedBox(height: 10,),
            butonOlustur(text: "GALERİ", fonksiyon:() => navigator(context, galeri()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "SİGORTA", fonksiyon:() => navigator(context, sigorta()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "OTO BAKIM VE ONARIM SERVİSİ", fonksiyon:() => navigator(context, otoBakim()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "OTO KURTARMA & ÇEKİCİ", fonksiyon:() => navigator(context, otoCekici()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "OTO YIKAMA", fonksiyon:() => navigator(context, otoYikama()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "OTO ELEKTRİK", fonksiyon:() => navigator(context, otoElektrik()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "KAPORTA BOYA", fonksiyon:() => navigator(context, kaporta()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "LASTİK", fonksiyon:() => navigator(context, lastikci()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "EKSPERTİZ", fonksiyon:() => navigator(context, ekspertiz()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "YEDEK PARÇA", fonksiyon:() => navigator(context, yedekParcaci()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "DÖŞEME AKSESUAR", fonksiyon:() => navigator(context, otoDoseme()) , width: 700, height: 50),
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