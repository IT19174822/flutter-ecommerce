import 'package:ecommerce/consts/consts.dart';
import 'package:ecommerce/widgets/feature_button.dart';

class ItemDetails extends StatefulWidget {
  final String title;
  const ItemDetails({super.key, required this.title});

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        title: widget.title.text.color(darkFontGrey).fontFamily(bold).make(),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share,
                color: darkFontGrey,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_border_outlined,
                color: darkFontGrey,
              )),
        ],
      ),
      body: Column(
        children: [
          Expanded(child: Container(
            color: Colors.red,
          )
          ),
          SizedBox(
            width: double.infinity,
            child: FeatureButton(
              title: 'Button',
              icon: icAdd
            ),
          )
        ],
      ),
    );
  }
}
