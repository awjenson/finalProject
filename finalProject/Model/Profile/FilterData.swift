//
//  FilterData.swift
//  finalProject
//
//  Created by Andrew Jenson on 6/9/23.
//  Copyright © 2023 Andrew Jenson. All rights reserved.
//

import Foundation

//MARK: - USER DEFUALTS

let defaults = UserDefaults.standard
let relationshipKey = "Relationship"
let sexKey = "Sex"
let ageKey = "Age"
let jobKey = "Job"
let parentKey = "Parent"
let exerciseKey = "Exercise"
let debtKey = "Debt"
let commuteKey = "Commute"
let startupKey = "Startup"
let sideHustleKey = "SideHustle" //Unsure if this is still used?
let filmKey = "Film"
let generalCountKey = "GeneralCount"
let exerciseCountKey = "ExerciseCount"
let waterCountKey = "WaterCount"
let sleepCountKey = "SleepCount"



//MARK: Statup Button

func startupTopics() -> Topics {
    var selectedTopic: Topics!
    switch defaults.integer(forKey: startupKey)
    {
    case 0:
        //Idea
        selectedTopic = Topics(title: "Startup", icon: Constants.Icon.sideHustle, topics: [startupIdeaTopic, startupEarlyQuoteTopic, startupHabitTopic, firstUsersTopic])
    case 1:
        //MVP
        selectedTopic = Topics(title: "Startup", icon: Constants.Icon.sideHustle, topics: [startupMVPTopic, startupEarlyQuoteTopic, startupHabitTopic, firstUsersTopic, talkingToUsersTopic])
    case 2:
        //Beta
        selectedTopic = Topics(title: "Startup", icon: Constants.Icon.sideHustle, topics: [startupBetaTopic, startupEarlyQuoteTopic, startupHabitTopic, talkingToUsersTopic, startup10CustomersTopic, ])
    case 3:
        //10+ Users
        selectedTopic = Topics(title: "Startup", icon: Constants.Icon.sideHustle, topics: [startup10CustomersTopic, startupLaterQuoteTopic, startupHabitTopic, talkingToUsersTopic, startup10CustomersTopic])

    default:
        selectedTopic = Topics(title: "Startup", icon: Constants.Icon.sideHustle, topics: [startupIdeaTopic, startupEarlyQuoteTopic, startupHabitTopic, firstUsersTopic])
    }
    return selectedTopic
}

//MARK: Film Button

func filmTopics() -> Topics {
    var selectedTopic: Topics!
    switch defaults.integer(forKey: filmKey)
    {
    case 0:
        //Idea
        selectedTopic = Topics(title: "Film", icon: Constants.Icon.filmmaking, topics: [filmAdviceTopic])
    case 1:
        //Script
        selectedTopic = Topics(title: "Film", icon: Constants.Icon.filmmaking, topics: [filmmakingHabitTopic, firstDraftTopic,])

    case 2:
        //Pre-Production
        selectedTopic = Topics(title: "Film", icon: Constants.Icon.filmmaking, topics: [setsLocationTopic, setDesignTopic, castingTopic, ])

    case 3:
        //Filming
        selectedTopic = Topics(title: "Film", icon: Constants.Icon.filmmaking, topics: [filmingTopic, directingTopic, directingActorsTopic, lightingTopic])

    case 4:
        //Editing
        selectedTopic = Topics(title: "Film", icon: Constants.Icon.filmmaking, topics: [filmPostTopic,])

    default:
        selectedTopic = Topics(title: "Film", icon: Constants.Icon.filmmaking, topics: [filmAdviceTopic])
    }
    return selectedTopic
}



//MARK: Socialize OR Parenting


func friendsParentAM() -> Topics {
    var selectedTopics: Topics!
    let friends = Topics(title: friendsTitle, icon: friendsIcon, topics: [friendsTopic,])
    let parenting = Topics(title: familyTitle, icon: familyIcon, topics: [parentingAMTopic,])

    switch defaults.integer(forKey: parentKey)
    {
    case 0:
        //friends
        selectedTopics = friends
    case 1:
        //parent
        selectedTopics = parenting
    default:
        selectedTopics = friends
    }
    return selectedTopics
}

