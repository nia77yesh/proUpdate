//
//  ExploreDataManager.swift
//  LetsEat
//
//  Created by niayesh bahreini on 4/9/22.
//

import Foundation

class ExploreDataManager {
    func fetch() {
        for data in loadData() {
            print(data)
        }
    }
    private func loadData() -> [[String: String]] {
    let decoder = PropertyListDecoder()
    if let path = Bundle.main.path(forResource:
    "ExploreData", ofType: "plist"),
    let exploreData = FileManager.default.contents(
    atPath: path),
    let exploreItems = try? decoder.decode([[String:
    String]].self, from: exploreData) {
    return exploreItems
    }
        return [[:]]
    }
}
