import UIKit
import Foundation

var greeting = "Hello, playground"

// MAP()
// tomará cada valor en la matriz y lo ejecutará

let numbers = [1, 2, 3, 4, 5]
let doubled = numbers.map { $0 * 2 }

let wizards = ["Harry", "Hermione", "Ron"]
let uppercased = wizards.map { $0.uppercased() }

// map()es capaz de devolver un tipo diferente del que se usó originalmente. Entonces, esto convertirá nuestra matriz de enteros en una matriz de cadenas:
let numbersDos = [1, 2, 3, 4, 5]
let strings = numbers.map { String($0) }

// convertir una cadena en un entero devuelve un entero opcional.
let maybeNumbers = strings.map { Int($0) }

// COMPACTMAP()
// realiza una transformación (la parte del "mapa" ), pero luego desenvuelve todas las opciones y descarta las que son nil.

//Por ejemplo, si tiene UIViewy desea leer todas las subvistas que son vistas de imágenes, puede escribir esto:

let imageViews = view.subviews.compactMap { $0 as? UIImageView }

// O si tiene una serie de cadenas y desea saber cuáles son URL válidas, puede escribir esto:

let urls = urlStrings.compactMap { URL(string: $0) }

// RESUMEN map() y compactmap()
//Entonces, nuevamente: map()tomará un valor de su contenedor, lo transformará usando el código que especifique y luego lo volverá a colocar en su contenedor. compactMap()hace lo mismo, pero si su transformación devuelve un opcional, se desenvolverá y con nil descartarán los valores.


//Mapa opcional (): transformar solo si tenemos un valor
/*Si lo piensas bien, los opcionales son similares a los arreglos: también son un contenedor con algo dentro. Cuando miramos dentro del contenedor opcional (cuando desenvolvemos el opcional), encontramos un valor o encontramos nil.

Esto significa que el map()método también existe en opcionales: sacar el valor de su contenedor (una opción), transformarlo con un cierre que proporcionamos y luego volver a colocarlo en el contenedor (otra opción). Si el opcional estaba vacío, map()automáticamente no hace nada: envía de vuelta nil.

Para ilustrar esto, imagine que tenemos un getUser()método que acepta un número entero y devuelve el nombre de usuario con esa ID, si existe. Si no existe, envía back nil, por lo que este método devolverá una cadena opcional.

Podemos usar map()para leer el valor que se devolvió y transformarlo:*/

let name: String? = getUser(id: 97)
let greeting = name.map { “Hi, \($0)” }
print(greeting ?? “Unknown user”)
/*
Por lo tanto, si namecontiene una cadena, map()la sacará de la opción, la transformará para que sea "Hola", luego el nombre, la volverá a colocar en una opción y luego la enviará de vuelta para que se almacene en greeting.

Poner el valor de nuevo en un opcional nos permite mantener la situación de "tal vez tiene un valor, tal vez no" por más tiempo para que el código posterior pueda decidir qué significa eso. En este caso, la print()función imprimirá un saludo o imprimirá "Usuario desconocido": puede decidir, en lugar de que nosotros obliguemos a "Usuario desconocido" antes.
*/

// FLATMAP()
/*
Los opcionales opcionales son profundamente confusos para trabajar, pero aquí es donde flatMap()interviene: también realiza una transformación (la parte del "mapa" de su nombre), pero luego aplana lo que regresa para que "opcional opcional" simplemente se convierta en "opcional".

Es decir, o existe todo o no existe nada: reduce las opciones dobles a opciones simples. En última instancia, no nos importa si existe la opción externa o interna, solo si hay un valor dentro o no, por lo que flatMap()es tan útil.

Como resultado, este código se configurará resultpara ser Int?en lugar de Int??:
*/
let number: String? = getUser(id: 97)
let result = number.flatMap { Int($0) }
