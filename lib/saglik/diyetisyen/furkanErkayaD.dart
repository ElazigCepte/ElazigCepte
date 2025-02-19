import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class furkanErkayaD extends StatelessWidget{

  int buttonColor= 0xFF800020 ;
  int textColor= 0xFFFFFFFF  ;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar
        (backgroundColor: Color(buttonColor),
        title: Text("DİYETİSYEN FURKAN ERKAYA",
            style: TextStyle(fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white
            )
        ),

      ),

      body: Column(
          children: [
            SizedBox(height: 5,),
            Image.asset("assets/images/furkanD.jpg",),

            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 10,),

                butonOlustur(text: " İletişim hattı: +905523640715 ", fonksiyon:(){launchUrl(Uri(scheme: 'tel', path: "+905523640715",));}, icon: Icons.call, width: 10, height: 50),

                SizedBox(width: 10,)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 10,),
                butonOlustur(text: "Konum bilgisi ve yol tarifi            ", fonksiyon: () async {launchUrl(Uri.parse('https://www.google.com/maps/dir//D%C4%B0YET%C4%B0SYEN+FURKAN+ERKAYA,+Cumhuriyet,+2611+Sokak+No:7+%C4%B0%C3%A7+Kap%C4%B1+No:1,+23270+Elaz%C4%B1%C4%9F+Merkez%2FElaz%C4%B1%C4%9F/@38.6698364,39.1844072,17z/data=!4m9!4m8!1m0!1m5!1m1!1s0x4076c1a06379af9f:0x1ce82887babbe813!2m2!1d39.1844072!2d38.6698364!3e0?hl=tr&entry=ttu&g_ep=EgoyMDI1MDIxMi4wIKXMDSoASAFQAw%3D%3D'));},icon: Icons.location_on_outlined, width: 200, height: 50),
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
              Text(text),
              SizedBox(width: 100,),
              Icon(icon),
              SizedBox(width: 10,)
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