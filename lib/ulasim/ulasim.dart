import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:elazigcepte/ulasim/sehirlerArasi.dart';

class ulasim extends StatelessWidget {
  Widget build(BuildContext context) {
    void navigator (context,Widget sayfa)
    {
      Navigator.push(context, MaterialPageRoute(builder: (context) => sayfa));
    }
    return Scaffold(
        appBar: AppBar(title: Text("ULAŞIM", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),),
        body: ListView(
          children: [
            SizedBox(height: 10,),
            butonOlustur(text: "ŞEHİRİÇİ ULAŞIM", fonksiyon:() async {launchUrl(Uri.parse("https://www.elazig.bel.tr/ulasim-rehberi/"));} , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "ŞEHİRLER ARASI ULAŞIM", fonksiyon:() => navigator(context, sehirlerArasi()) , width: 700, height: 50),
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