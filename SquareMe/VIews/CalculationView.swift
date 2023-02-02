//
//  CalculationView.swift
//  SquareMe
//
//  Created by Tom Wu on 2023-02-02.
//

import SwiftUI

struct CalculationView: View {
    
    //MARK: Stored properties
    @State var inputGiven = ""
    
    //MARK: Computed properties
    //convert the input given to an optional double
    var inputGivenAsOptionalDouble: Double?{
        guard let inputGivenAsDouble = Double(inputGiven)else{
            return nil
        }
        return inputGivenAsDouble
    }
    
    var body: some View {
        NavigationView{
            VStack{
                TextField("5.5", text: $inputGiven)
                    .font(.largeTitle)
                    .padding()
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
