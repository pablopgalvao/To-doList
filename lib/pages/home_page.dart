import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../widgets/todo_item.dart';

class MyHomePage extends StatefulWidget{
  //final String title;
  //const MyHomePage)({super.key, required this.title});
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController taskController = TextEditingController();
  final GlobalKey<FormState>_formkey = GlobalKey<FormState>();
  final List<String> _tasks = []; 
  
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 35),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 1),
              child: const TextField(
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50)),),
                  hintText: 'Pesquisar...',
                  hintStyle: TextStyle(fontSize: 16),
                  suffixIcon: Icon(Icons.search),
                ),
              ),
            ),
            
            //const Text('O botão foi apertado esse numero de vezes'),
            Text('$_counter'),


           //const TodoItem(),

            Expanded(
            child: ListView.builder(
                itemCount: _tasks.length,
                itemBuilder: (context, index){
                  return Card(
                  child: ListTile(
                  title: Text(_tasks[index]),
                  ),
                  );
                },
              ),
            ),
            

          ],
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: idblue1,
        onPressed: _addList,
        tooltip: 'Escrever tarefa',
        child: const Icon(Icons.add,),
      ),
    );
       }
    void _addList(){

      //debugPrint('O botão foi apertado $_counter vezes.');
      //debugPrint(taskController.text);
      setState((){
        _counter++;
      });
  }
}