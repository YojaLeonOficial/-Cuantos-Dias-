import UIKit

var greeting = "Hello, playground"


let urlString = "https://raw.githubusercontent.com/mouredev/mouredev/master/mouredev_github_profile.png"
func aspectRatio(url: String) {
    
    var aspectRationStr: String? = ""
    
    let url = URL(string: urlString)
    let data = try? Data(contentsOf: url!) //make sure your image in this url does exist, otherwise unwrap in a if let check / try-catch
    
    let imagen = UIImage(data: data!)
    let imageWidth = imagen!.size.width
    let imageHeigth = imagen!.size.height
    
    let aspectRatio = Double(imageWidth) /  Double(imageHeigth)
    let aspectRatioConstan = 1
    aspectRationStr = "\(aspectRatio):\(aspectRatioConstan)"
    
    if aspectRationStr != nil {
        print("El aspect ratio es \(aspectRationStr!)")
    } else {
    print("No se ha podido calcular el aspect ratio")
    }
}


aspectRatio(url: urlString)
