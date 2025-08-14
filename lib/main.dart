import 'package:flutter/material.dart';

void main() {
  runApp(const ShowcaseApp());
}

class ShowcaseApp extends StatelessWidget {
  const ShowcaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Showcase',
      theme: ThemeData(useMaterial3: true),
      home: const ShowcaseHome(),
    );
  }
}

class ShowcaseHome extends StatelessWidget {
  const ShowcaseHome({super.key});

  @override
  Widget build(BuildContext context) {
    final demos = <Demo>[
      Demo(
        title: 'Placeholder Demo',
        builder: (context) => const Scaffold(
          appBar: AppBar(title: Text('Placeholder Demo')),
          body: Center(child: Placeholder()),
        ),
      ),
      // Add more demos here.
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Widget Showcase')),
      body: ListView.builder(
        itemCount: demos.length,
        itemBuilder: (context, index) {
          final demo = demos[index];
          return ListTile(
            title: Text(demo.title),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: demo.builder),
            ),
          );
        },
      ),
    );
  }
}

class Demo {
  final String title;
  final WidgetBuilder builder;

  const Demo({required this.title, required this.builder});
}
