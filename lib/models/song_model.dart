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

  static List<Song> songs=[
    Song(
      title:'Blue Hydrangea',
      description:'Kindness Starts Here',
      url:'Assets/music/Winter_Lights.mp3',
      coverUrl:'Assets/images/Blue.jpeg'
    ),
    Song(
        title:'Blue Hydrangea',
        description:'Kindness Starts Here',
        url:'Assets/music/Winter_Lights.mp3',
        coverUrl:'Assets/images/Blue.jpeg'
    ),
    Song(
        title:'Blue Hydrangea',
        description:'Kindness Starts Here',
        url:'Assets/music/Winter_Lights.mp3',
        coverUrl:'Assets/images/Blue.jpeg'
    ),
    Song(
        title:'Blue Hydrangea',
        description:'Kindness Starts Here',
        url:'Assets/music/Winter_Lights.mp3',
        coverUrl:'Assets/images/Blue.jpeg'
    ),
  ];
}