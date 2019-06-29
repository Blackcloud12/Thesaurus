//
//  Thesaurus.swift
//  Thesaurus
//
//  Created by Daren Davis on 6/27/19.
//  Copyright © 2019 DarenDavis.com. All rights reserved.
//

import Foundation

var wordDictionary : [String : [String]] = [:]

let synonyms = ["swift" : ["abrupt", "expeditious", "hasty", "nimble", "quick", "rapid", "speedy", "sudden", "unexpected"],
                "objective" : ["detached", "disinterested", "dispassionate", "equitable", "evenhanded", "nonpartisan", "open-minded", "unbiased"],
                "calculate" : ["adjust", "appraise", "consider", "count", "determine", "forecast", "gauge", "guess", "measure", "multiply", "reckon", "subtract", "tally", "weigh", "work out"],
                "create" : ["build", "conceive", "constitute", "construct", "design", "devise", "discover", "establish", "forge", "form"]]

func synonyms(for word: String) -> [String] {
    if let synonymList = synonyms[word] {
        return synonymList
    }
    return ["None on file."]
}

func doubleCheck(for word: String) -> [String] {
    var result = ["None on file."]
    for (key, value) in synonyms {
        if value.contains(word){
            result = value
            result.append(key)
            if let index = result.firstIndex(of: word) {
                result.remove(at: index)
            }
        }
    }
    return result
}
