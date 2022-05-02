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
    let columnOneRowItems = [(AnyView(SettingsFormulaView()), "Our Formula"), (AnyView(SettingsDataView()), "Data Trends")].map(ViewTitleModel.init)
    let columnTwoRowItems = [(AnyView(SettingsThemeView()), "Theme"), (AnyView(SettingsRecommendationsView()), "Recommendations"), (AnyView(SettingsHelpView()), "Help"), (AnyView(SettingsContactView()), "Contact Me")].map(ViewTitleModel.init)

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
                        ForEach(columnOneRowItems) { tuple in
                            NavigationLink(destination: tuple.view) {
                                Text(tuple.title)
                            }.listRowBackground(Color("background.container"))
                        }
                    }
                    .frame(maxHeight: 125)
                    .padding([.top], -35)
                    List {
                        ForEach(columnTwoRowItems) { tuple in
                            NavigationLink(destination: tuple.view) {
                                Text(tuple.title)
                            }.listRowBackground(Color("background.container"))
                        }
                    }
                    .frame(maxHeight: 350)
                    .padding([.top], -35)
                    Spacer()
                }
                .padding([.top], 60)
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


