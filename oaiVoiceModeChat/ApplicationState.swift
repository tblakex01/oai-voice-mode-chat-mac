import SwiftUI

struct ApplicationState {
    static var authToken: String {
        get {
            UserDefaults.standard.string(forKey: "authToken") ?? ""
        }
        set {
            UserDefaults.standard.set(newValue, forKey: "authToken")
        }
    }
    static var retrievalSpeed: Double {
        get {
            UserDefaults.standard.double(forKey: "retrievalSpeed") == 0
                ? 3 : UserDefaults.standard.double(forKey: "retrievalSpeed")
        }
        set {
            UserDefaults.standard.set(newValue, forKey: "retrievalSpeed")
        }
    }

    static var latestConversationCutoff: Double {
        get {
            UserDefaults.standard.double(forKey: "latestConversationCutoff") == 0
                ? 30 : UserDefaults.standard.double(forKey: "latestConversationCutoff")
        }
        set {
            UserDefaults.standard.set(newValue, forKey: "latestConversationCutoff")
        }
    }

    static var selectedLanguage: String {
        get {
            UserDefaults.standard.string(forKey: "selectedLanguage") ?? "zh_CN"
        }
        set {
            UserDefaults.standard.set(newValue, forKey: "selectedLanguage")
        }
    }

    static var openAiApiKey: String {
        get {
            UserDefaults.standard.string(forKey: "openAiApiKey") ?? ""
        }
        set {
            UserDefaults.standard.set(newValue, forKey: "openAiApiKey")
        }
    }
}
