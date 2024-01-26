import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:redirect_icon/redirect_icon.dart';
import 'package:social_media_flutter/widgets/icons.dart';
import 'package:social_media_flutter/widgets/text.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildContactCard(
              icon: Icons.account_circle, // Instagram ikonu yerine örnek bir ikon
              title: 'Instagram',
              content: '@example_instagram',
              onTap: () {
                launch('https://www.instagram.com/example_instagram');
              },
              context: context,
            ),
            buildContactCard(
              icon: Icons.phone,
              title: 'Phone Number',
              content: '+1 123-456-7890',
              onTap: () {
                // Buraya telefon numarasının aranmasını sağlayan bir işlem ekleyebilirsiniz
              },
              context: context,
            ),
            buildContactCard(
              icon: Icons.email,
              title: 'Email',
              content: 'example@example.com',
              onTap: () {
                launch('mailto:example@example.com');
              },
              context: context,
            ),
          ],
        ),
      ),
    );
  }
   Widget buildContactCard({
    required IconData icon,
    required String title,
    required String content,
    required VoidCallback onTap,
    required BuildContext context,
  }) {
    var screenSize = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: screenSize.width * 0.04, // Icon boyutu ekran genişliğine bağlı olarak ayarlandı
            ),
            SizedBox(width: screenSize.width * 0.02), // Boşluk ekran genişliğine bağlı olarak ayarlandı
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: screenSize.width * 0.02, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: screenSize.width * 0.01), // Boşluk ekran genişliğine bağlı olarak ayarlandı
                Text(
                  content,
                  style: TextStyle(fontSize: screenSize.width * 0.02),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  
}
