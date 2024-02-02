
class ImageResource {
  static ImageResource? _instance;
  static ImageResource get instance => _instance ??= ImageResource._init();
  ImageResource._init();


  String toIcons(String name) => 'assets/auth_icons/$name';
  String toOnboard(String name) => 'assets/onboard_images/$name';



  /// authIcons
  String get welcomeMan  => toIcons('welcome_man.png');
  String get welcomeProfessional  => toIcons('welcom_professional.png');
  String get indiaflagmy  => toIcons('Indiaflagmy.png');


  /// on_board
  String get onBoardFirst => toOnboard('img1.png');
  String get onBoardSecond => toOnboard('img2.png');
  String get onBoardThird => toOnboard('img3.png');












}