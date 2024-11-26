import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:multiple_user_role_authentication/components/custom_textformfield.dart';
import 'package:multiple_user_role_authentication/theme_data.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController usernameTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  void submitCredentialsMethod() {
    if (_formKey.currentState!.validate()) {
      print("Success");
    } else {
      print("Anfa o");
    }
    _formKey.currentState!.reset();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    usernameTextEditingController.dispose();
    passwordTextEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: true,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraint) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    Icon(
                      FontAwesomeIcons.starOfLife,
                      color: CustomThemeData.primaryColor,
                      size: constraint.maxWidth >= 600
                          ? CustomThemeData.mediaQueryHeight(
                              context: context, heightDouble: 0.1)
                          : CustomThemeData.mediaQueryHeight(
                              context: context, heightDouble: 0.26),
                    ),
                    const Text("Hope Care\nHospital",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: CustomThemeData.primaryColor,
                            fontSize: CustomThemeData.loginHeadingFontSize,
                            letterSpacing: 2))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: constraint.maxWidth >= 600
                        ? CustomThemeData.mediaQueryWidth(
                            context: context, widthDouble: 0.31)
                        : CustomThemeData.mediaQueryWidth(
                            context: context, widthDouble: 0.06), vertical: CustomThemeData.mediaQueryHeight(context: context, heightDouble: 0.03)),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      CustomTextformfield(
                          passwordTextFormField: false,
                          controller: usernameTextEditingController,
                          validatorError: "Please enter username",
                          label: "Username"),
                      SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.03),
                      CustomTextformfield(
                          passwordTextFormField: true,
                          controller: passwordTextEditingController,
                          validatorError: "Please enter password",
                          label: "Password"),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.03,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            submitCredentialsMethod();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: CustomThemeData.primaryColor,
                          ),
                          child: const Text("Submit",
                              style:
                                  TextStyle(color: CustomThemeData.colorWhite)))
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    ));
  }
}
