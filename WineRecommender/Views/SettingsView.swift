//
//  SettingsView.swift
//  WineRecommender
//
//  Created by Stephen Koch on 4/1/22.
//

import SwiftUI

struct ViewTitleModel: Hashable, Equatable, Identifiable {
    static func == (lhs: ViewTitleModel, rhs: ViewTitleModel) -> Bool {
        lhs.id == rhs.id
    }
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(title)
    }
    
    let id = UUID()
    let view: AnyView
    let title: String
}

struct SettingsView: View {
    @EnvironmentObject var user: User
    @State var isPopupShowing: Bool = false
    @State private var showLanguagePopUp: Bool = false
    @State private var showExplainationPopUp: Bool = false
    @State private var isFirstRecieve: Bool = true
    @State private var explainationMessage: String = "wr.view.home.explainationlanguage".localized
    
//    @AppStorage("nightMode") private var nightMode: Bool = false
    @AppStorage("skipLoadingScreen") private var skipLoadingScreen: Bool = false
    @AppStorage("textEntryEnabled") private var textEntryEnabled: Bool = false
    @AppStorage("moreOptionsEnabled") private var moreOptionsEnabled: Bool = true
    @AppStorage("textSize") private var textSize: TextSize = .small
    @AppStorage("usingTextSize") private var usingTextSize: Bool = false
    @AppStorage("colorScheme") private var wrColorScheme: WRColorScheme = .wrDark
    @AppStorage("language") private var language: Language = .english
    
//    let listOneTuples = [(AnyView(SettingsFormulaView()), "Our Formula"), (AnyView(SettingsDataView()), "Data Trends")].map(ViewTitleModel.init)
//    let listTwoTuples = [(AnyView(SettingsThemeView()), "Theme"), (AnyView(SettingsRecommendationsView()), "Recommendations"), (AnyView(SettingsHelpView()), "Help"), (AnyView(SettingsContactView()), "Contact Me")].map(ViewTitleModel.init)
    let listTuples = [(AnyView(SettingsFormulaView()), "About"), (AnyView(SettingsDataView()), "Data"), (AnyView(SettingsHelpView()), "Help"), (AnyView(SettingsContactView()), "Contact Me")].map(ViewTitleModel.init)
    
    let languages: [String] = ["english", "español", "русский","français", "deutsch"]

    func handleLanguageSelection(language: String) -> Void {
        print("newLanguage: \(language)")
        showExplainationPopUp = true
        explainationMessage = LanguageSelectionPopup.changeLanguage(msg: language)
    }
    

    var body: some View {
        VScrollView {
            ZStack {
                Color("background").edgesIgnoringSafeArea(.all)
                VStack(alignment: .leading) {
                    Text("Settings")
                        .font(.title)
                        .fontWeight(.heavy)
                        .padding([.leading], 20)
                        .padding([.bottom], -5)
                    List {
//                        Section(header: Text("More Information"))
                        
                        Section(header: Text("More Information".uppercased()).font(.headline))
                        {
                            
                            ForEach(listTuples) { tuple in
                                NavigationLink(destination: tuple.view) {
                                    Text(tuple.title)
                                }.listRowBackground(Color("background.container"))
                            }
                        }
                        Section(header: Text("Accessibility".uppercased()).font(.headline))
                        {
//                            Toggle (
//                                "Night Mode", isOn: $nightMode
//                            ).listRowBackground(Color("background.container"))
                            HStack {
                                Text("Alternate Color Scheme")
                                Spacer()
                                Menu {
                                    Picker(selection: $wrColorScheme) {
                                        Text("System").tag(WRColorScheme.system)
                                        Text("Light").tag(WRColorScheme.wrLight)
                                        Text("Dark").tag(WRColorScheme.wrDark)
                                    } label: {}
                                } label: {
                                    Text(wrColorScheme.toString()).fontWeight(.semibold)
                                }
                            }.listRowBackground(Color("background.container"))
                            Toggle (
                                "Alternate Text Size", isOn: $usingTextSize
                            ).listRowBackground(Color("background.container")) 
                            HStack {
                                Text("Text Size")
                                    .opacity(!usingTextSize ? 0.35 : 1.0)
                                Spacer()
                                Menu {
                                    Picker(selection: $textSize) {
                                        Text("Small").tag(TextSize.small)
                                        Text("Medium").tag(TextSize.medium)
                                        Text("Large").tag(TextSize.large)
                                        Text("XLarge").tag(TextSize.xlarge)
                                    } label: {}
                                } label: {
                                    Text(textSize.rawValue.capitalized).fontWeight(.semibold)
                                }.disabled(!usingTextSize)
                            }.listRowBackground(Color("background.container"))
                            
                            HStack {
                                Text("Language")
                                Spacer()
                                Menu {
                                    Picker(selection: $language) {
                                        ForEach(languages, id:\.self) { language in
                                            Text(language.capitalized).tag(Language(lang: language)!)
                                            
                                        }
                                    } label: {}
                                        .onReceive([self.language].publisher.first()) { value in
                                            if isFirstRecieve {
                                                isFirstRecieve = false
                                            } else {
                                                handleLanguageSelection(language: value.rawValue)
                                            }
                                            
                                         }
                                } label: {
                                    Text(language.rawValue.capitalized).fontWeight(.semibold)
                                }
                            }.listRowBackground(Color("background.container"))
                            
                            
                        }
                        Section(header: Text("Recommendations".uppercased()).font(.headline))
                        {
                            Toggle (
                                "Skip loading screen", isOn: $skipLoadingScreen
                            ).listRowBackground(Color("background.container"))
                            Toggle (
                                "Text entry option", isOn: $textEntryEnabled
                            ).listRowBackground(Color("background.container"))
                            Toggle (
                                "More wine profile options", isOn: $moreOptionsEnabled
                            ).listRowBackground(Color("background.container"))
                            Button {
                                isPopupShowing = true
                            } label: {
                                Text("Remove saved recommendations")
                            }
                            .accentColor(.red)
                            .listRowBackground(Color("background.container"))
                        }
                    }
                    
                }
                .padding([.top], 40)

                DeletePopupView(user: user, isDeleteAllView: true, show: $isPopupShowing)
                
                LanguageExplaination(title: "wr.title.language".localized, buttonText: "OK", explainationShow: $showExplainationPopUp, explainationMessage: $explainationMessage)
            }
            
        }
        
        .hiddenNavigationBarStyle()
        .toolbar {
            WRToolbar()
        }
    }
    
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}



