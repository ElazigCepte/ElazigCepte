import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class elazigDevletH extends StatelessWidget{

  int buttonColor= 0xFF800020 ;
  int textColor= 0xFFFFFFFF  ;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar
        (backgroundColor: Color(buttonColor),
        title: Text("Elazığ Devlet Hastanesi",
            style: TextStyle(fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white
            )
        ),

      ),

      body: Column(
          children: [
            SizedBox(height: 5,),
            Image.asset("assets/images/elazigSehirH.jpg"),
            SizedBox( height: 5,),

            Row(
              children: [
                SizedBox(width: 10,),
                butonOlustur(text: " Daha fazla bilgi için tıklayın.", fonksiyon: (){launchUrl(Uri.parse("https://elazigsehir.saglik.gov.tr/"),);} ,icon: Icons.web, width: 110, height: 50),
                SizedBox(width: 10,)
              ],
            ),

            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 10,),

                butonOlustur(text: "İletişim hattı : +90(424) 606 60 00", fonksiyon:(){launchUrl(Uri(scheme: 'tel', path: "+904246066000",));}, icon: Icons.call, width: 10, height: 50),

                SizedBox(width: 10,)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 10,),
                butonOlustur(text: "Konum bilgisi", fonksiyon: () async {launchUrl(Uri.parse('https://www.google.com/maps/dir//Sug%C3%B6z%C3%BC,+Unnamed+Road,+23350+Elaz%C4%B1%C4%9F+Merkez%2FElaz%C4%B1%C4%9F/@38.6938531,39.1898593,12z/data=!4m8!4m7!1m0!1m5!1m1!1s0x4076bf50ee714e9f:0x5aa26b8c556e6300!2m2!1d39.2722603!2d38.693882?hl=tr&entry=ttu&g_ep=EgoyMDI1MDIxNy4wIKXMDSoASAFQAw%3D%3D'));},icon: Icons.location_on_outlined, width: 200, height: 50),
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