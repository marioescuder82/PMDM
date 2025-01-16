# Snippets

Para añadir un Snippet, presionamos crtl + P y ejecutamos "Snippets: configure snippets". Luego, clickamos sobre dart.json

Añadimos los snippets que deseemos al final de este fichero.

## fl-screen

Snippet que crea una nueva pantalla con un Scaffold

```
"A new Flutter Screen with a Scaffold": {
	"prefix": "fl-screen",
	"body": [
		"import 'package:flutter/material.dart';",
		"",
		"class ${1:Home}Screen extends StatelessWidget {",
		"   ",
		"  const ${1:Home}Screen({Key? key}) : super(key: key);",
		"  ",
		"  @override",
		"  Widget build(BuildContext context) {",
		"    return const Scaffold(",
		"      body: Center(",
		"         child: Text('${1:Home}Screen'),",
		"      ),",
		"    );",
		"  }",
		"}"			
	],
	"description": "Crea una pantalla con un Scaffold"
}
```

