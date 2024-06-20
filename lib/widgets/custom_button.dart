import 'package:ecommerce/consts/consts.dart';

Widget customButton({onpress,color,textColor,String? title}) {
  
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      padding:const EdgeInsets.all(12),
      backgroundColor: color
    ),
    onPressed: onpress, child: title!.text.color(textColor).fontFamily(bold).make());
}
