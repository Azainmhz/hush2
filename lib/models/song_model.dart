class Song{
  final String title;
  final String description;
  final String url;
  final String coverUrl;

  Song({
    required this.title,
    required this.description,
    required this.url,
    required this.coverUrl
  });
  int index= 0;
  static List<Song> songs=[
    Song(
      title:'Blue Hydrangea',
      description:'Kindness Starts Here',
      url:'Assets/music/Winter_Lights.mp3',
      coverUrl:'Assets/images/Blue.jpeg'
    ),
    Song(
        title:'Aglow',
        description:'Gratitudes',
        url:'Assets/music/Aglow.mp3',
        coverUrl:'Assets/images/gratitude.jpeg',
    ),
    Song(
        title:"And You're Mine",
        description:'Nightlight',
        url:'Assets/music/And You’re Mine.mp3',
        coverUrl:'Assets/images/nightlight.jpeg'
    ),
    Song(
        title:'Gratitude',
        description:'Gratitudes',
        url:'Assets/music/Gratitude.mp3',
        coverUrl:'Assets/images/gratitude.jpeg'
    ),
    Song(
        title:'Lobster',
        description:'Nightlight',
        url:'Assets/music/Lobster.mp3',
        coverUrl:'Assets/images/nightlight.jpeg'
    ),
    Song(
        title:'Song For Sammy',
        description:'Nightlight',
        url:'Assets/music/Song for Sammy.mp3',
        coverUrl:'Assets/images/nightlight.jpeg'
    ),
    Song(
        title:'Nightlight',
        description:'Nightlight',
        url:'Assets/music/The Cloud Song.mp3',
        coverUrl:'Assets/images/nightlight.jpeg'
    ),
  ];

  static List<Song> Play1=[
    Song(
        title:'Gratitudes',
        description:'Kindness Starts Here',
        url:'Assets/music/Gratitude.mp3',
        coverUrl:'Assets/images/gratitude.jpeg'
    ),

  ];
  static List<Song> Play2=[
    Song(
      title:'Aglow',
      description:'Gratitudes',
      url:'Assets/music/Aglow.mp3',
      coverUrl:'Assets/images/gratitude.jpeg',
    ),
    Song(
        title:'Gratitudes',
        description:'Kindness Starts Here',
        url:'Assets/music/Gratitude.mp3',
        coverUrl:'Assets/images/gratitude.jpeg'
    ),

  ];

  static List<Song> Play3=[
    Song(
        title:'Lobster',
        description:'Nightlight',
        url:'Assets/music/Lobster.mp3',
        coverUrl:'Assets/images/nightlight.jpeg'
    ),
    Song(
        title:'Song For Sammy',
        description:'Nightlight',
        url:'Assets/music/Song for Sammy.mp3',
        coverUrl:'Assets/images/nightlight.jpeg'
    ),
    Song(
        title:'Nightlight',
        description:'Nightlight',
        url:'Assets/music/The Cloud Song.mp3',
        coverUrl:'Assets/images/nightlight.jpeg'
    ),
    Song(
        title:"And You're Mine",
        description:'Nightlight',
        url:'Assets/music/And You’re Mine.mp3',
        coverUrl:'Assets/images/nightlight.jpeg'
    ),

  ];
}