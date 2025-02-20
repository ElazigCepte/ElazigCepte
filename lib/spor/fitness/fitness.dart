import 'package:flutter/material.dart';
import 'package:elazigcepte/spor/fitness/optimumF.dart';

class fitness extends StatelessWidget {
  Widget build(BuildContext context) {
    void navigator (context,Widget sayfa)
    {
      Navigator.push(context, MaterialPageRoute(builder: (context) => sayfa));
    }
    return Scaffold(
        appBar: AppBar(title: Text("FİTNESS & VÜCUT GELİŞTİRME", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),),
        body: ListView(
          children: [
            SizedBox(height: 10,),
            butonOlustur(text: "OPTİMUM FİTNESS", fonksiyon:() => navigator(context, optimumF()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "OLYMPUS FİTNESS", fonksiyon:() => navigator(context, optimumF()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "EMİR GYM", fonksiyon:() => navigator(context, optimumF()) , width: 700, height: 50),
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