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
    @AppStorage("nightMode") private var nightMode: Bool = false
    @AppStorage("skipLoadingScreen") private var skipLoadingScreen: Bool = false
    @AppStorage("textEntryEnabled") private var textEntryEnabled: Bool = false
    @AppStorage("moreOptionsEnabled") private var moreOptionsEnabled: Bool = false
    @AppStorage("textSize") private var textSize: TextSize = .small
    @AppStorage("colorScheme") private var colorScheme: ColorScheme = .standard
    @AppStorage("language") private var language: Language = .english
    
//    let listOneTuples = [(AnyView(SettingsFormulaView()), "Our Formula"), (AnyView(SettingsDataView()), "Data Trends")].map(ViewTitleModel.init)
//    let listTwoTuples = [(AnyView(SettingsThemeView()), "Theme"), (AnyView(SettingsRecommendationsView()), "Recommendations"), (AnyView(SettingsHelpView()), "Help"), (AnyView(SettingsContactView()), "Contact Me")].map(ViewTitleModel.init)
    let listTuples = [(AnyView(SettingsFormulaView()), "Our Formula"), (AnyView(SettingsDataView()), "Data Trends"), (AnyView(SettingsHelpView()), "Help"), (AnyView(SettingsContactView()), "Contact Me")].map(ViewTitleModel.init)

    
    

    var body: some View {
        VScrollView {
            ZStack {
                Color("background").edgesIgnoringSafeArea(.all)
                VStack(alignment: .leading) {
                    Text("Settings")
                        .font(.title)
                        .fontWeight(.heavy)
                        .padding([.leading], 20)
                    List {
                        Section(header: Text("More Information"))
                        {
                            ForEach(listTuples) { tuple in
                                NavigationLink(destination: tuple.view) {
                                    Text(tuple.title)
                                }.listRowBackground(Color("background.container"))
                            }
                        }
                        Section(header: Text("Accessibility"))
                        {
                            Toggle (
                                "Night Mode", isOn: $nightMode
                            ).listRowBackground(Color("background.container"))
                            
                            HStack {
                                Text("Text Size")
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
                                }
                            }.listRowBackground(Color("background.container"))
                            
                            HStack {
                                Text("Language")
                                Spacer()
                                Menu {
                                    Picker(selection: $language) {
                                        Text("English").tag(Language.english)
                                        Text("Spanish").tag(Language.spanish)
                                        Text("German").tag(Language.german)
                                        Text("Russian").tag(Language.russian)
                                        Text("French").tag(Language.french)
                                    } label: {}
                                } label: {
                                    Text(language.rawValue.capitalized).fontWeight(.semibold)
                                }
                            }.listRowBackground(Color("background.container"))
                            
                            HStack {
                                Text("Alternate Color Scheme")
                                Spacer()
                                Menu {
                                    Picker(selection: $colorScheme) {
                                        Text("Standard").tag(ColorScheme.standard)
                                        Text("Cool").tag(ColorScheme.cool)
                                        Text("Warm").tag(ColorScheme.warm)
                                    } label: {}
                                } label: {
                                    Text(colorScheme.rawValue.capitalized).fontWeight(.semibold)
                                }
                            }.listRowBackground(Color("background.container"))
                        }
                        Section(header: Text("Recommendations"))
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
                .padding([.top], 60)

                DeletePopupView(user: user, isDeleteAllView: true, show: $isPopupShowing)

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


