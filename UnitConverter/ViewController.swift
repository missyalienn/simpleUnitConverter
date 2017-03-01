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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tempValues.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let celciusValue = tempValues[row]
        return "\(celciusValue)°C"
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let degreesCelsius = tempValues[row]
        tempLabel.text = "\(converter.degreesFarenheit(degreesCelsius: degreesCelsius))°F"
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
