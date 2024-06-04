import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants.dart';
import '../../model.dart/artist_model.dart';

class ArtistDetails extends StatefulWidget {
  final Artist product;

  ArtistDetails({Key? key, required this.product}) : super(key: key);

  @override
  _ArtistDetailsState createState() => _ArtistDetailsState();
}

class _ArtistDetailsState extends State<ArtistDetails> {
  bool readMore = false;

  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;

    if (maxWidth > 600) {
      maxWidth = 600;
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(top:kPadding),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 50.0,
              floating: false,
              pinned: true,
              backgroundColor: backgroundColor,
              title: Text(
                widget.product.title,
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.w500, color: kSilver),
              ),
              iconTheme: IconThemeData(color: kSecondaryColor),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: SingleChildScrollView(
                  child: SafeArea(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.all(5),
                          width: maxWidth,
                          height: 400,
                          child: ImageSlideshow(
                            width: double.infinity,
                            height: 200,
                            initialPage: 0,
                            indicatorColor: Colors.blue,
                            indicatorBackgroundColor: Colors.grey,
                            children: [
                              Image.asset(
                                widget.product.profileImage,
                                fit: BoxFit.contain,
                              ),
                              Image.asset(
                                widget.product.image2,
                                fit: BoxFit.contain,
                              ),
                              Image.asset(
                                widget.product.image3,
                                fit: BoxFit.contain,
                              ),
                            ],
                            onPageChanged: (value) {
                              print('Page changed: $value');
                            },
                            autoPlayInterval: 3000,
                            isLoop: true,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Biography',
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w500,
                              color: kPrimaryColor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(
                            child: Container(
                              constraints: BoxConstraints(maxWidth: maxWidth),
                              child: Wrap(
                                children: [
                                  Text(
                                    widget.product.bio,
                                    maxLines: readMore ? 200 : 4,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(color: kPrimaryColor, fontSize: 15),
                                  ),
                                  Container(
                                    alignment: Alignment.bottomRight,
                                    padding: EdgeInsets.all(6),
                                    child: GestureDetector(
                                      child: Text(
                                        readMore ? "Read less" : "Read more",
                                        style: TextStyle(color: kSecondaryColor),
                                      ),
                                      onTap: () {
                                        setState(() {
                                          readMore = !readMore;
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Wrap(
                          alignment: WrapAlignment.start,
                          children: [
                            arstistContactCardWithSvg(
                              svgAssetPath: 'assets/icons/soundcloud.svg',
                              title: 'Soundcloud',
                              content: widget.product.soundcloud,
                              onTap: () {
                                launch('https://www.instagram.com/example_instagram');
                              },
                              context: context),
                            arstistContactCardWithSvg(
                              svgAssetPath: 'assets/icons/instagram.svg',
                              title: 'Instagram',
                              content: widget.product.instagram,
                              onTap: () {
                                launch('https://www.instagram.com/example_instagram');
                              },
                              context: context,
                            ),
                            Spacer(),
                            artistContactCard(
                              icon: Icons.phone,
                              title: 'Phone Number',
                              content: '+1 123-456-7890',
                              onTap: () {
                                // Add functionality to call the phone number
                              },
                              context: context,
                            ),
                            Spacer(),
                            artistContactCard(
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
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget artistContactCard({
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
              color: kSecondaryColor,
            ),
            SizedBox(width: kPadding),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: kPadding / 1.2, fontWeight: FontWeight.w400, color: kSecondaryColor),
                ),
                SizedBox(height: 3),
                Text(
                  content,
                  style: TextStyle(fontSize: kPadding / 1.2, color: kPrimaryColor),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget arstistContactCardWithSvg({
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
