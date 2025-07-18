import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

final appRouter = GoRouter(initialLocation: '/login', routes: [
  // Auth Routes
  GoRoute(path: '/login', builder: (context, state) => const Scaffold()),
  GoRoute(path: '/register', builder: (context, state) => const Scaffold()),

  //Product Routes
  GoRoute(path: '/', builder: (context, state) => const Scaffold())
]);
