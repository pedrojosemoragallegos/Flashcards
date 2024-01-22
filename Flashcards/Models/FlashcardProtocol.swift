protocol FlashcardProtocol: ModelProtocol {
    var decks: [any DeckProtocol] { get set }
}
