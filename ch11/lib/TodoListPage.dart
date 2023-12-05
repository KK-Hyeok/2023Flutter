import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Todo.dart';

class TodoListPage extends StatefulWidget {
  const TodoListPage({super.key});

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  @override
  final _items = <ToDo>[];

  var _todoController = TextEditingController();

  void dispose(){
    _todoController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('남은 할 일'),
      backgroundColor: Colors.cyan,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: TextField(
                      controller: _todoController,
                    )
                ),
                ElevatedButton(
                    onPressed: () =>_addTodo(ToDO(_todoController.text)),
                    child: Text('추가'))
              ],
            ),
            Expanded(child: ListView(
              children: _items.map((todo) => _buildItemWidget(todo)).toList(),
            ))
          ],
        ),
      )
    );
  }
  Widget _buildItemWidget(ToDo todo){
    return ListTile(
      onTap: (){},
      title: Text(todo.title,
      style: todo.isDone ? TextStyle(
        decoration: TextDecoration.lineThrough,
        fontStyle: FontStyle.italic,
      ): null,
      ),
      trailing: IconButton(
        icon: Icon(Icons.delete_forever),
      onPressed: (){},
      ),
    );
  }
  
  void _addTodo(ToDo todo){
    setState(() {
      _items.add(todo);
      _todoController.text = '';
    });
  }
}
