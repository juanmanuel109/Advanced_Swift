protocol GoodChef {
    func cookGoodFood()
}
protocol GreatChef {
    func cookGreatFood()
}
protocol ExcellentChef {
    func cookExcellentFood()
}
protocol bss: GoodChef, GreatChef, ExcellentChef{
    func cook()
}
class person : bss {
    func cookGoodFood() {
        
    }
    func cookGreatFood() {
        
    }
    func cookExcellentFood() {
        
    }
    func cook() {
    }
}
