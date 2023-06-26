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

//MARK: No-Debt Or Have-Debt

func wealthDebtTopics() -> Topics {
      var selectedTopic: Topics!
      switch defaults.integer(forKey: debtKey)
      {
        case 0:
            //NO Debt
            selectedTopic = Topics(title: wealthTitle, icon: Constants.Icon.wealth, topics: [wealthTopic,])
        case 1:
            //HAVE Debt
            selectedTopic = Topics(title: wealthTitle, icon: Constants.Icon.wealth, topics: [wealthTopic, debtTopic])

        default:
            //NO Debt
            selectedTopic = Topics(title: wealthTitle, icon: Constants.Icon.wealth, topics: [wealthTopic])
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

func dateMaleOrFemaleTopics() -> Topics {
      var selectedTopic: Topics!
      switch defaults.integer(forKey: sexKey)
      {
        case 0:
            //NO Male
            selectedTopic = Topics(title: wealthTitle, icon: Constants.Icon.wealth, topics: [wealthTopic,])
        case 1:
            //HAVE Female
            selectedTopic = Topics(title: wealthTitle, icon: Constants.Icon.wealth, topics: [wealthTopic, debtTopic])

        default:
            //NO Male
            selectedTopic = Topics(title: wealthTitle, icon: Constants.Icon.wealth, topics: [wealthTopic])
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
       selectedTopic = Topics(title: "Dating", icon: Constants.Icon.relationship, topics: [singleDayTopic])
   case 1:
       //relationship
       selectedTopic = Topics(title: "Relationship", icon: Constants.Icon.relationship, topics: [relationshipDayTopic,])
   default:
       selectedTopic = Topics(title: "Dating", icon: Constants.Icon.relationship, topics: [singleDayTopic])
   }
   return selectedTopic
}

func relationshipPM() -> Topics {
   var selectedTopic: Topics!
   switch defaults.integer(forKey: relationshipKey)
   {
   case 0:
       //single
       selectedTopic = Topics(title: "Dating", icon: Constants.Icon.relationship, topics: [singlePMTopic])
   case 1:
       //relationship
       selectedTopic = Topics(title: "Relationship", icon: Constants.Icon.relationship, topics: [relationshipPMTopic,])
   default:
       selectedTopic = Topics(title: "Dating", icon: Constants.Icon.relationship, topics: [singlePMTopic])
   }
   return selectedTopic
}

func relationshipNight() -> Topics {
   var selectedTopic: Topics!
   switch defaults.integer(forKey: relationshipKey)
   {
   case 0:
       //single
       selectedTopic = Topics(title: "Dating", icon: Constants.Icon.relationship, topics: [singlePMTopic])
   case 1:
       //relationship
       selectedTopic = Topics(title: "Relationship", icon: Constants.Icon.relationship, topics: [relationshipBedTopic,])
   default:
       selectedTopic = Topics(title: "Dating", icon: Constants.Icon.relationship, topics: [singlePMTopic])
   }
   return selectedTopic
}

