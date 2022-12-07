import SwiftUI

struct Settings: View {
    @Binding var isPresented: Bool
    
    var body: some View {
        NavigationStack {
            VStack {
               
            }
            .navigationTitle("Settings")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                Button(action: { isPresented = false }) {
                    Image(systemName: "xmark.circle.fill")
                }
            }
        }
    }
}
