//
//  Constants.swift
//  finalProject
//
//  Created by Andrew Jenson on 4/13/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import Foundation
import UIKit

struct Constants {

    struct RizeBackgroundColor {
        static let rizeAppUIColor = UIColor(red: 255, green: 244, blue: 233)

    }

    //buttonTapped() doesn't occur when: checked
    //buttonTapped() does occur when: unchecked

    struct DoneTypeIcon {
        static let checked = "✅"
        static let unchecked = "☑︎"
    }


    struct Text {
        static let rizeEmail = "   RizeTheApp@gmail.com   "
    }

    struct Website {

        static let rizeFormURL = "https://forms.gle/BLoHBW61ZLnxoQiW8"
    }

    struct Icon {
        static let health = "icons8-heart_health"
        static let bored = "icons8-puzzled"
        static let lonely = "icons8-man"
        static let confident = "icons8-arms_up"
        static let comedian = "icons8-micro"
        static let podcasting = "icons8-browse_podcasts"
        static let playButton = "icons8-youtube_play_button"
        static let kitchen = "icons8-kitchen()"
        static let cleaning = "icons8-housekeeping"
        static let homeActivities = "icons8-reading"
        static let tvWatching = "icons8-retro_tv"
        static let homeOffice = "icons8-home_office"
        static let bedroom = "icons8-empty_bed"

        static let customers = "icons8-card_payment"
        static let betaVersion = "icons8-iphone" //"icons8-beta"
        static let founderAdvice = "icons8-leader"
        static let avoidFailure = "icons8-facepalm"
        static let earlyStage = "icons8-sprout"
        static let cofounders = "icons8-collaboration"
        static let ventureCapital = "icons8-coin_in_hand"
        static let competition = "icons8-wrestling"
        static let partnerships = "icons8-handshake"
        static let revenue = "icons8-us_dollar"
        static let operations = "icons8-organization"
        static let hiring = "icons8-user_groups"
        static let productMarket = "icons8-firework_explosion"

        static let setLocation = "icons8-full_image"
        static let setDesign = "icons8-paint_palette"
        static let casting = "icons8-people"
        static let pitching = "icons8-voice_recognition"
        static let hiringCrew = "icons8-user_group"
        static let directing = "icons8-leader" //"icons8-megaphone"
        static let directingActors = "icons8-collaboration" //"icons8-leader"
        static let lighting = "icons8-stage_light"
        static let firstDraft = "icons8-inscription"
        static let editing = "icons8-video_editing"

        static let cancel = "icons8-ok" //"icons8-cancel"
        static let undo = "icons8-undo"

        static let anxious = "icons8-confused"

        static let family = "icons8-full_family"
        static let snack = "icons8-apple"
        static let job = "icons8-commercial_development_management"
        static let date = "icons8-champagne"
        static let bar = "icons8-cocktail"
        static let cafe = "icons8-coffee"
        static let home = "icons8-cottage" //"icons8-exterior"
        static let food = "icons8-restaurant"
        static let restaurant = "icons8-restaurant" //"icons8-food"
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
        static let event = "icons8-collaboration"
        static let sideHustle = "icons8-launched_rocket" //"icons8-graph"
        static let gettingReady = "icons8-v_neck_t_shirt"
        static let goingOut = "icons8-v_neck_longsleeve"
        static let school = "icons8-graduation_cap"
        static let study = "icons8-grades"
        static let routine = "icons8-todo_list" //icons8-numbered_list //icons8-todo_list //icons8-sun //icons8-checklist
        static let routineAM = "icons8-sun"
        static let routinePM = "icons8-moon_symbol"

        static let work = "icons8-building" //"icons8-commercial_development_management" //icons8-under_computer
        static let jobSearch = "icons8-bullish" //"icons8-find_matching_job"
        static let travel = "icons8-map_marker" 
        static let motivate = "icons8-brainstorm_skill"
        static let quote = "icons8-quote"
        static let single = "icons8-love"//"icons8-men_age_group_4"
        static let relationship = "icons8-love"//"icons8-meeting"
        static let parenting = "icons8-single_father"
        static let journal = "icons8-journal"
        static let friends = "icons8-friends"

        static let goals = "icons8-trophy_2"
        static let boost = "icons8-cool" //"icons8-launched_rocket"
        static let wealth = "icons8-banknotes-1" //"icons8-coin_in_hand"
        static let motivation = "icons8-brainstorm_skill" //"icons8-idea_sharing"

        //mood
        static let mad = "icons8-angry"
        static let sad = "icons8-sad"
        static let neutral = "icons8-neutral_emoticon"
        static let good = "icons8-happy"
        static let great = "icons8-lol"

        //you
        static let screenwriting = "icons8-typewriter_with_paper"
        static let filmmaking = "icons8-documentary"


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

        static let preventIllness = "Prevent Illness 🤒"
        static let lookYounger = "Look Younger 🙂"
        static let millionaireHabit = "Millionaire Habit 💰"
        static let liveLonger = "Live Longer 👍"
        static let healthySkin = "Healthy Skin 🧴"
        static let liveSmarter = "Live Smarter 🤓"
        static let sleepBetter = "Sleep Better 😴"
        static let healthyChoice = "Healthy Choice 💪"
        static let increaseHappiness = "Increase Happiness 🙂"
        static let increaseSuccess = "Increase Success 🙌"
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
