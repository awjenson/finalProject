//
//  PersonAdvice.swift
//  finalProject
//
//  Created by Andrew Jenson on 12/18/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import Foundation

struct PersonAdvice {
    let quote: ProfileSelectedPerson
    let advice: [ProfileDataModel]

    init(quote: ProfileSelectedPerson, advice: [ProfileDataModel]) {
        self.quote = quote
        self.advice = advice
    }
}
