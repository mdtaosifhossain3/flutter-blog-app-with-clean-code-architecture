part of 'splash_imports.dart';

class SplashView extends StatefulWidget {
  SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  void whereToGo() async {
    await Future.delayed(
        Duration(seconds: 2), () => context.goNamed(RoutesName.onboardView));
  }

  @override
  void initState() {
    //  Timer(const Duration(seconds: 2), () => context.goNamed(MyStrings.appName));
    whereToGo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: Center(
        child: FadedScaleAnimation(
          child: Image.asset(
            "assets/images/logo.png",
            width: 139.w,
            height: 42.h,
          ),
        ),
      ),
    );
  }
}
