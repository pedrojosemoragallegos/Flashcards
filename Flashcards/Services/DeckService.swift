import Foundation

struct SpecialCardFactory {
    static func create(type: DeckProtocol.Type, flashcard: Flashcard) -> SpecialCardProtocol {
        switch type {
        case is LeitnerSystemDeck.Type:
            return LeitnerSystemCard(flashcard: flashcard, currentBox: 0)
        case is AnkiAlgorithmDeck.Type:
            return AnkiAlgorithmCard(flashcard: flashcard)
        default:
            fatalError("Unknown algorithm type")
        }
    }
}

enum DeckFactory {
    case leitnerSystem(name: String, numberOfBoxes: Int)
    case ankiAlgorithm(name: String)

    func createStrategy() -> DeckProtocol {
        switch self {
        case .leitnerSystem(let name, let numberOfBoxes):
            return LeitnerSystemDeck(name: name, numberOfBoxes: numberOfBoxes)
        case .ankiAlgorithm(let name):
            return AnkiAlgorithmDeck(name: name)
        }
    }
}

class DeckService: ObservableObject {
    private let repository: any DeckRepositoryProtocol
    
    init(repository: any DeckRepositoryProtocol) {
        self.repository = repository
    }
    
    func add(deck: DeckProtocol) {
        repository.create(model: deck)
    }
    
    func add(decks: [DeckProtocol]) {
        decks.forEach { deck in
            add(deck: deck)
        }
    }
    
    func get(byID id: UUID) -> DeckProtocol? {
        return repository.get(byID: id)
    }
    
    func getAll() -> [DeckProtocol] {
        return repository.getAll()
    }
    
    func update(deck: DeckProtocol) -> Bool {
        return repository.update(model: deck)
    }
    
    func delete(deck: DeckProtocol) -> Bool {
        return repository.delete(model: deck)
    }
      
    func addFlashcard(flashcard: Flashcard, deck: DeckProtocol) {
        repository.addSpecialCard(specialCard: SpecialCardFactory.create(type: type(of: deck), flashcard: flashcard), deck: deck)
    }
    
    func addFlashcards(flashcards: [Flashcard], deck: DeckProtocol) {
        flashcards.forEach { flashcard in
            addFlashcard(flashcard: flashcard, deck: deck)
        }
    }
    
}
