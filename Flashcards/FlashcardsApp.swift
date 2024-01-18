import SwiftUI

@main
struct FlashcardsApp: App {
    let container = DependencyContainer()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: FlashcardViewModel(service: container.flashCardService))
        }
    }

}
