import Foundation

protocol DeckServiceProtocol where RepositoryType: DeckRepositoryProtocol {
    associatedtype RepositoryType: DeckRepositoryProtocol
    
    var repository: RepositoryType { get }
    
    func add(deck: RepositoryType.ModelType)
    
    func add(decks: [RepositoryType.ModelType])
    
    func get(byId id: UUID) -> RepositoryType.ModelType?
    
    func getAll() -> [RepositoryType.ModelType]
    
    func delete(deck: RepositoryType.ModelType) -> Bool
    
    func addFlashcard(flashcard: RepositoryType.FlashcardType, deck: RepositoryType.ModelType)
    
    func addFlashcards(flashcards: [RepositoryType.FlashcardType], deck: RepositoryType.ModelType)

}
