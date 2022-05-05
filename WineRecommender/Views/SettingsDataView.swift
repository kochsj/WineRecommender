//
//  SettingsDataView.swift
//  WineRecommender
//
//  Created by Stephen Koch on 4/26/22.
//

import SwiftUI

struct SettingsDataView: View {
    
    @State var metricOne: Metric = .none
    @State var metricTwo: Metric = .none
    @State var dataImage: DataImage = .pieChart
    
    func handleMetricSelections(value: Metric, isOne: Bool) {
        switch value {
        case .body:
            switch isOne ? metricTwo : metricOne {
            case .body:
                dataImage = .body
            case .sweetness:
                dataImage = .bodySweetness
            case .tannin:
                dataImage = .bodyTannin
            case .acidity:
                dataImage = .bodyAcidity
            case .none:
                dataImage = .body
            }
        case .sweetness:
            switch isOne ? metricTwo : metricOne {
            case .body:
                dataImage = .bodySweetness
            case .sweetness:
                dataImage = .sweetness
            case .tannin:
                dataImage = .sweetnessTannin
            case .acidity:
                dataImage = .sweetnessAcidity
            case .none:
                dataImage = .sweetness
            }
        case .tannin:
            switch isOne ? metricTwo : metricOne {
            case .body:
                dataImage = .bodyTannin
            case .sweetness:
                dataImage = .sweetnessTannin
            case .tannin:
                dataImage = .tannin
            case .acidity:
                dataImage = .tanninAcidity
            case .none:
                dataImage = .tannin
            }
        case .acidity:
            switch isOne ? metricTwo : metricOne {
            case .body:
                dataImage = .bodyAcidity
            case .sweetness:
                dataImage = .sweetnessAcidity
            case .tannin:
                dataImage = .tanninAcidity
            case .acidity:
                dataImage = .acidity
            case .none:
                dataImage = .acidity
            }
        case .none:
            if isOne {
                dataImage = .pieChart
            } else {
                switch metricOne {
                case .body:
                    dataImage = .body
                case .sweetness:
                    dataImage = .sweetness
                case .tannin:
                    dataImage = .tannin
                case .acidity:
                    dataImage = .acidity
                case .none:
                    dataImage = .pieChart
                }
            }
            
        }
    }
    
    var body: some View {
        ZStack {
            Color("background").edgesIgnoringSafeArea(.all)
            ScrollView {
                VStack {
//                    Text("data insight".uppercased()).font(.headline).padding([.bottom], 20)
                    VStack(alignment: .leading, spacing: 20) {
                        Text("Currently the Wine Recommender model is trained on over 150,000 wine reviews of 35 of the most popular varitals. Common varietal characteristics used to describe the 35 recommended wines, like acidity, tannins and sweetness, were derived from a dataset of over 21,000 rated wines. 16 of the 35 trained varitals account for 75.7% of the wine reviews due to their prevelance in the market.")
                        Text("If you are curious to learn more about the distribution of the wine data used by this application, please make a selection from the dropdown menu.")
                    }.font(.callout)
                }.contentContainerStyle(edgeInsets: EdgeInsets(top: 40, leading: 20, bottom: 40, trailing: 20))
                VStack {
                    if dataImage.title != nil {
                        Text(dataImage.title!).padding(0).font(.caption)
                    }
                    HStack {
                        if dataImage.yAxis != nil {
                            Text(dataImage.yAxis!).padding(0).font(.caption)
                                .rotationEffect(.degrees(-90))
                                .fixedSize()
                        }
                        Image(dataImage.toAssetIdentifier())
                            .resizable(resizingMode: .stretch)
                            .scaledToFit()
                    }.frame(maxHeight: 300)
                    if dataImage.xAxis != nil {
                        Text(dataImage.xAxis!).padding(0).font(.caption)
                    }
                    
                }
                VStack {
                    VStack {
                        HStack {
                            Text("metric".capitalized).font(.headline)
                            Spacer()
                            Menu {
                                Picker(selection: $metricOne) {
                                    Text("Varital Distribution").tag(Metric.none)
                                    Text("Body").tag(Metric.body)
                                    Text("Sweetness").tag(Metric.sweetness)
                                    Text("Tannin").tag(Metric.tannin)
                                    Text("Acidity").tag(Metric.acidity)
                                } label: {}
                                    .onReceive([self.metricOne].publisher.first()) { value in
                                        handleMetricSelections(value: value, isOne: true)
                                    }
                            } label: {
                                Text(metricOne.toString()).fontWeight(.semibold)
                            }
                        }.listRowProxyStyle()
                        
                        HStack {
                            Text("compared with".capitalized).font(.headline)
                            Spacer()
                            Menu {
                                Picker(selection: $metricTwo) {
                                    Text("None").tag(Metric.none)
                                    Text("Body").tag(Metric.body)
                                    Text("Sweetness").tag(Metric.sweetness)
                                    Text("Tannin").tag(Metric.tannin)
                                    Text("Acidity").tag(Metric.acidity)
                                } label: {}
                                    .onReceive([self.metricTwo].publisher.first()) { value in
                                        handleMetricSelections(value: value, isOne: false)
                                    }

                            } label: {
                                Text(metricTwo.toString()).fontWeight(.semibold)
                            }.disabled(metricOne == .none)
                        }.listRowProxyStyle(isLast: true)
                    }.padding([.vertical], 15)
                }
                .frame(maxWidth: 700)
                .background(Color("background.container"))
                .padding([.vertical], 20)
            }
        }.navigationTitle("Data Insight")
    }
}

