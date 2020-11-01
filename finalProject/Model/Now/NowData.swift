//
//  NowData.swift
//  finalProject
//
//  Created by Andrew Jenson on 3/30/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import Foundation

//Bullet Points Formating Paragraph Style
//https://bendodson.com/weblog/2018/08/09/bulleted-lists-with-uilabel/
//OR
//https://wingoodharry.wordpress.com/2016/04/10/bullet-point-list-ios-swift/

//case 0...4: 0to4
//print("Weekday, Very Early Morning")
//// call function to display 5 time-based topics

//case 5...8: 5to8
//print("Weekday, Early Morning")
//// call function to display 5 time-based topics
//case 9...12: 9to12
//print("Weekday, Late Morning")
//// call function to display 5 time-based topics
//case 13...16: 13to16
//print("Weekday, Afternoon")
//// call function to display 5 time-based topics
//case 17...20: 17to20
//print("Weekday, Evening")
//// call function to display 5 time-based topics
//case 21..<24: 21to24
//print("Weekday, Late evening")

let defaults = UserDefaults.standard
let relationshipKey = "Relationship"
let jobKey = "Job"
let parentKey = "Parent"
let exerciseKey = "Exercise"
let commuteKey = "Commute"

//TODO: - Fix ordering of tips for SAT and SUN (currently some are reversed)

func exerciseTopics() -> Topics {
      var selectedTopic: Topics!
      switch defaults.integer(forKey: exerciseKey)
      {
        case 0:
          //work out
          selectedTopic = Topics(title: "Workout", icon: Constants.Icon.gym, topics: [preGymTopic, gymTopic, postGymTopic])
        case 1:
          //running
          selectedTopic = Topics(title: "Running", icon: Constants.Icon.running, topics: [runningTopic, postGymTopic])

        case 2:
          //yoga
        selectedTopic = Topics(title: "Yoga", icon: Constants.Icon.yoga, topics: [yogaTopic, postGymTopic])

        default:
          selectedTopic = Topics(title: "Running", icon: Constants.Icon.running, topics: [preGymTopic, gymTopic, postGymTopic])
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



       func relationshipAM() -> Topics {
           var selectedTopic: Topics!

           switch defaults.integer(forKey: relationshipKey)
           {
           case 0:
               //single
               selectedTopic = Topics(title: "Dating", icon: Constants.Icon.relationship, topics: [singleAMTopic,])
           case 1:
               //relationship
               selectedTopic = Topics(title: "Relationship", icon: Constants.Icon.relationship, topics: [relationshipAMTopic,])
           default:
               selectedTopic = Topics(title: "Dating", icon: Constants.Icon.relationship, topics: [singleAMTopic,])
           }
           return selectedTopic
       }

       func relationshipDay() -> Topics {
           var selectedTopic: Topics!
           switch defaults.integer(forKey: relationshipKey)
           {
           case 0:
               //single
               selectedTopic = Topics(title: "Dating", icon: Constants.Icon.relationship, topics: [singleDayTopic, dateTopic])
           case 1:
               //relationship
               selectedTopic = Topics(title: "Relationship", icon: Constants.Icon.relationship, topics: [relationshipDayTopic,])
           default:
               selectedTopic = Topics(title: "Dating", icon: Constants.Icon.relationship, topics: [singleDayTopic, dateTopic])
           }
           return selectedTopic
       }

       func relationshipPM() -> Topics {
           var selectedTopic: Topics!
           switch defaults.integer(forKey: relationshipKey)
           {
           case 0:
               //single
               selectedTopic = Topics(title: "Dating", icon: Constants.Icon.relationship, topics: [singlePMTopic, dateTopic])
           case 1:
               //relationship
               selectedTopic = Topics(title: "Relationship", icon: Constants.Icon.relationship, topics: [relationshipPMTopic,])
           default:
               selectedTopic = Topics(title: "Dating", icon: Constants.Icon.relationship, topics: [singlePMTopic, dateTopic])
           }
           return selectedTopic
       }

       func relationshipNight() -> Topics {
           var selectedTopic: Topics!
           switch defaults.integer(forKey: relationshipKey)
           {
           case 0:
               //single
               selectedTopic = Topics(title: "Dating", icon: Constants.Icon.relationship, topics: [singlePMTopic, dateTopic])
           case 1:
               //relationship
               selectedTopic = Topics(title: "Relationship", icon: Constants.Icon.relationship, topics: [relationshipBedTopic,])
           default:
               selectedTopic = Topics(title: "Dating", icon: Constants.Icon.relationship, topics: [singlePMTopic, dateTopic])
           }
           return selectedTopic
       }









//4. Motivation/Personal Growth (Personal Growth, Life Goals, Wealth?)
let personalGrowthTopics = Topics(title: "Life", icon: Constants.Icon.goals, topics: [personalTopic, adviceTopic, wealthTopic,])

//1. Exercise (Gym, run, yoga)


//8. Home (Home, Bathroom, Snack, Parenting, Can't Sleep)
let homeAMTopics = Topics(title: homeAMTitle, icon: Constants.Icon.home, topics: [homeAMTopic, ]) //bathroomTopic,

let homeDayTopics = Topics(title: homeAMTitle, icon: Constants.Icon.home, topics: [homeAMTopic, ]) //bathroomTopic,

let homePMTopics = Topics(title: homePMTitle, icon: Constants.Icon.home, topics: [homePMTopic, ]) //bathroomPMTopic,

let homeBedTopics = Topics(title: homeAMTitle, icon: Constants.Icon.home, topics: [homePMTopic, ]) //bathroomPMTopic,

//2. Going Out (Shopping, Cafe, Groceries), Night Out (Bar, Restaurant, Safety, Socializing?)
let goingOutAMTopics = Topics(title: "Going Out", icon: Constants.Icon.cafe, topics: [cafeTopic, groceryStoreTopic, shoppingClothesTopic,])

let goingOutDayTopics = Topics(title: "Going Out", icon: Constants.Icon.shopping, topics: [cafePMTopic, restaurantTopic, happyHourTopic, groceryStoreTopic, shoppingClothesTopic,])

let goingOutPMTopics = Topics(title: "Going Out", icon: Constants.Icon.shopping, topics: [restaurantTopic, barTopic, groceryStoreTopic, shoppingClothesTopic,])

let goingOutNightTopics = Topics(title: "Going Out", icon: Constants.Icon.shopping, topics: [restaurantTopic, barTopic, safetyTopic])





//7. School
let schoolAMTopics = Topics(title: "School", icon: Constants.Icon.school, topics: [schoolAMTopic, studyTopic,])

let schoolDayTopics = Topics(title: "School", icon: Constants.Icon.school, topics: [schoolPMTopic, studyDayTopic,])

let schoolPMTopics = Topics(title: "Studying", icon: Constants.Icon.school, topics: [studyPMTopic,])

let schoolWeekendAMTopics = Topics(title: "Studying", icon: Constants.Icon.school, topics: [singlePMTopic,])

let schoolWeekendDayTopics = Topics(title: "Studying", icon: Constants.Icon.school, topics: [studyDayTopic,])

let schoolWeekendPMTopics = Topics(title: "Studying", icon: Constants.Icon.school, topics: [studyPMTopic,])

//6. Work
let workAMTopics = Topics(title: "Work", icon: Constants.Icon.jobSearch, topics: [workAMTopic, jobSearchTopic])

let workDayTopics = Topics(title: "Job", icon: Constants.Icon.jobSearch, topics: [workPMTopic, jobSearchTopic])

let workLateTopics = Topics(title: "Career", icon: Constants.Icon.jobSearch, topics: [workLateTopic, jobSearchTopic])

let workPMTopics = Topics(title: "Career", icon: Constants.Icon.jobSearch, topics: [jobSearchTopic,])



//3. Bad Mood (anxious, sad, angry, lonely)



//NOW (Friends, Quotes, Routine, Getting Ready, Breakfast, Lunch, Dinner, Snack, Bedtime, Can't Sleep



let nowTitle = "Now"
let nowIcon = Constants.Icon.gym


let sunday0to4Topics = Topics(title: nowTitle, icon: nowIcon, topics: [sunday0to4Topic])
let sundayNow5to8Topics = Topics(title: nowTitle, icon: nowIcon, topics: [sundayNow5to8Topic])
let sundayNow9to10Topics = Topics(title: nowTitle, icon: nowIcon, topics: [sundayNow9to10Topic])
let sundayNow11to13Topics = Topics(title: nowTitle, icon: nowIcon, topics: [sundayNow11to13Topic])
let sundayNow14to16Topics = Topics(title: nowTitle, icon: nowIcon, topics: [sundayNow14to16Topic])
let sundayNow17to18Topics = Topics(title: nowTitle, icon: nowIcon, topics: [sundayNow17to18Topic])
let sundayNow19to20Topics = Topics(title: nowTitle, icon: nowIcon, topics: [sundayNow19to20Topic])
let sunday21to24Topics = Topics(title: nowTitle, icon: nowIcon, topics: [sunday21to24Topic])

let mondayNow0to4Topics = Topics(title: nowTitle, icon: nowIcon, topics: [mondayNow0to4Topic])
let mondayNow5to8Topics = Topics(title: nowTitle, icon: nowIcon, topics: [mondayNow5to8Topic])
let mondayNow9to11Topics = Topics(title: nowTitle, icon: nowIcon, topics: [mondayNow9to11Topic])
let mondayNow11to13Topics = Topics(title: nowTitle, icon: nowIcon, topics: [mondayNow11to13Topic])
let mondayNow14to16Topics = Topics(title: nowTitle, icon: nowIcon, topics: [mondayNow14to16Topic])
let mondayNow17to18Topics = Topics(title: nowTitle, icon: nowIcon, topics: [mondayNow17to18Topic])
let mondayNow19to20Topics = Topics(title: nowTitle, icon: nowIcon, topics: [mondayNow19to20Topic])
let mondayNow21to24Topics = Topics(title: nowTitle, icon: nowIcon, topics: [mondayNow21to24Topic])

let tuesdayNow0to4Topics = Topics(title: nowTitle, icon: nowIcon, topics: [tuesdayNow0to4Topic])
let tuesdayNow5to8Topics = Topics(title: nowTitle, icon: nowIcon, topics: [tuesdayNow5to8Topic])
let tuesdayNow9to11Topics = Topics(title: nowTitle, icon: nowIcon, topics: [tuesdayNow9to11Topic])
let tuesdayNow11to13Topics = Topics(title: nowTitle, icon: nowIcon, topics: [tuesdayNow11to13Topic])
let tuesdayNow14to16Topics = Topics(title: nowTitle, icon: nowIcon, topics: [tuesdayNow14to16Topic])
let tuesdayNow17to18Topics = Topics(title: nowTitle, icon: nowIcon, topics: [tuesdayNow17to18Topic])
let tuesdayNow19to20Topics = Topics(title: nowTitle, icon: nowIcon, topics: [tuesdayNow19to20Topic])
let tuesdayNow21to24Topics = Topics(title: nowTitle, icon: nowIcon, topics: [tuesdayNow21to24Topic])

let wednesdayNow0to4Topics = Topics(title: nowTitle, icon: nowIcon, topics: [wednesdayNow0to4Topic])
let wednesdayNow5to8Topics = Topics(title: nowTitle, icon: nowIcon, topics: [wednesdayNow5to8Topic])
let wednesdayNow9to11Topics = Topics(title: nowTitle, icon: nowIcon, topics: [wednesdayNow9to11Topic])
let wednesdayNow11to13Topics = Topics(title: nowTitle, icon: nowIcon, topics: [wednesdayNow11to13Topic])
let wednesdayNow14to16Topics = Topics(title: nowTitle, icon: nowIcon, topics: [wednesdayNow14to16Topic])
let wednesdayNow17to18Topics = Topics(title: nowTitle, icon: nowIcon, topics: [wednesdayNow17to18Topic])
let wednesdayNow19to20Topics = Topics(title: nowTitle, icon: nowIcon, topics: [wednesdayNow19to20Topic])
let wednesdayNow21to24Topics = Topics(title: nowTitle, icon: nowIcon, topics: [wednesdayNow21to24Topic])

let thursdayNow0to4Topics = Topics(title: nowTitle, icon: nowIcon, topics: [thursdayNow0to4Topic])
let thursdayNow5to8Topics = Topics(title: nowTitle, icon: nowIcon, topics: [thursdayNow5to8Topic])
let thursdayNow9to11Topics = Topics(title: nowTitle, icon: nowIcon, topics: [thursdayNow9to11Topic])
let thursdayNow11to13Topics = Topics(title: nowTitle, icon: nowIcon, topics: [thursdayNow11to13Topic])
let thursdayNow14to16Topics = Topics(title: nowTitle, icon: nowIcon, topics: [thursdayNow14to16Topic])
let thursdayNow17to18Topics = Topics(title: nowTitle, icon: nowIcon, topics: [thursdayNow17to18Topic])
let thursdayNow19to20Topics = Topics(title: nowTitle, icon: nowIcon, topics: [thursdayNow19to20Topic])
let thursdayNow21to24Topics = Topics(title: nowTitle, icon: nowIcon, topics: [thursdayNow21to24Topic])


let fridayNow0to4Topics = Topics(title: nowTitle, icon: nowIcon, topics: [fridayNow0to4Topic])
let fridayNow5to8Topics = Topics(title: nowTitle, icon: nowIcon, topics: [fridayNow5to8Topic])
let fridayNow9to11Topics = Topics(title: nowTitle, icon: nowIcon, topics: [fridayNow9to11Topic])
let fridayNow11to13Topics = Topics(title: nowTitle, icon: nowIcon, topics: [fridayNow11to13Topic])
let fridayNow14to16Topics = Topics(title: nowTitle, icon: nowIcon, topics: [fridayNow14to16Topic])
let fridayNow17to18Topics = Topics(title: nowTitle, icon: nowIcon, topics: [fridayNow17to18Topic])
let fridayNow19to20Topics = Topics(title: nowTitle, icon: nowIcon, topics: [fridayNow19to20Topic])
let fridayNow21to24Topics = Topics(title: nowTitle, icon: nowIcon, topics: [fridayNow21to24Topic])

let saturday0to4Topics = Topics(title: nowTitle, icon: nowIcon, topics: [saturday0to4Topic])
let saturdayNow5to8Topics = Topics(title: nowTitle, icon: nowIcon, topics: [saturdayNow5to8Topic])
let saturdayNow9to10Topics = Topics(title: nowTitle, icon: nowIcon, topics: [saturdayNow9to10Topic])
let saturdayNow11to13Topics = Topics(title: nowTitle, icon: nowIcon, topics: [saturdayNow11to13Topic])
let saturdayNow14to16Topics = Topics(title: nowTitle, icon: nowIcon, topics: [saturdayNow14to16Topic])
let saturdayNow17to18Topics = Topics(title: nowTitle, icon: nowIcon, topics: [saturdayNow17to18Topic])
let saturdayNow19to20Topics = Topics(title: nowTitle, icon: nowIcon, topics: [saturdayNow19to20Topic])
let saturday21to24Topics = Topics(title: nowTitle, icon: nowIcon, topics: [saturday21to24Topic])






//Shops: Coffee
//Travel

// MARK: - WEEKEND

// MARK: - Now, Weekend, 0to4
var nowTipTitle = "Today's Tips"
var weekendNow0to4Title = nowTipTitle
let weekendNow0to4Icon = "Now"

//WEEK 1
//SUN
let sundayNow0to4Tip0 = Tip(header: "Safety 🚘", title: "Most dangerous time to drive on Sunday is 1:00 a.m. to 4:00 a.m.", body: "Analysis of US Car Crash-Related Fatalities: Early morning on Sunday had the most fatal car crashes for the day. \n\nAlcohol and speeding are key factors in the increased crash risk on Sunday." , sourceName: "Avvo", sourceURL: "https://www.avvo.com/fatal-car-accidents", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let sundayNow0to4Tip1 = Tip(header: "Can't fall sleep?", title: "You may have high blood pressure", body: "Lack of sleep hurts your body's ability to regulate stress hormones, leading to high blood pressure. \n\nHigh blood pressure, particularly during the night, is a major risk factor for heart disease." , sourceName: "Mayo Clinic", sourceURL: "https://www.mayoclinic.org/diseases-conditions/high-blood-pressure/expert-answers/sleep-deprivation/faq-20057959", sponsorLogo: "", sponsorURL: "")
let sundayNow0to4Tip2 = Tip(header: "Prevent Weight Gain", title: "Sleep 7-8 hours per night", body: "Some studies show that people who get less sleep tend to be heavier than those who sleep well." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/sleep-disorders/features/diabetes-lack-of-sleep#2", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let sundayNow0to4Tip3 = Tip(header: "Live Better Tomorrow", title: "Start your day by hitting the gym on an empty stomach in order to increase your energy level throughout the day", body: "Early-morning workouts on an empty stomach help speed weight loss and boost energy levels by priming the body for an all-day fat burn. \n\nExercising first thing in the morning pushs your body to tap into its fat reserves for fuel instead of \"burning off\" the most recent snack or meal." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/morning-routine-according-to-science-2017-12#hit-the-track-3", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//SAT
let saturdayNow0to4Tip0 = Tip(header: "Increase Happiness", title: "Don't stay up too late tonight. An out-of-sync biological clock could be linked to depression and mood swings", body: "Study: People who have greater disruptions in their body clock are more likely to have a major depressive disorder or a bipolar disorder in their lifetime than those with less disruption. \n\nThese people were also more likely to have mood swings, higher levels of neuroticism and loneliness, and lower levels of happiness and satisfaction with their health.", sourceName: "Live Science", sourceURL: "https://www.livescience.com/62574-mood-disorders-circadian-rhythms.html", sponsorLogo: "", sponsorURL: "")
let saturdayNow0to4Tip1 = Tip(header: "Prevent Weight Gain 🛌", title: "Go to bed now so you can get 20-30 minutes of sunlight before noon", body: "Not getting 20-30 minutes of sunlight before noon could de-synchronize your internal body clock, which is known to alter metabolism and lead to weight gain. \n\nStudy: People who had most of their daily sunlight exposure in the morning had a 20% lower body mass index (BMI) than those who had most of their sunlight exposure in the afternoon." , sourceName: "Northwestern University", sourceURL: "https://news.northwestern.edu/stories/2014/04/morning-rays-keep-off-the-pounds", sponsorLogo: "", sponsorURL: "")
let saturdayNow0to4Tip2 = Tip(header: "Prevent Weight Gain", title: "Go to sleep. Just one night of sleep loss negatively affects metabolism, leading to weight gain", body: "The study was the first to link how one night of sleep loss negatively affects metabolism, at the tissue level, and long-term sleep loss can lead to weight gain. \n\nEating healthier and exercising may be able to offset the negative impact sleep loss has on a person’s metabolism." , sourceName: "Northwestern University", sourceURL: "", sponsorLogo: "", sponsorURL: "")
let saturdayNow0to4Tip3 = Tip(header: "Increase Happiness", title: "Go to sleep. A late bedtime increases your risk of depression", body: "A late bedtime and getting less than 6 hours of sleep was associated with increased prevalence of depressive symptoms. \n\nAvoid late bedtimes and get 6+ hours of sleep a night." , sourceName: "National Center for Biotechnology Information", sourceURL: "https://www.ncbi.nlm.nih.gov/pubmed/24162148", sponsorLogo: "", sponsorURL: "")

//WEEK 2
//SUN (WIP)
let sundayNow0to4Tip4 = Tip(header: "Prevent Weight Gain 🛌", title: "Go to sleep. When we’re tired we eat more the next day which results in weight gain", body: "Research: People ate 385 extra calories following a night of sleep deprivation. \n\nThat’s about the same amount as a serving of Häagen-Dazs peanut butter ice cream a day." , sourceName: "Vox", sourceURL: "https://www.vox.com/science-and-health/2019/3/26/18280663/night-eating-sleep-loss-weight-gain", sponsorLogo: "", sponsorURL: "")
let sundayNow0to4Tip5 = Tip(header: "Night Owls 🦉", title: "People who prefer to stay up late and sleep late - have 10% higher risk of dying sooner than morning people", body: "Research: Night owls are more likely to suffer from diabetes, psychological disorders and neurological disorders. \n\n• Keep a regular bedtime. \n\n• Get exposed to light early in the morning. \n\n• Ask your boss if you can start later. \n\n• Exercise and eat healthier." , sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2018/04/180412085736.htm", sponsorLogo: "", sponsorURL: "")
let sundayNow0to4Tip6 = Tip(header: "Increase Happiness", title: "Go to bed. Keeping your body clock in sync with the solar day may help reduce depression", body: "Every cell in our bodies runs on a 24-hour clock. \n\nStudy: The brains of people with depression were not synchronized to the usual solar day in terms of gene activity inside their brain cells. It’s as if they were living in a different time zone. \n\nTry to maintain a sleep cylce during normal nighttime hours.", sourceName: "University of Michigan", sourceURL: "https://www.uofmhealth.org/news/archive/201305/out-sync-world-brain-study-shows-body-clocks-depressed", sponsorLogo: "", sponsorURL: "")

//SAT (WIP)
let saturdayNow0to4Tip4 = Tip(header: "Reduce Your Risk", title: "Go to sleep. Not getting enough sleep increases your risk of dementia, including Alzheimer's", body: "While the brain sleeps, it clears out harmful toxins, a process that may reduce the risk of Alzheimer's. \n\nThis could explain why we don't think clearly after a sleepless night." , sourceName: "NPR", sourceURL: "https://www.npr.org/sections/health-shots/2013/10/18/236211811/brains-sweep-themselves-clean-of-toxins-during-sleep", sponsorLogo: "", sponsorURL: "")
let saturdayNow0to4Tip5 = Tip(header: "Reduce Your Risk", title: "Night owls are 2x as likely to develop a psychological illness and are 10% more likely to die than morning people", body: "Night owls need to realize that they have these potential health problems and therefore need to be more vigilant about maintaining a healthy lifestyle. \n\nStart small by getting exposed to light early in the morning and going to bed 30 minutes earlier." , sourceName: "Men's Health", sourceURL: "https://www.menshealth.com.sg/health/is-staying-up-late-bad-higher-risk-diabetes-death/", sponsorLogo: "Buy Book", sponsorURL: "https://www.google.com")






//WEEK 1
// SUN
let sunday0to4TipArray0 = [sundayNow0to4Tip0, sundayNow0to4Tip1, sundayNow0to4Tip2, sundayNow0to4Tip3]
let sunday0to4Topic0 = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: sunday0to4TipArray0)
// SAT
let saturday0to4TipArray1 = [saturdayNow0to4Tip0, saturdayNow0to4Tip1, saturdayNow0to4Tip2, saturdayNow0to4Tip3]
let saturday0to4Topic1 = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: saturday0to4TipArray1)

//WEEK 2
// SUN (1 WIP)
let sunday0to4TipArray2 = [sundayNow0to4Tip4, sundayNow0to4Tip5, sundayNow0to4Tip6, sundayNow0to4Tip3]
let sunday0to4Topic2 = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: sunday0to4TipArray2)
// SAT (2 WIP)
let saturday0to4TipArray3 = [saturdayNow0to4Tip4, saturdayNow0to4Tip5, saturdayNow0to4Tip2, saturdayNow0to4Tip3]
let saturday0to4Topic2 = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: saturday0to4TipArray3)


//////////
//RANDOM
let sunday0to4TipArrays = [sunday0to4TipArray0, sunday0to4TipArray2,]
let sunday0to4Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: sunday0to4TipArrays.random())
//RANDOM
let saturday0to4TipArrays = [saturday0to4TipArray1, saturday0to4TipArray3,]
let saturday0to4Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: saturday0to4TipArrays.random())




//WEEK 3
// SUN (4 WIP)
let sunday0to4TipArray4 = [sundayNow0to4Tip4, sundayNow0to4Tip5, sundayNow0to4Tip6, sundayNow0to4Tip3]
let sunday0to4Topic3 = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: sunday0to4TipArray4)
// SAT (4 WIP)
let saturday0to4TipArray5 = [saturdayNow0to4Tip4, saturdayNow0to4Tip5, saturdayNow0to4Tip2, saturdayNow0to4Tip3]
let saturday0to4Topic3 = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: saturday0to4TipArray5)

//WEEK 4
// SUN (4 WIP)
let sunday0to4TipArray6 = [sundayNow0to4Tip4, sundayNow0to4Tip5, sundayNow0to4Tip6, sundayNow0to4Tip3]
let sunday0to4Topic4 = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: sunday0to4TipArray6)
// SAT (4 WIP)
let saturday0to4TipArray7 = [saturdayNow0to4Tip4, saturdayNow0to4Tip5, saturdayNow0to4Tip2, saturdayNow0to4Tip3]
let saturday0to4Topic4 = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: saturday0to4TipArray7)

//WEEK 5
// SUN (4 WIP)
let sunday0to4TipArray8 = [sundayNow0to4Tip6, sundayNow0to4Tip5, sundayNow0to4Tip4, sundayNow0to4Tip3]
let sunday0to4Topic5 = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: sunday0to4TipArray8)
// SAT (4 WIP)
let saturday0to4TipArray9 = [saturdayNow0to4Tip5, saturdayNow0to4Tip2, saturdayNow0to4Tip4, saturdayNow0to4Tip3]
let saturday0to4Topic5 = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: saturday0to4TipArray9)





// MARK: - Now, Weekend, 5to8

let weekendNow5to8Title = nowTipTitle
let weekendNow5to8Icon = "Now"

// WEEK 1
// SUN
let weekendNow5to8Tip0 = Tip(header: "Maximize Productivity 🌅", title: "The first 3 hours of your day is the best time to do your best work", body: "Your brain is most active and creative immediately following sleep. So, the first 3 hours of your day are your most precious for maximized focus and productivity." , sourceName: "Medium", sourceURL: "https://medium.com/@benjaminhardy/this-morning-routine-will-save-you-20-hours-per-week-409f8acbde1", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow5to8Tip1 = Tip(header: "Increase Success", title: "If you want to be successful in life, start by making your bed every day", body: "William H. McRaven, a retired US Navy admiral and former Navy SEAL, said: \n\n\"Start your day with a task completed. The simple act of making your bed can give the lift you need to start your day and provide you the satisfaction to end it right.\"" , sourceName: "YouTube", sourceURL: "https://www.youtube.com/watch?v=U6OoCaGsz94", sponsorLogo: "", sponsorURL: "www.test.com")
let weekendNow5to8Tip2 = Tip(header: "Prevent Weight Gain ☀️", title: "Get 20-30 minutes of sunlight before Noon to lower your body mass index (BMI) and prevent weight gain", body: "Study: People who had most of their daily exposure to sunlight in the morning had 20% lower BMI than those who had most of their sunlight exposure in the afternoon." , sourceName: "Northwestern University", sourceURL: "https://news.northwestern.edu/stories/2014/04/morning-rays-keep-off-the-pounds", sponsorLogo: "", sponsorURL: "")
let weekendNow5to8Tip3 = Tip(header: "Look Your Best", title: "Before you leave the house, apply moisturizer and drink a glass of water to keep your skin looking good", body: "Dehydration makes your skin look more dry and wrinkled, which can be improved with proper hydration. \n\nYou can also help \"lock\" moisture into your skin by using moisturizer, which creates a physical barrier to keep moisture in." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/diet/features/6-reasons-to-drink-water#3", sponsorLogo: "", sponsorURL: "")

// SAT
let weekendNow5to8Tip4 = Tip(header: "Be Productive", title: "How you spend the first hour after waking up in the morning sets the standard for your productivity for the rest of the day", body: "Business leaders were asked what they do before breakfast. \n\nTop 3 responses were: \n\n• Exercise \n• Meditation \n• Reading" , sourceName: "WIRED", sourceURL: "https://www.wired.co.uk/article/what-is-productivity-be-more-productive-how-to-work", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow5to8Tip5 = Tip(header: "Burn Fat", title: "Exercise first thing in the morning on an empty stomach", body: "Exercising first thing in the morning may push the body to tap into its fat reserves for fuel instead of simply \"burning off\" the most recent snack or meal. \n\nIt also helps speed weight loss and boost energy levels to prime the body for an all-day fat burn" , sourceName: "WebMD", sourceURL: "https://www.webmd.com/diet/features/6-reasons-to-drink-water#3", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow5to8Tip6 = Tip(header: "Eat Breakfast", title: "Breakfast SKIPPERS are more likely to be overweight or be diagnosed with diabetes", body: "Watching the clock, and not just the calories, may play a more important role in weight control. \n\nBreakfast eaters tended to keep their weight down generally, compared with breakfast skippers.", sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/2017/08/21/well/eat/the-case-for-a-breakfast-feast.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow5to8Tip7 = Tip(header: "Reduce Stress 📵", title: "DON'T check your phone 1st thing in the morning - it's likely to increase stress and leave you feeling overwhelmed", body: "Instead, you can stretch, practice mindfulness and meditation, exercise outside, or do something you really care about, like working on a passion project you normally don't have time for.", sourceName: "Elite Daily", sourceURL: "https://www.elitedaily.com/p/is-it-bad-to-look-at-your-phone-right-when-you-wake-up-it-might-be-sabotaging-your-day-8437383", sponsorLogo: "TBD", sponsorURL: "www.test.com")

// WEEK 2
//SUN
let weekendNow5to8Tip8 = Tip(header: "Maximize Productivity", title: "Your morning sets the tone for the day. Begin with little \"wins\" to prime your brain to achieve more little \"wins\" throughout the day", body: "• Say one thing you're grateful for \n• Eat breakfast \n• Get outside \n• Exercise \n• Talk with family or friends" , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/pop-culture/9-things-do-morning-make-your-whole-day-more-productive-ncna772446", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow5to8Tip9 = Tip(header: "Live Healthier", title: "Exercising in the morning appears to be better than exercising later in the day for sleeping better tonight", body: "Moderate-to-vigorous exercise in the morning could significantly improve the quality and quantity of your sleep at night. \n\nExercise can increase the quality of sleep by decreasing levels of cortisol, the stress hormone, and increasing the production of serotonin, the sleep hormone." , sourceName: "HealthLine", sourceURL: "https://www.healthline.com/nutrition/ways-to-fall-asleep#section10", sponsorLogo: "", sponsorURL: "")
let weekendNow5to8Tip10 = Tip(header: "Live Healthier", title: "Drink 1-2 glasses of water before breakfast to rehydrate your body and aid digestion and metabolism", body: "After being asleep all night, we wake up every day slightly dehydrated. \n\nDrinking a couple of glasses of water: \n\n• Rehydrates your body for better digestion when you eat. \n• Helps with moving your bowels for regularity in the morning." , sourceName: "USA Today", sourceURL: "https://www.usatoday.com/story/news/nation-now/2017/03/14/why-you-should-drink-water-first-thing-every-day/99123938/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow5to8Tip11 = Tip(header: "Millionaire Habit", title: "Make your bed. Those who make their bed in the morning are up to 207% more likely to be millionaires, survey finds", body: "Those who do their chores and keep their living space tidier tend to make more money. \n\nIt also gets you into a productive mindset." , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2017/04/07/7-rich-habits-of-highly-successful-people.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//SAT
let weekendNow5to8Tip12 = Tip(header: "Reduce Belly Fat", title: "Step outside for a jog or walk first thing in the morning", body: "Getting outside in the early morning sunlight helps regulate your circadian rhythm, which affects how well you: \n\n• Burn fat \n• Eat \n• Sleep" , sourceName: "Eat This, Not That!", sourceURL: "Studies have shown that people who are up-and-at-’em first thing have a lower BMI compared to those who take their sunshine later in the day. \n\n", sponsorLogo: "", sponsorURL: "")
let weekendNow5to8Tip13 = Tip(header: "Lose Weight", title: "Consuming 30 grams of protein within 30 minutes of waking up helps with weight loss", body: "According to Tim Ferriss: \n\n\"If you nail breakfast, even if you don’t change any of your other behaviors, that is often enough to lose 10-20 pounds per month of fat… Fat loss is 99% diet.\" \n\nRecommended foods: \n• Eggs \n• Lentils \n• Black beans \n• Dark green vegetables", sourceName: "Healthline", sourceURL: "https://www.healthline.com/health-news/how-30-grams-of-protein-at-breakfast-can-help-you-lose-weight", sponsorLogo: "", sponsorURL: "")
let weekendNow5to8Tip14 = Tip(header: "Boost Your Mood", title: "Drink 16-ounces of water before your morning coffee or tea", body: "You're dehydrated when you get out of bed and coffee or tea can dehydrate you further. \n\nBeing dehydrated makes you feel sluggish, which is not how you should start the day." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/weight-loss-lifestyle/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow5to8Tip15 = Tip(header: "Prevent Weight Gain", title: "Front-load your calories early in the day to jump-start your metabolism and prevent obesity, starting with a healthy breakfast and tapering off to a smaller lunch and light dinner", body: "Researchers also found that those who ate their largest meal early in the day were more likely to have less body fat than those who ate a large lunch or dinner." , sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/2017/08/21/well/eat/the-case-for-a-breakfast-feast.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//WEEK 3
//SUN
let weekendNow5to8Tip16 = Tip(header: "Lose Weight", title: "Study: People who exercised before noon lost more weight, on average, than those who completed the same workouts after 3 p.m.", body: "While both groups lost weight: \n\n• The early-exercise group tended to be more active throughout the day, taking more steps in total than those who exercised later. \n\n• They also ate less, although the difference amounted to barely 100 calories per day on average." , sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/2019/07/31/well/move/morning-exercise-may-offer-the-most-weight-loss-benefits.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow5to8Tip17 = Tip(header: "Maximize Productivity", title: "Our brains are the sharpest during the first 2-4 hours after we wake up", body: "Use these less distractive hours to work on a creative project, exercise, meditate, or spend time with the people you love." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/successful-people-who-wake-up-really-early-2016-9", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow5to8Tip18 = Tip(header: "Increase Happiness", title: "Practice faith or spirituality. In most countries, religious people are happier than nonreligious people", body: "Study: People who went to services in a church, mosque, or synagogue regularly experienced a more significant mental health boost than those who engaged only in other social activities. \n\n• If you're religious, attend services regularly. \n\n• If you're not, take the time to visit several places of worship to see if any resonate. \n\n• If organized religion isn't your thing, look for groups in your area with whom you might share and practice your spiritual beliefs." , sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")
let weekendNow5to8Tip19 = Tip(header: "🌅", title: "Burn 20% more fat by exercising in the morning, before breakfast", body: "When we first wake up, having not eaten for at least 8 hours, our blood sugar is low. Since we need blood sugar to fuel a run, morning exercise will use the fat stored in our tissues to supply the energy we need. (When we exercise after eating, we use the energy from the food we've just consumed.) In many cases, morning exercise may burn 20% more fat than later, post-food workouts.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/", sponsorLogo: "", sponsorURL: "")




//SAT
let weekendNow5to8Tip20 = Tip(header: "Billionaire Habit", title: "Have a regular exercise routine", body: "You need to be physically fit to perform at the highest levels. \n\n• Richard Branson wakes up early to exercise. \n\n• Mark Cuban does 60 minutes of cardio at least 6 days a week.", sourceName: "Market Watch", sourceURL: "https://www.marketwatch.com/story/4-habits-that-self-made-billionaires-practice-nearly-every-day-2019-07-11", sponsorLogo: "", sponsorURL: "")
let weekendNow5to8Tip21 = Tip(header: "Lose Belly Fat", title: "Start each day by making a large pitcher of \"spa water\"—that's detox water filled with sliced whole lemons, oranges or grapefruits", body: "Citrus fruits are rich in the antioxidant D-limonene, a powerful compound found in the peel that help flush toxins from the body and gives sluggish bowels a kick. \n\nDrink 8+ glasses per day.", sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/14-ways-lose-your-belly-14-days/", sponsorLogo: "", sponsorURL: "")

let weekendNow5to8Tip22 = Tip(header: "☕️", title: "Complete your workout in the morning before you consume caffeine", body: "In an ideal circadian rhythm, cortisol rises in the morning and remains level throughout the day to support alertness and energy. Because cortisol is like caffeine and is ideally rising in the morning, you may not need both. In fact, caffeine could suppress cortisol, making it tough to feel awake without caffeine. Even if you still need or want caffeine later, you’ve given your body a natural chance at producing its own state of wakefulness.", sourceName: "American Council on Exercise", sourceURL: "http://www.aimspress.com/article/10.3934/publichealth.2017.2.189/fulltext.html", sponsorLogo: "", sponsorURL: "")
let weekendNow5to8Tip23 = Tip(header: "Daily Habit", title: "You must make time — preferably an hour or more a day — for what Cal Newport calls the “deep work.”", body: "The type of intense concentration and cognitive focus is where real progress is made — on whatever it is that you happen to do, be it writing or thinking or designing or creating. Great work takes deep work. \n\nIt starts by closing your browser or phone and getting to it. If you don’t make time for an hour of deep work each day it won’t happen." , sourceName: "Ryan Holiday", sourceURL: "https://ryanholiday.net/13-life-changing-habits-to-try-and-do-every-single-day/", sponsorLogo: "", sponsorURL: "")


//WEEK 4
//SUN
let weekendNow5to8Tip24 = Tip(header: "Lose Belly Fat", title: "Take a brisk walk before breakfast", body: "A study found that exposure to sunlight in between the hours of 8 a.m. and noon reduced your risk of weight gain. \n\nAnd burning calories before you eat means you're exercising in a fasted state—the energy you burn comes right from your fat stores, instead of the food you ate. ", sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/14-ways-lose-your-belly-14-days/", sponsorLogo: "", sponsorURL: "")
let weekendNow5to8Tip25 = Tip(header: "Healthy Habit", title: "Studies suggest that we're more likely to stick to our workout routine when we do it in the morning", body: "So if you find yourself struggling to stick with an exercise plan, morning exercise, especially if you enlist a regular partner, can help you form a habit.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/", sponsorLogo: "", sponsorURL: "")

let weekendNow5to8Tip26 = Tip(header: "Reduce Your Risk ☕️", title: "Drink coffee after breakfast, not before", body: "Study: Strong black coffee consumed before breakfast substantially increased the blood glucose response to breakfast by around 50%. This could limit your body's ability to tolerate the sugar in your breakfast, increasing your risk for developing diabetes and heart disease." , sourceName: "University of Bath", sourceURL: "https://www.bath.ac.uk/announcements/drink-coffee-after-breakfast-not-before-for-better-metabolic-control/", sponsorLogo: "", sponsorURL: "")

let weekendNow5to8Tip27 = Tip(header: "Daily Habit", title: "Journal each morning to prepare, plan, and meditate on how you will act today. \n• Don’t wing it. \n• Don’t be reactionary. \n• Have a plan.", body: "Marcus Aurelius rose in the morning and did his journaling — preparing himself for what he was likely to face in the hours ahead. \n\nHe thought about the people he was likely to face, difficulties he might encounter, and what he knew about how to respond. \n\nIf you do the tough planning in the morning, you'll set yourself up for a successful day." , sourceName: "Ryan Holiday", sourceURL: "https://ryanholiday.net/13-life-changing-habits-to-try-and-do-every-single-day/", sponsorLogo: "", sponsorURL: "")

//WEEK 5
let weekendNow5to8Tip28 = Tip(header: "Reduce Your Risk", title: "Study: Exercising in the morning linked to lower cancer risk", body: "Participants who regularly exercised between 8:00 a.m. and 10:00 a.m. enjoyed the highest risk decreases for prostate cancer and breast cancer. \n\nExercising early in the day appears to disrupt the overproduction of hormones associated with various forms of cancer." , sourceName: "Ladders", sourceURL: "https://www.theladders.com/career-advice/exercising-at-this-specific-time-of-day-linked-to-lower-cancer-risk", sponsorLogo: "", sponsorURL: "")



// WEEK 1
//SUN
let sundayNow5to8TipArray0 = [weekendNow5to8Tip0, weekendNow5to8Tip1, weekendNow5to8Tip2, weekendNow5to8Tip3]
let sundayNow5to8Topic0 = Topic(title: weekendNow5to8Title, icon: weekendNow5to8Icon, tip: sundayNow5to8TipArray0)//SUN
//SAT
var saturdayNow5to8TipArray1 = [weekendNow5to8Tip4, weekendNow5to8Tip5, weekendNow5to8Tip6, weekendNow5to8Tip7]
let saturdayNow5to8Topic1 = Topic(title: weekendNow5to8Title, icon: weekendNow5to8Icon, tip: saturdayNow5to8TipArray1)//SAT

// WEEK 2
//SUN
let sundayNow5to8TipArray2 = [weekendNow5to8Tip8, weekendNow5to8Tip9, weekendNow5to8Tip10, weekendNow5to8Tip11]
let sundayNow5to8Topic2 = Topic(title: weekendNow5to8Title, icon: weekendNow5to8Icon, tip: sundayNow5to8TipArray2)//SUN
//SAT
var saturdayNow5to8TipArray3 = [weekendNow5to8Tip12, weekendNow5to8Tip13, weekendNow5to8Tip14, weekendNow5to8Tip5]
let saturdayNow5to8Topic2 = Topic(title: weekendNow5to8Title, icon: weekendNow5to8Icon, tip: saturdayNow5to8TipArray3)//SAT

// WEEK 3
//SUN
let sundayNow5to8TipArray4 = [weekendNow5to8Tip16, weekendNow5to8Tip17, weekendNow5to8Tip18, weekendNow5to8Tip19]
let sundayNow5to8Topic3 = Topic(title: weekendNow5to8Title, icon: weekendNow5to8Icon, tip: sundayNow5to8TipArray4)//SUN
//SAT
var saturdayNow5to8TipArray5 = [weekendNow5to8Tip20, weekendNow5to8Tip21, weekendNow5to8Tip22, weekendNow5to8Tip23]
let saturdayNow5to8Topic3 = Topic(title: weekendNow5to8Title, icon: weekendNow5to8Icon, tip: saturdayNow5to8TipArray5)//SAT

//WEEK 4
//SUN
let sundayNow5to8TipArray6 = [weekendNow5to8Tip24, weekendNow5to8Tip25, weekendNow5to8Tip26, weekendNow5to8Tip27]//SUN


//SAT
let saturdayNow5to8TipArray7 = [weekendNow5to8Tip28, weekendNow5to8Tip21, weekendNow5to8Tip22, weekendNow5to8Tip23]//SAT


//////////
//RANDOM
let sundayNow5to8TipArrays = [sundayNow5to8TipArray0, sundayNow5to8TipArray2, sundayNow5to8TipArray4, sundayNow5to8TipArray6]
let sundayNow5to8Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: sundayNow5to8TipArrays.random())
//RANDOM
let saturdayNow5to8TipArrays = [saturdayNow5to8TipArray1, saturdayNow5to8TipArray3, saturdayNow5to8TipArray5, saturdayNow5to8TipArray7]
let saturdayNow5to8Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: saturdayNow5to8TipArrays.random())











// MARK: - Now, Weekend, 9to11

let weekendNow9to11Title = nowTipTitle
let weekendNow9to11Icon = "Now"

//WEEK 1
// SUN
let sundayNow9to11Tip0 = Tip(header: "Reduce Your Risk ☀️", title: "Before you go outside, wear sunscreen (SPF 15 or higher), sunglasses, and a hat to reduce your risk of skin cancer", body: "Skin cancer is the most common cancer in America. Your nose, eyelids, and lips are one of the most common sites for skin cancer." , sourceName: "Men's Health", sourceURL: "https://www.menshealth.com/health/a19525153/applying-sunscreen-wrong-on-face/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let sundayNow9to11Tip1 = Tip(header: "Reduce Your Risk", title: "Study: Drinking water throughout the day could lower your risk of a heart attack", body: "People who drank 5+ glasses of water a day were 41% less likely to die from a heart attack during the study period than those who drank less than 2 glasses." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/entry/5-benefits-of-being-outdoors_us_5938266ce4b014ae8c69dce0", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let sundayNow9to11Tip2 = Tip(header: "Reduce Stress 🙏", title: "Survey: Attending church or religious services was the most effective way to reduce stress", body: "Most effective ways to reduce stress:\n• Church or religious services (77%)\n• Pray (73%)\n• Play sports (73%)\n• Massage or spa (71%)\n• Meditate or yoga (70%)\n• See mental health professional (68%)\n• Exercise or walk (62%)\n\nLess effective ways to reduce stress:\n• Watch TV or movie (33%)\n• Surf the Internet (29%)", sourceName: "American Psychological Association", sourceURL: "https://www.apa.org/news/press/releases/stress/2013/snapshot.aspx", sponsorLogo: "", sponsorURL: "")
let sundayNow9to11Tip3 = Tip(header: "Live Longer", title: "Schedule an hour a week to attend a spiritual or community service. It leads to other healthy habits", body: "People who attend spiritual services are more active, less likely to smoke, do drugs, or drink and drive. \n\nAlso, they may have higher self-esteem and self-worth, resulting in better health. \n\nIf you don't subscribe to any specific denomination, or if you haven't found a positive religious experience, you may want to explore a belief that is not based on strict dogma.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")

// SAT
let saturdayNow9to11Tip0 = Tip(header: "Maximize Productivity", title: "Your mind performs at its peak during the first 2-4 hours after you wake up", body: "Successful people take advantage of that time to do things for themselves. \n\n• Exercise \n• Meditate \n• Go for a nice walk", sourceName: "MoneyVersed", sourceURL: "https://moneyversed.com/weekend-habits-successful-people/", sponsorLogo: "logo", sponsorURL: "logoURL")
let saturdayNow9to11Tip1 = Tip(header: "Increase Happiness", title: "Spend time in nature", body: "Being in nature may provide people with resilience to meet the challenges of everyday life, while also facilitating exercise, social contact and a sense of purpose. \n\nIt also reduces blood pressure and contributes to longer lifespans amongst senior citizens." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/entry/5-benefits-of-being-outdoors_us_5938266ce4b014ae8c69dce0", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let saturdayNow9to11Tip2 = Tip(header: "Millionaire Habit", title: "Relax on Saturday and reflect on Sunday", body: "CEO of Twitter and Square, Jack Dorsey, works 16-hour days during the week but says: \n\n\"Saturday I take off. I hike. And then Sunday is reflections, feedback, strategy and getting ready for the rest of the week.\"" , sourceName: "LifeHack.org", sourceURL: "https://www.lifehack.org/articles/productivity/12-weekend-habits-highly-successful-people.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let saturdayNow9to11Tip3 = Tip(header: "Reduce Your Risk", title: "Sitting 8+ hours a day with no physical activity leads to the same risk of dying posed by obesity and smoking", body: "Too much sitting increases your risk of death from cardiovascular disease and cancer. \n\nTake a break from sitting every 30 minutes. \n\nStudy: Getting 60-75 minutes of moderately intense physical activity a day reduced the negative effects of too much sitting." , sourceName: "Mayo Clinic", sourceURL: "https://www.mayoclinic.org/healthy-lifestyle/adult-health/expert-answers/sitting/faq-20058005", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//WEEK 2
//SUN
let sundayNow9to11Tip4 = Tip(header: "Live Healthier ☀️", title: "Get sun exposure within 2 hours of waking up", body: "Morning sun exposure helps your circadian clock to reset itself for a new day and will help you fall asleep tonight." , sourceName: "SUCCESS Magazine", sourceURL: "https://www.success.com/the-new-secrets-of-perfect-sleep/", sponsorLogo: "", sponsorURL: "")
let sundayNow9to11Tip5 = Tip(header: "Live Longer", title: "People who attend religious services at least once a month have a 30%-35% reduced risk of death over a 7.5 year follow-up period", body: "Study: 20%-30% of this effect may be explained by better health behaviors (especially physical activity) among regular service attendees. \n\nIf you're not religious, or if you haven't found a positive spirital experience, you may want to explore a belief that is not based on strict dogma.", sourceName: "Published by: American Sociological Association", sourceURL: "https://www.jstor.org/stable/3653839", sponsorLogo: "", sponsorURL: "")
let sundayNow9to11Tip6 = Tip(header: "Lose Weight", title: "Drinking 8 glasses of water per day can aid in weight loss for the average person - drink more if you’re overweight or your working out a lot", body: "Study: 43% of adults drink less than 4 cups of water a day. \n\nReplacing soda, fruit juice, and sweetened iced teas with water can also help boost weight loss." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/drink-water-lose-weight/", sponsorLogo: "", sponsorURL: "")
let sundayNow9to11Tip7 = Tip(header: "Live Longer", title: "Walk more. It's what all successful people who live to 100 did - and do - almost daily", body: "Walking: \n• Relieves stress \n• Aids digestion after a meal \n\nIt's easier on the joints than running, and if you're walking briskly, may have the same cardiovascular benefits as running.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")

//SAT
let saturdayNow9to11Tip4 = Tip(header: "Increase Happiness 🌲", title: "Get some fresh air in nature", body: "Research: As air pollution increases, happiness decreases. And the effect is true even if you're near a busy road. \n\nThe link between mood and air quality was so strong that the researchers recommended clean air as an anti-depressant." , sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/health/wellness/how-to-be-happy/", sponsorLogo: "TBD", sponsorURL: "TBD")
let saturdayNow9to11Tip5 = Tip(header: "Reduce Your Risk", title: "Study: Participants who posted excessive amounts of images and selfies on social media showed a 25% increase in narcissistic traits", body: "This increase took many of these participants above the clinical cut-off for Narcissistic Personality Disorder. \n\nNarcissism is a personality characteristic that can involve grandiose exhibitionism, beliefs relating to entitlement, and exploiting others." , sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2018/11/181109112655.htm", sponsorLogo: "", sponsorURL: "")
let saturdayNow9to11Tip6 = Tip(header: "Lose Weight", title: "Drink 8 glasses of water per day - drink more if you’re overweight or your working out a lot", body: "Study: 43% of adults drink less than 4 cups of water a day. Replacing soda, fruit juice, and sweetened iced teas with water can also help boost weight loss." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/drink-water-lose-weight/", sponsorLogo: "", sponsorURL: "")
let saturdayNow9to11Tip7 = Tip(header: "Live Longer", title: "Do physical activities that you enjoy", body: "Forget the gym if you don't like it - you're not likely to go there if it's a chore. \n\nRather than exercising for the sake of exercising, make your lifestyle active. \n\n• Walk to the store. \n• Ride a bicycle instead of driving.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "", sponsorLogo: "", sponsorURL: "")

//WEEK 3
//SUN
let sundayNow9to11Tip8 = Tip(header: "Reduce Belly Fat", title: "Arrive on time to your next event", body: "If you’re always running behind schedule, that means you’re constantly feeling stressed. \n\nStress slows your metabolism, which slows your ability to burn fat. \n\nStart getting ready to leave 10 to 15 minutes earlier than you think you need to.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")
let sundayNow9to11Tip9 = Tip(header: "Billionaire Habit", title: "Take \"me time\" to relax or think", body: "This weekend: \n\n• Meditate \n• Read a book \n• Take a walk \n• Spend time on your own in nature", sourceName: "Market Watch", sourceURL: "https://www.marketwatch.com/story/4-habits-that-self-made-billionaires-practice-nearly-every-day-2019-07-11", sponsorLogo: "", sponsorURL: "")
let sundayNow9to11Tip10 = Tip(header: "Increase Happiness", title: "Study: Spending time in forests and areas with tree shade is better for your mental health than spending time in open grassy areas", body: "Exposure to 30%+ tree shade, compared with 0%-9% tree shade, was associated with a 31% decrease in experiencing mental distress. \n\nMeanwhile, exposure to 30%+ grass was associated with 71% higher odds of mental distress. \n\nResearchers suggest that without the shade of trees: \n• Sidewalk temperatures are hotter \n• Sidewalks can seem noisier \n• Walkers themselves are exposed to more air pollution. \n\nStudies also show that people are happier in green spaces that contain more stimuli — because trees are more complex than grass, it’s likely that we enjoy being around them more.", sourceName: "Journal of the American Medical Association", sourceURL: "https://jamanetwork.com/journals/jamanetworkopen/fullarticle/2739050", sponsorLogo: "", sponsorURL: "")
let sundayNow9to11Tip11 = Tip(header: "Live Longer", title: "Study: People who attended spiritual services frequently were 20% less likely to die at any age", body: "People who attended spiritual services have lower rates of cardiovascular disease, depression, stress, and suicide, and their immune systems seem to work better. \n\nIf you don't subscribe to any specific denomination, or if you haven't found a positive religious experience, you may want to explore a belief that is not based on strict dogma.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")


//SAT
let saturdayNow9to11Tip8 = Tip(header: "Eat Healthier", title: "Go to a farmers market to get the best produce. Most produce loses 30% of nutrients 3 days after harvest", body: "Studies show that vegetables can lose 15% to 55% of vitamin C, for instance, within a week. Some spinach can lose 90% within the first 24 hours after harvest. \n\nFarmers markets help keep money in the local economy and in the hands of the people who produced the food rather than those who market, label and distribute it.", sourceName: "Chicago Tribune", sourceURL: "https://www.chicagotribune.com/dining/ct-xpm-2013-07-10-chi-most-produce-loses-30-percent-of-nutrients-three-days-after-harvest-20130710-story.html", sponsorLogo: "", sponsorURL: "")
let saturdayNow9to11Tip9 = Tip(header: "Increase Happiness", title: "Taking walks in nature: \n• Lowers anxiety \n• Boosts mood and well-being", body: "Unlike city environments, exposure to forest environments lowers stress and helps to lower concentrations of the “stress hormone” cortisol, lower heart rate, and lower blood pressure. \n\nEven the sounds of nature trigger a relaxation response in the brain.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2017/06/why-you-should-tell-your-team-to-take-a-break-and-go-outside", sponsorLogo: "", sponsorURL: "")
let saturdayNow9to11Tip10 =  Tip(header: "Live Better", title: "Stretching in the morning increases your flexibility, improves your posture, and calms your mind for the rest of the day", body: "Stretching: \n\n• Increases nutrient supply to muscles which helps to reduce soreness. \n\n• Helps your body posture to be more vertical and be less slouched. \n\n• Increases blood flow, resulting in a calmer and more peaceful mindset." , sourceName: "University of California, Davis", sourceURL: "https://shcs.ucdavis.edu/blog/archive/healthy-habits/why-stretching-extremely-important", sponsorLogo: "", sponsorURL: "")
let saturdayNow9to11Tip11 = Tip(header: "Live Better", title: "Don't multi-task on the weekend", body: "It may be tempting to maximize your weekend productivity but successful people know that this just reduces efficiency and effectiveness. Instead, be present for each single activity." , sourceName: "Life Hack", sourceURL: "https://www.lifehack.org/articles/productivity/12-weekend-habits-highly-successful-people.html", sponsorLogo: "", sponsorURL: "")

//WEEK 4
//SUN
let sundayNow9to11Tip12 = Tip(header: "Reduce Your Risk", title: "Regular meditation or religious practice may protect against major depression by strengthing your brain cortex", body: "Research: Brain MRIs showed thicker brain cortices in people who placed a high importance on meditation or religion than those who did not. \n\nThe thicker brain cortex was found in precisely the same regions of the brain that had otherwise shown thinning in people at high risk for depression." , sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2014/01/140116084846.htm", sponsorLogo: "", sponsorURL: "") //thickening the brain cortex and counteracting the cortical thinning that would normally occur with major depression
let sundayNow9to11Tip13 = Tip(header: "Increase Happiness", title: "If you have a religion, practice it. If you don't, try out a few places of worship to see if any resonate with you", body: "Costa Ricans, which are one of the happiest people in the world, will tell you that their faith provides them with a sense of purpose and helps to ease the impact of life's hardships. \n\nFor many, weekly mass is a chance to downshift and shed stress.", sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")
let sundayNow9to11Tip14 = Tip(header: "Live Longer", title: "12-Year Study: People who went to religious services frequently were 20% less likely to die at any age", body: "It appears that people who pay attention to their spiritual side have lower rates of cardiovascular disease, depression, stress, and suicide, and their immune systems work better. \n\nPeople who attend a spiritual service have a forced schedule of: \n• Self-reflection \n• Decompression \n• Stress-relieving meditation", sourceName: "The Blue Zones: 9 Lessons for Living Longer From the People Who've Lived the Longest", sourceURL: "https://www.amazon.com/dp/B007WL6D60/", sponsorLogo: "", sponsorURL: "")
let sundayNow9to11Tip15 = Tip(header: "Increase Happiness", title: "Create a ritual - Set up one time a week when you invite over your best, most committed friends", body: "Most of us don't socialize enough to optimze our happiness. \n\nCreate or join a club: \n• Book club \n• Cooking club \n• Walking club \n• Religious club", sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")

//SAT
let saturdayNow9to11Tip12 = Tip(header: "Healthy Habit", title: "Drink water in the morning", body: "Drinking water in the morning: \n• Kick starts metabolism \n• Flushes out toxins \n• Hydrates the body \n\nThis habit is an investment in your health." , sourceName: "Medium", sourceURL: "https://medium.com/productivity-revolution/10-easy-things-to-do-after-waking-up-to-start-your-mornings-happy-781743607f89", sponsorLogo: "", sponsorURL: "")
let saturdayNow9to11Tip13 = Tip(header: "Increase Happiness", title: "Socialize face-to-face during your free time. Digital networks don’t provide the same benefits of community", body: "Loneliness in American has doubled from 20% to 40% since the 1980s. \n\nSocializing face-to-face: \n• Strengthens the immune system \n• Boosts mental health \n• Reduces depression \n\nSo if you must binge-watch, invite a friend over." , sourceName: "Quartz", sourceURL: "https://qz.com/1012585/the-best-weekend-activities-are-most-likely-not-the-ones-youre-currently-doing/", sponsorLogo: "Text A Friend", sponsorURL: "TBD")
let saturdayNow9to11Tip14 = Tip(header: "Live Longer", title: "Attending a faith-based service 4 times per month can add 4 to 14 years of life expectancy", body: "Research: The majority of people who live to be 100 years old belong to a faith-based community. \n\nThe researchers found that religious denomination doesn't seem to matter." , sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")
let saturdayNow9to11Tip15 = Tip(header: "Increase Happiness", title: "Research finds people are happiest on the days when they socialize 5-6 hours", body: "• Live close to your friends or make friends of your neighbors. \n\n• Organize happy hours, pot lucks, or backyard cookouts.", sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")

//WEEK 5
let sundayNow9to11Tip16 = Tip(header: "Rich Habit", title: "The richest 1% spend time reading every day", body: "Warren Buffett recommends reading 500 pages every day. \n\nLeave television and social networks aside in favour of reading." , sourceName: "Medium", sourceURL: "https://medium.com/swlh/10-mindset-differences-between-the-richest-1-and-the-other-99-6490c227fe82", sponsorLogo: "", sponsorURL: "") 

//WEEK 1
//SUN
let sundayNow9to10Array0 = [sundayNow9to11Tip0, sundayNow9to11Tip1, sundayNow9to11Tip2, sundayNow9to11Tip3]
let sundayNow9to10Topic0 = Topic(title: weekendNow9to11Title, icon: weekendNow9to11Icon, tip: sundayNow9to10Array0)
//SAT
let saturdayNow9to10Array0 = [saturdayNow9to11Tip0, saturdayNow9to11Tip1, saturdayNow9to11Tip2, saturdayNow9to11Tip3]
let saturdayNow9to10Topic0 = Topic(title: weekendNow9to11Title, icon: weekendNow9to11Icon, tip: saturdayNow9to10Array0)

//WEEK 2
//SUN
let sundayNow9to10Array1 = [sundayNow9to11Tip4, sundayNow9to11Tip5, sundayNow9to11Tip6, sundayNow9to11Tip7]
let sundayNow9to10Topic1 = Topic(title: weekendNow9to11Title, icon: weekendNow9to11Icon, tip: sundayNow9to10Array1)

//SAT
let saturdayNow9to10Array1 = [saturdayNow9to11Tip4, saturdayNow9to11Tip5, saturdayNow9to11Tip6, saturdayNow9to11Tip7]
let saturdayNow9to10Topic1 = Topic(title: weekendNow9to11Title, icon: weekendNow9to11Icon, tip: saturdayNow9to10Array1)

//WEEK 3
//SUN
let sundayNow9to10Array2 = [sundayNow9to11Tip8, sundayNow9to11Tip9, sundayNow9to11Tip10, sundayNow9to11Tip11]
let sundayNow9to10Topic2 = Topic(title: weekendNow9to11Title, icon: weekendNow9to11Icon, tip: sundayNow9to10Array2)
//SAT
let saturdayNow9to10Array2 = [saturdayNow9to11Tip8, saturdayNow9to11Tip9, saturdayNow9to11Tip10, saturdayNow9to11Tip11]
let saturdayNow9to10Topic2 = Topic(title: weekendNow9to11Title, icon: weekendNow9to11Icon, tip: saturdayNow9to10Array2)

//WEEK 4
//SUN
let sundayNow9to10Array3 = [sundayNow9to11Tip12, sundayNow9to11Tip13, sundayNow9to11Tip14, sundayNow9to11Tip15]
let sundayNow9to10Topic3 = Topic(title: weekendNow9to11Title, icon: weekendNow9to11Icon, tip: sundayNow9to10Array3)

//SAT
let saturdayNow9to10Array3 = [saturdayNow9to11Tip12, saturdayNow9to11Tip13, saturdayNow9to11Tip14, saturdayNow9to11Tip15]
let saturdayNow9to10Topic3 = Topic(title: weekendNow9to11Title, icon: weekendNow9to11Icon, tip: saturdayNow9to10Array3)

//////////
//RANDOM
let sundayNow9to10TipArrays = [sundayNow9to10Array0, sundayNow9to10Array1, sundayNow9to10Array2, sundayNow9to10Array3,]
let sundayNow9to10Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: sundayNow9to10TipArrays.random())
//RANDOM
let saturdayNow9to10TipArrays = [saturdayNow9to10Array0, saturdayNow9to10Array1, saturdayNow9to10Array2, saturdayNow9to10Array3,]
let saturdayNow9to10Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: saturdayNow9to10TipArrays.random())






//WEEK 5
//SUN (WIP 4)
let sundayNow9to10Array4 = [sundayNow9to11Tip4, sundayNow9to11Tip5, sundayNow9to11Tip10, sundayNow9to11Tip11]
let sundayNow9to10Topic4 = Topic(title: weekendNow9to11Title, icon: weekendNow9to11Icon, tip: sundayNow9to10Array4)

//SAT
//WIP (WIP 4)
let saturdayNow9to10Array4 = [saturdayNow9to11Tip4, saturdayNow9to11Tip5, saturdayNow9to11Tip10, saturdayNow9to11Tip11]
let saturdayNow9to10Topic4 = Topic(title: weekendNow9to11Title, icon: weekendNow9to11Icon, tip: saturdayNow9to10Array4)



// MARK: - Now, Weekend, 11to13

let weekendNow11to13Title = nowTipTitle
let weekendNow11to13Icon = "Now"

//WEEK 1
//SUN
let weekendNow11to13Tip0 = Tip(header: "Prevent Wrinkles", title: "Wear sunscreen everyday", body: "Research: People who used sunscreen daily were less likely to have wrinkles, sagging skin, and dark spots after 4.5 years than people who didn't use sunscreen daily." , sourceName: "The Skin Cancer Foundation", sourceURL: "https://www.skincancer.org/prevention/sun-protection/sunscreen/aging", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow11to13Tip1 = Tip(header: "Live Better", title: "Disconnect from technology on the weekend and reconnect with yourself and people", body: "• Take a ‘tech Sabbath.’ Even a walk without your phone can feel liberating. \n\n• \"A day of rest\" is an ancient tradition that is used for reflection and connection." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/every-week-i-unplug-from-technology-for-24-hours-and-im-convinced-it-makes-me-better-at-my-job-2016-9", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow11to13Tip2 = Tip(header: "Reduce Your Risk ☀️", title: "Lower your risk of skin cancer: Reduce sun exposure between 10 a.m. and 4 p.m.", body: "Having 5+ sunburns during your lifetime doubles your risk of melanoma, the deadliest form of skin cancer. \n\nIf you have to be outside: \n\n• Work in the shade \n• Apply (and reapply) sunscreen \n• Wear a wide-brimmed hat that protects your face and neck", sourceName: "Raleigh Medical Group", sourceURL: "https://www.raleighmedicalgroup.com/blog/entryid/185/skin-cancer-prevention", sponsorLogo: "", sponsorURL: "")
let weekendNow11to13Tip3 = Tip(header: "Live Better 🌲", title: "Spending time in nature is good for your mind, body, and spirit", body: "Being Active Outdoors: \n\n• Keeps your joints loose \n• Reduces anxiety, depression, and stress \n• Reduces your chances of getting a virus; since you're not breathing in the same recycled air as everyone else is when you stay indoors" , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/pop-culture/how-nature-can-solve-life-s-most-challenging-problems-ncna749361", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//SAT
let weekendNow11to13Tip4 = Tip(header: "Increase Happiness 🌲", title: "Exercising in nature for 5+ minutes improves self-esteem and mood", body: "The average American spends 90% of their life indoors. \n\nSunlight elevates people's mood and exercise helps to relax and cheers people up." , sourceName: "Harvard Health Publishing", sourceURL: "https://www.health.harvard.edu/newsletter_article/a-prescription-for-better-health-go-alfresco", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow11to13Tip5 = Tip(header: "Reduce Your Risk ☀️", title: "Lower your risk of skin cancer: Reduce sun exposure between 10 a.m. and 4 p.m.", body: "Having 5+ sunburns during your lifetime doubles your risk of melanoma, the deadliest form of skin cancer. \n\nIf you have to be outside during this time: \n• Work in the shade \n• Apply (and reapply) sunscreen \n• Wear a hat that protects your face and neck", sourceName: "Raleigh Medical Group", sourceURL: "https://www.raleighmedicalgroup.com/blog/entryid/185/skin-cancer-prevention", sponsorLogo: "", sponsorURL: "")
let weekendNow11to13Tip6 = Tip(header: "Prevent Weight Gain", title: "Having one cheat meal this weekend", body: "Study: People who stuck with a strict diet during the week, then overindulged on the weekends gained an average of 9 pounds a year. \n\n• 1 weekly cheat meal reduces cravings" , sourceName: "Men's Journal", sourceURL: "https://www.mensjournal.com/health-fitness/best-way-work-cheat-meals/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow11to13Tip7 = Tip(header: "Reduce Stress", title: "Spend today in nature", body: "When we slow down, stop the busywork, and take in beautiful natural surroundings, not only do we feel restored, but our mental performance improves too." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/entry/5-benefits-of-being-outdoors_us_5938266ce4b014ae8c69dce0", sponsorLogo: "", sponsorURL: "")

// WEEK 2
//SUN
let weekendNow11to13Tip8 = Tip(header: "Think Big", title: "Spend time in Nature today. It helps you to \"think big\"", body: "Venture capitalist Peter Thiel said he thinks best \"somewhere beautiful in nature.\"" , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/mark-zuckerberg-bill-gates-best-place-to-think-2018-11#venture-capitalist-peter-thiel-said-he-thinks-best-somewhere-beautiful-in-nature-5", sponsorLogo: "", sponsorURL: "")
let weekendNow11to13Tip9 = Tip(header: "Increase Happiness 🌲", title: "Taking walks in nature lowers anxiety and depression while boosting mood", body: "Exposure to nature lowers stress. Even the sounds of nature trigger a relaxation response in the brain. \n\nSunlight can boost Vitamin D levels that are known to increase mood." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2017/06/why-you-should-tell-your-team-to-take-a-break-and-go-outside", sponsorLogo: "", sponsorURL: "")
let weekendNow11to13Tip10 = Tip(header: "Live Better", title: "Lower depression by donating to people in need", body: "Researchers found lower depression rates among Americans who donate 10%+ of their incomes (41% say they rarely or never experience depression versus 32% for everyone else.)", sourceName: "The New Republic", sourceURL: "https://newrepublic.com/article/119477/science-generosity-why-giving-makes-you-happy", sponsorLogo: "", sponsorURL: "")
let weekendNow11to13Tip11 = Tip(header: "Prevent Weight Gain", title: "Consume the majority of your daily calories before 3PM", body: "Researchers tracked the timing of meals, and found that those who ate their most major meal later in the day (after 3PM) lost less weight than those who ate most of their calories before 3PM." , sourceName: "Vox", sourceURL: "https://www.vox.com/2016/2/17/11034546/eating-late-night-bad-diet", sponsorLogo: "", sponsorURL: "")

// SAT
let weekendNow11to13Tip12 = Tip(header: "Reduce Stress 🌲", title: "Take a walk through nature", body: "Study: Strolling through forest environments: \n\n• lowers stress hormones \n• reduces blood pressure \n• increases feelings of well-being", sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/health/wellness/how-to-be-happy/", sponsorLogo: "", sponsorURL: "")
let weekendNow11to13Tip13 = Tip(header: "Prevent Weight Gain", title: " Eat your meals earlier throughout the day", body: "Research: Independent of physical activity, the human body uses less energy to digest food later in the day. \n\nAs a result, when you eat late at night, you may convert more calories to fat, instead of burning them off." , sourceName: "Vox", sourceURL: "https://www.vox.com/science-and-health/2019/3/26/18280663/night-eating-sleep-loss-weight-gain", sponsorLogo: "", sponsorURL: "")
let weekendNow11to13Tip14 = Tip(header: "Prevent Weight Gain", title: "Use your day off to do something active", body: "Using the weekend for some calorie-burning activities that you can't squeeze in midweek can result in weekend weight loss. \n\nPeople tend to eat more when they have a lot of free time because they're bored." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/2012/08/11/healthy-weekend_n_1760981.html?slideshow=true#gallery/243861/6", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow11to13Tip15 = Tip(header: "Live Longer", title: "Maintain good relationships with your family, friends, community", body: "Research: People who experience loneliness are less happy and they live shorter lives than people who are not lonely. \n\nToday: \n\n• Replace screen time with people time; \n• Liven up a stale relationship by doing something new together (a long walk or date night); and \n• Contact a family member who you haven't spoken to in years.", sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2017/10/31/this-harvard-study-reveals-how-you-can-be-happier-and-more-successful.html", sponsorLogo: "", sponsorURL: "")

//WEEK 3
//SUN
let weekendNow11to13Tip16 = Tip(header: "Burn Calories", title: "Go for a short hike", body: "Take in the sights and sounds of nature all while burning off calories. \n\nJust 15 minutes into your hike, you’ll have burned off 100 calories—and most trips last far longer than that.", sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/easy-ways-to-burn-calories/", sponsorLogo: "", sponsorURL: "")
let weekendNow11to13Tip17 =  Tip(header: "Increase Happiness", title: "Reduce screen time: Screen time leads to unhappiness, several studies conclude", body: "Teens who spent more time on the internet, playing computer games, on social media, texting, using video chat or watching TV were less happy. \n\nHowever, teens who spent more time seeing their friends in person, exercising, playing sports, attending religious services, reading or even doing homework were happier.", sourceName: "Quartz", sourceURL: "https://qz.com/1190151/why-am-i-unhappy-a-new-study-explains-americas-unhappiness-epidemic/", sponsorLogo: "", sponsorURL: "")
let weekendNow11to13Tip18 = Tip(header: "Live Longer", title: "Plant a garden", body: "Working in a garden requires frequent, low-intensity, full-range-of-motion-activity. \n\nGardening can relieve stress. And you emerge from the season with fresh vegetables.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")
let weekendNow11to13Tip19 = Tip(header: "Increase Happiness", title: "Exercise at lunchtime to improve your mood this afternoon", body: "A 30-minute workout in the gym or power walk helps to boost levels of feel-good endorphins, which help to make you feel upbeat, positive, and less tired." , sourceName: "Weight Loss Resources", sourceURL: "https://www.weightlossresources.co.uk/diet/healthy_eating/beat-afternoon-energy-slump.htm", sponsorLogo: "", sponsorURL: "")

//SAT
let weekendNow11to13Tip20 = Tip(header: "Lose Weight", title: "Drink 8 glasses of water per day - drink more if you’re overweight or your working out a lot", body: "Study: 43% of adults drink less than 4 cups of water a day. \n\nReplacing soda, fruit juice, and sweetened iced teas with water can also help boost weight loss." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/drink-water-lose-weight/", sponsorLogo: "", sponsorURL: "")
let weekendNow11to13Tip21 = Tip(header: "Live Longer", title: "Increase your social connections: \n• Family \n• Friends \n• Romantic partner \n• Club membership \n• Volunteering", body: "Research: People with adequate social relationships have a 50% greater likelihood of survival compared to those with poor or insufficient social relationships. \n\nThe magnitude of this effect is comparable with quitting smoking.", sourceName: "PLOS Medicine", sourceURL: "https://journals.plos.org/plosmedicine/article?id=10.1371/journal.pmed.1000316#pmed-1000316-g006", sponsorLogo: "", sponsorURL: "")
let weekendNow11to13Tip22 = Tip(header: "Live Longer", title: "Enroll in a yoga class", body: "Yoga helps increase balance, strengthens all muscle groups, increases flexibility, is good for your joints, and can lessen lower back pain. \n\nIt may also provide the same kind of social support and spiritual centering that religions do. \n\nIt's recommended to practice it at least twice weekly.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")
let weekendNow11to13Tip23 = Tip(header: "Live Smarter", title: "Don't do too many chores on the weekend", body: "Chores expand to fill the available space. If you do them on weekdays, you’ll spend less time doing chores simply because you have less time." , sourceName: "Fast Company", sourceURL: "https://www.fastcompany.com/3015285/6-surprising-tips-to-cut-household-chores-in-half", sponsorLogo: "TBD", sponsorURL: "www.test.com")


//WEEK 4
//SUN
let weekendNow11to13Tip24 = Tip(header: "Increase Happiness", title: "Study: People reported they were happiest when doing the following activities", body: "• Relaxing \n• Socializing \n• Exercising \n• Eating \n• Doing spiritual activities \n• Engaging in intimate relations \n\nMake time to do these activities more often in your day.", sourceName: "Fast Company", sourceURL: "https://www.fastcompany.com/3048975/the-scientifically-proven-way-to-have-the-best-vacation-ever", sponsorLogo: "", sponsorURL: "")
let weekendNow11to13Tip25 = Tip(header: "Increase Happiness", title: "Reduce time on social media. \n\nPeople who report using 7-11 social media platforms had 3 times the risk of depression and anxiety than people who used 0-2 platforms", body: "This association is strong enough that doctors could consider telling patients with depression and anxiety that multiple platform use may be related to their symptoms.", sourceName: "University of Pittsburgh", sourceURL: "http://www.braininstitute.pitt.edu/using-lots-social-media-sites-raises-depression-risk", sponsorLogo: "", sponsorURL: "")
let weekendNow11to13Tip26 = Tip(header: "Increase Happiness", title: "Moderate sunlight exposure helps improve your mood by boosting the serotonin levels in your body", body: "Also known as the 'happiness hormone', it puts you in a calm mood. \n\nSunlight also decreases the risk of depression in those at risk of seasonal affective disorder (SAD) during the winter months.", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/nomanazish/2018/02/28/why-sunlight-is-actually-good-for-you/#5944743c5cd9", sponsorLogo: "", sponsorURL: "")
let weekendNow11to13Tip27 = Tip(header: "Live Longer", title: "Study: People who run just once a week can reduce their risk of death, from any cause, by as much as 27%", body: "Multi-Year Study: People who made a habit of running once per week had a lower death rate than those who didn't. \n\nThe researchers suggest that any amount of running, even just once a week, would probably lead to substantial improvements in population health and longevity.", sourceName: "Inc.", sourceURL: "https://www.inc.com/bill-murphy-jr/working-so-hard-that-you-never-exercise-a-massive-new-study-of-232149-people-says-this-small-change-reduces-your-risk-of-death-by-27-percent.html", sponsorLogo: "", sponsorURL: "")

//SAT
let weekendNow11to13Tip28 = Tip(header: "Healthy Habit", title: "Your biggest meal should be around noon when your digestion is at its peak", body: "At lunch, focus on protein and greens. \n\nThis healthy habit means you don't need a huge meal at dinner.", sourceName: "Healthline", sourceURL: "https://www.health.com/health/gallery/0,,20934662,00.html", sponsorLogo: "TBD", sponsorURL: "TBD")
let weekendNow11to13Tip29 = Tip(header: "Look and Feel Younger", title: "Slow your biological aging by exercising regularly at high levels", body: "Study: People with high levels of regular exercise had less biological aging and ended up with bodies that act as if they were 9 years younger. \n\n• Run 30-40 minutes, 5 days a week", sourceName: "Brigham Young University", sourceURL: "https://news.byu.edu/news/high-levels-exercise-linked-nine-years-less-aging-cellular-level", sponsorLogo: "", sponsorURL: "")
let weekendNow11to13Tip30 = Tip(header: "Increase Happiness", title: "Set up a weekly family meal and invite your extended family or friends", body: "Costa Rican families, which are one of the happiest people in the world, traditionaly gather for meals on Saturdays or Sundays. \n\nA strongly connected family serves as a social network and a safety net for when times get tough.", sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")
let weekendNow11to13Tip31 = Tip(header: "Increase Happiness", title: "Socialize for 6-7 hours each day", body: "Research finds that your social network - and your level of engagement with it - contribute significantly to your happiness. \n\nEven introverts tend to be happier when they are around people than when they're alone.", sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")

//WEEK 5
//SUN
let weekendNow11to13Tip32 = Tip(header: "Be More Interesting", title: "Stop doing uninteresting things", body: "DON'T: \n• Watch TV every day \n• Eat at the same restaurants over and over again \n• Go to the same vacation spot every year \n• Only read the books that were assigned in high school \n• Spend hours checking social media feeds \n• Talk about the weather \n• Expect other people to do all the talking \n\nDO: \n• Try a new restaurant you have driven by a million times but never tried \n• Create a bucket list and pledge to do one activity every month \n• Go to the movie theater and watch a movie that you would never normally choose \n• Sign up for a workout class that you have never done before \n• Pick up a magazine you would never normally read and explore it cover to cover \n• Learn a new skill", sourceName: "Science Of People", sourceURL: "https://www.scienceofpeople.com/interesting/", sponsorLogo: "", sponsorURL: "")

//SAT
let weekendNow11to13Tip36 = Tip(header: "Daily Habit: Exercise", title: "Scientists consider exercise to be the ‘single thing that comes close to a magic bullet, in terms of its strong and universal benefits’", body: "Exercise is Richard Branson’s #1 piece of advice to entrepreneurs. \n\nHave goals with your exercise so that no matter what happens that day — at work, at home, in the economy — you can have something that went well today. \n\n• You improved your mile time \n• You swam 3 more laps than usual \n• You squatted a new weight" , sourceName: "Ryan Holiday", sourceURL: "https://ryanholiday.net/13-life-changing-habits-to-try-and-do-every-single-day/", sponsorLogo: "", sponsorURL: "")
let weekendNow11to13Tip37 = Tip(header: "Prevent Illness", title: "Reduce the spread of respiratory diseases:", body: "• Avoid touching your eyes, nose, and mouth. \n\n• Cover your cough or sneeze with a tissue, then throw the tissue in the trash. \n\n• Clean and disinfect frequently touched objects and surfaces using a regular household cleaning spray or wipe. \n\n• Wash your hands often with soap and water for at least 20 seconds, especially after going to the bathroom; before eating; and after blowing your nose, coughing, or sneezing. \n\n• If soap and water are not readily available, use an alcohol-based hand sanitizer with at least 60% alcohol. \n\n• Avoid close contact with people who are sick." , sourceName: "CDC: Centers for Disease Control and Prevention", sourceURL: "https://www.cdc.gov/coronavirus/2019-ncov/about/prevention-treatment.html", sponsorLogo: "", sponsorURL: "")


//WEEK 1
//SUN
let sundayNow11to13TipArray0 = [weekendNow11to13Tip0, weekendNow11to13Tip1, weekendNow11to13Tip2, weekendNow11to13Tip3]

//SAT
let saturdayNow11to13TipArray1 = [weekendNow11to13Tip4, weekendNow11to13Tip5, weekendNow11to13Tip6, weekendNow11to13Tip7]


//WEEK 2
//SUN
let sundayNow11to13TipArray2 = [weekendNow11to13Tip8, weekendNow11to13Tip9, weekendNow11to13Tip10, weekendNow11to13Tip11]

//SAT
let saturdayNow11to13TipArray3 = [weekendNow11to13Tip12, weekendNow11to13Tip13, weekendNow11to13Tip14, weekendNow11to13Tip15]


//WEEK 3
//SUN
let sundayNow11to13TipArray4 = [weekendNow11to13Tip16, weekendNow11to13Tip17, weekendNow11to13Tip18, weekendNow11to13Tip19]

//SAT
let saturdayNow11to13TipArray5 = [weekendNow11to13Tip20, weekendNow11to13Tip21, weekendNow11to13Tip22, weekendNow11to13Tip23]


//WEEK 4
//SUN
let sundayNow11to13TipArray6 = [weekendNow11to13Tip24, weekendNow11to13Tip25, weekendNow11to13Tip26, weekendNow11to13Tip27]

//SAT
let saturdayNow11to13TipArray7 = [weekendNow11to13Tip28, weekendNow11to13Tip29, weekendNow11to13Tip30, weekendNow11to13Tip31]


//WEEK 5
//SUN (3 WIP)
let sundayNow11to13TipArray8 = [weekendNow11to13Tip32, weekendNow11to13Tip26, weekendNow11to13Tip25, weekendNow11to13Tip20]

//SAT (3 WIP)
let saturdayNow11to13TipArray9 = [weekendNow11to13Tip36, weekendNow11to13Tip37, weekendNow11to13Tip14, weekendNow11to13Tip18]


//RANDOM
let sundayNow11to13TipArrays = [sundayNow11to13TipArray0, sundayNow11to13TipArray2, sundayNow11to13TipArray4, sundayNow11to13TipArray6, sundayNow11to13TipArray8,]
let sundayNow11to13Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: sundayNow11to13TipArrays.random())
//RANDOM
let saturdayNow11to13TipArrays = [saturdayNow11to13TipArray1, saturdayNow11to13TipArray3, saturdayNow11to13TipArray5, saturdayNow11to13TipArray7, saturdayNow11to13TipArray9,]
let saturdayNow11to13Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: saturdayNow11to13TipArrays.random())


// MARK: - Now, Weekend, 14to16

let weekendNow14to16Title = nowTipTitle
let weekendNow14to16Icon = "Now"

//1
let weekendNow14to16Tip0 = Tip(header: "Live Healthier", title: "Research: being social improves your mental and emotional health", body: "An active social life reduces your risk of dementia and memory loss as we age." , sourceName: "The New York Times", sourceURL: "https://well.blogs.nytimes.com/2008/06/04/socializing-appears-to-delay-memory-problems/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow14to16Tip1 = Tip(header: "Increase Happiness", title: "DO: Walk in nature \nDON'T: Walk in a high-traffic urban setting", body: "Study: Walking for 90 minutes in nature, as opposed to walking in a high-traffic urban setting, showed decreased activity in a region of the brain associated with depression. \n\nIn fact, city dwellers have a 20% higher risk of anxiety disorders and a 40% higher risk of mood disorders as compared to people in rural areas." , sourceName: "Stanford University", sourceURL: "https://news.stanford.edu/2015/06/30/hiking-mental-health-063015/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow14to16Tip2 = Tip(header: "Sleep Better Tonight", title: "Avoid afternoon naps if you have trouble sleeping at night", body: "Power naps may help you get through the day, but if you find that you can't fall asleep at bedtime, eliminating even short catnaps may help." , sourceName: "National Sleep Foundation", sourceURL: "https://www.sleepfoundation.org/articles/healthy-sleep-tips", sponsorLogo: "", sponsorURL: "")
let weekendNow14to16Tip3 = Tip(header: "Live Healthier", title: "3 PM to 6 PM is when physical performance is usually best, and the risk of injury least", body: "Muscle strength peaks between 2 PM to 6 PM at levels as much as 6% above the day's lows. \n\nEye-hand coordination is best in the late afternoon. \n\nLungs function 18% more efficiently at 5 PM than at midday. \n\nJoints and muscles are up to 20% more flexible in the evening.", sourceName: "Wall Street Journal", sourceURL: "https://www.wsj.com/articles/SB10000872396390444180004578018294057070544", sponsorLogo: "", sponsorURL: "")

//2
let weekendNow14to16Tip4 = Tip(header: "Avoid Weight Gain", title: "Study: Eat your biggest meal of the day before 3 PM", body: "People who ate their biggest meal after 3 PM, lost significantly less weight — and took longer to lose it — than people who ate their biggest meal before 3 PM." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/why-eating-late-bad-unhealthy-2018-1", sponsorLogo: "", sponsorURL: "")
let weekendNow14to16Tip5 = Tip(header: "The Right Time", title: "The best time to take a nap is between 2 PM and 3 PM", body: "We typically experience some sleepiness or decrease in alertness after lunch. \n\nA 10-30 minute nap at this time is less likely to interfere with nighttime rest than naps later in the day." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/the-best-time-of-day-to-do-everything-2016-5", sponsorLogo: "", sponsorURL: "")
let weekendNow14to16Tip6 = Tip(header: "Increase Happiness", title: "Focus on face-to-face relationships. The more you use Facebook/social media, the worse you feel", body: "While real-world social networks were positively associated with overall well-being, the use of Facebook was negatively associated with overall well-being. \n\nExposure to the carefully curated images from others’ lives leads to negative self-comparison, and the sheer quantity of social media interaction detracts from more meaningful real-life experiences." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2017/04/a-new-more-rigorous-study-confirms-the-more-you-use-facebook-the-worse-you-feel", sponsorLogo: "", sponsorURL: "")
let weekendNow14to16Tip7 = Tip(header: "Live Longer", title: "We all need 22 minutes per day of aerobic exercise (e.g. brisk walking) and muscle-strengthening exercise 2 times a week", body: "Among adults, only 27% of men and 19% of women met the recommended guidelines for both aerobic and muscle-strengthening exercise. \n\n• Go exercise for 22 minutes" , sourceName: "Harvard Health Publishing", sourceURL: "https://www.health.harvard.edu/staying-healthy/americans-arent-meeting-exercise-goals", sponsorLogo: "", sponsorURL: "")

////// WEEK 2
//SUN
let weekendNow14to16Tip8 = Tip(header: "The Right Time", title: "For many, the optimal time to take a nap is 7 hours after waking", body: "• 7AM wake up = 2PM nap \n• 8AM wake up = 3PM nap \n\nThere's evidence that regular nappers get more from their naps than infrequent nappers." , sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
let weekendNow14to16Tip9 = Tip(header: "Lose Weight", title: "Drink 8 glasses of water per day - drink more if you’re overweight or your working out a lot", body: "Study: 43% of adults drink less than 4 cups of water a day. \n\nReplacing soda, fruit juice, and sweetened iced teas with water can also help boost weight loss." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/drink-water-lose-weight/", sponsorLogo: "", sponsorURL: "")
let weekendNow14to16Tip10 = Tip(header: "Live Longer", title: "Encourage your family and friends to live healthy lives improves your odds of living a healthy life", body: "Research: People were more likely to become obese when their friends became obese. \n\nIn the case of close mutual friends, if one became obese, the odds of the other becoming obese nearly tripled. \n\nIt seemed the same effect occurred with weight loss.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")
let weekendNow14to16Tip11 = Tip(header: "Live Healthier", title: "People who spend 2+ hours in nature a week are more likely to report good health and higher psychological wellbeing than those who don't visit nature at all during an average week", body: "The majority of nature visits in this research took place within just 2 miles of home so even visiting local urban green spaces seems to be a good thing. \n\nThe study found it didn't matter whether the 2 hours was achieved in a single visit or over several shorter visits.", sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2019/06/190613095227.htm", sponsorLogo: "", sponsorURL: "")

//SAT
let weekendNow14to16Tip12 = Tip(header: "Lose Weight", title: "Drink 8 glasses of water per day - drink more if you’re overweight or your working out a lot", body: "Study: 43% of adults drink less than 4 cups of water a day. \n\nReplacing soda, fruit juice, and sweetened iced teas with water can also help boost weight loss." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/drink-water-lose-weight/", sponsorLogo: "", sponsorURL: "")
let weekendNow14to16Tip13 = Tip(header: "Increase Happiness", title: "Exercise 30 minutes a day", body: "Exercise boosts mood, increases energy, improves sleep, lowers chances of obesity and chronic disease, and is likely to make you more attractive.", sourceName: "Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")
let weekendNow14to16Tip14 = Tip(header: "Prevent Weight Gain", title: "Limit food consumption to your hours of peak activity", body: "Researchers put 2 groups of mice on the same diet. \n\nOne group was allowed to eat anytime; the other group was restricted to eating only during an 8-hour period when they were normally awake and active. \n\nThe mice that ate only while active were 40% leaner and had lower cholesterol and blood sugar.", sourceName: "Wall Street Journal", sourceURL: "https://www.wsj.com/articles/SB10000872396390444180004578018294057070544", sponsorLogo: "", sponsorURL: "")
let weekendNow14to16Tip15 = Tip(header: "Live Longer", title: "Focus your life on serving others or caring for your family", body: "Study: Successful 100+ year-olds have a strong sense of purpose. They feel needed and contribute to a greater good. \n\nAs soon as they lose this, the switch goes off. They die very quickly if they don't feel needed.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")

//WEEK 3
//SUN
let weekendNow14to16Tip16 = Tip(header: "Millionaire Habit", title: "66% of millionaires exercise 30+ minutes every day", body: "Exercise boosts your: \n• Memory \n• Concentration \n• Mental sharpness \n\nGo for a: \n• Bike ride \n• Walk \n• Run \n• Jog", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/rich-people-exercise-every-day-2016-4", sponsorLogo: "", sponsorURL: "")
let weekendNow14to16Tip17 = Tip(header: "Increase Happiess", title: "Reduce your time online: People who spent 5+ hours a day online were twice as likely to be unhappy as those who spent less than an hour a day", body: "Study: People who were randomly assigned to give up Facebook for a week ended that time happier, less lonely and less depressed than those who continued to use Facebook.", sourceName: "Quartz", sourceURL: "https://qz.com/1190151/why-am-i-unhappy-a-new-study-explains-americas-unhappiness-epidemic/", sponsorLogo: "", sponsorURL: "")
let weekendNow14to16Tip18 = Tip(header: "Increase Happiness", title: "Limit the time you spend with people who harbor consistently negative attitudes, and put your happiest, funniest, and most trustworthy friends at the top of your contact list", body: "Research: When we are around happy people, we start to subconsciously mimic their body movements and facial expressions, leading us to feel happier, too.", sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")
let weekendNow14to16Tip19 = Tip(header: "Live Better", title: "Volunteer. On average, Volunteers weigh less, feel healthier, have less risk of suffering a heart attack, and feel happier", body: "Start by signing up to serve once a month, preferably in a way that makes the best use of your skills, and your involvement will likely increase as you enjoy the benefits of giving.", sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")


//SAT
let weekendNow14to16Tip20 = Tip(header: "Millionaire Habit", title: "Millionaires exercise 3.5 hours a week. Go exercise now.", body: "The consistency with which millionaires have a workout plan and stay with it relates directly to how successful they have become. \n\nMillionaires work hard at staying in shape, some by hitting the gym on the way to work, others by taking part in exercise classes or team sports.", sourceName: "The Street", sourceURL: "https://www.thestreet.com/lifestyle/lifestyle-habits-of-millionaires-that-everyone-should-adopt-14547729", sponsorLogo: "", sponsorURL: "")
let weekendNow14to16Tip21 = Tip(header: "Increase Happiness", title: "Reduce Time On Your Smartphone. \n\nTeen's happiness levels have been decreasing since 2012 (the year when most Americans owned smartphones)", body: "Studies find sharp increases in mental health issues among iGen, including depression, self-harm, and suicide. \n\nAnother Study: The happiest teens were those who used digital media, but only for a limited amount of time.", sourceName: "Quartz", sourceURL: "https://qz.com/1190151/why-am-i-unhappy-a-new-study-explains-americas-unhappiness-epidemic/", sponsorLogo: "", sponsorURL: "")
let weekendNow14to16Tip22 = Tip(header: "Increase Happiness", title: "People are happiest on days when they socialize for 6+ hours", body: "However, studies show that Americans socialize an average of only 41 minutes a day. \n\nAnother study found that good social relations - not exercise, religion, or positive events - was the strongest predictor of whether a subject would end up in the \"happy\" group versus the \"average\" group.", sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")
let weekendNow14to16Tip23 = Tip(header: "Daily Habit", title: "Every single day you should find a way to disconnect and unplug, even for a few minutes.", body: "Ask yourself: How often am I unreachable? The answer is: Not often enough. \n\nBuild some of this time into your daily practice. You’ll be better for it." , sourceName: "Ryan Holiday", sourceURL: "https://ryanholiday.net/13-life-changing-habits-to-try-and-do-every-single-day/", sponsorLogo: "", sponsorURL: "")


//WEEK 4
//SUN
let weekendNow14to16Tip24 = Tip(header: "Daily Habit", title: "Go For a Walk. Nietzsche said, “It is only ideas gained from walking that have any worth.”", body: "You should go for a walk every single day not only for exercise but for the philosophical and psychological benefits. \n\nExperience nature. Experience the quiet of the world around you. \n\nIf you’re too busy, multitask: Take a walking meeting. Do your phone call on the move." , sourceName: "Ryan Holiday", sourceURL: "https://ryanholiday.net/13-life-changing-habits-to-try-and-do-every-single-day/", sponsorLogo: "", sponsorURL: "")
let weekendNow14to16Tip25 = Tip(header: "🏃‍♀️", title: "Afternoon/early evening workouts help you sprint faster and lift more weight", body: "Lung function is highest this time of the day, so your circulation system can distribute more oxygen and nutrients. This is also the time of day when strength peaks, reaction time quickens, hand-eye coordination sharpens, and heart rate and blood pressure drop. These factors make it a great time to put on your best athletic performance. \n\nIn fact, a disproportionate number of Olympic records, especially in running and swimming, are set in the late afternoon and early evening.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/", sponsorLogo: "", sponsorURL: "")
//let weekendNow14to16Tip26
//let weekendNow14to16Tip27

//SAT






//WEEK 1
//SUN
let weekendNow14to16TipArray0 = [weekendNow14to16Tip0, weekendNow14to16Tip1, weekendNow14to16Tip2, weekendNow14to16Tip3]

//SAT
let weekendNow14to16TipArray1 = [weekendNow14to16Tip4, weekendNow14to16Tip5, weekendNow14to16Tip6, weekendNow14to16Tip7]

//WEEK 2
//SUN
let weekendNow14to16TipArray2 = [weekendNow14to16Tip8, weekendNow14to16Tip9, weekendNow14to16Tip10, weekendNow14to16Tip11]

//SAT
let weekendNow14to16TipArray3 = [weekendNow14to16Tip12, weekendNow14to16Tip13, weekendNow14to16Tip14, weekendNow14to16Tip15]

//WEEK 3
//SUN
let weekendNow14to16TipArray4 = [weekendNow14to16Tip16, weekendNow14to16Tip17, weekendNow14to16Tip18, weekendNow14to16Tip19]

//SAT
let weekendNow14to16TipArray5 = [weekendNow14to16Tip20, weekendNow14to16Tip21, weekendNow14to16Tip22, weekendNow14to16Tip23]

//WEEK 4
//SUN
let weekendNow14to16TipArray6 = [weekendNow14to16Tip24, weekendNow14to16Tip17, weekendNow14to16Tip18, weekendNow14to16Tip19]//WIP (3)

//SAT
//let weekendNow14to16TipArray7


//RANDOM
let sundayNow14to16TipArrays = [weekendNow14to16TipArray0, weekendNow14to16TipArray2, weekendNow14to16TipArray4,]
let sundayNow14to16Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: sundayNow14to16TipArrays.random())
//RANDOM
let saturdayNow14to16TipArrays = [weekendNow14to16TipArray1, weekendNow14to16TipArray3, weekendNow14to16TipArray5,]
let saturdayNow14to16Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: saturdayNow14to16TipArrays.random())







// MARK: - Now, Weekend, 17to18

let weekendNow17to18Title = nowTipTitle
let weekendNow17to18Icon = "Now"

// WEEK 1
// SUN
let sundayNow17to20Tip0 = Tip(header: "Live Healthier 📵", title: "Enjoy your weekend by not checking your smartphone. Being connected 24/7 takes a toll on your health", body: "The blue light from our screens can sabotage a good night's sleep, and social media obsession can cause depression." , sourceName: "CNET Magazine", sourceURL: "https://www.cnet.com/news/take-a-break-from-your-smartphone/", sponsorLogo: "", sponsorURL: "")
let sundayNow17to20Tip1 = Tip(header: "Reduce Risk Of Cancer", title: "Drink a glass of water", body: "Study: Staying hydrated can reduce risk of colon cancer by 45%, bladder cancer by 50%, and possibly reduce breast cancer risk too." , sourceName: "Shape", sourceURL: "https://www.shape.com/healthy-eating/healthy-drinks/6-reasons-drinking-water-helps-solve-any-problem", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let sundayNow17to20Tip2 = Tip(header: "Live Healthier", title: "Meal prep. You are more likely to eat healthier if you prepare your meals for the following week", body: "It forces you to commit to healthier eating, and over the course of months, you will notice a healthier, leaner self by doing this simple habit." , sourceName: "Bustle", sourceURL: "https://www.bustle.com/articles/159080-11-healthy-after-work-habits-to-try-instead-of-sitting-on-the-couch-all-night", sponsorLogo: "", sponsorURL: "")
let sundayNow17to20Tip3 = Tip(header: "Successful Habit", title: "Read every Sunday night", body: "Use this time to catch up on reading that has been neglected during the workweek. \n\nMost successful people read every night before bed." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/what-successful-people-do-on-sunday-night-2016-3#-6", sponsorLogo: "", sponsorURL: "")

//SAT
let saturdayNow17to20Tip0 = Tip(header: "Live Longer", title: "Socialize with friends and family", body: "People with active social lives are more likely to live longer and less likely to be depressed and develop dementia those who are socially isolated." , sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/living-mild-cognitive-impairment/201606/the-health-benefits-socializing", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let saturdayNow17to20Tip1 = Tip(header: "Safety 🚘", title: "Saturday between 4 PM to 10 PM is the most dangerous day and time of the week to drive", body: "Analysis of US Car Crash-Related Fatalities: Saturday during the late afternoon and evening had the most fatal car crashes compared to any other day and time during the week. \n\nAlcohol and speeding are key factors in the increased crash risk on Saturday." , sourceName: "Avvo", sourceURL: "https://www.avvo.com/fatal-car-accidents", sponsorLogo: "", sponsorURL: "")
let saturdayNow17to20Tip2 = Tip(header: "Live Healthier", title: "30-Year Study: Your friends greatly influence your future", body: "• If your friend smokes, you are 61% more likely to become a smoker. \n\n• If your friend becomes obese, you are 45% more likely to gain weight over the next 2-4 years." , sourceName: "Medium", sourceURL: "https://medium.com/the-mission/youre-not-the-average-of-the-five-people-you-surround-yourself-with-f21b817f6e69", sponsorLogo: "", sponsorURL: "")
let saturdayNow17to20Tip3 = Tip(header: "Prevent Weight Gain", title: "• Eat out less often \n• Buy fresh and local, fruits and vegetables", body: "Research: When Americans eat out, they tend to consume 200 extra calories than they would if they stayed home." , sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")


//WEEK 2
// SUN
let sundayNow17to20Tip4 = Tip(header: "Daily Habit", title: "Pick up a book every day. Even for just a few pages. And yes, you do have time!", body: "Meals, before bed, on the train, in the waiting room, even on your phone or desktop. \n\nRead a few pages, read a whole book, but make a commitment to reading. \n\nThere are so many books that you can benefit from: Biographies. Philosophy. The classics. Self-improvement. Books about war. Fiction. Even marketing and business books. \n\nAll of these will widen your perspective, help you with problems, give you inspiration and let you benefit from the accumulated wisdom and knowledge of the centuries." , sourceName: "Ryan Holiday", sourceURL: "https://ryanholiday.net/13-life-changing-habits-to-try-and-do-every-single-day/", sponsorLogo: "", sponsorURL: "")
let sundayNow17to20Tip5 = Tip(header: "Increase Happiness", title: "Join a club, sports team, or service organization that lines up with your interests and passions", body: "Give priority to organizations whose members are like you in age, values, and interests and you'll create new friendships." , sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")
let sundayNow17to20Tip6 = Tip(header: "Increase Happiness", title: "Give others your time and money. Survey data from 136 countries found that using financial resources to help others increased one's happiness", body: "Another study found that Americans who describe themselves as “very happy” volunteer an average of 5.8 hours per month while Americans who describe themselves as “unhappy” volunteer an average of 0.6 hours per month. \n\nGiving money, volunteering, and even being emotionally available to friends have all been found to increase happiness.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2016/06/why-rich-people-arent-as-happy-as-they-could-be", sponsorLogo: "", sponsorURL: "")
let sundayNow17to20Tip7 = Tip(header: "Reduce The Sunday Scaries", title: "Survey: the Sunday scaries’ average time of arrival is 3:58 p.m.", body: "Clinical psychologist explains: Many working Americans worry about the upcoming workweek on Sundays. This feeling, whether we call it anxiety, worry, stress, fear, whatever, it's all really the same thing. \n\nPsychologically, it's a response to the perception of some sort of threat. For most people, the stress of Sunday is uncomfortable but ultimately manageable. \n\nExercising, taking a walk, or doing some activity that you really enjoy on Sunday can take your mind off the scaries temporarily." , sourceName: "The Atlantic", sourceURL: "https://www.theatlantic.com/family/archive/2020/02/sunday-scaries-anxiety-workweek/606289/", sponsorLogo: "", sponsorURL: "")

//SAT
let saturdayNow17to20Tip4 = Tip(header: "Avoid Social Media", title: "Loneliness increases when you choose social media interactions over face-to-face interactions. Spend tonight with family or friends", body: "Research: Lonely people spend more time on Facebook than non-lonely people. \n\nUsing social media to organize future face-to-face meetings is healthy. \n\nBut, spending time alone, scrolling through social media is unhealthy." , sourceName: "The Atlantic", sourceURL: "https://www.theatlantic.com/magazine/archive/2012/05/is-facebook-making-us-lonely/308930/", sponsorLogo: "", sponsorURL: "")
let saturdayNow17to20Tip5 = Tip(header: "Prevent Illness", title: "Reduce the spread of respiratory diseases:", body: "• Avoid touching your eyes, nose, and mouth. \n\n• Cover your cough or sneeze with a tissue, then throw the tissue in the trash. \n\n• Clean and disinfect frequently touched objects and surfaces using a regular household cleaning spray or wipe. \n\n• Wash your hands often with soap and water for at least 20 seconds, especially after going to the bathroom; before eating; and after blowing your nose, coughing, or sneezing. \n\n• If soap and water are not readily available, use an alcohol-based hand sanitizer with at least 60% alcohol. \n\n• Avoid close contact with people who are sick." , sourceName: "CDC: Centers for Disease Control and Prevention", sourceURL: "https://www.cdc.gov/coronavirus/2019-ncov/about/prevention-treatment.html", sponsorLogo: "", sponsorURL: "")
let saturdayNow17to20Tip6 = Tip(header: "Live Longer", title: "Study: Exercising 30 minutes per day increases life expectancy", body: "Compared to no exercise: \n\n• 75 minutes of exercise per week was associated with an increase of 1.8 years in life expectancy. \n\n• 150+ minutes of exercise per week was associated with an increase of up to 4.5 years in life expectancy. \n\nInactive and obese people had a life expectancy that was 5-7 years SHORTER than people who were normal weight and moderately active." , sourceName: "PLOS Medicine", sourceURL: "https://journals.plos.org/plosmedicine/article?id=10.1371/journal.pmed.1001335", sponsorLogo: "", sponsorURL: "")
let saturdayNow17to20Tip7 = Tip(header: "🤕", title: "Working out in the late afternoon and early evening helps to prevent injuries", body: "Our body temperature is low when we first wake up, rises steadily throughout the day, and peaks in the late afternoon. \n\nThat means that in later-in-the-day workouts our muscles are warmer and injuries are less common.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/", sponsorLogo: "", sponsorURL: "")


//WEEK 3

//WEEK 4


//WEEK 1
// SUN
let sundayNow17to18TipArray1 = [sundayNow17to20Tip0, sundayNow17to20Tip1, sundayNow17to20Tip2, sundayNow17to20Tip3]
let sundayNow17to18Topic1 = Topic(title: weekendNow17to18Title, icon: weekendNow17to18Icon, tip: sundayNow17to18TipArray1)

// SAT
let saturdayNow17to18TipArray1 = [saturdayNow17to20Tip0, saturdayNow17to20Tip1, saturdayNow17to20Tip2, saturdayNow17to20Tip3]
let saturdayNow17to18Topic1 = Topic(title: weekendNow17to18Title, icon: weekendNow17to18Icon, tip: saturdayNow17to18TipArray1)

//WEEK 2
// SUN
let sundayNow17to18TipArray2 = [sundayNow17to20Tip4, sundayNow17to20Tip5, sundayNow17to20Tip6, sundayNow17to20Tip7]
let sundayNow17to18Topic2 = Topic(title: weekendNow17to18Title, icon: weekendNow17to18Icon, tip: sundayNow17to18TipArray2)

// SAT
let saturdayNow17to18TipArray2 = [saturdayNow17to20Tip4, saturdayNow17to20Tip5, saturdayNow17to20Tip6, saturdayNow17to20Tip7]
let saturdayNow17to18Topic2 = Topic(title: weekendNow17to18Title, icon: weekendNow17to18Icon, tip: saturdayNow17to18TipArray2)


//RANDOM
let sundayNow17to18TipArrays = [sundayNow17to18TipArray1, sundayNow17to18TipArray2,]
let sundayNow17to18Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: sundayNow17to18TipArrays.random())
//RANDOM
let saturdayNow17to18TipArrays = [saturdayNow17to18TipArray1, saturdayNow17to18TipArray2,]
let saturdayNow17to18Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: saturdayNow17to18TipArrays.random())







// MARK: - Now, Weekend, 19to20

let weekendNow19to20Title = nowTipTitle
let weekendNow19to20Icon = "Now"

//WEEK 1
//SUN
let weekendNow17to20Tip0 = Tip(header: "Live Better", title: "Reducing your time on social media helps to lower your risk of developing narcissistic traits", body: "Study: Facebook users have higher levels of total narcissism than people who don't use Facebook. \n\nNarcissism manifests in patterns of: \n• Fantastic grandiosity \n• Craving for attention \n• Lack of empathy" , sourceName: "The Atlantic", sourceURL: "https://www.theatlantic.com/magazine/archive/2012/05/is-facebook-making-us-lonely/308930/", sponsorLogo: "", sponsorURL: "")
let weekendNow17to20Tip1 = Tip(header: "Prevent Weight Gain", title: "Restrict eating to a 12-hour cycle", body: "Our bodies were designed for a 12-hour eating cycle. Disrupting this natural order by, say, snacking at night, leads to poor sleep and weight gain.", sourceName: "SUCCESS Magazine", sourceURL: "https://www.success.com/the-new-secrets-of-perfect-sleep/", sponsorLogo: "", sponsorURL: "")
let weekendNow17to20Tip2 = Tip(header: "Lose Weight", title: "Drink 8 glasses of water per day - drink more if you’re overweight or your working out a lot.", body: "Study: 43% of adults drink less than 4 cups of water a day. \n\nReplacing soda, fruit juice, and sweetened iced teas with water can also help boost weight loss." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/drink-water-lose-weight/", sponsorLogo: "", sponsorURL: "")
let weekendNow17to20Tip3 = Tip(header: "Sleep Better Tonight", title: "Do some light exercise before bedtime", body: "When we sleep, our breathing is relatively infrequent and shallow, so oxygen levels are lower overnight. \n\nTaking a 15-20 minute walk before bed (and breathing deeply throughout) helps your cells stock up on the oxygen they need to accomplish all of their restorative handiwork while you sleep." , sourceName: "Health", sourceURL: "https://www.health.com/sleep/night-health-habits-before-bed", sponsorLogo: "", sponsorURL: "")


//SAT (WIP - 1)
let weekendNow17to20Tip4 = Tip(header: "Live Healthy", title: "Spend tonight with family or friends because being lonely is bad for your health", body: "Lonely people are more likely to: \n\n• Not exercise \n\n• Be obese \n\n• Be depressed \n\n• Sleep badly \n\n• Suffer cognitive decline \n\n• Develop dementia \n\n• Be put in a geriatric home at an earlier age than a similar person who isn’t lonely" , sourceName: "The Atlantic", sourceURL: "https://www.theatlantic.com/magazine/archive/2012/05/is-facebook-making-us-lonely/308930/", sponsorLogo: "", sponsorURL: "")
let weekendNow17to20Tip5 = Tip(header: "Lose Weight", title: "Drinking 8 glasses of water per day can aid in weight loss for the average person", body: "Study: 43% of adults drink less than 4 cups of water a day. \n\nReplacing soda, fruit juice, and sweetened iced teas with water can also help boost weight loss. \n\nDrink more if you’re overweight or your working out a lot." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/drink-water-lose-weight/", sponsorLogo: "", sponsorURL: "")
let weekendNow17to20Tip6 = Tip(header: "Prevent Weight Gain", title: "Avoid drinking alcohol tonight", body: "Study: Drinking alcohol causes people to eat an extra 384 calories daily. \n\nAlcohol makes us: \n• More sensitive to food aromas \n• Less likely to resist unhealthy foods" , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/things-making-you-fatter/", sponsorLogo: "", sponsorURL: "")

//WEEK 3

//WEEK 4

//WEEK 1
//SUN (WIP - 1)
let sundayNow19to20TipArray0 = [weekendNow17to20Tip0, weekendNow17to20Tip1, weekendNow17to20Tip2, weekendNow17to20Tip3]
let sundayNow19to20Topic1 = Topic(title: weekendNow19to20Title, icon: weekendNow19to20Icon, tip: sundayNow19to20TipArray0)
//SAT (WIP - 1)
let saturdayNow19to20TipArray1 = [weekendNow17to20Tip4, weekendNow17to20Tip5, weekendNow17to20Tip6, saturdayNow17to20Tip3]
let saturdayNow19to20Topic1 = Topic(title: weekendNow19to20Title, icon: weekendNow19to20Icon, tip: saturdayNow19to20TipArray1)

//RANDOM
let sundayNow19to20TipArrays = [sundayNow19to20TipArray0]
let sundayNow19to20Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: sundayNow19to20TipArrays.random())
//RANDOM
let saturdayNow19to20TipArrays = [saturdayNow19to20TipArray1]
let saturdayNow19to20Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: saturdayNow19to20TipArrays.random())




//WEEK 2
//SUN (WIP - 4)
let sundayNow19to20TipArray2 = [weekendNow17to20Tip2, weekendNow17to20Tip1, weekendNow17to20Tip0, weekendNow17to20Tip3]
let sundayNow19to20Topic2 = Topic(title: weekendNow19to20Title, icon: weekendNow19to20Icon, tip: sundayNow19to20TipArray2)
//SAT (WIP - 4)
let saturdayNow19to20TipArray3 = [weekendNow17to20Tip6, weekendNow17to20Tip5, weekendNow17to20Tip4, saturdayNow17to20Tip3]
let saturdayNow19to20Topic2 = Topic(title: weekendNow19to20Title, icon: weekendNow19to20Icon, tip: saturdayNow19to20TipArray3)

//WEEK 3
//SUN (WIP - 4)
let sundayNow19to20TipArray4 = [weekendNow17to20Tip0, weekendNow17to20Tip1, weekendNow17to20Tip2, weekendNow17to20Tip3]
let sundayNow19to20Topic3 = Topic(title: weekendNow19to20Title, icon: weekendNow19to20Icon, tip: sundayNow19to20TipArray4)
//SAT (WIP - 4)
let saturdayNow19to20TipArray5 = [weekendNow17to20Tip4, weekendNow17to20Tip5, weekendNow17to20Tip6, saturdayNow17to20Tip3]
let saturdayNow19to20Topic3 = Topic(title: weekendNow19to20Title, icon: weekendNow19to20Icon, tip: saturdayNow19to20TipArray5)

//WEEK 4
//SUN (WIP - 4)
let sundayNow19to20TipArray6 = [weekendNow17to20Tip2, weekendNow17to20Tip1, weekendNow17to20Tip0, weekendNow17to20Tip3]
let sundayNow19to20Topic4 = Topic(title: weekendNow19to20Title, icon: weekendNow19to20Icon, tip: sundayNow19to20TipArray6)
//SAT (WIP - 4)
let saturdayNow19to20TipArray7 = [weekendNow17to20Tip6, weekendNow17to20Tip5, weekendNow17to20Tip4, saturdayNow17to20Tip3]
let saturdayNow19to20Topic4 = Topic(title: weekendNow19to20Title, icon: weekendNow19to20Icon, tip: saturdayNow19to20TipArray7)

//WEEK 5
//SUN (WIP - 4)
let sundayNow19to20TipArray8 = [weekendNow17to20Tip2, weekendNow17to20Tip3, weekendNow17to20Tip1, weekendNow17to20Tip0]
let sundayNow19to20Topic5 = Topic(title: weekendNow19to20Title, icon: weekendNow19to20Icon, tip: sundayNow19to20TipArray8)
//SAT (WIP - 4)
let saturdayNow19to20TipArray9 = [saturdayNow17to20Tip3, weekendNow17to20Tip5, weekendNow17to20Tip4, weekendNow17to20Tip6]
let saturdayNow19to20Topic5 = Topic(title: weekendNow19to20Title, icon: weekendNow19to20Icon, tip: saturdayNow19to20TipArray9)


// MARK: - Now, Weekend, 21to24

let weekendNow21to24Title = nowTipTitle
let weekendNow21to24Icon = "Now"

// WEEK 1
// Sunday Night
let sunday21to24Tip1 = Tip(header: "Millionaire Habit 📖", title: "Bill Gates reads for an hour every night", body: "Bill Gates, Oprah Winfrey, Elon Musk, and Mark Zuckerberg all read a lot. \n\nSuccessful people tend to choose educational books and publications over novels, tabloids, and magazines. \n\nAnd they obsess over biographies and autobiographies of other successful people for guidance and inspiration." , sourceName: "Inc.", sourceURL: "https://www.inc.com/justin-bariso/bill-gates-follows-4-rules-to-get-most-from-reading-books.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let sunday21to24Tip2 = Tip(header: "Millionaire Habit", title: "Oprah Winfrey is usually in bed by 10 PM and her night-time routine includes self-reflection", body: "\"I usually get into bed and I have volumes of gratitude journals by the side of my bed. The last thing I do before I go to sleep is write 5 things that gave me great pleasure or that I was grateful for.\"" , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2018/06/22/what-time-successful-people-to-go-bed.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let sunday21to24Tip3 = Tip(header: "Reduce Your Risk", title: "Build the habit of going to bed earlier. Night owls have a 10% higher risk of death than morning people", body: "Along with the 10% increased risk of death compared to morning people, night owls had almost double the risk of suffering from psychological disorders, about a 30% increased risk for diabetes, a 25% increased risk for neurological conditions, 23% increased risk for gastrointestinal disorders, and a 22% increased risk for respiratory disorders." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/night-owl-risk-for-death-vs-morning-people-2018-4?r=UK&IR=T", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let sunday21to24Tip4 = Tip(header: "Increase Success", title: "Make it a priority to get enough sleep", body: "Go to bed at the same time each night. And consider setting a \"bedtime alarm\" to remind yourself to get ready for bed." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/what-successful-people-do-before-bed-2016-6#11-they-plan-out-sleep-11", sponsorLogo: "TBD", sponsorURL: "www.test.com")

// Saturday Night
let saturday21to24Tip1 = Tip(header: "Reduce Your Risk", title: "Sleeping in on the weekends leaves you more tired, and in a worse mood, than if you maintained a consistent sleep schedule all 7 days", body: "Every one hour that sleep is shifted, you increase your risk of heart disease by 11%. \n\nEach 1-hour shift was also linked with a 28% higher likelihood of reporting your health as poor or fair compared to excellent." , sourceName: "CBS News", sourceURL: "https://www.cbsnews.com/news/staying-up-late-and-sleeping-in-on-weekends-may-harm-heart/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let saturday21to24Tip2 = Tip(header: "Prevent Weight Gain", title: "Get more sleep on a weekend night", body: "Sleep deprivation often makes you eat more - about 500 extra calories a day - studies have found. Cap off your weekend weight-loss efforts with a relaxing activity and then head to bed early to squeeze in some extra sleep." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/2012/08/11/healthy-weekend_n_1760981.html?slideshow=true#gallery/243861/8", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let saturday21to24Tip3 = Tip(header: "Sleep Better", title: "Avoid alcohol right before bedtime", body: "While alcohol can help you fall asleep, research finds it robs you of quality sleep. \n\nAlcohol keeps people in the lighter stages of sleep from which they can be awakened easily and prevents them from falling into deeper, more restorative stages of sleep." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/what-successful-people-do-before-bed-2016-6#13-they-skip-the-wine-13", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let saturday21to24Tip4 = Tip(header: "Sleep Better", title: "Sleeping in on Sunday morning makes it harder to fall asleep on Sunday night", body: "Though you’ll feel more rested after waking up late on Sunday morning, it disrupts your circadian rhythm, making it harder to fall asleep at night." , sourceName: "National Sleep Foundation", sourceURL: "https://www.sleep.org/articles/catching-up-on-sleep/", sponsorLogo: "", sponsorURL: "")



//WEEK 2
//SUN
let sunday21to24Tip5 = Tip(header: "Prevent Weight Gain", title: "Don't stay up late. People who go to bed late gain more weight", body: "In one study, compared to early sleepers, late sleepers: \n• consumed 248 more calories a day; \n• ate twice as much fast food; \n• ate half as many fruits and vegetables; and \n• drank more full-calorie sodas. \n\nThe extra daily calories can result in gaining 2 pounds per month if they are not balanced by more physical activity." , sourceName: "Northwestern University", sourceURL: "https://www.northwestern.edu/newscenter/stories/2011/05/night-owls-weight-gain.html", sponsorLogo: "", sponsorURL: "")
let sunday21to24Tip6 = Tip(header: "Reduce Your Risk", title: "Get 7+ hours of sleep. Not getting enough sleep increase your risk of Alzheimer's and all other diseases associated with dementia", body: "While the brain sleeps, it clears out harmful toxins, a process that may reduce the risk of Alzheimer's, researchers say. \n\nThis could explain why we don't think clearly after a sleepless night and why a prolonged lack of sleep can actually kill a person." , sourceName: "NPR", sourceURL: "https://www.npr.org/sections/health-shots/2013/10/18/236211811/brains-sweep-themselves-clean-of-toxins-during-sleep", sponsorLogo: "", sponsorURL: "")
let sunday21to24Tip7 = Tip(header: "Prevent Weight Gain", title: "Go to bed earlier and wake up earlier", body: "Research: People who tend to sleep and wake later in the day eat the bulk of their calories after 8 pm, more calories overall, and fewer servings of fruits and vegetables. \n\nConsuming calories in the evening was associated with a higher body mass index." , sourceName: "Vox", sourceURL: "https://www.vox.com/2016/2/17/11034546/eating-late-night-bad-diet", sponsorLogo: "", sponsorURL: "")
let sunday21to24Tip8 = Tip(header: "Sleep Better", title: "Your body needs time to shift into sleep mode, so spend the last hour before bed doing a calming activity such as reading", body: "Electronic devices can make it hard to fall asleep because the light from the screens activates your brain. \n\nAvoid electronics before bed or in the middle of the night." , sourceName: "National Sleep Foundation", sourceURL: "https://www.sleepfoundation.org/articles/healthy-sleep-tips", sponsorLogo: "", sponsorURL: "")

// SAT
let saturday21to24Tip5 = Tip(header: "Sleep Better", title: "Avoid alcohol, heavy meals, and electronic screens before bed", body: "A lack of sleep leads to: \n• Weight gain \n• Unhealthy food cravings at night \n\nAdults should get 7+ hours of sleep per night to avoid several health risks." , sourceName: "Vox", sourceURL: "https://www.vox.com/science-and-health/2019/3/26/18280663/night-eating-sleep-loss-weight-gain", sponsorLogo: "", sponsorURL: "")
let saturday21to24Tip6 = Tip(header: "Sleep Better", title: "Stick to a sleep schedule of the same bedtime and wake up time, even on the weekends", body: "This helps to regulate your body's clock and could help you fall asleep and stay asleep for the night." , sourceName: "National Sleep Foundation", sourceURL: "https://www.sleepfoundation.org/articles/healthy-sleep-tips", sponsorLogo: "", sponsorURL: "")
let saturday21to24Tip7 = Tip(header: "Reduce Your Risk 🔥", title: "Eating less than 3-4 hours before bed increases the risk of nighttime heartburn", body: "Research: It takes 3-4 hours for food to clear the stomach. \n\nIn chronic heartburn, stomach acid slips into the esophagus, and that’s more likely when lying in bed shortly after a meal, when gravity is not helping to keep digestive juices in the stomach." , sourceName: "The New York Times", sourceURL: "https://well.blogs.nytimes.com/2011/09/05/really-the-claim-to-reduce-heartburn-dont-eat-four-hours-before-bed/", sponsorLogo: "", sponsorURL: "")
let saturday21to24Tip8 = Tip(header: "Sleep Better", title: "Avoid bright light in the evening", body: "Dim or turn off lights to help you fall asleep at bedtime. \n\nTomorrow, expose yourself to sunlight in the morning. These 2 steps will keep your circadian rhythms in check." , sourceName: "National Sleep Foundation", sourceURL: "https://www.sleepfoundation.org/articles/healthy-sleep-tips", sponsorLogo: "", sponsorURL: "")

//WEEK 3
//SUN
let sunday21to24Tip9 = Tip(header: "Look Younger", title: "Not getting enough sleep causes premature aging and wrinkles", body: "Your body's cortisol levels naturally decrease while we sleep. Miss out on sleep, though, and that cycle is disrupted. \n\nPersistently high cortisol levels can contribute to the breakdown of collagen (a protein that's key in helping your skin look young and fresh) and elastic tissue.", sourceName: "Allure", sourceURL: "https://www.allure.com/story/sleep-and-skin-what-happens", sponsorLogo: "", sponsorURL: "")
let sunday21to24Tip10 = Tip(header: "Live Better", title: "Whatever it is that you consume the 2 hours before you go to bed, do it consciously. Don’t do anything that prevents you from calming down and becoming sleepy", body: "If you do, see, smell, touch, eat, drink, hear or spend time around something that stresses you, your body will rise the cortisol levels in your body, which is the exact opposite to what you need in order to relax and have a good, deep, relaxing sleep.", sourceName: "Thrive Global", sourceURL: "https://thriveglobal.com/stories/the-real-power-of-morning-and-evening-rituals/", sponsorLogo: "", sponsorURL: "")
let sunday21to24Tip11 = Tip(header: "Billionaire Habit", title: "21 self-made billionaires said waking up early is a big part of their success. Most wake-up around 5:30 a.m.", body: "Early hours, when the sun is just starting to rise, exude a special kind of primal energy. There’s also something wonderful about knowing you’re getting a head start while others are still asleep. \n\nGot to bed at 9:30 p.m. (8 hours before 5:30 a.m.)", sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2019/06/21/self-made-billionaires-the-6-habits-of-massive-wealth-and-success.html", sponsorLogo: "", sponsorURL: "")
let sunday21to24Tip12 = Tip(header: "Billionaire Habit", title: "Go to bed. Self-made billionaire Mike Bloomberg was always the first person in the office in the morning", body: "\"If there's only one key to success, it's hard work.\" \n\n\"When I worked at Salomon Brothers, I was always the first person in the office in the morning. The second was Barney Salomon, the managing partner. All it was, was coming in early.\"", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/mike-bloombergs-advice-to-small-businesses-and-keys-to-success-2015-11", sponsorLogo: "", sponsorURL: "")


//SAT
let saturday21to24Tip9 = Tip(header: "Look Younger", title: "Not getting enough sleep causes premature aging and wrinkles", body: "If you don't sleep, your body doesn't make as much human growth hormone (which stimulates cell production), so your skin won't be as thick. \n\nWithout time to produce new, fresh cells and fix yesterday's damage, you're practically welcoming accelerated aging—plus, collagen may prematurely stiffen (hello, fine lines and wrinkles!)", sourceName: "Allure", sourceURL: "https://www.allure.com/story/sleep-and-skin-what-happens", sponsorLogo: "", sponsorURL: "")
let saturday21to24Tip10 = Tip(header: "Prevent Tomorrow's Sunday Scaries", title: "Survey: 88% of people have a feeling of anxiety on Sunday when thinking about Monday morning", body: "Top ways to reduce the Sunday Scaries: \n\n• 44% said to take time for yourself this weekend \n\n• 42% said make sure to get a full night’s rest on Saturday \n\n• 21% take a “digital detox” for part of the weekend" , sourceName: "Medium", sourceURL: "https://medium.com/@pitch_20575/study-majority-of-americans-come-down-with-a-case-of-the-sunday-scaries-every-week-2ce405acb626", sponsorLogo: "", sponsorURL: "")

let saturday21to24Tip11 = Tip(header: "Increase Testosterone", title: "Get enough sleep", body: "Research: Every additional hour of sleep you get bumps up testosterone levels by 15%+, while people who don't get good sleep tend to have reduced testosterone production. \n\nThe restorative sleep cycles are when the body can prioritize things like necessary hormone production.", sourceName: "Own The Day, Own Your Life", sourceURL: "https://www.amazon.com/dp/B072HLS5QJ/", sponsorLogo: "", sponsorURL: "")




//WEEK 4
//SUN
let sunday21to24Tip13 = Tip(header: "Millionaire Habit", title: "Study: Almost 50% of them woke up at least 3 hours before their workday began", body: "Set your alarm a little earlier tomorrow and see what you can accomplish. \n\n• Oprah Winfrey sets aside one hour every morning to exercise. \n\n• Arianna Huffington begins her day with meditation and yoga.", sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2019/03/04/self-made-millionaires-swear-by-these-5-morning-routinesand-they-all-take-less-than-10-minutes.html", sponsorLogo: "", sponsorURL: "")
let sunday21to24Tip14 = Tip(header: "Weight Loss", title: "Survey: Getting 7.5+ hours of sleep helps you lose weight more easily", body: "72% of people who slept 7.5+ hours a night found that they could stick to a diet plan, compared to just 42% of people who slept for less than 7 hours a night, proving that sleep has a huge effect on our ability to curb cravings and stick to a diet regimen. \n\nIf you are sleeping erratically and getting up in the night, chances [are you're] visiting the fridge while successful dieters are busy sleeping." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/how-your-sleeping-pattern-affects-your-ability-to-stick-to-a-diet-2017-12?amp", sponsorLogo: "", sponsorURL: "")

//SAT


//WEEK 1
// SUN
let sunday21to24TipArray0 = [sunday21to24Tip1, sunday21to24Tip2, sunday21to24Tip3, sunday21to24Tip4]
let sunday21to24Topic1 = Topic(title: weekendNow21to24Title, icon: weekendNow21to24Icon, tip: sunday21to24TipArray0)

// SAT
let saturday21to24TipArray1 = [saturday21to24Tip1, saturday21to24Tip2, saturday21to24Tip3, saturday21to24Tip4]
let saturday21to24Topic1 = Topic(title: weekendNow21to24Title, icon: weekendNow21to24Icon, tip: saturday21to24TipArray1)

//WEEK 2
// SUN
let sunday21to24TipArray2 = [sunday21to24Tip5, sunday21to24Tip6, sunday21to24Tip7, sunday21to24Tip8]
let sunday21to24Topic2 = Topic(title: weekendNow21to24Title, icon: weekendNow21to24Icon, tip: sunday21to24TipArray2)

// SAT
let saturday21to24TipArray3 = [saturday21to24Tip5, saturday21to24Tip6, saturday21to24Tip7, saturday21to24Tip8]
let saturday21to24Topic2 = Topic(title: weekendNow21to24Title, icon: weekendNow21to24Icon, tip: saturday21to24TipArray3)

//WEEK 3
// SUN
let sunday21to24TipArray4 = [sunday21to24Tip9, sunday21to24Tip10, sunday21to24Tip11, sunday21to24Tip12]
let sunday21to24Topic3 = Topic(title: weekendNow21to24Title, icon: weekendNow21to24Icon, tip: sunday21to24TipArray4)

// SAT (WIP - 1)
let saturday21to24TipArray5 = [saturday21to24Tip9, saturday21to24Tip10, saturday21to24Tip11, saturday21to24Tip4]
let saturday21to24Topic3 = Topic(title: weekendNow21to24Title, icon: weekendNow21to24Icon, tip: saturday21to24TipArray5)

//WEEK 4
// SUN (WIP - 2)
let sunday21to24TipArray6 = [sunday21to24Tip13, sunday21to24Tip14, sunday21to24Tip6, sunday21to24Tip5]
let sunday21to24Topic4 = Topic(title: weekendNow21to24Title, icon: weekendNow21to24Icon, tip: sunday21to24TipArray6)

// SAT (WIP - 4)
let saturday21to24TipArray7 = [saturday21to24Tip8, saturday21to24Tip7, saturday21to24Tip6, saturday21to24Tip5]
let saturday21to24Topic4 = Topic(title: weekendNow21to24Title, icon: weekendNow21to24Icon, tip: saturday21to24TipArray7)

//RANDOM
let sunday21to24TipArrays = [sunday21to24TipArray0, sunday21to24TipArray2, sunday21to24TipArray4, sunday21to24TipArray6,]
let sunday21to24Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: sunday21to24TipArrays.random())
//RANDOM
let saturday21to24TipArrays = [saturday21to24TipArray1, saturday21to24TipArray3, saturday21to24TipArray5, saturday21to24TipArray7,]
let saturday21to24Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: saturday21to24TipArrays.random())










//WEEK 5
// SUN (WIP - 4)
let sunday21to24TipArray8 = [sunday21to24Tip5, sunday21to24Tip8, sunday21to24Tip7, sunday21to24Tip6]
let sunday21to24Topic5 = Topic(title: weekendNow21to24Title, icon: weekendNow21to24Icon, tip: sunday21to24TipArray8)

// SAT (WIP - 4)
let saturday21to24TipArray9 = [saturday21to24Tip5, saturday21to24Tip8, saturday21to24Tip7, saturday21to24Tip6]
let saturday21to24Topic5 = Topic(title: weekendNow21to24Title, icon: weekendNow21to24Icon, tip: saturday21to24TipArray9)






// MARK: - WEEKDAY

// MARK: - Now, Weekday, 0to4

let weekdayNow0to4Title = nowTipTitle
let weekdayNow0to4Icon = "Now"

//// MON
let weekdayNow0to4Tip0 = Tip(header: "Perform Better Tomorrow", title: "Prioritize sleep to make smarter decisions tomorrow", body: "A study of high-earning professionals found the vast majority got within the recommended 7 to 9 hours of sleep over the course of a week. \n\nSuccessful people know they think better and make smarter decisions after getting enough sleep.", sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/home/cleaning-organizing/successful-people-work/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow0to4Tip1 = Tip(header: "Perform Better Tomorrow", title: "Have a set bedtime", body: "Having a bedtime means you don't need to debate with yourself every night about when you intend to go to bed. \n\nMaking the conscious choice to go to sleep at a certain time frees you from wrestling with the consequences of going to bed too late, which can include decreased productivity the next day." , sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/health/wellness/successful-people-habits-before-bed/1/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow0to4Tip2 = Tip(header: "Fall Asleep Faster 🧦", title: "Wear socks to bed", body: "Heating cold feet causes vasodilation—dilation of the blood vessels—which triggers your brain that its time for bed. If you aren't a sock sleeper, layer extra blankets on top of your comforter." , sourceName: "National Sleep Foundation", sourceURL: "https://sleep.org/articles/wearing-socks-to-bed/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow0to4Tip3 = Tip(header: "Fall Asleep Faster", title: "Think about staying awake", body: "It sounds counter-intuitive, but instead of worrying about falling asleep, think about staying awake instead. This often lessens anxiety and gives your mind a chance to relax enough to fall asleep. \n\nIt's a technique known as paradoxical intent, a cognitive behavioral therapy technique used to lessen the anxiety around falling asleep." , sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/health/wellness/improve-sleep-habits-one-day/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//// TUE
let weekdayNow0to4Tip4 = Tip(header: "Fall Asleep Faster 📖", title: "Reading for 6 minutes reduces stress by 68%", body: "Psychologists believe this is because the human mind has to concentrate on reading and the distraction of being taken into a literary world eases the tension in your body. \n\nReading worked better than other methods at reducing stress levels: \n\n• Reading (68%) \n• Listening to music (61%)\n• Drinking tea (54%)", sourceName: "The Telegraph", sourceURL: "https://www.telegraph.co.uk/news/health/news/5070874/Reading-can-help-reduce-stress.html", sponsorLogo: "", sponsorURL: "")
let weekdayNow0to4Tip5 = Tip(header: "Reduce Your Risk", title: "Study: People who were more active at night were 6% to 10% more likely to be diagnosed with a mood disorder, like depression", body: "Every biological process, from eating to sleeping, is controlled by the body's circadian rhythms. \n\nIrregular circadian rhythms confuse the body, and they've been linked to mood disorders and weight gain. \n\nScientists also discovered that night owls tended to be lonelier and more unhappy.", sourceName: "Men's Health", sourceURL: "https://www.menshealth.com/health/a20716425/circadian-rhythms-depression-mood-disorders/", sponsorLogo: "", sponsorURL: "")
let weekdayNow0to4Tip6 = Tip(header: "Prevent Weight Gain", title: "Avoid eating at night and only eat during the day", body: "The circadian rhythm of our metabolism has not evolved for a world with 24-7 access to food and it still expects us to stop eating at sundown. \n\nLimiting food intake to a period of 8-12 hours during the day can help people lose weight and reduce the risk of cancer, diabetes, and heart disease.", sourceName: "The Washington Post", sourceURL: "https://www.washingtonpost.com/national/health-science/timing-your-meals-may-help-with-weight-loss-thats-what-it-seems-to-do-in-mice/2018/03/23/14672fc0-f718-11e7-a9e3-ab18ce41436a_story.html?utm_term=.b6892739a880", sponsorLogo: "", sponsorURL: "")
let weekdayNow0to4Tip7 = Tip(header: "Perform Better", title: "Getting more sleep is a great way to manage stress and emotions", body: "Researchers have linked adequate sleep to everything from better mood to longer life spans. \n\nYou’ll also have a better attention span, which in turn can improve your performance and reduce your stress during the day.", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/amymorin/2017/06/10/how-to-leave-stress-at-work-so-you-dont-take-out-your-frustration-on-your-family/#14ff2f584b48", sponsorLogo: "", sponsorURL: "")

//// WED
let weekdayNow0to4Tip8 = Tip(header: "Millionaire Habit", title: "Study: 89% of self made millionaires sleep 7+ hours each night", body: "Sleep is critical to success because it improves: \n• Memory function \n• Creative thinking \n\nAlbert Einstein reportedly preferred to get at least 10 hours of sleep a night." , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2016/11/29/7-habits-of-highly-successful-people-from-a-man-who-spent-5-years-studying-them.html", sponsorLogo: "", sponsorURL: "")
let weekdayNow0to4Tip9 = Tip(header: "Prevent Weight Gain", title: "People who don't get enough sleep during the work week and sleep in on the weekends are more likely to be overweight or obese", body: "\"Social jet lag\" is when you have different sleep patterns during the workweek compared to the weekend. \n\nFor every hour of social jet lag, the risk of being overweight or obese rises about 33%. \n\nAnd the more social jetlag you have, the higher probability it is that you: \n• Drink unhealthy amounts of alcohol \n• Suffer from depression \n• Smoke", sourceName: "WebMD", sourceURL: "https://www.webmd.com/sleep-disorders/news/20120510/do-you-have-social-jet-lag#1", sponsorLogo: "", sponsorURL: "")
let weekdayNow0to4Tip10 = Tip(header: "Increase Happiness", title: "Become a morning person", body: "Study: Morning people are actually happier and more satisfied with life overall than night owls. \n\nMorning people also tended to say they felt healthier than did night owls. \n\nTo become a morning person: \n• Increase your natural light exposure early in the morning \n• Go to bed earlier and wake up earlier \n• Wake up at the same time every day" , sourceName: "Live Science", sourceURL: "https://www.livescience.com/20880-morning-people-happier.html", sponsorLogo: "", sponsorURL: "")
let weekdayNow0to4Tip11 = Tip(header: "Live Healthier", title: "Go to sleep. A lack of sleep is linked to serious health problems", body: "Over time, a lack of sleep increases your risk of: \n• Depression \n• Heart disease \n\nIt also causes daytime sleepiness which is linked to: \n• Weakened social and occupational function \n• Memory problems \n• Risk of having a vehicle crash", sourceName: "Very Well Mind", sourceURL: "https://www.verywellmind.com/alcohol-and-sleep-66571", sponsorLogo: "", sponsorURL: "")

//THUR
let weekdayNow0to4Tip12 = Tip(header: "Prevent Weight Gain", title: "Go to sleep. Shorter amounts of sleep are associated with higher body mass index (BMI) levels and larger waistlines", body: "Research also shows that when we’re sleep-deprived, our brains respond more strongly to junk food and have less of an ability to practice portion control. \n\nAim for 7+ hours of sleep per night." , sourceName: "Eat This, Not That!", sourceURL: "", sponsorLogo: "", sponsorURL: "")
let weekdayNow0to4Tip13 = Tip(header: "Be Successful", title: "Highly successful people get enough sleep", body: "• Albert Einstein: 10 hours \n• Ellen DeGeneres: 8 hours \n• Bill Gates: 7 hours \n• Jeff Bezos: 7 hours \n• Arianna Huffington: 7 hours \n• Elon Musk: 7 hours \n• Richard Branson: 6 hours" , sourceName: "ThinkRichThinkPoor.com", sourceURL: "https://thinkrichthinkpoor.com/money-management/11-habits-self-made-millionaires/", sponsorLogo: "", sponsorURL: "")
let weekdayNow0to4Tip14 = Tip(header: "Live Smarter", title: "Getting enough sleep makes you smarter", body: "Sleep improves our ability to problem solve and recall information. By getting a good night's rest, you'll perform better the next day." , sourceName: "Inc.", sourceURL: "https://www.inc.com/kevin-daum/science-proves-why-good-sleep-is-critical-to-your-success.html", sponsorLogo: "", sponsorURL: "")
let weekdayNow0to4Tip15 = Tip(header: "Be More Likable", title: "Getting enough sleep makes you more likable", body: "Study: People who prioritized sleep were considered more engaging and likable. \n\nAnother study found that well-slept leaders are perceived as more charismatic." , sourceName: "Inc.", sourceURL: "https://www.inc.com/kevin-daum/science-proves-why-good-sleep-is-critical-to-your-success.html", sponsorLogo: "", sponsorURL: "")
//FRI
let weekdayNow0to4Tip16 = Tip(header: "Prevent Weight Gain", title: "Go to sleep. People who go to bed late and sleep late weigh more", body: "Study: Late sleepers consumed 248 more calories a day, ate twice as much fast food, ate half as many fruits and vegetables, and drank more full-calorie sodas as those with earlier sleep times. \n\nThe extra daily calories can mean a significant amount of weight gain – 2 pounds per month – if they are not balanced by more physical activity." , sourceName: "Northwestern University", sourceURL: "https://www.northwestern.edu/newscenter/stories/2011/05/night-owls-weight-gain.html", sponsorLogo: "", sponsorURL: "")
let weekdayNow0to4Tip17 = Tip(header: "Live Longer", title: "Get 7–8 hours of sleep each night", body: "Sleeping less than 5–7 hours per night is linked to a 12% greater risk of early death, while sleeping more than 8–9 hours per night could also decrease your lifespan by up to 38%. \n\nSleep is crucial for regulating cell function and helping your body heal." , sourceName: "Healthline", sourceURL: "https://www.healthline.com/nutrition/13-habits-linked-to-a-long-life", sponsorLogo: "", sponsorURL: "")
let weekdayNow0to4Tip18 = Tip(header: "Prevent Weight Gain", title: "Go to bed. Sleeping less than 7 hours a night is associated with future weight gain and higher risk of obesity", body: "16-Year Study: Women sleeping 5 hours or less gained 2.5 pounds more than did those sleeping 7 hours over 16 years, and women sleeping 6 hours gained 1.5 pounds more than did those sleeping 7 hours over 16 years. \n\nRisk of obesity was also higher for those sleeping less than 7 hours over 16 years.", sourceName: "National Center for Biotechnology Information, U.S. National Library of Medicine", sourceURL: "https://www.ncbi.nlm.nih.gov/pubmed/16914506", sponsorLogo: "", sponsorURL: "")
let weekdayNow0to4Tip19 = Tip(header: "Look Younger", title: "Not getting enough sleep reduces your skin's ability to protect itself which leads to acne breakouts", body: "Your body's cortisol levels naturally decrease while we sleep. \n\nMiss out on sleep, though, and that cycle is disrupted. \n\nPersistently high cortisol levels can interfere with how well our bodies heal and can promote acne breakouts.", sourceName: "Allure", sourceURL: "https://www.allure.com/story/sleep-and-skin-what-happens", sponsorLogo: "", sponsorURL: "")

//WEEK 2
//MON
let weekdayNow0to4Tip20 = Tip(header: "Reduce Your Risk", title: "Timing of sleep is important. That’s why we see health risks higher among individuals who work night-shift jobs.", body: "For good health, it's best to have your sleep schedule aligned with the sun. \n\nStudies find that people who work night-shift jobs often experience circadian rhythm desynchronization and lower quality sleep. \n\nThey also have a higher risk of depression and diabetes.", sourceName: "The Ladders", sourceURL: "https://www.theladders.com/career-advice/top-8-sleep-myths-that-can-harm-your-health", sponsorLogo: "", sponsorURL: "")
let weekdayNow0to4Tip21 = Tip(header: "Increase Happiness", title: "Go to sleep. Not getting enough sleep makes you more: \n• Irritable \n• Moody \n• Irrational", body: "The first segment of the brain that begins to fizzle when we don’t get enough sleep is the prefrontal cortex, the cradle of decision-making and problem-solving. \n\nThe recommended amount of sleep is 7 hours a night.", sourceName: "National Geographic", sourceURL: "https://www.nationalgeographic.com/magazine/2018/08/science-of-sleep/", sponsorLogo: "", sponsorURL: "")
//let weekdayNow0to4Tip22
//let weekdayNow0to4Tip23

//TUES
let weekdayNow0to4Tip24 = Tip(header: "Reduce Your Risk", title: "Anyone who regularly sleeps less than 6 hours a night has an elevated risk of depression, psychosis, and stroke", body: "Lack of sleep is also directly tied to obesity: Without enough sleep, the stomach and other organs overproduce ghrelin, the hunger hormone, causing us to eat more than we need. \n\nThe recommended amount of sleep is 7 hours a night.", sourceName: "National Geographic", sourceURL: "https://www.nationalgeographic.com/magazine/2018/08/science-of-sleep/", sponsorLogo: "", sponsorURL: "")

//WED

//THURS

//FRI
let friday0to4Tip1 = Tip(header: "Sleep Better", title: "Avoid alcohol as a way to fall asleep", body: "Sometimes people use alcohol as a sedative, but it's not good for your sleep. \n\nAs alcohol metabolizes, it actually has a rebound effect and wakes you up.", sourceName: "U.S. News", sourceURL: "https://health.usnews.com/health-news/health-wellness/articles/2014/02/11/healthy-tips-for-night-shift-workers", sponsorLogo: "", sponsorURL: "")




//WEEK 1
//MON
let weekdayNow0to4TipArray0 = [weekdayNow0to4Tip0, weekdayNow0to4Tip1, weekdayNow0to4Tip2, weekdayNow0to4Tip3]
let mondayNow0to4Topic1 = Topic(title: weekdayNow0to4Title, icon: weekdayNow0to4Icon, tip: weekdayNow0to4TipArray0)

//TUE
let weekdayNow0to4TipArray1 = [weekdayNow0to4Tip4, weekdayNow0to4Tip5, weekdayNow0to4Tip6, weekdayNow0to4Tip7]
let tuesdayNow0to4Topic1 = Topic(title: weekdayNow0to4Title, icon: weekdayNow0to4Icon, tip: weekdayNow0to4TipArray1)

//WED
let weekdayNow0to4TipArray2 = [weekdayNow0to4Tip8, weekdayNow0to4Tip9, weekdayNow0to4Tip10, weekdayNow0to4Tip11]
let wednesdayNow0to4Topic1 = Topic(title: weekdayNow0to4Title, icon: weekdayNow0to4Icon, tip: weekdayNow0to4TipArray2)

//THUR
let weekdayNow0to4TipArray3 = [weekdayNow0to4Tip12, weekdayNow0to4Tip13, weekdayNow0to4Tip14, weekdayNow0to4Tip15]
let thursdayNow0to4Topic1 = Topic(title: weekdayNow0to4Title, icon: weekdayNow0to4Icon, tip: weekdayNow0to4TipArray3)
//FRI
let weekdayNow0to4TipArray4 = [weekdayNow0to4Tip16, weekdayNow0to4Tip17, weekdayNow0to4Tip18, weekdayNow0to4Tip19]
let fridayNow0to4Topic1 = Topic(title: weekdayNow0to4Title, icon: weekdayNow0to4Icon, tip: weekdayNow0to4TipArray4)

//WEEK 2
//MON (WIP - 2)
let weekdayNow0to4TipArray5 = [weekdayNow0to4Tip20, weekdayNow0to4Tip21, weekdayNow0to4Tip2, weekdayNow0to4Tip3]
let mondayNow0to4Topic2 = Topic(title: weekdayNow0to4Title, icon: weekdayNow0to4Icon, tip: weekdayNow0to4TipArray5)

//TUE (WIP - 3)
let weekdayNow0to4TipArray6 = [weekdayNow0to4Tip24, weekdayNow0to4Tip5, weekdayNow0to4Tip6, weekdayNow0to4Tip7]
let tuesdayNow0to4Topic2 = Topic(title: weekdayNow0to4Title, icon: weekdayNow0to4Icon, tip: weekdayNow0to4TipArray6)

//WED (WIP - 4)
let weekdayNow0to4TipArray7 = [weekdayNow0to4Tip8, weekdayNow0to4Tip9, weekdayNow0to4Tip10, weekdayNow0to4Tip11]
let wednesdayNow0to4Topic2 = Topic(title: weekdayNow0to4Title, icon: weekdayNow0to4Icon, tip: weekdayNow0to4TipArray7)

//THUR (WIP - 4)
let weekdayNow0to4TipArray8 = [weekdayNow0to4Tip12, weekdayNow0to4Tip13, weekdayNow0to4Tip14, weekdayNow0to4Tip15]
let thursdayNow0to4Topic2 = Topic(title: weekdayNow0to4Title, icon: weekdayNow0to4Icon, tip: weekdayNow0to4TipArray8)
//FRI (WIP - 3)
let weekdayNow0to4TipArray9 = [friday0to4Tip1, weekdayNow0to4Tip17, weekdayNow0to4Tip18, weekdayNow0to4Tip19]
let fridayNow0to4Topic2 = Topic(title: weekdayNow0to4Title, icon: weekdayNow0to4Icon, tip: weekdayNow0to4TipArray9)

/////////////////
//RANDOM - MON
let mondayNow0to4TipArrays = [weekdayNow0to4TipArray0, weekdayNow0to4TipArray5,]
let mondayNow0to4Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: mondayNow0to4TipArrays.random())

//RANDOM - TUE
let tuesdayNow0to4TipArrays = [weekdayNow0to4TipArray1, weekdayNow0to4TipArray6,]
let tuesdayNow0to4Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: tuesdayNow0to4TipArrays.random())

//RANDOM - WED
let wednesdayNow0to4TipArrays = [weekdayNow0to4TipArray2, weekdayNow0to4TipArray7,]
let wednesdayNow0to4Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: wednesdayNow0to4TipArrays.random())

//RANDOM - THU
let thursdayNow0to4TipArrays = [weekdayNow0to4TipArray3, weekdayNow0to4TipArray8,]
let thursdayNow0to4Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: thursdayNow0to4TipArrays.random())

//RANDOM - FRI
let fridayNow0to4TipArrays = [weekdayNow0to4TipArray4, weekdayNow0to4TipArray9,]
let fridayNow0to4Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: fridayNow0to4TipArrays.random())





//WEEK 3
//MON (WIP - 4)
let weekdayNow0to4TipArray10 = [weekdayNow0to4Tip0, weekdayNow0to4Tip1, weekdayNow0to4Tip2, weekdayNow0to4Tip3]
let mondayNow0to4Topic3 = Topic(title: weekdayNow0to4Title, icon: weekdayNow0to4Icon, tip: weekdayNow0to4TipArray10)

//TUE (WIP - 4)
let weekdayNow0to4TipArray11 = [weekdayNow0to4Tip4, weekdayNow0to4Tip5, weekdayNow0to4Tip6, weekdayNow0to4Tip7]
let tuesdayNow0to4Topic3 = Topic(title: weekdayNow0to4Title, icon: weekdayNow0to4Icon, tip: weekdayNow0to4TipArray11)

//WED (WIP - 4)
let weekdayNow0to4TipArray12 = [weekdayNow0to4Tip8, weekdayNow0to4Tip9, weekdayNow0to4Tip10, weekdayNow0to4Tip11]
let wednesdayNow0to4Topic3 = Topic(title: weekdayNow0to4Title, icon: weekdayNow0to4Icon, tip: weekdayNow0to4TipArray12)

//THUR (WIP - 4)
let weekdayNow0to4TipArray13 = [weekdayNow0to4Tip12, weekdayNow0to4Tip13, weekdayNow0to4Tip14, weekdayNow0to4Tip15]
let thursdayNow0to4Topic3 = Topic(title: weekdayNow0to4Title, icon: weekdayNow0to4Icon, tip: weekdayNow0to4TipArray13)
//FRI (WIP - 4)
let weekdayNow0to4TipArray14 = [weekdayNow0to4Tip16, weekdayNow0to4Tip17, weekdayNow0to4Tip18, weekdayNow0to4Tip19]
let fridayNow0to4Topic3 = Topic(title: weekdayNow0to4Title, icon: weekdayNow0to4Icon, tip: weekdayNow0to4TipArray14)

//WEEK 4
//MON (WIP - 4)
let weekdayNow0to4TipArray15 = [weekdayNow0to4Tip20, weekdayNow0to4Tip21, weekdayNow0to4Tip2, weekdayNow0to4Tip3]
let mondayNow0to4Topic4 = Topic(title: weekdayNow0to4Title, icon: weekdayNow0to4Icon, tip: weekdayNow0to4TipArray15)

//TUE (WIP - 4)
let weekdayNow0to4TipArray16 = [weekdayNow0to4Tip24, weekdayNow0to4Tip5, weekdayNow0to4Tip6, weekdayNow0to4Tip7]
let tuesdayNow0to4Topic4 = Topic(title: weekdayNow0to4Title, icon: weekdayNow0to4Icon, tip: weekdayNow0to4TipArray16)

//WED (WIP - 4)
let weekdayNow0to4TipArray17 = [weekdayNow0to4Tip8, weekdayNow0to4Tip9, weekdayNow0to4Tip10, weekdayNow0to4Tip11]
let wednesdayNow0to4Topic4 = Topic(title: weekdayNow0to4Title, icon: weekdayNow0to4Icon, tip: weekdayNow0to4TipArray17)

//THUR (WIP - 4)
let weekdayNow0to4TipArray18 = [weekdayNow0to4Tip12, weekdayNow0to4Tip13, weekdayNow0to4Tip14, weekdayNow0to4Tip15]
let thursdayNow0to4Topic4 = Topic(title: weekdayNow0to4Title, icon: weekdayNow0to4Icon, tip: weekdayNow0to4TipArray18)
//FRI (WIP - 4)
let weekdayNow0to4TipArray19 = [friday0to4Tip1, weekdayNow0to4Tip17, weekdayNow0to4Tip18, weekdayNow0to4Tip19]
let fridayNow0to4Topic4 = Topic(title: weekdayNow0to4Title, icon: weekdayNow0to4Icon, tip: weekdayNow0to4TipArray19)

//WEEK 5
//MON (WIP - 4)
let weekdayNow0to4TipArray20 = [weekdayNow0to4Tip21, weekdayNow0to4Tip20,  weekdayNow0to4Tip2, weekdayNow0to4Tip3]
let mondayNow0to4Topic5 = Topic(title: weekdayNow0to4Title, icon: weekdayNow0to4Icon, tip: weekdayNow0to4TipArray20)

//TUE (WIP - 4)
let weekdayNow0to4TipArray21 = [weekdayNow0to4Tip5, weekdayNow0to4Tip24, weekdayNow0to4Tip6, weekdayNow0to4Tip7]
let tuesdayNow0to4Topic5 = Topic(title: weekdayNow0to4Title, icon: weekdayNow0to4Icon, tip: weekdayNow0to4TipArray21)

//WED (WIP - 4)
let weekdayNow0to4TipArray22 = [weekdayNow0to4Tip9, weekdayNow0to4Tip8, weekdayNow0to4Tip10, weekdayNow0to4Tip11]
let wednesdayNow0to4Topic5 = Topic(title: weekdayNow0to4Title, icon: weekdayNow0to4Icon, tip: weekdayNow0to4TipArray22)

//THUR (WIP - 4)
let weekdayNow0to4TipArray23 = [weekdayNow0to4Tip13, weekdayNow0to4Tip12, weekdayNow0to4Tip14, weekdayNow0to4Tip15]
let thursdayNow0to4Topic5 = Topic(title: weekdayNow0to4Title, icon: weekdayNow0to4Icon, tip: weekdayNow0to4TipArray23)
//FRI (WIP - 4)
let weekdayNow0to4TipArray24 = [weekdayNow0to4Tip17, friday0to4Tip1, weekdayNow0to4Tip18, weekdayNow0to4Tip19]
let fridayNow0to4Topic5 = Topic(title: weekdayNow0to4Title, icon: weekdayNow0to4Icon, tip: weekdayNow0to4TipArray24)




// MARK: - Now, Weekday, 5to8

let weekdayNow5to8Title = nowTipTitle
let weekdayNow5to8Icon = "Now"

// WEEK 1
// MON
let weekdayNow5to8Tip0 = Tip(header: "Millionaire Habit", title: "Steve Jobs asked himself this question each morning...", body: "\"I looked in the mirror every morning and asked myself: \"If today were the last day of my life, would I want to do what I am about to do today?\" And whenever the answer has been no for too many days in a row, I know I need to change something.\"" , sourceName: "FastCompany", sourceURL: "https://www.fastcompany.com/3033652/the-morning-routines-of-the-most-successful-people", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow5to8Tip1 = Tip(header: "Millionaire Habit 🗓", title: "Elon Musk and Bill Gates schedule their days in 5-minute chunks", body: "Filling every moment of your calendar pushes you to make tough calls about prioritization and also leaves you feeling more in control of your time. If you try this, remember, you've also got to include time to relax and recharge." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/bill-gates-elon-musk-scheduling-habit-2017-8", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip2 = Tip(header: "Increase Success 👗", title: "Choose an outfit that you feel \"great\" in because it will boost your mood, self-confidence, and productivity", body: "Study: Students were given a set of tasks to do — half were given a doctor’s lab coat to wear and half were not. Those wearing the lab coats were more attentive and focused than those not wearing the lab coat.", sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/business/can-wearing-work-uniform-help-you-get-ahead-ncna788136?cid=eml_better_20180716", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip3 = Tip(header: "Look Better", title: "Before you leave for work, apply moisturizer and drink a glass of water to keep your skin looking good", body: "Dehydration makes your skin look more dry and wrinkled, which can be improved with proper hydration. You can also help \"lock\" moisture into your skin by using moisturizer, which creates a physical barrier to keep moisture in." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/diet/features/6-reasons-to-drink-water#3", sponsorLogo: "TBD", sponsorURL: "www.test.com")

// TUES
let weekdayNow5to8Tip4 = Tip(header: "☕️", title: "The best time to drink coffee is after 9:30 a.m.", body: "That's because the stress hormone cortisol, which regulates energy, generally peaks between 8 a.m. and 9 a.m., so you don't need the boost right then.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/the-best-time-of-day-to-do-everything-2016-5#-2", sponsorLogo: "sponsor", sponsorURL: "sponsorURL")
let weekdayNow5to8Tip5 = Tip(header: "Healthy Habit", title: "Drinking water first thing in the morning helps to rehydrate the body", body: "Our bodies are slightly dehydrated when we wake up in the morning. Drinking a couple of glasses of water allows the body to rehydrate and helps with digestion after breakfast.", sourceName: "USA Today", sourceURL: "https://www.usatoday.com/story/news/nation-now/2017/03/14/why-you-should-drink-water-first-thing-every-day/99123938/", sponsorLogo: "sponsor", sponsorURL: "sponsorURL")
let weekdayNow5to8Tip6 = Tip(header: "Lose Weight", title: "Breakfast eaters are 1/3 less likely to be overweight or obese", body: "They also show greater restraint when it comes to impulse snacking and overeating at other meals. \n\nComing as it does after the day's longest period without food, breakfast seems to influence metabolism more strongly than lunch or dinner.", sourceName: "Harvard Health Publishing", sourceURL: "https://www.health.harvard.edu/nutrition/breakfast-and-beyond-the-case-for-a-healthy-morning-meal", sponsorLogo: "sponsor", sponsorURL: "sponsorURL")
let weekdayNow5to8Tip7 = Tip(header: "Increase Success 👔", title: "Dress well today. It may increase your earnings potential", body: "Study: People were shown photos of men dressed in either business or casual attire. They were then asked questions about how the men would perform in a variety of jobs. \n\nResults indicated that the men wearing casual attire were expected to earn a lower starting salary compared to the men dressed in business attire. Moreover, the men in business attire were expected to make more money and get promoted more rapidly.", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/ashleystahl/2016/05/11/how-self-worth-affects-your-salary/#4c97d0e677fa", sponsorLogo: "", sponsorURL: "")


// WED
let weekdayNow5to8Tip8 = Tip(header: "Healthy Habit", title: "Drinking water on an empty stomach in the morning flushes out harmful toxins, leaving your body fresh and healthy", body: "Drinking water: \n• Prevents bladder infections caused by toxins; \n• Naturally urges bowel movements; and \n• Strengthens your immune system, preventing you from getting sick.", sourceName: "LifeHack", sourceURL: "https://www.lifehack.org/449117/when-you-drink-water-on-an-empty-stomach-after-waking-up-these-8-amazing-things-will-happen", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip9 = Tip(header: "Reduce Your Risk", title: "Skipping breakfast linked to higher odds of clogged arteries, which can cause a heart attack or stroke", body: "Study: 75% of the breakfast skippers had signs of plaque buildup, compared with 64% and 57% of those who ate a small breakfast and a big breakfast, respectively. \n\nBreakfast eaters were less likely to be obese or have high blood pressure, high cholesterol, or diabetes.", sourceName: "Harvard Health Publishing", sourceURL: "https://www.health.harvard.edu/heart-health/skipping-breakfast-linked-to-higher-odds-of-clogged-arteries", sponsorLogo: "sponsor", sponsorURL: "sponsorURL")
let weekdayNow5to8Tip10 = Tip(header: "Healthy Habit", title: "Getting into a good mood now helps you stay positive for the rest of the day", body: "Study: People who started the day happy or calm usually stayed that way throughout the day. \n\nBy contrast, people who started the day in a bad mood usually stayed that way throughout the day and felt even worse by the end of the day. \n\nGet in a good mood: \n• Take a few deep breaths \n• Listen to your favorite song \n• Think of something you're thankful for", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2016/07/how-your-morning-mood-affects-your-whole-workday", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip11 = Tip(header: "Increase Success", title: "Increase your future earnings and boost your self-esteem by dressing well today", body: "93% of executives report that the way a person dresses at the office affects their prospects for promotion. \n\nThe way we dress strongly affects the way we feel about ourselves and pays off professionally, so start each day looking your best.", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/ashleystahl/2016/05/11/how-self-worth-affects-your-salary/#4c97d0e677fa", sponsorLogo: "", sponsorURL: "")



// THURS
let weekdayNow5to8Tip12 = Tip(header: "Healthy Habit", title: "Drink water instead of coffee first thing in the morning", body: "We all wake up slightly dehydrated. Drinking water rehydrates your body, helps you be more alert, and kickstarts your digestion and metabolism." , sourceName: "USA Today", sourceURL: "https://www.usatoday.com/story/news/nation-now/2017/03/14/why-you-should-drink-water-first-thing-every-day/99123938/", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip13 = Tip(header: "Live Smarter ☕️", title: "Avoid drinking coffee until the hours of 9:30 am to 11:00 am", body: "Cortisol is a hormone which makes us feel alert and awake. The peak production of cortisol in your body occurs between 8:00 am and 9:00 am (under normal circumstances). So, by consuming caffeine when it's not needed, your body will build a faster tolerance to it, and the buzz you get will greatly diminish.", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/anthonykosner/2014/01/05/why-the-best-time-to-drink-coffee-is-not-first-thing-in-the-morning/#322f5acd7a71", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip14 = Tip(header: "Increase Success", title: "Top CEOs and investors exercise first thing in the morning", body: "These are very busy people. If they still make time to exercise, it must be important. A pre-breakfast workout burns belly fat, helps reduce stress later in the day, and improves sleep." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/what-successful-people-do-before-breakfast-2015-10", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip15 = Tip(header: "Increase Happiness", title: "Making your bed can make your happier and more productive all day long", body: "Making your bed every morning doesn't necessarily cause you to get more done at work, but it's a \"keystone habit\" that can spark chain reactions that help build other good habits. \n\nPeople that consistently make their beds also tend to have a greater sense of well-being and stronger skills at sticking with a budget." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/what-successful-people-do-before-breakfast-2015-10", sponsorLogo: "", sponsorURL: "")

// FRI
let weekdayNow5to8Tip16 = Tip(header: "Healthy Habit", title: "Drinking water in the morning increases your metabolism and ability to burn fat", body: "You are dehydrated when you wake up which can slow down metabolism by as much as 3%. Drinking about 17oz of water increases metabolic rate by 30%. \n\nDrinking 1-2 glasses of water before a meal can fill you up so you naturally eat less.", sourceName: "Shape", sourceURL: "https://www.shape.com/healthy-eating/healthy-drinks/6-reasons-drinking-water-helps-solve-any-problem", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip17 = Tip(header: "Prevent Weight Gain", title: "Skipping breakfast is strongly correlated with weight gain. Eating a high-protein breakfast reduces junk food cravings later today", body: "Study: People who ate 35 grams of protein in the morning had reductions in their \"cravings-related\" brain activity, and increased levels of a hormone associated with feeling full. \n\nThey also snacked less on fatty foods in the evening, as compared to those who ate cereal or nothing in the morning." , sourceName: "The Atlantic", sourceURL: "https://www.theatlantic.com/health/archive/2013/03/study-eat-protein-in-the-morning/274417/", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip18 = Tip(header: "Reduce Excuses", title: "Pack your gym clothes and take them to work with you, so you have no excuses to not exercise after work", body: "Heading straight to the gym after work takes away the temptation of going home and being inactive and unproductive.", sourceName: "Bustle", sourceURL: "https://www.bustle.com/articles/159080-11-healthy-after-work-habits-to-try-instead-of-sitting-on-the-couch-all-night", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip19 = Tip(header: "Live Better", title: "Gratitude journaling is a great way to center yourself before heading to work", body: "Entrepreneur and author, Tim Ferriss, spends 5 minutes each morning writing down what he's grateful for and what he's looking forward to. \n\nThis allows him to: \n\n• Feel better \n• Get more done during the day" , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/what-successful-people-do-before-breakfast-2015-10", sponsorLogo: "", sponsorURL: "")

// WEEK 2
// MON
let weekdayNow5to8Tip20 = Tip(header: "Live Smarter ☕️", title: "DON'T: Drink coffee immediately after you wake up \n\nDO: Drink coffee 60-90 minutes after waking up", body: "The moment we awaken, our bodies begin producing cortisol, a hormone that helps us wake up. Caffeine interferes with the production of cortisol, so starting the day immediately with a cup of coffee barely boosts our wakefulness. \n\nWorse, early-morning coffee increases our tolerance for caffeine, which means we must drink even more to obtain its benefits. A better approach is to drink coffee 60-90 minutes after waking up, once our cortisol production has peaked." , sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip21 = Tip(header: "We're Dehydrated In The AM", title: "Drink a glass of water when you wake up", body: "Drinking water in the morning helps you: \n\n• wake up \n• rehydrate \n• control early morning hunger pains" , sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/", sponsorLogo: "", sponsorURL: "")

let weekdayNow5to8Tip22 = Tip(header: "Reduce Junk Food Cravings Today", title: "Eat a high-protein breakfast", body: "Study: Eating a high-protein breakfast was associated with: \n\n• Increased feelings of fullness \n• Reduced desire to eat over the course of the day \n\nPeople who ate 35 grams of protein in the morning snacked less on fatty foods in the evening, as compared to those who ate cereal or nothing in the morning." , sourceName: "The Atlantic", sourceURL: "https://www.theatlantic.com/health/archive/2013/03/study-eat-protein-in-the-morning/274417/", sponsorLogo: "", sponsorURL: "")

let weekdayNow5to8Tip23 = Tip(header: "Not A Breakfast Eater?", title: "Try Intermittent Fasting: Eat for 8 hours and fast for 16 hours", body: "Studies have found intermittent fasting to be just as reliable for weight loss as traditional diets. \n\nA popular intermittent fasting eating window is 12 p.m. to 8 p.m., meaning you eat whatever you want within the 8-hour \"feeding\" window. \n\nAsk your doctor first before you start fasting." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/daily-routine-according-to-science-2017-12", sponsorLogo: "", sponsorURL: "")


// TUE
let weekdayNow5to8Tip24 = Tip(header: "Avoid Weight Gain", title: "People who eat breakfast are less likely to gain weight and develop belly fat", body: "Study: On average, people who ate breakfast regularly only gained 3 pounds each year, while those who skipped breakfast gained 8 pounds. \n\nEating breakfast sets you up for eating healthy for the rest of the day." , sourceName: "CBS News", sourceURL: "https://www.cbsnews.com/news/eat-breakfast-gain-less-weight-belly-fat-study/", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip25 = Tip(header: "Avoid Weight Gain", title: "Study: Eat your biggest meal of the day before 3 PM", body: "People who ate their biggest meal after 3 PM, lost significantly less weight — and took longer to lose it — than people who ate their biggest meal before 3 PM." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/why-eating-late-bad-unhealthy-2018-1", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip26 = Tip(header: "Avoid Weight Gain", title: "Eat breakfast. Skipping breakfast tricks your brain into thinking you want higher-calorie foods", body: "Study: When people skipped breakfast their brain's reward center became more active when they saw a high-calorie food (pizza and cake) as opposed to a low-calorie food (vegetables and fish). \n\nWhen people ate breakfast their brain's reward center did not show any significantly greater activity when they saw a high-calorie food." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/diet/news/20090615/skip-breakfast-get-fat", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip27 = Tip(header: "Increase Happiness", title: "Don't spend more than 30 minutes on social media today", body: "Study: Limiting your social media usage to 30 minutes per day reduces your risk of: \n\n• Depression \n• Loneliness" , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/facebook-instagram-snapchat-social-media-well-being-2018-11", sponsorLogo: "", sponsorURL: "")

// WED
let weekdayNow5to8Tip28 = Tip(header: "Healthy Habit", title: "The sooner you can drink a big glass of water with lemon, the better you'll feel", body: "Being dehydrated lowers brain performance and mood. \n\nHaving a large glass of water with lemon in the morning helps stimulate digestion and decreases inflammation, which can improve your memory and focus this morning." , sourceName: "Bustle", sourceURL: "https://www.bustle.com/p/7-ways-to-change-your-morning-routine-that-can-drastically-boost-your-mood-8168589", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip29 = Tip(header: "Increase Happiness", title: "Be like Jennifer Aniston: Don't look at your phone in the morning", body: "Jennifer Aniston finds that her happiest days always begin with a device-free routine. \n\n\"It felt so liberating not to be tied to [my phone]. When you start the day the way you should, which is for ourselves, that’s a great way to start your day.\"" , sourceName: "Thrive Global", sourceURL: "https://thriveglobal.com/stories/jennifer-aniston-arianna-huffington-boundaries-technology-happiness-morning-routine/", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip30 = Tip(header: "Lose Weight", title: "Dieters are more successful at losing weight—and keeping it off—when they eat breakfast every day", body: "If you don't already eat breakfast, start. If you are already a breakfast eater, try eating the same breakfast multiple days each week. \n\nRepeating the same meals can help you shed pounds, according to research.", sourceName: "EatingWell", sourceURL: "http://www.eatingwell.com/article/280967/7-small-changes-with-big-results/", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip31 = Tip(header: "Make More Money", title: "Arrive on time to work today. People who test high in conscientiousness, such as being on time, earn higher salaries", body: "Research: Conscientiousness is the personality trait most often correlated with job performance. \n\nConscientious people tend to be super organized, responsible, and plan ahead. \n\nIf someone shows up on time, that's a great clue toward conscientiousness, since a punctual person has to be organized enough to arrive on time." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/conscientiousness-predicts-job-performance-2014-12", sponsorLogo: "", sponsorURL: "")



//THUR
let weekdayNow5to8Tip32 = Tip(header: "Morning Routine", title: "Do 5-10 reps of any exercise. \n• Pushups \n• Situps \n• Squats \n• Lunges", body: "5-10 reps will wake you up, improve your mood, and bring clarity to your mind as you start your day. \n\nIf you win the morning, you win the day." , sourceName: "Inc.", sourceURL: "https://www.inc.com/quora/5-simple-things-tim-ferriss-does-every-morning-and-you-should-too.html", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip33 = Tip(header: "Warning", title: "People who watch just 3 minutes of negative news in the morning are 27% more likely to feel unhappy or depressed today compared to people who watched positive news", body: "Stop being fed doom and gloom on your mobile devices. \n\nResearchers found that it lowers your work performance and increases your risk of depression. \n\nThe morning hours are priming our brain to either have a good day or a bad day. \n\nTo improve your performance, researchers suggest seeking out positive news that empowers you instead of just focusing on the problems." , sourceName: "Inc.", sourceURL: "https://www.inc.com/marcel-schwantes/this-best-selling-psychologist-says-watching-3-minutes-of-this-every-morning-rui.html", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip34 = Tip(header: "Reduce Your Risk", title: "Eat breakfast. Skipping breakfast is highly correlated with an early death", body: "Study: People who skipped breakfast were 19% more likely to have died from any cause and 87% more likely to have died of cardiovascular disease than those who had a morning meal." , sourceName: "Inverse", sourceURL: "https://www.inverse.com/article/55187-skipping-breakfast-costs", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip35 = Tip(header: "Productivity", title: "What's the one goal which, when complete, will make everything else you have to do easier or unnecessary?", body: "Block out the first 4 hours of your day to focus on your most important task. \n\nUntil your one goal is achieved, anything else is a distraction." , sourceName: "Fast Company", sourceURL: "https://www.fastcompany.com/3066982/why-the-most-productive-people-do-these-six-things-every-day", sponsorLogo: "", sponsorURL: "")

//FRI
let weekdayNow5to8Tip36 = Tip(header: "Prevent Weight Gain", title: "Eat breakfast earlier in the morning", body: "Study: Later meal timing was associated with: \n\n• higher body mass index \n• greater body fat" , sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2019/03/190323145204.htm", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip37 = Tip(header: "Increase Happiness", title: "Think of 3 things you're grateful for when you first wake up", body: "Priming your brain with positive information at the start of your day puts your attention on the good in your life rather than the bad. \n\nThis reprograms your brain to have a more upbeat world view. \n\nGratitude makes you happier, more resilient, more likeable, and can literally add years to your life." , sourceName: "Inc.", sourceURL: "https://www.inc.com/minda-zetlin/do-this-one-thing-before-you-get-up-every-morning.html", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip38 = Tip(header: "Live Better", title: "80%+ of top performers Tim Ferriss interviewed for his book, “Tools of Titans,” had a mindfulness ritual in their morning routine", body: "By meditating, \"you’re practicing focus when it doesn’t matter (sitting on a couch for 10 minutes) so that you can focus better later when it does matter (negotiation, conversation with a loved one, etc.).\" \n\nFerriss recommends first-timers try a meditation app, like Headspace or Calm." , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2017/01/23/tim-ferriss-5-step-morning-routine.html", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip39 = Tip(header: "Increase Success", title: "Write down the most important tasks that you need to complete today. It simplifies your life by focusing on what really counts", body: "Write tasks that: \n• Support your long term goals \n• Are aligned with your purpose, passion, or direction in life. \n\n\"If you have a goal, write it down. If you do not write it down, you do not have a goal - you have a wish.\" \n\n- Steve Maraboli" , sourceName: "Lifehack", sourceURL: "https://www.lifehack.org/articles/lifestyle/7-morning-rituals-empower-your-day-change-your-life.html", sponsorLogo: "", sponsorURL: "")

//WEEK 3
//MON
let weekdayNow5to8Tip40 = Tip(header: "Lose Weight", title: "Drink water first thing in the morning. Don't drink coffee until 9 a.m.", body: "Study: People who drank 17 ounces of water (about 2 glasses) increased their metabolic rate by 30%, allowing them to burn more calories. \n\nBecause your cortisol levels naturally rise in the morning after you wake and peak between 8-9 a.m., having coffee before 9 a.m. can result in increased stress and its caffeine effects won’t be as effective than drinking it after 9 a.m." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/surprising-habits-affecting-health/", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip41 = Tip(header: "Improve Performance", title: "Morning exercise, such as a brisk walk, improves cognitive performance like decision-making throughout the day", body: "Furthermore, the study found that moderate-intensity exercise in the morning combined with brief 3-minute walking breaks during an 8-hour day of sitting can boost your short-term memory compared to 8 hours of uninterrupted sitting." , sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2019/04/190429154529.htm", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip42 = Tip(header: "Reflect", title: "How to tell if you slept well last night: The less you remember your dreams, the better you slept.", body: "Everyone dreams. Lack of dream recollection means that you're a healthy sleeper because it’s a sign you spent more time in deep sleep, stages 3 and 4. \n\nIt's in stages 3-4 that our body repairs muscles, stimulates development, boosts immune functions, and builds up energy for the next day." , sourceName: "Medium", sourceURL: "https://medium.com/an-idea-for-you/how-to-tell-if-you-slept-well-last-night-and-what-to-do-if-you-didnt-e338553af778", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip43 = Tip(header: "Prevent Weight Gain", title: "Study: People gain weight when they eat calories at night. Solution: Eat early and within a 12-hour window or less ― only when there’s sunlight", body: "Our bodies become more insulin resistant later in the day which causes sugar to stay in your bloodstream and be turned into fat. \n\nEat 75% of your daily calories before 2 p.m., with breakfast and lunch being your largest meals, and dinner the smallest. \n\nGetting plenty of protein and healthy fat (avocado, chia seeds, salmon, and walnuts) in the morning and at lunchtime will ward off hunger tonight.", sourceName: "Cleveland Clinic", sourceURL: "https://health.clevelandclinic.org/its-not-just-what-you-eat-but-also-when-that-matters/", sponsorLogo: "", sponsorURL: "")


//TUES
let weekdayNow5to8Tip44 = Tip(header: "Lose Weight", title: "Intermittent fasting helps you: \n\n• Lose weight even without cutting calories \n• Lower your the risk of cancer and diabetes \n• Slow aging and live longer", body: "A popular type of intermittent fasting is limiting meals each day to a smaller time period (often 6-8 hours and fasting the other 16-18 hours of the day). \n\nNote: Fasting may not be for everyone. The process can lead to irritability, grogginess, and stress, and can be risky for people vulnerable to eating disorders.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/intermittent-fasting-slows-aging-cancer-diabetes-heart-disease-study-2019-12", sponsorLogo: "", sponsorURL: "")

let weekdayNow5to8Tip45 = Tip(header: "Live Longer", title: "Study: Having an optimistic outlook on life was associated with a 11%-15% longer life", body: "This could translate to 10+ years longer. \n\nOptimists are more likely to interpret stressful events in more positive ways, reducing worry and repetitive thoughts.", sourceName: "Inc.", sourceURL: "https://www.inc.com/bill-murphy-jr/want-to-sleep-better-live-15-percent-longer-a-massive-new-study-of-71173-people-over-30-years-has-some-incredibly-good-news.html", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip46 = Tip(header: "Be Optimistic", title: "• Stop using negative phrases like \"I can't\" or \"It's impossible.\" They cause your mind to look for negative results", body: "• Stop complaining because it depresses you and everyone else \n\n• Stop using profanity \n\n• When asked \"How are you\" replace \"Ok\" and \"Good\" with \"Great\" or \"Terrific\".", sourceName: "Inc.", sourceURL: "https://www.inc.com/geoffrey-james/become-more-optimistic-6-tricks.html", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip47 = Tip(header: "Increase Energy", title: "We wake slighly dehydrated. Drink water first (not coffee)", body: "When you're dehydrated and have nothing in your stomach, the caffeine enters your bloodstream incredibly fast, releasing stress hormones that your body reads as a fight-or-flight trigger. \n\nHold off on drinking coffee until you've hydrated properly.", sourceName: "Own the Day, Own Your Life", sourceURL: "https://www.amazon.com/Own-Day-Your-Life-Optimized-ebook/dp/B072HLS5QJ", sponsorLogo: "", sponsorURL: "")

//WED
let weekdayNow5to8Tip48 = Tip(header: "Live Better", title: "Upon waking, get 5-10 minutes of sunlight and light exercise to start your day with positive momentum", body: "Getting sunlight synchronizes your circadian rhythm which is good for your health. \n\nLight exercise boosts circulation, improves cognitive performance, and releases endorphins that will make you more alert. \n\nLight exercises: \n• Air squats \n• Pushups \n• Walking \n• Jogging \n• Yoga", sourceName: "Own the Day, Own Your Life", sourceURL: "https://www.amazon.com/Own-Day-Your-Life-Optimized-ebook/dp/B072HLS5QJ", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip49 = Tip(header: "Burn 20% More Fat", title: "Exercise in the morning, before breakfast", body: "When you first wake up, having not eaten for several hours, your blood surgar is low. \n\nSince you need blood sugar to fuel a run, morning exercise will use the fat stored in your tissues to supply the energy you need. \n\nHowever, when you exercise after eating, you use the energy from the food you've just consumed. \n\nIn many cases, morning exercise may burn 20% more fat than later, post-food workouts.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip50 = Tip(header: "Prevent Weight Gain", title: "Limit your daily eating window to 10 hours - So, if you take your first bite of food at 8 a.m., you'd need to consume your last calorie of the day by 6 p.m.", body: "In a 3-month study, overweight participants who ate in a 10 hour window saw: \n\n• 3% reduction in their weight \n• 4% reduction in abdominal visceral fat \n\nDuring the fasting period, participants were encouraged to stay hydrated with water.", sourceName: "NPR", sourceURL: "https://www.npr.org/sections/thesalt/2019/12/08/785142534/eat-for-10-hours-fast-for-14-this-daily-habit-prompts-weight-loss-study-finds", sponsorLogo: "", sponsorURL: "")

let weekdayNow5to8Tip51 = Tip(header: "Reflect", title: "How to tell if you slept well last night: The quicker you fell asleep, the better your sleep was.", body: "A good night’s sleep means: \n\n• You should be able to fall asleep in 30 minutes or less. \n\n• If you wake up in the middle of the night, it shouldn’t be for longer than 20 minutes. \n\n• You shouldn’t wake up for more than 5 minutes more than once a night. \n\n• 85% of the time you spend in bed should be actually sleeping." , sourceName: "Medium", sourceURL: "https://medium.com/an-idea-for-you/how-to-tell-if-you-slept-well-last-night-and-what-to-do-if-you-didnt-e338553af778", sponsorLogo: "", sponsorURL: "")

//THURS
let weekdayNow5to8Tip52 = Tip(header: "Timing Of When You Eat Matters", title: "The best way to maximize weight loss is to eat early in the day, not late", body: "Study: People who'd eaten their main meal of the day before 3 p.m. lost about 5 more pounds than the people who ate a dinner meal later in the evening. \n\nEating in the evening can cause our bodies to store extra calories as fat." , sourceName: "NPR", sourceURL: "https://www.npr.org/sections/thesalt/2013/07/24/205138540/chow-down-in-sync-with-your-circadian-clock", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip53 = Tip(header: "Increase Happiness", title: "Start each day with a thankful heart. Gratitude is the easiest path to a happier life", body: "Research: Appreciating what you have can increase happiness and decrease negative feelings. Don’t let the things you want make you forget the things you have. \n\nIn fact, successful people from John Paul DeJoria to Oprah Winfrey have a daily gratitude practice. \n• DeJoria uses the first five minutes of the day to \"reflect on what I have in life and for what I am grateful.\" \n• Oprah Winfrey writes in her daily gratitude journal." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/changes-to-make-in-your-20s-2016-11", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip54 = Tip(header: "Life Advice", title: "If you want to change your life and maybe the world - start off by making your bed", body: "The simple act of making your bed can give you the lift you need to start your day when life gets hard. \n\nMaking your bed builds discipline and at the end of the day it's a reminder that you have done something well, something to be proud of, no matter how small the task." , sourceName: "Make Your Bed: Little Things That Can Change Your Life...And Maybe the World, by Admiral William H. McRaven", sourceURL: "https://www.amazon.com/Make-Your-Bed-Little-Things/dp/1455570249", sponsorLogo: "", sponsorURL: "")


//FRI
let weekdayNow5to8Tip56 = Tip(header: "Start Your Morning Right", title: "Research: Being in a negative mood reduces productivity by 10%", body: "Starting your day in a positive mood creates an ongoing cycle of positivity. But, starting your day in a negative mood creates an ongoing cycle of negativity. \n\nDo something that makes you feel good. Or sit down and write out things that you’re grateful for." , sourceName: "The Ohio State University", sourceURL: "https://insights.osu.edu/life/morning-mood", sponsorLogo: "", sponsorURL: "")


//WEEK 4


//WEEK 5


//WEEK 1
// MON
let weekdayNow5to8TipArray0 = [weekdayNow5to8Tip0, weekdayNow5to8Tip1, weekdayNow5to8Tip2, weekdayNow5to8Tip3]
let mondayNow5to8Topic1 = Topic(title: weekdayNow5to8Title, icon: weekdayNow5to8Icon, tip: weekdayNow5to8TipArray0)

// TUE
let weekdayNow5to8TipArray1 = [weekdayNow5to8Tip4, weekdayNow5to8Tip5, weekdayNow5to8Tip6, weekdayNow5to8Tip7]
let tuesdayNow5to8Topic1 = Topic(title: weekdayNow5to8Title, icon: weekdayNow5to8Icon, tip: weekdayNow5to8TipArray1)

// WED
let weekdayNow5to8TipArray2 = [weekdayNow5to8Tip8, weekdayNow5to8Tip9, weekdayNow5to8Tip10, weekdayNow5to8Tip11]
let wednesdayNow5to8Topic1 = Topic(title: weekdayNow5to8Title, icon: weekdayNow5to8Icon, tip: weekdayNow5to8TipArray2)

// THU
let weekdayNow5to8TipArray3 = [weekdayNow5to8Tip12, weekdayNow5to8Tip13, weekdayNow5to8Tip14, weekdayNow5to8Tip15]
let thursdayNow5to8Topic1 = Topic(title: weekdayNow5to8Title, icon: weekdayNow5to8Icon, tip: weekdayNow5to8TipArray3)

// FRI
let weekdayNow5to8TipArray4 = [weekdayNow5to8Tip16, weekdayNow5to8Tip17, weekdayNow5to8Tip18, weekdayNow5to8Tip19]
let fridayNow5to8Topic1 = Topic(title: weekdayNow5to8Title, icon: weekdayNow5to8Icon, tip: weekdayNow5to8TipArray4)

//WEEK 2
// MON
let weekdayNow5to8TipArray5 = [weekdayNow5to8Tip20, weekdayNow5to8Tip21, weekdayNow5to8Tip22, weekdayNow5to8Tip23]
let mondayNow5to8Topic2 = Topic(title: weekdayNow5to8Title, icon: weekdayNow5to8Icon, tip: weekdayNow5to8TipArray5)

// TUE
let weekdayNow5to8TipArray6 = [weekdayNow5to8Tip24, weekdayNow5to8Tip25, weekdayNow5to8Tip26, weekdayNow5to8Tip27]
let tuesdayNow5to8Topic2 = Topic(title: weekdayNow5to8Title, icon: weekdayNow5to8Icon, tip: weekdayNow5to8TipArray6)

// WED
let weekdayNow5to8TipArray7 = [weekdayNow5to8Tip28, weekdayNow5to8Tip29, weekdayNow5to8Tip30, weekdayNow5to8Tip31]
let wednesdayNow5to8Topic2 = Topic(title: weekdayNow5to8Title, icon: weekdayNow5to8Icon, tip: weekdayNow5to8TipArray7)

// THU
let weekdayNow5to8TipArray8 = [weekdayNow5to8Tip32, weekdayNow5to8Tip33, weekdayNow5to8Tip34, weekdayNow5to8Tip35]
let thursdayNow5to8Topic2 = Topic(title: weekdayNow5to8Title, icon: weekdayNow5to8Icon, tip: weekdayNow5to8TipArray8)

// FRI
let weekdayNow5to8TipArray9 = [weekdayNow5to8Tip36, weekdayNow5to8Tip37, weekdayNow5to8Tip38, weekdayNow5to8Tip39]
let fridayNow5to8Topic2 = Topic(title: weekdayNow5to8Title, icon: weekdayNow5to8Icon, tip: weekdayNow5to8TipArray9)

//WEEK 3
// MON
let weekdayNow5to8TipArray10 = [weekdayNow5to8Tip40, weekdayNow5to8Tip41, weekdayNow5to8Tip42, weekdayNow5to8Tip43]
let mondayNow5to8Topic3 = Topic(title: weekdayNow5to8Title, icon: weekdayNow5to8Icon, tip: weekdayNow5to8TipArray10)

// TUE
let weekdayNow5to8TipArray11 = [weekdayNow5to8Tip44, weekdayNow5to8Tip45, weekdayNow5to8Tip46, weekdayNow5to8Tip47]
let tuesdayNow5to8Topic3 = Topic(title: weekdayNow5to8Title, icon: weekdayNow5to8Icon, tip: weekdayNow5to8TipArray11)

// WED
let weekdayNow5to8TipArray12 = [weekdayNow5to8Tip48, weekdayNow5to8Tip49, weekdayNow5to8Tip50, weekdayNow5to8Tip51]
let wednesdayNow5to8Topic3 = Topic(title: weekdayNow5to8Title, icon: weekdayNow5to8Icon, tip: weekdayNow5to8TipArray12)

// THU (WIP - 2)
let weekdayNow5to8TipArray13 = [weekdayNow5to8Tip52, weekdayNow5to8Tip53, weekdayNow5to8Tip54, weekdayNow5to8Tip35]
let thursdayNow5to8Topic3 = Topic(title: weekdayNow5to8Title, icon: weekdayNow5to8Icon, tip: weekdayNow5to8TipArray13)

// FRI (WIP - 3)
let weekdayNow5to8TipArray14 = [weekdayNow5to8Tip56, weekdayNow5to8Tip37, weekdayNow5to8Tip38, weekdayNow5to8Tip39]
let fridayNow5to8Topic3 = Topic(title: weekdayNow5to8Title, icon: weekdayNow5to8Icon, tip: weekdayNow5to8TipArray14)

/////////////////
//RANDOM - MON
let mondayNow5to8TipArrays = [weekdayNow5to8TipArray0, weekdayNow5to8TipArray5, weekdayNow5to8TipArray10]
let mondayNow5to8Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: mondayNow5to8TipArrays.random())

//RANDOM - TUE
let tuesdayNow5to8TipArrays = [weekdayNow5to8TipArray1, weekdayNow5to8TipArray6, weekdayNow5to8TipArray11]
let tuesdayNow5to8Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: tuesdayNow5to8TipArrays.random())

//RANDOM - WED
let wednesdayNow5to8TipArrays = [weekdayNow5to8TipArray2, weekdayNow5to8TipArray7, weekdayNow5to8TipArray12]
let wednesdayNow5to8Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: wednesdayNow5to8TipArrays.random())

//RANDOM - THU
let thursdayNow5to8TipArrays = [weekdayNow5to8TipArray3, weekdayNow5to8TipArray8, weekdayNow5to8TipArray13]
let thursdayNow5to8Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: thursdayNow5to8TipArrays.random())

//RANDOM - FRI
let fridayNow5to8TipArrays = [weekdayNow5to8TipArray4, weekdayNow5to8TipArray9, weekdayNow5to8TipArray14]
let fridayNow5to8Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: fridayNow5to8TipArrays.random())



// MARK: - Now, Weekday, 9to11

let weekdayNow9to11Title = nowTipTitle
let weekdayNow9to11Icon = "Now"
//Week 1
// MON
let weekdayNow9to11Tip0 = Tip(header: "Increase Happiness", title: "People who take mid-morning breaks are more focused and happier than those who don't take breaks", body: "Research: People who took a break before lunch were not only more energetic and focused, but they also experienced fewer headaches, eyestrain, and lower back pain. \n\nThey were also happier with their jobs and felt less burned out." , sourceName: "USA Today", sourceURL: "https://www.usatoday.com/story/money/business/2015/10/10/cheat-sheet-work-break/73417008/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow9to11Tip1 = Tip(header: "Increase Productivity", title: "Block time at work to respond to emails, return calls, and other admin tasks", body: "It takes an average of 26 minutes to recover from trivial interruptions. \n\nIf you respond to every email that hits your inbox you’ll never stay ahead. \n\nBlock time for these tasks and don't touch these tasks outside of your set time block." , sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/ashleystahl/2017/10/20/4-ways-to-be-more-productive-at-work/#7638ce9f19eb", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow9to11Tip2 = Tip(header: "Increase Productivity", title: "Take regular breaks at work to keep your energy levels high and your mind fresh", body: "Working at a task without breaks leads to a steady decline in performance. \n\nWorking for 90 minutes straight, and then take a 15-minute break may be best for maximizing productivity. \n\nIf this doesn't work, shorten that interval to 60 or 75 minutes." , sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/ashleystahl/2017/10/20/4-ways-to-be-more-productive-at-work/#7638ce9f19eb", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow9to11Tip3 = Tip(header: "Live Healthier", title: "People exposed to sunlight or bright indoor lights between 8 a.m. and Noon sleep better at night", body: "Exposure to light during the day helps to calibrate the body’s internal “circadian” clock. \n\nA lack of good quality sleep has been linked to health problems, including issues with mood, thinking, and metabolism.", sourceName: "Reuters", sourceURL: "https://www.reuters.com/article/us-health-sleep-daylight/morning-daylight-exposure-tied-to-a-good-nights-sleep-idUSKCN18E23E", sponsorLogo: "", sponsorURL: "")

// TUES
let weekdayNow9to11Tip4 = Tip(header: "Increase Productivity", title: "Having your smartphone in reach, even if it’s silenced or turned off lowers your ability to think", body: "Research: People who kept their phones in another room significantly outperformed the ones who kept them nearby in concentration tests. \n\nHaving your phone within reach makes it harder to focus because a percentage of the brain has to actively work to not pick up or use the device.", sourceName: "Inc.", sourceURL: "https://www.inc.com/christina-desmarais/heres-why-you-need-to-put-your-phone-away-according-to-science.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow9to11Tip5 = Tip(header: "Increase Confidence", title: "You only have 7 seconds to make a good \"first impression\"", body: "First impressions are more influenced by your facial appearance and body language than your words. \n\nSo, straighten your posture, make eye contact, and smile. \n\nStanding tall, pulling your shoulders back, and holding your head straight are all signals of confidence and competence.", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/carolkinseygoman/2011/02/13/seven-seconds-to-make-a-first-impression/#3b38025d2722", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow9to11Tip6 = Tip(header: "Reduce Your Risk", title: "Sitting for more than 8 hours a day with no physical activity results in the same risk of dying as posed by obesity and smoking", body: "Long periods of sitting causes excess body fat around the waist and increases the risk of death from cardiovascular disease and cancer. \n\nFor better health, take a break from sitting every 30 minutes, stand while talking on the phone, and try a standing desk at work.", sourceName: "Mayo Clinic", sourceURL: "https://www.mayoclinic.org/healthy-lifestyle/adult-health/expert-answers/sitting/faq-20058005", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow9to11Tip7 = Tip(header: "Increase Happiness", title: "Ask a friend to meet for drinks or dinner tonight - it's a healthy after-work ritual", body: "Not only does making plans give you something to look forward to, but it creates empathy, support, and bonding — all of which are great ways for you to de-stress after work, and allow you to head home with a clear mind and heart." , sourceName: "Bustle", sourceURL: "https://www.bustle.com/articles/159080-11-healthy-after-work-habits-to-try-instead-of-sitting-on-the-couch-all-night", sponsorLogo: "TBD", sponsorURL: "www.test.com")

// WED
let weekdayNow9to11Tip8 = Tip(header: "The Right Time", title: "For most adults, it's best to do analytical work that requires heads-down attention in the morning", body: "When we wake up, our body temperatures rise boosting our energy levels and alertness—and that, in turn, enhances our ability to concentrate and stay focused. Alertness and energy levels rise in the morning, peak in the late morning or around noon, and decrease during the afternoons." , sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
let weekdayNow9to11Tip9 = Tip(header: "Increase Confidence", title: "Make eye contact 60% to 70% of the time when speaking to people", body: "Eye contact shows a person's social hierarchy and dominance in a conversation. When someone is talking to you, make sure you look them in the eye. Looking down or looking around makes you look nervous. People who are of high social status look longer at their subject and they also receive more eye contact in return.", sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2017/08/17/how-making-eye-contact-can-help-you-appear-more-confident-at-work.html", sponsorLogo: "", sponsorURL: "")
let weekdayNow9to11Tip10 = Tip(header: "Increase Productivity", title: "Research: Those who take workday breaks earlier in the day (around 10 AM-11 AM) reported more energy, concentration, motivation, and job satisfaction, compared to those who saved their breaks for the afternoon", body: "Employees who took breaks earlier in the day had fewer symptoms of poor health, including headache, eyestrain, and lower back pain after the break. These employees also experienced increased job satisfaction and a decrease in emotional exhaustion (burnout).", sourceName: "Baylor University", sourceURL: "https://www.baylor.edu/mediacommunications/news.php?action=story&story=159785", sponsorLogo: "", sponsorURL: "")
let weekdayNow9to11Tip11 = Tip(header: "Increase Confidence", title: "Humans use voice pitch to communicate social status. Speak to people in a lower pitch in order to display high social status", body: "Both men and women tend to talk to high-status individuals using a higher pitch. A deep, masculine voice sounds dominant, especially in men, while the opposite is true of a higher-pitched voice. \n\nSo, if someone perceives the person they are speaking with to be more dominant than them, they raise their pitch. This may be a signal of submissiveness, to show the listener that you are not a threat, and to avoid possible confrontations." , sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2017/06/170629101721.htm", sponsorLogo: "", sponsorURL: "")


// THURS
let weekdayNow9to11Tip12 = Tip(header: "Increase Productivity", title: "Only check email 2-3 times a day. Constantly checking your email makes you more stressed and less productive.", body: "Researchers put people into 2 groups, with one told to check email 3 times a day and another told to check it as often as they wanted. \n\nThe group that checked email 3 times a day reduced the amount of time they spent answering messages by 20%." , sourceName: "Fast Company", sourceURL: "https://www.fastcompany.com/3066982/why-the-most-productive-people-do-these-six-things-every-day", sponsorLogo: "", sponsorURL: "")
let weekdayNow9to11Tip13 = Tip(header: "Live Better ☀️", title: "Get sun exposure within 2 hours of waking up", body: "Morning sun exposure helps your circadian clock to reset itself for a new day and will help you fall asleep tonight." , sourceName: "SUCCESS Magazine", sourceURL: "https://www.success.com/the-new-secrets-of-perfect-sleep/", sponsorLogo: "", sponsorURL: "")
let weekdayNow9to11Tip14 = Tip(header: "Tired? ☀️", title: "Get as much sunlight as you can", body: "The sun, unlike most lightbulbs, emits light that covers a wide range of the color spectrum. \n\nWhen these extra wavelengths hit your eyes, they signal your brain to stop producing sleep hormones and start producing alertness hormones.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/", sponsorLogo: "", sponsorURL: "")
let weekdayNow9to11Tip15 = Tip(header: "Increase Productivity", title: "Take shorter, more frequent walking breaks throughout the day", body: "Study: Hourly 5-minute walking breaks boosted energy levels, sharpened focus, improved mood throughout the day, and reduced feelings of fatigue in the late afternoon. \n\nShorter, more frequent breaks were more effective than a single 30-minute walking break.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/", sponsorLogo: "", sponsorURL: "")

// FRI
let weekdayNow9to11Tip16 = Tip(header: "Increase Productivity", title: "Drink 6-8 glasses of water throughout the day", body: "Being even slightly dehydrated will make you tired and lower your concentration. \n\nDon’t wait until you feel thirsty before drinking either – by the time thirst kicks in you are already dehydrated.", sourceName: "Weight Loss Resources", sourceURL: "https://www.weightlossresources.co.uk/diet/healthy_eating/beat-afternoon-energy-slump.htm", sponsorLogo: "", sponsorURL: "")
let weekdayNow9to11Tip17 = Tip(header: "Prevent Weight Gain ☀️", title: "Get at least 20 to 30 minutes of sunlight light before noon", body: "Not getting enough light before noon disturbs your internal body clock, which is known to alter metabolism and lead to weight gain. \n\nStudy: Morning light exposure accounted for about 20% of a person’s BMI.", sourceName: "Northwestern University", sourceURL: "https://news.northwestern.edu/stories/2014/04/morning-rays-keep-off-the-pounds", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow9to11Tip18 = Tip(header: "Increase Happiness", title: "Perform 5 acts of kindness today makes your happier", body: "Study: People who performed 5 acts of kindness during a single day experienced a significant increase in well-being. \n\nWhile people who either did nothing or who spread the 5 acts of kindness out over a week did not experience an increase in well-being.", sourceName: "American Psychological Association", sourceURL: "https://www.apa.org/monitor/oct06/key", sponsorLogo: "", sponsorURL: "")
let weekdayNow9to11Tip19 = Tip(header: "Millionaire Habit", title: "Write down a to-do list for today", body: "Those who maintain both a calendar and to-do list are 289% more likely to be millionaires, as compared with those who have no real set schedule. \n\nHigh-achievers have clear goals, specific plans, and hard deadlines. And when you’re setting goals, don’t be afraid to think big.", sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2018/07/05/habits-to-start-if-you-want-to-get-rich.html", sponsorLogo: "", sponsorURL: "")


//WEEK 2
//MON
let mondayNow9to11Week2Tip1 = Tip(header: "Feeling Anxious?", title: "Study: Monday is the most anxious day of the week", body: "Analysis of Google Searches: People searched for the term \"anxiety\" the most on Monday, followed by Tuesday, Wednesday, and Thursday. \n\nFeeling anxious today? It's okay, you're not alone." , sourceName: "The Washington Post", sourceURL: "https://www.washingtonpost.com/news/wonk/wp/2014/12/03/the-google-misery-index-the-times-of-year-were-most-depressed-anxious-and-stressed/?utm_term=.ce96d202a3f3", sponsorLogo: "", sponsorURL: "")
let mondayNow9to11Week2Tip2 = Tip(header: "Millionaire Habit 📝", title: "Make a daily to-do list", body: "Study: 81%% of rich people vs. only 19% of poor people maintain a daily to-do list. \n\nAnd 67% of rich people complete 70%+ of their listed tasks each day." , sourceName: "Entrepreneur", sourceURL: "https://www.entrepreneur.com/article/235228", sponsorLogo: "", sponsorURL: "")
let mondayNow9to11Week2Tip3 = Tip(header: "CEO Advice 📝", title: "Find great business ideas: Every day, write down a few frustrations. And then at the end of the week, you'll have maybe 10 problems", body: "By the end of the month, maybe you have 40 to 50 problems. \n\nAnd then you can spend time thinking about: Is there a viable business in solving any of these everyday frustrations?" , sourceName: "Business Insider", sourceURL: "", sponsorLogo: "", sponsorURL: "")
let mondayNow9to11Week2Tip4 = Tip(header: "Prevent Weight Gain", title: "Eat lunch around noon (or earlier)", body: "Study: Later meal timing was associated with: \n• higher body mass index \n• greater body fat" , sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2019/03/190323145204.htm", sponsorLogo: "", sponsorURL: "")

//TUE
let tuesdayNow9to11Week2Tip1 = Tip(header: "In a bad mood today? 😤", title: "It's okay, you're not alone", body: "Analysis of Google Searches: People searched for the terms \"anxiety\", \"depression\", \"stress\", \"fatigue\", and \"pain\" the most on Tuesday and Wednesday, making them tied for the most miserable days of the week." , sourceName: "The Washington Post", sourceURL: "https://www.washingtonpost.com/news/wonk/wp/2014/12/03/the-google-misery-index-the-times-of-year-were-most-depressed-anxious-and-stressed/?utm_term=.ce96d202a3f3", sponsorLogo: "", sponsorURL: "")
let tuesdayNow9to11Week2Tip2 = Tip(header: "Lose Weight", title: "For people who are trying to lose weight, eat most of your calories earlier in the day and then consume less at night", body: "Studies have found that when people eat more at night, they put on more weight." , sourceName: "Vox", sourceURL: "https://www.vox.com/2016/2/17/11034546/eating-late-night-bad-diet", sponsorLogo: "", sponsorURL: "")
let tuesdayNow9to11Week2Tip3 = Tip(header: "Sleep Better Tonight ☀️", title: "Get sun exposure within 2 hours of waking up", body: "Morning sun exposure helps your circadian clock to reset itself for a new day and will help you fall asleep tonight." , sourceName: "SUCCESS Magazine", sourceURL: "https://www.success.com/the-new-secrets-of-perfect-sleep/", sponsorLogo: "", sponsorURL: "")
let tuesdayNow9to11Week2Tip4 = Tip(header: "Productivity", title: "If you want to receive less email, send less emails", body: "LinkedIn CEO Jeff Weiner's golden rule for email management, is, don't send an email unless absolutely necessary. When you send an email, your inbox fills up with the responses from your emails and with the responses of the people who were added to those threads." , sourceName: "Inc.", sourceURL: "https://www.inc.com/business-insider/email-habits-of-successful-executives.html", sponsorLogo: "", sponsorURL: "")

//WED
let wednesdayNow9to11Week2Tip1 = Tip(header: "Live Longer", title: "Get \"smart\" sun exposure (about 15 minutes on the legs and arms) each day", body: "Sun exposure helps your body produce vitamin D for strong bones and healthy body function. \n\nVitamin D deficiency is associated with a host of problems, such as osteoporosis and heart disease.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")
let wednesdayNow9to11Week2Tip2 =  Tip(header: "Increase Confidence", title: "Make eye contact. Maintaining eye contact communicates to others that you're honest, approachable and confident.", body: "Those who aren't able to maintain eye contact or are the first to break eye contact signal that they're hiding something, feeling uncomfortable, or projecting a lower-status than or submissiveness to the person they're speaking with.", sourceName: "American Express", sourceURL: "https://www.americanexpress.com/en-us/business/trends-and-insights/articles/4-ways-your-body-language-can-project-confidence/", sponsorLogo: "", sponsorURL: "")
let wednesdayNow9to11Week2Tip3 = Tip(header: "Live Longer", title: "Drink coffee or tea", body: "Both coffee and tea drinkers benefit from a 20–30% lower risk of early death, from cancer and disease, compared to non-drinkers. \n\nHowever, too much caffeine can also lead to anxiety and insomnia, so limit your intake to around 4 cups per day." , sourceName: "Healthline", sourceURL: "https://www.healthline.com/nutrition/13-habits-linked-to-a-long-life", sponsorLogo: "", sponsorURL: "")
let wednesdayNow9to11Week2Tip4 = Tip(header: "Prevent Wrinkles", title: "Wear UV sunglasses (even on cloudy days)", body: "Squinting can cause overuse of the facial muscles, causing wrinkles. UV sunglasses can help block out UV rays, protecting not only your vision, but your skin." , sourceName: "Bustle", sourceURL: "https://www.bustle.com/articles/193394-7-weird-but-effective-habits-that-help-prevent-wrinkles", sponsorLogo: "", sponsorURL: "")

//THU
let thursdayNow9to11Tip1 = Tip(header: "Increase Happiness", title: "Practice Random Acts of Kindness", body: "• Open the door for someone \n\n• Say \"hello\" with a smile \n\n• Say \"thank you\" with a smile \n\n• Bring coffee to a co-worker \n\n• Call or text friends to tell them you're thinking about them" , sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")
let thursdayNow9to11Tip2 = Tip(header: "Limit Your Time On Social Media", title: "Even the CEO of Twitter, Jack Dorsey, limits his use of Twitter to 2 hours a day", body: "Dorsey limits his use of Twitter with help from Screen Time, the iPhone feature that you can activate to restrict how long you spend on certain apps." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/jack-dorsey-iphone-screen-time-feature-2-hour-twitter-limit-2019-10", sponsorLogo: "", sponsorURL: "")
let thursdayNow9to11Tip3 = Tip(header: "Improve Memory", title: "Study: Brief 3 minute walking breaks during an 8-hour day of prolonged sitting can boost your short-term memory compared to uninterrupted sitting", body: "The study highlights that uninterrupted sitting should be avoided to maintain optimal cognition across the day, and that moderate-intensity exercise such as a brisk walk should be encouraged for the daily maintenance of brain health." , sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2019/04/190429154529.htm", sponsorLogo: "", sponsorURL: "")
let thursdayNow9to11Tip4 = Tip(header: "Be More Likable", title: "People like being greeted with a Happy Hello", body: "Study: People rated how much they liked (or didn’t like) a person based on the sound of their “hello”: \n• Normal Hello \n• Happy Hello \n• Sad Hello \n• Angry Hello \n\nResults found the most likable “hello” was the Happy Hello and the least likable “hello” was the Angry Hello. \n\nYour mood affects your voice. We like hearing happy moods and we don’t like hearing irritable moods. \n\nReserve your phone calls for when you’re in a quiet place, you’re calm and you’re settled. Resist the urge to answer when you’re having a bad day." , sourceName: "Science Of People", sourceURL: "https://www.scienceofpeople.com/how-to-be-confident/", sponsorLogo: "", sponsorURL: "")

//FRI
let fridayNow9to11Tip1 = Tip(header: "Increase Happiness", title: "Happiness and unhappiness are contagious, and they both start with you", body: "We like people who care about us, who really listen to us, and who are generous with their time and resources. \n\n• Give at least 3 positive comments for each negative comment you speak.", sourceName: "The Blue Zones of Happiness: Lessons From the World's Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")

let fridayNow9to11Tip2 = Tip(header: "Improve Health", title: "DO: Breathe through your nose \nDON'T: Breath through your mouth", body: "Nose breathing is a major line of defense against airborne pathogens. The nostrils, hair and nasal passageways are designed to assist in filtering allergens and foreign bodies from entering the lungs. \n\nThe mouth has no defense system. \n\nBy nose breathing you may experience decreasing allergies or colds." , sourceName: "The Washington Post", sourceURL: "https://www.washingtonpost.com/lifestyle/wellness/when-it-comes-to-breathing-during-exercise-youre-probably-doing-it-wrong/2019/01/23/b4d3c338-1e59-11e9-8b59-0a28f2191131_story.html", sponsorLogo: "", sponsorURL: "")
let fridayNow9to11Tip3 = Tip(header: "Prevent Illness", title: "Reduce the spread of respiratory diseases:", body: "• Avoid touching your eyes, nose, and mouth. \n\n• Cover your cough or sneeze with a tissue, then throw the tissue in the trash. \n\n• Clean and disinfect frequently touched objects and surfaces using a regular household cleaning spray or wipe. \n\n• Wash your hands often with soap and water for at least 20 seconds, especially after going to the bathroom; before eating; and after blowing your nose, coughing, or sneezing. \n\n• If soap and water are not readily available, use an alcohol-based hand sanitizer with at least 60% alcohol. \n\n• Avoid close contact with people who are sick." , sourceName: "CDC: Centers for Disease Control and Prevention", sourceURL: "https://www.cdc.gov/coronavirus/2019-ncov/about/prevention-treatment.html", sponsorLogo: "", sponsorURL: "")

//WEEK 3

//WEEK 4

//WEEK 1
// MON
let weekdayNow9to11TipArray0 = [weekdayNow9to11Tip0, weekdayNow9to11Tip1, weekdayNow9to11Tip2, weekdayNow9to11Tip3]
let mondayNow9to11Topic1 = Topic(title: weekdayNow9to11Title, icon: weekdayNow9to11Icon, tip: weekdayNow9to11TipArray0)
// TUE
let weekdayNow9to11TipArray1 = [weekdayNow9to11Tip4, weekdayNow9to11Tip5, weekdayNow9to11Tip6, weekdayNow9to11Tip7]
let tuesdayNow9to11Topic1 = Topic(title: weekdayNow9to11Title, icon: weekdayNow9to11Icon, tip: weekdayNow9to11TipArray1)
// WED
let weekdayNow9to11TipArray2 = [wednesdayNow9to11Week2Tip1, weekdayNow9to11Tip9, weekdayNow9to11Tip10, weekdayNow9to11Tip11]
let wednesdayNow9to11Topic1 = Topic(title: weekdayNow9to11Title, icon: weekdayNow9to11Icon, tip: weekdayNow9to11TipArray2)
// THU
let weekdayNow9to11TipArray3 = [weekdayNow9to11Tip12, weekdayNow9to11Tip13, weekdayNow9to11Tip14, weekdayNow9to11Tip15]
let thursdayNow9to11Topic1 = Topic(title: weekdayNow9to11Title, icon: weekdayNow9to11Icon, tip: weekdayNow9to11TipArray3)
// FRI
let weekdayNow9to11TipArray4 = [weekdayNow9to11Tip16, weekdayNow9to11Tip17, weekdayNow9to11Tip18, weekdayNow9to11Tip19]
let fridayNow9to11Topic1 = Topic(title: weekdayNow9to11Title, icon: weekdayNow9to11Icon, tip: weekdayNow9to11TipArray4)

//WEEK 2
// MON
let weekdayNow9to11TipArray5 = [mondayNow9to11Week2Tip1, mondayNow9to11Week2Tip2, mondayNow9to11Week2Tip3, mondayNow9to11Week2Tip4]
let mondayNow9to11Topic2 = Topic(title: weekdayNow9to11Title, icon: weekdayNow9to11Icon, tip: weekdayNow9to11TipArray5)
// TUE
let weekdayNow9to11TipArray6 = [tuesdayNow9to11Week2Tip1, tuesdayNow9to11Week2Tip2, tuesdayNow9to11Week2Tip3, tuesdayNow9to11Week2Tip4]
let tuesdayNow9to11Topic2 = Topic(title: weekdayNow9to11Title, icon: weekdayNow9to11Icon, tip: weekdayNow9to11TipArray6)
// WED
let weekdayNow9to11TipArray7 = [wednesdayNow9to11Week2Tip1, wednesdayNow9to11Week2Tip2, wednesdayNow9to11Week2Tip3, wednesdayNow9to11Week2Tip4]
let wednesdayNow9to11Topic2 = Topic(title: weekdayNow9to11Title, icon: weekdayNow9to11Icon, tip: weekdayNow9to11TipArray7)
// THU
let weekdayNow9to11TipArray8 = [thursdayNow9to11Tip1, thursdayNow9to11Tip2, thursdayNow9to11Tip3, thursdayNow9to11Tip4]
let thursdayNow9to11Topic2 = Topic(title: weekdayNow9to11Title, icon: weekdayNow9to11Icon, tip: weekdayNow9to11TipArray8)
// FRI (WIP - 1)
let weekdayNow9to11TipArray9 = [fridayNow9to11Tip1, fridayNow9to11Tip2, fridayNow9to11Tip3, weekdayNow9to11Tip19]


/////////////////
//RANDOM - MON
let mondayNow9to11TipArrays = [weekdayNow9to11TipArray0, weekdayNow9to11TipArray5]
let mondayNow9to11Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: mondayNow9to11TipArrays.random())

//RANDOM - TUE
let tuesdayNow9to11TipArrays = [weekdayNow9to11TipArray1, weekdayNow9to11TipArray6]
let tuesdayNow9to11Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: tuesdayNow9to11TipArrays.random())

//RANDOM - WED
let wednesdayNow9to11TipArrays = [weekdayNow9to11TipArray2, weekdayNow9to11TipArray7]
let wednesdayNow9to11Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: wednesdayNow9to11TipArrays.random())

//RANDOM - THU
let thursdayNow9to11TipArrays = [weekdayNow9to11TipArray3, weekdayNow9to11TipArray8]
let thursdayNow9to11Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: thursdayNow9to11TipArrays.random())

//RANDOM - FRI
let fridayNow9to11TipArrays = [weekdayNow9to11TipArray4, weekdayNow9to11TipArray9]
let fridayNow9to11Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: fridayNow9to11TipArrays.random())








let fridayNow9to11Topic2 = Topic(title: weekdayNow9to11Title, icon: weekdayNow9to11Icon, tip: weekdayNow9to11TipArray9)




//WEEK 3
// MON (WIP - 4)
let weekdayNow9to11TipArray10 = [weekdayNow9to11Tip0, weekdayNow9to11Tip1, weekdayNow9to11Tip2, weekdayNow9to11Tip3]
let mondayNow9to11Topic3 = Topic(title: weekdayNow9to11Title, icon: weekdayNow9to11Icon, tip: weekdayNow9to11TipArray10)
// TUE (WIP - 4)
let weekdayNow9to11TipArray11 = [weekdayNow9to11Tip4, weekdayNow9to11Tip5, weekdayNow9to11Tip6, weekdayNow9to11Tip7]
let tuesdayNow9to11Topic3 = Topic(title: weekdayNow9to11Title, icon: weekdayNow9to11Icon, tip: weekdayNow9to11TipArray11)
// WED (WIP - 4)
let weekdayNow9to11TipArray12 = [wednesdayNow9to11Week2Tip1, weekdayNow9to11Tip9, weekdayNow9to11Tip10, weekdayNow9to11Tip11]
let wednesdayNow9to11Topic3 = Topic(title: weekdayNow9to11Title, icon: weekdayNow9to11Icon, tip: weekdayNow9to11TipArray12)
// THU (WIP - 4)
let weekdayNow9to11TipArray13 = [weekdayNow9to11Tip12, weekdayNow9to11Tip13, weekdayNow9to11Tip14, weekdayNow9to11Tip15]
let thursdayNow9to11Topic3 = Topic(title: weekdayNow9to11Title, icon: weekdayNow9to11Icon, tip: weekdayNow9to11TipArray13)
// FRI (WIP - 4)
let weekdayNow9to11TipArray14 = [weekdayNow9to11Tip16, weekdayNow9to11Tip17, weekdayNow9to11Tip18, weekdayNow9to11Tip19]
let fridayNow9to11Topic3 = Topic(title: weekdayNow9to11Title, icon: weekdayNow9to11Icon, tip: weekdayNow9to11TipArray14)

//WEEK 4
// MON (WIP - 4)
let weekdayNow9to11TipArray15 = [mondayNow9to11Week2Tip1, mondayNow9to11Week2Tip2, mondayNow9to11Week2Tip3, mondayNow9to11Week2Tip4]
let mondayNow9to11Topic4 = Topic(title: weekdayNow9to11Title, icon: weekdayNow9to11Icon, tip: weekdayNow9to11TipArray15)
// TUE (WIP - 4)
let weekdayNow9to11TipArray16 = [tuesdayNow9to11Week2Tip1, tuesdayNow9to11Week2Tip2, tuesdayNow9to11Week2Tip3, tuesdayNow9to11Week2Tip4]
let tuesdayNow9to11Topic4 = Topic(title: weekdayNow9to11Title, icon: weekdayNow9to11Icon, tip: weekdayNow9to11TipArray16)
// WED (WIP - 4)
let weekdayNow9to11TipArray17 = [wednesdayNow9to11Week2Tip1, wednesdayNow9to11Week2Tip2, wednesdayNow9to11Week2Tip3, wednesdayNow9to11Week2Tip4]
let wednesdayNow9to11Topic4 = Topic(title: weekdayNow9to11Title, icon: weekdayNow9to11Icon, tip: weekdayNow9to11TipArray17)
// THU (WIP - 4)
let weekdayNow9to11TipArray18 = [thursdayNow9to11Tip1, weekdayNow9to11Tip13, thursdayNow9to11Tip2, weekdayNow9to11Tip15]
let thursdayNow9to11Topic4 = Topic(title: weekdayNow9to11Title, icon: weekdayNow9to11Icon, tip: weekdayNow9to11TipArray18)
// FRI (WIP - 4)
let weekdayNow9to11TipArray19 = [weekdayNow9to11Tip16, weekdayNow9to11Tip17, weekdayNow9to11Tip18, weekdayNow9to11Tip19]
let fridayNow9to11Topic4 = Topic(title: weekdayNow9to11Title, icon: weekdayNow9to11Icon, tip: weekdayNow9to11TipArray19)

//WEEK 5
// MON (WIP - 4)
let weekdayNow9to11TipArray20 = [mondayNow9to11Week2Tip2, mondayNow9to11Week2Tip1,  mondayNow9to11Week2Tip3, mondayNow9to11Week2Tip4]
let mondayNow9to11Topic5 = Topic(title: weekdayNow9to11Title, icon: weekdayNow9to11Icon, tip: weekdayNow9to11TipArray20)
// TUE (WIP - 4)
let weekdayNow9to11TipArray21 = [tuesdayNow9to11Week2Tip2, tuesdayNow9to11Week2Tip1, tuesdayNow9to11Week2Tip3, tuesdayNow9to11Week2Tip4]
let tuesdayNow9to11Topic5 = Topic(title: weekdayNow9to11Title, icon: weekdayNow9to11Icon, tip: weekdayNow9to11TipArray21)
// WED (WIP - 4)
let weekdayNow9to11TipArray22 = [wednesdayNow9to11Week2Tip2, wednesdayNow9to11Week2Tip1, wednesdayNow9to11Week2Tip3, wednesdayNow9to11Week2Tip4]
let wednesdayNow9to11Topic5 = Topic(title: weekdayNow9to11Title, icon: weekdayNow9to11Icon, tip: weekdayNow9to11TipArray22)
// THU (WIP - 4)
let weekdayNow9to11TipArray23 = [weekdayNow9to11Tip13, thursdayNow9to11Tip1, weekdayNow9to11Tip14, weekdayNow9to11Tip15]
let thursdayNow9to11Topic5 = Topic(title: weekdayNow9to11Title, icon: weekdayNow9to11Icon, tip: weekdayNow9to11TipArray23)
// FRI (WIP - 4)
let weekdayNow9to11TipArray24 = [weekdayNow9to11Tip17, weekdayNow9to11Tip16, weekdayNow9to11Tip18, weekdayNow9to11Tip19]
let fridayNow9to11Topic5 = Topic(title: weekdayNow9to11Title, icon: weekdayNow9to11Icon, tip: weekdayNow9to11TipArray24)


// MARK: - Now, Weekday, 11to13

let weekdayNow11to14Title = nowTipTitle
let weekdayNow11to14Icon = "Now"

//WEEK 1
// MON
let weekdayNow11to14Tip0 =  Tip(header: "Stay Alert", title: "Drinking water keeps you alert during the day", body: "Dehydration is the single most common cause of daytime fatigue. \n\nA 2% dehydration level can trigger short-term memory problems and difficulty focusing on a computer screen or printed page." , sourceName: "Shape", sourceURL: "https://www.shape.com/healthy-eating/healthy-drinks/6-reasons-drinking-water-helps-solve-any-problem", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow11to14Tip1 = Tip(header: "Be Happier And More Productive At Work", title: "Take multiple walking breaks", body: "Taking a walk will get your muscles moving and the oxygen flowing, and it also allows you to clear your head.", sourceName: "Huffington Post", sourceURL: "https://www.businessinsider.com/successful-people-do-during-afternoon-lull-2014-4", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow11to14Tip2 = Tip(header: "Don't Multitask", title: "Multitasking lowers productivity by 40%, increases the chance of errors by up to 50%, and increases the time to complete a task by 50%", body: "On average, it can take up to 25 minutes to resume the task after being interrupted. \n\nFocus on one thing exclusively, and you’ll find yourself completing it much faster." , sourceName: "Inc.", sourceURL: "https://www.inc.com/laura-montini/infographic/the-high-cost-of-multitasking.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow11to14Tip3 = Tip(header: "Stay Calm 😰", title: "The next time you get stressed at work, pause before you respond", body: "The more something makes you mad or causes your heart to race, the more important it is to take a deep breath before speaking or typing a single word because you risk making the situation worse." , sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/advice/work-career/successful-people-habits-work/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

// TUE
//// TUESDAY, 11AM-1PM
let tuesdayNow11to14Tip0 = Tip(header: "Stay Calm 😰", title: "Survey: 11:45 AM on Tuesday is the most stressful time of the workweek", body: "Tuesday is when workers are most likely to work through their lunch break and stay late at work. \n\nEating healthy foods and drinking enough water keeps your energy levels high when you're busy." , sourceName: "The Telegraph", sourceURL: "https://www.telegraph.co.uk/news/newstopics/howaboutthat/5113653/Tuesday-at-1145-is-most-stressful-time-of-the-week-survey-suggests.html", sponsorLogo: "", sponsorURL: "")//Tuesday-specific
let weekdayNow11to14Tip4 = Tip(header: "Improve Performance 🚰", title: "Drinking 8 to 10 cups of water per day can improve your levels of cognitive performance by 30%", body: "A dehydration level of just 1% of your body weight reduces thinking functions, so staying well-hydrated is important for your mental performance." , sourceName: "Shape", sourceURL: "https://www.shape.com/healthy-eating/healthy-drinks/6-reasons-drinking-water-helps-solve-any-problem", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow11to14Tip5 = Tip(header: "Look Confidence", title: "When standing, imagine a string pulling your head up toward the sky:", body: "• Keep your legs aligned with your shoulders. \n• Keep your feet approximately 4-6 inches apart. \n• Distribute your weight equally on both legs. \n• Keep your shoulders back—but not way back. \n• Turn your body towards others. \n\nAvoid standing in a \"submissive position\": \n• Legs crossed \n• Hands folded in front of you \n• Weight pressed down on one hip", sourceName: "American Express", sourceURL: "https://www.americanexpress.com/en-us/business/trends-and-insights/articles/4-ways-your-body-language-can-project-confidence/", sponsorLogo: "", sponsorURL: "")
let weekdayNow11to14Tip6 = Tip(header: "Work Smarter 🗣", title: "Wear large, over-the-ear headphones to help block out unwanted noise", body: "Workers lose as much as 86 minutes per day due to noise distractions. \n\nEmployees should speak to an office manager or human resources director on this issue." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2015/03/stop-noise-from-ruining-your-open-office", sponsorLogo: "TBD", sponsorURL: "www.test.com")

// WED
let weekdayNow11to14Tip7 = Tip(header: "Warning", title: "The more you use Facebook/social media, the worse you feel", body: "While real-world social networks were positively associated with overall well-being, the use of Facebook was negatively associated with overall well-being. \n\nLiking others’ content and clicking links significantly predicted a reduction in self-reported physical health, mental health, and life satisfaction." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2017/04/a-new-more-rigorous-study-confirms-the-more-you-use-facebook-the-worse-you-feel", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow11to14Tip8 = Tip(header: "Increase Focus and Mood", title: "Listen to nature sounds while you work. Nearby speech distracts 48% of office workers", body: "Sounds of nature can mask intelligible speech just as well as white noise while also enhancing cognitive functioning, optimizing the ability to concentrate, and increasing overall worker satisfaction." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/the-best-music-for-productivity-2015-7", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow11to14Tip9 = Tip(header: "Increase Productivity", title: "Study: Increase productivity up to 15% by decorating your office with plants or pictures of your family or pet", body: "Seeing plants around you can improve morale, increase satisfaction with your work, and make you more patient. \n\nSet your screensaver or web browser to display nature images." , sourceName: "Inc.", sourceURL: "https://www.inc.com/john-rampton/15-ways-to-increase-productivity-at-work.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow11to14Tip10 = Tip(header: "Be Confident", title: "Stand tall, with your neck elongated, ears and shoulders aligned, chest slightly sticking out, and legs slightly apart", body: "This changes the chemicals in our brain to make us feel stronger and more confident, and it gives the outward appearance of credibility, strength, and vitality." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/common-body-language-mistakes-employees-make-2014-4", sponsorLogo: "TBD", sponsorURL: "www.test.com")

// THUR
let weekdayNow11to14Tip11 = Tip(header: "Be Confident", title: "Holding eye contact while speaking denotes authority, confidence, and has an enormous impact on your ability to persuade", body: "Lack of eye contact often implies deception. When breaking eye contact, it is better to break off to the left or to the right, as looking down suggests insecurity." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/common-body-language-mistakes-employees-make-2014-4", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow11to14Tip12 = Tip(header: "Get Some Sun ☀️", title: "Spending 20 minutes outside in good weather improves: \n• Mood \n• Memory \n• Thinking", body: "20 minutes is a short enough time to spend outside that you could fit it into your your lunch break or afternoon break." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/belle-beth-cooper/10-simple-things-to-be-happy_b_4241824.html", sponsorLogo: "", sponsorURL: "")
let weekdayNow11to14Tip13 = Tip(header: "Reduce Distractions 📵", title: "Research: Our maximum attention span these days is 15 minutes", body: "• Silence your phone and turn it facedown \n\n• Don't check your emails, texts, or social media \n\n• Concentrate on one task for 15-30 minutes" , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/psychologist-gives-tip-for-staying-focused-2015-11", sponsorLogo: "", sponsorURL: "")
let weekdayNow11to14Tip14 = Tip(header: "Reduce Stress 🌬", title: "Do 45 seconds of controlled breathing", body: "• Breath in deeply, expanding your belly \n\n• Pause \n\n• Exhale slowly to the count of 5 \n\n• Repeat 4 times \n\nControlled breathing: \n• Reduces your stress hormones \n • Sharpens your thinking \n• Improves your immune system" , sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/", sponsorLogo: "", sponsorURL: "")

// FRI
let weekdayNow11to14Tip15 = Tip(header: "Don't Multitask", title: "Research: Heavy multitaskers have reduced memory", body: "If you’re multitasking while doing something significant, like an academic paper or work project, you’ll be slower to complete it and you might be less successful." , sourceName: "Stanford University", sourceURL: "https://news.stanford.edu/2018/10/25/decade-data-reveals-heavy-multitaskers-reduced-memory-psychologist-says/", sponsorLogo: "", sponsorURL: "")
let weekdayNow11to14Tip16 = Tip(header: "Burn Calories 🔥", title: "Burn calories while sitting by fidgeting (tapping feet and fingers, twirling hair, and gesturing while speaking)", body: "Research: Lean people fidget for about 150 minutes a day more than obese people do. \n\nFidgeting can burn 350 calories a day, which translates into 10-30 pounds a year. \n\nLong periods of sitting increases the risk of obesity, heart disease, and cancer." , sourceName: "Lifehacker", sourceURL: "https://lifehacker.com/5323740/use-neat-activities-to-burn-more-calories", sponsorLogo: "", sponsorURL: "")
let weekdayNow11to14Tip17 = Tip(header: "Live Healthier", title: "\"Box breathing\" reduces stress and helps you keep cool under pressure", body: "Focusing on your breath is one of the simplest ways to relax. \n\n• Count to 4 as you inhale \n• Hold for 4 \n• Count to 4 as you exhale \n• Hold for 4 \n• Repeat 4x4x4x4" , sourceName: "Curiosity", sourceURL: "https://curiosity.com/topics/box-breathing-is-the-navy-seal-technique-for-reducing-stress-and-staying-calm-curiosity/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow11to14Tip18 = Tip(header: "Increase Confidence", title: "How to increase confidence", body: "• Sit up straight \n\n• Smile (smiling causes your brain to release endorphins which causess you to feel happy) \n\n• Nod your head up-and-down (the movement signals positive thoughts in your brain) \n\n• Visualize yourself scoring the winning goal or going through a tough workout (you first need to win in your head; only then can you win in the battleground) \n\n• Stand for 2 minutes in a wide stance with your hands in the air \n\n• Listen to heavy-bass songs \n\n• Spray on our favorite fragrance (Study: It makes you feel more confident)", sourceName: "Greatist", sourceURL: "https://greatist.com/grow/easy-confidence-boosters", sponsorLogo: "", sponsorURL: "")



//WEEK 2
//MON
let weekdayNow11to14Tip19 = Tip(header: "Live Smarter", title: "Frequent short breaks are more effective than irregular breaks", body: "The ideal break also involves movement. \n\nStudy: 5-minute walking breaks each hour boosted energy levels, sharpened focus and improved mood throughout the day, and reduced feelings of fatigue in the late afternoon. \n\nThese \"microbursts of activity,\" as the researchers called them, were also more valuable than a single 30-minute walking break." , sourceName: "The Wall Street Journal", sourceURL: "https://www.wsj.com/articles/how-to-be-healthier-happier-and-more-productive-its-all-in-the-timing-1514560647", sponsorLogo: "", sponsorURL: "")
let weekdayNow11to14Tip20 = Tip(header: "Increase Energy 😴", title: "In the afternoon, adenosine (sleep hormone) is high and cortisol (hormone that supports alertness) is low", body: "Some people feel less energetic for this reason and might benefit from gentle exercise, meditation or a nap. \n\nIf you feel completely wiped out in the afternoon, you should consult with your doctor because it could be a sign of underlying health issues." , sourceName: "American Council on Exercise", sourceURL: "https://www.acefitness.org/education-and-resources/professional/expert-articles/6929/when-is-the-best-time-of-day-to-exercise", sponsorLogo: "", sponsorURL: "")
let weekdayNow11to14Tip21 = Tip(header: "Look Confident", title: "Strong eye contact is the single greatest indicator of confidence. \n\nIn contrast, breaking eye contact suggests submissiveness", body: "Study: Eye contact shows a person’s social hierarchy and dominance in a conversation. \n\nPeople who are at the top of the pecking order tend to look longer at their subject. \n\nCreate an emotional connection with someone by making eye contact 60%-70% of the time.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/body-language-tricks-appear-more-confident-2016-3#-1", sponsorLogo: "", sponsorURL: "")
let weekdayNow11to14Tip22 = Tip(header: "Lower Your Risk Of Skin Cancer ☀️", title: "Reduce sun exposure between 10 a.m. and 4 p.m.", body: "Having 5+ sunburns during your lifetime doubles your risk of melanoma, the deadliest form of skin cancer. If you have to be outside during this time: \n\n• Work in the shade \n\n• Apply (and reapply) sunscreen \n\n• Wear a wide-brimmed hat that protects your face and neck", sourceName: "Raleigh Medical Group", sourceURL: "https://www.raleighmedicalgroup.com/blog/entryid/185/skin-cancer-prevention", sponsorLogo: "", sponsorURL: "")

//TUES
let weekdayNow11to14Tip23 = Tip(header: "Live Longer", title: "Add more movement into your life by living in neighborhoods with sidewalks, commuting to places by bike, and planting a garden each spring", body: "Study of 100+ year-olds in Greece: They exercised mindlessly, but just gardening, walking to their neighbor's house, or doing their own yard work.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")
let weekdayNow11to14Tip24 = Tip(header: "Improve Mood And Productivity 🎶", title: "Listen to music you like, especially songs without lyrics", body: "Research: People who listened to music they enjoyed completed their tasks more quickly and came up with better ideas than those who didn't because the music improved their mood. \n\nMusic is also effective in raising efficiency in repetitive work." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/the-best-music-for-productivity-2015-7", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow11to14Tip25 = Tip(header: "Increase Happiness", title: "Research: Practicing gratitude immediately boosts your mood", body: "Quickly think of 1-3 things you're thankful for, whether its for your family and friends, your health, or the nice weather." , sourceName: "The Thirty", sourceURL: "https://thethirty.byrdie.com/mindfulness-tips-ideas", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow11to14Tip26 = Tip(header: "Increase Confidence", title: "Keep your chin and head up at all times", body: "Confident people are always looking up, never down at the table, the ground, or their feet. \n\nPretend that there's a string holding the top of your head up.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/body-language-tricks-appear-more-confident-2016-3#-1", sponsorLogo: "", sponsorURL: "")

//WED
let weekdayNow11to14Tip27 = Tip(header: "Daily Habit", title: "The Boy Scouts motto was to do a good turn every day. Seneca wrote, “Wherever there is a human being, we have an opportunity for kindness.”", body: "Your co-workers are a chance for kindness. Your partner is a chance for kindness. The delivery person is a chance for kindness. \n\nStart with one. Practice one kindness every day. It will make the world better if you do." , sourceName: "Ryan Holiday", sourceURL: "https://ryanholiday.net/13-life-changing-habits-to-try-and-do-every-single-day/", sponsorLogo: "", sponsorURL: "")
let weekdayNow11to14Tip28 = Tip(header: "Live Longer", title: "Drink 5-6 glasses of water every day", body: "Study: Men who drank 5-6 daily glasses of water had a substantial reduction in the risk of a fatal heart attack - 60% to 70% - compared to those who drank considerably less.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")
let weekdayNow11to14Tip29 = Tip(header: "Increase Confidence", title: "DO: Stand up straight \nDON'T: Slouch", body: "Roll both shoulders back and avoid looking tense by allowing your upper body muscles to relax while maintaining firmness in your core.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/body-language-tricks-appear-more-confident-2016-3#-1", sponsorLogo: "", sponsorURL: "")
let weekdayNow11to14Tip30 =  Tip(header: "In a bad mood today? 😤", title: "It's okay, you're not alone", body: "Analysis of Google Searches: People searched for the terms \"anxiety\", \"depression\", \"stress\", \"fatigue\", and \"pain\" the most on Tuesday and Wednesday, making them tied for the most miserable days of the week." , sourceName: "The Washington Post", sourceURL: "https://www.washingtonpost.com/news/wonk/wp/2014/12/03/the-google-misery-index-the-times-of-year-were-most-depressed-anxious-and-stressed/?utm_term=.ce96d202a3f3", sponsorLogo: "", sponsorURL: "")



//THUR
let weekdayNow11to14Tip31 = Tip(header: "Project Confidence", title: "While sitting:", body: "• Sit with your back straight \n• Your rear toward the back of the chair \n• Your feet planted firmly on the floor \n\nThis sitting position puts the least amount of strain on supporting muscles, keeps you from back and neck pains, and helps you develop a strong core. \n\nGood posture opens your airways, which ensures proper breathing.", sourceName: "American Express", sourceURL: "https://www.americanexpress.com/en-us/business/trends-and-insights/articles/4-ways-your-body-language-can-project-confidence/", sponsorLogo: "", sponsorURL: "")
let weekdayNow11to14Tip32 = Tip(header: "🤷‍♂️", title: "Working out during the workday may be less effective than after-work workouts", body: "Researchers found that compared the performance of in-work participants to after-work participants. In-work participants attended only 26% of the group sessions, while after-work participants attended 70% of the group sessions. In-work participants exercised fewer minutes per week, exercised less vigorously, and, as a result, lost less weight than after-work participants.", sourceName: "American Institute of Mathematics Sciences (AIMS) Press", sourceURL: "http://www.aimspress.com/article/10.3934/publichealth.2017.2.189/fulltext.html", sponsorLogo: "", sponsorURL: "")

//FRI
let weekdayNow11to14Tip35 = Tip(header: "Confidence", title: "Having an upright posture in the face of stress maintains: \n\n• Positive self-esteem \n• Reduces negative mood \n• Increases positive mood", body: "Study: Upright participants reported higher self-esteem, better mood, and lower fear, compared to slumped participants. \n\nSitting upright may be a simple behavioral strategy to help build resilience to stress.", sourceName: "American Psychological Association", sourceURL: "https://psycnet.apa.org/record/2014-37739-001", sponsorLogo: "", sponsorURL: "")




//WEEK 1
// MON
let weekdayNow11to13TipArray0 = [weekdayNow11to14Tip0, weekdayNow11to14Tip1, weekdayNow11to14Tip2, weekdayNow11to14Tip3]
let mondayNow11to13Topic1 = Topic(title: weekdayNow11to14Title, icon: weekdayNow11to14Icon, tip: weekdayNow11to13TipArray0)

// TUESDAY (contains tuesday specific tip)
var tuesdayNow11to13TipArray1 = [tuesdayNow11to14Tip0, weekdayNow11to14Tip4, weekdayNow11to14Tip5, weekdayNow11to14Tip6]
let tuesdayNow11to13Topic1 = Topic(title: weekdayNow11to14Title, icon: weekdayNow11to14Icon, tip: tuesdayNow11to13TipArray1)

// WED
let weekdayNow11to13TipArray2 = [weekdayNow11to14Tip7, weekdayNow11to14Tip8, weekdayNow11to14Tip9, weekdayNow11to14Tip10]
let wednesdayNow11to13Topic1 = Topic(title: weekdayNow11to14Title, icon: weekdayNow11to14Icon, tip: weekdayNow11to13TipArray2)

// THU
let weekdayNow11to13TipArray3 = [weekdayNow11to14Tip11, weekdayNow11to14Tip12, weekdayNow11to14Tip13, weekdayNow11to14Tip14]
let thursdayNow11to13Topic1 = Topic(title: weekdayNow11to14Title, icon: weekdayNow11to14Icon, tip: weekdayNow11to13TipArray3)

// FRI
let weekdayNow11to13TipArray4 = [weekdayNow11to14Tip15, weekdayNow11to14Tip16, weekdayNow11to14Tip17, weekdayNow11to14Tip18]
let fridayNow11to13Topic1 = Topic(title: weekdayNow11to14Title, icon: weekdayNow11to14Icon, tip: weekdayNow11to13TipArray4)

//WEEK 2
//MON
let weekdayNow11to13TipArray5 = [weekdayNow11to14Tip19, weekdayNow11to14Tip20, weekdayNow11to14Tip21, weekdayNow11to14Tip22]
let mondayNow11to13Topic2 = Topic(title: weekdayNow11to14Title, icon: weekdayNow11to14Icon, tip: weekdayNow11to13TipArray5)
//TUE
let weekdayNow11to13TipArray6 = [weekdayNow11to14Tip23, weekdayNow11to14Tip24, weekdayNow11to14Tip25, weekdayNow11to14Tip26]
let tuesdayNow11to13Topic2 = Topic(title: weekdayNow11to14Title, icon: weekdayNow11to14Icon, tip: weekdayNow11to13TipArray6)
//WED
let weekdayNow11to13TipArray7 = [weekdayNow11to14Tip27, weekdayNow11to14Tip28, weekdayNow11to14Tip29, weekdayNow11to14Tip30]
let wednesdayNow11to13Topic2 = Topic(title: weekdayNow11to14Title, icon: weekdayNow11to14Icon, tip: weekdayNow11to13TipArray7)
//THUR (WIP 2)
let weekdayNow11to13TipArray8 = [weekdayNow11to14Tip31, weekdayNow11to14Tip32, weekdayNow11to14Tip13, weekdayNow11to14Tip12]
let thursdayNow11to13Topic2 = Topic(title: weekdayNow11to14Title, icon: weekdayNow11to14Icon, tip: weekdayNow11to13TipArray8)
//FRI (WIP 3)
let weekdayNow11to13TipArray9 = [weekdayNow11to14Tip35, weekdayNow11to14Tip17, weekdayNow11to14Tip16, weekdayNow11to14Tip14]
let fridayNow11to13Topic2 = Topic(title: weekdayNow11to14Title, icon: weekdayNow11to14Icon, tip: weekdayNow11to13TipArray9)

/////////////////
//RANDOM - MON
let mondayNow11to13TipArrays = [weekdayNow11to13TipArray0, weekdayNow11to13TipArray5]
let mondayNow11to13Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: mondayNow11to13TipArrays.random())

//RANDOM - TUE
let tuesdayNow11to13TipArrays = [tuesdayNow11to13TipArray1, weekdayNow11to13TipArray6]
let tuesdayNow11to13Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: tuesdayNow11to13TipArrays.random())

//RANDOM - WED
let wednesdayNow11to13TipArrays = [weekdayNow11to13TipArray2, weekdayNow11to13TipArray7]
let wednesdayNow11to13Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: wednesdayNow11to13TipArrays.random())

//RANDOM - THU
let thursdayNow11to13TipArrays = [weekdayNow11to13TipArray3, weekdayNow11to13TipArray8]
let thursdayNow11to13Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: thursdayNow11to13TipArrays.random())

//RANDOM - FRI
let fridayNow11to13TipArrays = [weekdayNow11to13TipArray4, weekdayNow11to13TipArray9]
let fridayNow11to13Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: fridayNow11to13TipArrays.random())






// MARK: - Now, Weekday, 14to16

let weekdayNow14to16Title = nowTipTitle
let weekdayNow14to16Icon = "Now"

//WEEK 1
//// MON
let weekdayNow14to16Tip0 = Tip(header: "Expert Advice", title: "Desk workers should take breaks throughout the day to stand or walk for 2 hours every day", body: "Study: Men who sat 6+ hours per day at work were 90% more likely to report moderate levels of psychological distress—say, feeling tired, nervous, restless, or hopeless—than those who sat for less time. \n\nProlonged sitting is associated with an increased risk of diabetes, obesity, and back pain.", sourceName: "Men's Health", sourceURL: "https://www.menshealth.com/health/a19841065/sitting-too-long-could-put-your-brain-health-at-risk/", sponsorLogo: "", sponsorURL: "")
let weekdayNow14to16Tip1 = Tip(header: "In A Bad Mood This Afternoon?", title: "You're not alone", body: "Research: People typically feel less happy, feel less warm toward others, and feel less positive emotions in the afternoon. \n\nWhile positive emotions and moods are typically highest in the morning and evening.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/dp/B072Q985YX/ref=dp-kindle-redirect?_encoding=UTF8&btkr=1", sponsorLogo: "", sponsorURL: "")
let weekdayNow14to16Tip2 = Tip(header: "CEO Advice 📝", title: "Before you leave work, write tomorrow's to-do list", body: "The last thing the CEO of American Express, Kenneth Chenault, does before leaving his office is to write down the top 3 things he wants to accomplish tomorrow. \n\nThen he uses the list to start his next day." , sourceName: "Inc.", sourceURL: "https://www.inc.com/business-insider/what-successful-people-do-before-they-go-to-sleep.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow14to16Tip3 = Tip(header: "Improve Performance", title: "Ask yourself how did your day go?", body: "Researchers asked a group of employees to spend 15 minutes at the end of each day to reflect on how their day went. \n\nAfter 10 days, the group of employees who spent time reflecting at the end of each day outperformed other employees who did not by 23%." , sourceName: "LinkedIn", sourceURL: "https://learning.linkedin.com/blog/learning-tips/want-to-get-better-at-your-job--build-in-time-to-reflect", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//// TUE
// Tuesday-specific tip
let weekdayNow14to16Tip4 = Tip(header: "Low on energy?", title: "Our bodies’ biological clocks create an urge to sleep in the afternoon", body: "Research: Moving your body may help you feel less bored and tired. \n\nAnd a walk outside in the sunlight and among trees and flowers may improve your focus and mood." , sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/minding-the-body/201802/5-simple-fixes-afternoon-slump-work", sponsorLogo: "", sponsorURL: "")
let weekdayNow14to16Tip5 = Tip(header: "Fix Your Posture 👩‍💻", title: "People who sit at a desk for a long period of time tend to roll their shoulders in and hang their head forward", body: "Every inch you hold your head forward, you add 10 pounds of pressure on your spine. \n\nWhen you finally do lean back again, like at the end of the day, the overworked muscles tense up, which can lead to tension headaches. \n\nTake a break from sitting every 30 minutes." , sourceName: "USA Today", sourceURL: "https://www.usatoday.com/story/money/business/2015/06/07/cheat-sheet-body-language-donts/28460019/", sponsorLogo: "", sponsorURL: "")
let weekdayNow14to16Tip6 = Tip(header: "Increase Happiness", title: "Avoid social media in the afternoon because this is when people write the most negative posts", body: "A study of Twitter posts found that the majority of negative posts occurred in the afternoon while the most positive posts occurred in the morning and evening. \n\nThis analysis suggests that our moods are driven in part by a shared biological rhythm." , sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/2011/09/30/science/30twitter.html", sponsorLogo: "", sponsorURL: "")
let weekdayNow14to16Tip7 = Tip(header: "Feeling depressed today? 😔", title: "You're not alone. People feel the most depressed on Tuesday", body: "Analysis of Google Searches: People searched for the term \"depression\" the most on Tuesday, followed by Monday, Wednesday, and Thursday." , sourceName: "The Washington Post", sourceURL: "https://www.washingtonpost.com/news/wonk/wp/2014/12/03/the-google-misery-index-the-times-of-year-were-most-depressed-anxious-and-stressed/?utm_term=.ce96d202a3f3", sponsorLogo: "", sponsorURL: "")

//// WED
let weekdayNow14to16Tip8 = Tip(header: "Stressed?", title: "Afternoons are the most stressful time of the day. Take a deep breath", body: "Study: 1:42 p.m. is the most stressful minute of the day. With high-stress levels continuing until 4:53 p.m. \n\nSurvey: 60% of respondents say they have a terrible work-life balance. \n\nPersonal chores and tiredness, along with a heavy workload, were the main reasons people said they had difficulty maintaining a balanced life." , sourceName: "Inc.", sourceURL: "https://www.inc.com/bartie-scott/most-stressful-minute-age.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow14to16Tip9 = Tip(header: "Earn More Money", title: "People with higher emotional intelligence make an average of $29,000 more per year than people with low emotional intelligence", body: "Focus on improving your skills in: \n\n• Teamwork \n• Social skills \n• Empathy \n• Anger management" , sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/travisbradberry/2014/01/09/emotional-intelligence/#1989d5691ac0", sponsorLogo: "", sponsorURL: "")
let weekdayNow14to16Tip10 = Tip(header: "Live Smarter", title: "Do administrative work between 1 PM to 3 PM because this is when our energy levels tend to be at their lowest", body: "The afternoon slump is not just something that happens if you eat a particularly heavy meal; it’s a scientifically quantifiable phenomenon. \n\nIn a 9-to-5 job format, your cognitive faculties decline significantly around 3 PM, which means you should devote those hours to the easiest work that requires the least concentration like answering your emails, data entry, or filing papers.", sourceName: "Unstuck", sourceURL: "https://www.unstuck.com/advice/time-to-get-things-done/", sponsorLogo: "", sponsorURL: "")
let weekdayNow14to16Tip11 = Tip(header: "Stay Alert", title: "2:55 p.m. is the most unproductive time of the day. Stay alert by moving your body", body: "Researchers speculated that around 2:55 p.m. workers began to hit that after-lunch lull and became more focused on what they're doing after work — and less focused on their work. \n\nWalk to the water fountain, walk around the office, walk outside to get the blood flowing, get fresh air to provide a boost of energy, and interact with co-workers to recharge your mind when fatigue begins to set in.", sourceName: "Medical Daily", sourceURL: "https://www.medicaldaily.com/least-productive-time-day-officially-determined-be-255-pm-what-you-can-do-stay-awake-246495", sponsorLogo: "", sponsorURL: "")

// THU
let weekdayNow14to16Tip12 = Tip(header: "Stay Alert 🚶‍♂️", title: "Reduce the afternoon slump by going for a walk. It'll help you generate new ideas.", body: "Brief walks, just a few minutes long, can help stimulate the brain. \n\nThe effects will help you be more creative and better able to concentrate.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/best-time-day-work-according-to-science-2018-5", sponsorLogo: "", sponsorURL: "")
let weekdayNow14to16Tip13 = Tip(header: "Burn Calories", title: "Sitting is lethal. You can burn 90 more calories an hour pacing than if you just talk while sitting", body: "If you're thinking or talking on the phone, try pacing instead of sitting. \n\nOther low-grade activity (tapping feet and fingers, twirling hair, gesturing while speaking) can burn 350 calories a day, which translates into 10-30 pounds a year." , sourceName: "Lifehacker", sourceURL: "https://lifehacker.com/5323740/use-neat-activities-to-burn-more-calories", sponsorLogo: "", sponsorURL: "")
let weekdayNow14to16Tip14 = Tip(header: "Work Smarter", title: "Study: The most productive people work for 52 minutes and then take a 17-minute break before diving back into their work", body: "During the 17 minutes of break, the most productive people were more likely to go for a walk or tune out rather than check email or Facebook." , sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/advice/work-career/successful-people-habits-work/", sponsorLogo: "", sponsorURL: "")
let weekdayNow14to16Tip15 = Tip(header: "Be Alert", title: "Receiving negative criticism has a greater impact on your emotions than receiving praise", body: "Study: It takes about 5 good events to overcome the psychological effects of a bad one. \n\nKnowing this may remind us to be kinder to others and help us better deal with the bad stuff that will inevitably happen." , sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/2012/03/24/your-money/why-people-remember-negative-events-more-than-positive-ones.html", sponsorLogo: "", sponsorURL: "")

// FRI
let weekdayNow14to16Tip16 = Tip(header: "Reduce Health Risks", title: "Move around every 30 mintues. Long periods of sitting increases your risk of developing diabetes, cancer, and death", body: "Metabolism slows down 90% after 30 minutes of sitting. \n\nJust getting up for 5 minutes is going to get things going again." , sourceName: "The Washington Post", sourceURL: "https://www.washingtonpost.com/news/wonk/wp/2015/06/02/medical-researchers-have-figured-out-how-much-time-is-okay-to-spend-sitting-each-day/?utm_term=.b8239440b685", sponsorLogo: "", sponsorURL: "")
let weekdayNow14to16Tip17 = Tip(header: "Look Confident", title: "Every time you walk through a doorway, remember to: \n• Stand up \n• Put your chin up \n• Put your shoulders back \n• Smile", body: "It's called the doorway drill. \n\nDoing it through every doorway creates a habit where your default body language and non-verbal communication is: \n• Open \n• Upright \n• Positive" , sourceName: "The Unbeatable Mind Podcast", sourceURL: "https://unbeatablemind.com/jordan-harbinger/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow14to16Tip18 = Tip(header: "Increase Happiness", title: "Spend one minute looking for positives, 3 times a day", body: "Our brain is not designed to create happiness. Unhappy chemicals, like cortisol, are used to scan for problems and survive. \n\nRewire your brain with a positivity circuit so negativity doesn't overwhelm you." , sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/womensmedia/2016/12/21/how-to-train-your-brain-to-go-positive-instead-of-negative/#404057cc5a58", sponsorLogo: "", sponsorURL: "")
let weekdayNow14to16Tip19 = Tip(header: "Calm Down", title: "Even just 3-5 minutes of slow, rhythmic breathing can train your nervous system to be more adaptive", body: "The first thing to do when feeling stressed and anxious is to slow yourself down. \n\nThe best way to do this is to take some deep breaths: inhale to a count of five and exhale to a count of five." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/health/how-effectively-manage-stress-so-it-doesn-t-hurt-your-ncna815626", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//WEEK 2

//MON
let weekdayNow14to16Tip20 = Tip(header: "Avoid Weight Gain", title: "When the afternoon slump hits and the effects of your morning coffee have worn off, go for a walk or a workout to get reenergized", body: "It's fine to drink coffee in the morning, but drinking more coffee in the afternoon to stay alert may increase your risk of weight gain. \n\nStudy: Too much caffeine can lead to insulin resistance and increased fat storage." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/healthy-home/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow14to16Tip21 = Tip(header: "Increase Confidence", title: "Study: Sitting up straight in your chair gives you more confidence in your own thoughts", body: "On the other hand, slumped over your desk gives you less confidence in your own thoughts. \n\nThe researchers found that people's thoughts are influenced by their posture, even though they don't realize that is what's happening." , sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2009/10/091005111627.htm", sponsorLogo: "", sponsorURL: "")
let weekdayNow14to16Tip22 = Tip(header: "Millionaire Habit", title: "Work 50+ hours a week", body: "Study of what rich people and poor people do every week: \n\n• 86% of rich people worked 50+ hours a week \n• 43% of poor people worked 50+ hours a week" , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/common-myths-about-rich-people-2015-6", sponsorLogo: "", sponsorURL: "")
let weekdayNow14to16Tip23 = Tip(header: "Live Longer", title: "Sitting for more than 3 hours a day can cut 2 years off your life expectancy, even if you exercise regularly", body: "• Stand up more \n• Stretch more \n• Take walking breaks" , sourceName: "Own the Day, Own Your Life", sourceURL: "https://www.amazon.com/Own-Day-Your-Life-Optimized-ebook/dp/B072HLS5QJ", sponsorLogo: "", sponsorURL: "")

//TUES
let weekdayNow14to16Tip24 = Tip(header: "Live Healthier", title: "Sit with good posture", body: "• Engage your core to straighten your back. \n\n• Rotate your pelvis forward. • Push your chin back to straighten your neck." , sourceName: "Own the Day, Own Your Life", sourceURL: "https://www.amazon.com/Own-Day-Your-Life-Optimized-ebook/dp/B072HLS5QJ", sponsorLogo: "", sponsorURL: "")
let weekdayNow14to16Tip25 = Tip(header: "Tired?", title: "Naps have been shown to consistently outperform high doses of caffeine for cognitive tasks, logical reasoning, and motor performance", body: "You are supposed to get sleepy in the afternoon; it's part of your circadian cycle. \n\nIt's a signal for your body, telling you to stop and recharge. \n\nFamous nappers include: \n• Albert Einstein \n• Thomas Edison \n• Winston Churchill" , sourceName: "Own the Day, Own Your Life", sourceURL: "https://www.amazon.com/Own-Day-Your-Life-Optimized-ebook/dp/B072HLS5QJ", sponsorLogo: "", sponsorURL: "")
let weekdayNow14to16Tip26 = Tip(header: "Increase Confidence", title: "Plant your feet in an open, wide stance that's in line with your hips and shoulders", body: "Confident people have two feet firmly planted on the ground. \n\nIt projects more confidence than if your legs are crossed or together.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/body-language-tricks-appear-more-confident-2016-3", sponsorLogo: "", sponsorURL: "")
let weekdayNow14to16Tip27 = Tip(header: "Prevent Illness", title: "Reduce the spread of respiratory diseases:", body: "• Avoid touching your eyes, nose, and mouth. \n\n• Cover your cough or sneeze with a tissue, then throw the tissue in the trash. \n\n• Clean and disinfect frequently touched objects and surfaces using a regular household cleaning spray or wipe. \n\n• Wash your hands often with soap and water for at least 20 seconds, especially after going to the bathroom; before eating; and after blowing your nose, coughing, or sneezing. \n\n• If soap and water are not readily available, use an alcohol-based hand sanitizer with at least 60% alcohol. \n\n• Avoid close contact with people who are sick." , sourceName: "CDC: Centers for Disease Control and Prevention", sourceURL: "https://www.cdc.gov/coronavirus/2019-ncov/about/prevention-treatment.html", sponsorLogo: "", sponsorURL: "")



//WED
let weekdayNow14to16Tip28 = Tip(header: "Live Longer", title: "Forgive someone right now. It significantly improves your mental well-being and physical health", body: "Research: Forgiveness reduces your risk of anxiety and depression and major psychiatric disorders. \n\nPeople who hold onto anger have a higher risk of heart disease and mortality rates. \n\nWhen you get rid of anger with forgiveness, your muscles relax, you have more energy, your immune system strengthens. \n\n• Journal with the goal on being more empathetic \n• Pray for the person who wronged you" , sourceName: "American Psychological Association", sourceURL: "https://www.apa.org/monitor/2017/01/ce-corner", sponsorLogo: "", sponsorURL: "")
let weekdayNow14to16Tip29 = Tip(header: "Increase Productivity", title: "Take a nap. Naps improve alertness, cognitive tasks, and logical reasoning", body: "30 minute naps are best. \n\nAny longer and you risk entering a deep sleep cycle - which can be disruptive if you're not able to sleep through the full 90-minute sleep cycle. \n\nFamous nappers include: \n• Albert Einstein \n• Thomas Edison \n• Winston Churchill" , sourceName: "Own the Day, Own Your Life", sourceURL: "https://www.amazon.com/Own-Day-Your-Life-Optimized-ebook/dp/B072HLS5QJ", sponsorLogo: "", sponsorURL: "")
let weekdayNow14to16Tip30 = Tip(header: "Live Longer", title: "Research: Doing these 5 lifestyle factors can add 10 years to your life without experiencing chronic health issues", body: "• Never smoking \n• 30+ minutes of daily physical activity \n• Moderate alcohol intake \n• Maintaining a moderate weight (defined as a BMI less than 25) \n• A good quality diet \n\nExperts emphasize that the most influential of these are not smoking and maintaining a moderate body weight." , sourceName: "Healthline", sourceURL: "https://www.healthline.com/health-news/healthy-habits-add-a-decade-to-your-life#The-bottom-line", sponsorLogo: "", sponsorURL: "")
let weekdayNow14to16Tip31 = Tip(header: "Live Longer", title: "Research: People who have a quicker walking pace lived longer than those who walked more slowly", body: "Women who walked more quickly lived 15 years longer than women who walked slowly. \n\nMen who walked quickly lived 20 years longer men who walked more slowly. \n\nPeople who are fit enough to walk at a moderate pace should try to pick up the pace." , sourceName: "Healthline", sourceURL: "https://www.healthline.com/health-news/people-who-walk-faster-tend-to-live-longer", sponsorLogo: "", sponsorURL: "")

//THURSDAY
 let weekdayNow14to16Tip32 = Tip(header: "Increase Confidence", title: "Improve your posture", body: "1. Stand up as TALL as you can - like you’re a puppet and somebody just pulled the string that’s attached to the top of your head. \n\n2. Pull your shoulder blades down and back as far as possible – This will feel really weird if you spend a lot of time hunched over a desk. \n\n3. Pick your chin up and look straight ahead – stop looking down while walking around.", sourceName: "Nerd Fitness", sourceURL: "https://www.nerdfitness.com/blog/5-ways-to-immediately-appear-more-confident/", sponsorLogo: "", sponsorURL: "")


//FRIDAY





//WEEK 1
//MON
let weekdayNow14to16TipArray0 = [weekdayNow14to16Tip0, weekdayNow14to16Tip1, weekdayNow14to16Tip2, weekdayNow14to16Tip3]


//TUE
let weekdayNow14to16TipArray1 = [weekdayNow14to16Tip4, weekdayNow14to16Tip5, weekdayNow14to16Tip6, weekdayNow14to16Tip7]


//WED
let weekdayNow14to16TipArray2 = [weekdayNow14to16Tip8, weekdayNow14to16Tip9, weekdayNow14to16Tip10, weekdayNow14to16Tip11]


//THU
let weekdayNow14to16TipArray3 = [weekdayNow14to16Tip12, weekdayNow14to16Tip13, weekdayNow14to16Tip14, weekdayNow14to16Tip15]


//FRI
let weekdayNow14to16TipArray4 = [weekdayNow14to16Tip16, weekdayNow14to16Tip17, weekdayNow14to16Tip18, weekdayNow14to16Tip19]


//WEEK 2
//MON
let weekdayNow14to16TipArray5 = [weekdayNow14to16Tip20, weekdayNow14to16Tip21, weekdayNow14to16Tip22, weekdayNow14to16Tip23]


//TUE
let weekdayNow14to16TipArray6 = [weekdayNow14to16Tip24, weekdayNow14to16Tip25, weekdayNow14to16Tip26, weekdayNow14to16Tip27]


//WED (WIP 1)
let weekdayNow14to16TipArray7 = [weekdayNow14to16Tip28, weekdayNow14to16Tip29, weekdayNow14to16Tip30, weekdayNow14to16Tip8]


//THU (WIP 4)
let weekdayNow14to16TipArray8 = [weekdayNow14to16Tip32, weekdayNow14to16Tip14, weekdayNow14to16Tip13, weekdayNow14to16Tip12]


//FRI (WIP 3)


/////////////////
//RANDOM - MON
let mondayNow14to16TipArrays = [weekdayNow14to16TipArray0, weekdayNow14to16TipArray5]
let mondayNow14to16Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: mondayNow14to16TipArrays.random())

//RANDOM - TUE
let tuesdayNow14to16TipArrays = [weekdayNow14to16TipArray1, weekdayNow14to16TipArray6]
let tuesdayNow14to16Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: tuesdayNow14to16TipArrays.random())

//RANDOM - WED
let wednesdayNow14to16TipArrays = [weekdayNow14to16TipArray2, weekdayNow14to16TipArray7]
let wednesdayNow14to16Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: wednesdayNow14to16TipArrays.random())

//RANDOM - THU
let thursdayNow14to16TipArrays = [weekdayNow14to16TipArray3, weekdayNow14to16TipArray8]
let thursdayNow14to16Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: thursdayNow14to16TipArrays.random())

//RANDOM - FRI
let fridayNow14to16TipArrays = [weekdayNow14to16TipArray4]
let fridayNow14to16Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: fridayNow14to16TipArrays.random())






//WEEK 3
//MON (WIP 4)
let weekdayNow14to16TipArray10 = [weekdayNow14to16Tip3, weekdayNow14to16Tip1, weekdayNow14to16Tip2, weekdayNow14to16Tip0]
let mondayNow14to16Topic3 = Topic(title: weekdayNow14to16Title, icon: weekdayNow14to16Icon, tip: weekdayNow14to16TipArray10)

//TUE (WIP 4)
let weekdayNow14to16TipArray11 = [weekdayNow14to16Tip7, weekdayNow14to16Tip5, weekdayNow14to16Tip6, weekdayNow14to16Tip4]
let tuesdayNow14to16Topic3 = Topic(title: weekdayNow14to16Title, icon: weekdayNow14to16Icon, tip: weekdayNow14to16TipArray11)

//WED (WIP 4)
let weekdayNow14to16TipArray12 = [weekdayNow14to16Tip11, weekdayNow14to16Tip9, weekdayNow14to16Tip10, weekdayNow14to16Tip8]
let wednesdayNow14to16Topic3 = Topic(title: weekdayNow14to16Title, icon: weekdayNow14to16Icon, tip: weekdayNow14to16TipArray12)

//THU (WIP 4)
let weekdayNow14to16TipArray13 = [weekdayNow14to16Tip15, weekdayNow14to16Tip13, weekdayNow14to16Tip14, weekdayNow14to16Tip12]
let thursdayNow14to16Topic3 = Topic(title: weekdayNow14to16Title, icon: weekdayNow14to16Icon, tip: weekdayNow14to16TipArray13)

//FRI (WIP 4)
let weekdayNow14to16TipArray14 = [weekdayNow14to16Tip19, weekdayNow14to16Tip17, weekdayNow14to16Tip18, weekdayNow14to16Tip16]
let fridayNow14to16Topic3 = Topic(title: weekdayNow14to16Title, icon: weekdayNow14to16Icon, tip: weekdayNow14to16TipArray14)

//WEEK 4
//MON (WIP 4)
let weekdayNow14to16TipArray15 = [weekdayNow14to16Tip22, weekdayNow14to16Tip21, weekdayNow14to16Tip20, weekdayNow14to16Tip4]
let mondayNow14to16Topic4 = Topic(title: weekdayNow14to16Title, icon: weekdayNow14to16Icon, tip: weekdayNow14to16TipArray15)

//TUE (WIP 4)
let weekdayNow14to16TipArray16 = [weekdayNow14to16Tip7, weekdayNow14to16Tip6, weekdayNow14to16Tip5, weekdayNow14to16Tip4]
let tuesdayNow14to16Topic4 = Topic(title: weekdayNow14to16Title, icon: weekdayNow14to16Icon, tip: weekdayNow14to16TipArray16)

//WED (WIP 4)
let weekdayNow14to16TipArray17 = [weekdayNow14to16Tip9, weekdayNow14to16Tip10, weekdayNow14to16Tip11, weekdayNow14to16Tip8]
let wednesdayNow14to16Topic4 = Topic(title: weekdayNow14to16Title, icon: weekdayNow14to16Icon, tip: weekdayNow14to16TipArray17)

//THU (WIP 4)
let weekdayNow14to16TipArray18 = [weekdayNow14to16Tip13, weekdayNow14to16Tip14, weekdayNow14to16Tip15, weekdayNow14to16Tip12]
let thursdayNow14to16Topic4 = Topic(title: weekdayNow14to16Title, icon: weekdayNow14to16Icon, tip: weekdayNow14to16TipArray18)

//FRI (WIP 4)
let weekdayNow14to16TipArray19 = [weekdayNow14to16Tip17, weekdayNow14to16Tip18, weekdayNow14to16Tip19, weekdayNow14to16Tip16]
let fridayNow14to16Topic4 = Topic(title: weekdayNow14to16Title, icon: weekdayNow14to16Icon, tip: weekdayNow14to16TipArray19)

//WEEK 5
//MON (WIP 4)
let weekdayNow14to16TipArray20 = [weekdayNow14to16Tip21, weekdayNow14to16Tip22, weekdayNow14to16Tip20, weekdayNow14to16Tip4]
let mondayNow14to16Topic5 = Topic(title: weekdayNow14to16Title, icon: weekdayNow14to16Icon, tip: weekdayNow14to16TipArray20)

//TUE (WIP 4)
let weekdayNow14to16TipArray21 = [weekdayNow14to16Tip6, weekdayNow14to16Tip7, weekdayNow14to16Tip5, weekdayNow14to16Tip4]
let tuesdayNow14to16Topic5 = Topic(title: weekdayNow14to16Title, icon: weekdayNow14to16Icon, tip: weekdayNow14to16TipArray21)

//WED (WIP 4)
let weekdayNow14to16TipArray22 = [weekdayNow14to16Tip10, weekdayNow14to16Tip9, weekdayNow14to16Tip11, weekdayNow14to16Tip8]
let wednesdayNow14to16Topic5 = Topic(title: weekdayNow14to16Title, icon: weekdayNow14to16Icon, tip: weekdayNow14to16TipArray22)

//THU (WIP 4)
let weekdayNow14to16TipArray23 = [weekdayNow14to16Tip14, weekdayNow14to16Tip13, weekdayNow14to16Tip15, weekdayNow14to16Tip12]
let thursdayNow14to16Topic5 = Topic(title: weekdayNow14to16Title, icon: weekdayNow14to16Icon, tip: weekdayNow14to16TipArray23)

//FRI (WIP 4)
let weekdayNow14to16TipArray24 = [weekdayNow14to16Tip18, weekdayNow14to16Tip17, weekdayNow14to16Tip19, weekdayNow14to16Tip16]
let fridayNow14to16Topic5 = Topic(title: weekdayNow14to16Title, icon: weekdayNow14to16Icon, tip: weekdayNow14to16TipArray24)


// MARK: - Now, Weekday, 17to18

let weekdayNow17to18Title = nowTipTitle
let weekdayNow17to18Icon = "Now"

// WEEK 1
// MON
let monday17to18Week1Tip1 = Tip(header: "Cook Dinner At Home", title: "Study: People who cook meals at home eat healthier and consume fewer calories, less sugar, and less fat than those who don't cook meals at home", body: "People who frequently cook meals at home also are less likely to choose fast foods on the occasions when they eat out.", sourceName: "Johns Hopkins University", sourceURL: "https://www.jhsph.edu/research/centers-and-institutes/johns-hopkins-center-for-a-livable-future/news-room/News-Releases/2014/Study-Suggests-Home-Cooking-Main-Ingredient-in-Healthier-Diet.html", sponsorLogo: "", sponsorURL: "")
let monday17to18Week1Tip2 = Tip(header: "Live Longer", title: "Keep in touch with your friends during your free-time", body: "Study: People with more friends outlived those with the fewest friends by 22%. \n\nWhile your friend group tends to shrink as you get older, you can increase your social network by visiting the same places frequently (also known as \"becoming a regular\").", sourceName: "Business Insider", sourceURL: "", sponsorLogo: "", sponsorURL: "")
let monday17to18Week1Tip3 = Tip(header: "Save Money", title: "Focus on maintaining your relationships outside of social media", body: "Study: Frequent Facebook users tend to have higher levels of credit-card debt and lower credit scores. \n\nIf your friends are doing all these cool things, you might feel envious or pressured to participate in those things as well." , sourceName: "Reuters", sourceURL: "https://www.reuters.com/article/us-socialmedia-envy-consumers/how-to-avoid-the-high-price-of-social-media-envy-idUSKBN0KM1CU20150113", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let monday17to18Week1Tip4 = Tip(header: "In A Bad Mood?", title: "Exercise before you go home because it improves your mood", body: "Research: People who are in a bad mood are more likely to verbally abuse their family because they’re too tired to regulate their behavior. \n\nStudy: People who took 10,900 steps each day were less likely to be verbally abusive toward family members when compared to participants who took 7,000 steps." , sourceName: "University of Central Florida", sourceURL: "https://today.ucf.edu/study-shows-exercise-sleep-keys-keeping-employees-bringing-home-work-frustrations/", sponsorLogo: "", sponsorURL: "")

// TUES
let tuesday17to18Week1Tip1 = Tip(header: "Stay Productive After Work", title: "Don't go home right away", body: "When you get home, it's too easy to relax and watch TV. \n\nMake progress on your passion project by going to your local coffee shop. You'll be less distracted there." , sourceName: "LifeHacker", sourceURL: "https://lifehacker.com/5921271/how-to-stay-productive-after-work", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let tuesday17to18Week1Tip2 = Tip(header: "Increase Happiness", title: "Research: People reported being happiest when they were:", body: "• Relaxing \n• Socializing \n• Exercising \n• Eating \n• Doing spiritual activities \n• Engaging in intimate relations" , sourceName: "Fast Company", sourceURL: "https://www.fastcompany.com/3048975/the-scientifically-proven-way-to-have-the-best-vacation-ever", sponsorLogo: "", sponsorURL: "")
let tuesday17to18Week1Tip3 = Tip(header: "Save Money", title: "On average, cooking dinner at home saves you $9 per meal", body: "The average restaurant meal costs around $13. By contrast, the average meal prepared at home costs around $4 for groceries—a $9 savings per person per meal. \n\nThat's a 325% price difference.", sourceName: "Money Under 30", sourceURL: "https://www.moneyunder30.com/the-true-cost-of-eating-in-restaurants-and-how-to-save", sponsorLogo: "", sponsorURL: "")
let tuesday17to18Week1Tip4 = Tip(header: "Relax 🌅", title: "Get into a relaxed mood by watching the sunset tonight", body: "Experiences of awe, like the sunset, brings you into the present momement and makes life feel more satisfying." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/2014/04/04/make-time-for-sunset_n_5066629.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

// WED
let wednesday17to18Week1Tip1 = Tip(header: "Increase Happiness", title: "Be social tonight. 75-year study finds people who have close, intimate relations live the happiest and healthiest lives", body: "On the other hand, people who are more isolated from others are: \n• less happy \n• their health declines earlier in midlife \n• and they live shorter lives \n\nIf you can't socialize tonight, call a friend." , sourceName: "The Washington Post", sourceURL: "https://www.washingtonpost.com/news/inspired-life/wp/2016/03/02/harvard-researchers-discovered-the-one-thing-everyone-needs-for-happier-healthier-lives/?utm_term=.b8ae9207a2c2", sponsorLogo: "", sponsorURL: "")
let wednesday17to18Week1Tip2 = Tip(header: "Live Longer", title: "Exercise tonight. For each additional hour a person sits during their free time, their risk of dying increased by 11%", body: "Study: Your calorie-burning rate immediately plunges to about one per minute, 33% of what it would be if you got up and walked. \n\nToo much sitting increases your risk of obesity and developing Type 2 diabetes." , sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/2011/04/17/magazine/mag-17sitting-t.html", sponsorLogo: "", sponsorURL: "")
let wednesday17to18Week1Tip3 = Tip(header: "Increase Happiness 📵", title: "Study: Don't look at a screen during your free time because it's making you unhappy", body: "• People who spent more time seeing their friends in person, exercising, or reading were happier. \n\n• People who spent more time on the internet, texting, or watching TV were less happy." , sourceName: "Quartz", sourceURL: "https://qz.com/1190151/why-am-i-unhappy-a-new-study-explains-americas-unhappiness-epidemic/", sponsorLogo: "", sponsorURL: "")
let wednesday17to18Week1Tip4 = Tip(header: "Billionaire Advice", title: "Tonight, say no to things that don't excite you, speak to your values, or further your mission in life", body: "Billionaire Warren Buffett said: \n\n\"The difference between successful people and really successful people is that really successful people say no to almost everything.\" \n\nSaying no to the unimportant things helps you focus on saying yes to the few things that truly matter." , sourceName: "Inc.", sourceURL: "https://www.inc.com/marcel-schwantes/warren-buffett-says-this-is-1-simple-habit-that-separates-successful-people-from-everyone-else.html", sponsorLogo: "", sponsorURL: "")

// THUR
let thursday17to18Week1Tip1 = Tip(header: "Live Longer", title: "Study: Sitting 6+ hours a day during your free time raises your risk of early death by 19%", body: "Americans sit an average of 6-8 hours a day during their free time. \n\nEven if you're getting the recommended 30 minutes of daily exercise, there is still risk associated with sitting for the rest of the day. \n\nSitting increases the risk of dying from 14 diseases, including: \n• Cancer \n• Heart disease \n• Diabetes" , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/health/health-news/here-s-more-evidence-sitting-too-much-can-kill-you-n887931", sponsorLogo: "", sponsorURL: "")
let thursday17to18Week1Tip2 = Tip(header: "Billionaire Advice", title: "Tonight, say no to spending time with uninspiring, critical, or negative people who drag you down", body: "Billionaire Warren Buffett said: \n\n\"The difference between successful people and really successful people is that really successful people say no to almost everything.\" \n\nChoose a small circle of people who will energize you and challenge you to be better." , sourceName: "Inc.", sourceURL: "https://www.inc.com/marcel-schwantes/warren-buffett-says-this-is-1-simple-habit-that-separates-successful-people-from-everyone-else.html", sponsorLogo: "", sponsorURL: "")
let thursday17to18Week1Tip3 = Tip(header: "Eat Healthier", title: "Study: People who frequently cook dinner at home are healthier than people who cook less often", body: "People who cooked dinner at home only once a week consumed 2,300 calories per day on average, which included 84 grams of fat and 135 grams of sugar. \n\nIn comparison, regular at-home cooks ate 150 fewer calories per day and consumed only 81 grams of fat and 119 grams of sugar.", sourceName: "Harvard Health", sourceURL: "https://www.health.harvard.edu/nutrition/get-cooking-at-home", sponsorLogo: "", sponsorURL: "")
let thursday17to18Week1Tip4 = Tip(header: "Earn More Money", title: "Use your freetime to \"be seen as a recognized expert\" within your industry", body: "• Attend industry events; \n• Enroll in a class or specialized certification program; \n• Blog on LinkedIn; or \n• Take on a leadership role in a relevant professional organization. \n\nThis will help you earn a raise, get promoted, or find a better job." , sourceName: "Havard Business Review", sourceURL: "https://hbr.org/2018/02/how-to-increase-your-influence-at-work", sponsorLogo: "", sponsorURL: "")

// FRI
let friday17to18Week1Tip1 = Tip(header: "Live Longer", title: "Focus on close relationships", body: "• Is there someone in your life whom you would feel comfortable calling at 4AM to tell your troubles to? \n\nIf your answer is yes, research finds you will likely live longer and happier than someone whose answer is no." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/what-yesno-question-can-likely-predict-whether-you-will-be-alive-and-happy-at-age-80-2012-5", sponsorLogo: "", sponsorURL: "")//Answering this question can likely predict whether you will be alive and happy at age 80: \n\n
let friday17to18Week1Tip2 = Tip(header: "Increase Happiness", title: "Spend 2 hours with family or friends tonight", body: "Don’t just sit on the couch by yourself when you get home. \n\nA big reason why people are happier on weekends compared to weekdays is explained by the extra time spent with friends or family: \n• weekdays = 5.4 hours \n• weekends = 7.1 hours \n\nThe extra daily social time of 1.7 hours on weekends raises average happiness by about 2%." , sourceName: "The Ladders", sourceURL: "https://www.theladders.com/career-advice/lights-7-night-time-rituals-will-make-happy-productive", sponsorLogo: "", sponsorURL: "")
let friday17to18Week1Tip3 = Tip(header: "Sleep Better Tonight", title: "The best time to exercise is 3-4 hours prior to going to sleep", body: "The increase in body temperature from exercise followed by a decrease in body temperature afterwards mimics the natural drop in body temperature needed to fall asleep.", sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/health/wellness/why-cant-i-sleep/", sponsorLogo: "", sponsorURL: "")
let friday17to18Week1Tip4 = Tip(header: "Millionaire Habit", title: "Pay Yourself First. Each month, first allocate money into your asset column (save, invest) and then pay your monthly expenses (rent, food, taxes) last.", body: "When you come up short, let the pressure build to inspire your financial genius to come up with new ways of making more money and then pay your bills. \n\nYou will have increased your ability to make more money as well as your financial intelligence. \n\n- Robert Kiyosaki \nAuthor of Rich Dad, Poor Dad", sourceName: "Rich Dad, Poor Dad", sourceURL: "https://www.amazon.com/Rich-Dad-Poor-Teach-Middle-ebook/dp/B0175P82RA", sponsorLogo: "", sponsorURL: "")






// WEEK 2
// MON
let monday17to18Week2Tip1 = Tip(header: "Prevent Weight Gain", title: "Eat dinner earlier tonight", body: "Study: Later meal timing was associated with: \n• higher body mass index \n• greater body fat" , sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2019/03/190323145204.htm", sponsorLogo: "", sponsorURL: "")
let monday17to18Week2Tip2 = Tip(header: "Millionaire Advice", title: "Tonight, make plans to create 3+ sources of income. Survey: 65% of self-made millionaires had 3+ streams of income that they created prior to making their first million dollars", body: "Having a side-business or income generating investments like REITs or real estate are a few common additional sources of income. Diversifying sources of income allows you to weather the economic downturns that inevitably occur." , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2016/11/29/7-habits-of-highly-successful-people-from-a-man-who-spent-5-years-studying-them.html", sponsorLogo: "", sponsorURL: "")
let monday17to18Week2Tip3 = Tip(header: "Increase Happiness", title: "Donate to a cause you care about. People who donate 10%+ of their income are less depressed than people who give less", body: "Study: 41% of people who donate 10%+ of their income say they rarely or never experience depression versus 32% for people who give less." , sourceName: "The New Republic", sourceURL: "https://newrepublic.com/article/119477/science-generosity-why-giving-makes-you-happy", sponsorLogo: "", sponsorURL: "")
let monday17to18Week2Tip4 = Tip(header: "Live Longer", title: "Exercise daily. Even the world’s most successful business leaders, like Oprah Winfrey and Bill Gates, make physical activity a daily priority", body: "Study: Just small amounts of daily exercise can extend life expectancy by as much as 4.5 years. \n\nDedicate 30 minutes of gym time before or after work.", sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2019/04/09/harvard-study-says-these-5-habits-may-help-you-live-10-years-longer.html", sponsorLogo: "", sponsorURL: "")

//TUES
let tuesday17to18Week2Tip1 = Tip(header: "Prevent Weight Gain", title: "Reduce calorie intake after 8:00 PM", body: "Study: Calories consumed after 8:00 PM was associated with higher body mass index (BMI) and may increase the risk of obesity." , sourceName: "National Center for Biotechnology Information, U.S. National Library of Medicine", sourceURL: "https://www.ncbi.nlm.nih.gov/pubmed/21527892%20", sponsorLogo: "", sponsorURL: "")
let tuesday17to18Week2Tip2 = Tip(header: "Increase Happiness 📵", title: "Take a social media break and spend more time in real life with cherished loved ones", body: "Study: The more time you spend on social media, the less happy you are. \n\nThe reason? Looking at pictures and reading updates from friends leads you to compare your worst self to their best selves, leaving you feeling sad and left out." , sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/health/wellness/how-to-be-happy/", sponsorLogo: "", sponsorURL: "")
let tuesday17to18Week2Tip3 = Tip(header: "Millionaire Habit 💪", title: "Exercise tonight. 76% of wealthy individuals exercise 30+ minutes each day, survey finds", body: "Working out regularly clears your head and makes you feel more motivated, studies show." , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2016/11/29/7-habits-of-highly-successful-people-from-a-man-who-spent-5-years-studying-them.html", sponsorLogo: "", sponsorURL: "")
let tuesday17to18Week2Tip4 = Tip(header: "Increase Happiness", title: "Become a volunteer", body: "Americans who describe themselves as \"very happy\" volunteer an average of 5.8 hours per month. \n\nAmericans who describe themselves as \"unhappy\" only volunteered 0.6 hours per month." , sourceName: "Inc.", sourceURL: "https://www.inc.com/christina-desmarais/8-scientifically-proven-ways-to-achieve-better-suc.html", sponsorLogo: "", sponsorURL: "")

//WED
let wednesday17to18Week2Tip1 = Tip(header: "Increase Happiness 📞", title: "Call a family member or an old friend", body: "The number one thing guaranteed to bring the most happiness isn’t actually a thing—it’s a person. \n\nStudy: Relationships with family, friends, and lovers are necessary for our own happiness.", sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/health/wellness/how-to-be-happy/", sponsorLogo: "", sponsorURL: "")
let wednesday17to18Week2Tip2 = Tip(header: "Make Someone Happy Tonight 💐", title: "Suprise them with flowers", body: "Study: People who received flowers reported more positive moods 3 days later. \n\nResearchers suggest that flowers have evolved to rapidly induce positive emotions in humans.", sourceName: "SAGE Journals", sourceURL: "https://journals.sagepub.com/doi/full/10.1177/147470490500300109", sponsorLogo: "", sponsorURL: "")
let wednesday17to18Week2Tip3 = Tip(header: "Lose Weight", title: "Drink 16 ounces of water 30 minutes before dinner", body: "Study: After 12 weeks, the participants who drank 16 ounces of water 30 minutes before eating lost approximately 3 pounds more than the participants who did not drink water before eating. \n\nScientists speculate the water drinkers did better because drinking water helps people feel more full, causing them to eat less.", sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/lose-weight-before-dinner/", sponsorLogo: "", sponsorURL: "")
let wednesday17to18Week2Tip4 = Tip(header: "Live Longer", title: "Be kind and nice to others", body: "Researchers interviewed 100+ year-olds and found that a lot of them were likable. \n\nLikable people are more likely to have a social network, frequent visitors, and de facto caregivers. \n\nPeople are drawn to likable people and avoid unlikable people.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")

//THUR
let thursday17to18Week2Tip1 = Tip(header: "Live Longer", title: "Spend 30+ minutes a day with positive and healthy people", body: "Adopting good habits is easy when you surround yourself with positive and healthy people. \n\nAdd years to your life by establishing a regular time to talk, meet, share a meal, or take a daily walk together. ", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")
let thursday17to18Week2Tip2 = Tip(header: "Prevent Weight Gain", title: "Cook dinner at home", body: "Study: People who cooked all of their meals at home were 26% less likely to be obese, compared with those who sometimes cooked meals or never cooked meals at home. \n\nHome cooked meals appear to be healthier than meals not cooked at home.", sourceName: "Reuters", sourceURL: "https://www.reuters.com/article/us-health-obesity-meals-tv/home-cooked-meals-hold-the-tv-linked-to-less-obesity-idUSKBN16928E", sponsorLogo: "", sponsorURL: "")
let thursday17to18Week2Tip3 = Tip(header: "Millionaire Habit", title: "Network and volunteer regularly. You'll build relationships that can result in more business advisors or customers, or help you land a better job", body: "• 75% of wealthy people network and volunteer 5+ hours a month. \n\n• Only 10% of people struggling financially network and volunteer. \n\nOften the boards and committees of nonprofits are made up of wealthy, successful people. \n\nKnowing them may result in future business relationships or job referrals.", sourceName: "SUCCESS Magazine", sourceURL: "https://www.success.com/16-rich-habits/", sponsorLogo: "", sponsorURL: "")
let thursday17to18Week2Tip4 = Tip(header: "Prevent Weight Gain", title: "Spend time with friends who are active, eat well, and make other healthy choices", body: "Study: A person’s chance of becoming obese increased by 57% if he or she had a friend who became obese. \n\nYour social network has an big effect on your income, happiness, and especially your weight." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/if-your-best-friend-becomes-obese-you-will-too-says-harvard-professor-2014-4", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//*** FRIDAY ONLY
let friday17to18Week2Tip1 = Tip(header: "Live Healthier", title: "After a long week: \nDON'T: Reward yourself with alcohol, food, or sugary treats. \nDO: Choose calorie-free rewards such as a manicure, a massage, or a movie", body: "There’s nothing wrong with rewarding yourself after a long week. But, rewarding yourself with drinks and foods is likely the reason you’re not losing weight." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/weight-loss-lifestyle/", sponsorLogo: "", sponsorURL: "")//FRIDAY*
let friday17to18Week2Tip2 = Tip(header: "Millionaire Habit", title: "Hang out with high-achievers because your friends could affect your net worth", body: "In most cases, your net worth mirrors the level of your closest friends. \n\nWe become like the people we associate with, and that's why winners surround themselves with winners.", sourceName: "Yahoo! Finance", sourceURL: "https://uk.finance.yahoo.com/news/11-habits-start-20s-want-150800135.html", sponsorLogo: "", sponsorURL: "")
let friday17to18Week2Tip3 = Tip(header: "Live Longer", title: "Exercise for 15 minutes per day", body: "Study: Compared with individuals in the inactive group, those who exercised for 15 min a day had a 14% reduced risk of premature death, and had a 3 year longer life expectancy. \n\nFor every additional 15 min of daily exercise beyond the minimum amount of 15 min a day further decreased their risk of premature death by 4%.", sourceName: "The Lancet", sourceURL: "https://www.thelancet.com/journals/lancet/article/PIIS0140-6736(11)60749-6/fulltext", sponsorLogo: "", sponsorURL: "")
let friday17to18Week2Tip4 = Tip(header: "Millionaire Habit", title: "Pay Yourself First. Each month, first allocate money into your asset column (save, invest) and then pay your monthly expenses (rent, food, taxes) last.", body: "This rule requires self-discipline. If you cannot get control of yourself, do not try to be rich. \n\nIt is the lack of self-discipline that causes most lottery winners to go broke soon after winning millions. \n\nIt is the lack of self-discipline that causes people who get a raise to immediately go out and buy a new car or take a cruise. \n\n- Robert Kiyosaki \nAuthor of Rich Dad, Poor Dad", sourceName: "Rich Dad, Poor Dad", sourceURL: "https://www.amazon.com/Rich-Dad-Poor-Teach-Middle-ebook/dp/B0175P82RA", sponsorLogo: "", sponsorURL: "")




//WEEK 3
//MON
let monday17to18Week3Tip1 = Tip(header: "Increase Happiness", title: "Exercising often releases endorphins in your brain and improves your self-image", body: "Research: Strength training and aerobic training help to reduce depression and improve long-term heart health.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/how-to-make-sure-get-happier-as-you-get-older-2019-8", sponsorLogo: "", sponsorURL: "")
let monday17to18Week3Tip2 = Tip(header: "Save Money", title: "Cook at home. Study: Ordering delivery from a restaurant is 5 times more expensive than cooking at home", body: "Average price per serving based on 86 meals: \n• Restaurant Delivery = $20.37 \n• Home Cooking = $4.31 \n\nWhen cooking at home, you will: \n• Save a substantial amount of money on carb-based meals like pasta or pizza; and \n• Save the most on protein-based meals like beef or chicken when compared to ordering from a restaurant.", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/priceonomics/2018/07/10/heres-how-much-money-do-you-save-by-cooking-at-home/#212e3e0235e5", sponsorLogo: "", sponsorURL: "")

let monday17to18Week3Tip3 = Tip(header: "Reduce Cancer Risk", title: "Eat dinner before 9 p.m. and 2 hours or more before you go to bed", body: "Study: People who waited 2 hours or more after eating dinner to sleep had a 20% reduced risk for breast and prostate cancers combined compared with people who went to sleep immediately after dinner. \n\nPeople who ate dinner earlier — before 9 pm — also had similar reductions in risk compared with those who ate after 10 pm.", sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2018/07/180717182312.htm", sponsorLogo: "", sponsorURL: "")
let monday17to18Week3Tip4 = Tip(header: "Millionaire Habit", title: "Save 20% of your net income and live on the remaining 80%", body: "Among those who are struggling financially, almost all are living above their means. They spend more than they earn, and their debt is overwhelming them. \n\nMake a habit of saving and budgeting your monthly net pay: \n\n• Spend no more than 25% on housing, no matter if you own or rent. \n\n• Spend no more than 15% on food. \n\n• Limit entertainment—bars, movies, etc. to no more than 10% of your spending. Vacations should account for no more than 5% of your annual net pay. \n\n• Spend no more than 5% on auto loans and never lease. 94% of the wealthy buy instead of leasing. \n\n• Stay away from accumulating credit card debt. If you are doing this, it’s a clear sign that you need to cut back somewhere.", sourceName: "Success Magazine", sourceURL: "https://www.success.com/16-rich-habits/", sponsorLogo: "", sponsorURL: "")


//TUES
let tuesday17to18Week3Tip1 = Tip(header: "Earn More $", title: "Exercise tonight. Study: Physically active males earned 14%-17% higher incomes over a 15-year period than less active males", body: "Exercise enhances a person’s performance at work by improving their perseverance when facing obstacles, fostering goal-oriented behaviors, and developing social skills. \n\nIn addition, physical activity encourages participation in competitive situations within the workplace by enhancing self-esteem and self-confidence.", sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/in-the-neighborhood/201308/is-exercise-the-answer-higher-income", sponsorLogo: "", sponsorURL: "")
let tuesday17to18Week3Tip2 = Tip(header: "Billionaire Habit", title: "Don't smoke and exercise regularly", body: "Brazilian billionaire Lirio Parisotto says he hits the treadmill 3 times a week. “My average calories burned per workout is 1,000,” he said. \n\nOf an interview of 21 billionaires, only one was a smoker; the rest were either previous smokers who eventually dropped the unhealthy habit or have never smoked before.", sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2019/06/21/self-made-billionaires-the-6-habits-of-massive-wealth-and-success.html", sponsorLogo: "", sponsorURL: "")
let tuesday17to18Week3Tip3 = Tip(header: "Live Longer", title: "Research: People with strong social relationships have a 50% higher likelihood of survival", body: "Ironically, in a world of social media, we've gotten considerably less social. \n\nSeek out in-person connection and community after work. \n\n• Create true family time. \n• Play in a sports league. \n• Go to the dog park.", sourceName: "Own the Day, Own Your Life", sourceURL: "https://www.amazon.com/Own-Day-Your-Life-Optimized-ebook/dp/B072HLS5QJ", sponsorLogo: "", sponsorURL: "")
let tuesday17to18Week3Tip4 = Tip(header: "Live Longer", title: "Do something else than watching TV tonight", body: "Study: Every hour of watching TV after age 25 was associated with a 22-minute reduction in life expectancy. \n\nLike everything, it's all about balance. It's okay to watch an episode of your favorite TV show, but don't spend all night watching TV.", sourceName: "Own the Day, Own Your Life", sourceURL: "https://www.amazon.com/Own-Day-Your-Life-Optimized-ebook/dp/B072HLS5QJ", sponsorLogo: "", sponsorURL: "")

//WED
let wednesday17to18Week3Tip1 = Tip(header: "Earn More Money", title: "Exercise tonight. Study: People who exercise regularly earn 9% more than those who do not", body: "Exercise improves your energy, focus, mood, and motivation - making you a more valuable worker than someone who does not exercise. \n\nRegular exercise also helps you become highly disciplined both at the gym and at work.", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/victorlipman/2012/06/08/new-study-links-exercise-to-higher-pay/#4dd513475db6", sponsorLogo: "", sponsorURL: "")
let wednesday17to18Week3Tip2 = Tip(header: "Life Advice", title: "Laugh, smile, and be proud of yourself. \"I wish that I had let myself be happier\" is a common deathbed regret", body: "Bronnie Ware, a palliative care nurse, wrote a book about the top 5 deathbed regrets. These are people who lived an entire life, accumulated wisdom, and had a chance to look back and say what they would have done differently. \n\nIt wasn't until they were on their deathbeds that they finally realized that happiness is a choice.", sourceName: "Own The Day, Own Your Life", sourceURL: "https://www.amazon.com/dp/B072HLS5QJ/", sponsorLogo: "", sponsorURL: "")
let wednesday17to18Week3Tip3 = Tip(header: "Live Longer", title: "Drink 1-2 glasses of alcohol per day with friends and/or with food", body: "Moderate drinkers outlive nondrinkers. \n\nAnd no, you can't save up all week and have 14 drinks on Saturday.", sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")
let wednesday17to18Week3Tip4 = Tip(header: "Increase Happiness", title: "Get your daily fix of fresh produce, physical activity, and social interaction by walking to your local grocery store daily", body: "Costa Ricans, which are one of the happiest people in the world, don't sit around waiting for Amazon to deliver their groceries. \n\nMost people walk to their market daily, where they exchange gossip and pleasantries with their favorite vendors and friends, returning home with the freshest foods possible.", sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")

//THUR
let thursday17to18Week3Tip1 = Tip(header: "Increase Happiness", title: "Exercise makes you happier than money", body: "Study: People who are physically active feel just as good as those who avoid physical activity but earn $25,000 more a year. \n\nBut exercising too much can have the reverse effect on happiness. According to the study, physical activity only improves mental well-being within a certain time frame: 3-5 training sessions per week, each lasting around 45 minutes, is ideal.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/exercise-makes-you-happier-than-money-says-yale-and-oxford-study-2019-4", sponsorLogo: "", sponsorURL: "")
let thursday17to18Week3Tip2 = Tip(header: "Millionaire Habit", title: "Study: 94% of self-made millionaires, who became rich by saving money, saved 20%+ of their net pay", body: "They did this early in their work lives, long before they accumulated their millions. \n\nGet into the habit of steadily saving something.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/self-made-millionaires-habits-build-wealth-2017-9#1-they-establish-savings-goals-early-in-their-lives-1", sponsorLogo: "", sponsorURL: "")
let thursday17to18Week3Tip3 = Tip(header: "Increase Happiness", title: "Find friends who are financially secure", body: "If your best friend is always buying the latest fashion, newest car, or coolest gadget, you're more likely to follow suit. \n\nFind friends who look for bargains, cook at home, invest successfully, and make their own fund instead of buying it.", sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")
let thursday17to18Week3Tip4 = Tip(header: "Increase Happiness", title: "Get out of your house. Join a club, a team, or an organization that matches your interests", body: "Happiness experts: Just making an effort and doing something is often more important for happiness than what you do.", sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")

//FRI
let friday17to18Week3Tip1 = Tip(header: "Increase Happiness", title: "Go exercise. Study: People who did not exercise reported 18 more days of poor mental health per year than people who exercised regularly, on average", body: "According to the study, exercising 3-5 days a week, each lasting 30-60 minutes, is ideal. \n\nActivities that had the most positive effect on mental health were: \n• aerobic and gym activities \n• team sports \n• cycling", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/exercise-makes-you-happier-than-money-says-yale-and-oxford-study-2019-4", sponsorLogo: "", sponsorURL: "")
let friday17to18Week3Tip2 = Tip(header: "Life Advice", title: "Call an old friend tonight. \"I wish I had stayed in touch with my friends\" is a common deathbed regret", body: "In the absence of rituals like school and sports, we don't take the time to forge deeper connections with people. \n\nWhether it's having an all-night bender in Vegas or a 10-day journey in Peru, extreme experiences have the potential to form the deepest bonds.", sourceName: "Own The Day, Own Your Life", sourceURL: "https://www.amazon.com/dp/B072HLS5QJ/", sponsorLogo: "", sponsorURL: "")
let friday17to18Week3Tip3 = Tip(header: "Increase Happiness", title: "Create a circle of at least 3 friends with whom you can have meaningful conversations, who you can call on a bad day for help, and who are generally happy", body: "Research: You become who you surround yourself with - obesity, substance abuse, smoking, and even unhappiness are all contagious. \n\nFor every new happy friend that enters your social network, your own happiness increases by 15%.", sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")
let friday17to18Week3Tip4 = Tip(header: "Millionaire Habit", title: "Pay Yourself First. Each month, first allocate money into your asset column (save, invest) and then pay your monthly expenses (rent, food, taxes) last.", body: "This rule requires self-discipline. If you cannet get control of yourself, do not try to get rich. \n\nI'm not saying be irresponsible and not pay your bills. All I'm saying is \"pay yourself first.\" \n\n- Robert Kiyosaki \nAuthor of Rich Dad, Poor Dad", sourceName: "Rich Dad, Poor Dad", sourceURL: "https://www.amazon.com/Rich-Dad-Poor-Teach-Middle-ebook/dp/B0175P82RA", sponsorLogo: "", sponsorURL: "")



//WEEK 4



//WEEK 1
//MON
let weekdayNow17to18TipArray0 = [monday17to18Week1Tip1, monday17to18Week1Tip2, monday17to18Week1Tip3, monday17to18Week1Tip4]
let mondayNow17to18Topic1 = Topic(title: weekdayNow17to18Title, icon: weekdayNow17to18Icon, tip: weekdayNow17to18TipArray0)
//TUE
let weekdayNow17to18TipArray1 = [tuesday17to18Week1Tip1, tuesday17to18Week1Tip2, tuesday17to18Week1Tip3, tuesday17to18Week1Tip4]
let tuesdayNow17to18Topic1 = Topic(title: weekdayNow17to18Title, icon: weekdayNow17to18Icon, tip: weekdayNow17to18TipArray1)
//WED
let weekdayNow17to18TipArray2 = [wednesday17to18Week1Tip1, wednesday17to18Week1Tip2, wednesday17to18Week1Tip3, wednesday17to18Week1Tip4]
let wednesdayNow17to18Topic1 = Topic(title: weekdayNow17to18Title, icon: weekdayNow17to18Icon, tip: weekdayNow17to18TipArray2)

//THU
let weekdayNow17to18TipArray3 = [thursday17to18Week1Tip1, thursday17to18Week1Tip2, thursday17to18Week1Tip3, thursday17to18Week1Tip4]
let thursdayNow17to18Topic1 = Topic(title: weekdayNow17to18Title, icon: weekdayNow17to18Icon, tip: weekdayNow17to18TipArray3)

//FRI
let weekdayNow17to18TipArray4 = [friday17to18Week1Tip1, friday17to18Week1Tip2, friday17to18Week1Tip3, friday17to18Week1Tip4]
let fridayNow17to18Topic1 = Topic(title: weekdayNow17to18Title, icon: weekdayNow17to18Icon, tip: weekdayNow17to18TipArray4)

//WEEK 2
//MON
let weekdayNow17to18TipArray5 = [monday17to18Week2Tip1, monday17to18Week1Tip2, monday17to18Week2Tip3, monday17to18Week2Tip4]
let mondayNow17to18Topic2 = Topic(title: weekdayNow17to18Title, icon: weekdayNow17to18Icon, tip: weekdayNow17to18TipArray5)
//TUE
let weekdayNow17to18TipArray6 = [tuesday17to18Week2Tip1, tuesday17to18Week2Tip2, tuesday17to18Week2Tip3, tuesday17to18Week2Tip4]
let tuesdayNow17to18Topic2 = Topic(title: weekdayNow17to18Title, icon: weekdayNow17to18Icon, tip: weekdayNow17to18TipArray6)
//WED
let weekdayNow17to18TipArray7 = [wednesday17to18Week2Tip1, wednesday17to18Week2Tip2, wednesday17to18Week2Tip3, wednesday17to18Week2Tip4]
let wednesdayNow17to18Topic2 = Topic(title: weekdayNow17to18Title, icon: weekdayNow17to18Icon, tip: weekdayNow17to18TipArray7)

//THU
let weekdayNow17to18TipArray8 = [thursday17to18Week2Tip1, thursday17to18Week2Tip2, thursday17to18Week2Tip3, thursday17to18Week2Tip4]
let thursdayNow17to18Topic2 = Topic(title: weekdayNow17to18Title, icon: weekdayNow17to18Icon, tip: weekdayNow17to18TipArray8)

//FRI
let weekdayNow17to18TipArray9 = [friday17to18Week2Tip1, friday17to18Week2Tip2, friday17to18Week2Tip3, friday17to18Week2Tip4]
let fridayNow17to18Topic2 = Topic(title: weekdayNow17to18Title, icon: weekdayNow17to18Icon, tip: weekdayNow17to18TipArray9)

//WEEK 3
//MON
let weekdayNow17to18TipArray10 = [monday17to18Week3Tip1, monday17to18Week3Tip2, monday17to18Week3Tip3, monday17to18Week3Tip4]
let mondayNow17to18Topic3 = Topic(title: weekdayNow17to18Title, icon: weekdayNow17to18Icon, tip: weekdayNow17to18TipArray10)
//TUE
let weekdayNow17to18TipArray11 = [tuesday17to18Week3Tip1, tuesday17to18Week3Tip2, tuesday17to18Week3Tip3, tuesday17to18Week3Tip4]
let tuesdayNow17to18Topic3 = Topic(title: weekdayNow17to18Title, icon: weekdayNow17to18Icon, tip: weekdayNow17to18TipArray11)
//WED
let weekdayNow17to18TipArray12 = [wednesday17to18Week3Tip1, wednesday17to18Week3Tip2, wednesday17to18Week3Tip3, wednesday17to18Week3Tip4]
let wednesdayNow17to18Topic3 = Topic(title: weekdayNow17to18Title, icon: weekdayNow17to18Icon, tip: weekdayNow17to18TipArray12)

//THU
let weekdayNow17to18TipArray13 = [thursday17to18Week3Tip1, thursday17to18Week3Tip2, thursday17to18Week3Tip3, thursday17to18Week3Tip4]
let thursdayNow17to18Topic3 = Topic(title: weekdayNow17to18Title, icon: weekdayNow17to18Icon, tip: weekdayNow17to18TipArray13)

//FRI
let weekdayNow17to18TipArray14 = [friday17to18Week3Tip1, friday17to18Week3Tip2, friday17to18Week3Tip3, friday17to18Week3Tip4]
let fridayNow17to18Topic3 = Topic(title: weekdayNow17to18Title, icon: weekdayNow17to18Icon, tip: weekdayNow17to18TipArray14)

/////////////////
//RANDOM - MON
let mondayNow17to18TipArrays = [weekdayNow17to18TipArray0, weekdayNow17to18TipArray5, weekdayNow17to18TipArray10]
let mondayNow17to18Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: mondayNow17to18TipArrays.random())

//RANDOM - TUE
let tuesdayNow17to18TipArrays = [weekdayNow17to18TipArray1, weekdayNow17to18TipArray6, weekdayNow17to18TipArray11]
let tuesdayNow17to18Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: tuesdayNow17to18TipArrays.random())

//RANDOM - WED
let wednesdayNow17to18TipArrays = [weekdayNow17to18TipArray2, weekdayNow17to18TipArray7, weekdayNow17to18TipArray12]
let wednesdayNow17to18Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: wednesdayNow17to18TipArrays.random())

//RANDOM - THU
let thursdayNow17to18TipArrays = [weekdayNow17to18TipArray3, weekdayNow17to18TipArray8, weekdayNow17to18TipArray13]
let thursdayNow17to18Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: thursdayNow17to18TipArrays.random())

//RANDOM - FRI
let fridayNow17to18TipArrays = [weekdayNow17to18TipArray4, weekdayNow17to18TipArray9, weekdayNow17to18TipArray14]
let fridayNow17to18Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: fridayNow17to18TipArrays.random())








//WEEK 4
//MON (WIP 4)
let weekdayNow17to18TipArray15 = [monday17to18Week2Tip4, monday17to18Week1Tip2, monday17to18Week2Tip3, monday17to18Week2Tip1]
let mondayNow17to18Topic4 = Topic(title: weekdayNow17to18Title, icon: weekdayNow17to18Icon, tip: weekdayNow17to18TipArray15)
//TUE (WIP 4)
let weekdayNow17to18TipArray16 = [tuesday17to18Week2Tip4, tuesday17to18Week2Tip2, tuesday17to18Week2Tip3, tuesday17to18Week2Tip1]
let tuesdayNow17to18Topic4 = Topic(title: weekdayNow17to18Title, icon: weekdayNow17to18Icon, tip: weekdayNow17to18TipArray16)
//WED (WIP 4)
let weekdayNow17to18TipArray17 = [wednesday17to18Week2Tip4, wednesday17to18Week2Tip2, wednesday17to18Week2Tip3, wednesday17to18Week2Tip1]
let wednesdayNow17to18Topic4 = Topic(title: weekdayNow17to18Title, icon: weekdayNow17to18Icon, tip: weekdayNow17to18TipArray17)

//THU (WIP 4)
let weekdayNow17to18TipArray18 = [thursday17to18Week2Tip4, thursday17to18Week2Tip2, thursday17to18Week2Tip3, thursday17to18Week2Tip1]
let thursdayNow17to18Topic4 = Topic(title: weekdayNow17to18Title, icon: weekdayNow17to18Icon, tip: weekdayNow17to18TipArray18)

//FRI (WIP 4)
let weekdayNow17to18TipArray19 = [friday17to18Week2Tip4, friday17to18Week2Tip2, friday17to18Week2Tip3, friday17to18Week2Tip1]
let fridayNow17to18Topic4 = Topic(title: weekdayNow17to18Title, icon: weekdayNow17to18Icon, tip: weekdayNow17to18TipArray19)

//WEEK 5
//MON (WIP 4)
let weekdayNow17to18TipArray20 = [monday17to18Week1Tip2, monday17to18Week2Tip4, monday17to18Week2Tip3, monday17to18Week2Tip1]
let mondayNow17to18Topic5 = Topic(title: weekdayNow17to18Title, icon: weekdayNow17to18Icon, tip: weekdayNow17to18TipArray20)
//TUE (WIP 4)
let weekdayNow17to18TipArray21 = [tuesday17to18Week2Tip2, tuesday17to18Week2Tip4, tuesday17to18Week2Tip3, tuesday17to18Week2Tip1]
let tuesdayNow17to18Topic5 = Topic(title: weekdayNow17to18Title, icon: weekdayNow17to18Icon, tip: weekdayNow17to18TipArray21)
//WED (WIP 4)
let weekdayNow17to18TipArray22 = [wednesday17to18Week2Tip2, wednesday17to18Week2Tip4, wednesday17to18Week2Tip3, wednesday17to18Week2Tip1]
let wednesdayNow17to18Topic5 = Topic(title: weekdayNow17to18Title, icon: weekdayNow17to18Icon, tip: weekdayNow17to18TipArray22)

//THU (WIP 4)
let weekdayNow17to18TipArray23 = [thursday17to18Week2Tip2, thursday17to18Week2Tip4, thursday17to18Week2Tip3, thursday17to18Week2Tip1]
let thursdayNow17to18Topic5 = Topic(title: weekdayNow17to18Title, icon: weekdayNow17to18Icon, tip: weekdayNow17to18TipArray23)

//FRI (WIP 4)
let weekdayNow17to18TipArray24 = [friday17to18Week2Tip2, friday17to18Week2Tip4, friday17to18Week2Tip3, friday17to18Week2Tip1]
let fridayNow17to18Topic5 = Topic(title: weekdayNow17to18Title, icon: weekdayNow17to18Icon, tip: weekdayNow17to18TipArray24)



// MARK: - Now, Weekday, 19to20
// Focus: start thinking of bedtime, more home related activites, winding down, reduce food consumption

let weekdayNow19to20Title = nowTipTitle
let weekdayNow19to20Icon = "Now"

//Week 1
//MON
let weekday19to20Tip1 = Tip(header: "Prevent Weight Gain", title: "Reduce calorie intake after 8:00 PM", body: "Study: Calories consumed after 8:00 PM was associated with higher body mass index (BMI) and may increase the risk of obesity." , sourceName: "National Center for Biotechnology Information, U.S. National Library of Medicine", sourceURL: "https://www.ncbi.nlm.nih.gov/pubmed/21527892%20", sponsorLogo: "", sponsorURL: "")
let weekday19to20Tip2 = Tip(header: "Sleep Better", title: "Don’t schedule a strenuous gym session within 3 hours of your bedtime", body: "Your body temperature falls when we’re ready to sleep. However, an intense workout raises your body temperature, making it difficult to fall asleep afterwards.", sourceName: "SUCCESS Magazine", sourceURL: "https://www.success.com/the-new-secrets-of-perfect-sleep/", sponsorLogo: "", sponsorURL: "")
let weekday19to20Tip3 = Tip(header: "Millionaire Habit", title: "Write down your goals tonight. Survey of 200+ wealthy people found that 80% of them set daily and long-term goals", body: "The survey's author recommends: \n\n\"Avoid putting your ladder on someone else’s wall and then spending the best years of your life climbing it. Find your own wall, your own dreams, and your own goals, and pursue them.\"" , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2016/11/29/7-habits-of-highly-successful-people-from-a-man-who-spent-5-years-studying-them.html", sponsorLogo: "", sponsorURL: "")
let weekday19to20Tip4 = Tip(header: "Millionaire Habit", title: "88% of the rich devote 30+ minutes each day to self-education or self-improvement reading", body: "The rich read to acquire or maintain knowledge. \n\nRich people read: \n• biographies of successful people \n• self-help or personal development \n• history." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/habits-of-self-made-millionaires-2017-4", sponsorLogo: "", sponsorURL: "")


//TUES
let weekday19to20Tip5 = Tip(header: "Millionaire Habit 📚", title: "Self-made millionares read each day to outperform the competition", body: "• 94% read current events \n\n• 88% read 30+ minutes per day on self-improvement \n\n• 63% listen to audio books while traveling" , sourceName: "ThinkRichThinkPoor.com", sourceURL: "https://thinkrichthinkpoor.com/money-management/11-habits-self-made-millionaires/", sponsorLogo: "", sponsorURL: "")
let weekday19to20Tip6 = Tip(header: "Live Healthier", title: "Go to bed early tonight because people report Wednesday as the most tiring day of the week", body: "Analysis of Google Searches: People searched for the term \"fatigue\" the most on Wednesday." , sourceName: "The Washington Post", sourceURL: "https://www.washingtonpost.com/news/wonk/wp/2014/12/03/the-google-misery-index-the-times-of-year-were-most-depressed-anxious-and-stressed/?utm_term=.ce96d202a3f3", sponsorLogo: "", sponsorURL: "")//*TUES ONLY
let weekday19to20Tip7 = Tip(header: "Increase Happiness", title: "Spend money on others rather than on yourself", body: "Study: Residents of 136 countries, both rich and poor, were asked if they had donated money to charity within the past month. \n\nPeople who had done so reported being happier - so much happier that it would have taken a doubling of their household income to match it.", sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")
let weekday19to20Tip8 = Tip(header: "Make More Money", title: "Use your freetime to \"be seen as a recognized expert\" within your industry", body: "Attend industry events, enroll in a class or specialized certification program, blog on LinkedIn, or take on a leadership role in a relevant professional organization. \n\nThis will help you earn a raise, get promoted, or find a better job." , sourceName: "Havard Business Review", sourceURL: "https://hbr.org/2018/02/how-to-increase-your-influence-at-work", sponsorLogo: "", sponsorURL: "")

//WED
let weekday19to20Tip9 = Tip(header: "Increase Happiness", title: "Call a family member or an old friend", body: "The number one thing guaranteed to bring the most happiness isn’t actually a thing—it’s a person. \n\nStudy: Relationships with family, friends and lovers are necessary for our own personal happiness.", sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/health/wellness/how-to-be-happy/", sponsorLogo: "", sponsorURL: "")
let weekday19to20Tip10 = Tip(header: "Millionaire Habit", title: "Get a mentor. 90% of surveyed self-made millionaires had a mentor who helped them reach the millionaire status", body: "Mentors can come from several aspects of your life: \n\n• Parent mentors \n• Teacher mentors \n• Workplace mentors \n• Community mentors \n• Book mentors" , sourceName: " ThinkRichThinkPoor.com", sourceURL: "https://thinkrichthinkpoor.com/money-management/11-habits-self-made-millionaires/", sponsorLogo: "", sponsorURL: "")
let weekday19to20Tip11 = Tip(header: "Increase Happiness 📵", title: "Take a social media break and spend more time in real life with cherished loved ones", body: "Study: The more time you spend on social media, the less happy you are. \n\nThe reason? Looking at pictures and reading updates from friends leads you to compare your worst self to their best selves, leaving you feeling sad and left out." , sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/health/wellness/how-to-be-happy/", sponsorLogo: "", sponsorURL: "")
let weekday19to20Tip12 = Tip(header: "Increase Happiness", title: "Study: Spending 2 hours with family or friends tonight will increase your happiness", body: "Don’t just sit on the couch by yourself when you get home. \n\nA big reason why people are happier on weekends compared to weekdays is explained by the extra time spent with friends or family: \n• weekdays = 5.4 hours \n• weekends = 7.1 hours \n\nThe extra daily social time of 1.7 hours on weekends raises average happiness by about 2%." , sourceName: "The Ladders", sourceURL: "https://www.theladders.com/career-advice/lights-7-night-time-rituals-will-make-happy-productive", sponsorLogo: "", sponsorURL: "")

//THUR
let weekday19to20Tip13 = Tip(header: "Increase Happiness", title: "Spend more time with people you enjoy - those who make you healthier and happier - and less time with people who spread negativity", body: "It's easier to be happy when you're surrounded by happy people. \n\nHow you answer the following questions might give you a few clues about who to spend more time with and who to avoid: \n\n• Do you feel better around them than when you're not? \n\n• Are your friends usually upbeat, or do they like to complain? \n\n• Are they curious about the world? \n\n• Is their idea of recreation watcing TV or an outdoor activity? \n\n• Do they listen as well as talk? \n\n• Are they engaged with the world, and do they encourage your engagement? \n\n• Are they tied to routine or interested in new activities?", sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")
let weekday19to20Tip14 = Tip(header: "Prevent Heartburn 🔥", title: "Don’t eat 3-4 hours before bed", body: "Research: It takes 3-4 hours for food to clear the stomach. \n\nIn chronic heartburn, stomach acid slips into the esophagus, and that’s more likely when lying in bed shortly after a meal, when gravity is not helping to keep digestive juices in the stomach." , sourceName: "The New York Times", sourceURL: "https://well.blogs.nytimes.com/2011/09/05/really-the-claim-to-reduce-heartburn-dont-eat-four-hours-before-bed/", sponsorLogo: "", sponsorURL: "")
let weekday19to20Tip15 = Tip(header: "Millionaire Habit", title: "Read a book. Survey: People who read 7+ books per year were 122% more likely to be millionaires as opposed to people who never read or only read 1-3 books per year", body: "Reading positively correlates with: \n• Income \n• Higher education \n• Happiness \n\nExample: Bill Gates reads 50 books a year and Warren Buffett spends as much as 80% of his day reading." , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2017/04/07/7-rich-habits-of-highly-successful-people.html", sponsorLogo: "", sponsorURL: "")
let weekday19to20Tip16 = Tip(header: "Millionaire Habit", title: "Start with your current income, increase it, and then start adding multiple flows of income", body: "You won't get rich without multiple flows of income. \n\n• Get a side job \n• Start a side business \n• Generate passive income", sourceName: "Yahoo! Finance", sourceURL: "https://uk.finance.yahoo.com/news/11-habits-start-20s-want-150800135.html", sponsorLogo: "", sponsorURL: "")

//FRI
let weekday19to20Tip17 = Tip(header: "Prevent Weight Gain", title: "Avoid these after 8PM: \n• alcohol \n• chocolate \n• peanut butter \n• spicy foods \n• junk foods", body: "Consuming these 5 foods at night can lead to weight gain and a poor night of sleep.", sourceName: "Men's Journal", sourceURL: "https://www.mensjournal.com/food-drink/five-foods-avoid-after-8-pm/", sponsorLogo: "", sponsorURL: "")

let weekday19to20Tip18 = Tip(header: "Live Longer", title: "Spend tonight with friends or family", body: "Having just 3 social ties may decrease your risk of early death by more than 200%. \n\nA strong social circle might also help you react less negatively to stress, perhaps further explaining the positive effect on lifespan." , sourceName: "Healthline", sourceURL: "https://www.healthline.com/nutrition/13-habits-linked-to-a-long-life", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekday19to20Tip19 = Tip(header: "Millionaire Habit", title: "Don't spend your free time watching TV or surfing the Internet", body: "People Struggling Financially: \n• 77% spend 60+ minutes a day watching TV. \n• 74% spend 60+ minutes a day using the Internet recreationally. \n\nMillionaires: \n• 66% spend less than an hour a day watching TV. \n• 63% spend less than an hour a day on the internet unless it's job-related. \n\nMillionaires use their free time engaged in: \n• personal development, \n• networking, \n• volunteering, \n• working side jobs or side businesses, or \n• pursuing some goal.", sourceName: "SUCCESS Magazine", sourceURL: "https://www.success.com/16-rich-habits/", sponsorLogo: "", sponsorURL: "")
let weekday19to20Tip20 = Tip(header: "Millionaire Habit", title: "Read every day. It increases your knowledge, which allows you to see more opportunities, which translates into more money", body: "People Struggling Financially: Only 2% engage in daily self-improvement reading, and as a result, the poor don’t grow professionally and are among the first to be fired or downsized. \n\nMillionaires: 88% read 30+ minutes every day. They read: \n• Educational career-related material \n• Current events \n• Personal development books \n• Biographies of successful people \n• History books", sourceName: "SUCCESS Magazine", sourceURL: "https://www.success.com/16-rich-habits/", sponsorLogo: "", sponsorURL: "")

//WEEK 2
//MON
let weekday19to20Tip21 = Tip(header: "Billionaire Habit", title: "Read a lot to acquire knowledge", body: "• Mark Cuban: Reads 3+ hours every day. \n\n• Bill Gates: Reads 50 books per year, which breaks down to 1 per week. \n\n• Elon Musk: When asked how he learned to build rockets, he said \"I read books.\" \n\n• Warren Buffett: Read 600-1,000 pages per day when he began his investing career." , sourceName: "Huffington Post", sourceURL: "https://www.huffpost.com/entry/the-reading-habits-of-ult_b_9688130", sponsorLogo: "", sponsorURL: "")
let weekday19to20Tip22 = Tip(header: "Increase Happiness", title: "Do anything other than look at a screen during your freetime", body: "Study: People who spent more time seeing their friends in person, exercising, or reading were happier. \n\nHowever, people who spent more time on the internet, social media, or watching TV were less happy." , sourceName: "Quartz", sourceURL: "https://qz.com/1190151/why-am-i-unhappy-a-new-study-explains-americas-unhappiness-epidemic/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekday19to20Tip23 = Tip(header: "Live Longer", title: "Spend time with someone tonight", body: "Study: Relationships (friends, family, neighbors or colleagues) improve your odds of survival by 50%. \n\nHere is how low social interaction compares to more well-known risk factors: \n\n• Equivalent to smoking 15 cigarettes a day \n• Equivalent to being an alcoholic \n• More harmful than not exercising \n• Twice as harmful as obesity" , sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2010/07/100727174909.htm", sponsorLogo: "", sponsorURL: "")
let weekday19to20Tip24 = Tip(header: "Prevent Weight Gain", title: "Restrict eating to a 12-hour cycle", body: "Our bodies were designed for a 12-hour eating cycle. \n\nEating late at night disrupts this natural order and leads to poor sleep and weight gain.", sourceName: "SUCCESS Magazine", sourceURL: "https://www.success.com/the-new-secrets-of-perfect-sleep/", sponsorLogo: "", sponsorURL: "")

//TUE
let weekday19to20Tip25 = Tip(header: "Reduce Weight Gain", title: "Eat your meals earlier throughout the day", body: "Research: Independent of physical activity, the human body uses less energy to digest food later in the day. \n\nAs a result, when you eat late at night, you may convert more calories to fat, instead of burning them off." , sourceName: "Vox", sourceURL: "https://www.vox.com/science-and-health/2019/3/26/18280663/night-eating-sleep-loss-weight-gain", sponsorLogo: "", sponsorURL: "")
let weekday19to20Tip26 = Tip(header: "Billionaire Habit", title: "20+ Billionaires Interviewed: All of them read", body: "Books are one of the methods billionaires use to learn how to do business. \n\nBillionaires read: \n• Business newspapers \n• Business books \n• Novels", sourceName: "Market Watch", sourceURL: "https://www.marketwatch.com/story/4-habits-that-self-made-billionaires-practice-nearly-every-day-2019-07-11", sponsorLogo: "", sponsorURL: "")
let weekday19to20Tip27 = Tip(header: "Increase Well-Being", title: "Say \"I am enough\"", body: "Repeating this phrase (out loud and in your head) will eventually make it difficult for your mind to object to it. \n\nIt will improve your confidence and outlook on life." , sourceName: "Marisa Peer, author of Ultimate Confidence", sourceURL: "https://www.marisapeer.com/i-am-enough-marisa/", sponsorLogo: "", sponsorURL: "")
let weekday19to20Tip28 = Tip(header: "Increase Happiness", title: "Join a club that aligns with your interests. You'll gain a sense of purpose and meet like-minded people", body: "Study: Joining a group that meets even once a month produces the same happiness gain as doubling your income. \n\nYou could join a volunteer organization, a religious mission group, or a committed self-improvement class.", sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")

//WED
let weekday19to20Tip29 = Tip(header: "Avoid Weight Gain", title: "Study: Nighttime eating leads to weight gain. Solution: Eat early and within a 12-hour window or less ― only when there’s sunlight", body: "Our bodies become more insulin resistant later in the day which causes sugar to stay in your bloodstream and be turned into fat. \n\nEat 75% of your daily calories before 2 p.m., with breakfast and lunch being your largest meals, and dinner the smallest. \n\nGetting plenty of protein and healthy fat (avocado, chia seeds, salmon, and walnuts) in the morning and at lunchtime will ward off hunger at night.", sourceName: "Cleveland Clinic", sourceURL: "https://health.clevelandclinic.org/its-not-just-what-you-eat-but-also-when-that-matters/", sponsorLogo: "", sponsorURL: "")

let weekday19to20Tip30 = Tip(header: "Sleep Better", title: "Exercise 3 to 4 hours prior to going to sleep", body: "The increase in core body temperature followed by a decrease in core body temperature mimics the natural drop in body temperature needed to fall asleep and maintain sleep.", sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/health/wellness/why-cant-i-sleep/", sponsorLogo: "", sponsorURL: "")
let weekday19to20Tip31 = Tip(header: "Increase Happiness", title: "Make social connections a higher priority. Loneliness is as bad to your well-being as smoking 15 cigarettes a day", body: "A lot of times, especially in the US, we let our friendships take a backseat to our careers or parenting. \n\nIt's important to make more space for friends in your life. \n\nAs you get older, loneliness increases your risks of: \n• High blood pressure \n• Cardiovascular disease \n• Dementia", sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")
let weekday19to20Tip32 = Tip(header: "", title: "Plan out when you're going to wake up, count back however many hours you need to sleep, and then set an alarm to remind yourself to get ready for bed", body: "Going to bed at a consistent time each evening is a key habit all sleep experts recommend. \n\nThe worst thing you can do is stay up late then hit snooze in the morning.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/what-successful-people-do-right-before-bed-2016-1", sponsorLogo: "", sponsorURL: "")


//THUR
let weekday19to20Tip33 = Tip(header: "Sleep Better", title: "Don’t schedule a strenuous gym session within 3 hours of your bedtime", body: "Your core body temperature falls when we’re ready to go to sleep. But, an intense workout raises your body temperature, making it more difficult for you to fall asleep afterward.", sourceName: "SUCCESS Magazine", sourceURL: "https://www.success.com/the-new-secrets-of-perfect-sleep/", sponsorLogo: "", sponsorURL: "")
let weekday19to20Tip34 = Tip(header: "Increase Happiness", title: "Research: Pet owners tend to be healthier and happier than people without pets", body: "Studies find that dog owners get more than 5 hours of exercise a week. \n\nPets have been found to reduce stress, improve self-esteem, and win your heart in a way guaranteed to bring happiness. \n\nIf you don't have one already, adopt a pet, preferably a rescue cat or dog.", sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")
let weekday19to20Tip35 = Tip(header: "Increase Creativity 📵", title: "Avoid screen-time tonight", body: "When your brain is fed a constant stream of stimulating entertainment on a 2-D screen with flat, unnatural light, your senses are saturated and creative drive is reduced." , sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/mental-wealth/201704/10-ways-protect-the-brain-daily-screen-time", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekday19to20Tip36 = Tip(header: "Billionaire Habit", title: "Billionaires read a lot — they don’t see reading as a chore but as an opportunity to improve their lives, careers and businesses", body: "• Elon Musk grew up reading 2 books a day. \n\n• Bill Gates reads 50 books per year. \n\n• Mark Zuckerberg reads at least one book every 2 weeks. \n\n• Warren Buffett spends 5-6 hours per day reading 5 newspapers and 500 pages of corporate reports. \n\nIn a world where information is the new currency, reading is the best source of continuous learning, knowledge and acquiring more of that currency." , sourceName: "Medium", sourceURL: "https://medium.com/personal-growth/6-habits-of-super-learners-63d466a254fd", sponsorLogo: "", sponsorURL: "")

//FRI
let weekday19to20Tip37 = Tip(header: "Live Longer", title: "Study: People who read books for 30+ minutes a day lived 2 years longer than people who didn’t read", body: "Get some book reading in every single day because it: \n\n• Improves IQ and emotional IQ, \n• Reduces stress, and \n• Allows readers to, on average, live longer than non-readers." , sourceName: "Bustle", sourceURL: "https://www.bustle.com/p/how-much-should-i-read-a-day-these-studies-have-some-answers-on-the-ideal-amount-of-time-70040", sponsorLogo: "", sponsorURL: "")
let weekday19to20Tip38 = Tip(header: "Daily Habit", title: "Find a Way To Connect To Something Bigger Than Yourself — The worries and anxieties of daily life seem to fall away when we stand next to the ocean or walk through a beautiful park. \n\nWe shouldn’t wait for our annual vacation to get this kind of relief and perspective. We need to get it every single day.", body: "Marcus Aurelius would look up at the stars and imagine himself running alongside them, he’d see them for their timelessness and infiniteness. \n\nTry that tonight or early in the morning and try to make it a daily practice. \n\nA glance at the beautiful expanse of the sky is an antidote to the nagging pettiness of earthly concerns, of our dreams of immortality or fame." , sourceName: "Ryan Holiday", sourceURL: "https://ryanholiday.net/13-life-changing-habits-to-try-and-do-every-single-day/", sponsorLogo: "", sponsorURL: "")

//
let weekday19to20Tip39 = Tip(header: "Elon Musk: Sleep Better", title: "Avoid alcohol and food at least 2-3 hours before you go to sleep. Your quality of sleep will improve and your general health will improve a lot.", body: "Drinking alcohol and eating food right before you go to sleep is one of the worst things you can do. \n\nIt negatively affects your sleep because your body is digesting which can cause heartburn that you don't even notice is happening. \n\nThat suttle heartburn affects your sleep and damages your esophagus." , sourceName: "Joe Rogan Experience #1470 - Elon Musk", sourceURL: "https://youtu.be/RcYjXbSJBN8?t=6236", sponsorLogo: "", sponsorURL: "")
//let weekday19to20Tip40






//WEEK 1
//MON
let weekdayNow19to20TipArray0 = [weekday19to20Tip1, weekday19to20Tip2, weekday19to20Tip3, weekday19to20Tip4]
let mondayNow19to20Topic1 = Topic(title: weekdayNow19to20Title, icon: weekdayNow19to20Icon, tip: weekdayNow19to20TipArray0)
//TUE
let weekdayNow19to20TipArray1 = [weekday19to20Tip5, weekday19to20Tip6, weekday19to20Tip7, weekday19to20Tip8]
let tuesdayNow19to20Topic1 = Topic(title: weekdayNow19to20Title, icon: weekdayNow19to20Icon, tip: weekdayNow19to20TipArray1)
//WED
let weekdayNow19to20TipArray2 = [weekday19to20Tip9, weekday19to20Tip10, weekday19to20Tip11, weekday19to20Tip12]
let wednesdayNow19to20Topic1 = Topic(title: weekdayNow19to20Title, icon: weekdayNow19to20Icon, tip: weekdayNow19to20TipArray2)
//THUR
let weekdayNow19to20TipArray3 = [weekday19to20Tip13, weekday19to20Tip14, weekday19to20Tip15, weekday19to20Tip16]
let thursdayNow19to20Topic1 = Topic(title: weekdayNow19to20Title, icon: weekdayNow19to20Icon, tip: weekdayNow19to20TipArray3)
//FRI
let weekdayNow19to20TipArray4 = [weekday19to20Tip17, weekday19to20Tip18, weekday19to20Tip19, weekday19to20Tip20]
let fridayNow19to20Topic1 = Topic(title: weekdayNow19to20Title, icon: weekdayNow19to20Icon, tip: weekdayNow19to20TipArray4)

//WEEK 2
//MON
let weekdayNow19to20TipArray5 = [weekday19to20Tip21, weekday19to20Tip22, weekday19to20Tip23, weekday19to20Tip24]
let mondayNow19to20Topic2 = Topic(title: weekdayNow19to20Title, icon: weekdayNow19to20Icon, tip: weekdayNow19to20TipArray5)
//TUE
let weekdayNow19to20TipArray6 = [weekday19to20Tip25, weekday19to20Tip26, weekday19to20Tip27, weekday19to20Tip28]
let tuesdayNow19to20Topic2 = Topic(title: weekdayNow19to20Title, icon: weekdayNow19to20Icon, tip: weekdayNow19to20TipArray6)
//WED
let weekdayNow19to20TipArray7 = [weekday19to20Tip29, weekday19to20Tip30, weekday19to20Tip31, weekday19to20Tip32]
let wednesdayNow19to20Topic2 = Topic(title: weekdayNow19to20Title, icon: weekdayNow19to20Icon, tip: weekdayNow19to20TipArray7)
//THUR
let weekdayNow19to20TipArray8 = [weekday19to20Tip33, weekday19to20Tip34, weekday19to20Tip35, weekday19to20Tip36]
let thursdayNow19to20Topic2 = Topic(title: weekdayNow19to20Title, icon: weekdayNow19to20Icon, tip: weekdayNow19to20TipArray8)
//FRI (WIP 3)
let weekdayNow19to20TipArray9 = [weekday19to20Tip37, weekday19to20Tip38, weekday19to20Tip39, weekday19to20Tip17]
let fridayNow19to20Topic2 = Topic(title: weekdayNow19to20Title, icon: weekdayNow19to20Icon, tip: weekdayNow19to20TipArray9)

/////////////////
//RANDOM - MON
let mondayNow19to20TipArrays = [weekdayNow19to20TipArray0, weekdayNow19to20TipArray5]
let mondayNow19to20Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: mondayNow19to20TipArrays.random())

//RANDOM - TUE
let tuesdayNow19to20TipArrays = [weekdayNow19to20TipArray1, weekdayNow19to20TipArray6]
let tuesdayNow19to20Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: tuesdayNow19to20TipArrays.random())

//RANDOM - WED
let wednesdayNow19to20TipArrays = [weekdayNow19to20TipArray2, weekdayNow19to20TipArray7]
let wednesdayNow19to20Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: wednesdayNow19to20TipArrays.random())

//RANDOM - THU
let thursdayNow19to20TipArrays = [weekdayNow19to20TipArray3, weekdayNow19to20TipArray8]
let thursdayNow19to20Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: thursdayNow19to20TipArrays.random())

//RANDOM - FRI
let fridayNow19to20TipArrays = [weekdayNow19to20TipArray4, weekdayNow19to20TipArray9]
let fridayNow19to20Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: fridayNow19to20TipArrays.random())











//WEEK 3
//MON
let weekdayNow19to20TipArray10 = [weekday19to20Tip1, weekday19to20Tip2, weekday19to20Tip3, weekday19to20Tip4]
let mondayNow19to20Topic3 = Topic(title: weekdayNow19to20Title, icon: weekdayNow19to20Icon, tip: weekdayNow19to20TipArray10)
//TUE
let weekdayNow19to20TipArray11 = [weekday19to20Tip5, weekday19to20Tip6, weekday19to20Tip7, weekday19to20Tip8]
let tuesdayNow19to20Topic3 = Topic(title: weekdayNow19to20Title, icon: weekdayNow19to20Icon, tip: weekdayNow19to20TipArray11)
//WED
let weekdayNow19to20TipArray12 = [weekday19to20Tip9, weekday19to20Tip10, weekday19to20Tip11, weekday19to20Tip12]
let wednesdayNow19to20Topic3 = Topic(title: weekdayNow19to20Title, icon: weekdayNow19to20Icon, tip: weekdayNow19to20TipArray12)
//THUR
let weekdayNow19to20TipArray13 = [weekday19to20Tip13, weekday19to20Tip14, weekday19to20Tip15, weekday19to20Tip16]
let thursdayNow19to20Topic3 = Topic(title: weekdayNow19to20Title, icon: weekdayNow19to20Icon, tip: weekdayNow19to20TipArray13)
//FRI
let weekdayNow19to20TipArray14 = [weekday19to20Tip17, weekday19to20Tip18, weekday19to20Tip19, weekday19to20Tip20]
let fridayNow19to20Topic3 = Topic(title: weekdayNow19to20Title, icon: weekdayNow19to20Icon, tip: weekdayNow19to20TipArray14)

//WEEK 4
//MON (WIP 4)
let weekdayNow19to20TipArray15 = [weekday19to20Tip24, weekday19to20Tip22, weekday19to20Tip23, weekday19to20Tip21]
let mondayNow19to20Topic4 = Topic(title: weekdayNow19to20Title, icon: weekdayNow19to20Icon, tip: weekdayNow19to20TipArray15)
//TUE (WIP 4)
let weekdayNow19to20TipArray16 = [weekday19to20Tip25, weekday19to20Tip26, weekday19to20Tip7, weekday19to20Tip6]
let tuesdayNow19to20Topic4 = Topic(title: weekdayNow19to20Title, icon: weekdayNow19to20Icon, tip: weekdayNow19to20TipArray16)
//WED  (WIP 4)
let weekdayNow19to20TipArray17 = [weekday19to20Tip29, weekday19to20Tip12, weekday19to20Tip11, weekday19to20Tip10]
let wednesdayNow19to20Topic4 = Topic(title: weekdayNow19to20Title, icon: weekdayNow19to20Icon, tip: weekdayNow19to20TipArray17)
//THUR (WIP 4)
let weekdayNow19to20TipArray18 = [weekday19to20Tip33, weekday19to20Tip14, weekday19to20Tip15, weekday19to20Tip16]
let thursdayNow19to20Topic4 = Topic(title: weekdayNow19to20Title, icon: weekdayNow19to20Icon, tip: weekdayNow19to20TipArray18)
//FRI (WIP 4)
let weekdayNow19to20TipArray19 = [weekday19to20Tip37, weekday19to20Tip17, weekday19to20Tip18, weekday19to20Tip19]
let fridayNow19to20Topic4 = Topic(title: weekdayNow19to20Title, icon: weekdayNow19to20Icon, tip: weekdayNow19to20TipArray19)

//WEEK 5
//MON (WIP 4)
let weekdayNow19to20TipArray20 = [weekday19to20Tip22, weekday19to20Tip24, weekday19to20Tip23, weekday19to20Tip21]
let mondayNow19to20Topic5 = Topic(title: weekdayNow19to20Title, icon: weekdayNow19to20Icon, tip: weekdayNow19to20TipArray20)
//TUE (WIP 4)
let weekdayNow19to20TipArray21 = [weekday19to20Tip26, weekday19to20Tip25, weekday19to20Tip7, weekday19to20Tip6]
let tuesdayNow19to20Topic5 = Topic(title: weekdayNow19to20Title, icon: weekdayNow19to20Icon, tip: weekdayNow19to20TipArray21)
//WED  (WIP 4)
let weekdayNow19to20TipArray22 = [weekday19to20Tip12, weekday19to20Tip29, weekday19to20Tip11, weekday19to20Tip10]
let wednesdayNow19to20Topic5 = Topic(title: weekdayNow19to20Title, icon: weekdayNow19to20Icon, tip: weekdayNow19to20TipArray22)
//THUR (WIP 4)
let weekdayNow19to20TipArray23 = [weekday19to20Tip14, weekday19to20Tip33, weekday19to20Tip15, weekday19to20Tip16]
let thursdayNow19to20Topic5 = Topic(title: weekdayNow19to20Title, icon: weekdayNow19to20Icon, tip: weekdayNow19to20TipArray23)
//FRI (WIP 4)
let weekdayNow19to20TipArray24 = [weekday19to20Tip17, weekday19to20Tip37, weekday19to20Tip18, weekday19to20Tip19]
let fridayNow19to20Topic5 = Topic(title: weekdayNow19to20Title, icon: weekdayNow19to20Icon, tip: weekdayNow19to20TipArray24)



// MARK: - Now, Weekday, 21to24

let weekdayNow21to24Title = nowTipTitle
let weekdayNow21to24Icon = "Now"

//Week 1
//Mon
let mondayNow21to24Week1Tip1 = Tip(header: "Increase Success", title: "Go to bed early tonight because people report Tuesday as the 2nd most tiring day of the week", body: "Analysis of Google Searches: People searched for the term \"fatigue\" the most on Wednesday, followed by Tuesday and Thursday." , sourceName: "The Washington Post", sourceURL: "https://www.washingtonpost.com/news/wonk/wp/2014/12/03/the-google-misery-index-the-times-of-year-were-most-depressed-anxious-and-stressed/?utm_term=.ce96d202a3f3", sponsorLogo: "", sponsorURL: "")
let mondayNow21to24Week1Tip2 = Tip(header: "Increase Success", title: "Prepare for tomorrow with a pre-bedtime routine", body: "• Layout tomorrow's outfit \n• Layout gym clothes \n• Prepare a healthy lunch \n\nA little prep work will help ease the morning rush." , sourceName: "mindbodygreen, a lifestyle media brand", sourceURL: "https://www.mindbodygreen.com/0-20168/a-nighttime-ritual-for-deep-restful-sleep.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let mondayNow21to24Week1Tip3 = Tip(header: "Fall Asleep Faster", title: "Declare a digital-free zone one hour before bedtime", body: "The bright blue glow of tech toys disrupt your body clock. \n\nPlus, that one last look at a social media app can easily turn into minutes of mindless web surfing that could be spent doing something more relaxing in the morning — like meditating." , sourceName: "mindbodygreen, a lifestyle media brand", sourceURL: "https://www.mindbodygreen.com/0-20168/a-nighttime-ritual-for-deep-restful-sleep.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let mondayNow21to24Week1Tip4 = Tip(header: "Fall Asleep Faster 💡", title: "Dim or turn off the lights one hour before bed", body: "Exposure to too much electrical light before bed can significantly lower levels of melatonin, the hormone that helps make us feel sleepy." , sourceName: "mindbodygreen, a lifestyle media brand", sourceURL: "https://www.mindbodygreen.com/0-20168/a-nighttime-ritual-for-deep-restful-sleep.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//Tues
let weekdayNow21to24Tip4 = Tip(header: "Increase Confidence", title: "Sleep on your back or stomach with your arms and legs outstretched", body: "When we sleep, we tend to lie on our side and wrap our arms around ourselves or lay in a fetal position. This, however, is a low power position and affects the way you think and feel tomorrow. \n\nThe ideal sleeping position is similar to a power pose in an 'X' or 'Y' position, but simply on your back or stomach instead.", sourceName: "Business Insider", sourceURL: "http://www.businessinsider.com/sleep-position-may-affect-success-2013-11", sponsorLogo: "sponsor", sponsorURL: "sponsorURL")
let weekdayNow21to24Tip5 = Tip(header: "Burn More Fat 🔥", title: "Exercise before breakfast tomorrow", body: "Research suggests exercising in the a.m. — specifically, before breakfast — is most helpful for losing weight. The reason early morning workouts seem to accelerate weight loss and boost energy levels may be that they set up the body for an all-day fat burn.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/the-best-time-of-day-to-do-everything-2016-5#-1", sponsorLogo: "sponsor", sponsorURL: "sponsorURL")
let weekdayNow21to24Tip6 = Tip(header: "Reduce Your Risk", title: "Even one night of sleep deprivation can cause Alzheimer's-related proteins to build up in the brain", body: "During the day, your body’s mental activity causes brain cells to release proteins, which are basically waste byproducts. Sleep cleanses the human brain of these toxins. \n\nLong periods of bad sleep builds up these toxins, making it harder to sleep, creating a negative spiral towards Alzheimer's.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/alzheimers-protein-buildup-in-brain-after-bad-sleep-2018-4", sponsorLogo: "ABC", sponsorURL: "URL")
let weekdayNow21to24Tip7 = Tip(header: "Avoid Your Phone 📱", title: "Using smartphones after 9 PM equals: \n• less sleep tonight \n• feeling tired tomorrow \n• lower productivity tomorrow", body: "Smartphones make it harder to fall asleep and stay asleep because of their blue light which inhibits the sleep-promoting chemical melatonin in your body from being released.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2014/01/research-using-a-smartphone-after-9-pm-leaves-workers-disengaged", sponsorLogo: "", sponsorURL: "")

//Wed
let weekdayNow21to24Tip8 = Tip(header: "Fall Asleep Faster", title: "Wind down your mind 30 minutes before bed", body: "DON'T do anything too stimulating, like texting, checking social media, or watching an action-packed TV show. \n\nDO activities that relax you and bring closure to your evening, like reading, journaling, or setting out clothes for the next day.", sourceName: "Health", sourceURL: "https://www.health.com/mind-body/20-things-you-shouldn-t-do-before-bed#skip-your-wind-down-time", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip9 = Tip(header: "Be More Focused Tomorrow 📵", title: "Don't check your work email after 9 p.m.", body: "Study: People who used their smartphones for work purposes after 9 p.m. reported being more tired and unfocused the next day.", sourceName: "Health", sourceURL: "https://www.health.com/mind-body/20-things-you-shouldn-t-do-before-bed#skip-your-wind-down-time", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip10 = Tip(header: "Billionaire Advice", title: "Jeff Bezos, the richest person in the world, prioritizes 8 hours of sleep each night", body: "\"8 hours of sleep makes a big difference for me, and I try hard to make that a priority. For me, that's the needed amount to feel energized and excited.\" \n\n\"If you shortchange your sleep, you might get a couple of extra 'productive' hours, but that productivity might be an illusion.\" \n\n- Jeff Bezos", sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2017/04/21/why-jeff-bezos-makes-getting-8-hours-of-sleep-a-top-priority.html", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip11 = Tip(header: "Sleep Better", title: "Create a \"sleep sanctuary\" in your bedroom", body: "To visually send the brain the message that it’s time to sleep, the bedroom should be uncluttered, void of reminders of tasks to be done, and cozy-feeling. \n\nKeep ALL screens out of the bedroom, use blackout curtains, and keep the temperature of the room cool.", sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/mental-wealth/201704/10-ways-protect-the-brain-daily-screen-time", sponsorLogo: "", sponsorURL: "")

//Thur
let weekdayNow21to24Tip12 = Tip(header: "Improve Memory", title: "If you need to remember something, read it before bedtime", body: "When you sleep, your brain puts all of your short term memory into the long term memory. \n\nThat means that the information you read right before bed stays with you longer than information learned earlier in the day.", sourceName: "Bustle", sourceURL: "https://www.bustle.com/p/9-reasons-why-you-should-read-before-bed-63326", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip13 = Tip(header: "Reduce Stress 📖", title: "Reading for 6 minutes reduces stress levels by 68%", body: "Research found that reading worked best at lowering stress levels: \n\n• Reading (68%) \n• Listening to music (61%)\n• Drinking tea (54%)", sourceName: "The Telegraph", sourceURL: "https://www.telegraph.co.uk/news/health/news/5070874/Reading-can-help-reduce-stress.html", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip14 = Tip(header: "Sleep Better", title: "Major setbacks to a good night's sleep are watching TV or looking at a computer before bed", body: "Electronic devices make it hard to fall asleep because the light emanating from the screen has the same effect as daylight. \n\nInstead, read an actual book because its a calms your body to transition into sleep mode.", sourceName: "National Sleep Foundation", sourceURL: "https://sleepfoundation.org/sleep-tools-tips/healthy-sleep-tips", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip15 = Tip(header: "Prevent Weight Gain", title: "Go to sleep. Not getting enough sleep tonight is linked to consuming more calories tomorrow", body: "Study: People who were sleep-deprived consumed, on average, 385 calories extra per day. \n\nThe extra calories were mostly in the form of fat. \n\nUnfortunately, poor food choices during the day also may affect how well we sleep at night.", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/alicegwalton/2016/11/02/the-vicious-cycle-of-sleep-deprivation-and-overeating/", sponsorLogo: "", sponsorURL: "")

//Fri
let weekdayNow21to24Tip16 = Tip(header: "Sleep Better", title: "Stretching before bed helps the mind and body relax", body: "Preparing your body for sleep by [gently] stretching helps your body recover and regenerate. \n\nGently stretching relaxes your muscles and has a calming effect.", sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/health/fitness/stretches-before-bed-proper/", sponsorLogo: "Buy Book", sponsorURL: "https://www.google.com")
let weekdayNow21to24Tip17 = Tip(header: "Sleep Better", title: "Avoid drinking alcohol before bed", body: "While alcohol makes it easier to fall asleep, as your body begins to metabolize the alcohol, your REM sleep is reduced. \n\nImpaired REM sleep leads to waking up tired and unable to concentrate.", sourceName: "Health", sourceURL: "https://www.health.com/mind-body/20-things-you-shouldn-t-do-before-bed#skip-your-wind-down-time", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip18 = Tip(header: "Live Longer", title: "Keep a regular sleep schedule — even on weekends", body: "Going to bed at different times on weekends compared to weekdays is associated with poorer sleep quality and increased tiredness. \n\nAltered sleep schedules is also associated with: \n\n• greater risk of accidents, \n• lower immune system, \n• higher risk for chronic disease, and \n• shorter life expectancy.", sourceName: "Bustle", sourceURL: "https://www.bustle.com/articles/145170-7-tips-for-maintaining-a-regular-sleep-schedule-because-consistency-is-important", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip19 = Tip(header: "Reduce Your Risk", title: "People who sleep less than 6 hours per night are more likely to develop prediabetes", body: "Many people with prediabetes go on to develop type 2 diabetes.", sourceName: "WebMD", sourceURL: "https://www.webmd.com/diabetes/news/20090312/sleep-deprivation-linked-to-prediabetes", sponsorLogo: "", sponsorURL: "")

////// WEEK 2
//Mon
let weekdayNow21to24Tip20 = Tip(header: "Get More Sleep ⏰", title: "If your alarm clock woke you up this morning, then you're probably sleep-deprived", body: "If you were getting adequate sleep, your brain would awaken you before the alarm goes off. \n\nOn average, we need 7.5 hours per night." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/sleep-disorders/features/diabetes-lack-of-sleep#2", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow21to24Tip21 = Tip(header: "Succesful Habit 🛌", title: "Survey of 300 high achievers found that the average wake-up time was 6:27 a.m.", body: "Going to bed at 10:30 p.m. allows you to get 8 hours of sleep and wake up at 6:30 a.m. \n\nSuccessful people carve out time in their morning to do to things that make them feel relaxed, energized and motivated. \n\nThat can mean working out, reading, meditating or just spending time with your loved ones." , sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/2018/10/21/smarter-living/tips-better-morning-routine.html", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip22 = Tip(header: "Get More Sleep", title: "Study: Sleeping 10 hours improves athletic performance", body: "When Stanford swimmers increased their sleep time to 10 hours a night, they felt happier, more energetic—and their athletic performance improved dramatically." , sourceName: "UC Berkeley, Greater Good Science Center", sourceURL: "https://greatergood.berkeley.edu/article/item/the_quiet_secret_to_success", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip23 = Tip(header: "Prevent Weight Gain", title: "Avoid eating food late at night because your body is more likely to store the calories as fat rather than burn it as energy", body: "Studies suggest that eating out of our normal rhythm, like late at night, may cause weight gain. \n\nPeople also tend to choose more sweet and salty foods, which tend to be more caloric." , sourceName: "The Washington Post", sourceURL: "https://www.washingtonpost.com/national/health-science/why-eating-late-at-night-may-be-particularly-bad-for-you-and-your-diet/2015/08/24/ad8b85ac-2583-11e5-b77f-eb13a215f593_story.html", sponsorLogo: "", sponsorURL: "")

//TUES
let tuesdayNow21to24Tip24 = Tip(header: "Perform Better Tomorrow", title: "Go to bed early tonight. People report Wednesday as the most tiring day of the week", body: "Analysis of Google Searches: People searched for the term \"fatigue\" the most on Wednesday." , sourceName: "The Washington Post", sourceURL: "https://www.washingtonpost.com/news/wonk/wp/2014/12/03/the-google-misery-index-the-times-of-year-were-most-depressed-anxious-and-stressed/?utm_term=.ce96d202a3f3", sponsorLogo: "", sponsorURL: "")//*TUES

let weekdayNow21to24Tip25 = Tip(header: "Improve Performance", title: "Go to bed and wake up at the same time every day", body: "Irregular patterns of sleep and wakefulness correlated with lower GPA, more difficulty falling asleep/waking up, and delayed release of the sleep-promoting hormone melatonin. \n\nGoing to sleep and waking up at approximately the same time each day appears to be as important as the number of hours you sleep." , sourceName: "Harvard Medical School", sourceURL: "https://sleep.med.harvard.edu/news/584/Irregular+Sleeping+Patterns+Linked+to+Poorer+Academic+Performance+in+College+Stu", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip26 = Tip(header: "Reduce Your Risk", title: "Getting less than 7 hours of sleep a night has been linked to diabetes and heart disease", body: "The quality of your sleep tonight directly impacts your ability to perform tomorrow. \n\nIf you’re constantly trying to get by on less than 7 hours of sleep, it will catch up with you, likely sooner rather than later." , sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/2018/10/21/smarter-living/tips-better-morning-routine.html", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip27 = Tip(header: "Improve Memory", title: "Going to sleep shortly after learning new information is most beneficial for memory recall", body: "Study: People who learned information before bedtime and took tests several hours later had superior performance in memory recall compared to people who learned the same information in the morning followed by a full day of wakefulness. \n\nIf you need to remember any information, review it prior to going to bed." , sourceName: "University of Notre Dame", sourceURL: "https://news.nd.edu/news/learning-best-when-you-rest-sleeping-after-processing-new-info-most-effective-new-study-shows/", sponsorLogo: "", sponsorURL: "")

//WED
let weekdayNow21to24Tip28 = Tip(header: "Sleep Better 📵", title: "Study: Using your smartphone within the 1 hour before bedtime makes it harder to fall asleep", body: "Research: As smartphone use increased – particularly around bedtime – sleep duration and quality decreased. \n\nPoor sleep increases your risk of: \n• obesity \n• diabetes \n• cardiovascular disease \n• depression \n• early death", sourceName: "University of California San Francisco", sourceURL: "https://www.ucsf.edu/news/2016/11/404886/smartphone-use-increases-so-does-lack-sleep", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip29 = Tip(header: "Sleep Better", title: "Optimal Sleeping Temperature: Between 60-68 °F (16-20 °C)", body: "Temps in this range cause a drop in your body temperature that initiates sleepiness. If it's too hot, you'll have more trouble sleeping." , sourceName: "mindbodygreen, a lifestyle media brand", sourceURL: "https://www.mindbodygreen.com/0-20168/a-nighttime-ritual-for-deep-restful-sleep.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow21to24Tip30 = Tip(header: "Perform Better Tomorrow", title: "Exercise tomorrow morning to feel better all day", body: "Cardio workouts can your improve mood. \n• Walking \n• Running \n• Swimming \n\nExercising in the morning allows you to enjoy these effects all day. \n\nIf you wait to exercise until tonight, you'll end up sleeping through some of the good feelings.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip31 = Tip(header: "Lose Weight", title: "Go to sleep. Not getting enough sleep may be associated with increased caloric intake, and decreased physical activity, resulting in obesity", body: "4-Week Study Of Overweight People: \n• Those who slept 60 minutes more than usual lost an average of 4 pounds. \n• Those who slept 30 minutes more than usual lost an average of 2 pounds. \n\nMore sleep will make you feel less tired during the day, making you more likely to exercise more, leading to higher energy expenditure, which leads to weight loss.", sourceName: "Reuters", sourceURL: "https://www.reuters.com/article/us-health-obesity-sleep/teens-who-need-to-lose-weight-should-quit-staying-up-so-late-idUSKBN2012P2", sponsorLogo: "", sponsorURL: "")


//THUR
let weekdayNow21to24Tip32 = Tip(header: "Billionaire Habit", title: "Read before bed", body: "Microsoft co-founder Bill Gates reads for an hour before bed. \n\nHis reading topics range from healthcare to climate change to business and politics." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/why-executives-read-before-bed-2017-9", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip33 = Tip(header: "Increase Happiness", title: "Go to bed. Become a morning person", body: "Study: Morning people are happier and more satisfied with life overall than night owls. \n\nMorning people tended to say they felt healthier than did night owls. \n\nTo become a morning person: \n• Go to bed earlier and wake up earlier \n• Wake up at the same time every day \n• Get sunlight exposure early in the morning" , sourceName: "Live Science", sourceURL: "https://www.live,science.com/20880-morning-people-happier.html", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip34 = Tip(header: "Sleep Better", title: "Avoid sugar and alcohol before bedtime", body: "They inhibit sleep patterns and hinder muscle recovery and growth. \n\nGrowth hormones release only when you're in REM sleep, which is the third cycle of sleep." , sourceName: "8 Weeks to SEALFIT", sourceURL: "https://www.amazon.com/dp/B00DFFGMPO/", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip35 = Tip(header: "Prevent Weight Gain", title: "Get 7+ hours of sleep. When we’re tired we eat more", body: "Study: People, on average, ate 385 extra calories following a night of sleep deprivation. \n\nThat’s about one serving of Häagen-Dazs ice cream a day." , sourceName: "Vox", sourceURL: "https://www.vox.com/science-and-health/2019/3/26/18280663/night-eating-sleep-loss-weight-gain", sponsorLogo: "", sponsorURL: "")

//FRI
let weekdayNow21to24Tip36 = Tip(header: "Sleep Better", title: "Avoid alcohol, cigarettes, caffeine, and heavy meals in the evening", body: "Alcohol, cigarettes, and caffeine can disrupt sleep. Eating big or spicy meals can cause discomfort from indigestion that can make it hard to sleep. \n\nAvoid eating large meals 2-3 hours before bedtime. Try a light snack 45 minutes before bed if you’re still hungry." , sourceName: "National Sleep Foundation", sourceURL: "https://www.sleepfoundation.org/articles/healthy-sleep-tips", sponsorLogo: "Buy Book", sponsorURL: "www.google.com")
let weekdayNow21to24Tip37 = Tip(header: "Successful Habit", title: "Elite performers sleep more than 8 hours at night so they can be at peak performance", body: "A study of the best violinists, found that the best violinists slept one hour a night more than the less-accomplished violinists. The best violinists averaged 8.6 hours of sleep each night." , sourceName: "UC Berkeley, Greater Good Science Center", sourceURL: "https://greatergood.berkeley.edu/article/item/the_quiet_secret_to_success", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip38 = Tip(header: "Sleep Better", title: "Avoid blue lights emitted from electronics tonight", body: "Light is the biggest anchor for sleep. Blue light suppresses melatonin twice as much as other wavelengths of light. \n\nIf you're unwilling to banish technology at bedtime, you can try: \n\n• Apple's Night Shift mode \n• f.lux software \n• Twilight software" , sourceName: "SUCCESS Magazine", sourceURL: "https://www.success.com/the-new-secrets-of-perfect-sleep/", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip39 = Tip(header: "Prevent Weight Gain", title: "Keep the same sleep schedule (even on the weekends)", body: "It may be difficult to give up sleeping in on weekends, but inconsistent sleep patterns can make it harder to reach deep sleep. \n\nInconsistent sleep patterns also cause weight gain." , sourceName: "SUCCESS Magazine", sourceURL: "https://www.success.com/the-new-secrets-of-perfect-sleep/", sponsorLogo: "", sponsorURL: "")

//WEEK 3
//MON
let weekdayNow21to24Tip40 = Tip(header: "Successful Habit", title: "Go to bed earlier. Top CEOs wake up early", body: "In a poll of 20 executives, 90% said they wake up before 6:00 AM on weekdays. \n\n• 4:00 AM: PepsiCo CEO Indra Nooyi \n• 4:30 AM: Disney CEO Bob Iger \n• 5:30 AM: Twitter CEO Jack Dorsey" , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/what-successful-people-do-before-breakfast-2015-10", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow21to24Tip41 = Tip(header: "Live Longer", title: "Get 7-9 hours of sleep per night", body: "Getting enough sleep recharges your brain, keeps your immune system functioning smoothly, and decreases your risk of a heart attack. \n\nGo to bed at the same time every night and wake up the same time each morning; keep your bedroom dark, quiet, and cool; and use a comfortable mattress and pillows.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip42 = Tip(header: "Millionaire Habit", title: "Wake up 3 hours before your workday begins", body: "Study of 177 self-made millionaires: 50% of them woke up at least 3 hours before their workday began. Most of them start the day at dawn, or even before. \n\nGetting up at 5 AM to tackle the top 3 things you want to accomplish in your day allows you to regain control of your life. It gives you a sense of confidence that you control your life.", sourceName: "Yahoo! Finance", sourceURL: "https://uk.finance.yahoo.com/news/11-habits-start-20s-want-150800135.html", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip43 = Tip(header: "Prevent Weight Gain", title: "Getting 8.5 hours of sleep each night can drop cravings for junk food by 62% and decrease overall appetite by 14%", body: "Mayo Clinic researchers note similar findings: In their study, adults who slept 80 minutes less than a control group consumed an average of 549 additional calories daily. \n\nThat’s more calories than you’ll find in a Big Mac!", sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/weight-loss-lifestyle/", sponsorLogo: "", sponsorURL: "")

//TUES
let weekdayNow21to24Tip44 = Tip(header: "Billionaire Habit", title: "Wake up between 5 a.m. and 6 a.m and religiously follow a morning routine", body: "It’s important to get up early so your can have time for yourself — when you aren’t distracted by calls and other people. \n\nMorning routines of billionaires include: \n• Reading \n• Exercise \n• Meditation \n• Walking their kids to school", sourceName: "Market Watch", sourceURL: "https://www.marketwatch.com/story/4-habits-that-self-made-billionaires-practice-nearly-every-day-2019-07-11", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip45 = Tip(header: "Stay Healthy", title: "Research on the amount of sleep you need per day: \n• Teens need 8-10 hours \n• Adults need 7-9 hours", body: "A lack of sleep: \n\n• Increases your risk of high blood pressure and heart attack. \n\n• Decreases cognitive functioning and increases your risk of depression. \n\n• Increases your risk of diabetes and obesity.", sourceName: "The Ladders", sourceURL: "https://www.theladders.com/career-advice/top-8-sleep-myths-that-can-harm-your-health", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip46 = Tip(header: "Increase IQ", title: "8 hours of sleep tonight = higher IQ tomorrow", body: "Study: Each hour less of 8 hours of sleep tonight could decrease one point from you IQ tomorrow.", sourceName: "Inc.", sourceURL: "https://www.inc.com/melanie-curtin/7-scientifically-backed-ways-to-boost-your-iq-in-30-days-or-less.html", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip47 = Tip(header: "Healthy Habit", title: "Quality sleep is a key ingredient to your health", body: "Sleep helps combat obesity; it improves the immune system; it's vital for optimal mental function and improves all markers of physical performance. \n\nDon't let anyone - not your boss, not your spouse, not your inner critic - make you feel bad for getting sleep.", sourceName: "Own The Day, Own Your Life", sourceURL: "https://www.amazon.com/dp/B072HLS5QJ/", sponsorLogo: "", sponsorURL: "")

//WED
let weekdayNow21to24Tip48 = Tip(header: "Sleep Better", title: "By 10 PM, all blue light should be out", body: "Blue light, from your computer and smartphone screens, counteracts the natural release of melatonin, the darkeness signal in the brain that makes us sleepy.", sourceName: "Own The Day, Own Your Life", sourceURL: "https://www.amazon.com/dp/B072HLS5QJ/", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip49 = Tip(header: "Successful People", title: "Sleep 8+ hours per night", body: "• Heidi Klum sleeps 10 hours every night. \n\n• Matthew McConaughey sleeps 8.5 hours per day. \n\n• Jeff Bezos said, \"I just feel so much better all day long if I've had 8 hours.\"", sourceName: "Own The Day, Own Your Life", sourceURL: "https://www.amazon.com/dp/B072HLS5QJ/", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip50 = Tip(header: "Increase Attraction", title: "Go to bed. Not getting enough sleep makes you less attractive", body: "Study: People showed redder, more swollen eyes, dark circles, and paler skin after a night of no sleep. \n\nSleep-deprived people were also perceived to look sadder than they did after a good night's sleep.", sourceName: "Allure", sourceURL: "https://www.allure.com/story/sleep-and-skin-what-happens", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip51 = Tip(header: "Millionaire Habit", title: "Read tonight. 88% of rich people surveyed devote 30+ minutes each day to education or self-improvement through reading", body: "Most of the rich people surveyed do not read for entertainment; they prefer biographies, history, and self-help books. \n\nThere are important lessons to be learned in biographies of people with rags-to-riches stories.", sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2016/11/29/7-habits-of-highly-successful-people-from-a-man-who-spent-5-years-studying-them.html", sponsorLogo: "", sponsorURL: "")

//THURS
let weekdayNow21to24Tip52 = Tip(header: "Increase Happiness", title: "Sleep at least 7.5 hours a night", body: "Research: If you're sleeping less than 6 hours per night, you're about 30% LESS happy than you would be if you had slept enough. \n\nCutting sleep is almost always a bad idea; you're less productive and less creative, you have less energy, and you'll likely lose time in the long run because sleep-deprived people live shorter lives.", sourceName: "Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip53 = Tip(header: "Sleep Better", title: "Avoid electronic devices after 9 PM. Blue light from the screens suppress melatonin release and shifts our sleep cycle", body: "We need darkness to cue us to sleep. \n\nAverage sleep dealy at night: \n• Tablet: 96 min \n• Smartphone: 67 min \n• E-reader: 58 min \n• Light bulb: 55 min \n• Candle: 0 min", sourceName: "National Geographic", sourceURL: "https://www.nationalgeographic.com/magazine/2018/08/science-of-sleep/", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip54 = Tip(header: "🚶‍♂️", title: "Each night before bed, Buffer CEO, Joel Gascoigne, takes a 20-minute walk.", body: "\"This is a wind-down period and allows me to evaluate the day's work, think about the greater challenges, gradually stop thinking about work, and reach a state of tiredness,\" he writes. \n\nStudies find that walking—especially in nature—reduces stress and anxiety.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/what-successful-people-do-right-before-bed-2016-1", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip55 = Tip(header: "Successful Habit", title: "Composer Ludwig van Beethoven went to bed at 10 p.m. at the latest", body: "He was able to optimize his early-morning routine because he got his recommended 7 to 9 hours of sleep the night before. \n\nTo get into the habit of going to bed early, set an alarm in the evening to remind you to go to sleep", sourceName: "Fast Company", sourceURL: "https://www.fastcompany.com/3042968/the-evening-routines-of-the-most-successful-people", sponsorLogo: "", sponsorURL: "")

//FRI
let weekdayNow21to24Tip56 = Tip(header: "Sleep Better", title: "Stop drinking liquids 60 minutes before bed", body: "This is usually the least time it takes you to pass excess fluid. \n\nThe exception here is if you have been drinking alcohol. Go ahead and continue drinking water right up to bedtime.", sourceName: "Own The Day, Own Your Life", sourceURL: "https://www.amazon.com/dp/B072HLS5QJ/", sponsorLogo: "Buy Book", sponsorURL: "www.google.com")//Alcohol
let weekdayNow21to24Tip57 = Tip(header: "Billionaire Habit", title: "Each night before bed, Microsoft billionaire Bill Gates spends an hour reading a book, ranging on topics from politics to current events.", body: "Aside from gaining new knowledge, reading daily: \n• Reduces stress \n• Improves memory \n\nStudy: Reading for as little as 6 minutes a day can reduce stress levels by up to 68%. \n\nStudy: People who stimulated their minds through activities like reading, reduced cognitive decline by an average of 32% as they got older in age.", sourceName: "Lifehack", sourceURL: "https://www.lifehack.org/articles/productivity/6-habits-highly-successful-people-before-bedtime.html", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip58 = Tip(header: "Millionaire Habit", title: "Arianna Huffington's tips for better sleep:", body: "• No electronic devices 30 minutes before bedtime (or remove all devices from your bedroom) \n\n• No working on the bed \n\n• Do some light stretching and deep breathing \n\n• Wear pajamas to send a sleep-friendly message to your body \n\n• Read physical books or use an e-reader that does not emit blue light \n\n• Drink chamomile or lavender tea \n\n• Write a list of things you are grateful for", sourceName: "The Mindful Company", sourceURL: "https://www.mindful-company.com/blogs/notebook/the-night-routines-of-notable-people", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip59 = Tip(header: "CEO Advice", title: "Kenneth Chenault, CEO of American Express, writes down 3 things he wants to accomplish tomorrow", body: "This helps him prioritize first thing tomorrow. \n\nClearing the mind for a good night sleep is critical for a lot of successful people.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/what-successful-people-do-right-before-bed-2016-1", sponsorLogo: "", sponsorURL: "")


//WEEK 4
//MON
let weekdayNow21to24Tip60 = Tip(header: "Have A Better Tomorrow", title: "Write down the things you have to do for the next day before going to bed. It puts your mind at ease", body: "The two main benefits are: \n\n• You stop thinking about it, letting you fall asleep easier. \n\n• When you wake up, you get clarity on what you wrote down.", sourceName: "Medium", sourceURL: "https://medium.com/swlh/how-to-build-a-strong-morning-routine-the-essential-guide-2f8b50fc505", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip61 = Tip(header: "Daily Habit", title: "Get 8 Hours of Sleep — Your body needs its rest.", body: "German philosopher Arthur Schopenhauer said that sleep is the interest we pay on the loan of life. Be glad to pay it. It’s what keeps us alive. \n\nGuard your sleep carefully, it’s an obligation. All the other goals and habits become irrelevant if you don’t have the energy and clarity to do them." , sourceName: "Ryan Holiday", sourceURL: "https://ryanholiday.net/13-life-changing-habits-to-try-and-do-every-single-day/", sponsorLogo: "", sponsorURL: "")

//let weekdayNow5to8Tip62
//let weekdayNow5to8Tip63


//TUES
let weekdayNow21to24Tip64 = Tip(header: "Weight Loss", title: "Survey: Best bedtime for weight loss is 10:10pm", body: "The gives you 20 minutes to nod off, and 90 minutes for the most restorative sleep state — non-REM — which is best accomplished before midnight, according to research. \n\nThis also reduces your sugar cravings tomorrow: \n\n• 74% of people that slept for 7.5+ hours lost weight more easily. \n\n• However, people that slept for less than 7 hours each night were more likely to snack between meals and cheat on their diets." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/how-your-sleeping-pattern-affects-your-ability-to-stick-to-a-diet-2017-12?amp", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip65 = Tip(header: "Daily Habit", title: "The best way to improve is to review and reflect on your day", body: "Each evening, you should examine your entire day and go back over what you’ve done and said, hiding nothing from yourself. \n\n• Did you follow your plans for the day? \n• Were you prepared enough? \n• What could you do better? \n• What have you learned that will help you tomorrow?" , sourceName: "Ryan Holiday", sourceURL: "https://ryanholiday.net/13-life-changing-habits-to-try-and-do-every-single-day/", sponsorLogo: "", sponsorURL: "")
//let weekdayNow5to8Tip66
//let weekdayNow5to8Tip67



//WED
let weekdayNow5to8Tip68 = Tip(header: "Weight Loss", title: "Research: A good sleep routine leads to good eating habits and and weight loss", body: "Go to bed at 10:10pm every night \n• Get 7.5+ hours of sleep every night \n\nPeople sleeping for less than 7 hours a night have more chaotic eating patterns to mirror their erratic sleeping habits. \n\nPoor sleepers were more likely to snack between meals, drink more alcohol, and cheat on their diets than someone getting more sleep." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/how-your-sleeping-pattern-affects-your-ability-to-stick-to-a-diet-2017-12?amp", sponsorLogo: "", sponsorURL: "")


//WEEK 1
// Monday
let weekdayNow21to24TipArray0 = [mondayNow21to24Week1Tip1, mondayNow21to24Week1Tip2, mondayNow21to24Week1Tip3, mondayNow21to24Week1Tip4]
let mondayNow21to24Topic1 = Topic(title: weekdayNow21to24Title, icon: weekdayNow21to24Icon, tip: weekdayNow21to24TipArray0)

// Tuesday
let weekdayNow21to24TipArray1 = [weekdayNow21to24Tip4, weekdayNow21to24Tip5, weekdayNow21to24Tip6, weekdayNow21to24Tip7]
let tuesdayNow21to24Topic1 = Topic(title: weekdayNow21to24Title, icon: weekdayNow21to24Icon, tip: weekdayNow21to24TipArray1)

// Wednesday
let weekdayNow21to24TipArray2 = [weekdayNow21to24Tip8, weekdayNow21to24Tip9, weekdayNow21to24Tip10, weekdayNow21to24Tip11]
let wednesdayNow21to24Topic1 = Topic(title: weekdayNow21to24Title, icon: weekdayNow21to24Icon, tip: weekdayNow21to24TipArray2)

// Thursday
let weekdayNow21to24TipArray3 = [weekdayNow21to24Tip12, weekdayNow21to24Tip13, weekdayNow21to24Tip14, weekdayNow21to24Tip15]
let thursdayNow21to24Topic1 = Topic(title: weekdayNow21to24Title, icon: weekdayNow21to24Icon, tip: weekdayNow21to24TipArray3)

// Friday
let weekdayNow21to24TipArray4 = [weekdayNow21to24Tip16, weekdayNow21to24Tip17, weekdayNow21to24Tip18, weekdayNow21to24Tip19]
let fridayNow21to24Topic1 = Topic(title: weekdayNow21to24Title, icon: weekdayNow21to24Icon, tip: weekdayNow21to24TipArray4)

////WEEK 2
// Monday
let weekdayNow21to24TipArray5 = [weekdayNow21to24Tip20, weekdayNow21to24Tip21, weekdayNow21to24Tip22, weekdayNow21to24Tip23]
let mondayNow21to24Topic2 = Topic(title: weekdayNow21to24Title, icon: weekdayNow21to24Icon, tip: weekdayNow21to24TipArray5)

// Tuesday
let weekdayNow21to24TipArray6 = [tuesdayNow21to24Tip24, weekdayNow21to24Tip25, weekdayNow21to24Tip26, weekdayNow21to24Tip27]
let tuesdayNow21to24Topic2 = Topic(title: weekdayNow21to24Title, icon: weekdayNow21to24Icon, tip: weekdayNow21to24TipArray6)

// Wednesday
let weekdayNow21to24TipArray7 = [weekdayNow21to24Tip28, weekdayNow21to24Tip29, weekdayNow21to24Tip30, weekdayNow21to24Tip31]
let wednesdayNow21to24Topic2 = Topic(title: weekdayNow21to24Title, icon: weekdayNow21to24Icon, tip: weekdayNow21to24TipArray7)

// Thursday
let weekdayNow21to24TipArray8 = [weekdayNow21to24Tip32, weekdayNow21to24Tip33, weekdayNow21to24Tip34, weekdayNow21to24Tip35]
let thursdayNow21to24Topic2 = Topic(title: weekdayNow21to24Title, icon: weekdayNow21to24Icon, tip: weekdayNow21to24TipArray8)

// Friday
let weekdayNow21to24TipArray9 = [weekdayNow21to24Tip36, weekdayNow21to24Tip37, weekdayNow21to24Tip38, weekdayNow21to24Tip39]
let fridayNow21to24Topic2 = Topic(title: weekdayNow21to24Title, icon: weekdayNow21to24Icon, tip: weekdayNow21to24TipArray9)

//WEEK 3
// Monday
let weekdayNow21to24TipArray10 = [weekdayNow21to24Tip40, weekdayNow21to24Tip41, weekdayNow21to24Tip42, weekdayNow21to24Tip43]
let mondayNow21to24Topic3 = Topic(title: weekdayNow21to24Title, icon: weekdayNow21to24Icon, tip: weekdayNow21to24TipArray10)

// Tuesday
let weekdayNow21to24TipArray11 = [weekdayNow21to24Tip44, weekdayNow21to24Tip45, weekdayNow21to24Tip46, weekdayNow21to24Tip47]
let tuesdayNow21to24Topic3 = Topic(title: weekdayNow21to24Title, icon: weekdayNow21to24Icon, tip: weekdayNow21to24TipArray11)

// Wednesday
let weekdayNow21to24TipArray12 = [weekdayNow21to24Tip48, weekdayNow21to24Tip49, weekdayNow21to24Tip50, weekdayNow21to24Tip51]
let wednesdayNow21to24Topic3 = Topic(title: weekdayNow21to24Title, icon: weekdayNow21to24Icon, tip: weekdayNow21to24TipArray12)

// Thursday
let weekdayNow21to24TipArray13 = [weekdayNow21to24Tip52, weekdayNow21to24Tip53, weekdayNow21to24Tip54, weekdayNow21to24Tip55]
let thursdayNow21to24Topic3 = Topic(title: weekdayNow21to24Title, icon: weekdayNow21to24Icon, tip: weekdayNow21to24TipArray13)

// Friday
let weekdayNow21to24TipArray14 = [weekdayNow21to24Tip56, weekdayNow21to24Tip57, weekdayNow21to24Tip58, weekdayNow21to24Tip59]
let fridayNow21to24Topic3 = Topic(title: weekdayNow21to24Title, icon: weekdayNow21to24Icon, tip: weekdayNow21to24TipArray14)

//WEEK 4
//MONDAY
let weekdayNow21to24TipArray15 = [weekdayNow21to24Tip60, weekdayNow21to24Tip61, weekdayNow21to24Tip22, weekdayNow21to24Tip23]//WIP
//TUESDAY
let weekdayNow21to24TipArray16 = [weekdayNow21to24Tip64, weekdayNow21to24Tip65, weekdayNow21to24Tip46, weekdayNow21to24Tip47]//WIP
//WEDNESDAY
let weekdayNow21to24TipArray17 = [weekdayNow5to8Tip68, weekdayNow21to24Tip49, weekdayNow21to24Tip50, weekdayNow21to24Tip51]//WIP

/////////////////
//RANDOM - MON
let mondayNow21to24TipArrays = [weekdayNow21to24TipArray0, weekdayNow21to24TipArray5, weekdayNow21to24TipArray10, weekdayNow21to24TipArray15]
let mondayNow21to24Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: mondayNow21to24TipArrays.random())

//RANDOM - TUE
let tuesdayNow21to24TipArrays = [weekdayNow21to24TipArray1, weekdayNow21to24TipArray6, weekdayNow21to24TipArray11, weekdayNow21to24TipArray16]
let tuesdayNow21to24Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: tuesdayNow21to24TipArrays.random())

//RANDOM - WED
let wednesdayNow21to24TipArrays = [weekdayNow21to24TipArray2, weekdayNow21to24TipArray7, weekdayNow21to24TipArray12]
let wednesdayNow21to24Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: wednesdayNow21to24TipArrays.random())

//RANDOM - THU
let thursdayNow21to24TipArrays = [weekdayNow21to24TipArray3, weekdayNow21to24TipArray8, weekdayNow21to24TipArray13]
let thursdayNow21to24Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: thursdayNow21to24TipArrays.random())

//RANDOM - FRI
let fridayNow21to24TipArrays = [weekdayNow21to24TipArray4, weekdayNow21to24TipArray9, weekdayNow21to24TipArray14]
let fridayNow21to24Topic = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: fridayNow21to24TipArrays.random())








// MARK: - MONTHS

// MARCH
let marchTip1 = Tip(header: "😔", title: "If you're feeling depressed, anxious, and stressed right now, you're not alone. March is the most miserable month of the year", body: "According to an analysis of Google searches, people's search interest for \"depression\", \"anxiety\", \"stress\", \"fatigue\", and \"pain\" were highest in March. Researchers have discovered greater incidence of depression and anxiety in the spring months. Lengthening daylight may confuse people's chemical regulatory system, which can affect mood.", sourceName: "The Washington Post", sourceURL: "https://www.washingtonpost.com/news/wonk/wp/2014/12/03/the-google-misery-index-the-times-of-year-were-most-depressed-anxious-and-stressed/?noredirect=on&utm_term=.0937735eaee2", sponsorLogo: "", sponsorURL: "")
// APRIL
let aprilTip1 = Tip(header: "😔", title: "If you're feeling depressed, anxious, and stressed right now, you're not alone. April is one of the most miserable months of the year", body: "According to an analysis of Google searches, people's search interest for \"depression\", \"anxiety\", \"stress\", \"fatigue\", and \"pain\" were higher than normal in April. Researchers have discovered greater incidence of depression and anxiety in the spring months. Lengthening daylight may confuse people's chemical regulatory system, which can affect mood.", sourceName: "The Washington Post", sourceURL: "https://www.washingtonpost.com/news/wonk/wp/2014/12/03/the-google-misery-index-the-times-of-year-were-most-depressed-anxious-and-stressed/?noredirect=on&utm_term=.0937735eaee2", sponsorLogo: "", sponsorURL: "")
// OCTOBER
let octoberTip1 = Tip(header: "😔", title: "If you're feeling depressed, anxious, and stressed right now, you're not alone. October is one of the most miserable months of the year", body: "According to an analysis of Google searches, people's search interest for \"depression\", \"anxiety\", \"stress\", \"fatigue\", and \"pain\" were higher than normal in October and November. As daylight decreases in the fall, people have more feelings of depression, anxiety, and stress.", sourceName: "The Washington Post", sourceURL: "https://www.washingtonpost.com/news/wonk/wp/2014/12/03/the-google-misery-index-the-times-of-year-were-most-depressed-anxious-and-stressed/?noredirect=on&utm_term=.0937735eaee2", sponsorLogo: "", sponsorURL: "")
// NOVEMBER
let novemberTip1 = Tip(header: "😔", title: "If you're feeling depressed, anxious, and stressed right now, you're not alone. November is one of the most miserable months of the year", body: "According to an analysis of Google searches, people's search interest for \"depression\", \"anxiety\", \"stress\", \"fatigue\", and \"pain\" were higher than normal in November. As daylight decreases in the fall, people have more feelings of depression, anxiety, and stress.", sourceName: "The Washington Post", sourceURL: "https://www.washingtonpost.com/news/wonk/wp/2014/12/03/the-google-misery-index-the-times-of-year-were-most-depressed-anxious-and-stressed/?noredirect=on&utm_term=.0937735eaee2", sponsorLogo: "", sponsorURL: "")

// WINTER / COLD SEASON
let winterTip1 = Tip(header: "", title: "Study: A high does of garlic can reduce  the number of days someone feels sick with cold or flu by 61%", body: "Another study found that garlic consumption reduced the number of colds by 63% versus a placebo. \n\nFurther, the average length of cold symptoms for those who were sick was also reduced , from 5 days to 1.5 days in the group taking garlic. \n\nEat garlic in the winter or if anyone in your house is getting sick.", sourceName: "Own The Day, Own Your Life", sourceURL: "https://www.amazon.com/dp/B072HLS5QJ/", sponsorLogo: "", sponsorURL: "")


// MARK: - HOLIDAYS

let newyearsTip1 = Tip(header: "🎉", title: "New Year's resolutions are exactly the wrong way to change our behavior", body: "88% of all resolutions end in failure. Willpower, like a bicep, can only exert itself so long before it gives out; it's an extremely limited mental resource. Therefore, it makes no sense to try to quit smoking and lose weight at the same time. Instead, we should respect the weakness of self-control, and spread our resolutions out over the entire year.", sourceName: "The Wall Street Journal", sourceURL: "https://www.wsj.com/articles/SB10001424052748703478704574612052322122442", sponsorLogo: "", sponsorURL: "")
let newyearsTip2 = Tip(header: "🎊", title: "New Years’ Resolutions don’t work. 90-day sprints, then recovery breaks, work better", body: "Every 90 days, you review the previous 90 days, then you set new goals for the next 90 days. Every 90 days, you reset and re-assess. Every 90 days, you should have a celebration for the progress you’ve made.", sourceName: "Medium", sourceURL: "https://medium.com/thrive-global/30-behaviors-that-will-make-you-unstoppable-in-2019-e42c92cbcda9", sponsorLogo: "", sponsorURL: "")


//Daylight Savings
let daylightSavingsPM1 = Tip(header: "", title: "Daylight Savings: Get 7+ hours of sleep tonight", body: "Even small adjustments in sleep can be problematic. \n\nThe Monday after a daylight saving time change in the U.S., there’s a 24 percent increase in heart attacks, compared with other Mondays, and a jump in fatal car crashes too", sourceName: "National Geographic", sourceURL: "https://www.nationalgeographic.com/magazine/2018/08/science-of-sleep/", sponsorLogo: "", sponsorURL: "")

