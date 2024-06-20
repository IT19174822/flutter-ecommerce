import 'package:ecommerce/consts/consts.dart';
import 'package:ecommerce/consts/lists.dart';
import 'package:ecommerce/views/auth_screen/signup_screen.dart';
import 'package:ecommerce/views/home_screen/home_screen.dart';
import 'package:ecommerce/widgets/app_logo.dart';
import 'package:ecommerce/widgets/bg_widget.dart';
import 'package:ecommerce/widgets/custom_button.dart';
import 'package:ecommerce/widgets/custom_textfield.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            children: [
              (context.screenHeight * 0.1).heightBox,
              appLogoWidget(),
              10.heightBox,
              "Login to $appname".text.fontFamily(bold).white.size(18).make(),
              10.heightBox,
              Column(
                children: [
                  customTextField(
                    hint: emailHint,
                    title: email,
                  ),
                  20.heightBox,
                  customTextField(
                    hint: passwordHint,
                    title: password,
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {}, child: forgetPsd.text.make())),
                  5.heightBox,
                  customButton(
                    title: login,
                    color: redColor,
                    textColor: whiteColor,
                    onpress: () {
                      Get.to(const HomeScreen());
                    },
                  ).box.width(context.screenWidth - 50).make(),
                  5.heightBox,
                  createAc.text.make(),
                  5.heightBox,
                  customButton(
                    title: sigup,
                    color: lightGolden,
                    textColor: redColor,
                    onpress: () {
                      Get.to(const SignUpScreen());
                    },
                  ).box.width(context.screenWidth - 50).make(),
                  10.heightBox,
                  loginWith.text.color(fontGrey).make(),
                  5.heightBox,
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          3,
                          (index) => Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  backgroundColor: lightGrey,
                                  radius: 25,
                                  child: Image.asset(
                                    socialIconList[index],
                                    width: 30,
                                  ),
                                ),
                              )))
                ],
              )
                  .box
                  .white
                  .rounded
                  .padding(EdgeInsets.all(16))
                  .width(context.width - 40)
                  .shadow
                  .make(),
            ],
          ),
        ),
      ),
    );
  }
}
