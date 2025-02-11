import 'package:ecommerce/consts/consts.dart';

Widget FeatureButton({String? title,icon}) {
  return Row(
    children: [
      Image.asset(icon,width: 60,fit: BoxFit.fill),
      10.widthBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make(),
    ],
  ).box.white.padding(const EdgeInsets.all(4)).margin(const EdgeInsets.symmetric(horizontal: 4)).roundedSM.outerShadowSm.make();
}
