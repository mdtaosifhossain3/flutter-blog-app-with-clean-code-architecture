part of 'onboard_imports.dart';

class OnboardView extends StatefulWidget {
  const OnboardView({super.key});

  @override
  State<OnboardView> createState() => _OnboardViewState();
}

class _OnboardViewState extends State<OnboardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                Image.asset(
                  MyAssets.logo,
                  width: 139.w,
                  height: 42.h,
                  color: MyColors.primaryColor,
                ),
                Expanded(
                    child: PageView(
                  controller: OnboardViewModel.pageController,
                  children: const [
                    OnboardFirst(),
                    OnboardTwo(),
                    OnboardThree(),
                  ],
                )),
                SizedBox(
                  height: 5.h,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: MyColors.primaryColor,
                        foregroundColor: Colors.white,
                        minimumSize:
                            Size(MediaQuery.of(context).size.width, 44),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(11))),
                    onPressed: () => context.goNamed(RoutesName.authView),
                    child: Text(
                      "Get Started",
                      style: TextStyle(fontSize: 16.sp),
                    )),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () => context.goNamed(RoutesName.authView),
                        child: Text(
                          "Skip",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              color: MyColors.primaryColor),
                        )),
                    SmoothPageIndicator(
                      controller: OnboardViewModel.pageController,
                      count: 3,
                      effect: const WormEffect(
                          dotColor: Colors.grey,
                          activeDotColor: MyColors.primaryColor),
                    ),
                    TextButton(
                        onPressed: () => OnboardViewModel.goToNextPage(),
                        child: Text(
                          "Next",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              color: MyColors.primaryColor),
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
