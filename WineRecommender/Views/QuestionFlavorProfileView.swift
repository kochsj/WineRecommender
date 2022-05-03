//
//  QuestionFlavorProfile.swift
//  WineRecommender
//
//  Created by Stephen Koch on 4/1/22.
//

import SwiftUI

struct QuestionFlavorProfileView: View {
    
    let bodyProfile: [String] = ["thin", "mellow", "light", "round", "bold", "complex", "delicate", "dense", "savory", "hollow", "short", "angular", "austere", "closed", "tight", "firm", "concentrated", "opulent", "rich"]
    let styleProfile: [String] = ["smoky", "musky", "accessible", "delicate","earthy", "ripe", "leathery", "clean", "polished", "refined", "jammy", "toasty", "nutty", "buttery", "dry"]
    let tanninProfile: [String] = ["bitter","powerful", "rigid", "muscular", "mellow", "grippy", "coarse", "structured", "chewy", "silky", "velvety", "supple"]
    let acidityProfile: [String] = ["bright", "astringent", "lean", "racy", "nerve", "lively", "tart", "edgy", "zippy", "zesty", "crisp", "flat"]
    let spiceProfile: [String] = ["spicy", "caramel", "dill", "pepper", "anise", "cinnamon", "nutmeg", "sage", "eucalyptus", "saffron", "ginger", "tobacco", "vanilla", "clove", "chocolate"]
    let fruitProfile: [String] = ["ripe", "red fruit", "grapey", "cassis", "plum", "berry", "citrus", "stone fruit", "tropical", "melon", "apple", "black fruit", "coconut", "strawberry", "raspberry", "cherry", "blueberry", "blackberry", "lime", "lemon", "orange", "grapefruit", "apricot", "nectarine", "peach", "banana", "pineapple", "lychee"]
    let flowerProfile: [String] = ["violet", "white flowers", "citrus blossom", "lavender", "rose", "perfumed"]
    let otherProfile: [String] = ["minerality", "charcoal", "stemmy", "creamy", "oily", "legs", "grassy", "long finish"]

    @EnvironmentObject var modelManager: FirebaseModelManager
    @EnvironmentObject var user: User
    @State var showCode: Int = 0
    @State var selections: [String] = []
    @State var isActive: Bool = false
    @State var recommendation: Recommendation = Recommendation(wines: [""])
    @State var title: String = "Body"
    
    func handleSelection(selection: String) -> Void {
        let index = selections.firstIndex(of: selection)
        if index == nil {
            selections.append(selection)
        } else {
            selections.remove(at: index!)
        }
    }
    func handleProfileButtonCreation(profile: String) -> ProfileButton {
        // When screen is rotated, the view is redrawn. This accounts for redrawing buttons that have been selected already.
        let idx = selections.firstIndex(of: profile)
        
        if idx == nil {
            return ProfileButton(action: {
                print("\(selections.count). \(profile)")
                handleSelection(selection: profile)
            }, profile: profile)
        } else {
            return ProfileButton(action: {
                print("\(selections.count). \(profile)")
                handleSelection(selection: profile)
            }, profile: profile, isSelected: true)
        }
    }

