//
//  CalculationView.swift
//  SquareMe
//
//  Created by Tom Wu on 2023-02-02.
//

import SwiftUI

struct CalculationView: View {
    
    //MARK: Stored properties
    //step1
    @State var inputGiven = ""
    
    //MARK: Computed properties
    //step2
    //convert the input given to an optional double
    var inputGivenAsOptionalDouble: Double?{
        guard let inputGivenAsDouble = Double(inputGiven)else{
            return nil
        }
        return inputGivenAsDouble
    }
    //step3
    //get a non optional value
    var formattedOutPutValue: String{
        //see if we have a number to work with
        guard let numberToSquare = inputGivenAsOptionalDouble else{
            return "Please enter a numeric value(eg. 5.0)"
        }
        let squareNumber = numberToSquare * numberToSquare
    //step4
        return squareNumber.formatted(.number.precision(.fractionLength(1)))
    }
    
    var body: some View {
        NavigationView{
            VStack{
                TextField("5.5", text: $inputGiven)
                    .font(.largeTitle)
                    .padding()
                
                Text(formattedOutPutValue)
                    .font(.largeTitle)
            }
            .navigationTitle("Square Me")
        }
    }
}

struct CalculationView_Previews: PreviewProvider {
    static var previews: some View {
        CalculationView()
    }
}
