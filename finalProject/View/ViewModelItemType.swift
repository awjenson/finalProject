//
//  ViewModelItemType.swift
//  finalProject
//
//  Created by Andrew Jenson on 3/6/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import Foundation

// We have to distinguish the data types, so we can use an appropriate cell. The best way to work with multiple items when you need to easily switch between them in swift is the enum.
// Each enum case represents the data type that requires the different TableViewCell.
enum ProfileViewModelItemType {
    case vision
    case dailyRoutine
    case oneYearGoal
    case fiveYearGoal
    case lifeGoal
    case preferences
}

// Because we want to use our data within the same tableView, so need to have the single DataModelItem, that will determine all properties. We can achieve this by using the protocol, that will provide computed properties to our items.
// The first thing we need to know about our item is its type. So we create a type property for the protocol. When you create a protocol property, you need to provide its name, type and specify whether the property is gettable or settable and gettable.
// The next property we need is the rowCount. It will tell us how many rows each section will have.
// The last thing that is good to have in this protocol is the section title. Basically, a section title is also a data for the tableView. As you remember, using the MVVM structure we don’t want to create the data or any kind anywhere else, but in the viewModel

protocol ProfileViewModelItem {
    var type: ProfileViewModelItemType { get }
    var rowCount: Int { get }
    var sectionTitle: String  { get }
}

extension ProfileViewModelItem {
    var rowCount: Int {
        return 1
    }
}

class ProfileViewModelVisionItem: ProfileViewModelItem {
    var type: ProfileViewModelItemType {
        return .vision
    }
    var sectionTitle: String {
        return "Vision"
    }

    var vision: String

    init(vision: String) {
        self.vision = vision
    }
}

class ProfileViewModelDailyRoutineItem: ProfileViewModelItem {
    var type: ProfileViewModelItemType {
        return .dailyRoutine
    }

    var sectionTitle: String {
        return "Daily Routine"
    }

    var dailyRoutine: String

    init(dailyRoutine: String) {
        self.dailyRoutine = dailyRoutine
    }
}

class ProfileViewModelOneYearGoalItem: ProfileViewModelItem {
    var type: ProfileViewModelItemType {
        return .oneYearGoal
    }

    var sectionTitle: String {
        return "One Year Goals"
    }

    var oneYearGoal: String

    init(oneYearGoal: String) {
        self.oneYearGoal = oneYearGoal
    }
}

class ProfileViewModelFiveYearGoalItem: ProfileViewModelItem {
    var type: ProfileViewModelItemType {
        return .fiveYearGoal
    }

    var sectionTitle: String {
        return "Five Year Goals"
    }

    var fiveYearGoal: String

    init(fiveYearGoal: String) {
        self.fiveYearGoal = fiveYearGoal
    }
}

class ProfileViewModelLifeGoalItem: ProfileViewModelItem {
    var type: ProfileViewModelItemType {
        return .lifeGoal
    }

    var sectionTitle: String {
        return "Life Goals"
    }

    var lifeGoal: String

    init(lifeGoal: String) {
        self.lifeGoal = lifeGoal
    }
}



