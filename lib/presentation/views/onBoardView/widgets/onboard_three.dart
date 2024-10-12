part of 'widget_imports.dart';

class OnboardThree extends StatelessWidget {
  const OnboardThree({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          MyAssets.imageThree,
          width: 332.w,
          height: 314.h,
        ),
        Text(
          "Explore a wide selection of categories, or use the search bar to find specific topics",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 15.sp,
          ),
        )
      ],
    );
  }
}
