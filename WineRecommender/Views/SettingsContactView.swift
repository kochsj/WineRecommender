//
//  SettingsContactView.swift
//  WineRecommender
//
//  Created by Stephen Koch on 4/26/22.
//

import SwiftUI

struct ContactListModel: Hashable, Equatable, Identifiable {
    static func == (lhs: ContactListModel, rhs: ContactListModel) -> Bool {
        lhs.id == rhs.id
    }
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(left)
        hasher.combine(right)
    }
    
    let id = UUID()
    let left: String
    let right: String
}

struct SettingsContactView: View {
    let listOneTuples = [
        ("Developed by:", "Stephen Koch"),
        ("Date:", "April 2022"),
        ("Location:", "Seattle, WA")
    ].map(ContactListModel.init)
    let listTwoTuples = [
        ("Email:", "placeholder@gmail.com"),
        ("AppStore:", "placeholder@AppleAppStore"),
        ("GitHub:", "kochsj@github.com")
    ].map(ContactListModel.init)
    
    
    
    var body: some View {
        VScrollView {
            ZStack {
                Color("background").edgesIgnoringSafeArea(.all)
                
                
                
                VStack {
                    VStack {
                        Image("logo_opaque")
                            .resizable(resizingMode: .stretch)
                            .scaledToFit()
                            .clipShape(Circle())
                            .overlay {
                                Circle().stroke(.gray, lineWidth: 4)
                            }
                    }
                    .frame(maxHeight: 250)
                    .padding([.vertical], 20)
                    Text("wr.title.app".localized)
                        .font(.title)
                        .fontWeight(.heavy)
                    VStack {
                        VStack(spacing: 10) {
                            ForEach(Array(zip(listOneTuples.indices, listOneTuples)), id: \.0) {index, tuple in
                                HStack {
                                    Text(tuple.left)
                                    Spacer()
                                    Text(tuple.right)
                                }.listRowProxyStyle(isLast: index < (listOneTuples.count - 1) ? false : true)
                            }
                        }.padding([.vertical], 12.5)
                    }
                    .background(Color("background.container"))
                    .cornerRadius(10)
                    .padding([.horizontal], 20)

                    VStack {
                        VStack(spacing: 10) {
                            ForEach(Array(zip(listTwoTuples.indices, listTwoTuples)), id: \.0) {index, tuple in
                                HStack {
                                    Text(tuple.left)
                                    Spacer()
                                    Text(tuple.right)
                                }.listRowProxyStyle(isLast: index < (listTwoTuples.count - 1) ? false : true)
                            }
                        }.padding([.vertical], 12.5)
                    }
                    .background(Color("background.container"))
                    .cornerRadius(10)
                    .padding([.all], 20)
                    Spacer()

                } //VStack
                    
                
//
//
//
//                    List {
//                        Section()
//                        {
//                            Toggle (
//                                "Night Mode", isOn: $nightMode
//                            ).listRowBackground(Color("background.container"))
//                        }
//                        Section(header: Text(""))
//                        {
//                            ForEach(listOneTuples) { tuple in
//                                HStack {
//                                    Text(tuple.left)
//                                    Spacer()
//                                    Text(tuple.right)
//                                }.listRowBackground(Color("background.container"))
//                            }
//                        }
//                        Section()
//                        {
//                            ForEach(listTwoTuples) { tuple in
//                                HStack {
//                                    Text(tuple.left)
//                                    Spacer()
//                                    Text(tuple.right)
//                                }.listRowBackground(Color("background.container"))
//                            }
//                        }
//                    }
//                } // VStack
                
                
                
                
            }
        }.navigationTitle("Contact Me")
        
    }
}

//struct SettingsContactView_Previews: PreviewProvider {
//    static var previews: some View {
//        SettingsContactView()
//    }
//}
