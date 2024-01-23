import Foundation

protocol FlashcardServiceProtocol where RepositoryType: FlashcardRepositoryProtocol {
    associatedtype RepositoryType: FlashcardRepositoryProtocol
    
    var repository: RepositoryType { get }

    func add(flashcard: RepositoryType.ModelType)

    func add(flashcards: [RepositoryType.ModelType])

    func get(byID id: UUID) -> RepositoryType.ModelType?

    func getAll() -> [RepositoryType.ModelType]

    func update(flashcard: RepositoryType.ModelType) -> Bool

    func delete(flashcard: RepositoryType.ModelType) -> Bool

}
