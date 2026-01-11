//
//  ContentView.swift
//  StickerMoneyBook Watch App
//
//  Created by Jan    on 2026/1/11.
//

import SwiftUI

struct ContentView: View {
    @State var isAnySpenseCreated: Bool = false
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 180, height: 200)
                .cornerRadius(20)
            
            VStack {
                Button(action: {
                    isAnySpenseCreated = true
                    print("Notes not zero: \(isAnySpenseCreated)")
                    // Next: pop a new window
                },) {
                    // UI
                    Image(systemName: "plus")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                        .padding()
                }.frame(width: 80, height: 80)
                 .padding()
                
               
                
                if !isAnySpenseCreated {
                    Text("Create your first spense!")
                        .foregroundStyle(.black)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
