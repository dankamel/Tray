//
//  ContentView.swift
//  Tray
//
//  Created by Daniel Kamel on 16/03/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isOption1Selected = false
    
    var body: some View {
        
        ZStack {
            
            Color.gray.ignoresSafeArea()
            
            VStack {
                Text("Beautiful Tray")
                    .font(.system(size: 20, weight: .medium, design: .rounded))
                    .padding(.vertical, 30)
                
                
                VStack (spacing: 10) {
                    
                    HStack {
                        Text ("This is option 1")
                            .multilineTextAlignment(.leading)
                            .onTapGesture {
                                withAnimation (.easeInOut(duration: 0.2)){
//                                    isOption1Selected.toggle()
                                    isOption1Selected.toggle()
                                }
                            }
                        Spacer()
                    }
                    .padding(10)
                    .background(isOption1Selected ? Color.gray.opacity(0.2) : Color.clear)
                    .mask(RoundedRectangle(cornerRadius: 10, style: .continuous))
                    .padding(.horizontal, 40)
                    
                    HStack {
                        Text ("This is option 2")
                        Spacer()
                    }
                    .padding(10)
                    .padding(.horizontal, 40)
                    
                    HStack {
                        Text ("This is option 3")
                        Spacer()
                    }
                    .padding(10)
                    .padding(.horizontal, 40)
                    
                }
                .font(.system(size: 18, weight: .regular, design: .rounded))
                .frame(maxWidth: .infinity, alignment: .leading)
                    
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .frame(width: 325, height: 300)
            .background(Color.white)
            .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        }

    }
}

#Preview {
    ContentView()
}
