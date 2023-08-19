import 'package:platina/presentation/styles/theme_warpper.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class NoInernetComponent extends StatelessWidget {
  const NoInernetComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (context, colors, fonts, icons, controller) {
      return Scaffold(
        backgroundColor: Colors.black12,
        body: Stack(
          fit: StackFit.expand,
          children: [
            Lottie.asset(
              "assets/animations/no_connection.json",
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.12,
              left: MediaQuery.of(context).size.width * 0.065,
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 5),
                      blurRadius: 25,
                      color: const Color(0xFF59618B).withOpacity(0.17),
                    ),
                  ],
                ),
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: colors.primary,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ),
                  onPressed: () async {
                    // bool result = await ConnectivityX.;
                    // if (result) {
                    // ignore: use_build_context_synchronously
                    // Navigator.pushAndRemoveUntil(context,
                    //     Routes.getBottomNavBar(context), (route) => false);
                    // }
                    // if (isOnline) {
                    //   Navigator.pushAndRemoveUntil(context,
                    //       Routes.getBottomNavBar(context), (route) => false);
                    // } else {}
                  },
                  child: Text(
                    "retry".toUpperCase(),
                    style: TextStyle(color: colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      );
    });
  }
}
