//
//  TestLeagueModel.swift
//  TalaOyebaMasanoTests
//
//  Created by Mikungu Giresse on 14/06/23.
//

import Foundation
import XCTest
import Firebase
@testable import TalaOyebaMasano

final class TestLeagueModel: XCTestCase {
    
    //MARK: -Accessible
    let expectation = XCTestExpectation(description: "Wait for queue change")
    
    //MARK: -Test
    
    func testModelDecode () {
        
        let leagueModel = LeagueModel(httpClient: FakeResponseDataLeague())
        
        leagueModel.getLeague { result in
            
            switch result {
            case .success(let value):
                print(value)
                XCTAssertTrue(true)
                XCTAssertEqual(value[0].strLeague, "English Premier League")
                XCTAssertNotEqual(value[0].strLeague,  "French Ligue 1")
                self.expectation.fulfill()
            case .failure(let error):
                print (error)
                XCTFail("Something wrong with my model")
            }
            
        }
        
    }
    
}
