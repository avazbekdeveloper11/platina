part of 'theme.dart';

class IconSet {
  final String logo;
  final String appleLogo;
  final String facebookLogo;
  final String googleLogo;
  final String camera;
  final String twitter;
  final String article;
  final String home;
  final String popular;
  final String tape;
  final String video;
  final String articleSelected;
  final String homeSelected;
  final String popularSelected;
  final String tapeSelected;
  final String videoSelected;
  final String defaultImg;
  final String drawer;
  final String appLogo;
  final String search;
  final String usd;
  final String starDot;
  final String arrowRight;
  final String telegram;
  final String instagram;
  final String facebook;
  final String youtube;
  final String tiktok;
  final String redmedia;

  IconSet._({
    required this.twitter,
    required this.logo,
    required this.appleLogo,
    required this.facebookLogo,
    required this.googleLogo,
    required this.camera,
    required this.article,
    required this.home,
    required this.popular,
    required this.tape,
    required this.video,
    required this.articleSelected,
    required this.homeSelected,
    required this.popularSelected,
    required this.tapeSelected,
    required this.videoSelected,
    required this.defaultImg,
    required this.drawer,
    required this.appLogo,
    required this.search,
    required this.usd,
    required this.starDot,
    required this.arrowRight,
    required this.facebook,
    required this.instagram,
    required this.telegram,
    required this.tiktok,
    required this.youtube,
    required this.redmedia,
  });

  static IconSet get create {
    return IconSet._(
      logo: 'assets/svgs/logo.svg',
      appleLogo: 'assets/svgs/apple_logo.svg',
      facebookLogo: 'assets/svgs/facebook.svg',
      googleLogo: 'assets/svgs/google.svg',
      camera: 'assets/svgs/camera.svg',
      home: 'assets/icons/svg/home.svg',
      article: 'assets/icons/svg/article.svg',
      popular: 'assets/icons/svg/popular.svg',
      tape: 'assets/icons/svg/tape.svg',
      video: 'assets/icons/svg/video.svg',
      articleSelected: "assets/icons/svg/article_selected.svg",
      homeSelected: "assets/icons/svg/home_selected.svg",
      popularSelected: "assets/icons/svg/popular_selected.svg",
      tapeSelected: "assets/icons/svg/tape_selected.svg",
      videoSelected: "assets/icons/svg/video_selected.svg",
      defaultImg: "assets/images/default.png",
      drawer: 'assets/icons/svg/drawer.svg',
      appLogo: 'assets/icons/svg/appLogo.svg',
      search: 'assets/icons/svg/search.svg',
      usd: 'assets/icons/svg/usd.svg',
      starDot: 'assets/icons/svg/star_dot.svg',
      arrowRight: 'assets/icons/svg/arrow_right.svg',
      telegram: 'assets/icons/svg/telegram.svg',
      instagram: 'assets/icons/svg/instagram.svg',
      twitter: 'assets/icons/svg/twitter.svg',
      youtube: 'assets/icons/svg/you_tube.svg',
      tiktok: 'assets/icons/svg/tik_tok.svg',
      facebook: 'assets/icons/svg/facebook.svg',
      redmedia: 'assets/icons/svg/redmedia.svg',
    );
  }
}
