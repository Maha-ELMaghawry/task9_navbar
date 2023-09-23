import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task9_navbar/screen1.dart';

void main() => runApp(const MyApp());

GoRouter router() {
  return GoRouter(
    routes: [
    GoRoute(
    path: '/',
    builder: (context, state) => const MyScaffold(),
  ),
      GoRoute(
        path: '/screen1',
        builder: (context, state) => const Screen1(),
      ),
    ],
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyScaffold extends StatefulWidget {
  const MyScaffold({super.key});

  @override
  State<MyScaffold> createState() => _MyScaffoldState();
}

class _MyScaffoldState extends State<MyScaffold> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( backgroundColor: Colors.pink.shade100,
        title: const Text('Hello'),
        centerTitle: true,
      ),
      body: const MyLogin(),
    );
  }
}

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Username',
            ),
          ),
        ),
        const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Password"),
            )),
        ElevatedButton(
          onPressed: () => context.go('/screen1'),
          style:
          ElevatedButton.styleFrom(backgroundColor: Colors.pink.shade100),
          child: const Text('Login'),
        ),
      ],
    );
  }
}