func friendsParentDay() -> Topics {
    var selectedTopics: Topics!
    let friends = Topics(title: friendsTitle, icon: friendsIcon, topics: [friendsTopic,])
    let parenting = Topics(title: familyTitle, icon: familyIcon, topics: [parentingDayTopic,])

    switch defaults.integer(forKey: parentKey)
    {
    case 0:
        //friends
        selectedTopics = friends
    case 1:
        //parent
        selectedTopics = parenting
    default:
        selectedTopics = friends
    }
    return selectedTopics
}

func friendsParentPM() -> Topics {
    var selectedTopics: Topics!
    let friends = Topics(title: friendsTitle, icon: friendsIcon, topics: [friendsTopic,])
    let parenting = Topics(title: familyTitle, icon: familyIcon, topics: [parentingPMTopic,])

    switch defaults.integer(forKey: parentKey)
    {
    case 0:
        //friends
        selectedTopics = friends
    case 1:
        //parent
        selectedTopics = parenting
    default:
        selectedTopics = friends
    }
    return selectedTopics
}

func friendsParentNight() -> Topics {
    var selectedTopics: Topics!
    let friends = Topics(title: friendsTitle, icon: friendsIcon, topics: [friendsTopic,])
    let parenting = Topics(title: familyTitle, icon: familyIcon, topics: [parentingBedtimeTopic,])

    switch defaults.integer(forKey: parentKey)
    {
    case 0:
        //friends
        selectedTopics = friends
    case 1:
        //parent
        selectedTopics = parenting
    default:
        selectedTopics = friends
    }
    return selectedTopics
}


//MARK: Run Or Yoga

func runYogaTopics() -> Topics {
      var selectedTopic: Topics!
      switch defaults.integer(forKey: exerciseKey)
      {
        case 0:
            //running
            selectedTopic = Topics(title: runningTitle, icon: Constants.Icon.running, topics: [runningTopic, postGymTopic])
        case 1:
            //yoga
            selectedTopic = Topics(title: yogaTitle, icon: Constants.Icon.yoga, topics: [yogaTopic, postGymTopic])

        default:
            //running
            selectedTopic = Topics(title: runningTitle, icon: Constants.Icon.running, topics: [runningTopic, postGymTopic])
      }
      return selectedTopic
  }


//MARK: Wealth/Investing by Age

//Wealth accumulation stage / working and can save and invest.
let wealthAccumulation0 = Tip(header: "Financial Freedom 💰", title: "During your working years: \n• Your savings rate should be high (50%). \n• Open a Vanguard account and continuously put all of your savings into a portfolio of 100% stocks, ideally Vanguard Total Stock Market Index Fund (ticker: VTSAX) until you're financially free.", body: "A portfolio of 100% stocks—which is what VTSAX gives you—in study after study provides the greatest return over time. As you invest money each month into VTSAX it serves to smooth out the stock market’s wild ride during your lifetime. \n\nOptional: For the more risk-averse, you can hold 10-25% in bonds, ideally Vanguard Total Bond Market Index Fund (ticker: VBTLX), and 75-90% in stocks (VTSAX). Then, once a year, rebalance your funds to maintain your chosen allocation. \n\nNote: If you can't afford VTSAX's investment minimum, then start with Vanguard Total Stock Market ETF (ticker: VTI).", sourceName: "The Simple Path to Wealth | JL Collins", sourceURL: "https://www.amazon.com/Simple-Path-Wealth-financial-independence/dp/1533667926", doneBool: false, doneKey: "", buyURL: "https://investor.vanguard.com/investment-products/mutual-funds/profile/vtsax")//DONE
let wealthAccumulation1 = Tip(header: "Financial Freedom 💰", title: "During your working years, here's a hierarchy for deploying investment money: \n\n• 1st: Fund 401(k)-type plans to the full employer match, if any.", body: "• 2nd: Fully fund a Roth IRA if your income is low enough that you are paying little or no income tax. \n• 3rd: Once your income tax rate rises, fully fund a deductible IRA rather than a Roth IRA. \n• 4th: Keep the Roth IRA you started and just let it grow. \n• 5th: Finish funding the 401(k)-type plan to the max. \n• 6th: Consider funding a non-deductible IRA if your income is such that you cannot contribute to a deductible IRA or Roth IRA. \n• 7th: Fund your taxable account, ideally a Vanguard account, with any money left.", sourceName: "The Simple Path to Wealth | JL Collins", sourceURL: "https://www.amazon.com/Simple-Path-Wealth-financial-independence/dp/1533667926", doneBool: false, doneKey: "", buyURL: "https://investor.vanguard.com/")//DONE

