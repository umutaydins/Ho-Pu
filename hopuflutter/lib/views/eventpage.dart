import 'package:flutter/material.dart';

class EventPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Events'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Bu sayfa tüm etkinlikleri gösterir.',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
