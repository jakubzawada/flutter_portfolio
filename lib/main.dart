import 'package:flutter/material.dart';
import 'package:flutter_portfolio/app/home/home_page.dart';
import 'package:emailjs/emailjs.dart' as emailjs; // Importujemy EmailJS

void main() {
  // Inicjalizacja EmailJS z publicznym i prywatnym kluczem
  emailjs.init(const emailjs.Options(
    publicKey: 'YOUR_PUBLIC_KEY', // Zastąp tym swoim publicznym kluczem
    privateKey: 'YOUR_PRIVATE_KEY', // Zastąp tym swoim prywatnym kluczem
  ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
