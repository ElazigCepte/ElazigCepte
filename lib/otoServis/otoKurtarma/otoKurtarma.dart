import 'package:elazigcepte/otoServis/otoKurtarma/oguzhanOK.dart';
import 'package:flutter/material.dart';

class otoCekici extends StatelessWidget {
  Widget build(BuildContext context) {
    void navigator (context,Widget sayfa)
    {
      Navigator.push(context, MaterialPageRoute(builder: (context) => sayfa));
    }
    return Scaffold(
        appBar: AppBar(title: Text("OTO ÇEKİCİ", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),),
        body: ListView(
          children: [
            SizedBox(height: 10,),
            butonOlustur(text: "OĞUZHAN OTO Çekici", fonksiyon:() => navigator(context, oguzhanOK()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "Bedirhan Oto Kurtarıcı", fonksiyon:() => navigator(context, oguzhanOK()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "Cankılınç Oto Çekici Elazığ", fonksiyon:() => navigator(context, oguzhanOK()) , width: 700, height: 50),
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