import 'package:flutter/material.dart';

class ArtistsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Artists'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 4, // Toplam 2 satır olacak şekilde ayarlandı
        itemBuilder: (context, rowIndex) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Her bir satır için iki sanatçı eklenir
              if (rowIndex == 0) ...[
                buildArtistCard(
                  profileImage: 'assets/images/artist1.jpg',
                  artistName: 'Sanatçı Adı 1',
                  onViewMorePressed: () {
                    print('View More pressed for Artist 1');
                  },
                ),
                buildArtistCard(
                  profileImage: 'assets/images/artist2.jpg',
                  artistName: 'Sanatçı Adı 2',
                  onViewMorePressed: () {
                    print('View More pressed for Artist 2');
                  },
                ),
              ] else if (rowIndex == 1) ...[
                // Sadece 1 sanatçı eklenir
                buildArtistCard(
                  profileImage: 'assets/images/artist3.jpg',
                  artistName: 'Sanatçı Adı 3',
                  onViewMorePressed: () {
                    print('View More pressed for Artist 3');
                  },
                ),
                buildArtistCard(
                  profileImage: 'assets/images/artist3.jpg',
                  artistName: 'Sanatçı Adı 4',
                  onViewMorePressed: () {
                    print('View More pressed for Artist 4');
                  },
                ),
              ]
                else if(rowIndex == 2)...[
                buildArtistCard(
                  profileImage: 'assets/images/artist3.jpg',
                  artistName: 'Sanatçı Adı 5',
                  onViewMorePressed: () {
                    print('View More pressed for Artist 5');
                  },
                ),
                buildArtistCard(
                  profileImage: 'assets/images/artist3.jpg',
                  artistName: 'Sanatçı Adı 6',
                  onViewMorePressed: () {
                    print('View More pressed for Artist 6');
                  },
                ),
              ]else if(rowIndex == 3)...[
                buildArtistCard(
                  profileImage: 'assets/images/artist3.jpg',
                  artistName: 'Sanatçı Adı 7',
                  onViewMorePressed: () {
                    print('View More pressed for Artist 7');
                  },
                ),
                
              ],
            ],
          );
        },
      ),
    );
  }

  Widget buildArtistCard({
    required String profileImage,
    required String artistName,
    required VoidCallback onViewMorePressed,
  }) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(profileImage),
          ),
          SizedBox(height: 10),
          Text(
            artistName,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: onViewMorePressed,
            child: Text('View More'),
          ),
        ],
      ),
    );
  }
}
