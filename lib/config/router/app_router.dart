import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:teslo_shop/features/auth/presentation/screens/screens.dart';

final appRouter = GoRouter(initialLocation: '/login', routes: [
  // Auth Routes
  GoRoute(path: '/login', builder: (context, state) => const LoginScreen()),
  GoRoute(path: '/register', builder: (context, state) => const RegisterScreen()),

  //Product Routes
  GoRoute(path: '/', builder: (context, state) => const Scaffold())
]);
