protocol FlashcardRepositoryProtocol: RepositoryProtocol where ModelType: FlashcardProtocol, FlashcardType: FlashcardProtocol {
    associatedtype FlashcardType: FlashcardProtocol
    
}