    var body: some View {
        VScrollView {
            ZStack {
                Color("background").edgesIgnoringSafeArea(.all)
//                HStack {
//                    Spacer()
//                }
//                Spacer()
                VStack {
                    switch showCode {
                    // Style Profile
                    case 1:
                        VStack {
                            WrappingHStack(styleProfile) { profile in
                                handleProfileButtonCreation(profile: profile)
                            }.frame(minWidth: 400)
                                .padding()
                            Button(action: {
                                print("My Selections: \(selections)")
                                showCode = 2
                                title = "Tannin"
                            }) {
                                Text("Next (Tannin)")
                                    .nextButtonStyle()
                            }.cornerRadius(8)
                        }
                        
                    // Tannin Profile
                    case 2:
                        VStack {
                            WrappingHStack(tanninProfile) { profile in
                                handleProfileButtonCreation(profile: profile)
                            }.frame(minWidth: 400)
                                .padding()
                            Button(action: {
                                print("My Selections: \(selections)")
                                showCode = 3
                                title = "Acidity"
                            }) {
                                Text("Next (Acidity)")
                                    .nextButtonStyle()
                            }.cornerRadius(8)
                        }
                        
                    // Acidity Profile
                    case 3:
                        VStack {
                            WrappingHStack(acidityProfile) { profile in
                                handleProfileButtonCreation(profile: profile)
                            }.frame(minWidth: 400)
                                .padding()
                            Button(action: {
                                print("My Selections: \(selections)")
                                showCode = 4
                                title = "Spice"
                            }) {
                                Text("Next (Spice)")
                                    .nextButtonStyle()
                            }.cornerRadius(8)
                        }
                    // Spice Profile
                    case 4:
                        VStack {
                            WrappingHStack(spiceProfile) { profile in
                                handleProfileButtonCreation(profile: profile)
                            }.frame(minWidth: 400)
                                .padding()
                            Button(action: {
                                print("My Selections: \(selections)")
                                showCode = 5
                                title = "Fruit"
                            }) {
                                Text("Next (Fruit)")
                                    .nextButtonStyle()
                            }.cornerRadius(8)
                        }
                    // Fruit Profile
                    case 5:
                        VStack {
                            WrappingHStack(fruitProfile) { profile in
                                handleProfileButtonCreation(profile: profile)
                            }.frame(minWidth: 400)
                                .padding()
                            Button(action: {
                                print("My Selections: \(selections)")
                                showCode = 6
                                title = "Flower"
                            }) {
                                Text("Next (Flower)")
                                    .nextButtonStyle()
                            }.cornerRadius(8)
                        }
                    // Flower Profile
                    case 6:
                        VStack {
                            WrappingHStack(flowerProfile) { profile in
                                handleProfileButtonCreation(profile: profile)
                            }.frame(minWidth: 400)
                                .padding()
                            Button(action: {
                                print("My Selections: \(selections)")
                                showCode = 7
                                title = "Other"
                            }) {
                                Text("Next (Other)")
                                    .nextButtonStyle()
                            }.cornerRadius(8)
                        }
                    // Other Profile
                    case 7:
                        VStack {
                            WrappingHStack(otherProfile) { profile in
                                handleProfileButtonCreation(profile: profile)
                            }.frame(minWidth: 400)
                                .padding()
                            Button(action: {
                                self.recommendation = modelManager.predictionFromString(selections: selections)
                                self.recommendation.setSelections(stringArray: selections)
                                user.addRecommendation(recommendation: self.recommendation)
                                showCode = 8
                                title = ""
                            }) {
                                Text("Continue")
                                    .nextButtonStyle()
                            }.cornerRadius(8)
                        }

                    case 8:
                        // Have an animation that makes it look like the ML model is churning through the data
                        // Delay showing the Submit button
                        Spacer()
                        VStack {
                            TurboTaxer()
                            NavigationLink(destination: SavedRecommendationDetailView(recommendation: self.recommendation, starred: false).navigationBarBackButtonHidden(true), isActive: $isActive) {EmptyView()}
                        }
                        .navigationBarBackButtonHidden(true)
                        .onAppear {
//                            print("appeared.")
                            DispatchQueue.main.asyncAfter(deadline: .now() + 12.5) {
                                self.isActive = true
                            }
                        }
                        
                    // Body Profile
                    default:
                        VStack {
                            WrappingHStack(bodyProfile) { profile in
                                handleProfileButtonCreation(profile: profile)
                            }.frame(minWidth: 400)
                                .padding()
                            Button(action: {
                                print("My Selections: \(selections)")
                                showCode = 1
                                title = "Style"
                            }) {
                                Text("Next (Style)")
                                    .nextButtonStyle()
                            }.cornerRadius(8)
                        }
                    } // Switch Statement
                    Spacer()
                } // VStack
            } // ZStack
        } // VScrollView
        .navigationBarTitle(title)
        .onAppear() {
            modelManager.downloadModel()
        }

    }
//    @Binding var explainationShow: Bool
    
