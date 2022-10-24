//
//  Labels.swift
//  ColorizedApp
//
//  Created by Самир Кафаров on 23.10.2022.
//

import SwiftUI

struct Label: View {
    
    let value: Double
    
    var body: some View {
        Text("\(lround(value))")
            .frame(width: 45, height: 30)
            .background(Color.gray.brightness(0.2))
            .cornerRadius(10)

    }
}

struct Labels_Previews: PreviewProvider {
    static var previews: some View {
        Label(value: 255)
    }
}
