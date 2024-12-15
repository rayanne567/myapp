import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false, // Desativa o banner de debug
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 21, 186, 150)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Bem-vindo ao Meu projeto Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void _incrementCounter() {
    setState(() {
      // Código de incremento de contagem, se necessário
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
        leading:IconButton(
            icon: const Icon(Icons.menu),
            onPressed: _incrementCounter,
          ),
        actions: [
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: _incrementCounter,
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Forma com bordas arredondadas
            ClipRRect(
              borderRadius: BorderRadius.circular(20), // Arredondamento
              child: Container(
                width: 300,
                height: 50,
                color: const Color.fromARGB(183, 189, 138, 219),
                child: const Center(
                  child: Text(
                    'Rayanne Cordeiro', // O texto que aparecerá dentro do container
                    style: TextStyle(
                      fontSize: 20, // Tamanho do texto
                      fontWeight: FontWeight.bold, // Deixe o texto mais forte
                      color: Colors.black, // Cor do texto
                    ),
                  ),
                ),
              ),
            ),
            // Exemplo de outro texto abaixo
            const SizedBox(height: 10), // Adiciona espaçamento entre os textos
            const Text(
              'Aluna do curso Talento Tech!',
              style: TextStyle(
                fontSize: 20, // Tamanho do texto
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Incrementar',
        child: const Icon(Icons.favorite),
      ),
    );
  }
}
