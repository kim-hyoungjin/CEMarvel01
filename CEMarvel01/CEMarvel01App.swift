import SwiftUI

@main
struct CEMarvel01App: App {
    @StateObject var structures = Structures()
    var body: some Scene {
        WindowGroup {
            TabView {
                ScrollView {
                    ForEach(structures.structures, id:\.self) { structure in
                        ContentView(structure: structure)
                        Divider()
                    }
                }
                .padding(.top, 1)
                .tabItem {
                    Image (systemName: "paperplane")
                    Text ("Engineering Marvels")
                }
                NavigationView {
                    MapView()
                }
                .tabItem {
                    Image (systemName: "camara")
                    Text( "Global Map")
                }
            }
            .environmentObject (structures)
        }
    }
}

