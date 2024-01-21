protocol DeckRepositoryProtocol: RepositoryProtocol where Model == DeckProtocol {
    func addSpecialCard(specialCard: SpecialCardProtocol, deck: DeckProtocol)
}