    // Cannot dynamically create inside HStacks
//    let bodyProfile: [String] = ["thin", "mellow", "light", "round", "bold", "complex", "delicate", "dense", "savory", "hollow", "short", "angular", "austere", "closed", "tight", "firm", "concentrated", "opulent", "rich" ]
//    let styleProfile: [String] = ["smoky", "musky", "accessible", "delicate","earthy", "ripe", "leathery", "clean", "polished", "refined", "jammy", "toasty", "nutty", "buttery", "dry"]
//    let tanninProfile: [String] = ["bitter","powerful", "rigid", "muscular", "mellow", "grippy", "coarse", "structured", "chewy", "silky", "velvety", "supple"]
//    let acidityProfile: [String] = ["bright", "astringent", "lean", "racy", "nerve", "lively", "tart", "edgy", "zippy", "zesty", "crisp", "flat"]
//    let spiceProfile: [String] = ["spicy", "caramel", "dill", "pepper", "anise", "cinnamon", "nutmeg", "sage", "eucalyptus", "saffron", "ginger", "tobacco", "vanilla", "clove", "chocolate"]
//    let fruitProfile: [String] = ["ripe", "red fruit", "grapey", "cassis", "plum", "berry", "citrus", "stone fruit", "tropical", "melon", "apple", "black fruit", "coconut", "strawberry", "raspberry", "cherry", "blueberry", "blackberry", "lime", "lemon", "orange", "grapefruit", "apricot", "nectarine", "peach", "banana", "pineapple", "lychee"]
//    let flowerProfile: [String] = ["violet", "white flowers", "citrus blossom", "lavender", "rose", "perfumed"]
//    let otherProfile: [String] = ["minerality", "charcoal", "stemmy", "creamy", "oily", "legs", "grassy", "long finish"]
//    @EnvironmentObject var modelManager: FirebaseModelManager
//    @EnvironmentObject var user: User
//    @State var showCode: Int = 0
//    @State var selections: [String] = []
//    @State var isActive: Bool = false
//    @State var recommendation: Recommendation = Recommendation(wines: [""])
//    @State var title: String = "Body"
//
//
//    func profileButton(profile: String) -> some View {
//        return Button(profile) {
//                    print("\(selections.count). \(profile)")
//                    handleSelection(selection: profile)
//                }.buttonStyle(RoundedRectangleButtonStyle())
//    }
//
//    func emptySpace(topBottom: CGFloat, leftRight: CGFloat) -> some View {
//        return Button("") {}
//            .background(Color.clear)
//            .frame(width: 160)
//            .padding(EdgeInsets(top: topBottom, leading: leftRight, bottom: topBottom, trailing: leftRight))
//    }
//
//    var body: some View {
//        ZStack {
//            Color("background").edgesIgnoringSafeArea(.all)
//            ScrollView {
//                HStack {
//                    Spacer()
//                }
//                Spacer()
//                switch showCode {
//                // Style Profile
//                case 1:
//                    VStack {
//                        Text("Style").padding().font(.title)
//                        emptySpace(topBottom: 0, leftRight: 0)
//                        HStack {
//                            profileButton(profile: "smoky")
//                            Divider()
//                            profileButton(profile: "musky")
//                        }
//                        HStack {
//                            profileButton(profile: "accessible")
//                            Divider()
//                            profileButton(profile: "delicate")
//                        }
//                        HStack {
//                            profileButton(profile: "earthy")
//                            Divider()
//                            profileButton(profile: "ripe")
//                        }
//                        HStack {
//                            profileButton(profile: "leathery")
//                            Divider()
//                            profileButton(profile: "clean")
//                        }
//                        HStack {
//                            profileButton(profile: "polished")
//                            Divider()
//                            profileButton(profile: "refined")
//                        }
//                        HStack {
//                            profileButton(profile: "jammy")
//                            Divider()
//                            profileButton(profile: "toasty")
//                        }
//                    }
//                    VStack {
//                        HStack {
//                            profileButton(profile: "nutty")
//                            Divider()
//                            profileButton(profile: "buttery")
//                        }
//                        HStack {
//                            profileButton(profile: "dry")
//                            Divider()
//                            emptySpace(topBottom: 10, leftRight: 15)
//                        }.padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 0))
//                        emptySpace(topBottom: 5, leftRight: 0)
//                        Button(action: {
//                            print("My Selections: \(selections)")
//                            showCode = 2
//                            title = "Tannin"
//                        }) {
//                            Text("Next (Tannin)")
//                                .nextButtonStyle()
//                                .contentShape(Rectangle())
//                        }
//                        emptySpace(topBottom: 10, leftRight: 0)
//                    }
//
//                // Tannin Profile
//                case 2:
//                    VStack {
//                        Text("Tannin").padding().font(.title)
//                        emptySpace(topBottom: 0, leftRight: 0)
//                        HStack {
//                            profileButton(profile: "bitter")
//                            Divider()
//                            profileButton(profile: "powerful")
//                        }
//                        HStack {
//                            profileButton(profile: "rigid")
//                            Divider()
//                            profileButton(profile: "muscular")
//                        }
//                        HStack {
//                            profileButton(profile: "mellow")
//                            Divider()
//                            profileButton(profile: "grippy")
//                        }
//                        HStack {
//                            profileButton(profile: "coarse")
//                            Divider()
//                            profileButton(profile: "structured")
//                        }
//                        HStack {
//                            profileButton(profile: "chewy")
//                            Divider()
//                            profileButton(profile: "silky")
//                        }
//                        HStack {
//                            profileButton(profile: "velvety")
//                            Divider()
//                            profileButton(profile: "supple")
//                        }
//                    }
//                    VStack {
//                        emptySpace(topBottom: 5, leftRight: 0)
//                        Button(action: {
//                            print("My Selections: \(selections)")
//                            showCode = 3
//                            title = "Acidity"
//                        }) {
//                            Text("Next (Acidity)")
//                                .nextButtonStyle()
//                                .contentShape(Rectangle())
//                        }
//                        emptySpace(topBottom: 10, leftRight: 0)
//                    }
//                // Acidity Profile
//                case 3:
//                    VStack {
//                        Text("Acidity").padding().font(.title)
//                        emptySpace(topBottom: 0, leftRight: 0)
//                        HStack {
//                            profileButton(profile: "bright")
//                            Divider()
//                            profileButton(profile: "astringent")
//                        }
//                        HStack {
//                            profileButton(profile: "lean")
//                            Divider()
//                            profileButton(profile: "racy")
//                        }
//                        HStack {
//                            profileButton(profile: "nerve")
//                            Divider()
//                            profileButton(profile: "lively")
//                        }
//                        HStack {
//                            profileButton(profile: "tart")
//                            Divider()
//                            profileButton(profile: "edgy")
//                        }
//                        HStack {
//                            profileButton(profile: "zippy")
//                            Divider()
//                            profileButton(profile: "zesty")
//                        }
//                        HStack {
//                            profileButton(profile: "crisp")
//                            Divider()
//                            profileButton(profile: "flat")
//                        }
//                    }
//                    VStack {
//                        emptySpace(topBottom: 5, leftRight: 0)
//                        Button(action: {
//                            print("My Selections: \(selections)")
//                            showCode = 4
//                            title = "Spice"
//                        }) {
//                            Text("Next (Spice)")
//                                .nextButtonStyle()
//                                .contentShape(Rectangle())
//                        }
//                        emptySpace(topBottom: 10, leftRight: 0)
//                    }
//                // Spice Profile
//                case 4:
//                    VStack {
//                        Text("Spice").padding().font(.title)
//                        emptySpace(topBottom: 0, leftRight: 0)
//                        HStack {
//                            profileButton(profile: "spicy")
//                            Divider()
//                            profileButton(profile: "caramel")
//                        }
//                        HStack {
//                            profileButton(profile: "dill")
//                            Divider()
//                            profileButton(profile: "pepper")
//                        }
//                        HStack {
//                            profileButton(profile: "anise")
//                            Divider()
//                            profileButton(profile: "cinnamon")
//                        }
//                        HStack {
//                            profileButton(profile: "nutmeg")
//                            Divider()
//                            profileButton(profile: "sage")
//                        }
//                        HStack {
//                            profileButton(profile: "eucalyptus")
//                            Divider()
//                            profileButton(profile: "saffron")
//                        }
//                        HStack {
//                            profileButton(profile: "ginger")
//                            Divider()
//                            profileButton(profile: "tobacco")
//                        }
//                    }
//                    VStack {
//                        HStack {
//                            profileButton(profile: "vanilla")
//                            Divider()
//                            profileButton(profile: "clove")
//                        }
//                        HStack {
//                            profileButton(profile: "chocolate")
//                            Divider()
//                            emptySpace(topBottom: 10, leftRight: 15)
//                        }.padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 0))
//                        emptySpace(topBottom: 5, leftRight: 0)
//                        Button(action: {
//                            print("My Selections: \(selections)")
//                            showCode = 5
//                            title = "Fruit"
//                        }) {
//                            Text("Next (Fruit)")
//                                .nextButtonStyle()
//                                .contentShape(Rectangle())
//                        }
//                        emptySpace(topBottom: 10, leftRight: 0)
//                    }
//                // Fruit Profile
//                case 5:
//                    VStack {
//                        Text("Fruit").padding().font(.title)
//                        emptySpace(topBottom: 0, leftRight: 0)
//                        HStack {
//                            profileButton(profile: "ripe")
//                            Divider()
//                            profileButton(profile: "red fruit")
//                        }
//                        HStack {
//                            profileButton(profile: "grapey")
//                            Divider()
//                            profileButton(profile: "cassis")
//                        }
//                        HStack {
//                            profileButton(profile: "plum")
//                            Divider()
//                            profileButton(profile: "berry")
//                        }
//                        HStack {
//                            profileButton(profile: "citrus")
//                            Divider()
//                            profileButton(profile: "stone fruit")
//                        }
//                        HStack {
//                            profileButton(profile: "tropical")
//                            Divider()
//                            profileButton(profile: "melon")
//                        }
//                        HStack {
//                            profileButton(profile: "apple")
//                            Divider()
//                            profileButton(profile: "black fruit")
//                        }
//                        HStack {
//                            profileButton(profile: "coconut")
//                            Divider()
//                            profileButton(profile: "strawberry")
//                        }
//                    }
//                    VStack {
//                        HStack {
//                            profileButton(profile: "raspberry")
//                            Divider()
//                            profileButton(profile: "cherry")
//                        }
//                        HStack {
//                            profileButton(profile: "blueberry")
//                            Divider()
//                            profileButton(profile: "blackberry")
//                        }
//                        HStack {
//                            profileButton(profile: "lime")
//                            Divider()
//                            profileButton(profile: "lemon")
//                        }
//                        HStack {
//                            profileButton(profile: "orange")
//                            Divider()
//                            profileButton(profile: "grapefruit")
//                        }
//                        HStack {
//                            profileButton(profile: "apricot")
//                            Divider()
//                            profileButton(profile: "nectarine")
//                        }
//                        HStack {
//                            profileButton(profile: "peach")
//                            Divider()
//                            profileButton(profile: "banana")
//                        }
//                        HStack {
//                            profileButton(profile: "pineapple")
//                            Divider()
//                            profileButton(profile: "lychee")
//                        }
//                        emptySpace(topBottom: 5, leftRight: 0)
//                        Button(action: {
//                            print("My Selections: \(selections)")
//                            showCode = 6
//                            title = "Flower"
//                        }) {
//                            Text("Next (Flower)")
//                                .nextButtonStyle()
//                                .contentShape(Rectangle())
//                        }
//                        emptySpace(topBottom: 10, leftRight: 0)
//                    }
//                // Flower Profile
//                case 6:
//                    VStack {
//                        Text("Flower").padding().font(.title)
//                        emptySpace(topBottom: 0, leftRight: 0)
//                        HStack {
//                            profileButton(profile: "violet")
//                            Divider()
//                            profileButton(profile: "white flowers")
//                        }
//                        HStack {
//                            profileButton(profile: "citrus blossom")
//                            Divider()
//                            profileButton(profile: "lavender")
//                        }
//                        HStack {
//                            profileButton(profile: "rose")
//                            Divider()
//                            profileButton(profile: "perfumed")
//                        }
//                        emptySpace(topBottom: 5, leftRight: 0)
//                        Button(action: {
//                            print("My Selections: \(selections)")
//                            showCode = 7
//                            title = "Other"
//                        }) {
//                            Text("Next (Other)")
//                                .nextButtonStyle()
//                                .contentShape(Rectangle())
//                        }
//                        emptySpace(topBottom: 10, leftRight: 0)
//                    }
//                // Other Profile
//                case 7:
//                    VStack {
//                        Text("Other").padding().font(.title)
//                        emptySpace(topBottom: 0, leftRight: 0)
//                        HStack {
//                            profileButton(profile: "minerality")
//                            Divider()
//                            profileButton(profile: "charcoal")
//                        }
//                        HStack {
//                            profileButton(profile: "stemmy")
//                            Divider()
//                            profileButton(profile: "creamy")
//                        }
//                        HStack {
//                            profileButton(profile: "oily")
//                            Divider()
//                            profileButton(profile: "legs")
//                        }
//                        HStack {
//                            profileButton(profile: "grassy")
//                            Divider()
//                            profileButton(profile: "long finish")
//                        }
//                        emptySpace(topBottom: 5, leftRight: 0)
//                        Button(action: {
//                            self.recommendation = modelManager.predictionFromString(selections: selections)
//                            self.recommendation.setSelections(stringArray: selections)
//                            user.addRecommendation(recommendation: self.recommendation)
//                            showCode = 8
//                            title = ""
//                        }) {
//                            Text("Continue")
//                                .nextButtonStyle()
//                                .contentShape(Rectangle())
//                        }
//
//                        emptySpace(topBottom: 10, leftRight: 0)
//                    }
//                case 8:
//                    // Have an animation that makes it look like the ML model is churning through the data
//                    // Delay showing the Submit button
//                    VStack {
//                        TextCarousel()
//                        NavigationLink(destination: SavedRecommendationDetailView(recommendation: self.recommendation).navigationBarBackButtonHidden(true), isActive: $isActive) {EmptyView()}
//                    }
//                    .navigationBarBackButtonHidden(true)
//                    .onAppear {
//                        DispatchQueue.main.asyncAfter(deadline: .now() + 8) {
//                            self.isActive = true
//                        }
//                    }
//
//                // Body Profile
//                default:
//                    VStack {
//                        Text("Body").padding().font(.title)
//                        emptySpace(topBottom: 0, leftRight: 0)
//                        HStack {
//                            profileButton(profile: "thin")
//                            Divider()
//                            profileButton(profile: "mellow")
//                        }.padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 30))
//                        HStack {
//                            profileButton(profile: "light")
//                            Divider()
//                            profileButton(profile: "round")
//                        }.padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 30))
//                        HStack {
//                            profileButton(profile: "bold")
//                            Divider()
//                            profileButton(profile: "complex")
//                        }.padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 30))
//                        HStack {
//                            profileButton(profile: "delicate")
//                            Divider()
//                            profileButton(profile: "dense")
//                        }.padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 30))
//                        HStack {
//                            profileButton(profile: "savory")
//                            Divider()
//                            profileButton(profile: "hollow")
//                        }.padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 30))
//                        HStack {
//                            profileButton(profile: "short")
//                            Divider()
//                            profileButton(profile: "angular")
//                        }.padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 30))
//                    }
//                    VStack {
//                        HStack {
//                            profileButton(profile: "austere")
//                            Divider()
//                            profileButton(profile: "closed")
//                        }.padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 30))
//                        HStack {
//                            profileButton(profile: "tight")
//                            Divider()
//                            profileButton(profile: "firm")
//                        }.padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 30))
//                        HStack {
//                            profileButton(profile: "concentrated")
//                            Divider()
//                            profileButton(profile: "opulent")
//                        }.padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 30))
//                        HStack {
//                            profileButton(profile: "rich")
//                            Divider()
//                            emptySpace(topBottom: 10, leftRight: 15)
//                        }.padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 0))
//                        emptySpace(topBottom: 5, leftRight: 0)
//                        Button(action: {
//                            print("My Selections: \(selections)")
//                            showCode = 1
//                            title = "Style"
//                        }) {
//                            Text("Next (Style)")
//                                .nextButtonStyle()
//                                .contentShape(Rectangle())
//                        }
//                        emptySpace(topBottom: 10, leftRight: 0)
//                    }
//                }
//            }.onAppear() {
//                modelManager.downloadModel()
//            }
//        }.navigationBarTitle(title)
//    }
}


