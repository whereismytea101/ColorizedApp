//
//  ContentView.swift
//  ColorizedApp
//
//  Created by Самир Кафаров on 22.10.2022.
//

import SwiftUI

struct ContentView: View {
    
    @FocusState var isInputActive: Bool
    @State var sliderRedValue = Double.random(in: 0...255)
    @State var sliderGreenValue = Double.random(in: 0...255)
    @State var sliderBlueValue = Double.random(in: 0...255)
    
        var body: some View {
            ZStack {
                
                VStack(spacing: 50) {
                ColorView(redColor: sliderRedValue, greenColor: sliderGreenValue, blueColor: sliderBlueValue)
                    
                    VStack(spacing: 20){
                        SliderView(sliderValue: $sliderRedValue, textValue: String(sliderRedValue),
                                   colorSlider: .red)
                            .focused($isInputActive)
                        SliderView(sliderValue: $sliderGreenValue, textValue: String(sliderGreenValue),
                                   colorSlider: .green)
                            .focused($isInputActive)
                        SliderView(sliderValue: $sliderBlueValue, textValue: String(sliderBlueValue),
                                   colorSlider: .blue)
                            .focused($isInputActive)
                    }
                    Spacer()
                }
            .padding()
                .keyboardType(.numberPad)
                .toolbar(content: {
                    ToolbarItemGroup(placement: .keyboard) {
                        Spacer()
                        Button("OK") {
                            isInputActive = false
                        }
                    }
                })
            }
        }
    }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
