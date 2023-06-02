import 'package:flutter/material.dart';
import 'package:new_todolist_flutter/pages/todo_page.dart';
import 'package:new_todolist_flutter/pages/todo_write.dart';

class MyHomePage extends StatefulWidget {
  //MyHomePage({Key? key}) : super(key: key);
  const MyHomePage({super.key});

  @override
    State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int paginaAtual = 0;
  late PageController pc;

  @override
  void initState() {
    super.initState();
    pc = PageController(initialPage: paginaAtual);
  }

  setPaginaAtual(pagina) {
    setState(() {
      paginaAtual = pagina;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pc,
        children: [
          //Text(' Pagina 01'),
          //Text(' Pagina 01'),
          TodoPage(),
          MyCustomForm(),

        ],
        onPageChanged:  setPaginaAtual,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: paginaAtual,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Lista'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Escrever'),
        ],
        onTap: (pagina) {
          pc.animateToPage(pagina, duration: Duration(milliseconds: 300), curve: Curves.ease,);
        },
      ),
    );
  }


}