import 'package:flutter/material.dart';
import 'package:flutter_app/components/custom_button.dart';
import 'package:flutter_app/components/custom_text.dart';
import 'package:flutter_app/style/app_styles.dart';
import 'package:flutter_app/style/size_config.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: AppStyles.kBackgroundColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.asset("assets/welcome.gif", height: 250),
              const CustomText(
                size: 6,
                text: 'Disfruta las mejores recetas',
                weight: FontWeight.w600,
              ),
              const CustomText(
                size: 3.8,
                text: 'desde la comodidad de tu casa',
                weight: FontWeight.w600,
              ),
              const SizedBox(
                height: 50,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: CustomText(
                  size: 3.8,
                  text:
                      'Encontrá las mejores recetas, y sorprendé a todo el mundo. O bien, compartí las tuyas a otras personas.',
                  weight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              CustomButton(
                text: 'Iniciar Sesión',
                onPressed: () {},
                height: 12,
                width: 50,
                size: 3.8,
                color: AppStyles.kMainColor,
                textColor: AppStyles.kBackgroundColor,
              ),
              const SizedBox(
                height: 15,
              ),
              CustomButton(
                text: 'Registrarse',
                onPressed: () {},
                height: 12,
                width: 50,
                size: 3.8,
                color: AppStyles.kShadedMainColor,
                textColor: AppStyles.kMainColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
