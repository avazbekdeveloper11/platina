part of 'theme.dart';

class CustomColorSet {
  final Color text;

  final Color bodyText;

  final Color subText;

  final Color primary;

  final Color white;

  final Color icon;

  final Color grey;

  final Color backgroundColor;

  final Color backgroundColorVariant;

  final Color secondary;

  final Color lightTextBody;

  final Color error;

  final Color transparent;

  final Color secondaryVariant;

  final Color subtitle;

  final Color downRed;

  final Color redishOrange;

  final Color link;

  final Color dividerColor;

  final Color networkColor;

  final Color linkBold;

  CustomColorSet._({
    required this.secondaryVariant,
    required this.text,
    required this.bodyText,
    required this.subText,
    required this.primary,
    required this.white,
    required this.icon,
    required this.grey,
    required this.backgroundColor,
    required this.backgroundColorVariant,
    required this.secondary,
    required this.lightTextBody,
    required this.error,
    required this.transparent,
    required this.downRed,
    required this.subtitle,
    required this.link,
    required this.redishOrange,
    required this.dividerColor,
    required this.networkColor,
    required this.linkBold,
  });

  factory CustomColorSet._create(CustomThemeMode mode) {
    final isLight = mode.isLight;

    final text = isLight ? Style.text : Style.white;

    final bodyText = isLight ? Style.bodyText : Style.white;

    final subText = isLight ? Style.subText : Style.lightTextBody;

    const primary = Style.primary;

    const white = Style.white;

    const icon = Style.icon;

    final grey = isLight ? Style.grey : Style.secondary;

    final backgroundColor = isLight ? Style.backgroundColor : Style.text;

    final backgroundColorVariant = isLight ? Style.white : Style.text;

    const secondary = Style.secondary;

    final lightTextBody = isLight ? Style.lightTextBody : Style.text;
    const error = Style.error;

    const transparent = Style.transparent;

    const secondaryVariant = Style.secondaryVariant;

    const downRed = Style.downRed;

    const subtitle = Style.subtitle;

    const link = Style.link;

    const redishOrange = Style.redishOrange;

    const dividerColor = Style.dividerColor;

    const networkColor = Style.networkColor;

    const linkBold = Style.linkBold;

    return CustomColorSet._(
      text: text,
      bodyText: bodyText,
      subText: subText,
      primary: primary,
      white: white,
      icon: icon,
      grey: grey,
      backgroundColor: backgroundColor,
      backgroundColorVariant: backgroundColorVariant,
      secondary: secondary,
      lightTextBody: lightTextBody,
      error: error,
      transparent: transparent,
      secondaryVariant: secondaryVariant,
      downRed: downRed,
      subtitle: subtitle,
      link: link,
      redishOrange: redishOrange,
      dividerColor: dividerColor,
      networkColor: networkColor,
      linkBold: linkBold,
    );
  }

  static CustomColorSet createOrUpdate(CustomThemeMode mode) {
    return CustomColorSet._create(mode);
  }
}