enum DataImage {
    case pieChart, body, sweetness, tannin, acidity,
         bodySweetness, bodyTannin, bodyAcidity,
         sweetnessTannin, sweetnessAcidity,
         tanninAcidity
    
    var title: String? {
        switch self {
        case .pieChart:
            return nil
        case .body:
            return "Body Scores by Varietal"
        case .sweetness:
            return "Sweetness Scores by Varietal"
        case .tannin:
            return "Tannin Scores by Varietal"
        case .acidity:
            return "Acidity Scores by Varietal"
        case .bodySweetness:
            return "Linear Regression of Body Scores by Sweetness"
        case .bodyTannin:
            return "Linear Regression of Body Scores by Tannin"
        case .bodyAcidity:
            return "Linear Regression of Body Scores by Acidity"
        case .sweetnessTannin:
            return "Linear Regression of Sweetness Scores by Tannin"
        case .sweetnessAcidity:
            return "Linear Regression of Sweetness Scores by Acidity"
        case .tanninAcidity:
            return "Linear Regression of Tannin Scores by Acidity"
        }
    }
    var xAxis: String? {
        switch self {
        case .pieChart:
            return nil
        case .body:
            return "Body Score"
        case .sweetness:
            return "Sweetness Score"
        case .tannin:
            return "Tannin Score"
        case .acidity:
            return "Acidity Score"
        case .bodySweetness:
            return "Sweet Score"
        case .bodyTannin:
            return "Tannin Score"
        case .bodyAcidity:
            return "Acidity Score"
        case .sweetnessTannin:
            return "Tannin Score"
        case .sweetnessAcidity:
            return "Acidity Score"
        case .tanninAcidity:
            return "Tannin Score"
        }
    }
    
    var yAxis: String? {
        switch self {
        case .bodySweetness:
            return "Body Score"
        case .bodyTannin:
            return "Body Score"
        case .bodyAcidity:
            return "Body Score"
        case .sweetnessTannin:
            return "Sweetness Score"
        case .sweetnessAcidity:
            return "Sweetness Score"
        case .tanninAcidity:
            return "Acidity Score"
        default:
            return nil
        }
    }
    
    func toAssetIdentifier() -> String {
        switch self {
        case .pieChart:
            return "img_piechart"
        case .body:
            return "img_body"
        case .sweetness:
            return "img_sweetness"
        case .tannin:
            return "img_tannin"
        case .acidity:
            return "image_acidity"
        case .bodySweetness:
            return "img_body_sweet"
        case .bodyTannin:
            return "img_body_tannin"
        case .bodyAcidity:
            return "image_body_acidity"
        case .sweetnessTannin:
            return "img_tannin_sweet"
        case .sweetnessAcidity:
            return "img_sweetness_acidity"
        case .tanninAcidity:
            return "img_tannin_acidity"
        }
    }
}
enum Metric {
    case body, sweetness, tannin, acidity, none
    
    func toString() -> String {
        switch self {
        case .none:
            return "none"
        case .body:
            return "body"
        case .sweetness:
            return "sweetness"
        case .tannin:
            return "tannin"
        case .acidity:
            return "acidity"
        }
    }
}

struct SettingsDataView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsDataView()
    }
}
