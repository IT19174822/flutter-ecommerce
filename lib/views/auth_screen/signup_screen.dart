import 'package:ecommerce/consts/consts.dart';
import 'package:ecommerce/consts/lists.dart';
import 'package:ecommerce/views/auth_screen/login.dart';
import 'package:ecommerce/widgets/app_logo.dart';
import 'package:ecommerce/widgets/bg_widget.dart';
import 'package:ecommerce/widgets/custom_button.dart';
import 'package:ecommerce/widgets/custom_textfield.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool? isCheck = false;
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
              "Join to $appname".text.fontFamily(bold).white.size(18).make(),
              10.heightBox,
              Column(
                children: [
                  customTextField(
                    hint: hintName,
                    title: name,
                  ),
                  20.heightBox,
                  customTextField(
                    hint: emailHint,
                    title: email,
                  ),
                  20.heightBox,
                  customTextField(
                    hint: passwordHint,
                    title: password,
                  ),
                  20.heightBox,
                  customTextField(
                    hint: hintconfirmPassword,
                    title: confirmPsd,
                  ),
                  20.heightBox,
                  Row(
                    children: [
                      Checkbox(
                          checkColor: redColor,
                      
                          value: isCheck,
                          onChanged: (newValue) {
                            setState(() {
                              isCheck = newValue;
                            });
                          }),
                      Expanded(
                        child: RichText(
                            text: const TextSpan(children: [
                          TextSpan(
                              text: "I agree to the ",
                              style:
                                  TextStyle(color: fontGrey, fontFamily: regular)),
                          TextSpan(
                              text: termsAndConditions,
                              style:
                                  TextStyle(color: redColor, fontFamily: regular)),
                          TextSpan(
                              text: " & ",
                              style:
                                  TextStyle(color: fontGrey, fontFamily: regular)),
                          TextSpan(
                              text: privacyPolicy,
                              style:
                                  TextStyle(color: redColor, fontFamily: regular)),
                        ])),
                      ),
                    ],
                  ),
                  customButton(
                    title: sigup,
                    color: isCheck ==true?  redColor : golden,
                    textColor: whiteColor,
                    onpress: () {},
                  ).box.width(context.screenWidth - 50).make(),
                  10.heightBox,
                  GestureDetector(
                    child: RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                          text: alreadyHaveAc,
                          style: TextStyle(color: fontGrey)),
                      TextSpan(text: login, style: TextStyle(color: redColor)),
                    ])).onTap(() {
                      Get.back();
                    }),
                  )
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
