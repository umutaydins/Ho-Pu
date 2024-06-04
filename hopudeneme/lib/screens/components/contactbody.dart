import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hopudeneme/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactBody extends StatelessWidget {
  const ContactBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AutoSizeText(
        "Get in Touch With Us",
          textAlign: TextAlign.center,
          maxLines: 3,
          style: TextStyle(
            fontSize: 55,
            fontWeight: FontWeight.bold,
            color: kPrimaryColor,
            
          ),
        ),
        SizedBox(height: kPadding*3,),
            Wrap(
              alignment: WrapAlignment.start,
              children: [
                buildContactCardWithSvg(
                  svgAssetPath: 'assets/icons/instagram.svg', // Instagram ikonu yerine örnek bir ikon
                  title: 'Instagram',
                  content: '@example_instagram',
                  onTap: () {
                    launch('https://www.instagram.com/example_instagram');
                  },
                  context: context,
                ),
                Spacer(),
                buildContactCard(
                  icon: Icons.phone,
                  title: 'Phone Number',
                  content: '+1 123-456-7890',
                  onTap: () {
                    // Buraya telefon numarasının aranmasını sağlayan bir işlem ekleyebilirsiniz
                  },
                  context: context,
                ),
                Spacer(),
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
          
      ],
    );
  }
  Widget buildContactCard({
    required IconData icon,
    required String title,
    required String content,
    required VoidCallback onTap,
    required BuildContext context,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(kPadding),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: kPadding*1.5, 
              color: kSecondaryColor,// Icon boyutu ekran genişliğine bağlı olarak ayarlandı
            ),
            SizedBox(width: kPadding), // Boşluk ekran genişliğine bağlı olarak ayarlandı
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize:kPadding/1.2, fontWeight: FontWeight.bold,color: kSecondaryColor),
                ),
                SizedBox(height: 3), // Boşluk ekran genişliğine bağlı olarak ayarlandı
                Text(
                  content,
                  style: TextStyle(fontSize: kPadding/1.2,color: kPrimaryColor),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  Widget buildContactCardWithSvg({
  required String svgAssetPath, // SVG dosyanızın yolunu parametre olarak alıyoruz
  required String title,
  required String content,
  required VoidCallback onTap,
  required BuildContext context,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.all(kPadding),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            svgAssetPath,
            width: kPadding * 1.5, // SVG genişliğini belirleyebilirsiniz
            height: kPadding * 1.5, // SVG yüksekliğini belirleyebilirsiniz
            color: kSecondaryColor, // SVG rengini belirleyebilirsiniz
          ),
          SizedBox(width: kPadding),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: kPadding/1.2, fontWeight: FontWeight.w400, color: kSecondaryColor),
              ),
              SizedBox(height: 3),
              Text(
                content,
                style: TextStyle(fontSize: kPadding/1.2, color: kPrimaryColor),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
}