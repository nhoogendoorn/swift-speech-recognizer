import Foundation

public enum SpeechRecognitionStatus: Identifiable, Equatable {
    public static func == (lhs: SpeechRecognitionStatus, rhs: SpeechRecognitionStatus) -> Bool {
        lhs.id == rhs.id
    }

    case notStarted
    case recording
    case stopping
    case stopped(Result<Void, Error>)

    public var id: Int {
        switch self {
        case .notStarted: return 1
        case .recording: return 2
        case .stopping: return 3
        case .stopped: return 4
        }
    }
}
