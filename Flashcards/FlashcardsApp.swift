import SwiftUI

@main
struct FlashcardsApp: App {
    let container = DependencyContainer()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(container.flashCardService)
        }
    }
}
