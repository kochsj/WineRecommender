//
//  WineDetail.swift
//  WineRecommender
//
//  Created by Stephen Koch on 2/9/22.
//

import SwiftUI

struct WineDetailView: View {
    var wine: Varietal
    
    var body: some View {
        ZStack {
            Color("background").edgesIgnoringSafeArea(.all)
            ScrollView{
                VStack {
                    VStack {
                        Image("vineyard")
                            .resizable()
                            .frame(height: 300)
                            .ignoresSafeArea()
    //                    Image("logo_dark_transparent_80")
    //                    Image("logo_dark")
    //                    Image("logo_black_transparent_70")
                        Image("logo_opaque")
                            .resizable(resizingMode: .stretch)
                            .scaledToFit()
                            .clipShape(Circle())
                            .overlay {
                                Circle().stroke(.gray, lineWidth: 4)
                            }
                            .offset(y: -250)
                            .padding(.bottom, -250)
                    }.frame(maxHeight: 500)
                    
                    HStack {
                        Text(wine.getName())
                            .font(.largeTitle)
                        Spacer()
                    }.padding()
                    Divider()
                    Text(wine.getShortDescription())
                        .padding()
                    VStack {
                        HStack {
                            WineImage(url: wine.getImageResource())
                        }.padding()
                        HStack {
                            Text("Properties")
                                .font(.title)
                            .padding([.top, .bottom], 10)
                        }
                        HStack {
                            Text("Type").frame(width:70, alignment: .leading)
                            Divider()
                            Text(wine.getType())
                                .padding(.leading, 10)
                            Spacer()
                        }.padding([.leading, .trailing], 10)
                        Divider()
                        HStack {
                            Text("Grape").frame(width:70, alignment: .leading)
                            Divider()
                            Text(wine.getGrape())
                                .padding(.leading, 10)
                            Spacer()
                        }.padding([.leading, .trailing], 10)
                        Divider()
                        HStack {
                            Text("Noteable Regions").frame(width:70, alignment: .leading)
                            Divider()
                            Text(wine.getNotableRegions())
                                .padding(.leading, 10)
                            Spacer()
                        }.padding([.leading, .trailing], 10)
                        Divider()
                        HStack {
                            Text("Tannins").frame(width:70, alignment: .leading)
                            Divider()
                            Text(wine.getTannins())
                                .padding(.leading, 10)
                            Spacer()
                        }.padding([.leading, .trailing], 10)
                    }
                    VStack {
                        HStack {
                            Text("Climate Properties")
                                .font(.title)
                                .padding([.top, .bottom], 10)
                        }
                        HStack {
                            Text("Cool").frame(width:75, alignment: .leading)
                            Divider()
                            Text(wine.getCoolClimateCharacteristics())
                                .padding(.leading, 10)
                            Spacer()
                        }.padding([.leading, .trailing], 10)
                        Divider()
                        HStack {
                            Text("Moderate").frame(width:75, alignment: .leading)
                            Divider()
                            Text(wine.getModerateClimateCharacteristics())
                                .padding(.leading, 10)
                            Spacer()
                        }.padding([.leading, .trailing], 10)
                        Divider()
                        HStack {
                            Text("Hot").frame(width:75, alignment: .leading)
                            Divider()
                            Text(wine.getHotClimateCharacteristics())
                                .padding(.leading, 10)
                            Spacer()
                        }.padding([.leading, .trailing], 10)
                    }
                }
            }
        }
    }
}

