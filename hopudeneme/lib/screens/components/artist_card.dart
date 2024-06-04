import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../model.dart/artist_model.dart';
import 'artist_details.dart';

class ArtistsCard extends StatelessWidget {
  const ArtistsCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  final Artist product;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
       
        // decoration: BoxDecoration(border: Border.all(color: kSecondaryColor.withOpacity(0.5)),borderRadius: BorderRadius.circular(20),),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: InkWell(
         
            onTap: press,
            child: Material(
              color: backgroundColor,
              child: Container(
                color: Colors.black,
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Container(
                      height: 300,
                      width: 300,
                      padding: EdgeInsets.all(5),
                      // decoration: BoxDecoration(border: Border.all(color: kSecondaryColor),borderRadius: BorderRadius.circular(20),),
                      child: ClipRRect(
                        child: Image.asset(
                          product.profileImage,
                          height: 200, // Adjust the height as needed
                          width: 200, // Take full width
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    AutoSizeText(
                      product.title,
                      maxLines: 1,
                      minFontSize: 8,
                      style: TextStyle(
                        fontSize: kPadding,
                        color: kPrimaryColor
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        
                        color: Colors.transparent, // Background color
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: kSecondaryColor.withOpacity(0.7)), // Border color
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            
                            context,
                            MaterialPageRoute(
                              builder: (context) => ArtistDetails(product: product),
                            ),
                          );
                        },
                        child: AutoSizeText(
                          'View More',
                          style: TextStyle(
                            color: kPrimaryColor, // Text color
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}