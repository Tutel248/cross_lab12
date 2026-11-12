import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/container_config_provider.dart';
import 'widgets/sliders_section.dart';
import 'widgets/red_container_widget.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ContainerConfigProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
        centerTitle: true,
      ),
      body: const Column(
        children: [
          SlidersSection(),
          SizedBox(height: 16),
          RedContainerWidget(),
        ],
      ),
    );
  }
}