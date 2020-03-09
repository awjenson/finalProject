//
//  OldNowVCCode.swift
//  finalProject
//
//  Created by Andrew Jenson on 3/8/20.
//  Copyright © 2020 Andrew Jenson. All rights reserved.
//

import Foundation



//    @objc func runTimedCode() {
//
//        newHour = calendar.component(.hour, from: date)
//
//        if newHour != hour {
//            // refresh UI
//            print("REFRESH UI FOR NEW HOUR TIPS")
//
//            dayOfWeekAndHour()
//            nowTableViewSetup()
//
//        } else {
//            print("Original Hour \(hour) == Current Hour \(newHour)")
//        }
//    }


func refreshUI() {
    print("Refresh NowVC")

    //        performUIUpdatesOnMain {
    //            // removed animation because it was too slow
    //            self.nowTableView.setContentOffset(.zero, animated: false)
    //        }
    //
    //        topics = []
    //        tips = []
    //        topicButtons = []
    //
    //        quoteLabel.text = ""
    //        authorLabel.text = ""
    //
    //        topic0Button.titleLabel?.text = ""
    //        topic1Button.titleLabel?.text = ""
    //        topic2Button.titleLabel?.text = ""
    //        topic3Button.titleLabel?.text = ""
    //
    //        topic4Button.titleLabel?.text = ""
    //        topic5Button.titleLabel?.text = ""
    //        topic6Button.titleLabel?.text = ""
    //        topic7Button.titleLabel?.text = ""
    //
    //        resetTopicButtonOriginalStyle(button: topic0Button)
    //        resetTopicButtonOriginalStyle(button: topic1Button)
    //        resetTopicButtonOriginalStyle(button: topic2Button)
    //        resetTopicButtonOriginalStyle(button: topic3Button)
    //
    //        resetTopicButtonOriginalStyle(button: topic4Button)
    //        resetTopicButtonOriginalStyle(button: topic5Button)
    //        resetTopicButtonOriginalStyle(button: topic6Button)
    //        resetTopicButtonOriginalStyle(button: topic7Button)
    //
    //
    //
    //
    //        let blankTip1 = Tip(header: "", title: "", body: "" , sourceName: "", sourceURL: "", sponsorLogo: "", sponsorURL: "")
    //        let blankTip2 = Tip(header: "", title: "", body: "" , sourceName: "", sourceURL: "", sponsorLogo: "", sponsorURL: "")
    //        let blankTip3 = Tip(header: "", title: "", body: "" , sourceName: "", sourceURL: "", sponsorLogo: "", sponsorURL: "")
    //        let blankTip4 = Tip(header: "", title: "", body: "" , sourceName: "", sourceURL: "", sponsorLogo: "", sponsorURL: "")
    //
    //        let blankTipArray = [blankTip1, blankTip2, blankTip3, blankTip4]
    //
    //        let blankTopic0 = Topic(title: "", icon: "", tip: blankTipArray)
    //        let blankTopic1 = Topic(title: "", icon: "", tip: blankTipArray)
    //        let blankTopic2 = Topic(title: "", icon: "", tip: blankTipArray)
    //        let blankTopic3 = Topic(title: "", icon: "", tip: blankTipArray)
    //
    //        let blankTopic4 = Topic(title: "", icon: "", tip: blankTipArray)
    //        let blankTopic5 = Topic(title: "", icon: "", tip: blankTipArray)
    //        let blankTopic6 = Topic(title: "", icon: "", tip: blankTipArray)
    //        let blankTopic7 = Topic(title: "", icon: "", tip: blankTipArray)
    //        let blankNowTopic8 = Topic(title: "", icon: "", tip: blankTipArray)
    //
    //        // set UIButtons
    //        self.resetTopicButtonOriginalStyle(button: self.topic0Button)
    //        self.resetTopicButtonOriginalStyle(button: self.topic1Button)
    //        self.resetTopicButtonOriginalStyle(button: self.topic2Button)
    //        self.resetTopicButtonOriginalStyle(button: self.topic3Button)
    //        self.resetTopicButtonOriginalStyle(button: self.topic4Button)
    //        self.resetTopicButtonOriginalStyle(button: self.topic5Button)
    //        self.resetTopicButtonOriginalStyle(button: self.topic6Button)
    //        self.resetTopicButtonOriginalStyle(button: self.topic7Button)
    //
    //        appendNineTopics(blankTopic0, blankTopic1, blankTopic2, blankTopic3, blankTopic4, blankTopic5, blankTopic6, blankTopic7, blankNowTopic8)
    //
    //        nowTableView.reloadData()
    //
    //        setupUI()
    //
    //        performUIUpdatesOnMain {
    //            // removed animation because it was too slow
    //            self.nowTableView.reloadData()
    //            self.view.layoutIfNeeded()
    //            self.nowTableView.setContentOffset(.zero, animated: false)
    //        }
}




////    func setupQuoteOdd() {
////        print("Refresh COUNTER table view")
////        let dayOfWeek = calendar.component(.weekday, from: date)
////        let hour = calendar.component(.hour, from: date)
////
////        //
////        func sunday(_ hour: Int) {
////            switch hour {
////            case 0...9:
////                quote = QuoteData.Week1.sunday1
////            case 10...14:
////                quote = QuoteData.Week1.sunday2
////            case 15...18:
////                quote = QuoteData.Week1.sunday3
////            case 19...24:
////                quote = QuoteData.Week1.sunday4
////            default:
////                print("ERROR: INVALID HOUR!")
////            }
////        }
////
////        func monday(_ hour: Int) {
////            switch hour {
////            case 0...9:
////                quote = QuoteData.Week1.monday1
////            case 10...14:
////                quote = QuoteData.Week1.monday2
////            case 15...18:
////                quote = QuoteData.Week1.monday3
////            case 19...24:
////                quote = QuoteData.Week1.monday4
////            default:
////                print("ERROR: INVALID HOUR!")
////            }
////        }
////
////        func tuesday(_ hour: Int) {
////            switch hour {
////            case 0...9:
////                quote = QuoteData.Week1.tuesday1
////            case 10...14:
////                quote = QuoteData.Week1.tuesday2
////            case 15...18:
////                quote = QuoteData.Week1.tuesday3
////            case 19...24:
////                quote = QuoteData.Week1.tuesday4
////            default:
////                print("ERROR: INVALID HOUR!")
////            }
////        }
////
////        func wednesday(_ hour: Int) {
////            switch hour {
////            case 0...9:
////                quote = QuoteData.Week1.wednesday1
////            case 10...14:
////                quote = QuoteData.Week1.wednesday2
////            case 15...18:
////                quote = QuoteData.Week1.wednesday3
////            case 19...24:
////                quote = QuoteData.Week1.wednesday4
////            default:
////                print("ERROR: INVALID HOUR!")
////            }
////        }
////
////        func thursday(_ hour: Int) {
////            switch hour {
////            case 0...9:
////                quote = QuoteData.Week1.thursday1
////            case 10...14:
////                quote = QuoteData.Week1.thursday2
////            case 15...18:
////                quote = QuoteData.Week1.thursday3
////            case 19...24:
////                quote = QuoteData.Week1.thursday4
////            default:
////                print("ERROR: INVALID HOUR!")
////            }
////        }
////
////        func friday(_ hour: Int) {
////            switch hour {
////            case 0...9:
////                quote = QuoteData.Week1.friday1
////            case 10...14:
////                quote = QuoteData.Week1.friday2
////            case 15...18:
////                quote = QuoteData.Week1.friday3
////            case 19...24:
////                quote = QuoteData.Week1.friday4
////            default:
////                print("ERROR: INVALID HOUR!")
////            }
////        }
////
////        func saturday(_ hour: Int) {
////            switch hour {
////            case 0...9:
////                quote = QuoteData.Week1.saturday1
////            case 10...14:
////                quote = QuoteData.Week1.saturday2
////            case 15...18:
////                quote = QuoteData.Week1.saturday3
////            case 19...24:
////                quote = QuoteData.Week1.saturday4
////            default:
////                print("ERROR: INVALID HOUR!")
////            }
////        }
//
//        switch dayOfWeek {
//        case 1: // Sun
//            print("today is a weekend")
//            sunday(hour)
//        case 2:
//            monday(hour)
//        case 3:
//            tuesday(hour)
//        case 4:
//            wednesday(hour)
//        case 5:
//            thursday(hour)
//        case 6:
//            friday(hour)
//        case 7:
//            saturday(hour)
//        default:
//            print("ERROR: error with dayAndHour")
//            print(dayOfWeek)
//        }
//
//
//
//    }

//
//    func setupQuoteEven() {
//        print("Refresh COUNTER table view")
//        let dayOfWeek = calendar.component(.weekday, from: date)
//        let hour = calendar.component(.hour, from: date)
//
//        //
//        func sunday(_ hour: Int) {
//            switch hour {
//            case 0...9:
//                quote = QuoteData.Week2.sunday1
//            case 10...14:
//                quote = QuoteData.Week2.sunday2
//            case 15...18:
//                quote = QuoteData.Week2.sunday3
//            case 19...24:
//                quote = QuoteData.Week2.sunday4
//            default:
//                print("ERROR: INVALID HOUR!")
//            }
//        }
//
//        func monday(_ hour: Int) {
//            switch hour {
//            case 0...9:
//                quote = QuoteData.Week2.monday1
//            case 10...14:
//                quote = QuoteData.Week2.monday2
//            case 15...18:
//                quote = QuoteData.Week2.monday3
//            case 19...24:
//                quote = QuoteData.Week2.monday4
//            default:
//                print("ERROR: INVALID HOUR!")
//            }
//        }
//
//        func tuesday(_ hour: Int) {
//            switch hour {
//            case 0...9:
//                quote = QuoteData.Week2.tuesday1
//            case 10...14:
//                quote = QuoteData.Week2.tuesday2
//            case 15...18:
//                quote = QuoteData.Week2.tuesday3
//            case 19...24:
//                quote = QuoteData.Week2.tuesday4
//            default:
//                print("ERROR: INVALID HOUR!")
//            }
//        }
//
//        func wednesday(_ hour: Int) {
//            switch hour {
//            case 0...9:
//                quote = QuoteData.Week2.wednesday1
//            case 10...14:
//                quote = QuoteData.Week2.wednesday2
//            case 15...18:
//                quote = QuoteData.Week2.wednesday3
//            case 19...24:
//                quote = QuoteData.Week2.wednesday4
//            default:
//                print("ERROR: INVALID HOUR!")
//            }
//        }
//
//        func thursday(_ hour: Int) {
//            switch hour {
//            case 0...9:
//                quote = QuoteData.Week2.thursday1
//            case 10...14:
//                quote = QuoteData.Week2.thursday2
//            case 15...18:
//                quote = QuoteData.Week2.thursday3
//            case 19...24:
//                quote = QuoteData.Week2.thursday4
//            default:
//                print("ERROR: INVALID HOUR!")
//            }
//        }
//
//        func friday(_ hour: Int) {
//            switch hour {
//            case 0...9:
//                quote = QuoteData.Week2.friday1
//            case 10...14:
//                quote = QuoteData.Week2.friday2
//            case 15...18:
//                quote = QuoteData.Week2.friday3
//            case 19...24:
//                quote = QuoteData.Week2.friday4
//            default:
//                print("ERROR: INVALID HOUR!")
//            }
//        }
//
//        func saturday(_ hour: Int) {
//            switch hour {
//            case 0...9:
//                quote = QuoteData.Week2.saturday1
//            case 10...14:
//                quote = QuoteData.Week2.saturday2
//            case 15...18:
//                quote = QuoteData.Week2.saturday3
//            case 19...24:
//                quote = QuoteData.Week2.saturday4
//            default:
//                print("ERROR: INVALID HOUR!")
//            }
//        }
//
//        switch dayOfWeek {
//        case 1: // Sun
//            print("today is a weekend")
//            sunday(hour)
//        case 2:
//            monday(hour)
//        case 3:
//            tuesday(hour)
//        case 4:
//            wednesday(hour)
//        case 5:
//            thursday(hour)
//        case 6:
//            friday(hour)
//        case 7:
//            saturday(hour)
//        default:
//            print("ERROR: error with dayAndHour")
//            print(dayOfWeek)
//        }
//
//    }









//Inside dayOfWeek(){}

//        func week2() {
//            print("Even Week")
//
//            switch dayOfWeek {
//            case 1: // Sunday
//                print("today is Sunday")
//                sunday2(hour)
//            case 2: // Monday
//                print("today is a Monday")
//                monday2(hour)
//            case 3: // Tuesday
//                print("today is a Tuesday")
//                tuesday2(hour)
//            case 4: // Wednesday
//                print("today is a Wednesday")
//                wednesday2(hour)
//            case 5: // Thursday
//                print("today is Thursday")
//                thursday2(hour)
//            case 6: // Friday
//                print("today is Friday")
//                friday2(hour)
//            case 7: // Saturday
//                print("today is Saturday")
//                saturday2(hour)
//            default:
//                print("ERROR: error with dayAndHour")
//            }
//        }
//
//        func week3() {
//            print("Even Week")
//
//            switch dayOfWeek {
//            case 1: // Sunday
//                print("today is Sunday")
//                sunday3(hour)
//            case 2: // Monday
//                print("today is a Monday")
//                monday3(hour)
//            case 3: // Tuesday
//                print("today is a Tuesday")
//                tuesday3(hour)
//            case 4: // Wednesday
//                print("today is a Wednesday")
//                wednesday3(hour)
//            case 5: // Thursday
//                print("today is Thursday")
//                thursday3(hour)
//            case 6: // Friday
//                print("today is Friday")
//                friday3(hour)
//            case 7: // Saturday
//                print("today is Saturday")
//                saturday3(hour)
//            default:
//                print("ERROR: error with dayAndHour")
//            }
//        }
//
//        func week4() {
//            print("Even Week")
//
//            switch dayOfWeek {
//            case 1: // Sunday
//                print("today is Sunday")
//                sunday4(hour)
//            case 2: // Monday
//                print("today is a Monday")
//                monday4(hour)
//            case 3: // Tuesday
//                print("today is a Tuesday")
//                tuesday4(hour)
//            case 4: // Wednesday
//                print("today is a Wednesday")
//                wednesday4(hour)
//            case 5: // Thursday
//                print("today is Thursday")
//                thursday4(hour)
//            case 6: // Friday
//                print("today is Friday")
//                friday4(hour)
//            case 7: // Saturday
//                print("today is Saturday")
//                saturday4(hour)
//            default:
//                print("ERROR: error with dayAndHour")
//            }
//        }
//
//        func week5() {
//            print("Even Week")
//
//            switch dayOfWeek {
//            case 1: // Sunday
//                print("today is Sunday")
//                sunday5(hour)
//            case 2: // Monday
//                print("today is a Monday")
//                monday5(hour)
//            case 3: // Tuesday
//                print("today is a Tuesday")
//                tuesday5(hour)
//            case 4: // Wednesday
//                print("today is a Wednesday")
//                wednesday5(hour)
//            case 5: // Thursday
//                print("today is Thursday")
//                thursday5(hour)
//            case 6: // Friday
//                print("today is Friday")
//                friday5(hour)
//            case 7: // Saturday
//                print("today is Saturday")
//                saturday5(hour)
//            default:
//                print("ERROR: error with dayAndHour")
//            }
//        }






