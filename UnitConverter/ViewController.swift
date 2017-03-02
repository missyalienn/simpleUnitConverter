/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    //the map function iterates over each value in the range, the $0 referes to the value passed to the closure
    private let tempValues = (-40...100).map { $0 }
    private let converter = UnitConverter()
    
    @IBOutlet weak var tempLabel: UILabel!
    
    @IBOutlet weak var celsiusPicker: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.insertGreenGradient()
        let defaultPickerRow =
            celsiusPicker.numberOfRows(inComponent: 0) / 2
        pickerView(celsiusPicker, didSelectRow: defaultPickerRow, inComponent: 0)
    
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tempValues.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        //let celciusValue = tempValues[row]
        //return "\(celciusValue)°C"
        
        let fahrenheitValue = tempValues[row]
        return "\(fahrenheitValue)°F"
        
        
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
       // let degreesCelsius = tempValues[row]
        //tempLabel.text = "\(converter.degreesFarenheit(degreesCelsius: degreesCelsius))°F"
       let degreesF = tempValues[row]
        tempLabel.text = "\(converter.convertToCelsius(degreesF: degreesF))°C"
        
    }
}


//        the loop counts from -100 to 100, appending each
//        value of index to tempalues array.
//        the for-in loop iterates over the range of numbers -100 through 100,
//        assigning each value to index during each repetition of loop.
//
//        for index in -100...100 {
//               tempValues.append(index)
//            }



extension UIView {
    
    func insertGreenGradient() {
    let gradientBlue = UIColor(red:0.48, green:0.86, blue:0.89, alpha:1.0).cgColor
    let gradientYellow = UIColor(red:1.00, green:0.88, blue:0.33, alpha:1.0).cgColor
    let gradientGreen = UIColor(red:0.60, green:0.88, blue:0.29, alpha:1.0).cgColor
    let gradient = CAGradientLayer()
    gradient.colors = [gradientBlue, gradientYellow, gradientGreen]
    gradient.startPoint = CGPoint(x: 1, y: 0)
    gradient.endPoint = CGPoint(x: 0, y: 1)
    gradient.frame = UIScreen.main.bounds
    self.layer.insertSublayer(gradient, at: 0)
        
    }
    
    
}
