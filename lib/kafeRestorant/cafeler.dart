import 'package:flutter/material.dart';
import 'asbirinCafe.dart';
import 'teknokentCafe.dart';
import 'otuzuncuYilCafe.dart';

class cafeler extends StatelessWidget {
  Widget build(BuildContext context) {
    void cafe1 (context,Widget sayfa)
    {
      Navigator.push(context, MaterialPageRoute(builder: (context) => sayfa));
    }
    return Scaffold(
        appBar: AppBar(title: Text("Cafeler", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),),
        body: ListView(
          children: [
            SizedBox(height: 10,),
            butonOlustur(text: "Asbirin Cafe", fonksiyon:() => cafe1(context, asbirinCafe()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "Teknokent Cafe", fonksiyon:() => cafe1(context, teknokentCafe()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "30. Yıl Cafe", fonksiyon:() => cafe1(context, otuzuncuYilCafe()) , width: 700, height: 50),
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