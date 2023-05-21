import 'package:flutter/material.dart';

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
            //Text('$_counter'),   


            //FORMULÁRIO - INICIO
            Container(
              key: _formkey,
                child: TextFormField(
                  controller: taskController,
                  style: const TextStyle(
                    fontSize: 32,
                    color: Colors.amber
                  ),
                  decoration: const InputDecoration(
                    hintText: 'Digite uma Tarefa...',
                    hintStyle: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  keyboardType: TextInputType.text,
                  validator: (value){
                    if (value != null && value.isEmpty){
                    //if (value != null && value.length > 1){
                      return 'Por favor preencha o campo';
                    }
                    return null;
                  },
                ),
            ),


              ElevatedButton(
                onPressed: (){
                  //if(_formkey.currentState.validate()){
                    setState(() {
                      _tasks.add(taskController.text);  
                    });
                    taskController.clear();
                    debugPrint(taskController.text);
                    //}
                },
                child:  const Text('Next'),
              ),

              // FORMULÁRIO - FIM

            Expanded(
            child: ListView.builder(
                itemCount:  _tasks.length,
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
        onPressed: _addList,
        tooltip: 'Escrever tarefa',
        child: const Icon(Icons.add),
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