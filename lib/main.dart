import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Canadá Dicas', 
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 148, 14, 14)),
      ),
      home: const MyHomePage(title: 'Canadá Dicas'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 226, 40, 40),
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              onPressed: () {}, 
              icon: const Icon(Icons.add_call, color: Colors.white),
            ), 
            IconButton(
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              onPressed: () {}, 
              icon: const Icon(Icons.menu, color: Colors.white),
            ),
          ],
        ),
        title: Text(widget.title, style: const TextStyle(color: Colors.white)),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          // TÍTULO PRINCIPAL
          const Text(
            'Lugares para se Visitar e Refeições Imperdíveis',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 148, 14, 14),
            ),
          ),
          const SizedBox(height: 16),

          // INTRODUÇÃO
          const Text(
            'Descubra alguns dos destinos e sabores mais marcantes do Canadá. Entre paisagens impressionantes, construções históricas e pratos tradicionais, estas experiências são paradas obrigatórias para quem deseja conhecer o melhor do país.',
            style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
          ),
          const SizedBox(height: 24),

          // SEÇÃO: POUTINE
          const Text(
            '🍟 Poutine',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'Um dos pratos mais famosos do Canadá, a poutine combina batatas fries crocantes, queijo coalho fresco e um delicioso molho quente. Simples, saborosa e muito popular, é uma experiência gastronômica que não pode faltar no seu roteiro.',
            style: TextStyle(fontSize: 15, height: 1.4, color: Colors.black54),
          ),
          const SizedBox(height: 20),

          // SEÇÃO: BEAVERTAILS
          const Text(
            '🦫 BeaverTails',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'Esta tradicional sobremesa canadense consiste em uma masa frita esticada no formato de uma cauda de castor, coberta com diversas opções de toppings, como açúcar e canela, chocolate, frutas e muito mais. Uma verdadeira delícia para experimentar durante os passeios.',
            style: TextStyle(fontSize: 15, height: 1.4, color: Colors.black54),
          ),
          const SizedBox(height: 20),

          // SEÇÃO: CASA LOMA
          const Text(
            '🏰 Casa Loma',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'Localizado em Toronto, o Casa Loma é um majestoso castelo que transporta os visitantes para outra época. Com jardins encantadores, túneis secretos e uma arquitetura impressionante, é uma das atrações mais visitadas da cidade sendo cenário da obra scott pilgrim um dos mais famosos personagem com nacionalidade canadense .',
            style: TextStyle(fontSize: 15, height: 1.4, color: Colors.black54),
          ),
          const SizedBox(height: 20),

          // SEÇÃO: NIAGARA FALLS
          const Text(
            '🌊 Niagara Falls',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'As famosas Niagara Falls estão entre as maravilhas naturais mais impressionantes do mundo. A força das águas, as vistas panorâmicas e os passeios de barco proporcionam uma experiência inesquecível para visitantes de todas as idades.',
            style: TextStyle(fontSize: 15, height: 1.4, color: Colors.black54),
          ),
          const SizedBox(height: 24),

          // CONCLUSÃO
          const Divider(),
          const SizedBox(height: 12),
          const Text(
            '✨ E isso é apenas o começo! Na próxima página, conheça a opinião da nossa especialista Lorena, que compartilha suas impressões, dicas exclusivas e recomendações sobre cada um desses lugares e sabores imperdíveis. Não perca! 🇨🇦🍁',
            style: TextStyle(
              fontSize: 15, 
              fontStyle: FontStyle.italic, 
              color: Color.fromARGB(255, 120, 10, 10),
              height: 1.5,
            ),
          ),
          const SizedBox(height: 32),

          // BOTÃO AVANÇAR
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 148, 14, 14), // Cor vermelha escura
              foregroundColor: Colors.white, // Cor do texto interna
              padding: const EdgeInsets.symmetric(vertical: 16), // Altura do botão
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8), // Bordas levemente arredondadas
              ),
            ),
            onPressed: () {
              // AÇÃO DO BOTÃO: Abre a próxima tela quando clicado
              // Navigator.push(context, MaterialPageRoute(builder: (context) => TelaDaLorena()));
            },
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Avançar',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 8),
                Icon(Icons.arrow_forward), // Ícone de seta para a direita
              ],
            ),
          ),
          const SizedBox(height: 16), // Espaço extra após o botão para não colar no fim da tela
          //versão com o nome certo
        ],
      ),
    );
  }
}
 