import 'package:ar_code/home_page/home_page.dart';
import 'package:ar_code/route/route.dart';
import 'package:ar_code/screen/sign_up_screen.dart';
import 'package:ar_code/svgimages/svg_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../style/login_screen_styles.dart';
import '../widget/my_button_widget.dart';
import '../widget/textfromfield_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  Widget buildTopPart({required BuildContext context}){
    return Column(
      children: [
        Image.asset("images/Artisan Fusion Logo.png",
        height: 200,
        ),
        Column(
          children: [
            TextFromField(
              hintText: "E-mail",
              obscureText: false,
            ),
            TextFromField(
              hintText: "Password",
              obscureText: true,
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: MyButtonWidget(
                text: "Sign In",
                  color: Colors.black,
                onPress: (){PageRouting.gotoNextPage(context: context, navigateTo:  HomePage(),);},
              ),),
              SizedBox(
                width: 20,

              ),
              Expanded(child: MyButtonWidget(
                text: "Sign Up",
                color: Colors.deepPurple,
                onPress: (){
                  //PageRouting.gotoNextPage(context: context, navigateTo:  SignupScreen(),);
                  print("hi");
                },
              ),),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text("Forgot Password?",style: LoginScreenStyles.forgotPaswordStyles,)
      ],
    );
  }
Widget buildBottomPart(){
    return Container(
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text("or Sign in with social networks",
          style: LoginScreenStyles.signinSocialStyles,),
          SizedBox(
            height: 5,
          ),
          Padding(padding: EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                shape: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 0.5,
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                onPressed:(){},

                child: Image.asset("images/Facebook.png",
                height: 50,)
              ),
              MaterialButton(
                  shape: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 0.5,
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  onPressed:(){},

                  child: Image.asset("images/Google.png",
                    height: 50,)
              ),
              MaterialButton(
                  shape: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 0.5,
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  onPressed:(){},

                  child: Image.asset("images/Facebook.png",
                    height: 50,)
              ),
            ],
          ),),
        ],
      ),
    );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  buildTopPart(context: context),
                  buildBottomPart(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
