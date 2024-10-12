part of 'widget_imports.dart';

class OnboardTwo extends StatelessWidget {
  const OnboardTwo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          MyAssets.imageTwo,
          width: 332.w,
          height: 314.h,
        ),
        Text(
          "Customize your reading experience and join the conversation by creating an account.",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 15.sp,
          ),
        )
      ],
    );
  }
}
