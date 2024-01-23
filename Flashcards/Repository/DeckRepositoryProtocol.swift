protocol DeckRepositoryProtocol: RepositoryProtocol where ModelType: DeckProtocol, FlashcardType: FlashcardProtocol {
    associatedtype FlashcardType: FlashcardProtocol
    
    func addFlashcard(flashcard: FlashcardType, deck: ModelType)
    
}
