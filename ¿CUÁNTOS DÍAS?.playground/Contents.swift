import UIKit
import Foundation

var greeting = "Hello, playground"

func main () {
    
    printDaysBetween(firstDate: "mouredev", secondDate: "29/04/2022")
    printDaysBetween(firstDate: "18/5/2022", secondDate: "29/04/2022")
    printDaysBetween(firstDate: "18/05/2022", secondDate: "29/04/2022")
    printDaysBetween (firstDate: "31/01/2022", secondDate: "0101/2022")
    
    //print(subtractDays(firstDate: "18/05/2022", secondDate: "29/05/2022"))
    //print(subtractDays2(firstDate: "2017-08-06T19:20:42+0000", secondDate: "2020-08-06T19:20:46+0000"))
}

enum myErrors: Error {
    case firstError
    
    
}

private func printDaysBetween (firstDate: String, secondDate: String) {
    
    do {
        var dB = try daysBetween(firstDate: firstDate, secondDate: secondDate)
        print(dB)
        
    } catch myErrors.firstError {
        print("Error en el formato de alguna fecha")
        
    } catch {
        
    }
}


func daysBetween(firstDate: String, secondDate: String) throws -> Int {
    
    
    let formatter = DateFormatter()
    formatter.dateFormat = "dd/MM/yyyy"
    
    let pattern = "^([0-9]){2}[/]([0-9]){2}[/]([0-9]){4}$"
    let regex = try! Regex(pattern)
    
    var firstParsedDate = formatter.date(from: firstDate)
    var secondParsedDate = formatter.date(from: secondDate)
    var firstDate = firstDate.contains(regex)
    var secondDate = secondDate.contains(regex)
    if (firstParsedDate != nil
        && secondParsedDate != nil
        && firstDate
        && secondDate
    ) {
        
      
        return Int((firstParsedDate?.timeIntervalSince((secondParsedDate)!))! / 86400)
    }
    
    throw myErrors.firstError
}

main()



/*
private func subtractDays ( firstDate: String, secondDate: String) {
    
    let formatter = DateFormatter()
    formatter.dateFormat = "dd/MM/yyyy"
    
    var firstParsedDate = formatter.date(from: firstDate)!
    var secondParsedDate = formatter.date(from: secondDate)!
    
    let result = Calendar.current.dateComponents([.day], from: firstParsedDate, to: secondParsedDate)
   print(result)
}
*/

/*
private func subtractDays2 ( firstDate: String , secondDate: String) {
    
    var dateFormatter = ISO8601DateFormatter()
    var firstParsedDate = dateFormatter.date(from: firstDate)!
    var secondParsedDate = dateFormatter.date(from: secondDate)!
    
    let result = Calendar.current.dateComponents([.year, .month, .day], from: firstParsedDate, to: secondParsedDate)
    print(result)
}
*/
