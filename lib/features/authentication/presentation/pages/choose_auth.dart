import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uhl_link/config/routes/routes_consts.dart';
import '../../../../widgets/screen_width_button.dart';

class ChooseAuthPage extends StatefulWidget {
  const ChooseAuthPage({super.key});

  @override
  State<ChooseAuthPage> createState() => _ChooseAuthPageState();
}

class _ChooseAuthPageState extends State<ChooseAuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              Image.asset("assets/images/logo.png"),
              Text("Uhl Link", style: Theme.of(context).textTheme.titleLarge),
              const Expanded(child: SizedBox()),
              ScreenWidthButton(
                text: "Login via IIT Mandi E-Mail",
                buttonFunc: () {
                  GoRouter.of(context).pushNamed(UhlLinkRoutesNames.login);
                },
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Text("Or", style: Theme.of(context).textTheme.labelSmall),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              ScreenWidthButton(
                text: "Continue as a Guest",
                buttonFunc: () {
                  GoRouter.of(context).pushNamed(UhlLinkRoutesNames.updatePassword);
                },
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            ]),
      ),
    );
  }
}