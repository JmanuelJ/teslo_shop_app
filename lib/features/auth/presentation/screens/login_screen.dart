import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:teslo_shop/features/shared/shared.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final scaffoldBackgrounColor = Theme.of(context).scaffoldBackgroundColor;

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus,
      child: Scaffold(
        body: GeometricalBackground(
            child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 80),

              const Icon(
                Icons.production_quantity_limits_rounded,
                color: Colors.white,
                size: 100,
              ),

              const SizedBox(height: 80),

              Container(
                height: size.height - 260,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: scaffoldBackgrounColor,
                    borderRadius:
                        const BorderRadius.only(topLeft: Radius.circular(100))),
                child: const _LoginForm(),
              )
            ],
          ),
        )),
      ),
    );
  }
}

class _LoginForm extends ConsumerWidget {
  const _LoginForm();

  void showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textStyle = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          const SizedBox(height: 50),

          Text(
            'Login',
            style: textStyle.titleLarge,
          ),

          const SizedBox(height: 90),

          const CustomTextFormField(
            label: 'Correo',
            keyboardType: TextInputType.emailAddress,
          ),

          const SizedBox(height: 30),

          const CustomTextFormField(
            label: 'Contraseña',
            obscureText: true,
          ),

          const SizedBox(height: 30),

          SizedBox(
            width: double.infinity,
            height: 60,
            child: CustomFilledButton(
              text: 'Ingresar',
              buttonColor: Colors.black,
              onPressed: () {},
            ),
          ),

          const Spacer(flex: 2),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('¿No tienes cuenta?'),
              TextButton(
                  onPressed: () => context.push('/register'),
                  child: const Text('Crea una aquí'))
            ],
          ),

          const Spacer(flex: 1)
        ],
      ),
    );
  }
}
