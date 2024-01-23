import SwiftUI

struct ServiceContainerKey: EnvironmentKey {
    static let defaultValue: ServiceContainer = ServiceContainer(mockData: false)
}

extension EnvironmentValues {
    var serviceContainer: ServiceContainer {
        get { self[ServiceContainerKey.self] }
        set { self[ServiceContainerKey.self] = newValue }
    }
}

@main
struct FlashcardsApp: App {
    let serviceContainer = ServiceContainer(mockData: true)

    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: DeckViewModel(leitnerSystemDeckService: serviceContainer.leitnerSystemDeckService, ankiAlgorithmDeckService: serviceContainer.ankiAlgorithmDeckService))
                .environment(\.serviceContainer, serviceContainer)
        }
    }
}
