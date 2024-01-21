import Foundation

class LearningService: ObservableObject {
    private let spacedRepetitionFactory = StrategyFactory()
    
    func doSomething(deckType: DeckProtocol.Type) {
        let strategy = StrategyFactory.getStrategy(type: deckType)
        strategy.doSomething()
    }
    
}
