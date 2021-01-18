//
//  ContentView.swift
//  ContentView
//
//  Created by Philip Davis on 1/14/21.
//

import SwiftUIVisualEffects
import SwiftUI

struct ContentView: View {
    private var vibrancyLabels: [UIVibrancyEffectStyle] = [ .label, .secondaryLabel, .tertiaryLabel, .quaternaryLabel]
    private var vibrancyLabelsNames: [String] = [ "Label", "Secondary Label", "Tertiary Label", "Quaternary Label"]
    
    private var vibrancyFills: [UIVibrancyEffectStyle] = [ .fill, .secondaryFill, .tertiaryFill]
    private var vibrancyFillNames: [String] = [ "Fill", "Secondary", "Tertiary"]
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            
            
            VStack {
                
                Spacer()
                
                ZStack {
                    Color(.clear).blurEffect()
                        .blurEffectStyle(.systemThinMaterial)
                    
                    TabView {
                        HStack(spacing: 30) {
                            ForEach(0..<vibrancyFills.count) { i in
                                VStack(spacing: 10) {
                                    Image(systemName: "swift")
                                        .font(.system(size: 60))
                                        .vibrancyEffect()
                                        .vibrancyEffectStyle(vibrancyFills[i])
                                    
                                    Text(vibrancyFillNames[i])
                                        .fontWeight(.bold)
                                        .vibrancyEffect()
                                        .vibrancyEffectStyle(vibrancyFills[i])
                                }
                            }
                        }
                        
                        VStack(alignment: .leading) {
                            ForEach(0..<vibrancyLabels.count) { i in
                                Text(vibrancyLabelsNames[i])
                                    .font(Font/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/.bold())
                                    .vibrancyEffect()
                                    .vibrancyEffectStyle(vibrancyLabels[i])
                            }
                        }
                        
                        
                        
                        
                    }
                    
                    .tabViewStyle(PageTabViewStyle())
                }.frame(height: 400)
                
                
                
                
            }.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
