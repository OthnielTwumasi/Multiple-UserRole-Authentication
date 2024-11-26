import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:multiple_user_role_authentication/components/custom_textformfield.dart';
import 'package:multiple_user_role_authentication/theme_data.dart';

class MobileView extends StatefulWidget {
  MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
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
            body: Column(
              children: [
                ///container/area 1
                SizedBox(
                  height: CustomThemeData.mediaQueryHeight(
                      context: context, heightDouble: 0.2),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: CustomThemeData.mediaQueryWidth(
                            context: context, widthDouble: 0.03),
                        vertical: CustomThemeData.mediaQueryHeight(
                            context: context, heightDouble: 0.027)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hello",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: CustomThemeData.colorGrey,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "Dr. Twumasi",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: CustomThemeData.colorBlack,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              FontAwesomeIcons.gear,
                              size: 28,
                            )),
                      ],
                    ),
                  ),
                ),
                Text("Today's Tasks"),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: CustomThemeData.primaryColor,
                  ),
                  width: CustomThemeData.mediaQueryWidth(
                      context: context, widthDouble: 0.6),
                  height: CustomThemeData.mediaQueryHeight(
                      context: context, heightDouble: 0.5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding:const EdgeInsets.all(9),
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(7)),color: CustomThemeData.colorWhite),
                          child: const Icon(
                            FontAwesomeIcons.bedPulse,
                            color: CustomThemeData.primaryColor,
                            size: 25,
                          )),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                       Text("Ruth Omane",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: CustomThemeData.colorWhite),),
                       Text("Surgery",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500,color: CustomThemeData.colorWhite),),
                     ],),
                      SizedBox(height: 15,),
                      Row(children: [
                        Icon(FontAwesomeIcons.locationDot,size: 15,color: CustomThemeData.colorWhite,)
                      ],)
                    ],
                  ),
                )
              ],
            )));
  }
}
