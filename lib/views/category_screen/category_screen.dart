import 'package:ecommerce/consts/consts.dart';
import 'package:ecommerce/consts/lists.dart';
import 'package:ecommerce/views/category_screen/category_details_screen.dart';
import 'package:ecommerce/widgets/bg_widget.dart';
import 'package:get/get.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      appBar: AppBar(
        title: categories.text.white.fontFamily(bold).make(),
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
            itemCount: 9,
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                mainAxisExtent: 200),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Image.asset(
                    categoryImages[index],
                    height: 120,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                  10.heightBox,
                  "${categoriesList[index]}"
                      .text
                      .align(TextAlign.center)
                      .fontFamily(bold)
                      .color(darkFontGrey)
                      .make(),
                ],
              ).box.white.clip(Clip.antiAlias).roundedSM.make().onTap(() {
                Get.to(() {
                  return CategoryDetailsScreen(title: categoriesList[index]);
                });
              });
            }),
      ),
    ));
  }
}
