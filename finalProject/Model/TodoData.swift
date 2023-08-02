//
//  TodoData.swift
//  finalProject
//
//  Created by Andrew Jenson on 6/4/23.
//  Copyright © 2023 Andrew Jenson. All rights reserved.
//

import Foundation

//MARK: - User TODOs
//Each key represents 1 'todo' assigned to a 'tip' (value: bool)
let financialBankAccountKey = "FinancialBankAccount"

let wealth_todo_Tip0_Key = "HaveBankAccount"
let wealth_todo_Tip1_Key = "HaveInBank1st"
let wealth_todo_Tip2_Key = "HaveInBank2nd"
let wealth_todo_Tip3_Key = "HaveVanguardAccount"
let wealth_todo_Tip4_Key = "HaveS&P500ETFOrIndexFund"
let wealth_todo_Tip5_Key = "EnrolledIn401K"
let wealth_todo_Tip6_Key = "LiveOnFourPercent"

let health_todo_Tip0_Key = "NotSmoking"
let health_todo_Tip1_Key = "ModerateAlcohol"
let health_todo_Tip2_Key = "ExercisingWeekly"
let health_todo_Tip3_Key = "NotFast-FoodEater"
let health_todo_Tip4_Key = "NotDrinkerSoda"
let health_todo_Tip5_Key = "DrinkWaterDaily"
//Startup
let startup_todo_0_Tip0_Key = "ProblemYouCareAbout"
let startup_todo_0_Tip1_Key = "BrainstormWithFriend"
let startup_todo_0_Tip2_Key = "HaveEngineer"
let startup_todo_0_Tip3_Key = "StartedWithProblem"
let startup_todo_0_Tip4_Key = "ReadyToTestIdea"

let startup_todo_1_Tip0_Key = "NotLoveMVP"
let startup_todo_1_Tip1_Key = "WroteSpecMVP"
let startup_todo_1_Tip2_Key = "WroteTestMVP"
let startup_todo_1_Tip3_Key = "BuiltInMonthMVP"
let startup_todo_1_Tip4_Key = "TalkedToPeople1st"
let startup_todo_1_Tip5_Key = "BuiltMVP"
let startup_todo_1_Tip6_Key = "LaunchedMVPEmbarrassed"
let startup_todo_1_Tip7_Key = "TalkedToPeople2nd"
let startup_todo_1_Tip8_Key = "GotUsers1st"

let startup_todo_2_Tip0_Key = "DelawareCCorp"
let startup_todo_2_Tip1_Key = "DirectContactUsers"
let startup_todo_2_Tip2_Key = "TalkedToPeople3rd"
let startup_todo_2_Tip3_Key = "CustomersLoveProduct"
let startup_todo_2_Tip4_Key = "GeneratingRevenue"

let startup_todo_3_Tip0_Key = "RepeatableSalesProcess"
let startup_todo_3_Tip1_Key = "RepeatableBusinessModel"
let startup_todo_3_Tip2_Key = "TestPMF"
let startup_todo_3_Tip3_Key = "GotPMF"

let doneBoolFunction = getUserDefaultsBoolValue(forKey: financialBankAccountKey)


// MARK: - FilterData file contains User Defaults' Keys


//MARK: User Defaults for Done Type
func getUserDefaultsBoolValue(forKey key: String) -> Bool {
    if defaults.object(forKey: key) != nil {
        return defaults.bool(forKey: key)
    } else {
        return false // Return a default value if the key does not exist
    }
}

func setUserDefaultsBoolValue(_ value: Bool, forKey key: String) {
    defaults.set(value, forKey: key)
}

//Used in FilterTableViewCell
func updateDoneType(_ currentBool: Bool) -> Bool {
    return currentBool ? false : true
}


//MARK: Health Todos (Only 1 Stage)

let health_todo_Title = "Health"
let health_todo_Icon = Constants.Icon.health

//0
let health_todo_Tip0 = Tip(header: "", title: "🚭 Not smoking/vaping", body: "Smoking is a strong risk factor for cancer, diseases, and earlier death" , sourceName: "Harvard University", sourceURL: "https://www.hsph.harvard.edu/nutritionsource/healthy-longevity/", doneBool: getUserDefaultsBoolValue(forKey: health_todo_Tip0_Key), doneKey: health_todo_Tip0_Key, buyURL: "")

