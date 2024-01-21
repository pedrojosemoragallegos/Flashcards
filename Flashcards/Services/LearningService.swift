struct LearningService {
    private let spacedRepetitionFactory = StrategyFactory()
    
    func doSomething(deckType: DeckProtocol.Type) {
        let strategy = StrategyFactory.getStrategy(type: deckType)
        strategy.doSomething()
    }
    
}