let wealthAccumulationTipArray0 = [wealthAccumulation0]
let wealthAccumulationTipArray1 = [wealthAccumulation1]

// RANDOM
let wealthAccumulationArrays = [wealthAccumulationTipArray0, wealthAccumulationTipArray1]
let wealthAccumulationTopic = Topic(title: "Investing By Age", icon: wealthIcon, tip: wealthAccumulationArrays.random())
//By Age:



let wealthAccumulationTopics = Topics(title: "Investing By Age", icon: wealthIcon, topics: [wealthAccumulationTopic,])


//Wealth preservation stage / retired / not working / Sabbaticals / going back to school / laid-off / living on income from your investments.
let wealthPreservation0 = Tip(header: "Financial Freedom 💰", title: "5-10 years before retirement, add bonds to the portfolio, especially if you have a fixed date firmly in mind", body: "Recommended portfolio at retirement age: \n• 75% Stocks: VTSAX (Vanguard Total Stock Market Index Fund). \n• 20% Bonds: VBTLX (Vanguard Total Bond Market Index Fund). \n• 5% Cash: Hold cash in your local bank. \n\nOnce a year, reivew your allocations and make any adjustments. Bonds provide some income, tend to smooth out the rough ride of stocks and are a deflation hedge.", sourceName: "The Simple Path to Wealth | JL Collins", sourceURL: "https://www.amazon.com/Simple-Path-Wealth-financial-independence/dp/1533667926", doneBool: false, doneKey: "", buyURL: "https://investor.vanguard.com/investment-products/mutual-funds/profile/vtsax")//DONE
let wealthPreservation1 = Tip(header: "Financial Freedom 💰", title: "Recommended portfolio at retirement age: \n• 75% Stocks: VTSAX (Vanguard Total Stock Market Index Fund). \n• 20% Bonds: VBTLX (Vanguard Total Bond Market Index Fund). \n• 5% Cash: Hold cash in your local bank.", body: "Once a year, reivew your allocations and make any adjustments. Bonds provide some income, tend to smooth out the rough ride of stocks, and are a deflation hedge. \n\nWant a smoother ride? Willing to accept a potentially lower long-term return and slower wealth accumulation? Just increase the percentage in VBTLX. \n\nComfortable with volatility? Want more growth? Add more to VTSAX.", sourceName: "The Simple Path to Wealth | JL Collins", sourceURL: "https://www.amazon.com/Simple-Path-Wealth-financial-independence/dp/1533667926", doneBool: false, doneKey: "", buyURL: "https://investor.vanguard.com/investment-products/mutual-funds/profile/vtsax")//DONE

let wealthPreservationTipArray0 = [wealthPreservation0]
let wealthPreservationTipArray1 = [wealthPreservation1]

// RANDOM
let wealthPreservationArrays = [wealthPreservationTipArray0, wealthPreservationTipArray1]
let wealthPreservationTopic = Topic(title: "Investing By Age", icon: wealthIcon, tip: wealthPreservationArrays.random())
let wealthPreservationTopics = Topics(title: "Investing By Age", icon: wealthIcon, topics: [wealthPreservationTopic,])


func ageWealthTopic() -> Topic {
    var selectedTopic: Topic!
    switch defaults.integer(forKey: ageKey)
    {
    case 0:
        //Teens
        selectedTopic = Topic(title: "Investing: Your Teens", icon: wealthIcon, tip: wealthAccumulationArrays.random())
    case 1:
        //20s
        selectedTopic = Topic(title: "Investing: Your 20s", icon: wealthIcon, tip: wealthAccumulationArrays.random())

    case 2:
        //30s
        selectedTopic = Topic(title: "Investing: Your 30s", icon: wealthIcon, tip: wealthAccumulationArrays.random())

    case 3:
        //40s
        selectedTopic = Topic(title: "Investing: Your 40s", icon: wealthIcon, tip: wealthAccumulationArrays.random())

    case 4:
        //50s
        selectedTopic = Topic(title: "Investing: Your 50s", icon: wealthIcon, tip: wealthPreservationArrays.random())

    case 5:
        //60s
        selectedTopic = Topic(title: "Investing: Your 60s", icon: wealthIcon, tip: wealthPreservationArrays.random())

    case 6:
        //70+
        selectedTopic = Topic(title: "Investing: 70+", icon: wealthIcon, tip: wealthPreservationArrays.random())

    default:
        //Teens
        selectedTopic = Topic(title: "Investing: Your Teens", icon: wealthIcon, tip: wealthAccumulationArrays.random())
    }
    return selectedTopic
}