let health_todo_Tip1 = Tip(header: "", title: "🍺 Moderate alcohol drinker", body: "Moderate drinking (1 drink daily for women and 2 drinks daily for men) is associated with lower risk of type 2 diabetes, heart attacks, and early death." , sourceName: "Harvard University", sourceURL: "https://www.hsph.harvard.edu/nutritionsource/healthy-longevity/", doneBool: getUserDefaultsBoolValue(forKey: health_todo_Tip1_Key), doneKey: health_todo_Tip1_Key, buyURL: "")
let health_todo_Tip2 = Tip(header: "", title: "🏋️‍♀️ Exercising weekly", body: "Minimum of 2.5-5 hours weekly of moderate to vigorous activity plus two days a week of muscle-strengthening exercises." , sourceName: "Harvard University", sourceURL: "https://www.hsph.harvard.edu/nutritionsource/healthy-longevity/", doneBool: getUserDefaultsBoolValue(forKey: health_todo_Tip2_Key), doneKey: health_todo_Tip2_Key, buyURL: "")
let health_todo_Tip3 = Tip(header: "", title: "🍟 Not a fast-food eater", body: "Five of the most unhealthy fast food options: burgers and fries, fried chicken, sandwich meats, etc." , sourceName: "Cleveland Clinic", sourceURL: "https://health.clevelandclinipc.org/heres-how-fast-food-can-affect-your-body/", doneBool: getUserDefaultsBoolValue(forKey: health_todo_Tip3_Key), doneKey: health_todo_Tip3_Key, buyURL: "")
let health_todo_Tip4 = Tip(header: "", title: "🥤 Not a drinker of sodas, fruit juices, or sports drinks", body: "These drinks lead to weight gain, cavities, type 2 diabetes, etc." , sourceName: "Centers for Disease Control and Prevention", sourceURL: "https://www.cdc.gov/healthyweight/healthy_eating/drinks.html", doneBool: getUserDefaultsBoolValue(forKey: health_todo_Tip4_Key), doneKey: health_todo_Tip4_Key, buyURL: "")
let health_todo_Tip5 = Tip(header: "", title: "🚰 Drinking water everyday", body: "Getting enough water every day is important for your health." , sourceName: "Centers for Disease Control and Prevention", sourceURL: "https://www.cdc.gov/healthyweight/healthy_eating/water-and-healthier-drinks.html", doneBool: getUserDefaultsBoolValue(forKey: health_todo_Tip5_Key), doneKey: health_todo_Tip5_Key, buyURL: "")
//1



let health_todo_TipArray0 = [health_todo_Tip0, health_todo_Tip1, health_todo_Tip2, health_todo_Tip3, health_todo_Tip4, health_todo_Tip5,]

let health_todo_Topic = Topic(title: health_todo_Title, icon: health_todo_Icon, tip: health_todo_TipArray0)

let health_todo_Topics = Topics(title: health_todo_Title, icon: health_todo_Icon, topics: [health_todo_Topic,])



//MARK: Financial Todos (Only 1 Stage)

let wealth_todo_Title = "Wealth"
let wealth_todo_Icon = Constants.Icon.food



//0
let wealth_todo_Tip0 = Tip(header: "", title: "🏦 Have a bank account", body: "Helps you build credit" , sourceName: "Investopedia", sourceURL: "https://www.investopedia.com/managing-wealth/simple-steps-building-wealth/", doneBool: getUserDefaultsBoolValue(forKey: wealth_todo_Tip0_Key), doneKey: wealth_todo_Tip0_Key, buyURL: "https://www.wealthfront.com/cash")

