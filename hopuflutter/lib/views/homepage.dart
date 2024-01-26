import 'package:flutter/material.dart';
import 'package:social_media_flutter/social_media_flutter.dart';
import 'EventPage.dart';

class HomePage extends StatefulWidget {
  final VoidCallback onSeeAllEventsPressed;

  HomePage({required this.onSeeAllEventsPressed});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Dikeyde ortalamayı ayarlar
        children: [
          Text(
            'GLOBAL TALENT AGENCY FOR ELECTRONIC MUSIC',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
          ElevatedButton(
            onPressed: widget.onSeeAllEventsPressed,
            child: Text('See All Events'),
          ),
        ],
      ),
      ),
    );
  }
}
