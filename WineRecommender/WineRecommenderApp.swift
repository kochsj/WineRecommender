//
//  WineRecommenderApp.swift
//  WineRecommender
//
//  Created by Stephen Koch on 4/5/22.
//

import SwiftUI

@main
struct WineRecommenderApp: App {
    @UIApplicationDelegateAdaptor(ApplicationDelegate.self) var appDelegate
    @Environment(\.scenePhase) var scenePhase
    @Environment(\.colorScheme) var colorScheme
//    @Environment(\.dynamicTypeSize) var sizeCategory
    
    
    
//    @StateObject
    var modelManager = FirebaseModelManager()
    var user = User()
    @State var rootViewId = UUID()
    @State var shouldChange: Bool = false
    @State var sizeCategory: DynamicTypeSize = .small
    
    @AppStorage("textSize") var textSize: TextSize = .small
    @AppStorage("usingTextSize") var usingTextSize: Bool = false
    
    @State var temp: Bool = false
    
    func handleIDChange() {
        if shouldChange {
            rootViewId = UUID()
        }
    }
    
    func sizeUIKitToSwiftUI() {
        let size = UITraitCollection.current.preferredContentSizeCategory
        print("calling conversion. size == \(size)")
        switch size {
        case .extraSmall:
            sizeCategory = .xSmall
        case .small:
            sizeCategory = .small
        case .medium:
            sizeCategory = .medium
        case .large:
            sizeCategory = .large
        case .extraLarge:
            sizeCategory = .xLarge
        case .extraExtraLarge:
            sizeCategory = .xxLarge
        case .extraExtraExtraLarge:
            sizeCategory = .xxxLarge
        case .accessibilityMedium:
            sizeCategory = .accessibility1
        case .accessibilityLarge:
            sizeCategory = .accessibility2
        case .accessibilityExtraLarge:
            sizeCategory = .accessibility3
        case .accessibilityExtraExtraLarge:
            sizeCategory = .accessibility4
        case .accessibilityExtraExtraExtraLarge:
            sizeCategory = .accessibility5
        default:
            sizeCategory = .small
        }
    }
    
    init(){
        user.setRecommendations()
        sizeUIKitToSwiftUI()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                RenderToolbarBeforeHomeView()
            }
            .id(rootViewId)
            .navigationViewStyle(.stack)
            .environmentObject(modelManager)
            .environmentObject(user)
            .applyAppTheme()
            .environment(\.dynamicTypeSize, usingTextSize ? textSize.system : sizeCategory)
        }.onChange(of: scenePhase) { newPhase in
            switch newPhase {
            case .background:
                print("ScenePhase | .background")
                shouldChange = true
                DispatchQueue.main.asyncAfter(deadline: .now()+10) {
                    print("root view call")
                    handleIDChange()
                }
            case .inactive:
                print("ScenePhase | .inactive")

            case .active:
                print("ScenePhase | .active")
                // For some reason, cannot read UITraitCollection.current.preferredContentSizeCategory consistently when scene becomes active. 
                DispatchQueue.main.asyncAfter(deadline: .now()+0.1) {
                    sizeUIKitToSwiftUI()
                }
                shouldChange = false
            @unknown default:
                print("ScenePhase | .unknown")
            }
        }
    }
}
