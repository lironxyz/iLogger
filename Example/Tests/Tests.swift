import XCTest
@testable import iLogger

class Tests: XCTestCase {
    
    func testLoggerDefaultInitializer() {
        let logger = ILLogger()
        
        XCTAssert(logger.isEnabled, "logger should be enabled by default")
        
        let defaultTags = Set<ILLogTag>([.verbose, .debug, .info, .warning, .error, .fatal])
        XCTAssert(logger.enabledTags.elementsEqual(defaultTags), "enabled logging tags should be: [.verbose, .debug, .info, .warning, .error, .fatal]")
        
        XCTAssert(logger.loggingQueue == nil, "logging queue should be nil by default")
    }
    
    func testLoggerInitializerWithInjectedQueue() {
        let injectedQueue = DispatchQueue(label: "test.queue")
        let logger = ILLogger(queue: injectedQueue)
        
        XCTAssert(logger.loggingQueue == injectedQueue, "logging queue should be equal to the injected queue")
    }
    
}
