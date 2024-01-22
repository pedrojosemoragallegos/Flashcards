class InMemoryDeckRepository<T: DeckProtocol, CardType: SpecialCardProtocol>: InMemoryRepository<T>, DeckRepositoryProtocol where T: ModelProtocol {
    typealias ModelType = T
    typealias CardType = CardType
    
    func addSpecialCard(specialCard: CardType, deck: T) {
        
    }
    
    
}
