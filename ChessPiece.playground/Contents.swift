import UIKit

var greeting = "Hello, playground"


//se utilizan en una clase para hacer comprobaciones que ya se tienen definidas como valiores de un "enum" y cuando necesitamos comprobacioners mas exahutiva es cuando se usan los tipos anidados, que son agrupaciones de "enum" con funciones muy concretas

struct ChessPiece {
    
    let color: Color
    let type: PieceType
    
    enum Color: String {
    case white = "Blanca", black = "Negra"
    }
    
    enum PieceType: String {
    case king = "Rey", queen = "Reina", rock = "Torre", bishop = "Alfil", knight = "Caballo", pawn = "Peon"
        struct Values {
            let values: Int
            
        }
        var values: Values {
            // "self" hace referenciial contesto donde lo estamos ejecutando
            switch self {
            case .king:
                return Values(values:1)
            case .queen:
                return Values(values:1)
            case .rock:
                return Values(values:2)
            case .bishop:
                return Values(values:2)
            case .knight:
                return Values(values:2)
            case .pawn:
                return Values(values:8)
            }
        }
    }
    
    var description: String{
        if type.values.values == 8{
            return "Hay \(type.values.values) pieza de ajedrez de color \(color.rawValue) y de tipo \(type.rawValue)"
        }
        return "Hay \(type.values.values) piezas de ajedrez de color \(color.rawValue) y de tipo \(type.rawValue)"
    }
}

let myPiece = ChessPiece(color: .black, type: .rock)
print(myPiece.description)
