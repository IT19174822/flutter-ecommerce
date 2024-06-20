import 'package:ecommerce/consts/consts.dart';
import 'package:ecommerce/views/category_screen/item_details.dart';
import 'package:ecommerce/widgets/bg_widget.dart';
import 'package:get/get.dart';

class CategoryDetailsScreen extends StatefulWidget {
  final String title;
  const CategoryDetailsScreen({super.key, required this.title});

  @override
  State<CategoryDetailsScreen> createState() => _CategoryDetailsScreenState();
}

class _CategoryDetailsScreenState extends State<CategoryDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      appBar: AppBar(
        title: widget.title.text.white.fontFamily(bold).make(),
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: List.generate(6, (context) {
                  return "Baby needs"
                      .text
                      .fontFamily(bold)
                      .color(darkFontGrey)
                      .makeCentered()
                      .box
                      .margin(const EdgeInsets.symmetric(horizontal: 4))
                      .white
                      .rounded
                      .size(120, 60)
                      .make();
                }),
              ),
            ),
            20.heightBox,
            Expanded(
                child: GridView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: 6,
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisExtent: 250,
                            mainAxisSpacing: 8,
                            crossAxisSpacing: 8),
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            imgP5,
                            height: 150,
                            width: 200,
                            fit: BoxFit.cover,
                          ),
                          10.heightBox,
                          "Woman Hand Bag"
                              .text
                              .fontFamily(bold)
                              .color(darkFontGrey)
                              .make(),
                          5.heightBox,
                          "\$100".text.color(redColor).fontFamily(bold).make(),
                        ],
                      )
                          .box
                          .white
                          .margin(const EdgeInsets.symmetric(horizontal: 4))
                          .roundedSM
                          .padding(const EdgeInsets.all(12))
                          .make()
                          .onTap(() {
                        Get.to(() {
                          return const ItemDetails(title: 'Sample Item');
                        });
                      });
                    }))
          ],
        ),
      ),
    ));
  }
}
