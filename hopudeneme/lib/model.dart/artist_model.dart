
class Artist {
  final String profileImage,logo, title, bio,image1,image2,image3;
  final int id;
  final String instagram,soundcloud,e_mail;

  Artist(
     {
    required this.id,
    required this.profileImage,
    required this.title,
    required this.bio,
    required this.logo,
     required this.image2,
     required this.image1,
     required this.image3,
     required this.instagram,
     required this.soundcloud,
     required this.e_mail,

  });
}

List<Artist> products = [
  Artist(
    e_mail: 'example@example.com',
    soundcloud: 'sound',
    instagram: 'instgram',
    image1: 'assets/images/elidan.png',
    image2:'assets/images/elidan.png',
    image3:'assets/images/elidan.png',
    id: 1,
    title: "ELI & DANI",
    profileImage: "assets/images/elidan.png",
    logo: "assets/images/elidanLogo.png",
    bio: '''
      Eli & Dani is a DJ and Producer\n duo from Israel that consists of members Eliav and Daniel.\nThe duo are one of the most successful electronic acts in Israel and are starting to gain fame internationally as well.Eli & Dani are known for their Melodic Techno style with uplifting and emotional sound, alongside high-quality low-end that brings out energy and drive in their performances.Over the years, Eli & Dani’s tracks have been played by DJ’s around the world like Armin Van Buuren, Adriatique, Innellea, Massano, Kevin De Vries, Nora En Pure, Maxim Lany, Joris Voorn, Marino Canal, Like Mike, Øostil, The Element, Miss Monique, Andrew Rayel, and many more.Eli & Dani began to gain attention after the release of their official contest winner remix to Andrew Rayel’s “Stars Collide'' which was released on the label ‘Armada Music”.They have also released music on other labels like Siamese, Simulate, Purified, Astral, Techno Blazer, ONISM Record, Awen, and many more releases to come in the future.They also gain attention through their tracks “Anarchists" “What Do You Know”, “Desire", “Reflection Of Voices” “Running Out” which include a Remix from OIBAF & WALLEN, ”Restless” etc.Over the course of their career, Eli & Dani have performed at festivals & Clubs in Israel & Europe including the ADE Event in Amsterdam, “Red Flag Circus” with Matador in Tel Aviv, “One Way“ in Reading 3 in Tel Aviv, Shalvata, Haoman 17, Jimmy Who, residents of ‘Red Flag Festival’ and also the owner of their own production called "Aphelion“ which is a venue that happened once a month in different locations.They also played with artists such as Argy, 8 Kays, Øostil, Matador, Magit Cacoon, Jos & Eli, Guy Mantzur, Adam Ten, Mita Gami, and many more.''',
  ),
  Artist(
    e_mail: 'example@example.com',
    soundcloud: 'sound2',
    instagram: 'instgram2',
    image1: 'assets/images/elidan.png',
    image2: 'assets/images/elidan.png',
    image3: 'assets/images/elidan.png',
    id: 2,
    title: "berkay",
    profileImage: "assets/images/elidan.png",
    logo: "assets/images/elidanLogo.png",
    bio: '''
      Eli & Dani is a DJ and Producer\n duo from Israel that consists of members Eliav and Daniel.\nThe duo are one of the most successful electronic acts in Israel and are starting to gain fame internationally as well.Eli & Dani are known for their Melodic Techno style with uplifting and emotional sound, alongside high-quality low-end that brings out energy and drive in their performances.Over the years, Eli & Dani’s tracks have been played by DJ’s around the world like Armin Van Buuren, Adriatique, Innellea, Massano, Kevin De Vries, Nora En Pure, Maxim Lany, Joris Voorn, Marino Canal, Like Mike, Øostil, The Element, Miss Monique, Andrew Rayel, and many more.Eli & Dani began to gain attention after the release of their official contest winner remix to Andrew Rayel’s “Stars Collide'' which was released on the label ‘Armada Music”.They have also released music on other labels like Siamese, Simulate, Purified, Astral, Techno Blazer, ONISM Record, Awen, and many more releases to come in the future.They also gain attention through their tracks “Anarchists" “What Do You Know”, “Desire", “Reflection Of Voices” “Running Out” which include a Remix from OIBAF & WALLEN, ”Restless” etc.Over the course of their career, Eli & Dani have performed at festivals & Clubs in Israel & Europe including the ADE Event in Amsterdam, “Red Flag Circus” with Matador in Tel Aviv, “One Way“ in Reading 3 in Tel Aviv, Shalvata, Haoman 17, Jimmy Who, residents of ‘Red Flag Festival’ and also the owner of their own production called "Aphelion“ which is a venue that happened once a month in different locations.They also played with artists such as Argy, 8 Kays, Øostil, Matador, Magit Cacoon, Jos & Eli, Guy Mantzur, Adam Ten, Mita Gami, and many more.''',
  ),

];