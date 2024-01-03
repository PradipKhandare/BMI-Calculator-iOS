

import UIKit

struct CalculatorBrain
{
    
    var bmi : BMI?
    mutating func calculateBMI(height: Float, weight: Float)
    {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: UIColor.blue)
      
        }else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "fit as fiddle", color: UIColor.red)
            
        } else {
            bmi = BMI(value: bmiValue, advice: "follow the diet plan ", color: UIColor.green)
            
        }
        //bmi = BMI(value: <#T##Float#>, advice: <#T##String#>, color: <#T##UIColor#>)
    }
    
    func getAdvice() -> String
    {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor
    {
        return bmi?.color ?? UIColor.white
    }
    
    func getBMIValue() -> String
    {
       
        let bmiToOneDecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
            return bmiToOneDecimalPlace
        
        
    }
    
    
}
