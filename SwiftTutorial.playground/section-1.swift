class TipCalculator {
    let total: Double
    let taxPct: Double
    let subtotal: Double
    
    init(total:Double, taxPct:Double){
        self.total = total
        self.taxPct = taxPct
        subtotal = total / (taxPct + 1)
    }
    
    func calcTipWithTipPct(tipPct:Double) -> Double {
        return subtotal * tipPct
    }
    
    func printPossibleTips() {
        let possibleTipPcts = [0.15, 0.18, 0.20]
        
        for i in 0..<possibleTipPcts.count {
            let tipOption = possibleTipPcts[i]
            println("\(tipOption*100)%: \(calcTipWithTipPct(tipOption))")
        }
    }
}

let tipCalc = TipCalculator(total:33.25, taxPct: 0.06)
tipCalc.printPossibleTips()




