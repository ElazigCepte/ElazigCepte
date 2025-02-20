import 'package:elazigcepte/cepteFirat/bolumlerimiz.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class cepteFirat extends StatelessWidget{

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
        title: Text("CEPTE FIRAT",
            style: TextStyle(fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white
            )
        ),

      ),

      body: Column(
          children: [
            SizedBox(height: 5,),
            Image.asset("assets/images/firatUniFoto.jpg",),
            Row(
              children: [
                SizedBox(width: 10,),
                butonOlustur(text: "Web sitesi için tıklayın", fonksiyon: () async {launchUrl(Uri.parse('https://www.firat.edu.tr/tr'));},icon: Icons.location_on_outlined, width: 200, height: 50),
                SizedBox(width: 10,)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 10,),

                butonOlustur(text: " İletişim hattı: + +90 424 237 00 00 ", fonksiyon:(){launchUrl(Uri(scheme: 'tel', path: "+904242370000",));}, icon: Icons.call, width: 10, height: 50),

                SizedBox(width: 10,)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 10,),
                butonOlustur(text: "Konum bilgisi ve yol tarifi ", fonksiyon: () async {launchUrl(Uri.parse('https://www.google.com/maps?sca_esv=9632110e93a89f4a&sxsrf=AHTn8zrSHGThSG9GLAK9gNteeGOK63MIdQ:1740092698033&uact=5&gs_lp=Egxnd3Mtd2l6LXNlcnAiCmbEsXJhdCB1bmkyBRAuGIAEMgUQABiABDILEC4YgAQYxwEYrwEyBRAAGIAEMgUQABiABDIIEAAYgAQYywEyBRAAGIAEMgUQABiABDIFEAAYgAQyBRAAGIAEMhQQLhiABBiXBRjcBBjeBBjgBNgBAUjLEFAAWKoNcAB4AJABAJgBwgGgAeEMqgEDMC45uAEDyAEA-AEBmAIJoAKLDcICChAjGIAEGCcYigXCAgsQLhiABBixAxiDAcICCxAAGIAEGLEDGIMBwgIREC4YgAQYsQMY0QMYgwEYxwHCAg4QABiABBixAxiDARiKBcICChAuGIAEGEMYigXCAhAQLhiABBixAxhDGIMBGIoFwgIKEAAYgAQYQxiKBcICEBAAGIAEGLEDGEMYgwEYigXCAggQLhiABBixA5gDALoGBggBEAEYFJIHAzAuOaAHpaMB&um=1&ie=UTF-8&fb=1&gl=tr&sa=X&geocode=KU2T7PBDwHZAMZq8_r2pVNqX&daddr=%C3%9Cniversite,+F%C4%B1rat+%C3%9Cnv.,+23119+El%C3%A2z%C4%B1%C4%9F+Merkez/Elaz%C4%B1%C4%9F+Merkez/Elaz%C4%B1%C4%9F'));},icon: Icons.location_on_outlined, width: 200, height: 50),
                SizedBox(width: 10,)
              ],
            ),
            Row(
              children: [
                SizedBox(width: 10,),
                butonOlustur(text: "Bölümlerimiz", fonksiyon: () => navigator(context, bolumlerimiz()),icon: Icons.location_on_outlined, width: 200, height: 50),
                SizedBox(width: 10,)
              ],
            )

          ]
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
              Icon(icon, color: Colors.white,),
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