enum RepositoryType {
    case inMemoryLeitnerSystem
    case inMemoryAnkiAlgorithm
    case InMemoryFlashcard
}

class ServiceFactory {
    static func createRepository(for type: RepositoryType) -> any ServiceProtocol {
        switch type {
        case .inMemoryLeitnerSystem:
            let repository = InMemoryLeitnerSystemDeckRepository()
            return LeitnerSystemDeckService(repository: repository)
        case .inMemoryAnkiAlgorithm:
            let repository = InMemoryAnkiAlgorithmRepository()
            return AnkiAlgorithmDeckService(repository: repository)
        case .InMemoryFlashcard:
            let repository = InMemoryFlashcardRepository()
            return FlashcardService(repository: repository)
        }
    }
}

// USAGE
//let factory = ServiceFactory()
//let deckService: any DeckServiceProtocol = factory.createRepository(for: .inMemoryAnkiAlgorithm)

