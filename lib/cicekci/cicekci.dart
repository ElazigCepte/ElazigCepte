import 'package:elazigcepte/cicekci/cicekciMehmet.dart';
import 'package:flutter/material.dart';

class cicekci extends StatelessWidget {
  Widget build(BuildContext context) {
    void navigator (context,Widget sayfa)
    {
      Navigator.push(context, MaterialPageRoute(builder: (context) => sayfa));
    }
    return Scaffold(
        appBar: AppBar(title: Text("ÇİÇEKÇİ", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),),
        body: ListView(
          children: [
              SizedBox(width: 10,),
              butonOlustur(text: "ÇİÇEKÇİ MEHMET", fonksiyon: ()=> navigator(context, cicekciMehmet()), width: 70, height: 150),
              SizedBox(width: 10,),
              butonOlustur(text: "Açelya Çiçekçilik", fonksiyon:() => navigator(context, cicekciMehmet()) , width: 70, height: 150),
              SizedBox(width: 10,),
            butonOlustur(text: "DAĞ FLOWERS ÇİÇEKCİLİK", fonksiyon:() => navigator(context, cicekciMehmet()) , width: 70, height: 150),
            SizedBox(width: 10,)
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