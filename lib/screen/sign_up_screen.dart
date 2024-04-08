import 'package:ar_code/svgimages/svg_images.dart';
import 'package:ar_code/widget/my_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../style/sign_up_screen_styles.dart';
import '../widget/textfromfield_widget.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  Widget buildTopPart(){
    return Column(
      children: [
        Image.asset("images/Artisan Fusion Logo.png",
        height: 200,),
        TextFromField(
          hintText: "Full Name",
          obscureText: false,
        ),
        TextFromField(
          hintText: "Email",
          obscureText: false,
        ),
        TextFromField(
          hintText: "Password",
          obscureText: true,
        ),
        TextFromField(
          hintText: "Confirm Password",
          obscureText: true,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: MyButtonWidget(
            onPress: (){},
            color: Colors.deepPurple,
            text: "Create an account",
          ),
        ),
        SizedBox(
          height: 20,
        ),
        RichText(text: TextSpan(
          text: "By Signing up your agress to our\n\t",
          style:SignupScreenStyles.signInAgressStyle,
          children: <TextSpan>[
            TextSpan(
              text: "Terms\t",
              style:SignupScreenStyles.termsTextStyle,
            ),
            TextSpan(
              text: "and\t",
              style:SignupScreenStyles.andtextStyle,
            ),
            TextSpan(
              text: "Conditions of Use\t",
              style:SignupScreenStyles.ConditionStyle,
            ),
          ]
        )),
      ],
    );
  }
  Widget buildBottomPart(){
    return Container(
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
         const Text("or sign in with social networks",
          style: SignupScreenStyles.Signinsocialstyles,
          ),
          SizedBox(
            height: 10,
          ),
          Padding(padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
                Material(
                  shape: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 0.5,
                      color: Colors.grey,

                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: SvgPicture.asset(
                    SvgImages.google,

                  ),
                ),
            ],
          ),
          )
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            buildTopPart(),
            buildBottomPart(),
          ],
        ),
      ),
    );
  }
}
