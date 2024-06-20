import 'package:ecommerce/consts/consts.dart';
import 'package:ecommerce/controllers/home_controller.dart';
import 'package:ecommerce/views/cart_screen/cart_screen.dart';
import 'package:ecommerce/views/category_screen/category_screen.dart';
import 'package:ecommerce/views/home_screen/home.dart';
import 'package:ecommerce/views/profile_screen/profile_screen.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
//inititalize the Home controller
  var controller = Get.put(HomeController());

  var navBarItem = [
    BottomNavigationBarItem(
        icon: Image.asset(
          icHome,
          width: 20,
        ),
        label: home),
    BottomNavigationBarItem(
        icon: Image.asset(
          icCategories,
          width: 20,
        ),
        label: categories),
    BottomNavigationBarItem(
        icon: Image.asset(
          icCart,
          width: 20,
        ),
        label: cart),
    BottomNavigationBarItem(
        icon: Image.asset(
          icProfile,
          width: 20,
        ),
        label: account),
  ];

  var navBody = [
    const Home(),
    const CategoryScreen(),
    const CartScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Obx(() => Expanded(
              child: navBody.elementAt(controller.currentNavIndex.value)))
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currentNavIndex.value,
          backgroundColor: Colors.white,
          items: navBarItem,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: redColor,
          selectedLabelStyle: const TextStyle(fontFamily: semibold),
          onTap: (value) {
            controller.currentNavIndex.value = value;
          },
        ),
      ),
    );
  }
}
