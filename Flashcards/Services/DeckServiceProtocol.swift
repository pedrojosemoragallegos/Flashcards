import Foundation

protocol DeckServiceProtocol: ServiceProtocol where RepositoryType: DeckRepositoryProtocol {
    associatedtype RepositoryType: DeckRepositoryProtocol
    
    var repository: RepositoryType { get }
    
    func add(deck: RepositoryType.ModelType)
    
    func add(decks: [RepositoryType.ModelType])
    
    func get(byId id: UUID) -> RepositoryType.ModelType?
    
    func getAll() -> [RepositoryType.ModelType]
    
    func delete(deck: RepositoryType.ModelType) -> Bool
    
    func addFlashcard(flashcard: RepositoryType.SpecialCard, deck: RepositoryType.ModelType)
    
    func addFlashcards(flashcards: [RepositoryType.SpecialCard], deck: RepositoryType.ModelType)

}
