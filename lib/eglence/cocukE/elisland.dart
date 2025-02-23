import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class elisland extends StatelessWidget{

  int buttonColor= 0xFF800020 ;
  int textColor= 0xFFFFFFFF  ;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar
        (backgroundColor: Color(buttonColor),
        title: Text("Elisland Çocuk Oyun Merkezi",
            style: TextStyle(fontSize: 19,
                fontWeight: FontWeight.bold,
                color: Colors.white
            )
        ),

      ),

      body: Column(
          children: [
            SizedBox(height: 5,),
            Image.asset("assets/images/elisland.jpg"),

            SizedBox(height: 10,),

            Row(
              children: [
                SizedBox(width: 10,),
                butonOlustur(text: "Daha fazlası için", fonksiyon: () async{ launchUrl(Uri.parse("https://www.instagram.com/elisland23/"));},icon: Icons.web, width: 200, height: 50),
                SizedBox(width: 10,)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 10,),
                butonOlustur(text: " İletişim hattı: +90(552) 413 62 08", fonksiyon:(){launchUrl(Uri(scheme: 'tel', path: "+905524136208",));}, icon: Icons.call, width: 200, height: 50),
                SizedBox(width: 10,)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 10,),
                butonOlustur(text: "Konum bilgisi ve yol tarifi ", fonksiyon: () async {launchUrl(Uri.parse("https://www.google.com/maps/dir//Ata%C5%9Fehir,+Sancaktar+Sk.+No:4,+23100+Elaz%C4%B1%C4%9F+Merkez%2FElaz%C4%B1%C4%9F/@38.6614063,39.0895031,12z/data=!4m8!4m7!1m0!1m5!1m1!1s0x4076ebb5e893e461:0x68115ec62c7a4160!2m2!1d39.1719179!2d38.6613766?hl=tr&entry=ttu&g_ep=EgoyMDI1MDIxOS4xIKXMDSoASAFQAw%3D%3D"));},icon: Icons.location_on_outlined, width: 200, height: 50),
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