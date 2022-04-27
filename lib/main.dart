import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: const Icon(Icons.arrow_back),
        automaticallyImplyLeading: true,
        //leading: const Icon(Icons.arrow_back),

        title: const Text("Proyecto Drawer"),
        centerTitle: true,

        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              print("soy edwin");
            },
          ),
          /*IconButton(
            icon: const Icon(
              Icons.add_card,
            ),
            onPressed: () {},
          ),*/
          IconButton(
            icon: const Icon(
              Icons.admin_panel_settings,
            ),
            onPressed: () {},
          )
        ],

        elevation: 8,
        shadowColor: Colors.black,
        backgroundColor: Colors.purple,
      ),
      body: ListView(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('assets/imagen.jpg'),
          Image.asset('assets/ganyu.png'),
          Image.asset('assets/yae.jpg'),
        ],
      ),
      drawer: Drawer(
        // Agrega un ListView al drawer. Esto asegura que el usuario pueda desplazarse
        // a través de las opciones en el Drawer si no hay suficiente espacio vertical
        // para adaptarse a todo.
        child: ListView(
          // Importante: elimina cualquier padding del ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'ENCABEZADO EPICO',
                style: const TextStyle(fontSize: 25),
              ),
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
            ),
            ListTile(
              title: const Text('Alumno 1 (Pepito)'),
              onTap: () {
                // Actualiza el estado de la aplicación
                // ...
                // Luego cierra el drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Alumno 2 (Marco)'),
              onTap: () {
                // // Actualiza el estado de la aplicación
                // ...
                // Luego cierra el drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Alumno 3 (mACAco de Lyffu)'),
              onTap: () {
                // Actualiza el estado de la aplicación
                // ...
                // Luego cierra el drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
