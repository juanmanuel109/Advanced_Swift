//private - Permite el acceso al código dentro de una definición de código.
//fileprivate - Permite que el archivo fuente de la definición acceda al código.
//internal - Permite que los archivos fuente del módulo definidor accedan al código.
//public - Permite que los archivos fuente de otros módulos accedan al código, sin embargo, otros módulos         no pueden subclasificar ni anular clases.
//open - Permite que los archivos fuente de otros módulos accedan al código. Otros módulos pueden      subclasificar y anular clases.
class Dish {
   private let name : String
   private var ingredients : [String]
    init(name: String, ingredients: [String]) {
        self.name = name
        self.ingredients = ingredients
    }
    func printInfo (){
        print(name)
        print(ingredients)
    }
}
final class AppetizerDish:Dish{
    override func printInfo() {
        print("Appetizer")
        super.printInfo()
    }
}
final class mainDish: Dish{
}

for _ in 0..<5{
    let dish : Dish
    let randomNumber = Int.random(in: 0...1)
    if randomNumber == 0 {
       dish = AppetizerDish(name: "Margherita Flatbread", ingredients: ["Margherita”, “Flatbread"])
    }
    
    else {
        dish = mainDish(name: "Super Spaghetti", ingredients: ["Spaghetti", "Tomato sauce"])
    }
    if let appetizerDish = dish as? AppetizerDish{
        appetizerDish.printInfo()
    }
    if dish is mainDish{
        print("main dish")
    }
}
