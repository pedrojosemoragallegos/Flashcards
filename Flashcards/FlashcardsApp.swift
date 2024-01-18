import SwiftUI

@main
struct FlashcardsApp: App {
    let container = DependencyContainer(mockData: true)
    
    var body: some Scene {
        WindowGroup {
            ContentView(deckViewModel: DeckViewModel(service: container.deckService), 
                        flashcardService: container.flashCardService
            )
        }
    }

}