let wealth_todo_Tip1 = Tip(header: "", title: "💵 Have $100+ saved in bank", body: "Someone who maintains a savings balance of $100+ is much more likely to say that they’re financially satisfied." , sourceName: "SaverLife", sourceURL: "https://about.saverlife.org/research-posts/finra", doneBool: getUserDefaultsBoolValue(forKey: wealth_todo_Tip1_Key), doneKey: wealth_todo_Tip1_Key, buyURL: "https://www.wealthfront.com/cash")
let wealth_todo_Tip2 = Tip(header: "", title: "💵 Have $250+ saved in bank", body: "A savings balance over $250 is correlated with higher housing security." , sourceName: "SaverLife", sourceURL: "https://about.saverlife.org/research-posts/finra", doneBool: getUserDefaultsBoolValue(forKey: wealth_todo_Tip2_Key), doneKey: wealth_todo_Tip2_Key, buyURL: "")
let wealth_todo_Tip3 = Tip(header: "", title: "👩‍💻 Have a Vanguard personal investor account", body: "Warren Buffett suggests Vanguard." , sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/robertberger/2020/11/24/how-to-invest-money-based-on-advice-from-warren-buffett/", doneBool: getUserDefaultsBoolValue(forKey: wealth_todo_Tip3_Key), doneKey: wealth_todo_Tip3_Key, buyURL: "https://investor.vanguard.com/home")
let wealth_todo_Tip4 = Tip(header: "", title: "💵 Invested $100+ in Vanguard's low-cost S&P 500 index fund (VTSAX) or ETF (VTI)", body: "Helps you acquire wealth through owning assets (e.g. the stock market)." , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2022/10/03/billionaire-warren-buffett-swears-by-this-inexpensive-investing-strategy-that-anyone-can-try.html", doneBool: getUserDefaultsBoolValue(forKey: wealth_todo_Tip4_Key), doneKey: wealth_todo_Tip4_Key, buyURL: "https://investor.vanguard.com/investment-products/mutual-funds/profile/vtsax")
let wealth_todo_Tip5 = Tip(header: "", title: "👩‍💻 Enrolled in your employer's 401(k) plan", body: "Enrolling in an employer’s 401(k) plan can be one of the easiest ways for a worker to save for retirement." , sourceName: "Kiplinger", sourceURL: "https://www.kiplinger.com/retirement/retirement-plans/401ks/602957/401k-basics-7-things-you-should-know-when-you-enroll", doneBool: getUserDefaultsBoolValue(forKey: wealth_todo_Tip5_Key), doneKey: wealth_todo_Tip5_Key, buyURL: "https://www.wealthfront.com/cash")

let wealth_todo_Tip6 = Tip(header: "", title: "🙌 Have financial freedom = Living on 4% of your investments per year", body: "When you can live on 4% of your investments per year, you are financially independent." , sourceName: "The Simple Path to Wealth | JL Collins", sourceURL: "https://www.amazon.com/Simple-Path-Wealth-financial-independence/dp/1533667926", doneBool: getUserDefaultsBoolValue(forKey: wealth_todo_Tip6_Key), doneKey: wealth_todo_Tip6_Key, buyURL: "")





//1

let wealth_todo_TipArray0 = [wealth_todo_Tip0, wealth_todo_Tip1, wealth_todo_Tip2, wealth_todo_Tip3, wealth_todo_Tip4, wealth_todo_Tip5, wealth_todo_Tip6]

let wealth_todo_Topic = Topic(title: wealth_todo_Title, icon: wealth_todo_Icon, tip: wealth_todo_TipArray0)

let wealth_todo_Topics = Topics(title: wealth_todo_Title, icon: wealth_todo_Icon, topics: [wealth_todo_Topic,])





//MARK: Statup Button

let startup_todo_Title = "Startup"
let startup_todo_Icon = Constants.Icon.sideHustle


//IDEA
//0
let startup_todo_0_Tip0 = Tip(header: "", title: "🤔 Got a problem that you care about", body: "A startup will take 5+ years to build so have passion for the problem you're trying to solve." , sourceName: "Y Combinator", sourceURL: "https://www.youtube.com/watch?v=D56QeyyQMLI&t=72s", doneBool: getUserDefaultsBoolValue(forKey: startup_todo_0_Tip0_Key), doneKey: startup_todo_0_Tip0_Key, buyURL: "")

let startup_todo_0_Tip1 = Tip(header: "", title: "👫 Talked to friends and brainstormed potential solutions to the problem", body: "Pick friends who are smart and fun to brainstorm with." , sourceName: "Y Combinator", sourceURL: "https://www.ycombinator.com/library/61-order-of-operations-for-starting-a-startup", doneBool: getUserDefaultsBoolValue(forKey: startup_todo_0_Tip1_Key), doneKey: startup_todo_0_Tip1_Key, buyURL: "")

let startup_todo_0_Tip2 = Tip(header: "", title: "👩‍💻 Either are an engineer, doing the work to become an engineer, or recruit an engineer", body: "If 99% of startups are going to fail, then NOT having an engineer on the team is going to dramatically increase the likelihood of failure." , sourceName: "DraperTV - YC's Michael Seibel", sourceURL: "https://www.youtube.com/watch?v=fn5QxET8Y8c&t=278s", doneBool: getUserDefaultsBoolValue(forKey: startup_todo_0_Tip2_Key), doneKey: startup_todo_0_Tip2_Key, buyURL: "")

let startup_todo_0_Tip3 = Tip(header: "", title: "📍 Started with a problem that people have (aka didn NOT start with a solution/product)", body: "A common first-time founder mistake is to start with a solution instead of a problem." , sourceName: "Y Combinator", sourceURL: "https://www.ycombinator.com/library/8g-how-to-get-startup-ideas", doneBool: getUserDefaultsBoolValue(forKey: startup_todo_0_Tip3_Key), doneKey: startup_todo_0_Tip3_Key, buyURL: "")

let startup_todo_0_Tip4 = Tip(header: "", title: "👩‍🔬 Ready to test your idea by building an MVP", body: "An MVP is the smallest possible product you can build that allows you to start offering your service to users" , sourceName: "Y Combinator", sourceURL: "https://www.ycombinator.com/library/61-order-of-operations-for-starting-a-startup", doneBool: getUserDefaultsBoolValue(forKey: startup_todo_0_Tip4_Key), doneKey: startup_todo_0_Tip4_Key, buyURL: "")

//1
let startup_idea_todo_TipArray0 = [startup_todo_0_Tip0, startup_todo_0_Tip1, startup_todo_0_Tip2, startup_todo_0_Tip3, startup_todo_0_Tip4]

let startup_idea_todo_Topic = Topic(title: startup_todo_Title, icon: startup_todo_Icon, tip: startup_idea_todo_TipArray0)

let startup_idea_todo_Topics = Topics(title: startup_todo_Title, icon: startup_todo_Icon, topics: [startup_idea_todo_Topic,])

//MVP
//1
let startup_todo_1_Tip0 = Tip(header: "", title: "❤️ Promised to NOT fall in love with MVP", body: "So many failed startup founders fall in love with the vision in their head. Understand that your initial idea will change after talking to customers." , sourceName: "Y Combinator", sourceURL: "https://www.ycombinator.com/library/6f-how-to-plan-an-mvp", doneBool: getUserDefaultsBoolValue(forKey: startup_todo_1_Tip0_Key), doneKey: startup_todo_1_Tip0_Key, buyURL: "")
let startup_todo_1_Tip1 = Tip(header: "", title: "📝 Wrote down the spec of your MVP", body: "Your spec is the list of stuff you need to build before you launch. A written spec helps you avoid delaying your MVP's launch." , sourceName: "Y Combinator", sourceURL: "https://www.ycombinator.com/library/6f-how-to-plan-an-mvp", doneBool: getUserDefaultsBoolValue(forKey: startup_todo_1_Tip1_Key), doneKey: startup_todo_1_Tip1_Key, buyURL: "")

let startup_todo_1_Tip2 = Tip(header: "", title: "📝 Wrote down what your MVP is trying to test/measure", body: "Each time you build an MVP you also define what you are trying to test/measure." , sourceName: "Steve Blank", sourceURL: "https://steveblank.com/2015/05/06/build-measure-learn-throw-things-against-the-wall-and-see-if-they-work/", doneBool: getUserDefaultsBoolValue(forKey: startup_todo_1_Tip2_Key), doneKey: startup_todo_1_Tip2_Key, buyURL: "")
let startup_todo_1_Tip3 = Tip(header: "", title: "👩‍💻 Started building an MVP with the goal to build it in less than a month", body: "“If it takes more than a month to do [build], it's probably not an MVP.” - Michael Seibel, Y Combinator Partner" , sourceName: "DraperTV - YC's Michael Seibel", sourceURL: "https://youtu.be/fn5QxET8Y8c?t=384", doneBool: getUserDefaultsBoolValue(forKey: startup_todo_1_Tip3_Key), doneKey: startup_todo_1_Tip3_Key, buyURL: "")

let startup_todo_1_Tip4 = Tip(header: "", title: "👫 Founder got out of the bulding and talked to 1 person about their problem", body: "You'r first user interview only needs to be 10-15 minutes." , sourceName: "Y Combinator", sourceURL: "https://www.ycombinator.com/library/6g-how-to-talk-to-users", doneBool: getUserDefaultsBoolValue(forKey: startup_todo_1_Tip4_Key), doneKey: startup_todo_1_Tip4_Key, buyURL: "")

let startup_todo_1_Tip5 = Tip(header: "", title: "👩‍💻 Built MVP, an extremely stripped down version of your solution in order to see if users actually want to use it", body: "Resist the temptation to build your complete solution because in reality you have no idea whether it will work." , sourceName: "Y Combinator", sourceURL: "https://www.ycombinator.com/library/61-order-of-operations-for-starting-a-startup", doneBool: getUserDefaultsBoolValue(forKey: startup_todo_1_Tip5_Key), doneKey: startup_todo_1_Tip5_Key, buyURL: "")

let startup_todo_1_Tip6 = Tip(header: "", title: "🚀 Launched MVP feeling embarrassed about it", body: "“If you are not embarrassed by the first version of your product, you’ve launched too late.” - Reid Hoffman" , sourceName: "LinkedIn", sourceURL: "https://www.linkedin.com/pulse/arent-any-typos-essay-we-launched-too-late-reid-hoffman/", doneBool: getUserDefaultsBoolValue(forKey: startup_todo_1_Tip6_Key), doneKey: startup_todo_1_Tip6_Key, buyURL: "")

let startup_todo_1_Tip7 = Tip(header: "", title: "👫 Founder got out of the bulding, talked to 10+ people, and saw if the MVP solves their problem", body: "For any company, in order to make something people want: you must launch an MVP, talk to your users to see if it serves their needs, and then take their feedback and iterate. These tasks should occupy almost all of your time/focus. " , sourceName: "Y Combinator", sourceURL: "https://www.ycombinator.com/library/4D-yc-s-essential-startup-advice", doneBool: getUserDefaultsBoolValue(forKey: startup_todo_1_Tip7_Key), doneKey: startup_todo_1_Tip7_Key, buyURL: "")

let startup_todo_1_Tip8 = Tip(header: "", title: "👏 Got 10+ Users", body: "Once you have your first users of any kind, you have a startup." , sourceName: "LinkedIn", sourceURL: "https://www.linkedin.com/pulse/arent-any-typos-essay-we-launched-too-late-reid-hoffman/", doneBool: getUserDefaultsBoolValue(forKey: startup_todo_1_Tip8_Key), doneKey: startup_todo_1_Tip8_Key, buyURL: "")

let startup_mvp_todo_TipArray0 = [startup_todo_1_Tip0, startup_todo_1_Tip1, startup_todo_1_Tip2, startup_todo_1_Tip3, startup_todo_1_Tip4, startup_todo_1_Tip5, startup_todo_1_Tip6, startup_todo_1_Tip7, startup_todo_1_Tip8]

let startup_mvp_todo_Topic = Topic(title: startup_todo_Title, icon: startup_todo_Icon, tip: startup_mvp_todo_TipArray0)

let startup_mvp_todo_Topics = Topics(title: startup_todo_Title, icon: startup_todo_Icon, topics: [startup_mvp_todo_Topic,])


//1-10 Users
//2
let startup_todo_2_Tip0 = Tip(header: "", title: "👩‍⚖️ Incorporated as a Delaware C Corp", body: "Every startup should incorporate as a Delaware C Corp.", sourceName: "DraperTV", sourceURL: "https://www.youtube.com/watch?v=fn5QxET8Y8c&t=205s", doneBool: getUserDefaultsBoolValue(forKey: startup_todo_2_Tip0_Key), doneKey: startup_todo_2_Tip0_Key, buyURL: "https://www.clerky.com/")

let startup_todo_2_Tip1 = Tip(header: "", title: "🤞 Promised to maintain a direct connection to your users throughout the lifespan of your company", body: "The best founders maintain a direct connection to their users. Make sure that the founders and the core members of your company (including the engineers) develop the skills for talking to users." , sourceName: "Y Combinator", sourceURL: "https://www.ycombinator.com/library/6g-how-to-talk-to-users", doneBool: getUserDefaultsBoolValue(forKey: startup_todo_2_Tip1_Key), doneKey: startup_todo_2_Tip1_Key, buyURL: "")

let startup_todo_2_Tip2 = Tip(header: "", title: "👫 Got outside and talked to 50+ users", body: "Talking face-to-face with people is how you'll get the best feedback for your product. You'll learn what features you need to completely change, get rid of, or need to build." , sourceName: "Sam Altman's Startup Class", sourceURL: "https://startupclass.samaltman.com/courses/lec04/", doneBool: getUserDefaultsBoolValue(forKey: startup_todo_2_Tip2_Key), doneKey: startup_todo_2_Tip2_Key, buyURL: "")

let startup_todo_2_Tip3 = Tip(header: "", title: "❤️ Got 10 customers who love your product", body: "A small group of customers who love you is better than a large group who kind of like you." , sourceName: "", sourceURL: "", doneBool: getUserDefaultsBoolValue(forKey: startup_todo_2_Tip3_Key), doneKey: startup_todo_2_Tip3_Key, buyURL: "")

let startup_todo_2_Tip4 = Tip(header: "", title: "💵 Generating revenue", body: "A customer purchase validates lots of polite words from potential customers about your product." , sourceName: "The Four Steps to the Epiphany: Successful Strategies for Products that Win, by Steve Blank", sourceURL: "https://www.amazon.com/Four-Steps-Epiphany-Successful-Strategies/dp/1119690358", doneBool: getUserDefaultsBoolValue(forKey: startup_todo_2_Tip4_Key), doneKey: startup_todo_2_Tip4_Key, buyURL: "https://www.amazon.com/Four-Steps-Epiphany-Successful-Strategies/dp/1119690358")


let startup_initial_users_todo_TipArray0 = [startup_todo_2_Tip0, startup_todo_2_Tip1, startup_todo_2_Tip2, startup_todo_2_Tip3, startup_todo_2_Tip4]

let startup_initial_users_todo_Topic = Topic(title: startup_todo_Title, icon: startup_todo_Icon, tip: startup_initial_users_todo_TipArray0)

let startup_initial_users_todo_Topics = Topics(title: startup_todo_Title, icon: startup_todo_Icon, topics: [startup_initial_users_todo_Topic,])

//10+ Users
//3
let startup_todo_3_Tip0 = Tip(header: "", title: "💵 Have repeatable customers with a repeatable sales process", body: "Customer validation proves you have found a set of customers and a market that react positively to the product." , sourceName: "The Four Steps to the Epiphany: Successful Strategies for Products that Win, by Steve Blank", sourceURL: "https://www.amazon.com/Four-Steps-Epiphany-Successful-Strategies/dp/1119690358", doneBool: getUserDefaultsBoolValue(forKey: startup_todo_3_Tip0_Key), doneKey: startup_todo_3_Tip0_Key, buyURL: "https://www.amazon.com/Four-Steps-Epiphany-Successful-Strategies/dp/1119690358")

let startup_todo_3_Tip1 = Tip(header: "", title: "💵 Have repeatable customers that yield a profitable business model", body: "Completing this step verifies your market, locates your customers, tests the perceived value of your product, identifies the economic buyer, establishes your pricing and channel strategy, and checks out your sales cycle and process." , sourceName: "The Four Steps to the Epiphany: Successful Strategies for Products that Win, by Steve Blank", sourceURL: "https://www.amazon.com/Four-Steps-Epiphany-Successful-Strategies/dp/1119690358", doneBool: getUserDefaultsBoolValue(forKey: startup_todo_3_Tip1_Key), doneKey: startup_todo_3_Tip1_Key, buyURL: "https://www.amazon.com/Four-Steps-Epiphany-Successful-Strategies/dp/1119690358")

let startup_todo_3_Tip2 = Tip(header: "", title: "👫 40% of your users say they would be ”very disappointed” if they could no longer use your product", body: "Each week, ask your users ”How would you feel if you could no longer use your product?” Three answers, very disappointed, somewhat disappointed, not disappointed. If 40% or more of your user base reports that they would be ”very disappointed” on a weekly basis, than that's a signal you're at or close to product-market fit." , sourceName: "Y Combinator", sourceURL: "https://www.ycombinator.com/library/6g-how-to-talk-to-users", doneBool: getUserDefaultsBoolValue(forKey: startup_todo_3_Tip2_Key), doneKey: startup_todo_3_Tip2_Key, buyURL: "")

let startup_todo_3_Tip3 = Tip(header: "", title: "🏆 Got Product-Market Fit (aka: too many users!)", body: "You have product-market fit when people start using your product so much, you transition from doing anything, other than just keeping it online. That's what product-market fit tends to look like. You have too many users! Congratulation! You can now begin optimizing your core product, hiring specialists to increase your efficiency, and make strategic investments." , sourceName: "Y Combinator", sourceURL: "https://www.ycombinator.com/library/6f-how-to-plan-an-mvp", doneBool: getUserDefaultsBoolValue(forKey: startup_todo_3_Tip3_Key), doneKey: startup_todo_3_Tip3_Key, buyURL: "")

let startup_more_users_todo_TipArray0 = [startup_todo_3_Tip0, startup_todo_3_Tip1, startup_todo_3_Tip2, startup_todo_3_Tip3]


func startupTodoTopic() -> Topic {
    var selectedTopic: Topic!
    switch defaults.integer(forKey: startupKey)
    {
    case 0:
        //Idea
        selectedTopic = Topic(title: startup_todo_Title, icon: startup_todo_Icon, tip: startup_idea_todo_TipArray0)

    case 1:
        //MVP
        selectedTopic = Topic(title: startup_todo_Title, icon: startup_todo_Icon, tip: startup_mvp_todo_TipArray0)
    case 2:
        //1-10 Users
        selectedTopic = Topic(title: startup_todo_Title, icon: startup_todo_Icon, tip: startup_initial_users_todo_TipArray0)

    case 3:
        //11+ Users
        selectedTopic = Topic(title: startup_todo_Title, icon: startup_todo_Icon, tip: startup_more_users_todo_TipArray0)

    default:
        selectedTopic = Topic(title: startup_todo_Title, icon: startup_todo_Icon, tip: startup_idea_todo_TipArray0)
    }
    return selectedTopic
}


//MARK: Film Button

let film_todo_Title = "Film"
let film_todo_Icon = Constants.Icon.filmmaking


//IDEA
//0
let film_todo_0_Tip0 = Tip(header: "", title: "🤔 Have a problem that you are passionate about", body: "" , sourceName: "", sourceURL: "", doneBool: getUserDefaultsBoolValue(forKey: financialBankAccountKey), doneKey: financialBankAccountKey, buyURL: "")
let film_todo_0_Tip1 = Tip(header: "", title: "Starting with a problem, and then looking for solutions", body: "" , sourceName: "", sourceURL: "", doneBool: false, doneKey: "", buyURL: "")
let film_todo_0_Tip2 = Tip(header: "", title: "", body: "" , sourceName: "", sourceURL: "", doneBool: false, doneKey: "", buyURL: "")
let film_todo_0_Tip3 = Tip(header: "", title: "", body: "" , sourceName: "", sourceURL: "", doneBool: false, doneKey: "", buyURL: "")
//1

let film_idea_todo_TipArray0 = [film_todo_0_Tip0, film_todo_0_Tip1, film_todo_0_Tip2, film_todo_0_Tip3]


//SCRIPT
//1
let film_todo_1_Tip0 = Tip(header: "", title: "🚀 Have a problem that you are passionate about", body: "Resist the temptation to build your complete solution because in reality you have no idea whether it will work. Better to build an extremely stripped down version of your solution and start seeing if users actually want to use it." , sourceName: "", sourceURL: "", doneBool: getUserDefaultsBoolValue(forKey: financialBankAccountKey), doneKey: financialBankAccountKey, buyURL: "")
let film_todo_1_Tip1 = Tip(header: "", title: "Starting with a problem, and then looking for solutions", body: "" , sourceName: "", sourceURL: "", doneBool: false, doneKey: "", buyURL: "")
let film_todo_1_Tip2 = Tip(header: "", title: "", body: "" , sourceName: "", sourceURL: "", doneBool: false, doneKey: "", buyURL: "")
let film_todo_1_Tip3 = Tip(header: "", title: "", body: "" , sourceName: "", sourceURL: "", doneBool: false, doneKey: "", buyURL: "")

let film_mvp_todo_TipArray0 = [film_todo_1_Tip0, film_todo_1_Tip1, film_todo_1_Tip2, film_todo_1_Tip3]


//1-10 Users
//2
let film_todo_2_Tip0 = Tip(header: "", title: "🚀 Have a problem that you are passionate about", body: "Resist the temptation to build your complete solution because in reality you have no idea whether it will work. Better to build an extremely stripped down version of your solution and start seeing if users actually want to use it." , sourceName: "", sourceURL: "", doneBool: getUserDefaultsBoolValue(forKey: financialBankAccountKey), doneKey: financialBankAccountKey, buyURL: "")
let film_todo_2_Tip1 = Tip(header: "", title: "Starting with a problem, and then looking for solutions", body: "" , sourceName: "", sourceURL: "", doneBool: false, doneKey: "", buyURL: "")
let film_todo_2_Tip2 = Tip(header: "", title: "", body: "" , sourceName: "", sourceURL: "", doneBool: false, doneKey: "", buyURL: "")
let film_todo_2_Tip3 = Tip(header: "", title: "", body: "" , sourceName: "", sourceURL: "", doneBool: false, doneKey: "", buyURL: "")

let film_initial_users_todo_TipArray0 = [film_todo_3_Tip0, film_todo_3_Tip1, film_todo_3_Tip2, film_todo_3_Tip3]

//1-10 Users
//2
let film_todo_3_Tip0 = Tip(header: "", title: "🚀 Have a problem that you are passionate about", body: "Resist the temptation to build your complete solution because in reality you have no idea whether it will work. Better to build an extremely stripped down version of your solution and start seeing if users actually want to use it." , sourceName: "", sourceURL: "", doneBool: false, doneKey: "", buyURL: "")
let film_todo_3_Tip1 = Tip(header: "", title: "Starting with a problem, and then looking for solutions", body: "" , sourceName: "", sourceURL: "", doneBool: false, doneKey: "", buyURL: "")
let film_todo_3_Tip2 = Tip(header: "", title: "", body: "" , sourceName: "", sourceURL: "", doneBool: false, doneKey: "", buyURL: "")
let film_todo_3_Tip3 = Tip(header: "", title: "", body: "" , sourceName: "", sourceURL: "", doneBool: false, doneKey: "", buyURL: "")

let film_more_users_todo_TipArray0 = [film_todo_3_Tip0, film_todo_3_Tip1, film_todo_3_Tip2, film_todo_3_Tip3]


func filmTodoTopic() -> Topic {
    var selectedTopic: Topic!
    switch defaults.integer(forKey: filmKey)
    {
    case 0:
        //Idea
        selectedTopic = Topic(title: film_todo_Title, icon: film_todo_Icon, tip: startup_idea_todo_TipArray0)

    case 1:
        //MVP
        selectedTopic = Topic(title: film_todo_Title, icon: film_todo_Icon, tip: startup_mvp_todo_TipArray0)
    case 2:
        //1-10 Users
        selectedTopic = Topic(title: film_todo_Title, icon: film_todo_Icon, tip: startup_initial_users_todo_TipArray0)

    case 3:
        //10+ Users
        selectedTopic = Topic(title: film_todo_Title, icon: film_todo_Icon, tip: startup_more_users_todo_TipArray0)

    default:
        selectedTopic = Topic(title: film_todo_Title, icon: film_todo_Icon, tip: startup_idea_todo_TipArray0)
    }
    return selectedTopic
}


/*
For each Tip's doneType, set this to a unique function that stores true/false in UserDefaults key, value pair.

 */

func haveBankAccountTodo() -> Bool {

    //Check UserDefaults

    //if true, return true

    //if false, return false

    return true
}




//MARK: - CONSOLIDATED TODOs???


func consolidated_Todo_Topics() -> Topics {
      var selectedTopic: Topics!
      switch defaults.integer(forKey: debtKey)
      {
        case 0:
            //NO Debt
            selectedTopic = Topics(title: wealthTitle, icon: Constants.Icon.wealth, topics: [wealth_todo_Topic, wealth_todo_Topic, wealth_todo_Topic,])
        case 1:
            //HAVE Debt
            selectedTopic = Topics(title: wealthTitle, icon: Constants.Icon.wealth, topics: [wealth_todo_Topic, wealth_todo_Topic, wealth_todo_Topic,])

        default:
            //NO Debt
            selectedTopic = Topics(title: wealthTitle, icon: Constants.Icon.wealth, topics: [wealth_todo_Topic, wealth_todo_Topic, wealth_todo_Topic,])
      }
      return selectedTopic
  }



// MARK: - Financial

//MARK: Financial Todo ???

func wealthTodoTopics() -> Topics {
      var selectedTopic: Topics!
      switch defaults.integer(forKey: debtKey)
      {
        case 0:
            //NO Debt
            selectedTopic = Topics(title: wealthTitle, icon: Constants.Icon.wealth, topics: [wealth_todo_Topic, wealth_todo_Topic, wealth_todo_Topic,])
        case 1:
            //HAVE Debt
            selectedTopic = Topics(title: wealthTitle, icon: Constants.Icon.wealth, topics: [wealth_todo_Topic, wealth_todo_Topic, wealth_todo_Topic,])

        default:
            //NO Debt
            selectedTopic = Topics(title: wealthTitle, icon: Constants.Icon.wealth, topics: [wealth_todo_Topic, wealth_todo_Topic, wealth_todo_Topic,])
      }
      return selectedTopic
  }



