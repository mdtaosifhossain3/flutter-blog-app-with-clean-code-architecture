part of 'splash_imports.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FadedScaleAnimation(
          child: Image.asset(
            "assets/images/logo.png",
            width: 139,
            height: 42,
          ),
        ),
      ),
    );
  }
}
