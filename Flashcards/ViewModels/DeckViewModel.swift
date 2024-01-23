import Foundation

class DeckViewModel: ObservableObject {
    @Published var decks: [any DeckProtocol] = []
    
    private let leitnerSystemDeckService: LeitnerSystemDeckService
    private let ankiAlgorithmDeckService: AnkiAlgorithmDeckService
    
    init(leitnerSystemDeckService: LeitnerSystemDeckService, ankiAlgorithmDeckService: AnkiAlgorithmDeckService) {
        self.leitnerSystemDeckService = leitnerSystemDeckService
        self.ankiAlgorithmDeckService = ankiAlgorithmDeckService
        
        loadDecks()
    }
    
    private func loadDecks() {
        // Fetch decks from both services and combine them
        let leitnerDecks = leitnerSystemDeckService.getAll() as [LeitnerSystemDeck]
        let ankiDecks = ankiAlgorithmDeckService.getAll() as [AnkiAlgorithmDeck]
        
        decks = leitnerDecks + ankiDecks
    }
    
}
