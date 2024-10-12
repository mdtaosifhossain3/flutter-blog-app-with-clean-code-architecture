part of 'widget_imports.dart';

class OnboardFirst extends StatelessWidget {
  const OnboardFirst({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          MyAssets.imageOne,
          width: 332.w,
          height: 314.h,
        ),
        Text(
          "Discover, engage and read the latest articles oras well as share your own thoughts and ideas with the community",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 15.sp,
          ),
        )
      ],
    );
  }
}
