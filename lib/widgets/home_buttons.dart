import 'package:ecommerce/consts/consts.dart';

Widget homeButton({height, width, String? title, icon, onpress}) {
  return Expanded(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          icon,
          width: 26,
        ),
        10.heightBox,
        title!.text.fontFamily(semibold).color(darkFontGrey).make()
      ],
    ),
  ).box.rounded.white.size(width, height).make();
}
