protocol DeckRepositoryProtocol: RepositoryProtocol where ModelType: DeckProtocol {
    associatedtype CardType: SpecialCardProtocol
    
    func addSpecialCard(specialCard: CardType, deck: ModelType)
    
}
