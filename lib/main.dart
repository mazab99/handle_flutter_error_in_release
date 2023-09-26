import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Error Page',
      home: const MyHomePage(),
      builder: (context, widget) {
        ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
          return CustomError(errorDetails: errorDetails);
        };

        return widget ?? const SizedBox.shrink();
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // This will throw an error
            TestErrorExample(),
            SizedBox(height: 20),
            // This will not throw an error
            TestErrorExample(name: ' Mahmoud Azab!'),
          ],
        ),
      ),
    );
  }
}

class TestErrorExample extends StatelessWidget {
  final String? name;

  const TestErrorExample({
    super.key,
    this.name,
  });

  @override
  Widget build(BuildContext context) {
    return ErrorCard(
      color: Colors.blue,
      text: name!,
    );
  }
}

class CustomError extends StatelessWidget {
  final FlutterErrorDetails errorDetails;

  const CustomError({
    super.key,
    required this.errorDetails,
  });

  @override
  Widget build(BuildContext context) {
    return const ErrorCard(
      color: Colors.red,
      text: 'An error occurred',
    );
  }
}

class ErrorCard extends StatelessWidget {
  final Color color;
  final String text;

  const ErrorCard({
    super.key,
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
