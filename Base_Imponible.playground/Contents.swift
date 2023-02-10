import UIKit

var greeting = "Hello, playground"


//Ejemplo Nº 1 YOJA 🖥🤓


//calculo de la base imponible del IVA

//fomula para calcular el IVA

/*
let moneyUsed:Double = 759.0
let impuesto = 21
let impuestoCalculo = (Double(impuesto) / 100) + 1
    
let baseImponible = moneyUsed / Double(impuestoCalculo)



let impuestoMonto = Double(moneyUsed) - baseImponible
let totalFactura = Double(baseImponible) + Double(impuestoMonto)

print("Impuesto \(impuesto)% \nBase imponible: \(baseImponible)€ \nimpuesto total: \(impuestoMonto)€ \nTotal Factura: \(totalFactura)€ ")

*/
func main () {
    
    factura(impuesto: 21, moneyUsed: 1500)
    
}


func factura (impuesto: Double, moneyUsed: Double)  {
    
    let impuestoCalculo = (Double(impuesto) / 100) + 1
    let baseImponible = moneyUsed / Double(impuestoCalculo)
    let impuestoMonto = Double(moneyUsed) - baseImponible
    let totalFactura = Double(baseImponible) + Double(impuestoMonto)
    print("Desgloce de su factura: \nImpuesto \(impuesto)% \nBase imponible: \(baseImponible)€ \nimpuesto total: \(impuestoMonto)€ \nTotal Factura: \(totalFactura)€ ")
    
}


main()


