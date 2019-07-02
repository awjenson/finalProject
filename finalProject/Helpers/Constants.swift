//
//  Constants.swift
//  finalProject
//
//  Created by Andrew Jenson on 4/13/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import Foundation

struct Constants {

    struct Icon {
        static let snack = "icons8-apple"
        static let job = "icons8-commercial_development_management"
        static let date = "icons8-champagne"
        static let bar = "icons8-cocktail"
        static let cafe = "icons8-coffee"
        static let home = "icons8-exterior"
        static let food = "icons8-restaurant"
        static let restaurant = "icons8-food"
        static let commute = "icons8-transportation"
        static let bedtime = "icons8-sleep"
        static let cantSleep = "icons8-undergo_insomnia"
        static let gym = "icons8-weightlift"
        static let shopping = "icons8-shopping_bag_full"
        static let groceries = "icons8-shopping_cart_loaded"
        static let relax = "icons8-walking"
        static let meditate = "icons8-meditation_guru"
        static let yoga = "icons8-yoga"
        static let running = "icons8-running"
        static let bathroom = "icons8-toilet_paper"
        static let safety = "icons8-siren"
        static let event = "icons8-people_working_together"
        static let gettingReady = "icons8-v_neck_t_shirt"
        static let goingOut = "icons8-exit_sign"
        static let school = "icons8-graduation_cap"
        static let routine = "icons8-checklist"
        static let work = "icons8-commercial_development_management"
        static let travel = "icons8-airplane_mode_on"


    }


    struct Image {
        static let alcohol = "alcohol"
        static let cereal = "cereal"
        static let coffee = "coffee"
        static let breakfast1 = "breakfast1"
        static let breakfast2 = "breakfast2"
        static let yogurt = "yogurt"
        static let unhealthyBreakfast = "unhealthyBreakfast"
    }

    struct Now {
//        static let selectedIconDisplay = "X"
    }

    struct Segue {
        static let newUserSegue = "toNewUserVC"
    }

    // MARK: UserDefaults
    
    struct UserDefaults {
        static let currentUser = "currentUser"
        static let uid = "uid"
        static let email = "email"
    }

    // MARK: NotificationKeys

    struct NotificationKeys {
        static let SignedIn = "onSignInCompleted"
    }

    // Journal

    struct Header {
        static let advice = "Advice to reduce anxiety"
        static let tip = "TIP"
        static let mindfulness = "MINDFULNESS"
        static let quote = "QUOTE"
        static let research = "RESEARCH"
        static let watch = "Tap to Watch ▶️"
    }

    struct SelectedMood {
        static let Button0 =  "Great"// Great
        static let Button1 =  "Good"// Good
        static let Button2 = "Bored" //
        static let Button3 = "Depressed" // Depressed
        static let Button4 = " Sad " // Sad

        static let Button5 =  "Proud"// Proud
        static let Button6 =  "Hopeful"// Hopeful
        static let Button7 = "Anxious" //
        static let Button8 = "Stressed" // Stressed
        static let Button9 = " Mad " // Mad

        static let Button10 =  "Calm"// Calm
        static let Button11 =  "Restless"// Restless (replaced Worry with Envious)
        static let Button12 = "Insecure"
        static let Button13 = "Envious" // Envious (replaced Worry with Envious)
        static let Button14 = "Lonely" // Lonely
    }

    struct JournalImages {
        static let morning = "morning"
        static let day = "day"
        static let afternoon = "afternoon"
        static let sunset = "sunset"
        static let night = "night"

        static let morning1 = "morning1"
        static let morning2 = "morning2"
        static let morning3 = "morning3"
        static let morning4 = "morning4"
        static let morning5 = "morning5"
        static let morning6 = "morning6"
        static let morning7 = "morning7"

        static let day1 = "day1"
        static let day2 = "day2"
        static let day3 = "day3"
        static let day4 = "day4"
        static let day5 = "day5"
        static let day6 = "day6"
        static let day7 = "day7"

        static let afternoon1 = "afternoon1"
        static let afternoon2 = "afternoon2"
        static let afternoon3 = "afternoon3"
        static let afternoon4 = "afternoon4"
        static let afternoon5 = "afternoon5"
        static let afternoon6 = "afternoon6"
        static let afternoon7 = "afternoon7"

        static let sunset1 = "sunset1"
        static let sunset2 = "sunset2"
        static let sunset3 = "sunset3"
        static let sunset4 = "sunset4"
        static let sunset5 = "sunset5"
        static let sunset6 = "sunset6"
        static let sunset7 = "sunset7"

        static let night1 = "night1"
        static let night2 = "night2"
        static let night3 = "night3"
        static let night4 = "night4"
        static let night5 = "night5"
        static let night6 = "night6"
        static let night7 = "night7"

    }

    // "😎=10, 💪=25, 🙌=66, 🔥=100, 🥉=200, 🥈=300, 🏆=400, ?🤔?=500"
    struct Habits {
        static let footerKey = "🔑 = Keystone Habits are correlated with developing other good habits while also reducing bad habits"
    }

}
