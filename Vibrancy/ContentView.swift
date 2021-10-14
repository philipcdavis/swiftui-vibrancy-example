//
//  ContentView.swift
//  ContentView
//
//  Created by Philip Davis on 1/14/21.
//

import SwiftUI

struct ContentView: View {
    private var vibrancyLabelsNames: [String] = ["Primary Label", "Secondary Label", "Tertiary Label", "Quaternary Label"]
    private var vibrancyLabelFills: [HierarchicalShapeStyle] = [.primary, .secondary, .tertiary, .quaternary]
    
    
    private var vibrancyFills: [HierarchicalShapeStyle] = [.secondary, .tertiary, .quaternary]
    private var vibrancyNames: [String] = ["Secondary", "Tertiary", "Quaternary"]
    

    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea( .all)
            
            VStack {
                Spacer()
                
                ZStack {
                    TabView {
                        HStack(spacing: 30) {
                            ForEach(0..<vibrancyFills.count) { i in
                                VStack(spacing: 10) {
                                    Image(systemName: "swift")
                                        .font(.system(size: 60))
                                        .foregroundStyle(vibrancyFills[i])

                                    Text(vibrancyNames[i])
                                        .font(Font.headline.bold())
                                        .foregroundStyle(vibrancyFills[i])
                                }
                            }
                        }
                        
                        VStack(alignment: .leading) {
                            ForEach(0..<vibrancyLabelFills.count) { i in
                                Text(vibrancyLabelsNames[i])
                                    .font(Font.title.bold())
                                    .foregroundStyle(vibrancyLabelFills[i])
                            }
                        }
                    }.background(.thinMaterial)
                    .tabViewStyle(PageTabViewStyle())
                }.frame(height: 400)
                
            }.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/ .all/*@END_MENU_TOKEN@*/)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
