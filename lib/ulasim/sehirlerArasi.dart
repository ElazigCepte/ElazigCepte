import 'package:flutter/material.dart';
import 'package:elazigcepte/ulasim/cesurBingol.dart';

class sehirlerArasi extends StatelessWidget {
  Widget build(BuildContext context) {
    void navigator (context,Widget sayfa)
    {
      Navigator.push(context, MaterialPageRoute(builder: (context) => sayfa));
    }
    return Scaffold(
        appBar: AppBar(title: Text("ŞEHİRLER ARASI ULAŞIM", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),),
        body: ListView(
          children: [
            SizedBox(height: 10,),
            butonOlustur(text: "CESUR BİNGÖL TURİZM", fonksiyon:() => navigator(context, cesurBingol()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "ÖZ ELAZIĞLILAR", fonksiyon:() => navigator(context, cesurBingol()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "ELAZIĞ MURAT TURİZM", fonksiyon:() => navigator(context, cesurBingol()) , width: 700, height: 50),
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