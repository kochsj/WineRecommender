//
//  ProfileButton.swift
//  WineRecommender
//
//  Created by Stephen Koch on 4/8/22.
//
import Foundation
import SwiftUI

//struct ProfileButton: View {
//
//    private let action: (() -> ())
//    private let profile: String
//
//
//    @State var buttonStyle = SelectableButtonStyle()
//
//    init(action: (() -> ())!, profile: String) {
//        self.action = action
//        self.profile = profile
//    }
//
//    var body: some View {
//
//        Button(action: {
//            self.buttonStyle.isSelected.toggle()
//            self.action()
//        }) {
//            Text(profile)
////                .frame(width:160)
//                .frame(minWidth: 160, maxWidth: 300, minHeight:50)
////                .overlay(RoundedRectangle(cornerRadius: 8)
////                    .stroke(self.buttonStyle.isSelected ? Color("border") : Color.clear, lineWidth: self.buttonStyle.isSelected ? 2 : 0)
////                )
//        }
//        .buttonStyle(buttonStyle)
//    }
//}
//
//struct SelectableButtonStyle: ButtonStyle {
//    var isSelected = false
//
//    func makeBody(configuration: Configuration) -> some View {
//        HStack {
//          Spacer()
//          configuration.label.foregroundColor(Color("text"))
//          Spacer()
//        }
////        .frame(width:160)
////        .frame(minHeight:50)
//        .frame(minWidth: 160, maxWidth: 300, minHeight:50)
//        .background(isSelected ? Color("background.button") : Color("background.button.unselected"))
//        .overlay(RoundedRectangle(cornerRadius: 8)
//            .stroke(self.isSelected ? Color("border") : Color.clear, lineWidth: self.isSelected ? 2 : 0)
//        )
//        .cornerRadius(8)
//        .scaleEffect(configuration.isPressed ? 0.95 : 1)
//    }
//}

struct ProfileButton: View {

    private let action: (() -> ())
    private let profile: String
    @State var isSelected: Bool

    init(action: (() -> ())!, profile: String, isSelected: Bool = false) {
        self.action = action
        self.profile = profile
        self.isSelected = isSelected
    }

    var body: some View {
        
        Button(action: {
            self.isSelected.toggle()
            self.action()
        }) {
            Text(profile)
                .frame(minWidth: 160, maxWidth: 300, minHeight:50)
        }
        .buttonStyle(SelectableButtonStyle(isSelected: self.isSelected))
    }
}

struct SelectableButtonStyle: ButtonStyle {
    var isSelected: Bool

    func makeBody(configuration: Configuration) -> some View {
        HStack {
          Spacer()
          configuration.label.foregroundColor(Color("text"))
          Spacer()
        }
        .frame(minWidth: 160, maxWidth: 300, minHeight:50)
        .background(isSelected ? Color("background.button") : Color("background.button.unselected"))
        .overlay(RoundedRectangle(cornerRadius: 8)
            .stroke(self.isSelected ? Color("border") : Color.clear, lineWidth: self.isSelected ? 2 : 0)
        )
        .cornerRadius(8)
        .scaleEffect(configuration.isPressed ? 0.95 : 1)
    }
}
