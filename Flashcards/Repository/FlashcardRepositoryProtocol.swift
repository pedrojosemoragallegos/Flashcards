protocol FlashcardRepositoryProtocol: RepositoryProtocol where Model == Flashcard {
    func addDeck(deck: Deck, flashcard: Flashcard)
}
