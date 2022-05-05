//
//  ViewModifiers.swift
//  WineRecommender
//
//  Created by Stephen Koch on 2/2/22.
//

import Foundation
import SwiftUI

struct HiddenNavigationBar: ViewModifier {
    @State var isHidden: Bool = false
    func body(content: Content) -> some View {
        content
        .navigationBarTitle("", displayMode: .inline)
        .navigationBarHidden(isHidden)
        .statusBar(hidden: isHidden)
        .onAppear {self.isHidden = true}
    }
}
struct ListRowProxy: ViewModifier {
    var isLast: Bool
    
    func body(content: Content) -> some View {
        VStack {
            content
        }
        .padding([.horizontal], 20)
        if !isLast {
            Divider()
                .background(Color("text"))
//                .padding([.leading], 20)
                .padding(EdgeInsets(top: 2.5, leading: 20, bottom: 2.5, trailing: 0))
        }
    }
}

//struct ContentContainer: ViewModifier {
//    let height: [CGFloat]
//    let width: [CGFloat]
//
//    func body(content: Content) -> some View {
//        content
//            .frame(minWidth: width[0], idealWidth: width[1], maxWidth: width[2], minHeight: height[0], idealHeight: height[1], maxHeight: height[2], alignment: .center)
//            .multilineTextAlignment(.center)
//            .background(Color("background.container"))
//            .border(Color("border"))
//            .padding()
//            .foregroundColor(Color("text"))
//    }
//}
struct VScrollView<Content>: View where Content: View {
  @ViewBuilder let content: Content
  
  var body: some View {
    GeometryReader { geometry in
      ScrollView(.vertical) {
        content
          .frame(width: geometry.size.width)
          .frame(minHeight: geometry.size.height)
      }
    }
  }
}

struct ContentContainer: ViewModifier {
    let edgeInsets: EdgeInsets // DEFAULT: EdgeInsets(top: 50, leading: 25, bottom: 50, trailing: 25)
    
    func body(content: Content) -> some View {
        VStack {
            content
                .padding(edgeInsets)
        }
        .frame(minWidth: 200, idealWidth: 350, maxWidth: 600, alignment: .center)
//        .multilineTextAlignment(.center)
        .background(Color("background.container"))
        .border(Color("border"))
        .foregroundColor(Color("text"))
        .padding([.top, .leading, .trailing], 15)
    }
}

struct QuestionText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: 300)
            .multilineTextAlignment(.center)
            .padding(EdgeInsets(top: 15, leading: 15, bottom: 40, trailing: 15))
    }
}

struct PrimaryButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(minWidth: 180, minHeight: 50, alignment: .center)
            .padding([.all], 10)
            .background(Color("background.button.unselected"))
            .foregroundColor(Color("text"))
            .cornerRadius(10)
    }
}

struct SecondaryButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(minWidth: 180, minHeight: 50, alignment: .center)
            .padding([.all], 10)
            .background(Color("background.button"))
            .cornerRadius(10)
            .foregroundColor(Color("text"))
    }
}

struct NextButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(minWidth: 200, idealWidth: 350, maxWidth: 350, minHeight: 60, idealHeight: 60, maxHeight: 60, alignment: .center)
            .background(Color("background.button.next"))
            .overlay(RoundedRectangle(cornerRadius: 8)
                .stroke(Color("border"), lineWidth: 2)
            )
            .foregroundColor(Color("text"))
//            .cornerRadius(8)
    }
}

struct Centered: ViewModifier {
    func body(content: Content) -> some View {
        content
            .multilineTextAlignment(.center)
            .frame(alignment: .center)
    }
}

struct WineSelectionBubble: ViewModifier {
    func body(content: Content) -> some View {
        content
            .multilineTextAlignment(.center)
            .frame(maxWidth: 400, maxHeight: .infinity)
            .padding(EdgeInsets(top: 2, leading: 5, bottom: 2, trailing: 5))
            .font(.subheadline)
    }
}

struct TextContainerColor: ViewModifier {
    let color: Color
    func body(content: Content) -> some View {
        content
            .background(color)
            .cornerRadius(10)
    }
}

struct YesNoButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity, minHeight: 50, alignment: .center)
            .background(Color("background.button.unselected"))
            .foregroundColor(Color("text"))
            .cornerRadius(20)
    }
}

struct GrapeSelectionButton: ViewModifier {
    func body(content:Content) -> some View {
        content
//            .frame(width: 100, height: 40, alignment: .center)
            .frame(minWidth: 100, minHeight: 40, alignment: .center)
            .background(Color("background.button.unselected"))
//            .foregroundColor(Color.black)
            .foregroundColor(Color("text"))
            .cornerRadius(20)
    }
}

class AppThemeViewModel: ObservableObject {
    
//    @AppStorage("isDarkMode") var isDarkMode: Bool = true
//    @AppStorage("nightMode") var nightMode: Bool = false
    @AppStorage("colorScheme") var wrColorScheme: WRColorScheme = .wrDark
    @AppStorage("appTintColor") var appTintColor: String = "AccentColor"
    
}

struct DarkModeViewModifier: ViewModifier {
    @ObservedObject var appThemeViewModel: AppThemeViewModel = AppThemeViewModel()
    
    public func body(content: Content) -> some View {
        content
            .preferredColorScheme(appThemeViewModel.wrColorScheme == .wrDark ? .dark : appThemeViewModel.wrColorScheme == .wrLight ? .light : nil)
            .accentColor(Color(appThemeViewModel.appTintColor))
    }
}

extension View {
    func hiddenNavigationBarStyle() -> some View {
        modifier( HiddenNavigationBar() )
    }
    func applyAppTheme() -> some View {
        modifier(DarkModeViewModifier())
    }
    func primaryButtonStyle() -> some View {
        modifier(PrimaryButton())
    }
    func secondaryButtonStyle() -> some View {
        modifier(SecondaryButton())
    }
    func nextButtonStyle() -> some View {
        modifier(NextButton())
    }
    func center() -> some View {
        modifier(Centered())
    }
    func wineSelectionBubbleStyle() -> some View {
        modifier(WineSelectionBubble())
    }
    func listRowProxyStyle(isLast: Bool = false) -> some View {
        modifier(ListRowProxy(isLast: isLast))
    }
//    func contentContainerStyle(height: [CGFloat], width: [CGFloat] = [250,350,400], edgeInsets: EdgeInsets = EdgeInsets(top: 50, leading: 25, bottom: 50, trailing: 25)) -> some View {
//        modifier(ContentContainer(height: height, width: width, edgeInsets: edgeInsets))
//    }
    func contentContainerStyle(edgeInsets: EdgeInsets = EdgeInsets(top: 50, leading: 25, bottom: 50, trailing: 25)) -> some View {
        modifier(ContentContainer(edgeInsets: edgeInsets))
    }
    func textContainerColorStyle(color: Color) -> some View {
        modifier(TextContainerColor(color: color))
    }
    func questionTextView() -> some View {
        modifier(QuestionText())
    }
    func yesNoButtonStyle() -> some View {
        modifier(YesNoButton())
    }
    func grapeSelectionButton() -> some View {
        modifier(GrapeSelectionButton())
    }
}
