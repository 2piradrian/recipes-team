import 'package:flutter/material.dart';
import 'package:flutter_app/components/custom_button.dart';
import 'package:flutter_app/components/custom_text.dart';
import 'package:flutter_app/style/app_styles.dart';
import 'package:flutter_app/style/responsive.dart';
import 'package:flutter_app/style/size_config.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    final isTablet = responsive.isTablet;

    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: AppStyles.kBackgroundColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.asset(
                "assets/welcome.gif",
                height: isTablet ? 430 : 250,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      fontSize: isTablet ? 30 : 24,
                      text: 'Disfruta las mejores recetas',
                      weight: FontWeight.w600,
                    ),
                    CustomText(
                      fontSize: isTablet ? 22 : 16,
                      text: 'desde la comodidad de tu casa',
                      weight: FontWeight.w600,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      constraints: BoxConstraints(
                        maxWidth: isTablet ? 360 : 250,
                      ),
                      child: CustomText(
                        fontSize: isTablet ? 22 : 16,
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
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      height: isTablet ? 65 : 45,
                      width: isTablet ? 280 : 180,
                      fontSize: isTablet ? 22 : 16,
                      color: AppStyles.kMainColor,
                      textColor: AppStyles.kBackgroundColor,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomButton(
                      text: 'Registrarse',
                      onPressed: () {
                        Navigator.pushNamed(context, '/register');
                      },
                      height: isTablet ? 65 : 45,
                      width: isTablet ? 280 : 180,
                      fontSize: isTablet ? 22 : 16,
                      color: AppStyles.kShadedMainColor,
                      textColor: AppStyles.kMainColor,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
