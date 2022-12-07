import SwiftUI
import MultipeerConnectivity

struct ConnectedPeers: View {
    @Binding var isPresented: Bool
    let connectedPeers: [MCPeerID]
    
    var body: some View {
        NavigationStack {
            VStack {
                
                if connectedPeers.count > 1 {
                    
                    List {
                        ForEach(connectedPeers, id:\.self) { peer in
                            Text(peer.displayName)
                        }
                    }
                } else {
                    
                    Image(systemName: "iphone.slash")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100.0)
                    
                    Spacer()
                        .frame(maxHeight: 40.0)
                    
                    Text("Could not find any device")
                        .font(.system(size: 25.0))
                }
            }
            .navigationTitle("Connected Devices")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                Button(action: { isPresented = false }) {
                    Image(systemName: "xmark.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 28.0)
                }
            }
        }
    }
}
