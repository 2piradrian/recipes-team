import 'package:flutter/material.dart';
import 'package:flutter_app/components/custom_button.dart';
import 'package:flutter_app/style/app_styles.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    String _email = '';
    String _password = '';

    return Scaffold(
      /* resizeToAvoidBottomInset: true, */
      backgroundColor: AppStyles.kBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/login.gif"),
                    fit: BoxFit.contain,
                  ),
                ),
                child: const SizedBox(
                  height: 220,
                  width: double.infinity,
                ),
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(
                        height: 50,
                        width: double.infinity,
                      ),
                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Correo Electrónico',
                                prefixIcon: const Icon(Icons.mail),
                                filled: true,
                                fillColor: AppStyles.kBackgroundColor,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                              keyboardType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Por favor, ingresa tu correo electrónico';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                _email = value!;
                              },
                            ),
                            const SizedBox(height: 20.0),
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Contraseña',
                                prefixIcon: const Icon(Icons.lock),
                                filled: true,
                                fillColor: AppStyles.kBackgroundColor,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                              obscureText: true,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Por favor, ingresa tu contraseña';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                _password = value!;
                              },
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      CustomButton(
                        text: 'Iniciar sesión',
                        onPressed: () => validateInputs(_formKey),
                        height: 12,
                        width: 80,
                        size: 3.8,
                      ),
                      const SizedBox(height: 20.0),
                      TextButton(
                        onPressed: () {
                          // Aquí iría la lógica para navegar a la pantalla de registro
                        },
                        child: Text(
                          '¿No tienes una cuenta? Regístrate',
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  validateInputs(GlobalKey<FormState> _formKey) {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      // Aquí iría la lógica para verificar las credenciales
      // y acceder a la aplicación principal
    }
    return null;
  }
}
