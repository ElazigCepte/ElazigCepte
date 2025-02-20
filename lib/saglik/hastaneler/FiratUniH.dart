import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class firatUniH extends StatelessWidget{

  int buttonColor= 0xFF800020 ;
  int textColor= 0xFFFFFFFF  ;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar
        (backgroundColor: Color(buttonColor),
        title: Text("Fırat Üniversitesi Hastanesi",
            style: TextStyle(fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white
            )
        ),

      ),

      body: Column(
          children: [
            SizedBox(height: 5,),
            Image.asset("assets/images/firatUni.jpg"),
            SizedBox( height: 5,),

            Row(
              children: [
                SizedBox(width: 10,),
                butonOlustur(text: " Daha fazla bilgi için tıklayın.       ", fonksiyon: (){launchUrl(Uri.http("ftm.firat.edu.tr"),);} ,icon: Icons.web, width: 110, height: 50),
                SizedBox(width: 10,)
              ],
            ),

            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 10,),

                butonOlustur(text: "Randevu hattı : +904246060112 ", fonksiyon:(){launchUrl(Uri(scheme: 'tel', path: "+904246060112",));}, icon: Icons.call, width: 10, height: 50),

                SizedBox(width: 10,)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 10,),
                butonOlustur(text: "Konum bilgisi                                 ", fonksiyon: () async {launchUrl(Uri.parse('https://www.google.com/maps?gs_lcrp=EgZjaHJvbWUqDggAEEUYJxg7GIAEGIoFMg4IABBFGCcYOxiABBiKBTIGCAEQRRhAMgYIAhBFGDkyDAgDECMYJxiABBiKBTIHCAQQLhiABDIGCAUQRRg9MgYIBhBFGD0yBggHEEUYPdIBCDE2ODNqMGo3qAIIsAIB&um=1&ie=UTF-8&fb=1&gl=tr&sa=X&geocode=KaPCGVqJwHZAMfZalGI-sqJW&daddr=%C3%9Cniversite,+23200+Elaz%C4%B1%C4%9F+Merkez/Elaz%C4%B1%C4%9F'));},icon: Icons.location_on_outlined, width: 200, height: 50),
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