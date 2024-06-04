import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hopudeneme/constants.dart';

class UpcomingEventsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CardWidget(
          eventPhoto: 'assets/images/hopulogo.svg',
          eventDate: 'May 15, 2024',
          eventLocation: 'Event Location 0',
          eventName: 'Event 0',
          artistName: 'Artist 0',
        ),
        CardWidget(
          eventPhoto: 'assets/images/hopulogo.svg',
          eventDate: 'May 15, 2024',
          eventLocation: 'Event Location 1',
          eventName: 'Event 1',
          artistName: 'Artist 1',
        ),
        CardWidget(
          eventPhoto: 'assets/images/hopulogo.svg',
          eventDate: 'May 15, 2024',
          eventLocation: 'Event Location 2',
          eventName: 'Event 2',
          artistName: 'Artist 2',
        ),
        CardWidget(
          eventPhoto: 'assets/images/hopulogo.svg',
          eventDate: 'May 15, 2024',
          eventLocation: 'Event Location 3',
          eventName: 'Event 3',
          artistName: 'Artist 3',
        ),
        CardWidget(
          eventPhoto: 'assets/images/hopulogo.svg',
          eventDate: 'May 15, 2024',
          eventLocation: 'Event Location 3',
          eventName: 'Event 3',
          artistName: 'Artist 3',
        ),
        // İhtiyacınıza göre daha fazla CardWidget ekleyebilirsiniz
      ],
    );
  }
}

class CardWidget extends StatelessWidget {
  final String eventPhoto;
  final String eventDate;
  final String eventLocation;
  final String eventName;
  final String artistName;

  CardWidget({
    required this.eventPhoto,
    required this.eventDate,
    required this.eventLocation,
    required this.eventName,
    required this.artistName,
  });

   @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: MediaQuery.of(context).size.width * 0.17,
      child: Card(
        color: backgroundColor,
        child: Container(

          padding: EdgeInsets.all(kPadding/2),
          child: Row(
            children: [
              SizedBox(width: kPadding),
              FittedBox(
                child: SvgPicture.asset(
                  eventPhoto,
                  height: MediaQuery.of(context).size.width * 0.15, // 15% of screen width
                  fit: BoxFit.cover,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.17,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            eventDate,
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width * 0.025, // 4% of screen width
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                          Text(
                            eventLocation,
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width * 0.027, // 4% of screen width
                              fontWeight: FontWeight.bold,
                              color: kSecondaryColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: MediaQuery.of(context).size.width * 0.02),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.17,

                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  eventName,
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.width * 0.025, // 5% of screen width
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                                Text(
                                  'By $artistName',
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.width * 0.027, // 4% of screen width
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
