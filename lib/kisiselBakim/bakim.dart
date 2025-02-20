import 'package:elazigcepte/kisiselBakim/berber/berber.dart';
import 'package:elazigcepte/kisiselBakim/guzellikMerkezi/guzellikMerkezi.dart';
import 'package:elazigcepte/kisiselBakim/kuafor/kuafor.dart';
import 'package:flutter/material.dart';

class bakim extends StatelessWidget {
  Widget build(BuildContext context) {
    void navigator (context,Widget sayfa)
    {
      Navigator.push(context, MaterialPageRoute(builder: (context) => sayfa));
    }
    return Scaffold(
        appBar: AppBar(title: Text("KİŞİSEL BAKIM", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),),
        body: ListView(
          children: [
            SizedBox(height: 10,),
            butonOlustur(text: "BERBER", fonksiyon:() => navigator(context, berberler()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "KADIN KUAFÖRÜ", fonksiyon:() => navigator(context, kuafor()) , width: 700, height: 50),
            SizedBox(height: 10,),
            butonOlustur(text: "GÜZELLİK MERKEZİ", fonksiyon:() => navigator(context, guzellikMerkezi()) , width: 700, height: 50),
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