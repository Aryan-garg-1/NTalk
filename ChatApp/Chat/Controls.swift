//
//  ChatControls.swift
//  ChatApp
//
//  Created by Giuseppe Rocco on 06/12/22.
//

import SwiftUI

struct InfoButton: View {
    @Binding var isActive: Bool
    
    func toggle() -> Void {
        isActive = true
    }
    
    var body: some View {
        
        Button(action: toggle) {
            Image(systemName: "iphone.gen2.radiowaves.left.and.right.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 28.0)
        }
    }
}

struct SettingsButton: View {
    @Binding var isActive: Bool
    
    func toggle() -> Void {
        isActive = true
    }
    
    var body: some View {
        
        Button(action: toggle) {
            Image(systemName: "gearshape.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 28.0)
        }
    }
}

struct BottomField: View {
    @Binding var currentMsg: String
    var sendProcedure: ()->Void
    
    var body: some View {
        HStack {
            Spacer()
            
            Capsule(style: .continuous)
                .stroke(Color.blue, lineWidth: 3)
                .overlay() {
                    HStack {
                        Spacer()
                        TextField("Write a message", text: $currentMsg)
                        Spacer()
                    }
                }
                .frame(width: 300.0, height: 40.0)
            
            Spacer()
                
            Button(action: sendProcedure) {
                
                Image(systemName: "paperplane.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 43.0, height: 43.0)
                    .grayscale(currentMsg == "" ? 1.0:0.0)
            }
            
            
            Spacer()
        }
    }
}
