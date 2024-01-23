protocol DeckRepositoryProtocol: RepositoryProtocol where ModelType: DeckProtocol, SpecialCard: SpecialCardProtocol {
    associatedtype SpecialCard: SpecialCardProtocol
    
    func addFlashcard(specialCard: SpecialCard, deck: ModelType)
    
}
