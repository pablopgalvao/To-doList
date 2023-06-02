import 'package:flutter/material.dart';
import 'package:new_todolist_flutter/constants/colors.dart';

// Define a custom Form widget
class MyCustomForm extends StatefulWidget{
  const MyCustomForm({super.key});

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final TextEditingController taskController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final List<String> _tasks = [];
  //List<String> _tasks = List();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Pagina Todo Write'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
         // Container(
         // margin: EdgeInsets.only(bottom: 20),
          Form(
          key: _formKey,
            child: Row(
              children: [
              Expanded(
                child: TextFormField(
                  controller: taskController,
                  //decoration: InputDecoration(
                   // hintText: 'Texto',
                   // hintStyle: TextStyle(   
                 // ),  
           // ),
            //keyboardType:  TextInputType.text,
            validator:  (value) {
              if (value == null || value.isEmpty) {
                return 'Mensagem de Erro!!!';
              }
              return null;
            },
          ),
          ),
              ],
            ),
          ),
            Expanded(
              child:ListView.builder(
                itemCount: _tasks.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(_tasks[index]),
                    ),
                  );                
            },
          ),
         ),
         // Padding(
            //padding: const EdgeInsets.symmetric(vertical: 16.0),
            //child: ElevatedButton(
              //onPressed: () {
                //if (_formKey.currentState!.validate()) {
                    //ScaffoldMessenger.of(context).showSnackBar(
                      //const SnackBar(content: Text('Funciona!!!')),
                    //);
                    //debugPrint(taskController.text);
                    //setState(() {
                     // _tasks.add(taskController.text);  
                   // });
                    
                    //taskController.clear();
               // }
              //},
              //child: const Icon(Icons.add,),
            //),
         // ),

          
        ],
      ),
    ),

      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: idblue1,
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Teste')),
            );
            setState(() {
              _tasks.add(taskController.text);
            });
          }
        },
        tooltip: 'Escrever tarefa',
        child: const Icon(Icons.add,),
      ),
    );
  }
}