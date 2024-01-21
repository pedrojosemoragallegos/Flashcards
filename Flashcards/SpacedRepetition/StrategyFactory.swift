struct StrategyFactory {
    static func getStrategy(type: DeckProtocol.Type) -> SpacedRepetitionProtocol.Type {
        switch type {
        case is LeitnerSystemDeck.Type:
            return LeitnerSystem.self
        case is AnkiAlgorithmDeck.Type:
            return AnkiAlgorithm.self
        default:
            fatalError("Unknown algorithm type")
        }
    }
}
