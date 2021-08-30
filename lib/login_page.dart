import 'package:bank_app/colors.dart';
import 'package:bank_app/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.BACK_GROUND_COLOR,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.only(top: 100),
                  width: 125,
                  height: 125,
                  child: Image.network("https://static.wikia.nocookie.net/apple/images/e/e4/App_Store_-_%C3%ADcono.png/revision/latest?cb=20200624173517&path-prefix=es")),
              SizedBox(height: 40),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 126,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(25))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 20),
                      child: Text(
                        "Email Address",
                        style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w400),
                      ),
                    ),
                    CustomTextField(label: "Email", prefixIcon: Icons.email)
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                height: 126,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(25))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 20),
                      child: Text(
                        "Password",
                        style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w400),
                      ),
                    ),
                    CustomTextField(label: "Password", prefixIcon: Icons.lock, suffixIcon: Icons.visibility)
                  ],
                ),
              ),
              CustomButton(
                  label: "Login",
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
                  }),
              Padding(
                  padding: EdgeInsets.only(left: 25, right: 20),
                  child: Row(
                    children: [
                      Text(
                        "Sign Up",
                        style: TextStyle(fontSize: 15, color: Colors.black, decoration: TextDecoration.underline),
                      ),
                      Spacer(),
                      Text(
                        "Forgot Password?",
                        style: TextStyle(fontSize: 15, color: Colors.black, decoration: TextDecoration.underline),
                      ),
                    ],
                  ))
            ],
          ),
        ));
  }
}

class CustomTextField extends StatelessWidget {
  final String? label;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  CustomTextField({this.label, this.prefixIcon, this.suffixIcon});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(prefixIcon),
          hintText: label,
          isDense: true,
          filled: true,
          suffixIcon: Icon(suffixIcon),
          hintStyle: TextStyle(fontSize: 14),
          fillColor: Color(0xFFE4E4E4),
          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final Function()? onPressed;
  final String? label;
  const CustomButton({Key? key, this.label, this.onPressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
        onPressed: onPressed,
        padding: EdgeInsets.zero,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.BUTTON_COLOR,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Text(this.label!, style: TextStyle(fontSize: 20, color: Colors.white)),
          ),
        ));
  }
}