//    //HIDDEN CODE
//
//    //MARK: - WEEK 2
//
//    func sunday2(_ hour: Int) {
//        switch hour {
//        case 0...4:
//            print("Weekend, Very Early Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(dinnerAfter9PMTopic0, barTopic0, networkingTopic0, safetyTopic0,
//                             restaurantTopic7, lateNightSnackTopic0, groceryStoreTopic7, bathroomPMTopic0, homeAMTopic0, travelTopic0, bedtimeTopic0, cantSleepTopic0,
//                             sunday0to4Topic2)
//
//        case 5...8:
//            print("Weekend, Early Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(AMRoutineTopic0, gymTopic7, runningTopic0, yogaTopic0, homeAMTopic0, bathroomTopic0, getReadyAMTopic0, breakfastTopic0, cafeTopic0, networkingTopic0, groceryStoreTopic7, travelTopic2,
//                             sundayNow5to8Topic2)
//
//        case 9:
//            print("Weekend, Early Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(AMRoutineTopic0, gymTopic7, runningTopic0, yogaTopic0, homeAMTopic0, bathroomTopic0, getReadyAMTopic0, breakfastTopic0, cafeTopic0, networkingTopic0, groceryStoreWENDTopic0, travelTopic2,
//                             sundayNow9to10Topic1)
//
//        case 10:
//            print("Weekend, Late Morning")
//            // call function to display 9 time-based topics // ****
//            appendNineTopics(AMRoutineTopic0, gymTopic7, runningTopic0, yogaTopic0, homeAMTopic0, getReadyAMTopic0, brunchTopic0, cafeTopic0,
//                             networkingTopic0, groceryStoreTopic7, shoppingClothesTopic0, travelTopic2,
//                             sundayNow9to10Topic1)
//
//        case 11...13:
//            print("Weekend, Midday")
//            appendNineTopics(homeAMTopic0, gymTopic7, runningTopic0, cafePMTopic0, brunchTopic0, lunchTopic0, restaurantTopic7, barTopic0, networkingTopic0, groceryStoreTopic7, shoppingClothesTopic0, travelTopic2,
//                             sundayNow11to13Topic2)
//
//        case 14...16:
//            print("Weekend, Afternoon")
//            // call function to display 9 time-based topics
//            appendNineTopics(homePMTopic0, gymTopic7, runningTopic0, yogaTopic0, afternoonSnackTopic0, cafePMTopic0, barTopic0, networkingTopic0, dateTopic0, shoppingClothesTopic0, groceryStoreTopic7, travelTopic2,
//                             sundayNow14to16Topic2)
//
//        case 17...18:
//            print("Weekend, Early Evening")
//            // call function to display 9 time-based topics
//            appendNineTopics(homePMTopic0, dinnerTopic0, restaurantTopic7, barTopic0, dateTopic0, networkingTopic0, groceryStoreTopic7, shoppingClothesTopic0, gymTopic7, runningTopic0, yogaTopic0, travelTopic2,
//                             sundayNow17to18Topic2)
//
//        case 19...20:
//            print("Weekend, Mid Evening")
//            // call function to display 9 time-based topics
//            appendNineTopics(homePMTopic0, dinnerTopic0, restaurantTopic7, barTopic0, dateTopic0, safetyTopic0, groceryStoreTopic7, shoppingClothesTopic0, gymTopic7, runningTopic0, yogaTopic0, travelTopic2,
//                             sundayNow19to20Topic2)
//
//        case 21..<24:
//            print("Weekend, Late evening")
//            // call function to display 9 time-based topics
//            appendNineTopics(dinnerAfter9PMTopic0, lateNightSnackTopic0, barTopic0, networkingTopic0,
//                             dateTopic0, safetyTopic0, gymTopic7, homePMTopic0,
//                             bathroomPMTopic0, travelTopic0, bedtimeTopic0, cantSleepTopic0,
//                             sunday21to24Topic2)
//
//        default:
//            print("Weekend,INVALID HOUR!")
//        }
//    }
//
//    // Monday (2)
//
//    // More people Google 'diet' and go to the gym at the start of the week, month year
//    // Same with starting a new job or new semester, they give us a fresh start
//    func monday2(_ hour: Int) {
//        switch hour {
//        case 0...4:
//            print("weekdayMTW, Very Early Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(dinnerAfter9PMTopic1, barTopic1, networkingTopic1, safetyTopic1,
//                             restaurantTopic8, lateNightSnackTopic1, groceryStoreTopic8, bathroomPMTopic1,
//                             homePMTopic1, travelTopic1, bedtimeTopic1, cantSleepTopic1,
//                             mondayNow0to4Topic2)
//
//        case 5...7:
//            print("weekdayMTW, Early Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(AMRoutineTopic1, gymTopic8, runningTopic1, yogaTopic1, getReadyAMTopic1, breakfastTopic1, bathroomTopic1, homeAMTopic0, cafeTopic1, commuteAMTopic0, workAMTopic1, schoolAMTopic1,
//                             mondayNow5to8Topic2)
//
//            // meditate, journal,
//            // work, networking
//
//        case 8:
//            print("weekdayMTW, arly Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(AMRoutineTopic1, gymTopic1, runningTopic1, yogaTopic1, getReadyAMTopic1, breakfastTopic1, bathroomTopic1, homeAMTopic1,
//                             cafeTopic1, commuteAMTopic0, workAMTopic1, schoolAMTopic1,
//                             mondayNow5to8Topic2)
//
//        case 9:
//            print("weekdayMTW, mid Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(AMRoutineTopic0, gymTopic2, runningTopic1, yogaTopic0,  getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic0, workAMTopic5, networkingTopic1, schoolAMTopic1,
//                             mondayNow9to11Topic2)
//
//        case 10:
//            print("weekdayMTW, Late Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(gymTopic2, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic0, workAMTopic5, networkingTopic1, morningSnackTopic0, breakTopic0, schoolAMTopic1,
//                             mondayNow9to11Topic2)
//
//        case 11:
//            print("weekdayMTW, Late Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(morningSnackTopic0, lunchTopic1, restaurantTopic8, cafeTopic1, gymTopic2, runningTopic1, yogaTopic0, workAMTopic5, bathroomTopic1, networkingTopic2, breakTopic0, schoolAMTopic1,
//                             mondayNow11to13Topic2)
//
//        case 12...13:
//            print("weekdayMTW, Midday")
//            appendNineTopics(lunchTopic1, restaurantTopic8, cafePMTopic1, afternoonSnackTopic0, gymTopic2, runningTopic1, yogaTopic0, workPMTopic5, bathroomTopic1, networkingTopic2, breakTopic0, schoolPMTopic1,
//                             mondayNow11to13Topic2)
//
//        case 14...15:
//            print("weekdayMTW, Afternoon")
//            // call function to display 9 time-based topics
//            appendNineTopics(afternoonSnackTopic1, cafePMTopic0, workPMTopic5, networkingTopic3, breakPMTopic0, commutePMTopic0, groceryStoreTopic8, shoppingClothesTopic0, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
//                             mondayNow14to16Topic2)
//
//        case 16:
//            print("weekdayMTW, Afternoon")
//            // call function to display 9 time-based topics
//            appendNineTopics(workPMTopic5, afternoonSnackTopic2, breakPMTopic0, commutePMTopic0, groceryStoreTopic8, shoppingClothesTopic0, happyHourTopic0, networkingTopic3, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
//                             mondayNow14to16Topic2)
//
//        case 17...18:
//            print("weekdayMTW, Early-Evening")
//
//            appendNineTopics(workLateTopic0, commutePMTopic0, gymTopic2, runningTopic0, yogaTopic0, groceryStoreTopic8, shoppingClothesTopic0, dinnerTopic1, restaurantTopic8, happyHourTopic0, networkingTopic3, homePMTopic1,
//                             mondayNow17to18Topic2)
//
//        case 19...20:
//            print("Weekday, Evening")
//            // call function to display 9 time-based topics
//            appendNineTopics(gymTopic2, runningTopic0, yogaTopic0, groceryStoreTopic8, shoppingClothesTopic0, dinnerTopic1, restaurantTopic8, barTopic5, dateTopic2, networkingTopic1, safetyTopic2, homePMTopic1,
//                             mondayNow19to20Topic2)
//
//        case 21..<24:
//            print("Weekday, Late evening")
//            // call function to display 9 time-based topics
//            appendNineTopics(dinnerAfter9PMTopic0, restaurantTopic8, barTopic0, networkingTopic1, dateTopic2, safetyTopic2, homePMTopic1, lateNightSnackTopic1, bathroomPMTopic1, eveningRoutineTopic0, bedtimeTopic1, cantSleepTopic2,
//                             mondayNow21to24Topic2)
//
//
//        default:
//            print("Weekday,INVALID HOUR!")
//        }
//    }
//
//    // Tuesday (3)
//
//    func tuesday2(_ hour: Int) {
//        switch hour {
//        case 0...4:
//            print("weekdayMTW, Very Early Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(dinnerAfter9PMTopic0, barTopic3, networkingTopic1, safetyTopic2,
//                             restaurantTopic9, lateNightSnackTopic0, groceryStoreTopic9, bathroomPMTopic0, homePMTopic1, eveningRoutineTopic1, bedtimeTopic1, cantSleepTopic2,
//                             tuesdayNow0to4Topic2)
//
//        case 5...7:
//            print("weekdayMTW, Early Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(AMRoutineTopic3, getReadyAMTopic1, gymTopic2, yogaTopic0, runningTopic1, breakfastTopic1, bathroomTopic1, homeAMTopic0, cafeTopic1, commuteTuesdayAMTopic0, workAMTopic6, schoolAMTopic3,
//                             tuesdayNow5to8Topic2) //*
//
//        case 8:
//            print("weekdayMTW, Early Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, homeAMTopic0,
//                             cafeTopic1, commuteTuesdayAMTopic0, workAMTopic6, schoolAMTopic3,
//                             tuesdayNow5to8Topic2) //*
//
//        case 9:
//            print("weekdayMTW, Mid Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteTuesdayAMTopic0, workAMTopic6, networkingTopic1, schoolAMTopic3,
//                             tuesdayNow9to11Topic2) //*
//
//        case 10:
//            print("weekdayMTW, Late Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(gymTopic2, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteTuesdayAMTopic0, workAMTopic6, networkingTopic1, morningSnackTopic0, breakTopic0, schoolAMTopic3,
//                             tuesdayNow9to11Topic2)
//
//        case 11:
//            print("weekdayMTW, Late Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(lunchTopic3, restaurantTopic9, cafePMTopic1, afternoonSnackTopic0, gymTopic3, yogaTopic0, runningTopic1, workAMTopic6, bathroomTopic1, breakTopic0, networkingTopic2, schoolPMTopic3,
//                             tuesdayNow11to13Topic2)
//
//        case 12...13:
//            print("weekdayMTW, Midday")
//            appendNineTopics(lunchTopic1, restaurantTopic9, cafePMTopic1, afternoonSnackTopic0, gymTopic2, runningTopic1, yogaTopic0, workPMTopic6, bathroomTopic1, networkingTopic2, breakTopic0, schoolPMTopic1,
//                             tuesdayNow11to13Topic2) // Tues specific tips
//
//        case 14...15:
//            print("weekdayMTW, Afternoon")
//            // call function to display 9 time-based topics
//            appendNineTopics(afternoonSnackTopic1, cafePMTopic0, workPMTopic6, networkingTopic3, breakPMTopic0, commutePMTopic0, groceryStoreTopic9, shoppingClothesTopic0, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
//                             tuesdayNow14to16Topic2)
//
//        case 16:
//            print("weekdayMTW, Afternoon")
//            // call function to display 9 time-based topics
//            appendNineTopics(workPMTopic6, afternoonSnackTopic2, breakPMTopic0, commutePMTopic0, groceryStoreTopic9, shoppingClothesTopic0, happyHourTopic0, networkingTopic3, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
//                             tuesdayNow14to16Topic2)
//
//        case 17...18:
//            print("weekdayMTW, Early-Evening")
//            appendNineTopics(workLateTopic0, commutePMTopic0, gymTopic2, runningTopic0, yogaTopic0, groceryStoreTopic9, shoppingClothesTopic0, dinnerTopic1, restaurantTopic9, happyHourTopic0, networkingTopic3, homePMTopic1,
//                             tuesdayNow17to18Topic2)
//
//
//        case 19...20:
//            print("Weekday, Evening")
//            // call function to display 9 time-based topics
//            appendNineTopics(gymTopic2, runningTopic0, yogaTopic0, groceryStoreTopic9, shoppingClothesTopic0, dinnerTopic1, restaurantTopic9, barTopic5, dateTopic2, networkingTopic1, safetyTopic2, homePMTopic1,
//                             tuesdayNow19to20Topic2)
//
//        case 21..<24:
//            print("Weekday, Late evening")
//            // call function to display 9 time-based topics
//            appendNineTopics(dinnerAfter9PMTopic0, restaurantTopic9, barTopic0, networkingTopic1, dateTopic2, safetyTopic2, homePMTopic1, lateNightSnackTopic1, bathroomPMTopic1, eveningRoutineTopic0, bedtimeTopic1, cantSleepTopic2,
//                             tuesdayNow21to24Topic2)
//
//        default:
//            print("Weekday,INVALID HOUR!")
//        }
//    }
//
//    // Wednesday (4)
//
//    func wednesday2(_ hour: Int) {
//        switch hour {
//        case 0...4:
//            print("weekdayMTW, Very Early Morning")
//            appendNineTopics(dinnerAfter9PMTopic0, barTopic3, networkingTopic1, safetyTopic2,
//                             restaurantTopic10, lateNightSnackTopic0, groceryStoreTopic10, bathroomPMTopic0, homePMTopic1, eveningRoutineTopic1, bedtimeTopic1, cantSleepTopic2,
//                             wednesdayNow0to4Topic2)
//
//            setNatureImage(to: "night4")
//
//        case 5...7:
//            print("weekdayMTW, Early Morning")
//            appendNineTopics(AMRoutineTopic3, getReadyAMTopic1, gymTopic2, yogaTopic0, runningTopic1, breakfastTopic1, bathroomTopic1, homeAMTopic0, cafeTopic1, commuteAMTopic5, workAMTopic7, schoolAMTopic3,
//                             wednesdayNow5to8Topic2) //*
//
//            setNatureImage(to: "morning4")
//
//        case 8:
//            print("weekdayMTW, Mid Morning")
//            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, homeAMTopic0,
//                             cafeTopic1, commuteAMTopic5, workAMTopic7, schoolAMTopic3,
//                             wednesdayNow5to8Topic2)
//
//            setNatureImage(to: "morning4")
//
//        case 9:
//            print("weekdayMTW, Mid Morning")
//            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic7, networkingTopic1, schoolAMTopic3,
//                             wednesdayNow9to11Topic2)
//
//            setNatureImage(to: "midmorning4")
//
//        case 10:
//            print("weekdayMTW, Late Morning")
//            appendNineTopics(gymTopic2, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic7, networkingTopic1, morningSnackTopic0, breakTopic0, schoolAMTopic3,
//                             wednesdayNow9to11Topic2)
//
//            setNatureImage(to: "midmorning4")
//
//
//        case 11:
//            appendNineTopics(lunchTopic3, restaurantTopic10, cafePMTopic1, afternoonSnackTopic0, gymTopic3, yogaTopic0, runningTopic1, workAMTopic7, bathroomTopic1, breakTopic0, networkingTopic2, schoolPMTopic3,
//                             wednesdayNow11to13Topic2)
//
//            setNatureImage(to: "day4")
//
//
//        case 12...13:
//            print("weekdayMTW, Midday")
//            appendNineTopics(lunchTopic1, restaurantTopic10, cafePMTopic1, afternoonSnackTopic0, gymTopic2, runningTopic1, yogaTopic0, workPMTopic7, bathroomTopic1, networkingTopic2, breakTopic0, schoolPMTopic1,
//                             wednesdayNow11to13Topic2)
//
//            setNatureImage(to: "day4")
//
//
//        case 14...15:
//            print("weekdayMTW, Afternoon")
//            appendNineTopics(afternoonSnackTopic1, cafePMTopic0, workPMTopic7, networkingTopic3, breakPMTopic0, commutePMTopic0, groceryStoreTopic10, shoppingClothesTopic0, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
//                             wednesdayNow14to16Topic2)
//
//            setNatureImage(to: "afternoon4")
//
//        case 16:
//            print("weekdayMTW, Afternoon")
//            appendNineTopics(workPMTopic7, afternoonSnackTopic2, breakPMTopic0, commutePMTopic0, groceryStoreTopic10, shoppingClothesTopic0, happyHourTopic0, networkingTopic3, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
//                             wednesdayNow14to16Topic2)
//
//            setNatureImage(to: "afternoon4")
//
//
//        case 17...18:
//            print("weekdayMTW, Early-Evening")
//            appendNineTopics(workLateTopic0, commutePMTopic0, gymTopic2, runningTopic0, yogaTopic0, groceryStoreTopic10, shoppingClothesTopic0, dinnerTopic1, restaurantTopic10, happyHourTopic0, networkingTopic3, homePMTopic1,
//                             wednesdayNow17to18Topic2)
//
//            setNatureImage(to: "sunset4")
//
//        case 19...20:
//            print("Weekday, Evening")
//            appendNineTopics(gymTopic2, runningTopic0, yogaTopic0, groceryStoreTopic10, shoppingClothesTopic0, dinnerTopic1, restaurantTopic10, barTopic5, dateTopic2, networkingTopic1, safetyTopic2, homePMTopic1,
//                             wednesdayNow19to20Topic2)
//
//            setNatureImage(to: "sunset4")
//
//        case 21..<24:
//            print("Weekday, Late evening")
//            appendNineTopics(dinnerAfter9PMTopic0, restaurantTopic10, barTopic0, networkingTopic1, dateTopic2, safetyTopic2, homePMTopic1, lateNightSnackTopic1, bathroomPMTopic1, eveningRoutineTopic0, bedtimeTopic1, cantSleepTopic2,
//                             wednesdayNow21to24Topic2)
//
//            setNatureImage(to: "night4")
//
//        default:
//            print("Weekday,INVALID HOUR!")
//        }
//    }
//
//    // Thursday (5)
//
//    func thursday2(_ hour: Int) {
//        switch hour {
//        case 0...4:
//            print("weekdayTF, Very Early Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(dinnerAfter9PMTopic0, barTopic3, networkingTopic1, safetyTopic2,
//                             restaurantTopic11, lateNightSnackTopic0, groceryStoreTopic11, bathroomPMTopic0, homePMTopic1, eveningRoutineTopic1, bedtimeTopic1, cantSleepTopic2,
//                             thursdayNow0to4Topic2)
//
//            setNatureImage(to: "night5")
//
//        case 5...7:
//            print("weekdayTF, Early Morning")
//            appendNineTopics(AMRoutineTopic3, getReadyAMTopic1, gymTopic2, yogaTopic0, runningTopic1, breakfastTopic1, bathroomTopic1, homeAMTopic0, cafeTopic1, commuteAMTopic5, workAMTopic8, schoolAMTopic3,
//                             thursdayNow5to8Topic2)
//
//            setNatureImage(to: "morning5")
//
//
//        case 8:
//            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, homeAMTopic0,
//                             cafeTopic1, commuteAMTopic5, workAMTopic8, schoolAMTopic3,
//                             thursdayNow5to8Topic2)
//
//            setNatureImage(to: "morning5")
//
//        case 9:
//            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic8, networkingTopic1, schoolAMTopic3,
//                             thursdayNow9to11Topic2)
//
//            setNatureImage(to: "midmorning5")
//
//        case 10:
//            print("weekdayTF, Late Morning")
//            appendNineTopics(gymTopic2, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic8, networkingTopic1, morningSnackTopic0, breakTopic0, schoolAMTopic3,
//                             thursdayNow9to11Topic2)
//
//            setNatureImage(to: "midmorning5")
//
//
//        case 11:
//            print("weekdayTF, Late Morning")
//            appendNineTopics(lunchTopic3, restaurantTopic11, cafePMTopic1, afternoonSnackTopic0, gymTopic3, yogaTopic0, runningTopic1, workAMTopic8, bathroomTopic1, breakTopic0, networkingTopic2, schoolPMTopic3,
//                             thursdayNow11to13Topic2)
//
//            setNatureImage(to: "midmorning5")
//
//        case 12...13:
//            print("weekdayTF, Midday")
//            appendNineTopics(lunchTopic1, restaurantTopic11, cafePMTopic1, afternoonSnackTopic0, gymTopic2, runningTopic1, yogaTopic0, workPMTopic8, bathroomTopic1, networkingTopic2, breakTopic0, schoolPMTopic1,
//                             thursdayNow11to13Topic2)
//
//            setNatureImage(to: "day5")
//
//
//        case 14...15: // 2PM-4PM
//            print("weekdayTF, Afternoon")
//
//            appendNineTopics(afternoonSnackTopic1, cafePMTopic0, workPMTopic8, networkingTopic3, breakPMTopic0, commutePMTopic0, groceryStoreTopic11, shoppingClothesTopic0, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
//                             thursdayNow14to16Topic2)
//
//            setNatureImage(to: "afternoon5")
//
//
//        case 16:
//            print("weekdayTF, Afternoon")
//            appendNineTopics(workPMTopic8, afternoonSnackTopic2, breakPMTopic0, commutePMTopic0, groceryStoreTopic11, shoppingClothesTopic0, happyHourTopic0, networkingTopic3, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
//                             thursdayNow14to16Topic2)
//
//            setNatureImage(to: "afternoon5")
//
//
//        case 17...18:
//            print("weekdayTF, Evening 5PM")
//            appendNineTopics(workLateTopic0, commutePMTopic0, gymTopic2, runningTopic0, yogaTopic0, groceryStoreTopic11, shoppingClothesTopic0, dinnerTopic1, restaurantTopic11, happyHourTopic0, networkingTopic3, homePMTopic1,
//                             thursdayNow17to18Topic2)
//
//            setNatureImage(to: "afternoon5")
//
//
//        case 19...20:
//            print("weekdayTF, Evening")
//            appendNineTopics(gymTopic2, runningTopic0, yogaTopic0, groceryStoreTopic11, shoppingClothesTopic0, dinnerTopic1, restaurantTopic11, barTopic5, dateTopic2, networkingTopic1, safetyTopic2, homePMTopic1,
//                             thursdayNow19to20Topic2)
//
//            setNatureImage(to: "sunset5")
//
//        case 21..<24:
//            print("weekdayTF, Late evening")
//            // call function to display 9 time-based topics
//            appendNineTopics(dinnerAfter9PMTopic0, restaurantTopic11, barTopic0, networkingTopic1, dateTopic2, safetyTopic2, homePMTopic1, lateNightSnackTopic1, bathroomPMTopic1, eveningRoutineTopic0, bedtimeTopic1, cantSleepTopic2,
//                             thursdayNow21to24Topic2)
//
//            setNatureImage(to: "night5")
//
//
//        default:
//            print("weekdayTF,INVALID HOUR!")
//        }
//    }
//
//    //Friday (6)
//
//    func friday2(_ hour: Int) {
//        switch hour {
//        case 0...4:
//            print("weekday Fri, Very Early Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(dinnerAfter9PMTopic0, barTopic3, networkingTopic1, safetyTopic2,
//                             restaurantTopic12, lateNightSnackTopic0, groceryStoreTopic12, bathroomPMTopic0, homePMTopic1, eveningRoutineTopic1, bedtimeTopic1, cantSleepTopic2,
//                             fridayNow0to4Topic2)
//
//            setNatureImage(to: "night6")
//
//        case 5...7:
//            print("weekday Fri, Early Morning")
//            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic1, breakfastTopic1, bathroomTopic1, homeAMTopic0, cafeTopic1, commuteAMTopic5, workAMTopic9, schoolAMTopic3,
//                             fridayNow5to8Topic2)
//
//            setNatureImage(to: "morning6")
//
//
//        case 8:
//            print("weekday Fri, Late Morning")
//            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, homeAMTopic0,
//                             cafeTopic1, commuteAMTopic5, workAMTopic9, schoolAMTopic3,
//                             fridayNow5to8Topic2)
//
//            setNatureImage(to: "midmorning6")
//
//        case 9:
//            print("weekday Fri, Late Morning")
//            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic9, networkingTopic1, schoolAMTopic3,
//                             fridayNow9to11Topic2)
//
//            setNatureImage(to: "midmorning6")
//
//
//        case 10:
//            print("weekday Fri, Late Morning")
//            appendNineTopics(gymTopic2, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic9, networkingTopic1, morningSnackTopic0, breakTopic0, schoolAMTopic3,
//                             fridayNow9to11Topic2)
//
//            setNatureImage(to: "midmorning6")
//
//
//        case 11:
//            print("weekday Fri, Midday")
//            appendNineTopics(lunchTopic3, restaurantTopic12, cafePMTopic1, afternoonSnackTopic0, gymTopic3, runningTopic1, workAMTopic9, bathroomTopic1, breakTopic0, networkingTopic2, travelTopic2, schoolPMTopic3,
//                             fridayNow11to13Topic2)
//
//            setNatureImage(to: "day6")
//
//
//        case 12...13:
//            print("weekday Fri, Midday")
//            appendNineTopics(lunchTopic1, restaurantTopic12, cafePMTopic1, afternoonSnackTopic0, gymTopic2, runningTopic1, workPMTopic9, bathroomTopic1, networkingTopic2, breakTopic0, travelTopic2, schoolPMTopic1,
//                             fridayNow11to13Topic2)
//
//            setNatureImage(to: "day6")
//
//        case 14...15:
//            ////FRIDAY ONLY COMMUTE
//            print("weekday Fri, Afternoon")
//            appendNineTopics(afternoonSnackTopic1, cafePMTopic0, workPMTopic9, networkingTopic4, breakPMTopic1, commuteFridayPMTopic0, groceryStoreTopic12, shoppingClothesTopic0, gymTopic10, runningTopic0, travelTopic2, schoolPMTopic2,
//                             fridayNow14to16Topic2)
//
//            setNatureImage(to: "afternoon6")
//
//
//        case 16:
//            ////FRIDAY ONLY COMMUTE
//            print("weekday Fri, Afternoon")
//            appendNineTopics(afternoonSnackTopic2, cafePMTopic0, workPMTopic9, breakPMTopic1, commuteFridayPMTopic0, gymTopic10, runningTopic0, happyHourTopic0, networkingTopic4, groceryStoreTopic12, shoppingClothesTopic0, travelTopic2,
//                             fridayNow14to16Topic2)
//
//            setNatureImage(to: "afternoon6")
//
//
//        case 17...18:
//            print("weekday Fri, Evening 5-6PM")
//
//            ////FRIDAY ONLY COMMUTE
//            appendNineTopics(commuteFridayPMTopic0, gymTopic10, runningTopic0, homePMTopic5, goingOutTopic0, happyHourTopic0, networkingTopic1, dinnerTopic5, restaurantTopic12, groceryStoreTopic12, shoppingClothesTopic0,  travelTopic2,
//                             fridayNow17to18Topic2)
//
//            setNatureImage(to: "afternoon6")
//
//        case 19...20:
//            print("weekday Fri, Evening 7-8PM")
//            // call function to display 9 time-based topics
//            appendNineTopics(gymTopic10, runningTopic0, homePMTopic5, goingOutTopic0, dinnerTopic5, restaurantTopic12, barTopic5, networkingTopic1, dateTopic0, safetyTopic6, groceryStoreTopic12, travelTopic2,
//                             fridayNow19to20Topic2)
//
//            setNatureImage(to: "sunset6")
//
//
//        case 21..<24:
//            print("weekdayTF, Late evening 9-12PM")
//            // call function to display 9 time-based topics
//            appendNineTopics(homePMTopic5, goingOutTopic0, dinnerAfter9PMTopic4, restaurantTopic12,  barTopic0, networkingTopic1, dateTopic2, safetyTopic6,
//                             lateNightSnackTopic1, eveningRoutineTopic0, bedtimeFriPMTopic5, cantSleepTopic3,
//                             fridayNow21to24Topic2)
//
//            setNatureImage(to: "night6")
//
//        default:
//            print("weekdayTF,INVALID HOUR!")
//        }
//    }
//
//    //Saturday (7)
//
//    func saturday2(_ hour: Int) {
//        switch hour {
//        case 0...4:
//            print("Weekend, Very Early Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(dinnerAfter9PMTopic0, barTopic3, networkingTopic1, safetyTopic2,
//                             restaurantTopic13, lateNightSnackTopic0, groceryStoreTopic13, bathroomPMTopic0, homePMTopic1, eveningRoutineTopic1, bedtimeTopic1, cantSleepTopic2,
//                             saturday0to4Topic2)
//
//        case 5...8:
//            print("Weekend, Early Morning")
//            appendNineTopics(AMRoutineTopic0, gymTopic0, runningTopic0, yogaTopic0, homeAMTopic0, bathroomTopic0, getReadyAMTopic0, breakfastTopic0, cafeTopic0, networkingTopic1, groceryStoreTopic13, travelTopic2,
//                             saturdayNow5to8Topic2)
//
//        case 9:
//            print("Weekend, Early Morning")
//            appendNineTopics(AMRoutineTopic0, gymTopic0,  runningTopic0, yogaTopic0, homeAMTopic0, bathroomTopic0, getReadyAMTopic0, breakfastTopic0, cafeTopic0, networkingTopic1, groceryStoreWENDTopic0, travelTopic2,
//                             saturdayNow9to10Topic1)
//
//        case 10:
//            print("Weekend, Late Morning")
//            appendNineTopics(AMRoutineTopic0, gymTopic0, runningTopic0, yogaTopic0, homeAMTopic0, getReadyAMTopic0, brunchTopic0, cafeTopic0,
//                             networkingTopic1, groceryStoreTopic13, shoppingClothesTopic0, travelTopic2,
//                             saturdayNow9to10Topic1)
//
//        case 11...13:
//            print("Weekend, Midday")
//            appendNineTopics(homePMTopic6, gymTopic12, runningTopic0, cafePMTopic1,
//                             brunchTopic1, lunchTopic1, restaurantTopic13, barTopic2,
//                             networkingTopic1, groceryStoreTopic13, shoppingClothesTopic1, travelTopic2,
//                             saturdayNow11to13Topic2)
//
//        case 14...16:
//            print("Weekend, Afternoon")
//            // call function to display 9 time-based topics
//            appendNineTopics(homePMTopic0, gymTopic1, runningTopic0, yogaTopic0, afternoonSnackTopic0, cafePMTopic0, barTopic1, networkingTopic1, dateTopic1, shoppingClothesTopic2, groceryStoreTopic13, travelTopic2,
//                             saturdayNow14to16Topic2)
//
//        case 17...18:
//            print("Weekend, Early Evening")
//            // call function to display 9 time-based topics
//            appendNineTopics(homePMTopic0, dinnerTopic0, restaurantTopic13, barTopic1, dateTopic1, networkingTopic1, groceryStoreTopic13, shoppingClothesTopic0, gymTopic1, runningTopic0, yogaTopic0, travelTopic2,
//                             saturdayNow17to18Topic2)
//
//        case 19...20:
//            print("Weekend, Early Evening")
//            // call function to display 9 time-based topics
//            appendNineTopics(homePMTopic0, dinnerTopic0, restaurantTopic13, barTopic1, dateTopic1, safetyTopic1, groceryStoreTopic13, shoppingClothesTopic1, gymTopic1, runningTopic0, yogaTopic0, travelTopic2,
//                             saturdayNow19to20Topic2)
//
//        case 21..<24:
//            print("Weekend, Late evening")
//            // call function to display 9 time-based topics
//            appendNineTopics(dinnerAfter9PMTopic0, lateNightSnackTopic1, barTopic2, dateTopic1, safetyTopic1, networkingTopic1, gymTopic1, homePMTopic0,
//                             bathroomPMTopic0, eveningRoutineTopic0, bedtimeTopic0, cantSleepTopic1,
//                             saturday21to24Topic2)
//
//        default:
//            print("Weekend,INVALID HOUR!")
//        }
//    }
//
//
//    //MARK: - WEEK 3
//
//    func sunday3(_ hour: Int) {
//        switch hour {
//        case 0...4:
//            print("Weekend, Very Early Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(dinnerAfter9PMTopic0, barTopic0, networkingTopic1, safetyTopic1,
//                             restaurantTopic0, lateNightSnackTopic0, groceryStoreTopic0, bathroomPMTopic0, homeAMTopic0, eveningRoutineTopic0, bedtimeTopic0, cantSleepTopic1,
//                             sunday0to4Topic3)
//
//        case 5...8:
//            print("Weekend, Early Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(AMRoutineTopic0, gymTopic0, runningTopic0, yogaTopic0, homeAMTopic0, bathroomTopic0, getReadyAMTopic0, breakfastTopic0, cafeTopic0, networkingTopic1, groceryStoreTopic0, travelTopic2,
//                             sundayNow5to8Topic3)
//
//        case 9:
//            print("Weekend, Early Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(AMRoutineTopic0, gymTopic0,  runningTopic0, yogaTopic0, homeAMTopic0, bathroomTopic0, getReadyAMTopic0, breakfastTopic0, cafeTopic0, networkingTopic1, groceryStoreTopic0, travelTopic2,
//                             sundayNow9to10Topic2)
//
//        case 10:
//            print("Weekend, Late Morning")
//            // call function to display 9 time-based topics // ****
//            appendNineTopics(AMRoutineTopic0, gymTopic0, runningTopic0, yogaTopic0, homeAMTopic0, getReadyAMTopic0, brunchTopic0, cafeTopic0,
//                             networkingTopic1, groceryStoreTopic0, shoppingClothesTopic0, travelTopic2,
//                             sundayNow9to10Topic2)
//
//        case 11...13:
//            print("Weekend, Midday")
//            appendNineTopics(homeAMTopic0, gymTopic0, runningTopic0, cafePMTopic0, brunchTopic0, lunchTopic0, restaurantTopic0, barTopic1, networkingTopic1, groceryStoreTopic0, shoppingClothesTopic1, travelTopic2,
//                             sundayNow11to13Topic3)
//
//        case 14...16:
//            print("Weekend, Afternoon")
//            // call function to display 9 time-based topics
//            appendNineTopics(homePMTopic0, gymTopic1, runningTopic0, yogaTopic0, afternoonSnackTopic0,  cafePMTopic0, barTopic1, networkingTopic1, dateTopic1, shoppingClothesTopic2, groceryStoreTopic0, travelTopic2,
//                             sundayNow14to16Topic3)
//
//        case 17...18:
//            print("Weekend, Early Evening")
//            // call function to display 9 time-based topics
//            appendNineTopics(homePMTopic0, dinnerTopic0, restaurantTopic0, barTopic1, dateTopic1, networkingTopic1, groceryStoreTopic0, shoppingClothesTopic0, gymTopic1, runningTopic0, yogaTopic0, travelTopic2,
//                             sundayNow17to18Topic3)
//
//        case 19...20:
//            print("Weekend, Mid Evening")
//            // call function to display 9 time-based topics
//            appendNineTopics(homePMTopic0, dinnerTopic0, restaurantTopic0, barTopic1, dateTopic1, safetyTopic1, groceryStoreTopic0, shoppingClothesTopic1, gymTopic1, runningTopic0, yogaTopic0, travelTopic2,
//                             sundayNow19to20Topic3)
//
//        case 21..<24:
//            print("Weekend, Late evening")
//            // call function to display 9 time-based topics
//            appendNineTopics(dinnerAfter9PMTopic0, lateNightSnackTopic1, barTopic2, dateTopic1, safetyTopic1, networkingTopic1, gymTopic1, homePMTopic0,
//                             bathroomPMTopic0, eveningRoutineTopic0, bedtimeTopic0, cantSleepTopic1,
//                             sunday21to24Topic3)
//
//        default:
//            print("Weekend,INVALID HOUR!")
//        }
//    }
//
//    // Monday (2)
//
//    // More people Google 'diet' and go to the gym at the start of the week, month year
//    // Same with starting a new job or new semester, they give us a fresh start
//    func monday3(_ hour: Int) {
//        switch hour {
//        case 0...4:
//            print("weekdayMTW, Very Early Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(dinnerAfter9PMTopic0, barTopic3, networkingTopic1, safetyTopic2,
//                             restaurantTopic1, lateNightSnackTopic0, groceryStoreTopic0, bathroomPMTopic0,
//                             homePMTopic1, eveningRoutineTopic0, bedtimeTopic1, cantSleepTopic2,
//                             mondayNow0to4Topic3)
//
//        case 5...7:
//            print("weekdayMTW, Early Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(AMRoutineTopic0, gymTopic2, runningTopic1, yogaTopic0, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, homeAMTopic0, cafeTopic1, commuteAMTopic0, workAMTopic10, schoolAMTopic1,
//                             mondayNow5to8Topic3)
//
//            // meditate, journal,
//            // work, networking
//
//        case 8:
//            print("weekdayMTW, arly Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(AMRoutineTopic0, gymTopic2, runningTopic1, yogaTopic0,  getReadyAMTopic0, breakfastTopic1, bathroomTopic1, homeAMTopic0,
//                             cafeTopic1, commuteAMTopic0, workAMTopic10, schoolAMTopic1,
//                             mondayNow5to8Topic3)
//
//        case 9:
//            print("weekdayMTW, mid Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(AMRoutineTopic0, gymTopic2, runningTopic1, yogaTopic0,  getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic0, workAMTopic10, networkingTopic1, schoolAMTopic1,
//                             mondayNow9to11Topic3)
//
//        case 10:
//            print("weekdayMTW, Late Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(gymTopic2, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic0, workAMTopic10, networkingTopic1, morningSnackTopic0, breakTopic0, schoolAMTopic1,
//                             mondayNow9to11Topic3)
//
//        case 11:
//            print("weekdayMTW, Late Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(morningSnackTopic0, lunchTopic1, restaurantTopic1, cafeTopic1, gymTopic2, runningTopic1, yogaTopic0, workAMTopic10, bathroomTopic1, networkingTopic2, breakTopic0, schoolAMTopic1,
//                             mondayNow11to13Topic3)
//
//        case 12...13:
//            print("weekdayMTW, Midday")
//            appendNineTopics(lunchTopic1, restaurantTopic1, cafePMTopic1, afternoonSnackTopic0, gymTopic2, runningTopic1, yogaTopic0, workPMTopic10, bathroomTopic1, networkingTopic2, breakTopic0, schoolPMTopic1,
//                             mondayNow11to13Topic3)
//
//        case 14...15:
//            print("weekdayMTW, Afternoon")
//            // call function to display 9 time-based topics
//            appendNineTopics(afternoonSnackTopic1, cafePMTopic0, workPMTopic10, networkingTopic3, breakPMTopic0, commutePMTopic0, groceryStoreTopic0, shoppingClothesTopic0, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
//                             mondayNow14to16Topic3)
//
//        case 16:
//            print("weekdayMTW, Afternoon")
//            // call function to display 9 time-based topics
//            appendNineTopics(workPMTopic10, afternoonSnackTopic2, breakPMTopic0, commutePMTopic0, groceryStoreTopic0, shoppingClothesTopic0, happyHourTopic0, networkingTopic3, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
//                             mondayNow14to16Topic3)
//
//        case 17...18:
//            print("weekdayMTW, Early-Evening")
//
//            appendNineTopics(workLateTopic0, commutePMTopic0, gymTopic2, runningTopic0, yogaTopic0, groceryStoreTopic0, shoppingClothesTopic0, dinnerTopic1, restaurantTopic1, happyHourTopic0, networkingTopic3, homePMTopic1,
//                             mondayNow17to18Topic3)
//
//        case 19...20:
//            print("Weekday, Evening")
//            // call function to display 9 time-based topics
//            appendNineTopics(gymTopic2, runningTopic0, yogaTopic0, groceryStoreTopic0, shoppingClothesTopic0, dinnerTopic1, restaurantTopic1, barTopic5, dateTopic2, networkingTopic1, safetyTopic2, homePMTopic1,
//                             mondayNow19to20Topic3)
//
//        case 21..<24:
//            print("Weekday, Late evening")
//            // call function to display 9 time-based topics
//            appendNineTopics(dinnerAfter9PMTopic0, restaurantTopic1, barTopic0, networkingTopic1, dateTopic2, safetyTopic2, homePMTopic1, lateNightSnackTopic1, bathroomPMTopic1, eveningRoutineTopic0, bedtimeTopic1, cantSleepTopic2,
//                             mondayNow21to24Topic3)
//
//
//        default:
//            print("Weekday,INVALID HOUR!")
//        }
//    }
//
//    // Tuesday (3)
//
//    func tuesday3(_ hour: Int) {
//        switch hour {
//        case 0...4:
//            print("weekdayMTW, Very Early Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(dinnerAfter9PMTopic0, barTopic3, networkingTopic1, safetyTopic2,
//                             restaurantTopic2, lateNightSnackTopic0, groceryStoreTopic1, bathroomPMTopic0, homePMTopic1, eveningRoutineTopic1, bedtimeTopic1, cantSleepTopic2,
//                             tuesdayNow0to4Topic3)
//
//        case 5...7:
//            print("weekdayMTW, Early Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(AMRoutineTopic3, getReadyAMTopic1, gymTopic2, yogaTopic0, runningTopic1, breakfastTopic1, bathroomTopic1, homeAMTopic0, cafeTopic1, commuteTuesdayAMTopic0, workAMTopic11, schoolAMTopic3,
//                             tuesdayNow5to8Topic3) //*
//
//        case 8:
//            print("weekdayMTW, Early Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, homeAMTopic0,
//                             cafeTopic1, commuteTuesdayAMTopic0, workAMTopic11, schoolAMTopic3,
//                             tuesdayNow5to8Topic3) //*
//
//        case 9:
//            print("weekdayMTW, Mid Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteTuesdayAMTopic0, workAMTopic11, networkingTopic1, schoolAMTopic3,
//                             tuesdayNow9to11Topic3) //*
//
//        case 10:
//            print("weekdayMTW, Late Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(gymTopic2, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteTuesdayAMTopic0, workAMTopic11, networkingTopic1, morningSnackTopic0, breakTopic0, schoolAMTopic3,
//                             tuesdayNow9to11Topic3)
//
//        case 11:
//            print("weekdayMTW, Late Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(lunchTopic3, restaurantTopic2, cafePMTopic1, afternoonSnackTopic0, gymTopic3, yogaTopic0, runningTopic1, workAMTopic11, bathroomTopic1, breakTopic0, networkingTopic2, schoolPMTopic3, tuesdayNow11to13Topic3)
//
//        case 12...13:
//            print("weekdayMTW, Midday")
//            appendNineTopics(lunchTopic1, restaurantTopic2, cafePMTopic1, afternoonSnackTopic0, gymTopic2, runningTopic1, yogaTopic0, workPMTopic11, bathroomTopic1, networkingTopic2, breakTopic0, schoolPMTopic1,
//                             tuesdayNow11to13Topic3) // Tues specific tips
//
//        case 14...15:
//            print("weekdayMTW, Afternoon")
//            // call function to display 9 time-based topics
//            appendNineTopics(afternoonSnackTopic1, cafePMTopic0, workPMTopic11, networkingTopic3, breakPMTopic0, commutePMTopic0, groceryStoreTopic1, shoppingClothesTopic0, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
//                             tuesdayNow14to16Topic3)
//
//        case 16:
//            print("weekdayMTW, Afternoon")
//            // call function to display 9 time-based topics
//            appendNineTopics(workPMTopic11, afternoonSnackTopic2, breakPMTopic0, commutePMTopic0, groceryStoreTopic1, shoppingClothesTopic0, happyHourTopic0, networkingTopic3, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
//                             tuesdayNow14to16Topic3)
//
//        case 17...18:
//            print("weekdayMTW, Early-Evening")
//            appendNineTopics(workLateTopic0, commutePMTopic0, gymTopic2, runningTopic0, yogaTopic0, groceryStoreTopic1, shoppingClothesTopic0, dinnerTopic1, restaurantTopic2, happyHourTopic0, networkingTopic3, homePMTopic1,
//                             tuesdayNow17to18Topic3)
//
//
//        case 19...20:
//            print("Weekday, Evening")
//            // call function to display 9 time-based topics
//            appendNineTopics(gymTopic2, runningTopic0, yogaTopic0, groceryStoreTopic1, shoppingClothesTopic0, dinnerTopic1, restaurantTopic2, barTopic5, dateTopic2, networkingTopic1, safetyTopic2, homePMTopic1,
//                             tuesdayNow19to20Topic3)
//
//        case 21..<24:
//            print("Weekday, Late evening")
//            // call function to display 9 time-based topics
//            appendNineTopics(dinnerAfter9PMTopic0, restaurantTopic2, barTopic0, networkingTopic1, dateTopic2, safetyTopic2, homePMTopic1, lateNightSnackTopic1, bathroomPMTopic1, eveningRoutineTopic0, bedtimeTopic1, cantSleepTopic2,
//                             tuesdayNow21to24Topic3)
//
//        default:
//            print("Weekday,INVALID HOUR!")
//        }
//    }
//
//    // Wednesday (4)
//
//    func wednesday3(_ hour: Int) {
//        switch hour {
//        case 0...4:
//            print("weekdayMTW, Very Early Morning")
//            appendNineTopics(dinnerAfter9PMTopic0, barTopic3, networkingTopic1, safetyTopic2,
//                             restaurantTopic3, lateNightSnackTopic0, groceryStoreTopic3, bathroomPMTopic0, homePMTopic1, eveningRoutineTopic1, bedtimeTopic1, cantSleepTopic2,
//                             wednesdayNow0to4Topic3)
//
//            setNatureImage(to: "night4")
//
//        case 5...7:
//            print("weekdayMTW, Early Morning")
//            appendNineTopics(AMRoutineTopic3, getReadyAMTopic1, gymTopic2, yogaTopic0, runningTopic1, breakfastTopic1, bathroomTopic1, homeAMTopic0, cafeTopic1, commuteAMTopic5, workAMTopic12, schoolAMTopic3,
//                             wednesdayNow5to8Topic3) //*
//
//            setNatureImage(to: "morning4")
//
//        case 8:
//            print("weekdayMTW, Mid Morning")
//            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, homeAMTopic0,
//                             cafeTopic1, commuteAMTopic5, workAMTopic12, schoolAMTopic3,
//                             wednesdayNow5to8Topic3)
//
//            setNatureImage(to: "morning4")
//
//        case 9:
//            print("weekdayMTW, Mid Morning")
//            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic12, networkingTopic1, schoolAMTopic3,
//                             wednesdayNow9to11Topic3)
//
//            setNatureImage(to: "midmorning4")
//
//        case 10:
//            print("weekdayMTW, Late Morning")
//            appendNineTopics(gymTopic2, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic12, networkingTopic1, morningSnackTopic0, breakTopic0, schoolAMTopic3,
//                             wednesdayNow9to11Topic3)
//
//            setNatureImage(to: "midmorning4")
//
//
//        case 11:
//            appendNineTopics(lunchTopic3, restaurantTopic3, cafePMTopic1, afternoonSnackTopic0, gymTopic3, yogaTopic0, runningTopic1, workAMTopic12, bathroomTopic1, breakTopic0, networkingTopic2, schoolPMTopic3,
//                             wednesdayNow11to13Topic3)
//
//            setNatureImage(to: "day4")
//
//
//        case 12...13:
//            print("weekdayMTW, Midday")
//            appendNineTopics(lunchTopic1, restaurantTopic3, cafePMTopic1, afternoonSnackTopic0, gymTopic2, runningTopic1, yogaTopic0, workPMTopic12, bathroomTopic1, networkingTopic2, breakTopic0, schoolPMTopic1,
//                             wednesdayNow11to13Topic3)
//
//            setNatureImage(to: "day4")
//
//
//        case 14...15:
//            print("weekdayMTW, Afternoon")
//            appendNineTopics(afternoonSnackTopic1, cafePMTopic0, workPMTopic12, networkingTopic3, breakPMTopic0, commutePMTopic0, groceryStoreTopic3, shoppingClothesTopic0, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
//                             wednesdayNow14to16Topic3)
//
//            setNatureImage(to: "afternoon4")
//
//        case 16:
//            print("weekdayMTW, Afternoon")
//            appendNineTopics(workPMTopic12, afternoonSnackTopic2, breakPMTopic0, commutePMTopic0, groceryStoreTopic3, shoppingClothesTopic0, happyHourTopic0, networkingTopic3, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
//                             wednesdayNow14to16Topic3)
//
//            setNatureImage(to: "afternoon4")
//
//
//        case 17...18:
//            print("weekdayMTW, Early-Evening")
//            appendNineTopics(workLateTopic0, commutePMTopic0, gymTopic2, runningTopic0, yogaTopic0, groceryStoreTopic3, shoppingClothesTopic0, dinnerTopic1, restaurantTopic3, happyHourTopic0, networkingTopic3, homePMTopic1,
//                             wednesdayNow17to18Topic3)
//
//            setNatureImage(to: "sunset4")
//
//        case 19...20:
//            print("Weekday, Evening")
//            appendNineTopics(gymTopic2, runningTopic0, yogaTopic0, groceryStoreTopic3, shoppingClothesTopic0, dinnerTopic1, restaurantTopic3, barTopic5, dateTopic2, networkingTopic1, safetyTopic2, homePMTopic1,
//                             wednesdayNow19to20Topic3)
//
//            setNatureImage(to: "sunset4")
//
//
//        case 21..<24:
//            print("Weekday, Late evening")
//            appendNineTopics(dinnerAfter9PMTopic0, restaurantTopic3, barTopic0, networkingTopic1, dateTopic2, safetyTopic2, homePMTopic1, lateNightSnackTopic1, bathroomPMTopic1, eveningRoutineTopic0, bedtimeTopic1, cantSleepTopic2,
//                             wednesdayNow21to24Topic3)
//
//            setNatureImage(to: "night4")
//
//        default:
//            print("Weekday,INVALID HOUR!")
//        }
//    }
//
//    // Thursday (5)
//
//    func thursday3(_ hour: Int) {
//        switch hour {
//        case 0...4:
//            print("weekdayTF, Very Early Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(dinnerAfter9PMTopic0, barTopic3, networkingTopic1, safetyTopic2,
//                             restaurantTopic4, lateNightSnackTopic0, groceryStoreTopic4, bathroomPMTopic0, homePMTopic1, eveningRoutineTopic1, bedtimeTopic1, cantSleepTopic2,
//                             thursdayNow0to4Topic3)
//
//            setNatureImage(to: "night5")
//
//        case 5...7:
//            print("weekdayTF, Early Morning")
//            appendNineTopics(AMRoutineTopic3, getReadyAMTopic1, gymTopic2, yogaTopic0, runningTopic1, breakfastTopic1, bathroomTopic1, homeAMTopic0, cafeTopic1, commuteAMTopic5, workAMTopic13, schoolAMTopic3,
//                             thursdayNow5to8Topic3)
//
//            setNatureImage(to: "morning5")
//
//
//        case 8:
//            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, homeAMTopic0,
//                             cafeTopic1, commuteAMTopic5, workAMTopic13, schoolAMTopic3,
//                             thursdayNow5to8Topic3)
//
//            setNatureImage(to: "morning5")
//
//        case 9:
//            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic13, networkingTopic1, schoolAMTopic3,
//                             thursdayNow9to11Topic3)
//
//            setNatureImage(to: "midmorning5")
//
//        case 10:
//            print("weekdayTF, Late Morning")
//            appendNineTopics(gymTopic2, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic13, networkingTopic1, morningSnackTopic0, breakTopic0, schoolAMTopic3,
//                             thursdayNow9to11Topic3)
//
//            setNatureImage(to: "midmorning5")
//
//
//        case 11:
//            print("weekdayTF, Late Morning")
//            appendNineTopics(lunchTopic3, restaurantTopic4, cafePMTopic1, afternoonSnackTopic0, gymTopic3, yogaTopic0, runningTopic1, workAMTopic13, bathroomTopic1, breakTopic0, networkingTopic2, schoolPMTopic3,
//                             thursdayNow11to13Topic3)
//
//            setNatureImage(to: "midmorning5")
//
//        case 12...13:
//            print("weekdayTF, Midday")
//            appendNineTopics(lunchTopic1, restaurantTopic4, cafePMTopic1, afternoonSnackTopic0, gymTopic2, runningTopic1, yogaTopic0, workPMTopic13, bathroomTopic1, networkingTopic2, breakTopic0, schoolPMTopic1,
//                             thursdayNow11to13Topic3)
//
//            setNatureImage(to: "day5")
//
//
//        case 14...15: // 2PM-4PM
//            print("weekdayTF, Afternoon")
//
//            appendNineTopics(afternoonSnackTopic1, cafePMTopic0, workPMTopic13, networkingTopic3, breakPMTopic0, commutePMTopic0, groceryStoreTopic4, shoppingClothesTopic0, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
//                             thursdayNow14to16Topic3)
//
//            setNatureImage(to: "afternoon5")
//
//
//        case 16:
//            print("weekdayTF, Afternoon")
//            appendNineTopics(workPMTopic13, afternoonSnackTopic2, breakPMTopic0, commutePMTopic0, groceryStoreTopic4, shoppingClothesTopic0, happyHourTopic0, networkingTopic3, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
//                             thursdayNow14to16Topic3)
//
//            setNatureImage(to: "afternoon5")
//
//
//        case 17...18:
//            print("weekdayTF, Evening 5PM")
//            appendNineTopics(workLateTopic0, commutePMTopic0, gymTopic2, runningTopic0, yogaTopic0, groceryStoreTopic4, shoppingClothesTopic0, dinnerTopic1, restaurantTopic4, happyHourTopic0, networkingTopic3, homePMTopic1,
//                             thursdayNow17to18Topic3)
//
//            setNatureImage(to: "afternoon5")
//
//
//        case 19...20:
//            print("weekdayTF, Evening")
//            appendNineTopics(gymTopic2, runningTopic0, yogaTopic0, groceryStoreTopic4, shoppingClothesTopic0, dinnerTopic1, restaurantTopic4, barTopic5, dateTopic2, networkingTopic1, safetyTopic2, homePMTopic1,
//                             thursdayNow19to20Topic3)
//
//            setNatureImage(to: "sunset5")
//
//        case 21..<24:
//            print("weekdayTF, Late evening")
//            // call function to display 9 time-based topics
//            appendNineTopics(dinnerAfter9PMTopic0, restaurantTopic4, barTopic0, networkingTopic1, dateTopic2, safetyTopic2, homePMTopic1, lateNightSnackTopic1, bathroomPMTopic1, eveningRoutineTopic0, bedtimeTopic1, cantSleepTopic2,
//                             thursdayNow21to24Topic3)
//
//            setNatureImage(to: "night5")
//
//
//        default:
//            print("weekdayTF,INVALID HOUR!")
//        }
//    }
//
//    //Friday (6)
//
//    func friday3(_ hour: Int) {
//        switch hour {
//        case 0...4:
//            print("weekday Fri, Very Early Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(dinnerAfter9PMTopic0, barTopic3, networkingTopic1, safetyTopic2,
//                             restaurantTopic5, lateNightSnackTopic0, groceryStoreTopic5, bathroomPMTopic0, homePMTopic1, eveningRoutineTopic1, bedtimeTopic1, cantSleepTopic2,
//                             fridayNow0to4Topic3)
//
//            setNatureImage(to: "night6")
//
//        case 5...7:
//            print("weekday Fri, Early Morning")
//            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic1, breakfastTopic1, bathroomTopic1, homeAMTopic0, cafeTopic1, commuteAMTopic5, workAMTopic14, schoolAMTopic3,
//                             fridayNow5to8Topic3)
//
//            setNatureImage(to: "morning6")
//
//
//        case 8:
//            print("weekday Fri, Late Morning")
//            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, homeAMTopic0,
//                             cafeTopic1, commuteAMTopic5, workAMTopic14, schoolAMTopic3,
//                             fridayNow5to8Topic3)
//
//            setNatureImage(to: "midmorning6")
//
//        case 9:
//            print("weekday Fri, Late Morning")
//            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic14, networkingTopic1, schoolAMTopic3,
//                             fridayNow9to11Topic3)
//
//            setNatureImage(to: "midmorning6")
//
//
//        case 10:
//            print("weekday Fri, Late Morning")
//            appendNineTopics(gymTopic2, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic14, networkingTopic1, morningSnackTopic0, breakTopic0, schoolAMTopic3,
//                             fridayNow9to11Topic3)
//
//            setNatureImage(to: "midmorning6")
//
//
//        case 11:
//            print("weekday Fri, Midday")
//            appendNineTopics(lunchTopic3, restaurantTopic5, cafePMTopic1, afternoonSnackTopic0, gymTopic3, runningTopic1, workAMTopic14, bathroomTopic1, breakTopic0, networkingTopic2, travelTopic2, schoolPMTopic3,
//                             fridayNow11to13Topic3)
//
//            setNatureImage(to: "day6")
//
//
//        case 12...13:
//            print("weekday Fri, Midday")
//            appendNineTopics(lunchTopic1, restaurantTopic5, cafePMTopic1, afternoonSnackTopic0, gymTopic2, runningTopic1, workPMTopic14, bathroomTopic1, networkingTopic2, breakTopic0, travelTopic2, schoolPMTopic1,
//                             fridayNow11to13Topic3)
//
//            setNatureImage(to: "day6")
//
//        case 14...15:
//            ////FRIDAY ONLY COMMUTE
//            print("weekday Fri, Afternoon")
//            appendNineTopics(afternoonSnackTopic1, cafePMTopic0, workPMTopic14, networkingTopic4, breakPMTopic1, commuteFridayPMTopic0, groceryStoreTopic5, shoppingClothesTopic0, gymTopic10, runningTopic0, travelTopic2, schoolPMTopic2,
//                             fridayNow14to16Topic3)
//
//            setNatureImage(to: "afternoon6")
//
//
//        case 16:
//            ////FRIDAY ONLY COMMUTE
//            print("weekday Fri, Afternoon")
//            appendNineTopics(afternoonSnackTopic2, cafePMTopic0, workPMTopic14, breakPMTopic1, commuteFridayPMTopic0, gymTopic10, runningTopic0, happyHourTopic0, networkingTopic4, groceryStoreTopic5, shoppingClothesTopic0, travelTopic2,
//                             fridayNow14to16Topic3)
//
//            setNatureImage(to: "afternoon6")
//
//
//        case 17...18:
//            print("weekday Fri, Evening 5-6PM")
//
//            ////FRIDAY ONLY COMMUTE
//            appendNineTopics(commuteFridayPMTopic0, gymTopic10, runningTopic0, homePMTopic5, goingOutTopic0, happyHourTopic0, networkingTopic1, dinnerTopic5, restaurantTopic5, groceryStoreTopic5, shoppingClothesTopic0,  travelTopic2,
//                             fridayNow17to18Topic3)
//
//            setNatureImage(to: "afternoon6")
//
//        case 19...20:
//            print("weekday Fri, Evening 7-8PM")
//            // call function to display 9 time-based topics
//            appendNineTopics(gymTopic10, runningTopic0, homePMTopic5, goingOutTopic0, dinnerTopic5, restaurantTopic5, barTopic5, networkingTopic1, dateTopic0, safetyTopic6, groceryStoreTopic5, travelTopic2,
//                             fridayNow19to20Topic3)
//
//            setNatureImage(to: "sunset6")
//
//
//        case 21..<24:
//            print("weekdayTF, Late evening 9-12PM")
//            // call function to display 9 time-based topics
//            appendNineTopics(homePMTopic5, goingOutTopic0, dinnerAfter9PMTopic4, restaurantTopic5,  barTopic0, networkingTopic1, dateTopic2, safetyTopic6,
//                             lateNightSnackTopic1, eveningRoutineTopic0, bedtimeFriPMTopic5, cantSleepTopic3,
//                             fridayNow21to24Topic3)
//
//            setNatureImage(to: "night6")
//
//        default:
//            print("weekdayTF,INVALID HOUR!")
//        }
//    }
//
//    //Saturday (7)
//
//    func saturday3(_ hour: Int) {
//        switch hour {
//        case 0...4:
//            print("Weekend, Very Early Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(dinnerAfter9PMTopic0, barTopic3, networkingTopic1, safetyTopic2,
//                             restaurantTopic6, lateNightSnackTopic0, groceryStoreTopic6, bathroomPMTopic0, homePMTopic1, eveningRoutineTopic1, bedtimeTopic1, cantSleepTopic2,
//                             saturday0to4Topic3)
//
//        case 5...8:
//            print("Weekend, Early Morning")
//            appendNineTopics(AMRoutineTopic0, gymTopic0, runningTopic0, yogaTopic0, homeAMTopic0, bathroomTopic0, getReadyAMTopic0, breakfastTopic0, cafeTopic0, networkingTopic1, groceryStoreTopic6, travelTopic2,
//                             saturdayNow5to8Topic3)
//
//        case 9:
//            print("Weekend, Early Morning")
//            appendNineTopics(AMRoutineTopic0, gymTopic0,  runningTopic0, yogaTopic0, homeAMTopic0, bathroomTopic0, getReadyAMTopic0, breakfastTopic0, cafeTopic0, networkingTopic1, groceryStoreTopic6, travelTopic2,
//                             saturdayNow9to10Topic2)
//
//        case 10:
//            print("Weekend, Late Morning")
//            appendNineTopics(AMRoutineTopic0, gymTopic0, runningTopic0, yogaTopic0, homeAMTopic0, getReadyAMTopic0, brunchTopic0, cafeTopic0,
//                             networkingTopic1, groceryStoreTopic6, shoppingClothesTopic0, travelTopic2,
//                             saturdayNow9to10Topic2)
//
//        case 11...13:
//            print("Weekend, Midday")
//            appendNineTopics(homePMTopic6, gymTopic12, runningTopic0, cafePMTopic1,
//                             brunchTopic1, lunchTopic1, restaurantTopic6, barTopic2,
//                             networkingTopic1, groceryStoreTopic6, shoppingClothesTopic1, travelTopic2,
//                             saturdayNow11to13Topic3)
//
//        case 14...16:
//            print("Weekend, Afternoon")
//            // call function to display 9 time-based topics
//            appendNineTopics(homePMTopic0, gymTopic1, runningTopic0, yogaTopic0, afternoonSnackTopic0, cafePMTopic0, barTopic1, networkingTopic1, dateTopic1, shoppingClothesTopic2, groceryStoreTopic7, travelTopic2,
//                             saturdayNow14to16Topic3)
//
//        case 17...18:
//            print("Weekend, Early Evening")
//            // call function to display 9 time-based topics
//            appendNineTopics(homePMTopic0, dinnerTopic0, restaurantTopic6, barTopic1, dateTopic1, networkingTopic1, groceryStoreTopic7, shoppingClothesTopic0, gymTopic1, runningTopic0, yogaTopic0, travelTopic2,
//                             saturdayNow17to18Topic3)
//
//        case 19...20:
//            print("Weekend, Early Evening")
//            // call function to display 9 time-based topics
//            appendNineTopics(homePMTopic0, dinnerTopic0, restaurantTopic6, barTopic1, dateTopic1, safetyTopic1, groceryStoreTopic7, shoppingClothesTopic1, gymTopic1, runningTopic0, yogaTopic0, travelTopic2,
//                             saturdayNow19to20Topic3)
//
//        case 21..<24:
//            print("Weekend, Late evening")
//            // call function to display 9 time-based topics
//            appendNineTopics(dinnerAfter9PMTopic0, lateNightSnackTopic1, barTopic2, dateTopic1, safetyTopic1, networkingTopic1, gymTopic1, homePMTopic0,
//                             bathroomPMTopic0, eveningRoutineTopic0, bedtimeTopic0, cantSleepTopic1,
//                             saturday21to24Topic3)
//
//        default:
//            print("Weekend,INVALID HOUR!")
//        }
//    }
//
//
//    //MARK: - WEEK 4
//
//    func sunday4(_ hour: Int) {
//        switch hour {
//        case 0...4:
//            print("Weekend, Very Early Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(dinnerAfter9PMTopic0, barTopic0, networkingTopic1, safetyTopic1,
//                             restaurantTopic7, lateNightSnackTopic0, groceryStoreTopic8, bathroomPMTopic0, homeAMTopic0, eveningRoutineTopic0, bedtimeTopic0, cantSleepTopic1,
//                             sunday0to4Topic4)
//
//        case 5...8:
//            print("Weekend, Early Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(AMRoutineTopic0, gymTopic0, runningTopic0, yogaTopic0, homeAMTopic0, bathroomTopic0, getReadyAMTopic0, breakfastTopic0, cafeTopic0, networkingTopic1, groceryStoreTopic8, travelTopic2,
//                             sundayNow5to8Topic4)
//
//        case 9:
//            print("Weekend, Early Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(AMRoutineTopic0, gymTopic0,  runningTopic0, yogaTopic0, homeAMTopic0, bathroomTopic0, getReadyAMTopic0, breakfastTopic0, cafeTopic0, networkingTopic1, groceryStoreTopic8, travelTopic2,
//                             sundayNow9to10Topic3)
//
//        case 10:
//            print("Weekend, Late Morning")
//            // call function to display 9 time-based topics // ****
//            appendNineTopics(AMRoutineTopic0, gymTopic0, runningTopic0, yogaTopic0, homeAMTopic0, getReadyAMTopic0, brunchTopic0, cafeTopic0,
//                             networkingTopic1, groceryStoreTopic8, shoppingClothesTopic0, travelTopic2,
//                             sundayNow9to10Topic3)
//
//        case 11...13:
//            print("Weekend, Midday")
//            appendNineTopics(homeAMTopic0, gymTopic0, runningTopic0, cafePMTopic0, brunchTopic0, lunchTopic0, restaurantTopic7, barTopic1, networkingTopic1, groceryStoreTopic8, shoppingClothesTopic1, travelTopic2,
//                             sundayNow11to13Topic4)
//
//        case 14...16:
//            print("Weekend, Afternoon")
//            // call function to display 9 time-based topics
//            appendNineTopics(homePMTopic0, gymTopic1, runningTopic0, yogaTopic0, afternoonSnackTopic0, cafePMTopic0, barTopic1, networkingTopic1, dateTopic1, shoppingClothesTopic2, groceryStoreTopic9, travelTopic2,
//                             sundayNow14to16Topic4)
//
//        case 17...18:
//            print("Weekend, Early Evening")
//            // call function to display 9 time-based topics
//            appendNineTopics(homePMTopic0, dinnerTopic0, restaurantTopic7, barTopic1, dateTopic1, networkingTopic1, groceryStoreTopic9, shoppingClothesTopic0, gymTopic1, runningTopic0, yogaTopic0, travelTopic2,
//                             sundayNow17to18Topic4)
//
//        case 19...20:
//            print("Weekend, Mid Evening")
//            // call function to display 9 time-based topics
//            appendNineTopics(homePMTopic0, dinnerTopic0, restaurantTopic7, barTopic1, dateTopic1, safetyTopic1, groceryStoreTopic9, shoppingClothesTopic1, gymTopic1, runningTopic0, yogaTopic0, travelTopic2,
//                             sundayNow19to20Topic4)
//
//        case 21..<24:
//            print("Weekend, Late evening")
//            // call function to display 9 time-based topics
//            appendNineTopics(dinnerAfter9PMTopic0, lateNightSnackTopic1, barTopic2, dateTopic1, safetyTopic1, networkingTopic1, gymTopic1, homePMTopic0,
//                             bathroomPMTopic0, eveningRoutineTopic0, bedtimeTopic0, cantSleepTopic1,
//                             sunday21to24Topic4)
//
//        default:
//            print("Weekend,INVALID HOUR!")
//        }
//    }
//
//    // Monday (2)
//
//    // More people Google 'diet' and go to the gym at the start of the week, month year
//    // Same with starting a new job or new semester, they give us a fresh start
//    func monday4(_ hour: Int) {
//        switch hour {
//        case 0...4:
//            print("weekdayMTW, Very Early Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(dinnerAfter9PMTopic0, barTopic3, networkingTopic1, safetyTopic2,
//                             restaurantTopic8, lateNightSnackTopic0, groceryStoreTopic0, bathroomPMTopic0,
//                             homePMTopic1, eveningRoutineTopic0, bedtimeTopic1, cantSleepTopic2,
//                             mondayNow0to4Topic4)
//
//        case 5...7:
//            print("weekdayMTW, Early Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(AMRoutineTopic0, gymTopic2, runningTopic1, yogaTopic0, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, homeAMTopic0, cafeTopic1, commuteAMTopic0, workAMTopic0, schoolAMTopic1,
//                             mondayNow5to8Topic4)
//
//            // meditate, journal,
//            // work, networking
//
//        case 8:
//            print("weekdayMTW, arly Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(AMRoutineTopic0, gymTopic2, runningTopic1, yogaTopic0,  getReadyAMTopic0, breakfastTopic1, bathroomTopic1, homeAMTopic0, cafeTopic1, commuteAMTopic0, workAMTopic0, schoolAMTopic1,
//                             mondayNow5to8Topic4)
//
//        case 9:
//            print("weekdayMTW, mid Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(AMRoutineTopic0, gymTopic2, runningTopic1, yogaTopic0,  getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic0, workAMTopic0, networkingTopic1, schoolAMTopic1,
//                             mondayNow9to11Topic4)
//
//        case 10:
//            print("weekdayMTW, Late Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(gymTopic2, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic0, workAMTopic0, networkingTopic1, morningSnackTopic0, breakTopic0, schoolAMTopic1,
//                             mondayNow9to11Topic4)
//
//        case 11:
//            print("weekdayMTW, Late Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(morningSnackTopic0, lunchTopic1, restaurantTopic8, cafeTopic1, gymTopic2, runningTopic1, yogaTopic0, workAMTopic0, bathroomTopic1, networkingTopic2, breakTopic0, schoolAMTopic1,
//                             mondayNow11to13Topic4)
//
//        case 12...13:
//            print("weekdayMTW, Midday")
//            appendNineTopics(lunchTopic1, restaurantTopic8, cafePMTopic1, afternoonSnackTopic0, gymTopic2, runningTopic1, yogaTopic0, workPMTopic15, bathroomTopic1, networkingTopic2, breakTopic0, schoolPMTopic1,
//                             mondayNow11to13Topic4)
//
//        case 14...15:
//            print("weekdayMTW, Afternoon")
//            // call function to display 9 time-based topics
//            appendNineTopics(afternoonSnackTopic1, cafePMTopic0, workPMTopic15, networkingTopic3, breakPMTopic0, commutePMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
//                             mondayNow14to16Topic4)
//
//        case 16:
//            print("weekdayMTW, Afternoon")
//            // call function to display 9 time-based topics
//            appendNineTopics(workPMTopic15, afternoonSnackTopic2, breakPMTopic0, commutePMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, happyHourTopic0, networkingTopic3, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
//                             mondayNow14to16Topic4)
//
//        case 17...18:
//            print("weekdayMTW, Early-Evening")
//
//            appendNineTopics(workLateTopic0, commutePMTopic0, gymTopic2, runningTopic0, yogaTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, dinnerTopic1, restaurantTopic8, happyHourTopic0, networkingTopic3, homePMTopic1,
//                             mondayNow17to18Topic4)
//
//        case 19...20:
//            print("Weekday, Evening")
//            // call function to display 9 time-based topics
//            appendNineTopics(gymTopic2, runningTopic0, yogaTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, dinnerTopic1, restaurantTopic8, barTopic5, dateTopic2, networkingTopic1, safetyTopic2, homePMTopic1,
//                             mondayNow19to20Topic4)
//
//        case 21..<24:
//            print("Weekday, Late evening")
//            // call function to display 9 time-based topics
//            appendNineTopics(dinnerAfter9PMTopic0, restaurantTopic8, barTopic0, networkingTopic1, dateTopic2, safetyTopic2, homePMTopic1, lateNightSnackTopic1, bathroomPMTopic1, eveningRoutineTopic0, bedtimeTopic1, cantSleepTopic2,
//                             mondayNow21to24Topic4)
//
//
//        default:
//            print("Weekday,INVALID HOUR!")
//        }
//    }
//
//    // Tuesday (3)
//
//    func tuesday4(_ hour: Int) {
//        switch hour {
//        case 0...4:
//            print("weekdayMTW, Very Early Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(dinnerAfter9PMTopic0, barTopic3, networkingTopic1, safetyTopic2,
//                             restaurantTopic9, lateNightSnackTopic0, groceryStoreTopic0, bathroomPMTopic0, homePMTopic1, eveningRoutineTopic1, bedtimeTopic1, cantSleepTopic2,
//                             tuesdayNow0to4Topic4)
//
//        case 5...7:
//            print("weekdayMTW, Early Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(AMRoutineTopic3, getReadyAMTopic1, gymTopic2, yogaTopic0, runningTopic1, breakfastTopic1, bathroomTopic1, homeAMTopic0, cafeTopic1, commuteTuesdayAMTopic0, workAMTopic5, schoolAMTopic3,
//                             tuesdayNow5to8Topic4) //*
//
//        case 8:
//            print("weekdayMTW, Early Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, homeAMTopic0,
//                             cafeTopic1, commuteTuesdayAMTopic0, workAMTopic5, schoolAMTopic3,
//                             tuesdayNow5to8Topic4) //*
//
//        case 9:
//            print("weekdayMTW, Mid Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteTuesdayAMTopic0, workAMTopic5, networkingTopic1, schoolAMTopic3,
//                             tuesdayNow9to11Topic4) //*
//
//        case 10:
//            print("weekdayMTW, Late Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(gymTopic2, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteTuesdayAMTopic0, workAMTopic5, networkingTopic1, morningSnackTopic0, breakTopic0, schoolAMTopic3,
//                             tuesdayNow9to11Topic4)
//
//        case 11:
//            print("weekdayMTW, Late Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(lunchTopic3, restaurantTopic9, cafePMTopic1, afternoonSnackTopic0, gymTopic3, yogaTopic0, runningTopic1, workAMTopic5, bathroomTopic1, breakTopic0, networkingTopic2, schoolPMTopic3,
//                             tuesdayNow11to13Topic4)
//
//        case 12...13:
//            print("weekdayMTW, Midday")
//            appendNineTopics(lunchTopic1, restaurantTopic9, cafePMTopic1, afternoonSnackTopic0, gymTopic2, runningTopic1, yogaTopic0, workPMTopic16, bathroomTopic1, networkingTopic2, breakTopic0, schoolPMTopic1,
//                             tuesdayNow11to13Topic4) // Tues specific tips
//
//        case 14...15:
//            print("weekdayMTW, Afternoon")
//            // call function to display 9 time-based topics
//            appendNineTopics(afternoonSnackTopic1, cafePMTopic0, workPMTopic16, networkingTopic3, breakPMTopic0, commutePMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
//                             tuesdayNow14to16Topic4)
//
//        case 16:
//            print("weekdayMTW, Afternoon")
//            // call function to display 9 time-based topics
//            appendNineTopics(workPMTopic16, afternoonSnackTopic2, breakPMTopic0, commutePMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, happyHourTopic0, networkingTopic3, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
//                             tuesdayNow14to16Topic4)
//
//        case 17...18:
//            print("weekdayMTW, Early-Evening")
//            appendNineTopics(workLateTopic0, commutePMTopic0, gymTopic2, runningTopic0, yogaTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, dinnerTopic1, restaurantTopic9, happyHourTopic0, networkingTopic3, homePMTopic1,
//                             tuesdayNow17to18Topic4)
//
//
//        case 19...20:
//            print("Weekday, Evening")
//            // call function to display 9 time-based topics
//            appendNineTopics(gymTopic2, runningTopic0, yogaTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, dinnerTopic1, restaurantTopic9, barTopic5, dateTopic2, networkingTopic1, safetyTopic2, homePMTopic1,
//                             tuesdayNow19to20Topic4)
//
//        case 21..<24:
//            print("Weekday, Late evening")
//            // call function to display 9 time-based topics
//            appendNineTopics(dinnerAfter9PMTopic0, restaurantTopic9, barTopic0, networkingTopic1, dateTopic2, safetyTopic2, homePMTopic1, lateNightSnackTopic1, bathroomPMTopic1, eveningRoutineTopic0, bedtimeTopic1, cantSleepTopic2,
//                             tuesdayNow21to24Topic4)
//
//        default:
//            print("Weekday,INVALID HOUR!")
//        }
//    }
//
//    // Wednesday (4)
//
//    func wednesday4(_ hour: Int) {
//        switch hour {
//        case 0...4:
//            print("weekdayMTW, Very Early Morning")
//            appendNineTopics(dinnerAfter9PMTopic0, barTopic3, networkingTopic1, safetyTopic2,
//                             restaurantTopic10, lateNightSnackTopic0, groceryStoreTopic0, bathroomPMTopic0, homePMTopic1, eveningRoutineTopic1, bedtimeTopic1, cantSleepTopic2,
//                             wednesdayNow0to4Topic4)
//
//            setNatureImage(to: "night4")
//
//        case 5...7:
//            print("weekdayMTW, Early Morning")
//            appendNineTopics(AMRoutineTopic3, getReadyAMTopic1, gymTopic2, yogaTopic0, runningTopic1, breakfastTopic1, bathroomTopic1, homeAMTopic0, cafeTopic1, commuteAMTopic5, workAMTopic5, schoolAMTopic3,
//                             wednesdayNow5to8Topic4) //*
//
//            setNatureImage(to: "morning4")
//
//        case 8:
//            print("weekdayMTW, Mid Morning")
//            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, homeAMTopic0,
//                             cafeTopic1, commuteAMTopic5, workAMTopic5, schoolAMTopic3,
//                             wednesdayNow5to8Topic4)
//
//            setNatureImage(to: "morning4")
//
//        case 9:
//            print("weekdayMTW, Mid Morning")
//            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic5, networkingTopic1, schoolAMTopic3,
//                             wednesdayNow9to11Topic4)
//
//            setNatureImage(to: "midmorning4")
//
//        case 10:
//            print("weekdayMTW, Late Morning")
//            appendNineTopics(gymTopic2, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic5, networkingTopic1, morningSnackTopic0, breakTopic0, schoolAMTopic3,
//                             wednesdayNow9to11Topic4)
//
//            setNatureImage(to: "midmorning4")
//
//
//        case 11:
//            appendNineTopics(lunchTopic3, restaurantTopic10, cafePMTopic1, afternoonSnackTopic0, gymTopic3, yogaTopic0, runningTopic1, workAMTopic5, bathroomTopic1, breakTopic0, networkingTopic2, schoolPMTopic3,
//                             wednesdayNow11to13Topic4)
//
//            setNatureImage(to: "day4")
//
//
//        case 12...13:
//            print("weekdayMTW, Midday")
//            appendNineTopics(lunchTopic1, restaurantTopic10, cafePMTopic1, afternoonSnackTopic0, gymTopic2, runningTopic1, yogaTopic0, workPMTopic17, bathroomTopic1, networkingTopic2, breakTopic0, schoolPMTopic1,
//                             wednesdayNow11to13Topic4)
//
//            setNatureImage(to: "day4")
//
//
//        case 14...15:
//            print("weekdayMTW, Afternoon")
//            appendNineTopics(afternoonSnackTopic1, cafePMTopic0, workPMTopic17, networkingTopic3, breakPMTopic0, commutePMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
//                             wednesdayNow14to16Topic4)
//
//            setNatureImage(to: "afternoon4")
//
//        case 16:
//            print("weekdayMTW, Afternoon")
//            appendNineTopics(workPMTopic17, afternoonSnackTopic2, breakPMTopic0, commutePMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, happyHourTopic0, networkingTopic3, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
//                             wednesdayNow14to16Topic4)
//
//            setNatureImage(to: "afternoon4")
//
//
//        case 17...18:
//            print("weekdayMTW, Early-Evening")
//            appendNineTopics(workLateTopic0, commutePMTopic0, gymTopic2, runningTopic0, yogaTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, dinnerTopic1, restaurantTopic10, happyHourTopic0, networkingTopic3, homePMTopic1,
//                             wednesdayNow17to18Topic4)
//
//            setNatureImage(to: "sunset4")
//
//        case 19...20:
//            print("Weekday, Evening")
//            appendNineTopics(gymTopic2, runningTopic0, yogaTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, dinnerTopic1, restaurantTopic10, barTopic5, dateTopic2, networkingTopic1, safetyTopic2, homePMTopic1,
//                             wednesdayNow19to20Topic4)
//
//            setNatureImage(to: "sunset4")
//
//
//        case 21..<24:
//            print("Weekday, Late evening")
//            appendNineTopics(dinnerAfter9PMTopic0, restaurantTopic10, barTopic0, networkingTopic1, dateTopic2, safetyTopic2, homePMTopic1, lateNightSnackTopic1, bathroomPMTopic1, eveningRoutineTopic0, bedtimeTopic1, cantSleepTopic2,
//                             wednesdayNow21to24Topic4)
//
//            setNatureImage(to: "night4")
//
//        default:
//            print("Weekday,INVALID HOUR!")
//        }
//    }
//
//    // Thursday (5)
//
//    func thursday4(_ hour: Int) {
//        switch hour {
//        case 0...4:
//            print("weekdayTF, Very Early Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(dinnerAfter9PMTopic0, barTopic3, networkingTopic1, safetyTopic2,
//                             restaurantTopic11, lateNightSnackTopic0, groceryStoreTopic0, bathroomPMTopic0, homePMTopic1, eveningRoutineTopic1, bedtimeTopic1, cantSleepTopic2,
//                             thursdayNow0to4Topic4)
//
//            setNatureImage(to: "night5")
//
//        case 5...7:
//            print("weekdayTF, Early Morning")
//            appendNineTopics(AMRoutineTopic3, getReadyAMTopic2, gymTopic2, yogaTopic0, runningTopic1, breakfastTopic1, bathroomTopic1, homeAMTopic0, cafeTopic1, commuteAMTopic5, workAMTopic5, schoolAMTopic3,
//                             thursdayNow5to8Topic4)
//
//            setNatureImage(to: "morning5")
//
//
//        case 8:
//            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, homeAMTopic0,
//                             cafeTopic1, commuteAMTopic5, workAMTopic5, schoolAMTopic3,
//                             thursdayNow5to8Topic4)
//
//            setNatureImage(to: "morning5")
//
//        case 9:
//            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic5, networkingTopic1, schoolAMTopic3,
//                             thursdayNow9to11Topic4)
//
//            setNatureImage(to: "midmorning5")
//
//        case 10:
//            print("weekdayTF, Late Morning")
//            appendNineTopics(gymTopic2, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic5, networkingTopic1, morningSnackTopic0, breakTopic0, schoolAMTopic3,
//                             thursdayNow9to11Topic4)
//
//            setNatureImage(to: "midmorning5")
//
//
//        case 11:
//            print("weekdayTF, Late Morning")
//            appendNineTopics(lunchTopic3, restaurantTopic11, cafePMTopic1, afternoonSnackTopic1, gymTopic3, yogaTopic0, runningTopic1, workAMTopic5, bathroomTopic1, breakTopic0, networkingTopic2, schoolPMTopic3,
//                             thursdayNow11to13Topic4)
//
//            setNatureImage(to: "midmorning5")
//
//        case 12...13:
//            print("weekdayTF, Midday")
//            appendNineTopics(lunchTopic1, restaurantTopic11, cafePMTopic1, afternoonSnackTopic0, gymTopic2, runningTopic1, yogaTopic0, workPMTopic18, bathroomTopic1, networkingTopic2, breakTopic0, schoolPMTopic1,
//                             thursdayNow11to13Topic4)
//
//            setNatureImage(to: "day5")
//
//
//        case 14...15: // 2PM-4PM
//            print("weekdayTF, Afternoon")
//
//            appendNineTopics(afternoonSnackTopic1, cafePMTopic0, workPMTopic18, networkingTopic3, breakPMTopic0, commutePMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
//                             thursdayNow14to16Topic4)
//
//            setNatureImage(to: "afternoon5")
//
//
//        case 16:
//            print("weekdayTF, Afternoon")
//            appendNineTopics(workPMTopic18, afternoonSnackTopic2, breakPMTopic0, commutePMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, happyHourTopic0, networkingTopic3, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
//                             thursdayNow14to16Topic4)
//
//            setNatureImage(to: "afternoon5")
//
//
//        case 17...18:
//            print("weekdayTF, Evening 5PM")
//            appendNineTopics(workLateTopic0, commutePMTopic0, gymTopic2, runningTopic0, yogaTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, dinnerTopic1, restaurantTopic11, happyHourTopic0, networkingTopic3, homePMTopic1,
//                             thursdayNow17to18Topic4)
//
//            setNatureImage(to: "afternoon5")
//
//
//        case 19...20:
//            print("weekdayTF, Evening")
//            appendNineTopics(gymTopic2, runningTopic0, yogaTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, dinnerTopic1, restaurantTopic11, barTopic5, dateTopic2, networkingTopic1, safetyTopic2, homePMTopic1,
//                             thursdayNow19to20Topic4)
//
//            setNatureImage(to: "sunset5")
//
//        case 21..<24:
//            print("weekdayTF, Late evening")
//            // call function to display 9 time-based topics
//            appendNineTopics(dinnerAfter9PMTopic0, restaurantTopic11, barTopic0, networkingTopic1, dateTopic2, safetyTopic2, homePMTopic1, lateNightSnackTopic1, bathroomPMTopic1, eveningRoutineTopic0, bedtimeTopic1, cantSleepTopic2,
//                             thursdayNow21to24Topic4)
//
//            setNatureImage(to: "night5")
//
//
//        default:
//            print("weekdayTF,INVALID HOUR!")
//        }
//    }
//
//    //Friday (6)
//
//    func friday4(_ hour: Int) {
//        switch hour {
//        case 0...4:
//            print("weekday Fri, Very Early Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(dinnerAfter9PMTopic0, barTopic3, networkingTopic1, safetyTopic2,
//                             restaurantTopic12, lateNightSnackTopic0, groceryStoreTopic0, bathroomPMTopic0, homePMTopic1, eveningRoutineTopic1, bedtimeTopic1, cantSleepTopic2,
//                             fridayNow0to4Topic4)
//
//            setNatureImage(to: "night6")
//
//        case 5...7:
//            print("weekday Fri, Early Morning")
//            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic1, breakfastTopic1, bathroomTopic1, homeAMTopic0, cafeTopic1, commuteAMTopic5, workAMTopic5, schoolAMTopic3,
//                             fridayNow5to8Topic4)
//
//            setNatureImage(to: "morning6")
//
//
//        case 8:
//            print("weekday Fri, Late Morning")
//            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, homeAMTopic0,
//                             cafeTopic1, commuteAMTopic5, workAMTopic5, schoolAMTopic3,
//                             fridayNow5to8Topic4)
//
//            setNatureImage(to: "midmorning6")
//
//        case 9:
//            print("weekday Fri, Late Morning")
//            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic5, networkingTopic1, schoolAMTopic3,
//                             fridayNow9to11Topic4)
//
//            setNatureImage(to: "midmorning6")
//
//
//        case 10:
//            print("weekday Fri, Late Morning")
//            appendNineTopics(gymTopic2, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic5, networkingTopic1, morningSnackTopic0, breakTopic0, schoolAMTopic3,
//                             fridayNow9to11Topic4)
//
//            setNatureImage(to: "midmorning6")
//
//
//        case 11:
//            print("weekday Fri, Midday")
//            appendNineTopics(lunchTopic3, restaurantTopic12, cafePMTopic1, afternoonSnackTopic0, gymTopic3, runningTopic1, workAMTopic5, bathroomTopic1, breakTopic0, networkingTopic2, travelTopic2, schoolPMTopic3,
//                             fridayNow11to13Topic4)
//
//            setNatureImage(to: "day6")
//
//
//        case 12...13:
//            print("weekday Fri, Midday")
//            appendNineTopics(lunchTopic1, restaurantTopic12, cafePMTopic1, afternoonSnackTopic0, gymTopic2, runningTopic1, workPMTopic19, bathroomTopic1, networkingTopic2, breakTopic0, travelTopic2, schoolPMTopic1,
//                             fridayNow11to13Topic4)
//
//            setNatureImage(to: "day6")
//
//        case 14...15:
//            ////FRIDAY ONLY COMMUTE
//            print("weekday Fri, Afternoon")
//            appendNineTopics(afternoonSnackTopic1, cafePMTopic0, workPMTopic19, networkingTopic4, breakPMTopic1, commuteFridayPMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, gymTopic10, runningTopic0, travelTopic2, schoolPMTopic2,
//                             fridayNow14to16Topic4)
//
//            setNatureImage(to: "afternoon6")
//
//
//        case 16:
//            ////FRIDAY ONLY COMMUTE
//            print("weekday Fri, Afternoon")
//            appendNineTopics(afternoonSnackTopic2, cafePMTopic0, workPMTopic19, breakPMTopic1, commuteFridayPMTopic0, gymTopic10, runningTopic0, happyHourTopic0, networkingTopic4, groceryStoreTopic6, shoppingClothesTopic0, travelTopic2,
//                             fridayNow14to16Topic4)
//
//            setNatureImage(to: "afternoon6")
//
//
//        case 17...18:
//            print("weekday Fri, Evening 5-6PM")
//
//            ////FRIDAY ONLY COMMUTE
//            appendNineTopics(commuteFridayPMTopic0, gymTopic10, runningTopic0, homePMTopic5, goingOutTopic0, happyHourTopic0, networkingTopic1, dinnerTopic5, restaurantTopic12, groceryStoreTopic6, shoppingClothesTopic0,  travelTopic2,
//                             fridayNow17to18Topic4)
//
//            setNatureImage(to: "afternoon6")
//
//        case 19...20:
//            print("weekday Fri, Evening 7-8PM")
//            // call function to display 9 time-based topics
//            appendNineTopics(gymTopic10, runningTopic0, homePMTopic5, goingOutTopic0, dinnerTopic5, restaurantTopic12, barTopic5, networkingTopic1, dateTopic0, safetyTopic6, groceryStoreTopic6, travelTopic2,
//                             fridayNow19to20Topic4)
//
//            setNatureImage(to: "sunset6")
//
//
//        case 21..<24:
//            print("weekdayTF, Late evening 9-12PM")
//            // call function to display 9 time-based topics
//            appendNineTopics(homePMTopic5, goingOutTopic0, dinnerAfter9PMTopic4, restaurantTopic12,  barTopic0, networkingTopic1, dateTopic2, safetyTopic6,
//                             lateNightSnackTopic1, eveningRoutineTopic0, bedtimeFriPMTopic5, cantSleepTopic3,
//                             fridayNow21to24Topic4)
//
//            setNatureImage(to: "night6")
//
//        default:
//            print("weekdayTF,INVALID HOUR!")
//        }
//    }
//
//    //Saturday (7)
//
//    func saturday4(_ hour: Int) {
//        switch hour {
//        case 0...4:
//            print("Weekend, Very Early Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(dinnerAfter9PMTopic0, barTopic3, networkingTopic1, safetyTopic2,
//                             restaurantTopic13, lateNightSnackTopic0, groceryStoreTopic0, bathroomPMTopic0, homePMTopic1, eveningRoutineTopic1, bedtimeTopic1, cantSleepTopic2,
//                             saturday0to4Topic4)
//
//        case 5...8:
//            print("Weekend, Early Morning")
//            appendNineTopics(AMRoutineTopic0, gymTopic0, runningTopic0, yogaTopic0, homeAMTopic0, bathroomTopic0, getReadyAMTopic0, breakfastTopic0, cafeTopic0, networkingTopic1, groceryStoreWENDTopic0, travelTopic2,
//                             saturdayNow5to8Topic4)
//
//        case 9:
//            print("Weekend, Early Morning")
//            appendNineTopics(AMRoutineTopic0, gymTopic0,  runningTopic0, yogaTopic0, homeAMTopic0, bathroomTopic0, getReadyAMTopic0, breakfastTopic0, cafeTopic0, networkingTopic1, groceryStoreWENDTopic0, travelTopic2,
//                             saturdayNow9to10Topic3)
//
//        case 10:
//            print("Weekend, Late Morning")
//            appendNineTopics(AMRoutineTopic0, gymTopic0, runningTopic0, yogaTopic0, homeAMTopic0, getReadyAMTopic0, brunchTopic0, cafeTopic0,
//                             networkingTopic1, groceryStoreTopic0, shoppingClothesTopic0, travelTopic2,
//                             saturdayNow9to10Topic3)
//
//        case 11...13:
//            print("Weekend, Midday")
//            appendNineTopics(homePMTopic6, gymTopic12, runningTopic0, cafePMTopic1,
//                             brunchTopic1, lunchTopic1, restaurantTopic13, barTopic2,
//                             networkingTopic1, groceryStoreWENDTopic0, shoppingClothesTopic1, travelTopic2,
//                             saturdayNow11to13Topic4)
//
//        case 14...16:
//            print("Weekend, Afternoon")
//            // call function to display 9 time-based topics
//            appendNineTopics(homePMTopic0, gymTopic1, runningTopic0, yogaTopic0, afternoonSnackTopic0, cafePMTopic0, barTopic1, networkingTopic1, dateTopic1, shoppingClothesTopic2, groceryStoreTopic0, travelTopic2,
//                             saturdayNow14to16Topic4)
//
//        case 17...18:
//            print("Weekend, Early Evening")
//            // call function to display 9 time-based topics
//            appendNineTopics(homePMTopic0, dinnerTopic0, restaurantTopic13, barTopic1, dateTopic1, networkingTopic1, groceryStoreTopic1, shoppingClothesTopic0, gymTopic1, runningTopic0, yogaTopic0, travelTopic2,
//                             saturdayNow17to18Topic4)
//
//        case 19...20:
//            print("Weekend, Early Evening")
//            // call function to display 9 time-based topics
//            appendNineTopics(homePMTopic0, dinnerTopic0, restaurantTopic13, barTopic1, dateTopic1, safetyTopic1, groceryStoreTopic1, shoppingClothesTopic1, gymTopic1, runningTopic0, yogaTopic0, travelTopic2,
//                             saturdayNow19to20Topic4)
//
//        case 21..<24:
//            print("Weekend, Late evening")
//            // call function to display 9 time-based topics
//            appendNineTopics(dinnerAfter9PMTopic0, lateNightSnackTopic1, barTopic2, dateTopic1, safetyTopic1, networkingTopic1, gymTopic1, homePMTopic0,
//                             bathroomPMTopic0, eveningRoutineTopic0, bedtimeTopic0, cantSleepTopic1,
//                             saturday21to24Topic4)
//
//        default:
//            print("Weekend,INVALID HOUR!")
//        }
//    }
//
//
//    //MARK: - WEEK 5
//
//    func sunday5(_ hour: Int) {
//        switch hour {
//        case 0...4:
//            print("Weekend, Very Early Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(dinnerAfter9PMTopic0, barTopic0, networkingTopic1, safetyTopic1,
//                             restaurantTopic0, lateNightSnackTopic0, groceryStoreTopic0, bathroomPMTopic0, homeAMTopic0, eveningRoutineTopic0, bedtimeTopic0, cantSleepTopic1,
//                             sunday0to4Topic5)
//
//        case 5...8:
//            print("Weekend, Early Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(AMRoutineTopic0, gymTopic0, runningTopic0, yogaTopic0, homeAMTopic0, bathroomTopic0, getReadyAMTopic0, breakfastTopic0, cafeTopic0, networkingTopic1, groceryStoreWENDTopic0, travelTopic2,
//                             sundayNow5to8Topic5)
//
//        case 9:
//            print("Weekend, Early Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(AMRoutineTopic0, gymTopic0,  runningTopic0, yogaTopic0, homeAMTopic0, bathroomTopic0, getReadyAMTopic0, breakfastTopic0, cafeTopic0, networkingTopic1, groceryStoreWENDTopic0, travelTopic2,
//                             sundayNow9to10Topic4)
//
//        case 10:
//            print("Weekend, Late Morning")
//            // call function to display 9 time-based topics // ****
//            appendNineTopics(AMRoutineTopic0, gymTopic0, runningTopic0, yogaTopic0, homeAMTopic0, getReadyAMTopic0, brunchTopic0, cafeTopic0,
//                             networkingTopic1, groceryStoreTopic0, shoppingClothesTopic0, travelTopic2,
//                             sundayNow9to10Topic4)
//
//        case 11...13:
//            print("Weekend, Midday")
//            appendNineTopics(homeAMTopic0, gymTopic0, runningTopic0, cafePMTopic0, brunchTopic0, lunchTopic0, restaurantTopic0, barTopic1, networkingTopic1, groceryStoreWENDTopic0, shoppingClothesTopic1, travelTopic2,
//                             sundayNow11to13Topic5)
//
//        case 14...16:
//            print("Weekend, Afternoon")
//            // call function to display 9 time-based topics
//            appendNineTopics(homePMTopic0, gymTopic1, runningTopic0, yogaTopic0, afternoonSnackTopic0, cafePMTopic0, barTopic1, networkingTopic1, dateTopic1, shoppingClothesTopic2, groceryStoreTopic0, travelTopic2,
//                             sundayNow14to16Topic5)
//
//        case 17...18:
//            print("Weekend, Early Evening")
//            // call function to display 9 time-based topics
//            appendNineTopics(homePMTopic0, dinnerTopic0, restaurantTopic0, barTopic1, dateTopic1, networkingTopic1, groceryStoreTopic1, shoppingClothesTopic0, gymTopic1, runningTopic0, yogaTopic0, travelTopic2,
//                             sundayNow17to18Topic5)
//
//        case 19...20:
//            print("Weekend, Mid Evening")
//            // call function to display 9 time-based topics
//            appendNineTopics(homePMTopic0, dinnerTopic0, restaurantTopic0, barTopic1, dateTopic1, safetyTopic1, groceryStoreTopic1, shoppingClothesTopic1, gymTopic1, runningTopic0, yogaTopic0, travelTopic2,
//                             sundayNow19to20Topic5)
//
//        case 21..<24:
//            print("Weekend, Late evening")
//            // call function to display 9 time-based topics
//            appendNineTopics(dinnerAfter9PMTopic0, lateNightSnackTopic1, barTopic2, dateTopic1, safetyTopic1, networkingTopic1, gymTopic1, homePMTopic0,
//                             bathroomPMTopic0, eveningRoutineTopic0, bedtimeTopic0, cantSleepTopic1,
//                             sunday21to24Topic5)
//
//        default:
//            print("Weekend,INVALID HOUR!")
//        }
//    }
//
//    // Monday (2)
//
//    // More people Google 'diet' and go to the gym at the start of the week, month year
//    // Same with starting a new job or new semester, they give us a fresh start
//    func monday5(_ hour: Int) {
//        switch hour {
//        case 0...4:
//            print("weekdayMTW, Very Early Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(dinnerAfter9PMTopic0, barTopic3, networkingTopic1, safetyTopic2,
//                             restaurantTopic1, lateNightSnackTopic0, groceryStoreTopic0, bathroomPMTopic0,
//                             homePMTopic1, eveningRoutineTopic0, bedtimeTopic1, cantSleepTopic2,
//                             mondayNow0to4Topic5)
//
//        case 5...7:
//            print("weekdayMTW, Early Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(AMRoutineTopic0, gymTopic2, runningTopic1, yogaTopic0, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, homeAMTopic0, cafeTopic1, commuteAMTopic0, workAMTopic5, schoolAMTopic1,
//                             mondayNow5to8Topic5)
//
//            // meditate, journal,
//            // work, networking
//
//        case 8:
//            print("weekdayMTW, arly Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(AMRoutineTopic0, gymTopic2, runningTopic1, yogaTopic0,  getReadyAMTopic0, breakfastTopic1, bathroomTopic1, homeAMTopic0,
//                             cafeTopic1, commuteAMTopic0, workAMTopic5, schoolAMTopic1,
//                             mondayNow5to8Topic5)
//
//        case 9:
//            print("weekdayMTW, mid Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(AMRoutineTopic0, gymTopic2, runningTopic1, yogaTopic0,  getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic0, workAMTopic5, networkingTopic1, schoolAMTopic1,
//                             mondayNow9to11Topic5)
//
//        case 10:
//            print("weekdayMTW, Late Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(gymTopic2, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic0, workAMTopic5, networkingTopic1, morningSnackTopic0, breakTopic0, schoolAMTopic1,
//                             mondayNow9to11Topic5)
//
//        case 11:
//            print("weekdayMTW, Late Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(morningSnackTopic0, lunchTopic1, restaurantTopic1, cafeTopic1, gymTopic2, runningTopic1, yogaTopic0, workAMTopic5, bathroomTopic1, networkingTopic2, breakTopic0, schoolAMTopic1,
//                             mondayNow11to13Topic5)
//
//        case 12...13:
//            print("weekdayMTW, Midday")
//            appendNineTopics(lunchTopic1, restaurantTopic1, cafePMTopic1, afternoonSnackTopic0, gymTopic2, runningTopic1, yogaTopic0, workPMTopic20, bathroomTopic1, networkingTopic2, breakTopic0, schoolPMTopic1,
//                             mondayNow11to13Topic5)
//
//        case 14...15:
//            print("weekdayMTW, Afternoon")
//            // call function to display 9 time-based topics
//            appendNineTopics(afternoonSnackTopic1, cafePMTopic0, workPMTopic20, networkingTopic3, breakPMTopic0, commutePMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
//                             mondayNow14to16Topic5)
//
//        case 16:
//            print("weekdayMTW, Afternoon")
//            // call function to display 9 time-based topics
//            appendNineTopics(workPMTopic20, afternoonSnackTopic2, breakPMTopic0, commutePMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, happyHourTopic0, networkingTopic3, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
//                             mondayNow14to16Topic5)
//
//        case 17...18:
//            print("weekdayMTW, Early-Evening")
//
//            appendNineTopics(workLateTopic0, commutePMTopic0, gymTopic2, runningTopic0, yogaTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, dinnerTopic1, restaurantTopic1, happyHourTopic0, networkingTopic3, homePMTopic1,
//                             mondayNow17to18Topic5)
//
//        case 19...20:
//            print("Weekday, Evening")
//            // call function to display 9 time-based topics
//            appendNineTopics(gymTopic2, runningTopic0, yogaTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, dinnerTopic1, restaurantTopic1, barTopic5, dateTopic2, networkingTopic1, safetyTopic2, homePMTopic1,
//                             mondayNow19to20Topic5)
//
//        case 21..<24:
//            print("Weekday, Late evening")
//            // call function to display 9 time-based topics
//            appendNineTopics(dinnerAfter9PMTopic0, restaurantTopic1, barTopic0, networkingTopic1, dateTopic2, safetyTopic2, homePMTopic1, lateNightSnackTopic1, bathroomPMTopic1, eveningRoutineTopic0, bedtimeTopic1, cantSleepTopic2,
//                             mondayNow21to24Topic5)
//
//
//        default:
//            print("Weekday,INVALID HOUR!")
//        }
//    }
//
//    // Tuesday (3)
//
//    func tuesday5(_ hour: Int) {
//        switch hour {
//        case 0...4:
//            print("weekdayMTW, Very Early Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(dinnerAfter9PMTopic0, barTopic3, networkingTopic1, safetyTopic2,
//                             restaurantTopic2, lateNightSnackTopic0, groceryStoreTopic0, bathroomPMTopic0, homePMTopic1, eveningRoutineTopic1, bedtimeTopic1, cantSleepTopic2,
//                             tuesdayNow0to4Topic5)
//
//        case 5...7:
//            print("weekdayMTW, Early Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(AMRoutineTopic3, getReadyAMTopic1, gymTopic2, yogaTopic0, runningTopic1, breakfastTopic1, bathroomTopic1, homeAMTopic0, cafeTopic1, commuteTuesdayAMTopic0, workAMTopic6, schoolAMTopic3,
//                             tuesdayNow5to8Topic5) //*
//
//        case 8:
//            print("weekdayMTW, Early Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, homeAMTopic0,
//                             cafeTopic1, commuteTuesdayAMTopic0, workAMTopic6, schoolAMTopic3,
//                             tuesdayNow5to8Topic5) //*
//
//        case 9:
//            print("weekdayMTW, Mid Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteTuesdayAMTopic0, workAMTopic6, networkingTopic1, schoolAMTopic3,
//                             tuesdayNow9to11Topic5) //*
//
//        case 10:
//            print("weekdayMTW, Late Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(gymTopic2, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteTuesdayAMTopic0, workAMTopic6, networkingTopic1, morningSnackTopic0, breakTopic0, schoolAMTopic3,
//                             tuesdayNow9to11Topic5)
//
//        case 11:
//            print("weekdayMTW, Late Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(lunchTopic3, restaurantTopic2, cafePMTopic1, afternoonSnackTopic0, gymTopic3, yogaTopic0, runningTopic1, workAMTopic6, bathroomTopic1, breakTopic0, networkingTopic2, schoolPMTopic3,
//                             tuesdayNow11to13Topic5)
//
//        case 12...13:
//            print("weekdayMTW, Midday")
//            appendNineTopics(lunchTopic1, restaurantTopic2, cafePMTopic1, afternoonSnackTopic0, gymTopic2, runningTopic1, yogaTopic0, workPMTopic21, bathroomTopic1, networkingTopic2, breakTopic0, schoolPMTopic1,
//                             tuesdayNow11to13Topic5) // Tues specific tips
//
//        case 14...15:
//            print("weekdayMTW, Afternoon")
//            // call function to display 9 time-based topics
//            appendNineTopics(afternoonSnackTopic1, cafePMTopic0, workPMTopic21, networkingTopic3, breakPMTopic0, commutePMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
//                             tuesdayNow14to16Topic5)
//
//        case 16:
//            print("weekdayMTW, Afternoon")
//            // call function to display 9 time-based topics
//            appendNineTopics(workPMTopic21, afternoonSnackTopic2, breakPMTopic0, commutePMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, happyHourTopic0, networkingTopic3, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
//                             tuesdayNow14to16Topic5)
//
//        case 17...18:
//            print("weekdayMTW, Early-Evening")
//            appendNineTopics(workLateTopic0, commutePMTopic0, gymTopic2, runningTopic0, yogaTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, dinnerTopic1, restaurantTopic2, happyHourTopic0, networkingTopic3, homePMTopic1,
//                             tuesdayNow17to18Topic5)
//
//
//        case 19...20:
//            print("Weekday, Evening")
//            // call function to display 9 time-based topics
//            appendNineTopics(gymTopic2, runningTopic0, yogaTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, dinnerTopic1, restaurantTopic2, barTopic5, dateTopic2, networkingTopic1, safetyTopic2, homePMTopic1,
//                             tuesdayNow19to20Topic5)
//
//        case 21..<24:
//            print("Weekday, Late evening")
//            // call function to display 9 time-based topics
//            appendNineTopics(dinnerAfter9PMTopic0, restaurantTopic2, barTopic0, networkingTopic1, dateTopic2, safetyTopic2, homePMTopic1, lateNightSnackTopic1, bathroomPMTopic1, eveningRoutineTopic0, bedtimeTopic1, cantSleepTopic2,
//                             tuesdayNow21to24Topic5)
//
//        default:
//            print("Weekday,INVALID HOUR!")
//        }
//    }
//
//    // Wednesday (4)
//
//    func wednesday5(_ hour: Int) {
//        switch hour {
//        case 0...4:
//            print("weekdayMTW, Very Early Morning")
//            appendNineTopics(dinnerAfter9PMTopic0, barTopic3, networkingTopic1, safetyTopic2,
//                             restaurantTopic3, lateNightSnackTopic0, groceryStoreTopic0, bathroomPMTopic0, homePMTopic1, eveningRoutineTopic1, bedtimeTopic1, cantSleepTopic2,
//                             wednesdayNow0to4Topic5)
//
//            setNatureImage(to: "night4")
//
//        case 5...7:
//            print("weekdayMTW, Early Morning")
//            appendNineTopics(AMRoutineTopic3, getReadyAMTopic1, gymTopic2, yogaTopic0, runningTopic1, breakfastTopic1, bathroomTopic1, homeAMTopic0, cafeTopic1, commuteAMTopic5, workAMTopic7, schoolAMTopic3,
//                             wednesdayNow5to8Topic5) //*
//
//            setNatureImage(to: "morning4")
//
//        case 8:
//            print("weekdayMTW, Mid Morning")
//            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, homeAMTopic0, cafeTopic1, commuteAMTopic5, workAMTopic7, schoolAMTopic3,
//                             wednesdayNow5to8Topic5)
//
//            setNatureImage(to: "morning4")
//
//        case 9:
//            print("weekdayMTW, Mid Morning")
//            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic7, networkingTopic1, schoolAMTopic3,
//                             wednesdayNow9to11Topic5)
//
//            setNatureImage(to: "midmorning4")
//
//        case 10:
//            print("weekdayMTW, Late Morning")
//            appendNineTopics(gymTopic2, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic7, networkingTopic1, morningSnackTopic0, breakTopic0, schoolAMTopic3,
//                             wednesdayNow9to11Topic5)
//
//            setNatureImage(to: "midmorning4")
//
//
//        case 11:
//            appendNineTopics(lunchTopic3, restaurantTopic3, cafePMTopic1, afternoonSnackTopic0, gymTopic3, yogaTopic0, runningTopic1, workAMTopic7, bathroomTopic1, breakTopic0, networkingTopic2, schoolPMTopic3,
//                             wednesdayNow11to13Topic5)
//
//            setNatureImage(to: "day4")
//
//
//        case 12...13:
//            print("weekdayMTW, Midday")
//            appendNineTopics(lunchTopic1, restaurantTopic3, cafePMTopic1, afternoonSnackTopic0, gymTopic2, runningTopic1, yogaTopic0, workPMTopic22, bathroomTopic1, networkingTopic2, breakTopic0, schoolPMTopic1,
//                             wednesdayNow11to13Topic5)
//
//            setNatureImage(to: "day4")
//
//
//        case 14...15:
//            print("weekdayMTW, Afternoon")
//            appendNineTopics(afternoonSnackTopic1, cafePMTopic0, workPMTopic22, networkingTopic3, breakPMTopic0, commutePMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
//                             wednesdayNow14to16Topic5)
//
//            setNatureImage(to: "afternoon4")
//
//        case 16:
//            print("weekdayMTW, Afternoon")
//            appendNineTopics(workPMTopic22, afternoonSnackTopic2, breakPMTopic0, commutePMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, happyHourTopic0, networkingTopic3, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
//                             wednesdayNow14to16Topic5)
//
//            setNatureImage(to: "afternoon4")
//
//
//        case 17...18:
//            print("weekdayMTW, Early-Evening")
//            appendNineTopics(workLateTopic0, commutePMTopic0, gymTopic2, runningTopic0, yogaTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, dinnerTopic1, restaurantTopic3, happyHourTopic0, networkingTopic3, homePMTopic1,
//                             wednesdayNow17to18Topic5)
//
//            setNatureImage(to: "sunset4")
//
//        case 19...20:
//            print("Weekday, Evening")
//            appendNineTopics(gymTopic2, runningTopic0, yogaTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, dinnerTopic1, restaurantTopic3, barTopic5, dateTopic2, networkingTopic1, safetyTopic2, homePMTopic1,
//                             wednesdayNow19to20Topic5)
//
//            setNatureImage(to: "sunset4")
//
//
//        case 21..<24:
//            print("Weekday, Late evening")
//            appendNineTopics(dinnerAfter9PMTopic0, restaurantTopic3, barTopic0, networkingTopic1, dateTopic2, safetyTopic2, homePMTopic1, lateNightSnackTopic1, bathroomPMTopic1, eveningRoutineTopic0, bedtimeTopic1, cantSleepTopic2,
//                             wednesdayNow21to24Topic5)
//
//            setNatureImage(to: "night4")
//
//        default:
//            print("Weekday,INVALID HOUR!")
//        }
//    }
//
//    // Thursday (5)
//
//    func thursday5(_ hour: Int) {
//        switch hour {
//        case 0...4:
//            print("weekdayTF, Very Early Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(dinnerAfter9PMTopic0, barTopic3, networkingTopic1, safetyTopic2,
//                             restaurantTopic4, lateNightSnackTopic0, groceryStoreTopic0, bathroomPMTopic0, homePMTopic1, eveningRoutineTopic1, bedtimeTopic1, cantSleepTopic2,
//                             thursdayNow0to4Topic5)
//
//            setNatureImage(to: "night5")
//
//        case 5...7:
//            print("weekdayTF, Early Morning")
//            appendNineTopics(AMRoutineTopic3, getReadyAMTopic1, gymTopic2, yogaTopic0, runningTopic1, breakfastTopic1, bathroomTopic1, homeAMTopic0, cafeTopic1, commuteAMTopic5, workAMTopic8, schoolAMTopic3,
//                             thursdayNow5to8Topic5)
//
//            setNatureImage(to: "morning5")
//
//
//        case 8:
//            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, homeAMTopic0,
//                             cafeTopic1, commuteAMTopic5, workAMTopic8, schoolAMTopic3,
//                             thursdayNow5to8Topic5)
//
//            setNatureImage(to: "morning5")
//
//        case 9:
//            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic8, networkingTopic1, schoolAMTopic3,
//                             thursdayNow9to11Topic5)
//
//            setNatureImage(to: "midmorning5")
//
//        case 10:
//            print("weekdayTF, Late Morning")
//            appendNineTopics(gymTopic2, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic8, networkingTopic1, morningSnackTopic0, breakTopic0, schoolAMTopic3,
//                             thursdayNow9to11Topic5)
//
//            setNatureImage(to: "midmorning5")
//
//
//        case 11:
//            print("weekdayTF, Late Morning")
//            appendNineTopics(lunchTopic3, restaurantTopic4, cafePMTopic1, afternoonSnackTopic0, gymTopic3, yogaTopic0, runningTopic1, workAMTopic8, bathroomTopic1, breakTopic0, networkingTopic2, schoolPMTopic3,
//                             thursdayNow11to13Topic5)
//
//            setNatureImage(to: "midmorning5")
//
//        case 12...13:
//            print("weekdayTF, Midday")
//            appendNineTopics(lunchTopic1, restaurantTopic4, cafePMTopic1, afternoonSnackTopic0, gymTopic2, runningTopic1, yogaTopic0, workPMTopic23, bathroomTopic1, networkingTopic2, breakTopic0, schoolPMTopic1,
//                             thursdayNow11to13Topic5)
//
//            setNatureImage(to: "day5")
//
//
//        case 14...15: // 2PM-4PM
//            print("weekdayTF, Afternoon")
//
//            appendNineTopics(afternoonSnackTopic1, cafePMTopic0, workPMTopic23, networkingTopic3, breakPMTopic0, commutePMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
//                             thursdayNow14to16Topic5)
//
//            setNatureImage(to: "afternoon5")
//
//
//        case 16:
//            print("weekdayTF, Afternoon")
//            appendNineTopics(workPMTopic23, afternoonSnackTopic2, breakPMTopic0, commutePMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, happyHourTopic0, networkingTopic3, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
//                             thursdayNow14to16Topic5)
//
//            setNatureImage(to: "afternoon5")
//
//
//        case 17...18:
//            print("weekdayTF, Evening 5PM")
//            appendNineTopics(workLateTopic0, commutePMTopic0, gymTopic2, runningTopic0, yogaTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, dinnerTopic1, restaurantTopic4, happyHourTopic0, networkingTopic3, homePMTopic1,
//                             thursdayNow17to18Topic5)
//
//            setNatureImage(to: "afternoon5")
//
//        case 19...20:
//            print("weekdayTF, Evening")
//            appendNineTopics(gymTopic2, runningTopic0, yogaTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, dinnerTopic1, restaurantTopic4, barTopic5, dateTopic2, networkingTopic1, safetyTopic2, homePMTopic1,
//                             thursdayNow19to20Topic5)
//
//            setNatureImage(to: "sunset5")
//
//        case 21..<24:
//            print("weekdayTF, Late evening")
//            // call function to display 9 time-based topics
//            appendNineTopics(dinnerAfter9PMTopic0, restaurantTopic4, barTopic0, networkingTopic1, dateTopic2, safetyTopic2, homePMTopic1, lateNightSnackTopic1, bathroomPMTopic1, eveningRoutineTopic0, bedtimeTopic1, cantSleepTopic2,
//                             thursdayNow21to24Topic5)
//
//            setNatureImage(to: "night5")
//
//
//        default:
//            print("weekdayTF,INVALID HOUR!")
//        }
//    }
//
//    //Friday (6)
//
//    func friday5(_ hour: Int) {
//        switch hour {
//        case 0...4:
//            print("weekday Fri, Very Early Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(dinnerAfter9PMTopic0, barTopic3, networkingTopic1, safetyTopic2,
//                             restaurantTopic5, lateNightSnackTopic0, groceryStoreTopic0, bathroomPMTopic0, homePMTopic1, eveningRoutineTopic1, bedtimeTopic1, cantSleepTopic2,
//                             fridayNow0to4Topic5)
//
//            setNatureImage(to: "night6")
//
//        case 5...7:
//            print("weekday Fri, Early Morning")
//            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic1, breakfastTopic1, bathroomTopic1, homeAMTopic0, cafeTopic1, commuteAMTopic5, workAMTopic9, schoolAMTopic3,
//                             fridayNow5to8Topic5)
//
//            setNatureImage(to: "morning6")
//
//
//        case 8:
//            print("weekday Fri, Late Morning")
//            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, homeAMTopic0,
//                             cafeTopic1, commuteAMTopic5, workAMTopic9, schoolAMTopic3,
//                             fridayNow5to8Topic5)
//
//            setNatureImage(to: "midmorning6")
//
//        case 9:
//            print("weekday Fri, Late Morning")
//            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic9, networkingTopic1, schoolAMTopic3,
//                             fridayNow9to11Topic5)
//
//            setNatureImage(to: "midmorning6")
//
//
//        case 10:
//            print("weekday Fri, Late Morning")
//            appendNineTopics(gymTopic2, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic9, networkingTopic1, morningSnackTopic0, breakTopic0, schoolAMTopic3,
//                             fridayNow9to11Topic5)
//
//            setNatureImage(to: "midmorning6")
//
//
//        case 11:
//            print("weekday Fri, Midday")
//            appendNineTopics(lunchTopic3, restaurantTopic5, cafePMTopic1, afternoonSnackTopic0, gymTopic3, runningTopic1, workAMTopic9, bathroomTopic1, breakTopic0, networkingTopic2, travelTopic2, schoolPMTopic3,
//                             fridayNow11to13Topic5)
//
//            setNatureImage(to: "day6")
//
//
//        case 12...13:
//            print("weekday Fri, Midday")
//            appendNineTopics(lunchTopic1, restaurantTopic5, cafePMTopic1, afternoonSnackTopic0, gymTopic2, runningTopic1, workPMTopic24, bathroomTopic1, networkingTopic2, breakTopic0, travelTopic2, schoolPMTopic1,
//                             fridayNow11to13Topic5)
//
//            setNatureImage(to: "day6")
//
//        case 14...15:
//            ////FRIDAY ONLY COMMUTE
//            print("weekday Fri, Afternoon")
//            appendNineTopics(afternoonSnackTopic1, cafePMTopic0, workPMTopic24, networkingTopic4, breakPMTopic1, commuteFridayPMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, gymTopic10, runningTopic0, travelTopic2, schoolPMTopic2,
//                             fridayNow14to16Topic5)
//
//            setNatureImage(to: "afternoon6")
//
//
//        case 16:
//            ////FRIDAY ONLY COMMUTE
//            print("weekday Fri, Afternoon")
//            appendNineTopics(afternoonSnackTopic2, cafePMTopic0, workPMTopic24, breakPMTopic1, commuteFridayPMTopic0, gymTopic10, runningTopic0, happyHourTopic0, networkingTopic4, groceryStoreTopic6, shoppingClothesTopic0, travelTopic2,
//                             fridayNow14to16Topic5)
//
//            setNatureImage(to: "afternoon6")
//
//
//        case 17...18:
//            print("weekday Fri, Evening 5-6PM")
//
//            ////FRIDAY ONLY COMMUTE
//            appendNineTopics(commuteFridayPMTopic0, gymTopic10, runningTopic0, homePMTopic5, goingOutTopic0, happyHourTopic0, networkingTopic1, dinnerTopic5, restaurantTopic5, groceryStoreTopic6, shoppingClothesTopic0,  travelTopic2,
//                             fridayNow17to18Topic5)
//
//            setNatureImage(to: "afternoon6")
//
//        case 19...20:
//            print("weekday Fri, Evening 7-8PM")
//            // call function to display 9 time-based topics
//            appendNineTopics(gymTopic10, runningTopic0, homePMTopic5, goingOutTopic0, dinnerTopic5, restaurantTopic5, barTopic5, networkingTopic1, dateTopic0, safetyTopic6, groceryStoreTopic6, travelTopic2,
//                             fridayNow19to20Topic5)
//
//            setNatureImage(to: "sunset6")
//
//
//        case 21..<24:
//            print("weekdayTF, Late evening 9-12PM")
//            // call function to display 9 time-based topics
//            appendNineTopics(homePMTopic5, goingOutTopic0, dinnerAfter9PMTopic4, restaurantTopic5,  barTopic0, networkingTopic1, dateTopic2, safetyTopic6,
//                             lateNightSnackTopic1, eveningRoutineTopic0, bedtimeFriPMTopic5, cantSleepTopic3,
//                             fridayNow21to24Topic5)
//
//            setNatureImage(to: "night6")
//
//        default:
//            print("weekdayTF,INVALID HOUR!")
//        }
//    }
//
//    //Saturday (7)
//
//    func saturday5(_ hour: Int) {
//        switch hour {
//        case 0...4:
//            print("Weekend, Very Early Morning")
//            // call function to display 9 time-based topics
//            appendNineTopics(dinnerAfter9PMTopic0, barTopic3, networkingTopic1, safetyTopic2,
//                             restaurantTopic6, lateNightSnackTopic0, groceryStoreTopic0, bathroomPMTopic0, homePMTopic1, eveningRoutineTopic1, bedtimeTopic1, cantSleepTopic2,
//                             saturday0to4Topic5)
//
//        case 5...8:
//            print("Weekend, Early Morning")
//            appendNineTopics(AMRoutineTopic0, gymTopic0, runningTopic0, yogaTopic0, homeAMTopic0, bathroomTopic0, getReadyAMTopic0, breakfastTopic0, cafeTopic0, networkingTopic1, groceryStoreWENDTopic0, travelTopic2,
//                             saturdayNow5to8Topic5)
//
//        case 9:
//            print("Weekend, Early Morning")
//            appendNineTopics(AMRoutineTopic0, gymTopic0,  runningTopic0, yogaTopic0, homeAMTopic0, bathroomTopic0, getReadyAMTopic0, breakfastTopic0, cafeTopic0, networkingTopic1, groceryStoreWENDTopic0, travelTopic2,
//                             saturdayNow9to10Topic4)
//
//        case 10:
//            print("Weekend, Late Morning")
//            appendNineTopics(AMRoutineTopic0, gymTopic0, runningTopic0, yogaTopic0, homeAMTopic0, getReadyAMTopic0, brunchTopic0, cafeTopic0,
//                             networkingTopic1, groceryStoreTopic0, shoppingClothesTopic0, travelTopic2,
//                             saturdayNow9to10Topic4)
//
//        case 11...13:
//            print("Weekend, Midday")
//            appendNineTopics(homePMTopic6, gymTopic12, runningTopic0, cafePMTopic1,
//                             brunchTopic1, lunchTopic1, restaurantTopic6, barTopic2,
//                             networkingTopic1, groceryStoreWENDTopic0, shoppingClothesTopic1, travelTopic2,
//                             saturdayNow11to13Topic5)
//
//        case 14...16:
//            print("Weekend, Afternoon")
//            // call function to display 9 time-based topics
//            appendNineTopics(homePMTopic0, gymTopic1, runningTopic0, yogaTopic0, afternoonSnackTopic0, cafePMTopic0, barTopic1, networkingTopic1, dateTopic1, shoppingClothesTopic2, groceryStoreTopic0, travelTopic2,
//                             saturdayNow14to16Topic5)
//
//        case 17...18:
//            print("Weekend, Early Evening")
//            // call function to display 9 time-based topics
//            appendNineTopics(homePMTopic0, dinnerTopic0, restaurantTopic6, barTopic1, dateTopic1, networkingTopic1, groceryStoreTopic1, shoppingClothesTopic0, gymTopic1, runningTopic0, yogaTopic0, travelTopic2,
//                             saturdayNow17to18Topic5)
//
//        case 19...20:
//            print("Weekend, Early Evening")
//            // call function to display 9 time-based topics
//            appendNineTopics(homePMTopic0, dinnerTopic0, restaurantTopic6, barTopic1, dateTopic1, safetyTopic1, groceryStoreTopic1, shoppingClothesTopic1, gymTopic1, runningTopic0, yogaTopic0, travelTopic2,
//                             saturdayNow19to20Topic5)
//
//        case 21..<24:
//            print("Weekend, Late evening")
//            // call function to display 9 time-based topics
//            appendNineTopics(dinnerAfter9PMTopic0, lateNightSnackTopic1, barTopic2, dateTopic1, safetyTopic1, networkingTopic1, gymTopic1, homePMTopic0,
//                             bathroomPMTopic0, eveningRoutineTopic0, bedtimeTopic0, cantSleepTopic1,
//                             saturday21to24Topic5)
//
//        default:
//            print("Weekend,INVALID HOUR!")
//        }
//    }

