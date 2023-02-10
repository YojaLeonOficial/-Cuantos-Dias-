import UIKit

var greeting = "Hello, playground"


/*
 * Reto #4
 * ÁREA DE UN POLÍGONO
 * Fecha publicación enunciado: 24/01/22
 * Fecha publicación resolución: 31/01/22
 * Dificultad: FÁCIL
 *
 * Enunciado: Crea UNA ÚNICA FUNCIÓN (importante que sólo sea una) que sea capaz de calcular y retornar el área de un polígono.
 * - La función recibirá por parámetro sólo UN polígono a la vez.
 * - Los polígonos soportados serán Triángulo, Cuadrado y Rectángulo.
 * - Imprime el cálculo del área de un polígono de cada tipo.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la acomunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */

// perimetro = la suma de todos sus lados
// area de cualquier poligono regular = base * altura / 2
// area de un rentangulo = base * altura


func main () {
    
    let cuadrado = Cuadrado(side: 2.0)
    let triangulo = Triangulo(alto: 10.0, ancho: 5.0)
    let rectangulo = Rectangulo(alto: 3.0, ancho: 8.0)
    calculosFinales(polygon: cuadrado)
    calculosFinales(polygon: triangulo)
    calculosFinales(polygon: rectangulo)
    
    
}

main()

class Polygon {
    
    var area = 0.0
    
    func areaCalculo() {
    }
    func printArea() {
    }
}

class Triangulo: Polygon {
    
    var alto: Double
    var ancho: Double
    
    init(alto: Double, ancho: Double) {
        self.alto = alto
        self.ancho = ancho
    }
    
    override func areaCalculo() {
        area = (alto * ancho) / 2
       
    }
    
    override func printArea() {
        print("El area del Triangulo es \(area)")
    }
    
}

class Cuadrado: Polygon {
    
    var side: Double
    
    
    init(side: Double) {
        self.side = side
        
    }
    
    override func areaCalculo() {
       area = side * side
    }
    
    override func printArea() {
        print("El area del Cuadrado es \(area)")
    }
    
}


class Rectangulo: Polygon {
    
    var alto: Double
    var ancho: Double
    
    init(alto: Double, ancho: Double) {
        self.alto = alto
        self.ancho = ancho
    }
    
    override func areaCalculo() {
       area = (alto * ancho) / 2
    }
    
    override func printArea() {
        print("El area del Rectangulo es \(area)")
    }
    
}


private func calculosFinales(polygon: Polygon) {
    polygon.areaCalculo()
    polygon.printArea()
}