//MARK: WEALTH
//MARK: No-Debt Or Have-Debt

func wealthDebtTopics() -> Topics {
      var selectedTopic: Topics!
      switch defaults.integer(forKey: debtKey)
      {
        case 0:
            //NO Debt
            selectedTopic = Topics(title: wealthTitle, icon: Constants.Icon.wealth, topics: [wealthTopic, noDebtTopic, ageWealthTopic()])
        case 1:
            //HAVE Debt
            selectedTopic = Topics(title: wealthTitle, icon: Constants.Icon.wealth, topics: [wealthTopic, debtTopic, ageWealthTopic()])

        default:
            //NO Debt
            selectedTopic = Topics(title: wealthTitle, icon: Constants.Icon.wealth, topics: [wealthTopic, noDebtTopic, ageWealthTopic()])
      }
      return selectedTopic
  }





// Work OR School

func workSchoolAMTopics() -> Topics {
    var selectedTopic: Topics!
    switch defaults.integer(forKey: jobKey)
    {
    case 0:
        //Work
        selectedTopic = Topics(title: workTitle, icon: workAMIcon, topics: [workAMTopic,])
    case 1:
        //School
        selectedTopic = Topics(title: schoolTitle, icon: schoolIcon, topics: [schoolAMTopic,])
    default:
        selectedTopic = Topics(title: workTitle, icon: workAMIcon, topics: [workAMTopic,])
    }
    return selectedTopic
}

func workSchoolPMTopics() -> Topics {
    var selectedTopic: Topics!
    switch defaults.integer(forKey: jobKey)
    {
    case 0:
        //Work
            selectedTopic = Topics(title: workTitle, icon: workAMIcon, topics: [workPMTopic,])
        case 1:
            //School
            selectedTopic = Topics(title: schoolTitle, icon: schoolIcon, topics: [schoolPMTopic,])
        default:
            selectedTopic = Topics(title: workTitle, icon: workAMIcon, topics: [workPMTopic,])
    }
    return selectedTopic
}

func workSchoolLateTopics() -> Topics {
    var selectedTopic: Topics!
    switch defaults.integer(forKey: jobKey)
    {
    case 0:
        //school
        selectedTopic = Topics(title: workTitle, icon: workAMIcon, topics: [workLateTopic,])
    case 1:
        //School
        selectedTopic = Topics(title: schoolTitle, icon: schoolIcon, topics: [schoolPMTopic,])

    default:
        selectedTopic = Topics(title: workTitle, icon: workAMIcon, topics: [workLateTopic,])
    }
    return selectedTopic
}




// Studying OR Career Growth

func studyCareerAM() -> Topics {
    var selectedTopic: Topics!
    switch defaults.integer(forKey: jobKey)
    {
    case 0:
        //career
        selectedTopic = Topics(title: jobSearchTitle, icon: jobSearchIcon, topics: [jobSearchTopic,])
    case 1:
        //study
        selectedTopic = Topics(title: studyTitle, icon: studyIcon, topics: [studyTopic,])
    default:
        //career
        selectedTopic = Topics(title: jobSearchTitle, icon: jobSearchIcon, topics: [jobSearchTopic,])
    }
    return selectedTopic
}

func studyCareerDay() -> Topics {
    var selectedTopic: Topics!
    switch defaults.integer(forKey: jobKey)
    {
    case 0:
        //career
        selectedTopic = Topics(title: jobSearchTitle, icon: jobSearchIcon, topics: [jobSearchTopic,])
    case 1:
        //study
        selectedTopic = Topics(title: studyTitle, icon: studyIcon, topics: [studyDayTopic,])
    default:
        //career
        selectedTopic = Topics(title: jobSearchTitle, icon: jobSearchIcon, topics: [jobSearchTopic,])
    }
    return selectedTopic
}

