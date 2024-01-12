//
//  locationsTests.swift
//  locationsTests
//
//  Created by Hosam Hasan on 1/6/24.
//

import XCTest
@testable import locations

final class locationsTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    let client_id = "6f7cf087-b72e-429c-b032-6a6650d3a0b8"
    let client_key = "D8tICJkxeTF6R49Rqsr1RY8uvEgLm6n6"

    func enhancedSearchAutocompleteLoop() async throws {
        _ = try await Services.initSession(client_id: client_id, client_key: client_key)
        var totalTime: Double = 0
        let s = "شارع عبدالفتاح "
        var query = ""
        
        for character in s {
            query.append(character)
            let startTime = DispatchTime.now()
            do {
                let enhancedSearchAutocompleteData = try await Services.enhancedSearchAutocomplete(
                    client_id: client_id,
                    client_key: client_key,
                    language: "ar",
                    country: "eg",
                    latitude: "30.033333",
                    longitude: "31.233334",
                    query: query
                )
                
                // Process the data as needed
                print(enhancedSearchAutocompleteData)
                print(query)
            } catch {
                // Handle errors
                print("Error: \(error)")
            }
            let endTime = DispatchTime.now()
            let nanoTime = endTime.uptimeNanoseconds - startTime.uptimeNanoseconds
            let timeInterval = Double(nanoTime) / 1_000_000_000

            // Accumulate the total time
            totalTime += timeInterval

            // Wait for 300 milliseconds before the next iteration
            try await Task.sleep(nanoseconds: 100000000)
        }
        let averageTime = totalTime / Double(10)
        print("Average time per iteration: \(averageTime) seconds")
    }

    func reserseGeocoding() async throws {
        _ = try await Services.initSession(client_id: client_id, client_key: client_key)
        let enhancedSearchAutocompleteData = try await Services.reverseGeocoding(client_id: client_id, client_key: client_key, language: "en", country: "us", latitude: "37.09545610449946", longitude: "-8.232909385293533")
        print(enhancedSearchAutocompleteData)
    }
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        // Run the asynchronous loop
        let expectation = self.expectation(description: "Check Key Success")
//        Task {
//            do {
//                try await enhancedSearchAutocompleteLoop()
//                expectation.fulfill()
//            } catch {
//                print("Error in the loop: \(error)")
//            }
//        }
        Task {
            do {
                try await reserseGeocoding()
                expectation.fulfill()
            } catch {
                print("Error in the loop: \(error)")
            }
        }

        wait(for: [expectation], timeout: 20)

    }


}
