//
//  NowData.swift
//  finalProject
//
//  Created by Andrew Jenson on 3/30/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import Foundation

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

// MARK: - WEEKEND

// MARK: - Now, Weekend, 0to4

let weekendNow0to4Title = "Now, 0to4"
let weekendNow0to4Icon = "Now"

let weekendNow0to4Tip0 = Tip(header: sleepBetter, title: "Can't fall sleep? You may have high blood pressure", body: "Lack of sleep hurts your body's ability to regulate stress hormones, leading to high blood pressure. High blood pressure, particularly during the night, is a major risk factor for heart disease." , sourceName: "Mayo Clinic", sourceURL: "https://www.mayoclinic.org/diseases-conditions/high-blood-pressure/expert-answers/sleep-deprivation/faq-20057959", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow0to4Tip1 = Tip(header: loseWeight, title: "Prevent weight gain by sleeping 7-8 hours per night", body: "Some studies show that people who get less sleep tend to be heavier than those who sleep well." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/sleep-disorders/features/diabetes-lack-of-sleep#2", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekendNow0to4Tip2 = Tip(header: loseWeight, title: "Start your day by hitting the gym on an empty stomach in order to increase your energy level throughout the day", body: "Research suggests that an early-morning workout on an empty stomach helps speed weight loss and boost energy levels by priming the body for an all-day fat burn. \n\nExercising first thing in the morning may push the body to tap into its fat reserves for fuel instead of simply \"burning off\" the most recent snack or meal." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/morning-routine-according-to-science-2017-12#hit-the-track-3", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekendNow0to4Tip3 = Tip(header: buildMuscle, title: "The key ingredients to eat for breakfast are: protein, fiber, and healthy fats", body: "Try a couple of eggs with a few avocado slices, or some Greek yogurt (the plain kind, since the flavored varieties can be high in sugar) with fruit and nuts. Both of these options will fill you up, help smooth out your digestion, and power up your muscles." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/morning-routine-according-to-science-2017-12#fuel-up-5", sponsorLogo: "TBD", sponsorURL: "www.test.com") // ? Unsure if this is in the right time slot

///////
let weekendNow0to4Tip4 = Tip(header: "", title: "If you are overweight, have a thick neck, snore, and spend adequate time in bed at night but still feel tired, you may have sleep apnea", body: "Partners or spouses are often the first to notice the symptoms, but official diagnoses are typically made after a sleep study that measures oxygen levels and brain waves. You might then be prescribed a continuous positive airway pressure (CPAP) mask to wear at night; by keeping nasal and throat airways open, these devices greatly help sleep apnea patients." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/09/sleep-well-lead-better", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow0to4Tip5 = Tip(header: "", title: "Don't stay up too late tonight. An out-of-sync biological clock could be linked to depression and mood swings", body: "People who have greater disruptions in their body clock are more likely to have major depression disorder or bipolar disorder in their lifetime than those with less disruption. These individuals were also more likely to have mood swings, higher levels of neuroticism and loneliness, and lower levels of happiness and satisfaction with their health. However, the researchers cautioned that the study found only an association between the biological clock and these conditions; it didn't prove cause and effect.", sourceName: "Live Science", sourceURL: "https://www.livescience.com/62574-mood-disorders-circadian-rhythms.html", sponsorLogo: "", sponsorURL: "")

// SUN
let weekendNow0to4TipArray0 = [weekendNow0to4Tip0, weekendNow0to4Tip1, weekendNow0to4Tip2, weekendNow0to4Tip3]
let weekendNow0to4Topic0 = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: weekendNow0to4TipArray0)

// SAT
let weekendNow0to4TipArray1 = [weekendNow0to4Tip4, weekendNow0to4Tip5, weekendNow0to4Tip2, weekendNow0to4Tip3] // add 2 more
let weekendNow0to4Topic1 = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: weekendNow0to4TipArray1)

// MARK: - Now, Weekend, 5to8

let weekendNow5to8Title = "Now, 5to8"
let weekendNow5to8Icon = "Now"

// SAT
let weekendNow5to8Tip0 = Tip(header: beMoreProductive, title: "Increase your productivity by doing work that is most meaningful to you during the first three hours after you wake up", body: "Your brain is most active and readily creative immediately following sleep. So, the best time to do your best work is during the first three hours of your day." , sourceName: "Benjamin P. Hardy, auhor of Willpower Doesn't Work", sourceURL: "https://medium.com/@benjaminhardy/this-morning-routine-will-save-you-20-hours-per-week-409f8acbde1", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow5to8Tip1 = Tip(header: success, title: "How you spend the first hour after waking up in the morning sets the standard for your productivity for the rest of the day", body: "Business leaders were asked what they do befor breakfast. The top three responses were exercise, meditation, and reading." , sourceName: "WIRED", sourceURL: "https://www.wired.co.uk/article/what-is-productivity-be-more-productive-how-to-work", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow5to8Tip2 = Tip(header: navySealAdvice, title: "If you want to be successful in life, start by making your bed every day", body: "A retired four-star admiral and former Navy SEAL said, \"Start your day with a task completed. The simple act of making your bed can give the lift you need to start your day and provide you the satisfaction to end it right.\"" , sourceName: "YouTube", sourceURL: "https://www.youtube.com/watch?v=U6OoCaGsz94", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow5to8Tip3 = Tip(header: betterSkin, title: "Before you leave the house, apply moisturizer and drink a glass of water to keep your skin looking good.", body: "Dehydration makes your skin look more dry and wrinkled, which can be improved with proper hydration. You can also help \"lock\" moisture into your skin by using moisturizer, which creates a physical barrier to keep moisture in." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/diet/features/6-reasons-to-drink-water#3", sponsorLogo: "TBD", sponsorURL: "www.test.com")

/////////// SUN
let weekendNow5to8Tip4 = Tip(header: betterSkin, title: "An early-morning workout on an empty stomach helps speed weight loss and boost energy levels by priming the body for an all-day fat burn", body: "Exercising first thing in the morning may push the body to tap into its fat reserves for fuel instead of simply \"burning off\" the most recent snack or meal." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/diet/features/6-reasons-to-drink-water#3", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow5to8Tip5 = Tip(header: betterSkin, title: "Get 20 to 30 minutes of sunlight before noon to lower your body mass index (BMI) and prevent weight gain", body: "The timing, intensity, and duration of sunlight exposure during the day is linked to your weight. In one study, people who had most of their daily exposure to bright light in the morning had 20% lower BMI than those who had most of their light exposure later in the day." , sourceName: "Northwestern University", sourceURL: "https://news.northwestern.edu/stories/2014/04/morning-rays-keep-off-the-pounds", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow5to8Tip6 = Tip(header: loseWeight, title: "People who eat breakfast daily are less likely to have high cholesterol and blood pressure and people who skip breakfast are more likely to be obese, have inadequate nutrition, or be diagnosed with diabetes", body: "Watching the clock, and not just the calories, may play a more important role in weight control. Breakfast eaters tended to keep their weight down generally, compared with breakfast skippers.", sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/2017/08/21/well/eat/the-case-for-a-breakfast-feast.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow5to8Tip7 = Tip(header: loseWeight, title: "Don't check your phone first thing in the morning - it's likely to increase stress and leave you feeling overwhelmed", body: "Instead, you can strech, practice mindfulness and meditation, exercise outside, or do something you really care about, like working on a passion project you normally don't have time for.", sourceName: "Elite Daily", sourceURL: "https://www.elitedaily.com/p/is-it-bad-to-look-at-your-phone-right-when-you-wake-up-it-might-be-sabotaging-your-day-8437383", sponsorLogo: "TBD", sponsorURL: "www.test.com")

////////


let weekendNow5to8TipArray0 = [weekendNow5to8Tip0, weekendNow5to8Tip1, weekendNow5to8Tip2, weekendNow5to8Tip3]
let weekendNow5to8Topic0 = Topic(title: weekendNow5to8Title, icon: weekendNow5to8Icon, tip: weekendNow5to8TipArray0)

var weekendNow5to8TipArray1 = [weekendNow5to8Tip4, weekendNow5to8Tip5, weekendNow5to8Tip6, weekendNow5to8Tip2]
let weekendNow5to8Topic1 = Topic(title: weekendNow5to8Title, icon: weekendNow5to8Icon, tip: weekendNow5to8TipArray1)

// MARK: - Now, Weekend, 9to11

let weekendNow9to11Title = "Now, Weekday, 9to11"
let weekendNow9to11Icon = "Now"

// SAT
let weekendNow9to11Tip0 = Tip(header: health, title: "Before you go outside, wear sunscreen (SPF 15 or higher), sunglasses, and a hat to reduce your risk of skin cancer", body: "Skin cancer is the most common cancer in the United States. And your nose, eyelids, and lips are one of the most common sites for skin cancer." , sourceName: "Men's Health", sourceURL: "https://www.menshealth.com/health/a19525153/applying-sunscreen-wrong-on-face/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow9to11Tip1 = Tip(header: success, title: "Don't multi-task on the weekend", body: "It may be tempting to maximize your weekend productivity by running on the treadmill while calling your mother and trolling your newsfeed, but successful people know that this just reduces efficiency and effectiveness. Instead, be present for each single activity." , sourceName: "Life Hack", sourceURL: "https://www.lifehack.org/articles/productivity/12-weekend-habits-highly-successful-people.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow9to11Tip2 = Tip(header: improvePerformance, title: "Relax on Saturday and reflect on Sunday", body: "CEO of Twitter and Square, Jack Dorsey, works 16-hour days during the week but says, \"Saturday I take off. I hike. And then Sunday is reflections, feedback, strategy and getting ready for the rest of the week.\"" , sourceName: "LifeHack.org", sourceURL: "https://www.lifehack.org/articles/productivity/12-weekend-habits-highly-successful-people.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow9to11Tip3 = Tip(header: success, title: "Wake up early, even on the weekends", body: "Our brains are the sharpest 2 to 4 hours after we wake up. Use these less distractive hours to work on a creative project, exercise, meditate, or spend time with the people you love." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/successful-people-who-wake-up-really-early-2016-9", sponsorLogo: "TBD", sponsorURL: "www.test.com")

// SUN
let weekendNow9to11Tip4 = Tip(header: success, title: "Your mind performs at its peak during the first 2-4 hours after you wake up", body: "Successful people take advantage of that time to do things for themselves. This could involve exercising or meditating.", sourceName: "MoneyVersed", sourceURL: "https://moneyversed.com/weekend-habits-successful-people/", sponsorLogo: "logo", sponsorURL: "logoURL")
let weekendNow9to11Tip5 = Tip(header: health, title: "Being in nature increases feelings of happiness and healthiness", body: "Being in nature may provide people with resilience to meet the challenges of everyday life, while also facilitating exercise, social contact and a sense of purpose. It also reduces blood pressure and contributes to longer lifespans amongst senior citizens." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/entry/5-benefits-of-being-outdoors_us_5938266ce4b014ae8c69dce0", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow9to11Tip6 = Tip(header: health, title: "Drinking water throughout the day could lower your risk of a heart attack", body: "A study found that people who drank more than 5 glasses of water a day were 41% less likely to die from a heart attack during the study period than those who drank less than 2 glasses." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/entry/5-benefits-of-being-outdoors_us_5938266ce4b014ae8c69dce0", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow9to11Tip7 = Tip(header: health, title: "Exercise today. Sitting 8+ hours a day with no physical activity leads to the same risk of dying posed by obesity and smoking", body: "One study found that sitting time contributed little to mortality for people who were most active. 60 to 75 minutes of moderately intense physical activity a day countered the effects of too much sitting." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/entry/5-benefits-of-being-outdoors_us_5938266ce4b014ae8c69dce0", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekendNow9to11TipArray0 = [weekendNow9to11Tip0, weekendNow9to11Tip1, weekendNow9to11Tip2, weekendNow9to11Tip3]
let weekendNow9to11Topic0 = Topic(title: weekendNow9to11Title, icon: weekendNow9to11Icon, tip: weekendNow9to11TipArray0)

let weekendNow9to11TipArray1 = [weekendNow9to11Tip4, weekendNow9to11Tip5, weekendNow9to11Tip6, weekendNow9to11Tip7]
let weekendNow9to11Topic1 = Topic(title: weekendNow9to11Title, icon: weekendNow9to11Icon, tip: weekendNow9to11TipArray1)

// MARK: - Now, Weekend, 11to14

let weekendNow11to14Title = "Now, Weekday, 11to14"
let weekendNow11to14Icon = "Now"

let weekendNow11to14Tip0 = Tip(header: reduceAging, title: "Prevent wrinkles and premature aging by wearing sunscreen everyday", body: "Research: people who used sunscreen daily were less likely to have wrinkles, sagging skin, and dark spots after 4.5 years than people who did not regularly use sunscreen." , sourceName: "The Skin Cancer Foundation", sourceURL: "https://www.skincancer.org/prevention/sun-protection/sunscreen/aging", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow11to14Tip1 = Tip(header: success, title: "Disconnect from technology on the weekend and reconnect with yourself and people", body: "Take a ‘tech Sabbath.’ If we look back in history, \"a day of rest\" is an ancient tradition represented across cultures that is used for reflection and connection. Even a walk without the phone can feel liberating." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/every-week-i-unplug-from-technology-for-24-hours-and-im-convinced-it-makes-me-better-at-my-job-2016-9", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow11to14Tip2 = Tip(header: success, title: "Don't do too many chores on the weekend", body: "Chores expand to fill the available space. So, only do them on weekdays. If you have less time, chores will take less time." , sourceName: "Fast Company", sourceURL: "https://www.fastcompany.com/3015285/6-surprising-tips-to-cut-household-chores-in-half", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow11to14Tip3 = Tip(header: health, title: "Spending time in nature is good for your mind, body and spirit", body: "Being active outdoors keeps joints loose, reduces anxiety, depression, and stress, and reduces your chances of getting a virus; since you're not breathing in the same recycled air as every else." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/pop-culture/how-nature-can-solve-life-s-most-challenging-problems-ncna749361", sponsorLogo: "TBD", sponsorURL: "www.test.com")

////////
let weekendNow11to14Tip4 = Tip(header: health, title: "Exercising in nature for as little as 5 minutes has shown to improve self-esteem and mood", body: "The average American spends 90% of their life indoors. Sunlight elevates people's mood and physical activity helps to relax and cheer people up." , sourceName: "Harvard Health Publishing", sourceURL: "https://www.health.harvard.edu/newsletter_article/a-prescription-for-better-health-go-alfresco", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow11to14Tip5 = Tip(header: loseWeight, title: "Reduce your chances of weight gain by having one cheat meal this weekend", body: "People who stuck with a strict diet during the week, then overindulged on the weekends gained an average of 0.17 pounds per week (9 pounds a year). A weekly cheat meal reduces cravings and boosts metabolism." , sourceName: "Men's Journal", sourceURL: "https://www.mensjournal.com/health-fitness/best-way-work-cheat-meals/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow11to14Tip6 = Tip(header: health, title: "Moderate to vigorous exercise and time outdoors correlates to better academic performance", body: "A study found that moderate to vigorous activity—especially in boys—directly correlated to better reading fluency, reading comprehension and arithmetic skills. Children who had more sedentary lives had poorer skills in both reading and math." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/entry/5-benefits-of-being-outdoors_us_5938266ce4b014ae8c69dce0", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow11to14Tip7 = Tip(header: health, title: "Spending time in nature helps reduce stress levels", body: "Our brains become easily fatigued. When we slow down, stop the busywork, and take in beautiful natural surroundings, not only do we feel restored, but our mental performance improves too." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/entry/5-benefits-of-being-outdoors_us_5938266ce4b014ae8c69dce0", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekendNow11to14TipArray0 = [weekendNow11to14Tip0, weekendNow11to14Tip1, weekendNow11to14Tip2, weekendNow11to14Tip3]
let saturdayNow11to14Topic0 = Topic(title: weekendNow11to14Title, icon: weekendNow11to14Icon, tip: weekendNow11to14TipArray0)

let weekendNow11to14TipArray1 = [weekendNow11to14Tip4, weekendNow11to14Tip5, weekendNow11to14Tip6, weekendNow11to14Tip7]
let sundayNow11to14Topic1 = Topic(title: weekendNow11to14Title, icon: weekendNow11to14Icon, tip: weekendNow11to14TipArray1)

// MARK: - Now, Weekend, 14to16

let weekendNow14to16Title = "Now, Weekday, 14to16"
let weekendNow14to16Icon = "Now"

let weekendNow14to16Tip0 = Tip(header: health, title: "Walking for 90 minutes in nature, as opposed to walking in a high-traffic urban setting, showed decreased activity in a region of the brain associated with depression", body: "Just as urbanization and disconnection from nature have grown dramatically, so have mental disorders such as depression. In fact, city dwellers have a 20% higher risk of anxiety disorders and a 40% higher risk of mood disorders as compared to people in rural areas." , sourceName: "Stanford University", sourceURL: "https://news.stanford.edu/2015/06/30/hiking-mental-health-063015/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow14to16Tip1 = Tip(header: health, title: "Research: being social improves your mental and emotional health", body: "An active social life reduces your risk of dementia and memory loss as we age." , sourceName: "The New York Times", sourceURL: "https://well.blogs.nytimes.com/2008/06/04/socializing-appears-to-delay-memory-problems/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow14to16Tip2 = Tip(header: loseWeight, title: "Use your day off to do something active", body: "Using the day off for some intense, calorie-burning activities that you can't squeeze in midweek can result in weekend weight loss. People tend to eat more when they have a lot of free time because they're bored." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/2012/08/11/healthy-weekend_n_1760981.html?slideshow=true#gallery/243861/6", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow14to16Tip3 = Tip(header: fitness, title: "Physical performance is usually best, and the risk of injury least, from about 3 p.m. to 6 p.m.", body: "Muscle strength tends to peak between 2 p.m. and 6 p.m. at levels as much as 6% above the day's lows, improving your ability to grip a club or racquet. Eye-hand coordination is best in late afternoon, making that a good time for racquetball or Frisbee. And joints and muscles are as much as 20% more flexible in the evening, lowering the risk of injury.", sourceName: "Wall Street Journal", sourceURL: "https://www.wsj.com/articles/SB10000872396390444180004578018294057070544", sponsorLogo: "sponsor", sponsorURL: "sponsorURL")

/////////////
let weekendNow14to16Tip4 = Tip(header: "Happiness", title: "Drinking water may reduce cancer risk", body: "Staying hydrated can reduce risk of colon cancer by 45%, bladder cancer by 50%, and possibly reduce breast cancer risk too." , sourceName: "Shape", sourceURL: "https://www.shape.com/healthy-eating/healthy-drinks/6-reasons-drinking-water-helps-solve-any-problem", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow14to16Tip5 = Tip(header: improvePerformance, title: "The best time to take a nap is between 2 p.m and 3 p.m.", body: "We typically experience some sleepiness or decrease in alertness after lunch. A 10-30 minute nap at this time is less likely to interfere with nighttime rest than naps later in the day." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/the-best-time-of-day-to-do-everything-2016-5", sponsorLogo: "", sponsorURL: "")
let weekendNow14to16Tip6 = Tip(header: "Happiness", title: "Focus on face-to-face relationships. The more you use Facebook/social media, the worse you feel", body: "While real-world social networks were positively associated with overall well-being, the use of Facebook was negatively associated with overall well-being. Exposure to the carefully curated images from others’ lives leads to negative self-comparison, and the sheer quantity of social media interaction detracts from more meaningful real-life experiences." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2017/04/a-new-more-rigorous-study-confirms-the-more-you-use-facebook-the-worse-you-feel", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow14to16Tip7 = Tip(header: "Exercise", title: "Among adults ages 18 to 64 years old, just 27% of men and 19% of women met the guidelines for both aerobic and muscle-strengthening activities", body: "We all need at least 150 minutes per week of moderate-intensity exercise (like brisk walking), and muscle-strengthening exercise twice a week. If you're not meeting these goals, consider ways to increase your exercise activity today." , sourceName: "Harvard Health Publishing", sourceURL: "https://www.health.harvard.edu/staying-healthy/americans-arent-meeting-exercise-goals", sponsorLogo: "TBD", sponsorURL: "www.test.com")
////// WEEK 2
let weekendNow14to16Tip8 = Tip(header: "Nap", title: "For best results, create a habit of taking an afternoon nap", body: "There's evidence that habitual nappers get more from their naps than infrequent nappers. So if you have the flexibility to take a regular afternoon nap, consider making it a common ritual. For many, the optimal time to take a nap is 7 hours after waking." , sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")

let weekendNow14to16TipArray0 = [weekendNow14to16Tip0, weekendNow14to16Tip1, weekendNow14to16Tip2, weekendNow14to16Tip3]
let weekendNow14to16Topic0 = Topic(title: weekendNow14to16Title, icon: weekendNow14to16Icon, tip: weekendNow14to16TipArray0)

let weekendNow14to16TipArray1 = [weekendNow14to16Tip4, weekendNow14to16Tip5, weekendNow14to16Tip6, weekendNow14to16Tip7]
let weekendNow14to16Topic1 = Topic(title: weekendNow14to16Title, icon: weekendNow14to16Icon, tip: weekendNow14to16TipArray1)

// MARK: - Now, Weekend, 17to20

let weekendNow17to20Title = "Now, Weekday, 17to20"
let weekendNow17to20Icon = "Now"

//
let weekendNow17to20Tip0 = Tip(header: increaseConfidence, title: "Every time you walk through a doorway, remember to stand up, put your chin up, put your shoulders back, and smile", body: "This habit will create a first impression that causes other people to view you as confident, positive, and friendly." , sourceName: "The Unbeatable Mind Podcast", sourceURL: "https://unbeatablemind.com/jordan-harbinger/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow17to20Tip1 = Tip(header: weekendNow17to20Title, title: "Enjoy your weekend by not checking your smartphone. Being connected 24/7 takes its toll on health", body: "The blue light from our screens can sabotage a good night's sleep, and social media obsession can cause depression." , sourceName: "CNET Magazine", sourceURL: "https://www.cnet.com/news/take-a-break-from-your-smartphone/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow17to20Tip2 = Tip(header: weekendNow17to20Title, title: "slow down your perception of time by watching the sunset tonight", body: "By witnessing the beauty of the sunset, you can . Experiences of awe brings you into the present momement, resulting in the feeling of having more time available and makes life feel more satisfying than it would otherwise." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/2014/04/04/make-time-for-sunset_n_5066629.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow17to20Tip3 = Tip(header: weekendNow17to20Title, title: "Socialize with friends and family to improve your health and live longer", body: "People with active social lives are more likely to live longer and less likely to be depressed and develop dementia those who are socially isolated." , sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/living-mild-cognitive-impairment/201606/the-health-benefits-socializing", sponsorLogo: "TBD", sponsorURL: "www.test.com")

// SUNDAY ONLY
let weekendNow17to20Tip4 = Tip(header: weekendNow17to20Title, title: "Meal prep: You are more likely to eat healthier if you prepare your meals for the following week", body: "It forces you to commit to healthier eating, and over the course of weeks, months, etc., and you will notice a more healthier, leaner self by doing this simple habit." , sourceName: "Bustle", sourceURL: "https://www.bustle.com/articles/159080-11-healthy-after-work-habits-to-try-instead-of-sitting-on-the-couch-all-night", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow17to20Tip5 = Tip(header: weekendNow17to20Title, title: "Light exercise before bedtime–or anytime during the day–has actually been linked to better sleep", body: "When we sleep, our breathing is relatively infrequent and shallow, so oxygen levels are lower overnight. By taking a 15- to 20-minute walk before bed (and breathing deeply throughout), you can help your cells stock up on the oxygen they need to accomplish all of their restorative handiwork while you sleep." , sourceName: "Health", sourceURL: "https://www.health.com/sleep/night-health-habits-before-bed", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow17to20Tip6 = Tip(header: "", title: "Avoid weight gain by eating smaller meals this afternoon and evening", body: "A study of 420 overweight and obese people found that \"late eaters,\" people classified as eating their biggest meal after 3 p.m., lost significantly less weight — and took longer to lose it — than \"early eaters,\" those who ate their main meal before 3 p.m." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/why-eating-late-bad-unhealthy-2018-1", sponsorLogo: "", sponsorURL: "")

// SATURDAY
let weekendNow17to20TipArray0 = [weekendNow17to20Tip0, weekendNow17to20Tip1, weekendNow17to20Tip3, weekendNow17to20Tip2]
let weekendNow17to20Topic0 = Topic(title: weekendNow17to20Title, icon: weekendNow17to20Icon, tip: weekendNow17to20TipArray0)

// SUNDAY (WIP)
let weekendNow17to20TipArray1 = [weekendNow17to20Tip4, weekendNow17to20Tip5, weekendNow17to20Tip6, weekendNow17to20Tip1]
let weekendNow17to20Topic1 = Topic(title: weekendNow17to20Title, icon: weekendNow17to20Icon, tip: weekendNow17to20TipArray1)

// MARK: - Now, Weekend, 21to24

let weekendNow21to24Title = "Now, Weekday, 21to24"
let weekendNow21to24Icon = "Now"

// Saturday Night
let weekendNow21to24Tip0 = Tip(header: planAhead, title: "Sleeping in on the weekends leaves you more tired, and in a worse mood, than if you maintained a consistent sleep schedule all 7 days", body: "Every 1 hour that sleep is shifted, you increase your risk of heart disease by 11%. Each 1-hour shift was also linked with a 28% higher likelihood of reporting your health as poor or fair compared to excellent." , sourceName: "CBS News", sourceURL: "https://www.cbsnews.com/news/staying-up-late-and-sleeping-in-on-weekends-may-harm-heart/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekendNow21to24Tip1 = Tip(header: loseWeight, title: "Get more sleep on a weekend night to reduce weight gain", body: "Sleep deprivation often makes you eat more - about 500 extra calories a day - studies have found. Cap off your weekend weight-loss efforts with a relaxing activity and then head to bed early to squeeze in some extra sleep." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/2012/08/11/healthy-weekend_n_1760981.html?slideshow=true#gallery/243861/8", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekendNow21to24Tip2 = Tip(header: health, title: "Avoid alcohol right before bedtime", body: "While alcohol can help you fall asleep, it robs you of quality sleep. Alcohol keeps people in the lighter stages of sleep from which they can be awakened easily and prevents them from falling into deeper, more restorative stages of sleep." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/what-successful-people-do-before-bed-2016-6#13-they-skip-the-wine-13", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekendNow21to24Tip3 = Tip(header: "", title: "Sleeping in on Sunday morning will make it harder to fall alseep on Sunday night", body: "Though you’ll feel more rested after waking up late on Sunday morning, it disrupts your circadian rhythm, making it harder to fall asleep at night." , sourceName: "National Sleep Foundation", sourceURL: "https://www.sleep.org/articles/catching-up-on-sleep/", sponsorLogo: "", sponsorURL: "")

//////////////
// Sunday Night
let weekendNow21to24Tip4 = Tip(header: success, title: "Bill Gates reads for an hour every night", body: "Books are a gateway to learning and knowledge. Bill Gates, Oprah Winfrey, Elon Musk, and Mark Zuckerberg all read a lot. Successful people tend to choose educational books and publications over novels, tabloids, and magazines. And they obsess over biographies and autobiographies of other successful people for guidance and inspiration." , sourceName: "Inc.", sourceURL: "https://www.inc.com/justin-bariso/bill-gates-follows-4-rules-to-get-most-from-reading-books.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow21to24Tip5 = Tip(header: success, title: "Oprah Winfrey is usually in bed by 10 p.m. and her night-time routine includes self-reflection", body: "\"I usually get into bed and I have volumes of gratitude journals by the side of my bed. The last thing I do before I go to sleep is write five things that gave me great pleasure or that I was grateful for.\"" , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2018/06/22/what-time-successful-people-to-go-bed.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow21to24Tip6 = Tip(header: health, title: "Begin to build the habit of going to bed earlier because night owls have a 10% higher risk of death than being a morning person", body: "The more people identified as evening people, the greater their risk for a variety of medical conditions including psychological disorders, diabetes, neurological conditions, gastrointestinal disorders, and respiratory disorders. Try going to bed a littler earlier each night." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/night-owl-risk-for-death-vs-morning-people-2018-4?r=UK&IR=T", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow21to24Tip7 = Tip(header: health, title: "Successful people make it a priority to get enough sleep", body: "Go to bed at a consistent time each evening. Plan out when you're going to wake up, count back however many hours you need to sleep, and then consider setting an alarm to remind yourself to get ready for bed." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/what-successful-people-do-before-bed-2016-6#11-they-plan-out-sleep-11", sponsorLogo: "TBD", sponsorURL: "www.test.com")

// Saturday
let weekendNow21to24TipArray0 = [weekendNow21to24Tip0, weekendNow21to24Tip1, weekendNow21to24Tip2, weekendNow21to24Tip3]
let weekendNow21to24Topic0 = Topic(title: weekendNow21to24Title, icon: weekendNow21to24Icon, tip: weekendNow21to24TipArray0)

// Sunday
let weekendNow21to24TipArray1 = [weekendNow21to24Tip4, weekendNow21to24Tip5, weekendNow21to24Tip6, weekendNow21to24Tip7]
let weekendNow21to24Topic1 = Topic(title: weekendNow21to24Title, icon: weekendNow21to24Icon, tip: weekendNow21to24TipArray1)




// MARK: - WEEKDAY

// MARK: - Now, Weekday, 0to4

let weekdayNow0to4Title = "Now, 0to4"
let weekdayNow0to4Icon = "Now"

//// MON
let weekdayNow0to4Tip0 = Tip(header: success, title: "Prioritze sleep to make smarter decisions tomorrow", body: "A study of high-earning professionals found the vast majority got within the recommended 7 to 9 hours of sleep over the course of a week. Successful people know they think better and make smarter decisions after getting enough sleep.", sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/home/cleaning-organizing/successful-people-work/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow0to4Tip1 = Tip(header: success, title: "Have a set bedtime so you can perform optimally the next day", body: "Having a bedtime means you don't need to debate with yourself every night about when you intend to go to bed. Making the conscious choice to go to sleep at a certain time frees you from wrestling with the consequences of going to bed too late, which can include decreased productivity the next day." , sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/health/wellness/successful-people-habits-before-bed/1/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow0to4Tip2 = Tip(header: sleepBetter, title: "Wear socks to fall asleep faster", body: "Heating cold feet causes vasodilation—dilation of the blood vessels—which triggers your brain that its time for bed. If you aren't a sock sleeper, layer extra blankets on top of your comforter." , sourceName: "National Sleep Foundation", sourceURL: "https://sleep.org/articles/wearing-socks-to-bed/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow0to4Tip3 = Tip(header: sleepBetter, title: "If you want to fall asleep faster, think about staying awake", body: "It sounds counter intuitive, but nstead of worrying about falling asleep, think about staying awake instead. This often lessens anxiety and gives your mind a chance to relax enough to fall asleep. \n\nIt's a technique known as paradoxical intent, a cognitive behavioral therapy technique used to lessen the anxiety around falling asleep." , sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/health/wellness/improve-sleep-habits-one-day/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//// TUE
let weekdayNow0to4Tip4 = Tip(header: "Sleep", title: "Fall asleep faster: Reading for 6 minutes reduces stress by 68%", body: "Psychologists believe this is because the human mind has to concentrate on reading and the distraction of being taken into a literary world eases the tension in your body. And it works better and faster than other methods to calm frazzled nerves such as listening to music (61%), having a cup of coffee or tea (54%), or going for a walk (42%).", sourceName: "The Telegraph", sourceURL: "https://www.telegraph.co.uk/news/health/news/5070874/Reading-can-help-reduce-stress.html", sponsorLogo: "", sponsorURL: "")
let weekdayNow0to4Tip5 = Tip(header: "", title: "People who were more active at night were 6% to 10% more likely to be diagnosed with a mood disorder, like depression", body: "Every biological process, from eating to sleeping, is controlled by the body's circadian rhythms. Irregular circadian rhythms confuse the body, and they've been linked to mood disorders and weight gain. Scientists also discovered that night owls tended to be lonelier and more unhappy.", sourceName: "Men's Health", sourceURL: "https://www.menshealth.com/health/a20716425/circadian-rhythms-depression-mood-disorders/", sponsorLogo: "", sponsorURL: "")
let weekdayNow0to4Tip6 = Tip(header: improvePerformance, title: "For a healthy weight, avoid eating at night and only eat during the day", body: "The circadian rhythm of our metabolism has not evolved for a world with 24-7 access to food and it still expects us to stop eating at sundown. This mismatch between programmed biology and modern society can lead to myriad health problems. Limiting food intake to a period of 8 to 12 hours during the day can help people lose weight and may help prevent illnesses including diabetes, heart disease and cancer.", sourceName: "The Washington Post", sourceURL: "https://www.washingtonpost.com/national/health-science/timing-your-meals-may-help-with-weight-loss-thats-what-it-seems-to-do-in-mice/2018/03/23/14672fc0-f718-11e7-a9e3-ab18ce41436a_story.html?utm_term=.b6892739a880", sponsorLogo: "", sponsorURL: "")
let weekdayNow0to4Tip7 = Tip(header: "", title: "Getting more sleep is one of the best manage stress and emotions", body: "Researchers have linked adequate sleep to everything from better mood to longer life spans. You’ll also have a better attention span, which in turn can improve your performance and reduce your stress during the day.", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/amymorin/2017/06/10/how-to-leave-stress-at-work-so-you-dont-take-out-your-frustration-on-your-family/#14ff2f584b48", sponsorLogo: "", sponsorURL: "")

//// WED



let weekdayNow0to4TipArray0 = [weekdayNow0to4Tip0, weekdayNow0to4Tip1, weekdayNow0to4Tip2, weekdayNow0to4Tip3]
let weekdayNow0to4Topic0 = Topic(title: weekdayNow0to4Title, icon: weekdayNow0to4Icon, tip: weekdayNow0to4TipArray0)

let weekdayNow0to4TipArray1 = [weekdayNow0to4Tip4, weekdayNow0to4Tip5, weekdayNow0to4Tip6, weekdayNow0to4Tip7]
let weekdayNow0to4Topic1 = Topic(title: weekdayNow0to4Title, icon: weekdayNow0to4Icon, tip: weekdayNow0to4TipArray1)

let weekdayNow0to4TipArray2 = [weekdayNow0to4Tip3, weekdayNow0to4Tip4, weekdayNow0to4Tip6, weekdayNow0to4Tip7]
let weekdayNow0to4Topic2 = Topic(title: weekdayNow0to4Title, icon: weekdayNow0to4Icon, tip: weekdayNow0to4TipArray2) // WORK IN PROGRESS

// MARK: - Now, Weekday, 5to8

let weekdayNow5to8Title = "Now, 5to8"
let weekdayNow5to8Icon = "Now"

// MON
let weekdayNow5to8Tip0 = Tip(header: success, title: "Steve Jobs asked himself this question each morning...", body: "\"I looked in the mirror every morning and asked myself: \"If today were the last day of my life, would I want to do what I am about to do today?\" And whenever the answer has been no for too many days in a row, I know I need to change something.\"" , sourceName: "FastCompany", sourceURL: "https://www.fastcompany.com/3033652/the-morning-routines-of-the-most-successful-people", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow5to8Tip1 = Tip(header: success, title: "Elon Musk and Bill Gates Schedule Their Days in 5-Minute Chunks", body: "Filling every moment of your calendar pushes you to make tough calls about prioritization and also leaves you feeling more in control of your time. Breaking your day up into small segments can boost your productivity. Presumably, when you're planning things down to the minute, you've also got to set aside specific time to relax and recharge." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/bill-gates-elon-musk-scheduling-habit-2017-8", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip2 = Tip(header: "Getting Ready", title: "Choose an outfit that you feel \"great\" in because it will boost your mood, self-confidence, and productivity", body: "In one study, a group of students were given a set of tasks to do — half were given a doctor’s lab coat to wear and half were not. Those wearing the lab coats were more attentive and focused than those not wearing the lab coat.", sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/business/can-wearing-work-uniform-help-you-get-ahead-ncna788136?cid=eml_better_20180716", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip3 = Tip(header: betterSkin, title: "Before you leave for work, apply moisturizer and drink a glass of water to keep your skin looking good.", body: "Dehydration makes your skin look more dry and wrinkled, which can be improved with proper hydration. You can also help \"lock\" moisture into your skin by using moisturizer, which creates a physical barrier to keep moisture in." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/diet/features/6-reasons-to-drink-water#3", sponsorLogo: "TBD", sponsorURL: "www.test.com")

////////// TUES
let weekdayNow5to8Tip4 = Tip(header: coffee, title: "The best time to drink coffee is after 9:30 a.m.", body: "That's because the stress hormone cortisol, which regulates energy, generally peaks between 8 a.m. and 9 a.m., so you don't need the boost right then.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/the-best-time-of-day-to-do-everything-2016-5#-2", sponsorLogo: "sponsor", sponsorURL: "sponsorURL")
let weekdayNow5to8Tip5 = Tip(header: "Water", title: "Drinking water first thing in the morning helps to rehydrate the body", body: "Our body is 60% water. But, our bodies are slightly dehydrated when we wake up in the morning. Drinking a couple glasses of water allows the body to rehydrate and helps with digestion after breakfast.", sourceName: "USA Today", sourceURL: "https://www.usatoday.com/story/news/nation-now/2017/03/14/why-you-should-drink-water-first-thing-every-day/99123938/", sponsorLogo: "sponsor", sponsorURL: "sponsorURL")
let weekdayNow5to8Tip6 = Tip(header: "Health", title: "Breakfast eaters are 1/3 less likely to be overweight or obese, and tend to be more successful in maintaining weight loss after dieting", body: "They also show greater restraint when it comes to impulse snacking and overeating at other meals. Coming as it does after the day's longest period without food, breakfast seems to influence metabolism more strongly than lunch or dinner.", sourceName: "Harvard Health Publishing", sourceURL: "https://www.health.harvard.edu/nutrition/breakfast-and-beyond-the-case-for-a-healthy-morning-meal", sponsorLogo: "sponsor", sponsorURL: "sponsorURL")
let weekdayNow5to8Tip7 = Tip(header: "Clothes", title: "Dressing well may increase your earnings potential", body: "In one study, people were shown photos of male models dressed in either business or casual attire. They were then asked questions about how the men would perform in a variety of jobs. Results indicated that the men wearing casual attire were expected to earn a lower starting salary and expected to experience more verbal harassment compared to the men dressed in business attire. Moreover, the men in business attire were expected to make more money and get promoted more rapidly.", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/ashleystahl/2016/05/11/how-self-worth-affects-your-salary/#4c97d0e677fa", sponsorLogo: "", sponsorURL: "")

////// WED
let weekdayNow5to8Tip8 = Tip(header: "Workout", title: "85% of people suffer from low self-esteem. Give yourself a boost of confidence this morning by improving your physical appearance", body: "If you aren’t confident in your outward appearance, then you may find yourself hiding, apologizing or overcompensating. And in many cases, there are three common pain points: teeth, weight, and blemished or scarred skin.", sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/business/why-low-self-esteem-may-be-hurting-your-career-ncna814156", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip9 = Tip(header: "Clothes", title: "Increase your future earnings and boost your self-esteem by dressing well today", body: "93% of executives report that the way a person dresses at the office affects their prospects for a promotion. The way we dress strongly affects the way we feel about ourselves and pays off professionaly, so start each day looking your best.", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/ashleystahl/2016/05/11/how-self-worth-affects-your-salary/#4c97d0e677fa", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip10 = Tip(header: "Health", title: "Skipping breakfast linked to higher odds of clogged arteries", body: "Clogged arteries can lead to a heart attack or stroke. Breakfast eaters also tended to eat more healthfully over all and were less likely to be obese or have high blood pressure, diabetes, or unhealthy cholesterol levels.", sourceName: "Harvard Health Publishing", sourceURL: "https://www.health.harvard.edu/heart-health/skipping-breakfast-linked-to-higher-odds-of-clogged-arteries", sponsorLogo: "sponsor", sponsorURL: "sponsorURL")
let weekdayNow5to8Tip11 = Tip(header: "Mood", title: "Get into a good mood now because it will help you stay in a good mood for the rest of the for the rest of the day", body: "A study found that people who started out each day happy or calm usually stayed that way throughout the day. By contrast, for the most part, people who started the day in a terrible mood didn’t really climb out of it, and felt even worse by the end of the day. To get out of a bad mood try taking a few deep breaths, listening to your favoirte song, or thinking of something you're thankful for.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2016/07/how-your-morning-mood-affects-your-whole-workday", sponsorLogo: "", sponsorURL: "")

/////// THURS
let weekdayNow5to8Tip12 = Tip(header: success, title: "Reach for water instead of coffee first thing in the morning", body: "After being asleep all night, we wake up every day slightly dehydrated. Drinking water first thing can hydrate the body while aiding digestion and metabolism." , sourceName: "USA Today", sourceURL: "https://www.usatoday.com/story/news/nation-now/2017/03/14/why-you-should-drink-water-first-thing-every-day/99123938/", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip13 = Tip(header: "Coffee", title: "Avoid drinking coffee until the hours of 9:30am to 11:00am", body: "Cortisol is a hormone which makes us feel alert and awake. The peak production of cortisol in your body occurs between 8:00am to 9:00am (under normal circumstances). So, by consuming caffeine when it is not needed, your body will build a faster tolerance to it, and the buzz you get will greatly diminish.", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/anthonykosner/2014/01/05/why-the-best-time-to-drink-coffee-is-not-first-thing-in-the-morning/#322f5acd7a71", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip14 = Tip(header: success, title: "Successful people exercise first thing in the morning", body: "It helps reduce stress later in the day, counteracts the effects of high-fat diet, and improves sleep. Xerox CEO Ursula Burns, \"Shark Tank\" investor Kevin O'Leary, and entrepreneur Gary Vaynerchuk all workout in the morning." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/what-successful-people-do-before-breakfast-2015-10", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip15 = Tip(header: beMoreProductive, title: "Making your bed every morning is correlated with increased productivity and sense of well-being", body: "Making your bed doesn't necessarily cause you to get more done at work, but it's a \"keystone habit\" that can spark chain reactions that help build other good habits." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/what-successful-people-do-before-breakfast-2015-10", sponsorLogo: "", sponsorURL: "")

//////// FRI
let weekdayNow5to8Tip16 = Tip(header: "Water", title: "Drinking water in the morning increases your metabolism and ability to burn fat", body: "You are dehydrated when you wake up which can slow down metabolism by as much as 3%. Drinking about 17oz of water increases metabolic rate by 30%. Plus, drinking one or two glasses of water before a meal can fill you up so you naturally eat less.", sourceName: "Shape", sourceURL: "https://www.shape.com/healthy-eating/healthy-drinks/6-reasons-drinking-water-helps-solve-any-problem", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip17 = Tip(header: success, title: "Top CEOs wake up early", body: "In a poll of 20 executives, 90% said they wake up before 6AM on weekdays. \n\n• PepsiCo CEO Indra Nooyi wakes up at 4AM \n• Disney CEO Bob Iger wakes up at 4:30AM \n• Twitter and Square CEO Jack Dorsey wakes up at 5:30AM" , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/what-successful-people-do-before-breakfast-2015-10", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow5to8Tip18 = Tip(header: "Workout", title: "Pack your workout clothes in the morning and take them to work with you so you have no excuses to not workout after work", body: "Heading straight to the gym after work takes away the temptation of going home and being inactive and unproductive.", sourceName: "Bustle", sourceURL: "https://www.bustle.com/articles/159080-11-healthy-after-work-habits-to-try-instead-of-sitting-on-the-couch-all-night", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip19 = Tip(header: success, title: "Gratitude journaling is a great way to center yourself and get the proper perspective before heading to work", body: "Entrepreneur and author of \"The 4-Hour Workweek,\" Tim Ferriss, spends five minutes each morning writing down what he's grateful for and what he's looking forward to. It \"allows me to not only get more done during the day but to also feel better throughout the entire day,\" he said." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/what-successful-people-do-before-breakfast-2015-10", sponsorLogo: "", sponsorURL: "")

/////// WEEK 2
// MON
let weekdayNow5to8Tip20 = Tip(header: "", title: "What's the one goal which, when tackled, will make everything else you have to do easier or unnecessary?", body: "Block out the first 4 hours of your day to focus on your most important task. Until your one goal is achieved, anything else is a distraction." , sourceName: "Fast Company", sourceURL: "https://www.fastcompany.com/3066982/why-the-most-productive-people-do-these-six-things-every-day", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip21 = Tip(header: success, title: "If you want to receive less email, send less email", body: "LinkedIn CEO Jeff Weiner's golden rule for email management, is, don't send an email unless absolutely necessary. When you send an email, your inbox fills up with the responses from your emails and with the responses of the people who were added to those threads." , sourceName: "Inc.", sourceURL: "https://www.inc.com/business-insider/email-habits-of-successful-executives.html", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip22 = Tip(header: "", title: "Drink a glass of water when you wake up", body: "Becase we don't drink water while we sleep, we wake up mildly dehydrated. Drink a glass of water first thing to rehydrate, control early morning hunger pains, and helps you wake up." , sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip23 = Tip(header: "", title: "Don't drink coffee immediately after you wake up", body: "The moment we awaken, our bodies begin producing cortisol, a hormone that helps us wake up. Caffeine interferes with the production of cortisol-so starting the day immediately with a cup of coffee barely boosts our wakefulness. Worse, early-morning coffee increases our tolerance for caffeine, which means we must drink even more to obtain its benefits. The better approach is to drink coffee an 60-90 minutes after waking up, once our cortisol production has peaked." , sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")

// TUE
let weekdayNow5to8Tip24 = Tip(header: "", title: "People who eat breakfast are less likely to gain weight and develop belly fat, study finds", body: "Researchers found that, on average, people who ate breakfast regularly only gained 3 pounds each year, while those who skipped breakfast gained eight pounds. Eating breakfast sets you up for eating healthy for the rest of the day." , sourceName: "CBS News", sourceURL: "https://www.cbsnews.com/news/eat-breakfast-gain-less-weight-belly-fat-study/", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip25 = Tip(header: "", title: "Avoid weight gain by eating your largest meals of the day before 3 p.m.", body: "A study of 420 overweight and obese people found that \"late eaters,\" people classified as eating their biggest meal after 3 p.m., lost significantly less weight — and took longer to lose it — than \"early eaters,\" those who ate their main meal before 3 p.m." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/why-eating-late-bad-unhealthy-2018-1", sponsorLogo: "", sponsorURL: "")

let weekdayNow5to8Tip26 = Tip(header: "", title: "Eat breakfast because skipping breakfast tricks your brain into thinking you want higher-calorie foods, which leads to weight gain", body: "A study found that when particpants skiped breakfast their brain's reward center became more active when the person saw a high-calorie food (pizza and cake) as opposed to a low-calorie food (vegetables and fish). However, when the participants ate breakfast their brain's reward center did not show any significantly greater activity when the person saw a high-calorie food. The results support the advice for eating a healthy breakfast as part of the dietary prevention and treatment of obesity." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/diet/news/20090615/skip-breakfast-get-fat", sponsorLogo: "", sponsorURL: "")

// MON
let weekdayNow5to8TipArray0 = [weekdayNow5to8Tip0, weekdayNow5to8Tip1, weekdayNow5to8Tip2, weekdayNow5to8Tip3]
let weekdayNow5to8Topic0 = Topic(title: weekdayNow5to8Title, icon: weekdayNow5to8Icon, tip: weekdayNow5to8TipArray0)

// TUE
let weekdayNow5to8TipArray1 = [weekdayNow5to8Tip4, weekdayNow5to8Tip5, weekdayNow5to8Tip6, weekdayNow5to8Tip7]
let weekdayNow5to8Topic1 = Topic(title: weekdayNow5to8Title, icon: weekdayNow5to8Icon, tip: weekdayNow5to8TipArray1)

// WED
let weekdayNow5to8TipArray2 = [weekdayNow5to8Tip8, weekdayNow5to8Tip9, weekdayNow5to8Tip10, weekdayNow5to8Tip11]
let weekdayNow5to8Topic2 = Topic(title: weekdayNow5to8Title, icon: weekdayNow5to8Icon, tip: weekdayNow5to8TipArray2)

// THU
let weekdayNow5to8TipArray3 = [weekdayNow5to8Tip12, weekdayNow5to8Tip13, weekdayNow5to8Tip14, weekdayNow5to8Tip15]
let weekdayNow5to8Topic3 = Topic(title: weekdayNow5to8Title, icon: weekdayNow5to8Icon, tip: weekdayNow5to8TipArray3)

// FRI
let weekdayNow5to8TipArray4 = [weekdayNow5to8Tip16, weekdayNow5to8Tip17, weekdayNow5to8Tip18, weekdayNow5to8Tip19]
let weekdayNow5to8Topic4 = Topic(title: weekdayNow5to8Title, icon: weekdayNow5to8Icon, tip: weekdayNow5to8TipArray4)


// MARK: - Now, Weekday, 9to11

let weekdayNow9to11Title = "Now, Weekday, 9to11"
let weekdayNow9to11Icon = "Now"

// MON
let weekdayNow9to11Tip0 = Tip(header: improvePerformance, title: "At work, people who take mid-morning breaks have more energy and focus than those who don't take breaks", body: "Research found that people who took a break before lunch were not only more energetic and focused, but they also experienced less headaches, eyestrain and lower back pain, and were happier with their jobs and less likely to feel burnt out." , sourceName: "USA Today", sourceURL: "https://www.usatoday.com/story/money/business/2015/10/10/cheat-sheet-work-break/73417008/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow9to11Tip1 = Tip(header: improvePerformance, title: "Increase productivity: Block time at work to respond to emails, return calls, and other admin tasks", body: "It takes an average of 26 minutes to recover from trivial interruptions. If you respond to every email that hits your inbox you’ll never stay ahead. Block time for these tasks and don't touch these tasks outside of your set time block." , sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/ashleystahl/2017/10/20/4-ways-to-be-more-productive-at-work/#7638ce9f19eb", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow9to11Tip2 = Tip(header: improvePerformance, title: "Take regular breaks at work to keep your energy levels high and your mind fresh", body: "Working at a task without breaks leads to a steady decline in performance. Working for 90 minutes straight, and then take a 15 minute break may be best for maximizing productivity. If this doesn't work, shorten that interval to 60 or 75 minutes." , sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/ashleystahl/2017/10/20/4-ways-to-be-more-productive-at-work/#7638ce9f19eb", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow9to11Tip3 = Tip(header: sleepBetter, title: "People exposed to sunlight or bright indoor lights during the morning hours, between 8 a.m. and Noon, sleep better at night", body: "Exposure to light during the day helps to calibrate the body’s internal “circadian” clock. A lack of good quality sleep has been linked to mental and physical health problems, including issues with mood, thinking, metabolism and the immune system.", sourceName: "Reuters", sourceURL: "https://www.reuters.com/article/us-health-sleep-daylight/morning-daylight-exposure-tied-to-a-good-nights-sleep-idUSKCN18E23E", sponsorLogo: "", sponsorURL: "")

////////// TUES
let weekdayNow9to11Tip4 = Tip(header: improvePerformance, title: "Having your smartphone in reach, even if it’s silenced or turned off lowers your ability to think", body: "Research: People who kept their phones in another room significantly outperformed the ones who kept them nearby in concentration tests. Having your phone within reach makes it harder to focus because a percentage of the brain has to actively work to not pick up or use the device.", sourceName: "Inc.", sourceURL: "https://www.inc.com/christina-desmarais/heres-why-you-need-to-put-your-phone-away-according-to-science.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekdayNow9to11Tip5 = Tip(header: improvePerformance, title: "You only have 7 seconds to make a good \"first impression\"", body: "First impressions are more influenced by your facial appearance and body language than your words. So, straighten your posture, make eye contact, and smile. Standing tall, pulling your shoulders back, and holding your head straight are all signals of confidence and competence.", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/carolkinseygoman/2011/02/13/seven-seconds-to-make-a-first-impression/#3b38025d2722", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekdayNow9to11Tip6 = Tip(header: improvePerformance, title: "Sitting for more than 8 hours a day with no physical activity results in the same risk of dying as posed by obesity and smoking", body: "Long periods of sitting causes excess body fat around the waist and increases the risk of death from cardiovascular disease and cancer. For better health, take a break from sitting every 30 minutes, stand while talking on the phone, and try a standing desk at work.", sourceName: "Mayo Clinic", sourceURL: "https://www.mayoclinic.org/healthy-lifestyle/adult-health/expert-answers/sitting/faq-20058005", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekdayNow9to11Tip7 = Tip(header: improvePerformance, title: "Ask a friend to meet for drinks or dinner tonight - it's a healthy after-work ritual", body: "Not only does making plans give you something to look forward to, but it creates empathy, support, and bonding — all of which are great ways for you to de-stress after work, and allow you to head home with a clear mind and heart." , sourceName: "Bustle", sourceURL: "https://www.bustle.com/articles/159080-11-healthy-after-work-habits-to-try-instead-of-sitting-on-the-couch-all-night", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//////// WED
let weekdayNow9to11Tip8 = Tip(header: improvePerformance, title: "For most adults, it's best to do analytical work that requires heads-down attention in the morning", body: "When we wake up, our body temperatures rise boosting our energy levels and alertness—and that, in turn, enhances our ability to concentrate and stay focused. Alertness and energy levels rise in the morning, peak in the late morning or around noon, and decrease during the afternoons." , sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
let weekdayNow9to11Tip9 = Tip(header: improvePerformance, title: "Project confidence, high self-esteem, and create an emotional connection with the person you are speaking with by making eye contact 60% to 70% of the time", body: "Eye contact shows a person's social hierarchy and dominance in a conversation. When someone is talking to you, make sure you look them in the eye. Looking down or looking around makes you look nervous. People who are of high social status look longer at their subject and they also receive more eye contact in return.", sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2017/08/17/how-making-eye-contact-can-help-you-appear-more-confident-at-work.html", sponsorLogo: "", sponsorURL: "")
let weekdayNow9to11Tip10 = Tip(header: "", title: "Researchers found that those who took workday breaks earlier in the day (around 10 or 11 a.m.) reported more energy, concentration, motivation, and job satisfaction, compared to those who saved their breaks for the afternoon", body: "Employees who took breaks earlier in the day had less symptoms of poor health, including headache, eyestrain, and lower back pain after the break. These employees also experienced increased job satisfaction and a decrease in emotional exhaustion (burnout).", sourceName: "Baylor University", sourceURL: "https://www.baylor.edu/mediacommunications/news.php?action=story&story=159785", sponsorLogo: "", sponsorURL: "")
let weekdayNow9to11Tip11 = Tip(header: improvePerformance, title: "Humans use voice pitch to communicate social status. Speak to people in a lower pitch in order to display high social status", body: "Both men and women tend to talk to high status individuals using a higher pitch. A deep, masculine voice sounds dominant, especially in men, while the opposite is true of a higher pitched voice. So, if someone perceives the person they are speaking with to be more dominant than them, they raise their pitch. This may be a signal of submissiveness, to show the listener that you are not a threat, and to avoid possible confrontations." , sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2017/06/170629101721.htm", sponsorLogo: "", sponsorURL: "")

////// THURS

let weekdayNow9to11Tip12 = Tip(header: improvePerformance, title: "Most super-productive people only check their email 2 or 3 times a day", body: "The average person spends 7.4 hours per weekday on email. Constantly checking email also makes you less productive answering it. A study put participants into 2 groups, with one told to check email 3 times a day and another told to check it as often as they wanted. The group that checked email 3 times a day reduced the amount of time they spent answering messages by 20%. They also reported feeling less stressed than before." , sourceName: "Fast Company", sourceURL: "https://www.fastcompany.com/3066982/why-the-most-productive-people-do-these-six-things-every-day", sponsorLogo: "", sponsorURL: "")
let weekdayNow9to11Tip13 = Tip(header: "", title: "Dieters are more successful at losing weight—and keeping it off—when they eat breakfast every day", body: "If you don't already eat breakfast, start. If you are already a breakfast eater, try eating the same breakfast multiple days each week. Repeating the same meals can help you shed pounds, according to research.", sourceName: "EatingWell", sourceURL: "http://www.eatingwell.com/article/280967/7-small-changes-with-big-results/", sponsorLogo: "", sponsorURL: "")
let weekdayNow9to11Tip14 = Tip(header: "", title: "If you feel tired, get as much sunlight as you can", body: "The sun, unlike most lightbulbs, emits light that covers a wide range of the color spectrum. When these extra wavelengths hit your eyes, they signal your brain to stop producing sleep hormones and start producing alertness hormones.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
let weekdayNow9to11Tip15 = Tip(header: "", title: "Shorter, more frequent breaks, especially walking breaks, increases your productivity throughout the day", body: "One study showed that hourly 5-minute walking breaks boosted energy levels, sharpened focus, and improved mood throughout the day and reduced feelings of fatigue in the late afternoon. Shorter, more frequent breaks were more effective than a single 30 minute walking break.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")

// FRI
let weekdayNow9to11Tip16 = Tip(header: "", title: "Aim for 6-8 glasses of water daily– more if it’s hot or you’re exercising", body: "Being even slightly dehydrated will make you tired and lower your concentration. Don’t wait until you feel thirsty before drinking either – by the time thirst kicks in you are already dehydrated.", sourceName: "Weight Loss Resources", sourceURL: "https://www.weightlossresources.co.uk/diet/healthy_eating/beat-afternoon-energy-slump.htm", sponsorLogo: "", sponsorURL: "")
let weekdayNow9to11Tip17 = Tip(header: improvePerformance, title: "Get at least 20 to 30 minutes of sunlight light before noon to lower your body mass index (BMI) and prevent weight gain", body: "Not getting enough light before noon disturbs your internal body clock, which is known to alter metabolism and lead to weight gain (increased BMI). In one study, morning light exposure accounted for about 20% of a person’s BMI.", sourceName: "Northwestern University", sourceURL: "https://news.northwestern.edu/stories/2014/04/morning-rays-keep-off-the-pounds", sponsorLogo: "TBD", sponsorURL: "www.test.com")


// MON
let weekdayNow9to11TipArray0 = [weekdayNow9to11Tip0, weekdayNow9to11Tip1, weekdayNow9to11Tip2, weekdayNow9to11Tip3]
let weekdayNow9to11Topic0 = Topic(title: weekdayNow9to11Title, icon: weekdayNow9to11Icon, tip: weekdayNow9to11TipArray0)
// TUE
let weekdayNow9to11TipArray1 = [weekdayNow9to11Tip4, weekdayNow9to11Tip5, weekdayNow9to11Tip6, weekdayNow9to11Tip7]
let weekdayNow9to11Topic1 = Topic(title: weekdayNow9to11Title, icon: weekdayNow9to11Icon, tip: weekdayNow9to11TipArray1)
// WED
let weekdayNow9to11TipArray2 = [weekdayNow9to11Tip8, weekdayNow9to11Tip9, weekdayNow9to11Tip10, weekdayNow9to11Tip11]
let weekdayNow9to11Topic2 = Topic(title: weekdayNow9to11Title, icon: weekdayNow9to11Icon, tip: weekdayNow9to11TipArray2)
// THU
let weekdayNow9to11TipArray3 = [weekdayNow9to11Tip12, weekdayNow9to11Tip13, weekdayNow9to11Tip14, weekdayNow9to11Tip15]
let weekdayNow9to11Topic3 = Topic(title: weekdayNow9to11Title, icon: weekdayNow9to11Icon, tip: weekdayNow9to11TipArray3)
// FRI
let weekdayNow9to11TipArray4 = [weekdayNow9to11Tip16, weekdayNow9to11Tip17, weekdayNow9to11Tip14, weekdayNow9to11Tip13] // WIP
let weekdayNow9to11Topic4 = Topic(title: weekdayNow9to11Title, icon: weekdayNow9to11Icon, tip: weekdayNow9to11TipArray4)

// MARK: - Now, Weekday, 11to14

let weekdayNow11to14Title = "Now, Weekday, 11to14"
let weekdayNow11to14Icon = "Now"

// MON
let weekdayNow11to14Tip0 =  Tip(header: "Water", title: "Drinking water keeps you alert during the day", body: "Dehydration is the single most common cause of daytime fatigue. A 2% dehydration level can trigger short-term memory problems and difficulty focusing on a computer screen or printed page." , sourceName: "Shape", sourceURL: "https://www.shape.com/healthy-eating/healthy-drinks/6-reasons-drinking-water-helps-solve-any-problem", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow11to14Tip1 = Tip(header: beMoreProductive, title: "Be happier and more productive at work by taking multiple walking breaks", body: "Taking a walk will get your muscles moving and the oxygen flowing, and it also allows you to clear your head.", sourceName: "Huffington Post", sourceURL: "https://www.businessinsider.com/successful-people-do-during-afternoon-lull-2014-4", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow11to14Tip2 = Tip(header: beMoreProductive, title: "Multitasking lowers productivity by 40%, increases the chance of errors by up to 50%, and increases the time to complete a task by 50%", body: "On average, it can take up to 25 minutes to resume the task after being interrupted. Focus on one thing exclusively, and you’ll find yourself completing it much faster." , sourceName: "Inc.", sourceURL: "https://www.inc.com/laura-montini/infographic/the-high-cost-of-multitasking.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow11to14Tip3 = Tip(header: preventStess, title: "The next time you get stressed at work, pause before you respond", body: "The more something makes you mad or causes your heart to race, the more important it is to take a deep breath before speaking or typing a single word because you risk making the situation worse." , sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/advice/work-career/successful-people-habits-work/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

// TUE
//// TUESDAY, 11AM-2PM
let tuesdayNow11to14Tip0 = Tip(header: "Stress", title: "Tuesday morning at 11:45am is the most stressful time of the work week, survey suggests", body: "Tuesday is the day when workers are most likely to work through their lunch break and stay late at work. Eating healthy foods and drinking enough water will keep your energy levels high when you're busy and over-worked." , sourceName: "The Telegraph", sourceURL: "https://www.telegraph.co.uk/news/newstopics/howaboutthat/5113653/Tuesday-at-1145-is-most-stressful-time-of-the-week-survey-suggests.html", sponsorLogo: "", sponsorURL: "")
let weekdayNow11to14Tip4 = Tip(header: "Water", title: "Drinking 8 to 10 cups of water per day can improve your levels of cognitive performance by 30%", body: "A dehydration level of just 1% of your body weight reduces thinking functions, so staying well-hydrated is important for your mental performance." , sourceName: "Shape", sourceURL: "https://www.shape.com/healthy-eating/healthy-drinks/6-reasons-drinking-water-helps-solve-any-problem", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow11to14Tip5 = Tip(header: "Productive", title: "Listening to music you like, especially songs without lyrics, improves your mood and productivity", body: "Research: participants who listened to music they enjoyed completed their tasks more quickly and came up with better ideas than those who didn't because the music improved their mood. Music is also effective in raising efficiency in repetitive work." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/the-best-music-for-productivity-2015-7", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow11to14Tip6 = Tip(header: "Happiness", title: "Workers lose as much as 86 minutes per day due to noise distractions", body: "Wear large, over-the-ear headphones to help block out unwanted noise. Or, listen to white noise to mask conversations. Employees should speak to an office manager or human resources director on this issue." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2015/03/stop-noise-from-ruining-your-open-office", sponsorLogo: "TBD", sponsorURL: "www.test.com")


// WED
let weekdayNow11to14Tip7 = Tip(header: "Happiness", title: "The more you use Facebook/social media, the worse you feel", body: "While real-world social networks were positively associated with overall well-being, the use of Facebook was negatively associated with overall well-being. Liking others’ content and clicking links significantly predicted a reduction in self-reported physical health, mental health, and life satisfaction." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2017/04/a-new-more-rigorous-study-confirms-the-more-you-use-facebook-the-worse-you-feel", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow11to14Tip8 = Tip(header: "Productive", title: "Nearby speech distracts 48% of office workers.  Increase your focus and mood by listening to nature sounds while you work", body: "Sounds of nature can mask intelligible speech just as well as white noise while also enhancing cognitive functioning, optimizing the ability to concentrate, and increasing overall worker satisfaction." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/the-best-music-for-productivity-2015-7", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow11to14Tip9 = Tip(header: beMoreProductive, title: "Decorating your office with plants or pictures of your family or pet can increase productivity up to 15%", body: "Seeing plants around you can improve morale, increase satisfaction with your work, and make you more patient. Set your screensaver or web browser to display nature images." , sourceName: "Inc.", sourceURL: "https://www.inc.com/john-rampton/15-ways-to-increase-productivity-at-work.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow11to14Tip10 = Tip(header: beMoreProductive, title: "To be perceived as confident, stand tall, with your neck elongated, ears and shoulders aligned, chest slightly sticking out, and legs slightly apart", body: "This changes the chemicals in our brain to make us feel stronger and more confident, and it gives the outward appearance of credibility, strength, and vitality." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/common-body-language-mistakes-employees-make-2014-4", sponsorLogo: "TBD", sponsorURL: "www.test.com")

// THUR
let weekdayNow11to14Tip11 = Tip(header: beMoreProductive, title: "Holding eye contact while speaking denotes authority, confidence, and has an enormous impact on your ability to persuade", body: "Lack of eye contact often implies deception. When breaking eye contact, it is better to break off to the left or to the right, as looking down suggests insecurity." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/common-body-language-mistakes-employees-make-2014-4", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow11to14Tip12 = Tip(header: "", title: "Spending 20 minutes outside in good weather improves mood and working memory", body: "20 minutes is a short enough time to spend outside that you could fit it into your your lunch break or even your commute." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/belle-beth-cooper/10-simple-things-to-be-happy_b_4241824.html", sponsorLogo: "", sponsorURL: "")
let weekdayNow11to14Tip13 = Tip(header: "", title: "Our maximum attention span these days is about 15 minutes. Here's how to stay focused", body: "Schedule 15 to 30 minutes, where you're able to concentrate deeply on one task - during which you must work without checking emails, texts, or social media. Turn your phone facedown and on silent, as well as close out of all your distracting windows on your desktop, rather than just minimizing them. Notifications stimulate your brain to switch your focus regardless of whether you want to or not." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/psychologist-gives-tip-for-staying-focused-2015-11", sponsorLogo: "", sponsorURL: "")
let weekdayNow11to14Tip14 = Tip(header: "Breathe", title: "Reduce stress with 45 seconds of controlled breathing", body: "Take a deep breath, expanding your belly. Pause. Exhale slowly to the count of 5. Repeat 4 times. This can reduce your stress hormones, sharpen your thinking, and improve your immune system - all in under a minute." , sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")

// FRI
let weekdayNow11to14Tip15 = Tip(header: "Multitasking", title: "Avoid multitasking because heavy multitaskers perform significantly worse on simple memory tasks, study finds", body: "The word \"multitasking\" implies that you can do two or more things at once, but in reality our brains only allow us to do one thing at a time and we have to switch back and forth. If you’re multitasking while doing something significant, like an academic paper or work project, you’ll be slower to complete it and you might be less successful." , sourceName: "Stanford University", sourceURL: "https://news.stanford.edu/2018/10/25/decade-data-reveals-heavy-multitaskers-reduced-memory-psychologist-says/", sponsorLogo: "", sponsorURL: "")



// MON
let weekdayNow11to14TipArray0 = [weekdayNow11to14Tip0, weekdayNow11to14Tip1, weekdayNow11to14Tip2, weekdayNow11to14Tip3]
let weekdayNow11to14Topic0 = Topic(title: weekdayNow11to14Title, icon: weekdayNow11to14Icon, tip: weekdayNow11to14TipArray0)

// TUESDAY (contains tuesday specific tip)
var tuesdayNow11to14TipArray0 = [tuesdayNow11to14Tip0, weekdayNow11to14Tip4, weekdayNow11to14Tip5, weekdayNow11to14Tip6] // Need 1 more new tips
let tuesdayNow11to14Topic0 = Topic(title: weekdayNow11to14Title, icon: weekdayNow11to14Icon, tip: tuesdayNow11to14TipArray0)

// WED
let weekdayNow11to14TipArray1 = [weekdayNow11to14Tip7, weekdayNow11to14Tip8, weekdayNow11to14Tip9, weekdayNow11to14Tip10]
let weekdayNow11to14Topic1 = Topic(title: weekdayNow11to14Title, icon: weekdayNow11to14Icon, tip: weekdayNow11to14TipArray1)

// THU
let weekdayNow11to14TipArray2 = [weekdayNow11to14Tip11, weekdayNow11to14Tip12, weekdayNow11to14Tip13, weekdayNow11to14Tip14]
let weekdayNow11to14Topic2 = Topic(title: weekdayNow11to14Title, icon: weekdayNow11to14Icon, tip: weekdayNow11to14TipArray2)

// FRI
let weekdayNow11to14TipArray3 = [weekdayNow11to14Tip15, weekdayNow11to14Tip13, weekdayNow11to14Tip14, weekdayNow11to14Tip11]
let weekdayNow11to14Topic3 = Topic(title: weekdayNow11to14Title, icon: weekdayNow11to14Icon, tip: weekdayNow11to14TipArray3)



// MARK: - Now, Weekday, 14to16

let weekdayNow14to16Title = "Now, Weekday, 14to16"
let weekdayNow14to16Icon = "Now"

//// MON
let weekdayNow14to16Tip0 = Tip(header: success, title: "Receiving negative criticism has a greater impact on your emotions than receiving praise", body: "It takes about five good events to overcome the psychological effects of a bad one. Knowing this may remind us to be kinder to others and help us better deal with the bad stuff that will inevitably happen." , sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/2012/03/24/your-money/why-people-remember-negative-events-more-than-positive-ones.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow14to16Tip1 = Tip(header: improvePerformance, title: "Top workers focus for 45 minutes then take a 15 minute break", body: "One study found that the most productive people work for 52 minutes at a time, then take a 17-minute break before diving back into their work. During the 17 minutes of break, the group was more likely to go for a walk or tune out rather than check email or Facebook." , sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/advice/work-career/successful-people-habits-work/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow14to16Tip2 = Tip(header: ceoAdvice, title: "Before you leave work, write tomorrow's to-do list", body: "The last thing the CEO of American Express, Kenneth Chenault, does before leaving his office is to write down the top three things he wants to accomplish tomorrow. Then he uses the list to start his next day." , sourceName: "Inc.", sourceURL: "https://www.inc.com/business-insider/what-successful-people-do-before-they-go-to-sleep.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow14to16Tip3 = Tip(header: success, title: "Improve your performance: Ask yourself how did your day go?", body: "Researchers asked a group of employees to spend 15 minutes at the end of each day to reflect on how their day went. After 10 days, the group of employees who spent time reflecting at the end of each day outperformed other employees who did not by 23%." , sourceName: "LinkedIn", sourceURL: "https://learning.linkedin.com/blog/learning-tips/want-to-get-better-at-your-job--build-in-time-to-reflect", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//// TUE
let weekdayNow14to16Tip4 = Tip(header: success, title: "90% of top performers in their respective careers also rank high in terms of emotional intelligence", body: "People with higher emotional intelligence make an average of $29,000 more per year than people with low emotional intelligence. Focus on improving your skills in team work, social skills, empathy, and anger management." , sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/travisbradberry/2014/01/09/emotional-intelligence/#1989d5691ac0", sponsorLogo: "", sponsorURL: "")
let weekdayNow14to16Tip5 = Tip(header: success, title: "People who sit at a desk for a long period of time tend to roll their shoulders in and hang their head forward", body: "Every inch you hold your head forward, you add 10 pounds of pressure on your spine. When you finally do lean back again, like at the end of the day, the overworked muscles tense up, which can lead to tension headaches. Take a break from sitting every 30 minutes." , sourceName: "USA Today", sourceURL: "https://www.usatoday.com/story/money/business/2015/06/07/cheat-sheet-body-language-donts/28460019/", sponsorLogo: "", sponsorURL: "")
let weekdayNow14to16Tip6 = Tip(header: success, title: "Avoid social media in the afternoon because this is when people write the most negative posts, study finds", body: "A large study of Twitter posts found that the majority of negative posts occured in the afternoon, with the most amount of negative posts occuring between 3 p.m. and 4 p.m., while the most positive posts occured in the morning and evening. This analysis suggests that our moods are driven in part by a shared underlying biological rhythm." , sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/2011/09/30/science/30twitter.html", sponsorLogo: "", sponsorURL: "")
let weekdayNow14to16Tip7 = Tip(header: success, title: "Low on energy? Our bodies biological clocks create an urge to sleep in the afternoon between 1:00-3:00 PM", body: "If you can step outside to get some sunlight and stroll among trees and flowers, your focus and mood may get an added lift. But even if you simply stroll among the cubicles, research shows that moving around may help you feel less bored and sluggish." , sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/minding-the-body/201802/5-simple-fixes-afternoon-slump-work", sponsorLogo: "", sponsorURL: "") // * I think the timing of this tip could be improved (only display between 1-3PM)

//// WED
let weekdayNow14to16Tip8 = Tip(header: "", title: "Experts advise desk workers take breaks throughout the day to stand or walk for two hours every day", body: "A study found that men who sat for more than 6 hours per day at work were 90% more likely to report moderate levels of psychological distress—say, feeling tired, nervous, restless, or hopeless—than those who parked it for less time. Plus, prolonged sitting is associated with an increased risk of diabetes, obesity, and back pain.", sourceName: "Men's Health", sourceURL: "https://www.menshealth.com/health/a19841065/sitting-too-long-could-put-your-brain-health-at-risk/", sponsorLogo: "", sponsorURL: "")
let weekdayNow14to16Tip9 = Tip(header: "", title: "You're not alone if you're in a bad mood this afternoon, study finds", body: "People typically feel less happy, feel less warm toward others, and feel less positive emotions in the afternoon. Positive emotions and moods are typically highest in the morning and evening.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/dp/B072Q985YX/ref=dp-kindle-redirect?_encoding=UTF8&btkr=1", sponsorLogo: "", sponsorURL: "")
let weekdayNow14to16Tip10 = Tip(header: "", title: "It's best to do administrative work between between 1-3pm this is when our energy levels tend to be at their lowest", body: "After lunchtime, tasks can suddenly become much harder to accomplish. The afternoon slump is not just something that happens if you eat a particularly heavy meal; it’s a scientifically quantifiable phenomenon. In a 9-to-5 job format, your cognitive faculties decline significantly around 3 p.m., which means you should devote those hours to the easiest work that requires the least concentration like answering your emails, data entry, or filing papers.", sourceName: "Unstuck", sourceURL: "https://www.unstuck.com/advice/time-to-get-things-done/", sponsorLogo: "", sponsorURL: "")
let weekdayNow14to16Tip11 = Tip(header: "", title: "2:55 p.m. is the most unproductive moment of the day. Stay alert by moving your body", body: "Researchers speculated that around 2:55 PM workers began to hit that after-lunch lull and became more focused on what they're doing after work — and less focused on their work. Walk to the water fountain, walk round the office, walk outside to get the blood flowing, get fresh air to provide a boost of energy, and interact with co-workers to recharge your mind when fatigue begins to set in.", sourceName: "Medical Daily", sourceURL: "https://www.medicaldaily.com/least-productive-time-day-officially-determined-be-255-pm-what-you-can-do-stay-awake-246495", sponsorLogo: "", sponsorURL: "")

// THU
let weekdayNow14to16Tip12 = Tip(header: "", title: "Reduce the afternoon slump by going for a walk. It'll help you generate new ideas.", body: "Brief walks, just a few minutes long, can help stimulate the brain. The effects will help you be more creative and better able to concentrate.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/best-time-day-work-according-to-science-2018-5", sponsorLogo: "", sponsorURL: "")


let weekdayNow14to16TipArray0 = [weekdayNow14to16Tip0, weekdayNow14to16Tip1, weekdayNow14to16Tip2, weekdayNow14to16Tip3]
let weekdayNow14to16Topic0 = Topic(title: weekdayNow14to16Title, icon: weekdayNow14to16Icon, tip: weekdayNow14to16TipArray0)

let weekdayNow14to16TipArray1 = [weekdayNow14to16Tip4, weekdayNow14to16Tip5, weekdayNow14to16Tip6, weekdayNow14to16Tip7]
let weekdayNow14to16Topic1 = Topic(title: weekdayNow14to16Title, icon: weekdayNow14to16Icon, tip: weekdayNow14to16TipArray1)

let weekdayNow14to16TipArray2 = [weekdayNow14to16Tip8, weekdayNow14to16Tip9, weekdayNow14to16Tip10, weekdayNow14to16Tip11]
let weekdayNow14to16Topic2 = Topic(title: weekdayNow14to16Title, icon: weekdayNow14to16Icon, tip: weekdayNow14to16TipArray2)

// MARK: - Now, Weekday, 17to20

let weekdayNow17to20Title = "Now, Weekday, 17to20"
let weekdayNow17to20Icon = "Now"

// WEEK 1
// MON
let weekdayNow17to20Tip0 = Tip(header: success, title: "Increase happiness by doing anything other than looking at a screen during your freetime", body: "People who spent more time seeing their friends in person, exercising, reading or even doing homework were happier. However, people who spent more time on the internet, social media, or watching TV were less happy." , sourceName: "Quartz", sourceURL: "https://qz.com/1190151/why-am-i-unhappy-a-new-study-explains-americas-unhappiness-epidemic/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow17to20Tip1 = Tip(header: success, title: "Nourish your romantic relationships—even when time is in short supply", body: "If you plan a dates, great. But if you're too busy this week, choose one night this week to carve out a mini-date at home." , sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/home/cleaning-organizing/successful-people-work/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow17to20Tip2 = Tip(header: success, title: "Increase wellbeing by saying: \"I am enough\"", body: "The repetition of this simple phrase over and over (both out loud and in your head) will eventually make it difficult for your mind to object to it. It will improve your confidence and outlook on life." , sourceName: "Marisa Peer, author of Ultimate Confidence", sourceURL: "https://www.marisapeer.com/i-am-enough-marisa/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow17to20Tip3 = Tip(header: success, title: "Focus on maintaining your relationships outside of social media", body: "Frequent Facebook users tend to have higher levels of credit-card debt and lower credit scores. If your friends are doing all these cool things, you might feel envious or pressured to participate in those things as well." , sourceName: "Reuters", sourceURL: "https://www.reuters.com/article/us-socialmedia-envy-consumers/how-to-avoid-the-high-price-of-social-media-envy-idUSKBN0KM1CU20150113", sponsorLogo: "TBD", sponsorURL: "www.test.com")

///////////// TUES
let weekdayNow17to20Tip4 = Tip(header: success, title: "Avoid screen-time tonight because it reduces creativity", body: "When your brain is fed a constant stream of stimulating entertainment on a 2-D screen with flat, unnatural light, your senses are saturated and creative drive is reduced." , sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/mental-wealth/201704/10-ways-protect-the-brain-daily-screen-time", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow17to20Tip5 = Tip(header: success, title: "Stay productive after work by not going home right away", body: "When you get home, it's easy to relax and watch TV. The key for you to make progress on your passion project is to stop by your local coffee shop before you go home. You'll be less distracted there." , sourceName: "LifeHacker", sourceURL: "https://lifehacker.com/5921271/how-to-stay-productive-after-work", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow17to20Tip6 = Tip(header: success, title: "Increase your influence at work by doing after-hours activities that help you \"be seen as a recognized expert\" within your industry", body: "Take steps to develop business-critical expertise and knowhow. Attend industry events, enroll in a class or specialized certification program, blog on LinkedIn, or take on a leadership role in a relevant professional organization." , sourceName: "Havard Business Review", sourceURL: "https://hbr.org/2018/02/how-to-increase-your-influence-at-work?utm_medium=email&utm_source=newsletter_daily&utm_campaign=mtod&referral=00203", sponsorLogo: "", sponsorURL: "")
let weekdayNow17to20Tip7 = Tip(header: success, title: "Exercise tonight. Research confirms people who are mistreated at work are at a higher risk of doing the same to loved ones at the end of the day", body: "Making time for exercise (and getting more sleep) can stop the downward spiral of stress and burnout. A study found participants who took 10,900 steps each day were less likely to be abusive toward family members when compared to participants who took 7,000 steps. They found burning an additional 587 calories could reduce the harmful effects of mistreatment. For the average American male, that means an hour of swimming or a brisk 90-minute walk." , sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/amymorin/2017/06/10/how-to-leave-stress-at-work-so-you-dont-take-out-your-frustration-on-your-family/#14ff2f584b48", sponsorLogo: "", sponsorURL: "")

////////// WED
let weekdayNow17to20Tip8 = Tip(header: success, title: "Exercise tonight. The risk of dying rose by 11% for each additional hour of TV a person sat and watched per day", body: "Sitting is a lethal activity. The men in a study who spent more than 6 hours per day of their leisure time sitting had an overall death rate that was about 20% higher than the men who sat for 3 hours or less. The death rate for women who sat for more than 6 hours a day was about 40% higher." , sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/2011/04/17/magazine/mag-17sitting-t.html", sponsorLogo: "", sponsorURL: "")
let weekdayNow17to20Tip9 = Tip(header: success, title: "Be social tonight. A 75-year-long study found that people who maintained close, intimate relations lived the happiest and healthiest lives", body: "People who are more isolated than they want to be from others find that they are less happy, their health declines earlier in midlife, their brain functioning declines sooner, and they live shorter lives than people who are not lonely. Casual relationships, like the ones forged on social media won’t do; neither will contentious ones like an abusive marriage or an unreliable friend. If you can't socialize tonight, call a friend." , sourceName: "The Washington Post", sourceURL: "https://www.washingtonpost.com/news/inspired-life/wp/2016/03/02/harvard-researchers-discovered-the-one-thing-everyone-needs-for-happier-healthier-lives/?utm_term=.b8ae9207a2c2", sponsorLogo: "", sponsorURL: "")
let weekdayNow17to20Tip10 = Tip(header: success, title: "Read a book. Many highly successful people read before bed", body: "Microsoft co-founder Bill Gates reads for an hour before bed. His reading topics range from healthcare to climate change to business and politics." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/why-executives-read-before-bed-2017-9", sponsorLogo: "", sponsorURL: "")
let weekdayNow17to20Tip11 = Tip(header: success, title: "Increase your influence at work by doing after-hours activities that help you \"be seen as a recognized expert\" within your industry", body: "Take steps to develop business-critical expertise and knowhow. Attend industry events, enroll in a class or specialized certification program, blog on LinkedIn, or take on a leadership role in a relevant professional organization." , sourceName: "Havard Business Review", sourceURL: "https://hbr.org/2018/02/how-to-increase-your-influence-at-work?utm_medium=email&utm_source=newsletter_daily&utm_campaign=mtod&referral=00203", sponsorLogo: "", sponsorURL: "")

//// THU


let weekdayNow17to20TipArray0 = [weekdayNow17to20Tip0, weekdayNow17to20Tip1, weekdayNow17to20Tip2, weekdayNow17to20Tip3]
let weekdayNow17to20Topic0 = Topic(title: weekdayNow17to20Title, icon: weekdayNow17to20Icon, tip: weekdayNow17to20TipArray0)

let weekdayNow17to20TipArray1 = [weekdayNow17to20Tip5, weekdayNow17to20Tip4, weekdayNow17to20Tip3, weekdayNow17to20Tip2]
let weekdayNow17to20Topic1 = Topic(title: weekdayNow17to20Title, icon: weekdayNow17to20Icon, tip: weekdayNow17to20TipArray1)

let weekdayNow17to20TipArray2 = [weekdayNow17to20Tip8, weekdayNow17to20Tip9, weekdayNow17to20Tip10, weekdayNow17to20Tip11]
let weekdayNow17to20Topic2 = Topic(title: weekdayNow17to20Title, icon: weekdayNow17to20Icon, tip: weekdayNow17to20TipArray2)

// MARK: - Now, Weekday, 21to24

let weekdayNow21to24Title = "Now, Weekday, 21to24"
let weekdayNow21to24Icon = "Now"

////// Mon
let weekdayNow21to24Tip0 = Tip(header: success, title: "Prepare for tomorrow with a pre-bedtime routine", body: "Plan your outfit, lay out gym clothes, prepare a lunch. Just a little prep work (say, 15 to 30 minutes) will help ease the morning rush." , sourceName: "mindbodygreen, a lifestyle media brand", sourceURL: "https://www.mindbodygreen.com/0-20168/a-nighttime-ritual-for-deep-restful-sleep.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekdayNow21to24Tip1 = Tip(header: sleepBetter, title: "Fall asleep faster by declaring the hour before bedtime a digital-free zone", body: "The bright blue glow of tech toys disrupt your body clock. Plus, that one last look at a social media app can easily turn into minutes of mindless web surfing that could be spent doing something more relaxing in the morning — like meditating." , sourceName: "mindbodygreen, a lifestyle media brand", sourceURL: "https://www.mindbodygreen.com/0-20168/a-nighttime-ritual-for-deep-restful-sleep.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekdayNow21to24Tip2 = Tip(header: sleepBetter, title: "Dim or turn off the lights one hour before bed", body: "Exposure to too much electrical light before bed can significantly lower levels of melatonin, the hormone that helps make us feel sleepy." , sourceName: "mindbodygreen, a lifestyle media brand", sourceURL: "https://www.mindbodygreen.com/0-20168/a-nighttime-ritual-for-deep-restful-sleep.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekdayNow21to24Tip3 = Tip(header: sleepBetter, title: "The optimal sleeping temperature is somewhere between 60 and 68 degrees Fahrenheit", body: "Temps in this range cause a drop in your core body temperature that initiates sleepiness. If it's too hot, you'll have more trouble sleeping." , sourceName: "mindbodygreen, a lifestyle media brand", sourceURL: "https://www.mindbodygreen.com/0-20168/a-nighttime-ritual-for-deep-restful-sleep.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

/////////// Tues
let weekdayNow21to24Tip4 = Tip(header: increaseConfidence, title: "Increase confidence tomorrow by sleeping on your back or stomach with your arms and legs outstretched", body: "When we sleep, we tend to lie on our side and wrap our arms around ourselves or lay in a fetal position. This, however, is a low power position and affects the way you think and feel tomorrow. \n\nThe ideal sleeping position is similar to a power pose in an 'X' or 'Y' position, but simply on your back or stomach instead.", sourceName: "Business Insider", sourceURL: "http://www.businessinsider.com/sleep-position-may-affect-success-2013-11", sponsorLogo: "sponsor", sponsorURL: "sponsorURL")
let weekdayNow21to24Tip5 = Tip(header: loseWeight, title: "Burn more fat by exercising before breakfast tomorrow", body: "Research suggests exercising in the a.m. — specifically, before breakfast — is most helpful for losing weight. The reason early morning workouts seem to accelerate weight loss and boost energy levels may be that they set up the body for an all-day fat burn.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/the-best-time-of-day-to-do-everything-2016-5#-1", sponsorLogo: "sponsor", sponsorURL: "sponsorURL")
let weekdayNow21to24Tip6 = Tip(header: health, title: "Even one night of sleep deprivation can cause Alzheimer's-related proteins to build up in the brain", body: "During the day, mental activity causes brain cells to release proteins, which are basically waste byproducts. Sleep cleanses the human brain of these toxins. \n\nA long period of bad sleep builds up these toxins, making it harder to sleep, creating a negative spiral towards Alzheimer's.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/alzheimers-protein-buildup-in-brain-after-bad-sleep-2018-4", sponsorLogo: "ABC", sponsorURL: "URL")
let weekdayNow21to24Tip7 = Tip(header: "", title: "Research: Using smartphones after 9 PM results in less sleep, a higher level of tiredness the next morning, and, as a result, lower productivity the next day", body: "Smartphones make it harder to both fall asleep and stay asleep. Smartphones expose us to light, including blue light. Blue light inhibits the sleep-promoting chemical melatonin, meaning that the displays of smartphones are capable of producing this effect.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2014/01/research-using-a-smartphone-after-9-pm-leaves-workers-disengaged", sponsorLogo: "", sponsorURL: "")


//////////// Wed
let weekdayNow21to24Tip8 = Tip(header: "Health", title: "Fall asleep faster by winding down your mind 30 minutes before bed", body: "Don't do anything too stimulating, like texting or watching an action packed TV show. Instead, do activities that relax you and bring closure to your evening, like journaling or setting out clothes for the next day.", sourceName: "Health", sourceURL: "https://www.health.com/mind-body/20-things-you-shouldn-t-do-before-bed#skip-your-wind-down-time", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip9 = Tip(header: "Health", title: "Don't check your work email before bed", body: "In one study, people who used their smartphones for work purposes after 9 p.m. reported being more tired and unfocused the next day.", sourceName: "Health", sourceURL: "https://www.health.com/mind-body/20-things-you-shouldn-t-do-before-bed#skip-your-wind-down-time", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip10 = Tip(header: "Sleep", title: "Jeff Bezos, the richest person in the world, prioritizes 8 hours of sleep each night", body: "Your work can suffer when you're tired. \"Eight hours of sleep makes a big difference for me, and I try hard to make that a priority. For me, that's the needed amount to feel energized and excited. If you shortchange your sleep, you might get a couple of extra 'productive' hours, but that productivity might be an illusion.\"", sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2017/04/21/why-jeff-bezos-makes-getting-8-hours-of-sleep-a-top-priority.html", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip11 = Tip(header: "Sleep", title: "Sleep better by creating a \"sleep sanctuary\" in your bedroom", body: "To visually send the brain the message that it’s time to sleep, the bedroom should be uncluttered, void of reminders of tasks to be done, and cozy-feeling. Keep ALL screens out of the bedroom, use blackout curtains, and keep the temperature of the room cool.", sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/mental-wealth/201704/10-ways-protect-the-brain-daily-screen-time", sponsorLogo: "", sponsorURL: "")

///////////// Thurs
let weekdayNow21to24Tip12 = Tip(header: "Sleep", title: "If you need to remember something, try reviewing those notes just before bedtime", body: "When you sleep, you brain puts all of your short term memory into the long term memory. That means that the information you read right before bed stick with you better in the long run compared to information learned earlier in the day.", sourceName: "Bustle", sourceURL: "https://www.bustle.com/p/9-reasons-why-you-should-read-before-bed-63326", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip13 = Tip(header: "Sleep", title: "Fall asleep faster: Reading for 6 minutes reduces stress by 68%", body: "Psychologists believe this is because the human mind has to concentrate on reading and the distraction of being taken into a literary world eases the tension in your body. And it works better and faster than other methods to calm frazzled nerves such as listening to music (61%), having a cup of coffee or tea (54%), or going for a walk (42%).", sourceName: "The Telegraph", sourceURL: "https://www.telegraph.co.uk/news/health/news/5070874/Reading-can-help-reduce-stress.html", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip14 = Tip(header: "Sleep", title: "Studies have shown that one of the biggest impediments to a good night's sleep is watching TV or looking at your computer before bed", body: "Electronic devices make it hard to fall asleep because the light emanating from the screen has the same effect as daylight. Instead, read an actual book because its a calms your body to transition into sleep mode.", sourceName: "National Sleep Foundation", sourceURL: "https://sleepfoundation.org/sleep-tools-tips/healthy-sleep-tips", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip15 = Tip(header: "Sleep", title: "Sleep deprivation—missing a few hours of sleep per night—is linked to taking in significantly more calories the next day", body: "One study: People who were sleep-deprived consumed, on average, about 385 calories extra per day. The extra calories were mostly in the form of increased fat. It's a vicious cycle because poor food choices during the day also may affect how well we sleep at night.", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/alicegwalton/2016/11/02/the-vicious-cycle-of-sleep-deprivation-and-overeating/", sponsorLogo: "", sponsorURL: "")

////// Fri

let weekdayNow21to24Tip16 = Tip(header: "Sleep", title: "Stretching before bed helps the mind and body relax, it will help you sleep better, too", body: "When you prepare your body for sleep through [gently] stretching, you’re helping your body recover and regenerate. Gently streching relaxes the muscles and, if done properly, has a calming effect.", sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/health/fitness/stretches-before-bed-proper/", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip17 = Tip(header: "Health", title: "Sleep better by not drinking alcohol before bed", body: "While alcohol makes it easier to fall asleepy, as your body begins to metabolize the alcohol, your REM sleep is reduced. Impaired REM sleep leads to waking up tired and unable to concentrate.", sourceName: "Health", sourceURL: "https://www.health.com/mind-body/20-things-you-shouldn-t-do-before-bed#skip-your-wind-down-time", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip18 = Tip(header: "Health", title: "Go to bed and wake up around the same time each night and morning because going to bed at different times is associated with poorer sleep quality and increased fatigue", body: "Our sleep is closely tied to our circadian rhythm. When we change our sleep and wake time, we alter our circadian cycle. We experience this when we stay up later on the weekends and sleep in later in the morning. Altered sleep schedules, as seen with shift workers, is also associated with a greater risk of accidents, lower immune system, [higher] risk for chronic disease, and a shorter life expectancy", sourceName: "", sourceURL: "", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip19 = Tip(header: "Health", title: "People who sleep less than 6 hours per night are more likely to develop prediabetes", body: "Many people with prediabetes go on to develop type 2 diabetes.", sourceName: "WebMD", sourceURL: "https://www.webmd.com/diabetes/news/20090312/sleep-deprivation-linked-to-prediabetes", sponsorLogo: "", sponsorURL: "")

////// WEEK 2
let weekdayNow21to24Tip20 = Tip(header: health, title: "If your alarm clock woke you up this morning, then you're probably sleep deprived", body: "If you were getting adequate sleep, your brain would awaken you before the alarm goes off. On average, we need 7.5 hours per night." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/sleep-disorders/features/diabetes-lack-of-sleep#2", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow21to24Tip21 = Tip(header: health, title: "Go to sleep at 10:30 p.m. so that you can sleep for 8 hours and wake up at 6:30 p.m.", body: "A survey of 300 high achievers found that the average wake-up time was 6:27 a.m. Most successful people carve out time in their morning, before work, to commit to things that make them feel relaxed, energized and motivated. That can mean working out, meditating, or spending time with your loved ones." , sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/2018/10/21/smarter-living/tips-better-morning-routine.html", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip22 = Tip(header: health, title: "Not getting 7-9 hours of sleep a night has been linked to diabetes and heart disease, and might even decrease the effectiveness of your immune system", body: "The quality of your sleep tonight directly impacts your ability to perform tomorrow. If you’re constantly trying to get by on less than 7 hours of sleep, it will catch up with you, likely sooner rather than later." , sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/2018/10/21/smarter-living/tips-better-morning-routine.html", sponsorLogo: "", sponsorURL: "")

// TODO: WIP Below
let weekdayNow21to24Tip23 = Tip(header: health, title: "Avoid eating food late at night because the body is more likely to store those calories as fat and gain weight rather than burn it as energy", body: "Studies suggest that eating out of our normal rhythm, like late at night, may prompt weight gain. People tend to choose more sweet and salty foods, which tend to be more caloric — when they’re tired and have restrained themselves all day." , sourceName: "The Washington Post", sourceURL: "https://www.washingtonpost.com/national/health-science/why-eating-late-at-night-may-be-particularly-bad-for-you-and-your-diet/2015/08/24/ad8b85ac-2583-11e5-b77f-eb13a215f593_story.html?utm_term=.085b3afcffae", sponsorLogo: "", sponsorURL: "")

// Monday
var weekdayNow21to24TipArray0 = [weekdayNow21to24Tip0, weekdayNow21to24Tip1, weekdayNow21to24Tip2, weekdayNow21to24Tip3]

let weekdayNow21to24Topic0 = Topic(title: weekdayNow21to24Title, icon: weekdayNow21to24Icon, tip: weekdayNow21to24TipArray0)

// Tuesday
var weekdayNow21to24TipArray1 = [weekdayNow21to24Tip4, weekdayNow21to24Tip5, weekdayNow21to24Tip6, weekdayNow21to24Tip7]

let weekdayNow21to24Topic1 = Topic(title: weekdayNow21to24Title, icon: weekdayNow21to24Icon, tip: weekdayNow21to24TipArray1)

// Wednesday
var weekdayNow21to24TipArray2 = [weekdayNow21to24Tip8, weekdayNow21to24Tip9, weekdayNow21to24Tip10, weekdayNow21to24Tip11]

let weekdayNow21to24Topic2 = Topic(title: weekdayNow21to24Title, icon: weekdayNow21to24Icon, tip: weekdayNow21to24TipArray2)

// Thursday
var weekdayNow21to24TipArray3 = [weekdayNow21to24Tip12, weekdayNow21to24Tip13, weekdayNow21to24Tip14, weekdayNow21to24Tip15]

let weekdayNow21to24Topic3 = Topic(title: weekdayNow21to24Title, icon: weekdayNow21to24Icon, tip: weekdayNow21to24TipArray3)

// Friday
var weekdayNow21to24TipArray4 = [weekdayNow21to24Tip16, weekdayNow21to24Tip17, weekdayNow21to24Tip18, weekdayNow21to24Tip19]

let weekdayNow21to24Topic4 = Topic(title: weekdayNow21to24Title, icon: weekdayNow21to24Icon, tip: weekdayNow21to24TipArray4)

// MARK: - HOLIDAYS
let newyearsTip1 = Tip(header: "", title: "New Year's resolutions are exactly the wrong way to change our behavior", body: "88% of all resolutions end in failure. Willpower, like a bicep, can only exert itself so long before it gives out; it's an extremely limited mental resource. Therefore, it makes no sense to try to quit smoking and lose weight at the same time. Instead, we should respect the weakness of self-control, and spread our resolutions out over the entire year.", sourceName: "The Wall Street Journal", sourceURL: "https://www.wsj.com/articles/SB10001424052748703478704574612052322122442", sponsorLogo: "", sponsorURL: "")