func studyCareerPM() -> Topics {
    var selectedTopic: Topics!
    switch defaults.integer(forKey: jobKey)
    {
    case 0:
        //career
        selectedTopic = Topics(title: jobSearchTitle, icon: jobSearchIcon, topics: [jobSearchTopic,])
    case 1:
        //school
        selectedTopic = Topics(title: studyTitle, icon: studyIcon, topics: [studyTopic,])
    default:
        //career
        selectedTopic = Topics(title: jobSearchTitle, icon: jobSearchIcon, topics: [jobSearchTopic,])
    }
    return selectedTopic
}

func studyCareerNight() -> Topics {
    var selectedTopic: Topics!
    switch defaults.integer(forKey: jobKey)
    {
    case 0:
        //career
        selectedTopic = Topics(title: jobSearchTitle, icon: jobSearchIcon, topics: [jobSearchTopic,])
    case 1:
        //work
        //school
        selectedTopic = Topics(title: studyTitle, icon: studyIcon, topics: [studyPMTopic,])
    default:
        //career
        selectedTopic = Topics(title: jobSearchTitle, icon: jobSearchIcon, topics: [jobSearchTopic,])
    }
    return selectedTopic
}




//5. Relationships (Single, Relationship, Date)

//MARK: Male Or Female

func dateMaleOrFemaleTopic() -> Topic {
      var selectedTopic: Topic!
      switch defaults.integer(forKey: sexKey)
      {
        case 0:
            //NO Male
            selectedTopic = male_dateTopic
        case 1:
            //HAVE Female
            selectedTopic = female_dateTopic

        default:
            //NO Male
            selectedTopic = male_dateTopic
      }
      return selectedTopic
  }

//MARK: Relationship Status

func relationshipAM() -> Topics {
   var selectedTopic: Topics!

   switch defaults.integer(forKey: relationshipKey)
   {
   case 0:
       //single
       selectedTopic = Topics(title: "Dating", icon: Constants.Icon.relationship, topics: [singleAMTopic, dateMaleOrFemaleTopic()])
   case 1:
       //relationship
       selectedTopic = Topics(title: "Relationship", icon: Constants.Icon.relationship, topics: [relationshipAMTopic,])
   default:
       selectedTopic = Topics(title: "Dating", icon: Constants.Icon.relationship, topics: [singleAMTopic, dateMaleOrFemaleTopic()])
   }
   return selectedTopic
}

func relationshipDay() -> Topics {
   var selectedTopic: Topics!
   switch defaults.integer(forKey: relationshipKey)
   {
   case 0:
       //single
       selectedTopic = Topics(title: "Dating", icon: Constants.Icon.relationship, topics: [singleDayTopic, dateMaleOrFemaleTopic()])
   case 1:
       //relationship
       selectedTopic = Topics(title: "Relationship", icon: Constants.Icon.relationship, topics: [relationshipDayTopic,])
   default:
       selectedTopic = Topics(title: "Dating", icon: Constants.Icon.relationship, topics: [singleDayTopic, dateMaleOrFemaleTopic()])
   }
   return selectedTopic
}

func relationshipPM() -> Topics {
   var selectedTopic: Topics!
   switch defaults.integer(forKey: relationshipKey)
   {
   case 0:
       //single
       selectedTopic = Topics(title: "Dating", icon: Constants.Icon.relationship, topics: [singlePMTopic, dateMaleOrFemaleTopic()])
   case 1:
       //relationship
       selectedTopic = Topics(title: "Relationship", icon: Constants.Icon.relationship, topics: [relationshipPMTopic,])
   default:
       selectedTopic = Topics(title: "Dating", icon: Constants.Icon.relationship, topics: [singlePMTopic, dateMaleOrFemaleTopic()])
   }
   return selectedTopic
}

func relationshipNight() -> Topics {
   var selectedTopic: Topics!
   switch defaults.integer(forKey: relationshipKey)
   {
   case 0:
       //single
       selectedTopic = Topics(title: "Dating", icon: Constants.Icon.relationship, topics: [singlePMTopic, dateMaleOrFemaleTopic()])
   case 1:
       //relationship
       selectedTopic = Topics(title: "Relationship", icon: Constants.Icon.relationship, topics: [relationshipBedTopic,])
   default:
       selectedTopic = Topics(title: "Dating", icon: Constants.Icon.relationship, topics: [singlePMTopic, dateMaleOrFemaleTopic()])
   }
   return selectedTopic
}

