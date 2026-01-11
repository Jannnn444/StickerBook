//
//  CreatPage.swift
//  StickerMoneyBook Watch App
//
//  Created by Jan    on 2026/1/11.
//

import Foundation
import SwiftUI

struct CreatePage: View {
    @Binding var isPresented: Bool
    let onSave: () -> Void
    
    @State private var amount: String = ""
    @State private var category: String = ""
    
    var body: some View {
        VStack {
            Text("New Expense")
                .font(.headline)
            
            HStack {
                TextField("Amount", text: $amount)
                TextField("Catefory",text: $category)
            }
            
            HStack {
                Button("Cancel") {
                    isPresented = false
                }
                .frame(width: 50, height: 50)
                .foregroundStyle(.black)
                .font(.body)
                
                Button("Save") {
                    onSave()
                    isPresented = false
                }
                .frame(width: 50, height: 50)
                .foregroundStyle(.black)
                .font(.body)
            }
        }
        .padding()
    }
}
