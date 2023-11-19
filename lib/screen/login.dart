import 'package:dan/const/color.dart';
import 'package:dan/screen/homescreen.dart';
import 'package:dan/screen/signUp.dart';
import 'package:dan/utils/helper.dart';
import 'package:dan/widgets/customText.dart';
import 'package:flutter/material.dart';
class LoginScreen extends StatelessWidget {
  static const routeName = "/loginScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Helper.getScreenHeight(context),
        width: Helper.getScreenWidth(context),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 30,
            ),
            child: Column(
              children: [
                Text(
                  "Login",
                  style: Helper.getTheme(context).headline6,
                ),
                Spacer(),
                Text('Add your details to login'),
                Spacer(),
                CustomTextInput(
                  hintText: "Your email",
                ),
                Spacer(),
                CustomTextInput(
                  hintText: "password",
                ),
                Spacer(),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                        .pushReplacementNamed(HomeScreen.routeName);
                    },
                    child: Text("Login"),
                  ),
                ),
                Spacer(),
                Spacer(
                  flex: 2,
                ),
                Text("or Login With"),
                Spacer(),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Color(
                          0xFF367FC0,
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          Helper.getAssetName(
                            "fb.png",
                            "virtual",
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text("Login with Facebook")
                      ],
                    ),
                  ),
                ),
                Spacer(),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Color(
                          0xFFDD4B39,
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          Helper.getAssetName(
                            "google.png",
                            "virtual",
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text("Login with Google")
                      ],
                    ),
                  ),
                ),
                Spacer(
                  flex: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an Account?"),
                    GestureDetector(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: AppColor.orange,
                          fontWeight: FontWeight.bold,
                        ),

                      ),
                      onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed(SignUpScreen.routeName);
                  },
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
