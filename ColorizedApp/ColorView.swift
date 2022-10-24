//
//  ColorView.swift
//  ColorizedApp
//
//  Created by Самир Кафаров on 23.10.2022.
//

import SwiftUI

struct ColorView: View {
    
    let redColor: Double
    let greenColor: Double
    let blueColor: Double
    
    var body: some View {
        Rectangle()
            .frame(width: 350, height: 150)
            .cornerRadius(20)
            .foregroundColor(Color(red: redColor/255,
                                   green: greenColor/255,
                                   blue: blueColor/255))
            .overlay(RoundedRectangle(cornerRadius: 20).stroke(.gray, lineWidth: 5))
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(redColor: 200, greenColor: 12, blueColor: 255)
    }
}
