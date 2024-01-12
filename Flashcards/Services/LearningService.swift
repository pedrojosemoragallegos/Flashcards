// let learningService = LearningService(strategyType: .leitnerSystem(someVariable: 2)

class LearningService {
    private let spacedRepetitionStrategy: SpacedRepetitionStrategy
    
    init(spacedRepetitionStrategy: StrategyFactory) {
        self.spacedRepetitionStrategy = spacedRepetitionStrategy.createStrategy()
    }
    
}
