import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class optimumF extends StatelessWidget{

  int buttonColor= 0xFF800020 ;
  int textColor= 0xFFFFFFFF  ;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar
        (backgroundColor: Color(buttonColor),
        title: Text("OPTİMUM FİTNESS",
            style: TextStyle(fontSize: 19,
                fontWeight: FontWeight.bold,
                color: Colors.white
            )
        ),

      ),

      body: Column(
          children: [
            SizedBox(height: 5,),
            Image.asset("assets/images/optimum.jpg",width: 300,),

            SizedBox(height: 10,),
            Row(
              children: [

                SizedBox(width: 10,),

                butonOlustur(text: " Daha fazla bilgi için takip edin.", fonksiyon: (){launchUrl(Uri.parse("https://www.instagram.com/optimum_fitness_elazig/"),);} ,icon: Icons.web, width: 110, height: 50),
                SizedBox(width: 10,)
              ],
            ),
            SizedBox(height: 10,),

            Row(
              children: [
                SizedBox(width: 10,),
                butonOlustur(text: " İletişim hattı: +905336888282 ", fonksiyon:(){launchUrl(Uri(scheme: 'tel', path: "+905336888282",));}, icon: Icons.call, width: 10, height: 50),

                SizedBox(width: 10,)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 10,),
                butonOlustur(text: "Konum bilgisi ve yol tarifi ", fonksiyon: () async {launchUrl(Uri.parse("https://www.google.com/maps?hl=tr&gl=tr&um=1&ie=UTF-8&fb=1&sa=X&geocode=KbEU7nY8wHZAMUDZESupV_x9&daddr=Cumhuriyet,+%C3%9Cniversite+Sk.+No:1/B,+23190+Elaz%C4%B1%C4%9F+Merkez/Elaz%C4%B1%C4%9F"));},icon: Icons.location_on_outlined, width: 200, height: 50),
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