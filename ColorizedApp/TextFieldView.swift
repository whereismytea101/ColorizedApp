//
//  TextField.swift
//  ColorizedApp
//
//  Created by Самир Кафаров on 22.10.2022.
//

import SwiftUI

struct TextFieldView: View {
    
   @State private var textFieldValue = ""
    
    @Binding var textValue: String
    @Binding var value: Double
    
    @State var showAlert = false
    
    var body: some View {
        
        TextField("255", text: $textFieldValue) { _ in
            checkValue()
        }
                .frame(width: 45, height: 30)
                .background(Color.black.brightness(0.9))
                .cornerRadius(10)
                .multilineTextAlignment(.center)
    }
    
    
    
    private func checkValue() {
        if let value = Int(textValue), (0...255).contains(value) {
            self.value = Double(value)
        } else {
            showAlert.toggle()
            self.value = 0
            self.textValue = "0"
        }
    }
}

struct TextField_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(textValue: .constant("0"), value: .constant(0))
    }
}
