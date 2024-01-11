// let learningService = LearningService(strategyType: .leitnerSystem(someVariable: 2)

class LearningService {
    var spacedRepetitionStrategy: SpacedRepetitionStrategy
    
    init(spacedRepetitionStrategy: StrategyFactory) {
        self.spacedRepetitionStrategy = spacedRepetitionStrategy.createStrategy()
    }
    
}
