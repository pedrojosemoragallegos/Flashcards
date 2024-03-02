import Foundation

class DeckViewModel: ObservableObject {
    @Published var decks: [any DeckProtocol] = []
    
    private let leitnerSystemDeckService: LeitnerSystemDeckService<InMemoryLeitnerSystemDeckRepository>
    private let ankiAlgorithmDeckService: AnkiAlgorithmDeckService<InMemoryAnkiAlgorithmRepository>
    
    init(
        leitnerSystemDeckService: LeitnerSystemDeckService<InMemoryLeitnerSystemDeckRepository>,
         ankiAlgorithmDeckService: AnkiAlgorithmDeckService<InMemoryAnkiAlgorithmRepository>
    ) {
        self.leitnerSystemDeckService = leitnerSystemDeckService
        self.ankiAlgorithmDeckService = ankiAlgorithmDeckService
        
        loadDecks()
    }
    
    private func loadDecks() {
        let leitnerDecks = leitnerSystemDeckService.getAll().map { $0 as any DeckProtocol }
        let ankiDecks = ankiAlgorithmDeckService.getAll().map { $0 as any DeckProtocol }
        
        decks = leitnerDecks + ankiDecks
    }
    
}
