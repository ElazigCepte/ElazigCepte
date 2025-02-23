import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class kadirYP extends StatelessWidget{

  int buttonColor= 0xFF800020 ;
  int textColor= 0xFFFFFFFF  ;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar
        (backgroundColor: Color(buttonColor),
        title: Text("KADİR YEDEK PARÇA",
            style: TextStyle(fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white
            )
        ),

      ),

      body: Column(
          children: [
            SizedBox(height: 5,),
            Image.asset("assets/images/kadirYP.jpg",),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 10,),
                butonOlustur(text: " İletişim hattı: +90(534) 415 63 63", fonksiyon:(){launchUrl(Uri(scheme: 'tel', path: "+905344156363",));}, icon: Icons.call, width: 10, height: 50),
                SizedBox(width: 10,)
              ],
            ),

            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 10,),
                butonOlustur(text: "Konum bilgisi ve yol tarifi ", fonksiyon: () async {launchUrl(Uri.parse('https://www.google.com/maps/dir//SANAY%C4%B0+S%C4%B0TES%C4%B0,+9.+Sk.+NO:60,+23300+Elaz%C4%B1%C4%9F+Merkez%2FElaz%C4%B1%C4%9F/@38.669768,39.1639091,12z/data=!4m8!4m7!1m0!1m5!1m1!1s0x4076ebdf012c6741:0x985dbcd3b598ce4a!2m2!1d39.2463101!2d38.6697969?hl=tr&entry=ttu&g_ep=EgoyMDI1MDIxOS4xIKXMDSoASAFQAw%3D%3D'));},icon: Icons.location_on_outlined, width: 200, height: 50),
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