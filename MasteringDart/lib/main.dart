import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Este widget es la raíz de tu aplicación.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // Este es el tema de tu aplicación.
        //
        // PRUEBA: Ejecuta la aplicación con "flutter run". Verás que la
        // aplicación tiene una barra púrpura. Sin cerrar la app, cambia
        // seedColor en colorScheme a Colors.green e invoca "hot reload"
        // (guarda los cambios o pulsa el botón de hot reload en el IDE, o "r"
        // si iniciaste la app desde la línea de comandos).
        //
        // El contador no se reinicia a cero; el estado no se pierde en el
        // reload. Para reiniciar el estado, usa hot restart.
        //
        // Esto aplica también al código: la mayoría de cambios se pueden
        // probar con hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // Este widget es la página principal de tu aplicación. Es stateful: tiene
  // un objeto State (definido abajo) con campos que afectan su apariencia.

  // Esta clase es la configuración del estado. Guarda los valores (aquí el
  // título) que proporciona el padre (el widget App) y usa el método build
  // del State. Los campos en una subclase de Widget se marcan siempre "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // setState indica al framework Flutter que algo ha cambiado en este
      // State, por lo que se vuelve a ejecutar build y la UI refleja los
      // valores actualizados. Si cambiáramos _counter sin setState(), build
      // no se llamaría de nuevo y no se vería ningún cambio.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Este método se ejecuta de nuevo cada vez que se llama a setState (por
    // ejemplo desde _incrementCounter).
    //
    // Flutter está optimizado para que ejecutar build sea rápido y puedas
    // reconstruir lo que necesite actualizarse en lugar de cambiar widgets
    // uno a uno.
    return Scaffold(
      appBar: AppBar(
        // PRUEBA: Cambia aquí el color (por ejemplo a Colors.amber) y haz
        // hot reload para ver cómo cambia el AppBar.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Usamos el valor del MyHomePage creado por App.build como título.
        title: Text(widget.title),
      ),
      body: Center(
        // Center es un widget de layout: un solo hijo centrado en el padre.
        child: Column(
          // Column es un widget de layout: lista de hijos dispuestos en vertical.
          // Por defecto se ajusta al ancho de los hijos y a la altura del padre.
          //
          // mainAxisAlignment centra los hijos en el eje principal (vertical
          // en Column; el eje cruzado sería horizontal).
          //
          // PRUEBA: Activa "debug painting" en el IDE (o "p" en consola) para
          // ver el wireframe de cada widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
