import 'package:elazigcepte/elazigiTaniyalim/yemeklerimiz.dart';
import 'package:flutter/material.dart';

class elazigiTaniyalim extends StatelessWidget{

  int buttonColor= 0xFF800020 ;
  int textColor= 0xFFFFFFFF  ;

  @override
  Widget build(BuildContext context) {
    void navigator (context,Widget sayfa)
    {
      Navigator.push(context, MaterialPageRoute(builder: (context) => sayfa));
    }
   return Scaffold(
     appBar: AppBar
       (backgroundColor: Color(buttonColor),
       title: Text("Elazığ'ı Tanıyalım",
           style: TextStyle(fontSize: 19,
               fontWeight: FontWeight.bold,
               color: Colors.white
           )
       ),
     ),
     body: ListView(
       children: [
         SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 10,),
                butonOlustur(text: "YEMEKLERİMİZ", fonksiyon:() => navigator(context, yemeklerimiz()), width: 200, height: 50),
                SizedBox(width: 10,),
                butonOlustur(text: "MUSİKİ - FOLKLOR", fonksiyon:() => navigator(context, yemeklerimiz()), width: 200, height: 50),
                SizedBox(width: 10,),
              ],
            ),
              SizedBox(height: 10,),
             Text("Elazığ-Harput hem stratejik hem de doğal kaynakları nedeniyle Paleolotik dönemden beri yerleşmeye sahne olmuştur. Türk hâkimiyetine kadar eski kavimler yörede önemli devletler ve uygarlıklar kurmuşlardır.1085 yılından sonra Türkler Harput ve civarını kale ve askeri şehir konumundan çıkartmaya başlamış, Osmanlı imparatorluğu döneminde ise kültür, sanat ve ticaret merkezi haline getirerek, Harput’un her zerresine Türk damgası vurmuşlardır. Dünün Kalesiyle, mektep ve medreseleriyle, camileri, hanları hamamları, çarşıları alim ve sanatkarları ile ünlü Harput’u; aynı özelliklerini zaman içerisinde geliştirerek bugünün önemli bir merkezi haline gelmekte olan Elazığ’ı ortaya çıkarmıştır. Binlerce yıldır insanların üzerinde yaşadığı Harput, Türk sahiplerinin Orta Asya’dan getirdiği öz değerleriyle çok zengin ve anlamı bir hayat tarzı ortaya koymuştur. Bu sebeple ilimiz kültür unsurları bakımından çok zengin değerlere sahiptir. Örf, adet, gelenek ve görenekleri, törenleri, türkü ve manileri, halk tecrübesini yansıtan halk hekimliği, geleneksel el sanatları ve halk oyunları, mutfağı vb. milli kültürümüz içerisinde kendine has özelikleriyle ölümsüz yerini almıştır."),
             SizedBox(height: 10,),
              Row(
                 children: [
                   Image.asset("assets/elazigFoto/foto1.jpg",scale: 1.9,),
                   SizedBox(width: 10,),
                   Image.asset("assets/elazigFoto/foto2.jpg",scale: 1.9,),
                 ]
             ),
             SizedBox(height: 10,),
             Row(
               children: [
                 Image.asset("assets/elazigFoto/foto3.jpg",scale: 1.9,),
                 SizedBox(width: 10,),
                 Image.asset("assets/elazigFoto/foto4.jpg",scale: 1.9,),
               ],
             ),
       ],
     ),
   );
  }
  Flexible butonOlustur({required String text, required VoidCallback fonksiyon ,IconData? icon, required width , required height}){
    int buttonColor= 0xFF800020;
    int textColor= (0xFFFFFFFF) ;
    return Flexible(
        child: ElevatedButton(
          onPressed: fonksiyon,
          child: Row(
            children: [
              SizedBox(width: 10,),
              Text(text),
            ],
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
