import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class pilotGarageOE extends StatelessWidget{

  int buttonColor= 0xFF800020 ;
  int textColor= 0xFFFFFFFF  ;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar
        (backgroundColor: Color(buttonColor),
        title: Text("Pilot Garage Elazığ Oto Ekspertiz",
            style: TextStyle(fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white
            )
        ),

      ),

      body: Column(
          children: [
            SizedBox(height: 5,),
            Image.asset("assets/images/pilotOE.jpg",),

            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 10,),
                butonOlustur(text: "Daha fazlası için  ", fonksiyon: () async {launchUrl(Uri.parse('https://pilotgarage.com/tr/bayiler/elazig-atasehir'));},icon: Icons.web, width: 200, height: 50),
                SizedBox(width: 10,)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 10,),
                butonOlustur(text: " İletişim hattı: +90 (552) 856 06 23", fonksiyon:(){launchUrl(Uri(scheme: 'tel', path: "+905528560623",));}, icon: Icons.call, width: 10, height: 50),
                SizedBox(width: 10,)
              ],
            ),

            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 10,),
                butonOlustur(text: "Konum bilgisi ve yol tarifi ", fonksiyon: () async {launchUrl(Uri.parse('https://www.google.com/maps/dir//Sal%C4%B1+Baba,+14564+sokak+no10%2FA,+23300+Elaz%C4%B1%C4%9F+Merkez%2FElaz%C4%B1%C4%9F/@38.6704761,39.1688706,12z/data=!4m8!4m7!1m0!1m5!1m1!1s0x4076bf7904380675:0x1a7f54fbcc3c0198!2m2!1d39.2512716!2d38.670505?hl=tr&entry=ttu&g_ep=EgoyMDI1MDIxOS4xIKXMDSoASAFQAw%3D%3D'));},icon: Icons.location_on_outlined, width: 200, height: 50),
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