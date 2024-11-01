import SwiftUI
import AppKit

@main
struct AchicoApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .frame(minWidth: 400, minHeight: 500)
                .preferredColorScheme(isDarkMode ? .dark : .light)
        }
        .windowStyle(.hiddenTitleBar)
    }
}
