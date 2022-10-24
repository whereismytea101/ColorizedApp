//
//  SliderView.swift
//  ColorizedApp
//
//  Created by Самир Кафаров on 22.10.2022.
//

import SwiftUI

struct SliderView: View {
    
    @Binding var sliderValue: Double
    @State var textValue: String
    
    let colorSlider: Color
    
    var body: some View {
        HStack{
            Label(value: sliderValue)
            
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .onChange(of: sliderValue) { newValue in
                    textValue = "\(lround(newValue))"
                }
                .tint(colorSlider)
                
            TextFieldView(textValue: $textValue, value: $sliderValue)
                .onAppear {
                    textValue = ("\(lround(sliderValue))")
                }
            }
        }
    }

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(sliderValue: .constant(123), textValue: "", colorSlider: .red)
    }
}
