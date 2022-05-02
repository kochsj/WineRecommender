//
//  TurboTaxer.swift
//  WineRecommender
//
//  Created by Stephen Koch on 4/26/22.
//

import SwiftUI


struct TurboTaxer: View {
    @State var text = "Getting Results."
    @State var displayText: String = ""
    @State var currentChar: Int = 0
    @State var src = "collecting"
    @State var i = -1
    @State var isIncreasing = true
    @State var xAxis = 0.0
    @State var yAxis = 0.0
    
    private var delay = 2.5
    private let radius = 125.0
    let pixelsTraversed: CGFloat
    let rate: CGFloat
    let rOneMax: CGFloat
    let rTwoMax: CGFloat
    
    init() {
        pixelsTraversed = radius * 4.0
        rate = pixelsTraversed/47.0
        rOneMax = radius - (radius/6.0) // 83 percentile
        rTwoMax = radius - (radius/40.0) // 97.5 percentile
    }

    func handleCarousel(idx: Int) -> (String, String) {
        let displayText = ["Referencing model lexicon.", "Vectorizing your selections.", "Engaging neural net.", "Parsing cross-entropy classification."]
        let displayImageSources = ["lexicon", "vectorize", "neuralnet", "parsing"]
        return (displayText[idx], displayImageSources[idx])
    }
    
    func handleMovementAlongCircle(xValue: CGFloat) -> Void {
        // Set the actual rate based on x-coord
        var rateActual = rate
        
        if xValue < -rTwoMax || xValue > rTwoMax {
            rateActual = rate/20.0
        } else if xValue < -rOneMax || xValue > rOneMax {
            rateActual = rate/4.0
        }
        if !isIncreasing {
            rateActual = -rateActual
        }
        
        // Increment xValue
        xAxis += rateActual
        
        // Make sure xAxis does not exceed radius
        if xAxis >= radius {
            isIncreasing = false
            xAxis = radius
        }
        if xAxis <= -radius {
            isIncreasing = true
            xAxis = -radius
        }
        
        // calculate yValue
        yAxis = calculateYAxisCircle(xValue: xAxis)
    }
    
    func calculateYAxisCircle(xValue: CGFloat) -> CGFloat {
        // x^2 + y^2 = r^2
        let xSquared: CGFloat = xValue * xValue
        let rSquared: CGFloat = radius * radius
        let yValue: CGFloat = sqrt(abs(rSquared-xSquared))
        
        // offset is inverted in SwiftUI. Positive Y values correlate to negative values on a 2D graph
        // using isIncreasing to handle +/- values for y
        if isIncreasing {
//            print("(\(xValue), \(-1*yValue))")
            return -1.0 * yValue
        } else {
//            print("(\(xValue), \(yValue))")
            return yValue
        }
    }
    
    var body: some View {
        VStack {
            HStack {
                ZStack {
//                    Image("logo_transparent")
//                        .resizable()
//                        .scaledToFit()
                    
                    Image("logo_opaque")
                        .resizable(resizingMode: .stretch)
                        .scaledToFit()
                        .clipShape(Circle())
                        .overlay {
                            Circle().stroke(.gray, lineWidth: 4)
                        }
                    
                    HStack {
                        Image(src)
                            .resizable()
                            .scaledToFit()
                            .offset(x: self.xAxis, y: self.yAxis)
                    }
                    .frame(maxWidth: .infinity,  maxHeight: 80)
                }
            
            }
            .frame(maxWidth: .infinity,  maxHeight: 150)
            Text(displayText)
                .padding([.top], 100)
                .font(.title2)
        }
        .frame(maxHeight: 400)
        .onChange(of: self.xAxis) { newValue in
            DispatchQueue.main.asyncAfter(deadline: .now() + (delay/50)) {
                handleMovementAlongCircle(xValue: xAxis)
            }
        }
        .onChange(of: self.i) { newValue in
            DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
                if (self.i < 4) {
                    
                    let result = handleCarousel(idx: self.i)
                    self.text = result.0
                    self.src = result.1
                    
                    self.currentChar = 0
                    self.displayText = String(self.text.characterAtIndex(index: 0) ?? " ")
                    
                    if (self.i<3){
                        self.i += 1
                    } else {
                        self.i = 0
                    }
                }
            }
        }
        .onChange(of: self.displayText) { newValue in
            DispatchQueue.main.asyncAfter(deadline: .now() + (delay/70)) {
                self.currentChar += 1
                if (self.currentChar < self.text.count) {
                    self.displayText += String(self.text.characterAtIndex(index: self.currentChar) ?? " ")
                }
            }
        }
        .onAppear {
            self.displayText = String(self.text.characterAtIndex(index: 0) ?? " ")
            self.i = 0
            self.xAxis += 8.0
        }.onDisappear {
            self.i = 4
        }
    }
}

struct TurboTaxer_Previews: PreviewProvider {
    static var previews: some View {
        TurboTaxer()
    }
}
