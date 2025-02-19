import 'package:elazigcepte/saglik/disHekimi/bilimDent.dart';
import 'package:flutter/material.dart';

class dishekimleri extends StatelessWidget {
  Widget build(BuildContext context) {
    void navigator (context,Widget sayfa)
    {
      Navigator.push(context, MaterialPageRoute(builder: (context) => sayfa));
    }
    return Scaffold(
        appBar: AppBar(title: Text("DİŞ HEKİMLERİ", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),),
        body: ListView(
          children: [
            SizedBox(height: 10,),
            butonOlustur(text: "Bilimdent Ağız ve Diş Sağlığı Polikliniği", fonksiyon:() => navigator(context, bilimDent()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "Dişhekimi MİZGİN KARAGÖZ DEMİRBAĞ KLİNİĞİ", fonksiyon:() => navigator(context, bilimDent()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "Mef Dental Grup - Elazığ Diş Kliniği Şubesi", fonksiyon:() => navigator(context, bilimDent()) , width: 700, height: 50),
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