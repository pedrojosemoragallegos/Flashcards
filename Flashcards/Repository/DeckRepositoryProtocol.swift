protocol DeckRepositoryProtocol: RepositoryProtocol where Model == Deck {
    func addFlashcard(flashcard: Flashcard, deck: Deck)
}
