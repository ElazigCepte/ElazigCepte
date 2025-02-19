import 'package:elazigcepte/saglik/diyetisyen/furkanErkayaD.dart';
import 'package:flutter/material.dart';

class diyetisyenler extends StatelessWidget {
  Widget build(BuildContext context) {
    void navigator (context,Widget sayfa)
    {
      Navigator.push(context, MaterialPageRoute(builder: (context) => sayfa));
    }
    return Scaffold(
        appBar: AppBar(title: Text("DİYETİSYENLER", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),),
        body: ListView(
          children: [
            SizedBox(height: 10,),
            butonOlustur(text: "DİYETİSYEN FURKAN ERKAYA", fonksiyon:() => navigator(context, furkanErkayaD()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "Diyetisyen Ayça Çakılcı Tuna", fonksiyon:() => navigator(context, furkanErkayaD()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "Diyetisyen Kardelen Açıkel", fonksiyon:() => navigator(context, furkanErkayaD()) , width: 700, height: 50),
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