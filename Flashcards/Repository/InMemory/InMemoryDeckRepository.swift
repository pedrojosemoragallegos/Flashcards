class InMemoryDeckRepository<T: DeckProtocol, CardType: SpecialCardProtocol>: GenericInMemoryRepository<T>, DeckRepositoryProtocol where T: ModelProtocol, T.SpecialCardType: SpecialCardProtocol {
    typealias ModelType = T
    typealias CardType = CardType
    
    func addSpecialCard(specialCard: CardType, deck: T) {
        
    }
    
    
}
