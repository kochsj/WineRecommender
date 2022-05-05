//
//  LanguageSelectionPopup.swift
//  WineRecommender
//
//  Created by Stephen Koch on 3/23/22.
//

import Foundation
import SwiftUI



struct LanguageSelectionPopup: View {
    
    var title: String
    var messages: [String]
    var buttonText: String
    @Binding var show: Bool
    @Binding var explainationShow: Bool
    @State var explainationMessage = "wr.view.home.explainationlanguage".localized
    @AppStorage("language") private var language: Language = .english
    
    static func changeLanguage(msg:String) -> String {
        let localeCodes = [["en"], ["es"],["de"],["ru"],["fr"]]
        let target: [String]!
        let explainations = [
            "For the changes to take effect, please manually close and restart the application.",
            "Para que los cambios surtan efecto, cierre y reinicie manualmente la aplicación.",
            "Damit die Änderungen wirksam werden, schließen Sie die Anwendung bitte manuell und starten Sie sie neu.",
            "Чтобы изменения вступили в силу, закройте и перезапустите приложение вручную.",
            "Pour que les modifications prennent effet, veuillez fermer et redémarrer manuellement l'application."
        ]
        
        var result = 0
        
        switch msg {
            case "español":
                target = localeCodes[1]
                result = 1
            case "deutsch":
                target = localeCodes[2]
                result = 2
            case "русский":
                target = localeCodes[3]
                result = 3
            case "français":
                target = localeCodes[4]
                result = 4
            default:
                target = localeCodes[0]
        }
        
        UserDefaults.standard.set(target, forKey: "AppleLanguages")
        
        return explainations[result]
    }

    var body: some View {
        ZStack {
            if show {
                // PopUp background color
                Color("background").opacity(show ? 0.3 : 0).edgesIgnoringSafeArea(.all)

                // PopUp Window
                VStack {
                    VStack(alignment: .center, spacing: 0) {
                        Text(title)
                            .font(.title)
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity)
                            .frame(maxHeight: 54, alignment: .center)
                            .padding(10)
    //                        .font(Font.system(size: 23, weight: .semibold))
                            .foregroundColor(Color("text"))
                            .background(Color("background.button.next"))
                        VStack(alignment: .center) {
                            ForEach(messages, id: \.self) { message in
                                Button(action: {
                                    withAnimation(.linear(duration: 0.3)) {
                                        show = false
                                        explainationShow = true
                                        explainationMessage = LanguageSelectionPopup.changeLanguage(msg: message)
                                        language = Language(lang: message)!
                                    }
                                }, label: {
                                    Text(message)
                                        .fontWeight(.semibold)
                                        .frame(maxWidth: .infinity)
                                        .frame(maxHeight: 54, alignment: .center)
                                        .padding(10)
                                        .foregroundColor(Color("text"))
                                        .background(Color("background.container"))
    //                                    .font(Font.system(size: 16, weight: .semibold))
                                }).buttonStyle(PlainButtonStyle())
                                Divider()
                            }
                            
                        }
                        
                        Button(action: {
                            // Dismiss the PopUp
                            withAnimation(.linear(duration: 0.3)) {
                                show = false
                            }
                        }, label: {
                            Text(buttonText)
                                .font(.title)
                                .fontWeight(.semibold)
                                .frame(maxWidth: .infinity)
                                .frame(maxHeight: 54, alignment: .center)
                                .padding(10)
                                .foregroundColor(Color("text"))
                                .background(Color("background.button.next"))
    //                            .font(Font.system(size: 23, weight: .semibold))
                        }).buttonStyle(PlainButtonStyle())
                    }
                    .frame(maxWidth: 600)
                    .border(Color.white, width: 2)
                    .background(Color("background.container"))
                }.padding([.horizontal], 20)
            }
//            if explainationShow {
//                // PopUp background color
//                Color("background").opacity(show ? 0.3 : 0).edgesIgnoringSafeArea(.all)
//
//                // PopUp Window
//                VStack {
//                    VStack(alignment: .center, spacing: 0) {
//                        Text(title)
//                            .font(.title)
//                            .fontWeight(.semibold)
//                            .frame(maxWidth: .infinity)
//                            .frame(maxHeight: 54, alignment: .center)
//                            .padding(10)
//                            .foregroundColor(Color("text"))
//                            .background(Color("background.button.next"))
//
//                        VStack {
//                            Text(explainationMessage)
//                                .fontWeight(.semibold)
//                                .multilineTextAlignment(.center)
//                                .padding(EdgeInsets(top: 20, leading: 25, bottom: 20, trailing: 25))
//                                .foregroundColor(Color("text"))
//                        }.frame(minHeight:200)
//                        Button(action: {
//                            // Dismiss the PopUp
//                            withAnimation(.linear(duration: 0.3)) {
//                                explainationShow = false
//                            }
//                        }, label: {
//                            Text(buttonText)
//                                .font(.title)
//                                .fontWeight(.semibold)
//                                .frame(maxWidth: .infinity)
//                                .frame(maxHeight: 54, alignment: .center)
//                                .padding(10)
//                                .foregroundColor(Color("text"))
//                                .background(Color("background.button.next"))
//    //                            .font(Font.system(size: 23, weight: .semibold))
//                        }).buttonStyle(PlainButtonStyle())
//                    }
//                    .frame(maxWidth: 600)
//                    .border(Color.white, width: 2)
//                    .background(Color("background.container"))
//                }.padding([.horizontal], 20)
//            }
        }
        if explainationShow {
            LanguageExplaination(title: title, buttonText: buttonText, explainationShow: $explainationShow, explainationMessage: $explainationMessage)
        }
    }
}
