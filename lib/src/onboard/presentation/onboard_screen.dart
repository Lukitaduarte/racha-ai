import 'package:buddy_budge/src/register/presentation/register_group_screen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';

class OnboardScreen extends StatelessWidget {
  static final String screenName = "/onboardScreen";

  static final List<PageViewModel> steps = [
    PageViewModel(
        decoration: PageDecoration(
          imagePadding: EdgeInsets.only(top: 120),
        ),
        image: Lottie.asset("assets/animations/step1.json"),
        title: "Esqueça a calculadora",
        body:
            "Sabe aquela parte chata de dividir a conta com os amigos quando o rolê acaba? O buddy budge descomplica isso em poucos cliques"),
    PageViewModel(
        decoration: PageDecoration(
          imagePadding: EdgeInsets.only(top: 120),
        ),
        image: Lottie.asset("assets/animations/step2.json"),
        title: "Divida as contas",
        body:
            "Crie grupos para dividir aquela conta do barzinho com os amigos ou controle os gastos do apto com seus colegas sem complicação"),
    PageViewModel(
        decoration: PageDecoration(
          imagePadding: EdgeInsets.only(top: 120),
        ),
        image: Lottie.asset("assets/animations/step3.json"),
        title: "Você e seus amigos no poder",
        body: "Adicione, remova, edite suas contas e membros do grupo de maneira democratica"),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      showSkipButton: true,
      skip: const Text('Skip'),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Começar', style: TextStyle(fontWeight: FontWeight.w600)),
      pages: steps,
      onDone: () =>
          Navigator.pushNamed(context, RegisterGroupScreen.screenName),
    );
  }
}
