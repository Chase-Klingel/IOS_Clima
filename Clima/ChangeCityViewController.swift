//
//  ChangeCityViewController.swift
//  WeatherApp
//
//  Created by Angela Yu on 23/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit


/*
  "if you want to be the delegate, you have to be able
  to implement the method userEnteredANewCityName"
*/
protocol ChangeCityDelegate {
    func userEnteredANewCityName(city: String)
}

class ChangeCityViewController: UIViewController {
    
    /*
      1. var delegate is of data type "ChangeCityDelegate" and it is an optional.
      2. The role of the delegate can be "filled"
         "filled" = there is a view controller that delcares itself as the delegate
      3. The role of the delegate can be "unfilled"
         "unfilled" = the value of this delegate will be nil.
    */
    var delegate : ChangeCityDelegate?
    
    @IBOutlet weak var changeCityTextField: UITextField!

    @IBAction func getWeatherPressed(_ sender: AnyObject) {
        //1 Get the city name the user entered in the text field
        let selectedCity = changeCityTextField.text!
        
        //2 If we have a delegate set, call the method userEnteredANewCityName
        delegate?.userEnteredANewCityName(city: selectedCity)

        //3 dismiss the Change City View Controller to go back to the WeatherViewController
        self.dismiss(animated: true, completion: nil)
        
    }
    
    

    //This is the IBAction that gets called when the user taps the back button. It dismisses the ChangeCityViewController.
    @IBAction func backButtonPressed(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
