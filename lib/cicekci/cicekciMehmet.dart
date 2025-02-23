import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class cicekciMehmet extends StatelessWidget{

  int buttonColor= 0xFF800020 ;
  int textColor= 0xFFFFFFFF  ;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar
        (backgroundColor: Color(buttonColor),
        title: Text("ÇİÇEKÇİ MEHMET",
            style: TextStyle(fontSize: 19,
                fontWeight: FontWeight.bold,
                color: Colors.white
            )
        ),

      ),

      body: Column(
          children: [
            SizedBox(height: 5,),
            Image.asset("assets/images/cicekciMehmet.jpg"),

            SizedBox(height: 10,),

            Row(
              children: [
                SizedBox(width: 10,),
                butonOlustur(text: "Daha fazlası için", fonksiyon: () async{ launchUrl(Uri.parse("https://www.cicekcimehmet.com/"));},icon: Icons.web, width: 200, height: 50),
                SizedBox(width: 10,)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 10,),
                butonOlustur(text: " İletişim hattı: +90(537) 226 76 51", fonksiyon:(){launchUrl(Uri(scheme: 'tel', path: "+905372267651",));}, icon: Icons.call, width: 200, height: 50),
                SizedBox(width: 10,)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 10,),
                butonOlustur(text: "Konum bilgisi ve yol tarifi ", fonksiyon: () async {launchUrl(Uri.parse("https://www.google.com/maps?hl=tr&gl=tr&um=1&ie=UTF-8&fb=1&sa=X&geocode=KYOg4gF9wHZAMRM0ELWqOa0E&daddr=Yeni,+Yunus+Emre+Blv.+No:40/1-A,+23200+Elaz%C4%B1%C4%9F+Merkez/Elaz%C4%B1%C4%9F"));},icon: Icons.location_on_outlined, width: 200, height: 50),
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