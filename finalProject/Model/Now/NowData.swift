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

// MARK: - WEEKEND

// MARK: - Now, Weekend, 0to4

let weekendNow0to4Title = "Now, 0to4"
let weekendNow0to4Icon = "Now"

//WEEK 1
//SUN
let sundayNow0to4Tip0 = Tip(header: "🚘", title: "The most dangerous time to drive on Sunday is 1:00 a.m. to 4:00 a.m.", body: "An analysis of US car crash-related fatalities in 2016 found that early morning on Sunday had the most fatal car creashes for the day. Alcohol and speeding are key factors in the increased crash risk on Sunday." , sourceName: "Avvo", sourceURL: "https://www.avvo.com/fatal-car-accidents", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let sundayNow0to4Tip1 = Tip(header: "😳", title: "Can't fall sleep? You may have high blood pressure", body: "Lack of sleep hurts your body's ability to regulate stress hormones, leading to high blood pressure. High blood pressure, particularly during the night, is a major risk factor for heart disease." , sourceName: "Mayo Clinic", sourceURL: "https://www.mayoclinic.org/diseases-conditions/high-blood-pressure/expert-answers/sleep-deprivation/faq-20057959", sponsorLogo: "", sponsorURL: "")
let sundayNow0to4Tip2 = Tip(header: "😴", title: "Prevent weight gain by sleeping 7-8 hours per night", body: "Some studies show that people who get less sleep tend to be heavier than those who sleep well." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/sleep-disorders/features/diabetes-lack-of-sleep#2", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let sundayNow0to4Tip3 = Tip(header: "🏋️‍♂️", title: "Start your day by hitting the gym on an empty stomach in order to increase your energy level throughout the day", body: "An early-morning workout on an empty stomach helps speed weight loss and boost energy levels by priming the body for an all-day fat burn. \n\nExercising first thing in the morning may push the body to tap into its fat reserves for fuel instead of simply \"burning off\" the most recent snack or meal." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/morning-routine-according-to-science-2017-12#hit-the-track-3", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//SAT
let saturdayNow0to4Tip0 = Tip(header: "😴", title: "Don't stay up too late tonight. An out-of-sync biological clock could be linked to depression and mood swings", body: "People who have greater disruptions in their body clock are more likely to have major depression disorder or bipolar disorder in their lifetime than those with less disruption. These individuals were also more likely to have mood swings, higher levels of neuroticism and loneliness, and lower levels of happiness and satisfaction with their health.", sourceName: "Live Science", sourceURL: "https://www.livescience.com/62574-mood-disorders-circadian-rhythms.html", sponsorLogo: "", sponsorURL: "")
let saturdayNow0to4Tip1 = Tip(header: "🛌", title: "Go to bed now so you can 20 to 30 minutes of sunlight before noon to prevent weight gain", body: "Not getting 20 to 30 minutes of sunlight before noon could de-synchronize your internal body clock, which is known to alter metabolism and lead to weight gain. A study found people who had most of their daily exposure to sunlight in the morning had a 20% lower body mass index (BMI) than those who had most of their sunlight exposure in the afternoon." , sourceName: "Northwestern University", sourceURL: "https://news.northwestern.edu/stories/2014/04/morning-rays-keep-off-the-pounds", sponsorLogo: "", sponsorURL: "")
let saturdayNow0to4Tip2 = Tip(header: "💤", title: "Just one night of sleep loss negatively affects metabolism, leading to weight gain", body: "The study was the first to link how one night of sleep loss negatively affects metabolism, at the tissue level, and long-term sleep loss can lead to weight gain. \n\nEating healthier and exercising may be able to modulate the negative impact sleep loss has on a person’s metabolism." , sourceName: "Northwestern University", sourceURL: "", sponsorLogo: "", sponsorURL: "")
let saturdayNow0to4Tip3 = Tip(header: "😴", title: "Go to sleep now. A late bedtime increases your risk of depression", body: "A late bedtime and getting less than 6 hours of sleep was associated with increased prevalence of depressive symptoms. Avoid a late bedtime and get 6+ hours of sleep a night." , sourceName: "National Center for Biotechnology Information", sourceURL: "https://www.ncbi.nlm.nih.gov/pubmed/24162148", sponsorLogo: "", sponsorURL: "")

//WEEK 2
//SUN (WIP)
let sundayNow0to4Tip4 = Tip(header: "🛌", title: "Go to sleep. When we’re tired we eat more the next day which results in weight gain", body: "In a meta-analysis of 11 studies, researchers showed that people ate 385 extra calories following a night of sleep deprivation. That’s about the same amount as a serving of Häagen-Dazs peanut butter ice cream a day." , sourceName: "Vox", sourceURL: "https://www.vox.com/science-and-health/2019/3/26/18280663/night-eating-sleep-loss-weight-gain", sponsorLogo: "", sponsorURL: "")
let sundayNow0to4Tip5 = Tip(header: "🦉", title: "Night owls -- people who prefer to stay up late and sleep late -- have 10% higher risk of dying sooner than morning people", body: "Scientists also found that night owls are more likely to suffer from diabetes, psychological disorders and neurological disorders. \n\nKeep a regular bedtime. Get exposed to light early in the morning. Ask your boss if you can start later. Exercise and eat healthier." , sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2018/04/180412085736.htm", sponsorLogo: "", sponsorURL: "")
let sundayNow0to4Tip6 = Tip(header: "", title: "", body: "" , sourceName: "Science Daily", sourceURL: "", sponsorLogo: "", sponsorURL: "")

//SAT (WIP)
let saturdayNow0to4Tip4 = Tip(header: "🧠", title: "Go to sleep. Not getting enough sleep increase your risk of  Alzheimer's and all other diseases associated with dementia", body: "While the brain sleeps, it clears out harmful toxins, a process that may reduce the risk of Alzheimer's. This could explain why we don't think clearly after a sleepless night." , sourceName: "NPR", sourceURL: "https://www.npr.org/sections/health-shots/2013/10/18/236211811/brains-sweep-themselves-clean-of-toxins-during-sleep", sponsorLogo: "", sponsorURL: "")
let saturdayNow0to4Tip5 = Tip(header: "🦉", title: "Night owls are 2x as likely to develop a psychological illness and are 10% more likely to die than morning people", body: "Night owls need to realize that they have these potential health problems and therefore need to be more vigilant about maintaining a healthy lifestyle. Start small by getting exposed to light early in the morning and going to bed 30 minutes earlier." , sourceName: "Men's Health", sourceURL: "https://www.menshealth.com.sg/health/is-staying-up-late-bad-higher-risk-diabetes-death/", sponsorLogo: "", sponsorURL: "")

//WEEK 1
// SUN (WIP)
let sunday0to4Week1TipArray1 = [sundayNow0to4Tip0, sundayNow0to4Tip1, sundayNow0to4Tip2, sundayNow0to4Tip3]
let sunday0to4Week1Topic1 = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: sunday0to4Week1TipArray1)
// SAT
let saturdayNow0to4Week1TipArray1 = [saturdayNow0to4Tip0, saturdayNow0to4Tip1, saturdayNow0to4Tip2, saturdayNow0to4Tip3]
let saturday0to4Week1Topic1 = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: saturdayNow0to4Week1TipArray1)


//WEEK 2
// SUN (WIP)
let sunday0to4Week2TipArray2 = [sundayNow0to4Tip4, sundayNow0to4Tip5, sundayNow0to4Tip2, sundayNow0to4Tip3]
let sundayNow0to4Week2Topic2 = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: sunday0to4Week2TipArray2)
// SAT (WIP)
let saturday0to4Week2TipArray2 = [saturdayNow0to4Tip4, saturdayNow0to4Tip5, saturdayNow0to4Tip2, saturdayNow0to4Tip3]
let saturdayNow0to4Week2Topic2 = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: saturday0to4Week2TipArray2)




// MARK: - Now, Weekend, 5to8

let weekendNow5to8Title = "Now, 5to8"
let weekendNow5to8Icon = "Now"

// WEEK 1
// SUN
let weekendNow5to8Tip0 = Tip(header: "🌅", title: "The first 3 hours of your day is the best time to do your best work", body: "Your brain is most active and creative immediately following sleep. So, the first 3 hours of your day are your most precious for maximized focus and productivity." , sourceName: "Medium", sourceURL: "https://medium.com/@benjaminhardy/this-morning-routine-will-save-you-20-hours-per-week-409f8acbde1", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow5to8Tip1 = Tip(header: "🛏", title: "If you want to be successful in life, start by making your bed every day", body: "A retired four-star admiral and former Navy SEAL said, \"Start your day with a task completed. The simple act of making your bed can give the lift you need to start your day and provide you the satisfaction to end it right.\"" , sourceName: "YouTube", sourceURL: "https://www.youtube.com/watch?v=U6OoCaGsz94", sponsorLogo: "", sponsorURL: "www.test.com")
let weekendNow5to8Tip2 = Tip(header: "☀️", title: "Get 20 to 30 minutes of sunlight before noon to lower your body mass index (BMI) and prevent weight gain", body: "In one study, people who had most of their daily exposure to sunlight in the morning had 20% lower BMI than those who had most of their sunlight exposure in the afternoon." , sourceName: "Northwestern University", sourceURL: "https://news.northwestern.edu/stories/2014/04/morning-rays-keep-off-the-pounds", sponsorLogo: "", sponsorURL: "")
let weekendNow5to8Tip3 = Tip(header: "🚰", title: "Before you leave the house, apply moisturizer and drink a glass of water to keep your skin looking good", body: "Dehydration makes your skin look more dry and wrinkled, which can be improved with proper hydration. You can also help \"lock\" moisture into your skin by using moisturizer, which creates a physical barrier to keep moisture in." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/diet/features/6-reasons-to-drink-water#3", sponsorLogo: "", sponsorURL: "")

// SAT
let weekendNow5to8Tip4 = Tip(header: "🤓", title: "How you spend the first hour after waking up in the morning sets the standard for your productivity for the rest of the day", body: "Business leaders were asked what they do before breakfast. The top 3 responses were exercise, meditation, and reading." , sourceName: "WIRED", sourceURL: "https://www.wired.co.uk/article/what-is-productivity-be-more-productive-how-to-work", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow5to8Tip5 = Tip(header: "🏋️‍♀️", title: "An early-morning workout on an empty stomach helps speed weight loss and boost energy levels by priming the body for an all-day fat burn", body: "Exercising first thing in the morning may push the body to tap into its fat reserves for fuel instead of simply \"burning off\" the most recent snack or meal." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/diet/features/6-reasons-to-drink-water#3", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow5to8Tip6 = Tip(header: "🍽", title: "Eat breakfast. Breakfast skippers are more likely to be obese, have inadequate nutrition, or be diagnosed with diabetes. Breakfast eaters are less likely to have high cholesterol and blood pressure. ", body: "Watching the clock, and not just the calories, may play a more important role in weight control. Breakfast eaters tended to keep their weight down generally, compared with breakfast skippers.", sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/2017/08/21/well/eat/the-case-for-a-breakfast-feast.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow5to8Tip7 = Tip(header: "📵", title: "Don't check your phone first thing in the morning - it's likely to increase stress and leave you feeling overwhelmed", body: "Instead, you can strech, practice mindfulness and meditation, exercise outside, or do something you really care about, like working on a passion project you normally don't have time for.", sourceName: "Elite Daily", sourceURL: "https://www.elitedaily.com/p/is-it-bad-to-look-at-your-phone-right-when-you-wake-up-it-might-be-sabotaging-your-day-8437383", sponsorLogo: "TBD", sponsorURL: "www.test.com")

////////

// WEEK 2
//SUN
let weekendNow5to8Tip8 = Tip(header: "🌅", title: "If you wake up energized, you’re going to carry that energy through the rest of the day", body: "The morning is a critical time that can set the tone for the entire day. Start your morning with little \"wins\" to prime your brain to work toward more \"wins\" and successes throughout the day. \n\nEat breakfast, say one thing you're grateful for, get outside, exercise, or talk with your family or friends." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/pop-culture/9-things-do-morning-make-your-whole-day-more-productive-ncna772446", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow5to8Tip9 = Tip(header: "🏋️‍♂️", title: "For better sleep tonight, working out in the morning appears to be better than working out later in the day", body: "Moderate-to-vigorous exercise in the morning could significantly improve the quality and quantity of your sleep at night. \n\nExercise can increase the quality of sleep by decreasing levels of cortisol, the stress hormone, and increasing the production of serotonin in the brain." , sourceName: "HealthLine", sourceURL: "https://www.healthline.com/nutrition/ways-to-fall-asleep#section10", sponsorLogo: "", sponsorURL: "")
let weekendNow5to8Tip10 = Tip(header: "🚰", title: "Drink 1-2 glasses of water before breakfast to rehydrate your body and aid digestion and metabolism", body: "After being asleep all night, we wake up every day slightly dehydrated. Drinking a couple glasses of water allows the body to rehydrate for better digestion when you do eat. It also helps with moving the lower bowels for regularity in the mornings." , sourceName: "USA Today", sourceURL: "https://www.usatoday.com/story/news/nation-now/2017/03/14/why-you-should-drink-water-first-thing-every-day/99123938/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow5to8Tip11 = Tip(header: "", title: "Make your bed. Those who make their bed in the morning are up to 207% more likely to be millionaires, survey finds", body: "It puts your mind into a productive mindset. Those who do their chores and keep their living space tidier tend to make more money." , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2017/04/07/7-rich-habits-of-highly-successful-people.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//SAT
let weekendNow5to8Tip12 = Tip(header: "", title: "Reduce belly fat: Step outside for a jog or walk first thing in the morning", body: "Getting outside in the early morning sunlight could help to regulate your circadian rhythm, which affects how well you: \n• Burn fat \n• Eat \n• Sleep" , sourceName: "Eat This, Not That!", sourceURL: "Studies have shown that people who are up-and-at-’em first thing have a lower BMI compared to those who take their sunshine later in the day. \n\n", sponsorLogo: "", sponsorURL: "")
let weekendNow5to8Tip13 = Tip(header: "🍳", title: "Consuming 30 grams of protein within 30 minutes of waking up helps with weight loss", body: "According to New York Times best-selling author, Tim Ferriss. \"If you nail breakfast, even if you don’t change any of your other behaviors, that is often enough to lose 10-20 pounds per month of fat… Fat loss is 99% diet.\" \n\nTim Ferriss recommends: \n• Eggs \n• Lentils \n• Black beans \n• Dark green vegetables", sourceName: "Healthline", sourceURL: "https://www.healthline.com/health-news/how-30-grams-of-protein-at-breakfast-can-help-you-lose-weight", sponsorLogo: "", sponsorURL: "")
let weekendNow5to8Tip14 = Tip(header: "", title: "Improve your mood: Drink 2 cups (16-ounces) of water before your morning coffee or tea", body: "Most of us are are dehydrated when we get out of bed and coffee or tea can dehydrate you further. Being dehydrated makes you feel sluggish, which is not how anyone should start their day." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/weight-loss-lifestyle/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow5to8Tip15 = Tip(header: "🍳", title: "Front-load your calories early in the day to jump-start your metabolism and prevent obesity, starting with a healthy breakfast and tapering off to a smaller lunch and light dinner", body: "Researchers also found that those who ate their largest meal early in the day were more likely to have less body fat than those who ate a large lunch or dinner." , sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/2017/08/21/well/eat/the-case-for-a-breakfast-feast.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//WEEK 3
//SUN
let weekendNow5to8Tip16 = Tip(header: "", title: "Study: People who exercised before noon lost more weight, on average, than those who completed the same workouts after 3 p.m.", body: "While both groups lost weight after the 10 month study: \n• The early-exercise group tended to be slightly more active throughout the day, taking more steps in total than those who worked out later. \n• They also ate a bit less, although the difference amounted to barely 100 calories per day on average." , sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/2019/07/31/well/move/morning-exercise-may-offer-the-most-weight-loss-benefits.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")


//SAT







// WEEK 1
//SUN
let weekendNow5to8TipArray0 = [weekendNow5to8Tip0, weekendNow5to8Tip1, weekendNow5to8Tip2, weekendNow5to8Tip3]
let weekendNow5to8Topic0 = Topic(title: weekendNow5to8Title, icon: weekendNow5to8Icon, tip: weekendNow5to8TipArray0)//SUN
//SAT
var weekendNow5to8TipArray1 = [weekendNow5to8Tip4, weekendNow5to8Tip5, weekendNow5to8Tip6, weekendNow5to8Tip7]
let weekendNow5to8Topic1 = Topic(title: weekendNow5to8Title, icon: weekendNow5to8Icon, tip: weekendNow5to8TipArray1)//SAT

// WEEK 2
//SUN
let weekendNow5to8TipArray2 = [weekendNow5to8Tip8, weekendNow5to8Tip9, weekendNow5to8Tip10, weekendNow5to8Tip11]
let weekendNow5to8Topic2 = Topic(title: weekendNow5to8Title, icon: weekendNow5to8Icon, tip: weekendNow5to8TipArray2)//SUN
//SAT
var weekendNow5to8TipArray3 = [weekendNow5to8Tip12, weekendNow5to8Tip13, weekendNow5to8Tip14, weekendNow5to8Tip5]
let weekendNow5to8Topic3 = Topic(title: weekendNow5to8Title, icon: weekendNow5to8Icon, tip: weekendNow5to8TipArray3)//SAT


// MARK: - Now, Weekend, 9to11

let weekendNow9to11Title = "Now, Weekday, 9to11"
let weekendNow9to11Icon = "Now"

//WEEK 1
// SUN
let weekendNow9to11Tip0 = Tip(header: "☀️", title: "Before you go outside, wear sunscreen (SPF 15 or higher), sunglasses, and a hat to reduce your risk of skin cancer", body: "Skin cancer is the most common cancer in the United States. Your nose, eyelids, and lips are one of the most common sites for skin cancer." , sourceName: "Men's Health", sourceURL: "https://www.menshealth.com/health/a19525153/applying-sunscreen-wrong-on-face/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow9to11Tip1 = Tip(header: "🚰", title: "Drink water. Drinking water throughout the day could lower your risk of a heart attack", body: "Study: People who drank 5+ glasses of water a day were 41% less likely to die from a heart attack during the study period than those who drank less than 2 glasses." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/entry/5-benefits-of-being-outdoors_us_5938266ce4b014ae8c69dce0", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow9to11Tip2 = Tip(header: "🤔", title: "Relax on Saturday and reflect on Sunday", body: "CEO of Twitter and Square, Jack Dorsey, works 16-hour days during the week but says, \"Saturday I take off. I hike. And then Sunday is reflections, feedback, strategy and getting ready for the rest of the week.\"" , sourceName: "LifeHack.org", sourceURL: "https://www.lifehack.org/articles/productivity/12-weekend-habits-highly-successful-people.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let sunday9to11Tip3 = Tip(header: "", title: "Live longer: Schedule an hour a week to attend a spirital or community service. It leds to other healthy habits", body: "People who attend spirital services are more active, less likley to smoke, do drugs, or drink and drive. Also, they may have have higher self-esteem and self-worth, which in turn can actually improve health. \n\nIf you don't subscribe to any specific denomination, or if you haven't found a positive religious experience, you may want to explore a belief that is not based on strict dogma.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")

//Tip(header: success, title: "Our brains are the sharpest during the first 2-4 hours after we wake up", body: "Use these less distractive hours to work on a creative project, exercise, meditate, or spend time with the people you love." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/successful-people-who-wake-up-really-early-2016-9", sponsorLogo: "TBD", sponsorURL: "www.test.com")


// SAT
let weekendNow9to11Tip4 = Tip(header: "🧠", title: "Your mind performs at its peak during the first 2-4 hours after you wake up", body: "Successful people take advantage of that time to do things for themselves. \n\n• Exercise \n• Meditate \n• Go for a nice walk", sourceName: "MoneyVersed", sourceURL: "https://moneyversed.com/weekend-habits-successful-people/", sponsorLogo: "logo", sponsorURL: "logoURL")
let weekendNow9to11Tip5 = Tip(header: "🏞", title: "Being in nature increases feelings of happiness and healthiness", body: "Being in nature may provide people with resilience to meet the challenges of everyday life, while also facilitating exercise, social contact and a sense of purpose. It also reduces blood pressure and contributes to longer lifespans amongst senior citizens." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/entry/5-benefits-of-being-outdoors_us_5938266ce4b014ae8c69dce0", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow9to11Tip6 = Tip(header: "🙏", title: "Best way to reduce stress is to attend church or religious services, survey finds", body: "Most effective ways to reduce stress:\n•  Church or religious services (77%)\n•  Pray (73%)\n•  Play sports (73%)\n•  Massage or spa (71%)\n•  Meditage or yoga (70%)\n•  See mental health professional (68%)\n•  Exercise or walk (62%)\n\nLess effective ways to reduce stress:\n•  Watch TV or movie (33%)\n•  Surf the Internet (29%)", sourceName: "American Psychological Association", sourceURL: "https://www.apa.org/news/press/releases/stress/2013/snapshot.aspx", sponsorLogo: "", sponsorURL: "")
let weekendNow9to11Tip7 = Tip(header: "💪", title: "Sitting 8+ hours a day with no physical activity leads to the same risk of dying posed by obesity and smoking", body: "Too much sitting increases your risk of death from cardiovascular disease and cancer. Take a break from sitting every 30 minutes. \n\nStudy: Getting 60-75 minutes of moderately intense physical activity a day reduced the negative effects of too much sitting." , sourceName: "Mayo Clinic", sourceURL: "https://www.mayoclinic.org/healthy-lifestyle/adult-health/expert-answers/sitting/faq-20058005", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//WEEK 2
//SUN
let sundayNow9to11Tip1 = Tip(header: "", title: "Live longer: Attending a spiritual service at least once a month reduces your risk of death by 33%", body: "Study: People who attend a spirital service have a forced schedule of: \n• Self-reflection \n• Decompression \n• Stress-relieving meditation \n\nIf you don't subscribe to any specific denomination, or if you haven't found a positive spirital experience, you may want to explore a belief that is not based on strict dogma.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")
let sundayNow9to11Tip2 = Tip(header: "☀️", title: "Get sun exposure within 2 hours of waking up", body: "Morning sun exposure helps your circadian clock to reset itself for a new day and will help you fall asleep tonight." , sourceName: "SUCESS Magazine", sourceURL: "https://www.success.com/the-new-secrets-of-perfect-sleep/", sponsorLogo: "", sponsorURL: "")
let sundayNow9to11Tip3 = Tip(header: "🚰", title: "Drink water. Drinking 8 glasses of water per day can aid in weight loss for the average person - drink more if you’re overweight or your working out a lot", body: "Study: 43% of adults drink less than 4 cups of water a day. Replacing caloric and sugary beverages such as soda, fruit juice, and sweetened iced teas with water can also help boost weight loss." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/drink-water-lose-weight/", sponsorLogo: "", sponsorURL: "")
let sundayNow9to11Tip4 = Tip(header: "", title: "Live longer: Walk more. It's the one activity that all successful people who live to 100 did - and do - almost daily", body: "It's easier on the joints than running, and if you're walking briskly, may have the same cardiovascular benefits as running. \n\nAfter a hard day, a walk can relieve stress; after a meal; it can aid digestion.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")


//SAT
let saturdayNow9to11Tip1 = Tip(header: "🌲", title: "Increase Happiness: Get some fresh air in nature", body: "Research: As air pollution goes up, happiness goes down. And the effect holds even if you're near a busy road. \n\nThe link between mood and air quality was so strong that the researchers recommended clean air as an anti-depressant." , sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/health/wellness/how-to-be-happy/", sponsorLogo: "", sponsorURL: "")
let saturdayNow9to11Tip2 = Tip(header: "🤳", title: "Study: Excessive use of social media, in particular the posting of images and selfies, is associated with a subsequent increase in narcissism by 25%. ", body: "Narcissism is a personality characteristic that can involve grandiose exhibitionism, beliefs relating to entitlement, and exploiting others. \n\nThe study also found that those who primarily used social media for verbal postings, such as Twitter, did not show these effects." , sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2018/11/181109112655.htm", sponsorLogo: "", sponsorURL: "")
let saturdayNow9to11Tip3 = Tip(header: "🚰", title: "Drinking 8 glasses of water per day can aid in weight loss for the average person - drink more if you’re overweight or your working out a lot", body: "Study: 43% of adults drink less than 4 cups of water a day. Replacing caloric and sugary beverages such as soda, fruit juice, and sweetened iced teas with water can also help boost weight loss." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/drink-water-lose-weight/", sponsorLogo: "", sponsorURL: "")
let saturdayNow9to11Tip4 = Tip(header: "", title: "Live longer: Do physical activities that you enjoy", body: "Forget the gym if you don't like it - you're not likely to go there if it's a chore. Don't force yourself to do things you dislike. \n\nRather than exercising for the sake of exercising, make your lifestyle active. Ride a bicycle instead of driving. Walk to the store.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "", sponsorLogo: "", sponsorURL: "")

//WEEK 3
//SUN
let sundayNow9to11Tip5 = Tip(header: "", title: "Reduce belly fat: Arrive on time to your next event", body: "If you’re always running behind schedule, that means you’re constantly feeling stressed. Feeling stressed slows your metabolism, which slows your ability to burn fat. \n\nStart getting ready to leave 10 to 15 minutes earlier than you think you need to.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")
let sundayNow9to11Tip6 = Tip(header: "", title: "Interview of 20+ billionaires: They take \"me time\" to relax or think", body: "• Taking a walk \n• Spending time on their own outdoors \n• Meditating", sourceName: "Market Watch", sourceURL: "https://www.marketwatch.com/story/4-habits-that-self-made-billionaires-practice-nearly-every-day-2019-07-11", sponsorLogo: "", sponsorURL: "")
let sundayNow9to11Tip7 = Tip(header: "", title: "Study: Spending time in forests and areas with tree shade is better for your mental health than spending time in open grassy areas", body: "Exposure to 30% or more tree shade, compared with 0%-9% tree shade, was associated with 31% decrease experiencing mental distress. Meanwhile, exposure to 30% or more grass was associated with 71% higher odds of mental distress. \n\nResearchers suggest that without the shade of trees: \n• Sidewalk temperatures are hotter \n• Sidewalks can seem noisier \n• Walkers themselves are exposed to more air pollution. \n\nStudies also show that people are happier in green spaces that contain more stimuli — because trees are more complex than grass, it’s likely that we enjoy being around them more.", sourceName: "Journal of the American Medical Association", sourceURL: "https://jamanetwork.com/journals/jamanetworkopen/fullarticle/2739050", sponsorLogo: "", sponsorURL: "")
//let sundayNow9to11Tip8

//SAT
let saturdayNow9to11Tip5 = Tip(header: "", title: "Go to a farmers market to get the best produce. Most produce loses 30% of nutrients 3 days after harvest", body: "Studies show that vegetables can lose 15% to 55% of vitamin C, for instance, within a week. Some spinach can lose 90% within the first 24 hours after harvest. \n\nFarmers markets help keep money in the local economy and in the hands of the people who produced the food rather than those who market, label and distribute it.", sourceName: "Chicago Tribune", sourceURL: "https://www.chicagotribune.com/dining/ct-xpm-2013-07-10-chi-most-produce-loses-30-percent-of-nutrients-three-days-after-harvest-20130710-story.html", sponsorLogo: "", sponsorURL: "")
let bzWeekend1 = Tip(header: "☝️", title: "Don't multi-task on the weekend", body: "It may be tempting to maximize your weekend productivity but successful people know that this just reduces efficiency and effectiveness. Instead, be present for each single activity." , sourceName: "Life Hack", sourceURL: "https://www.lifehack.org/articles/productivity/12-weekend-habits-highly-successful-people.html", sponsorLogo: "", sponsorURL: "")
//

//WEEK 4

//SUN
let bzTip29 = Tip(header: "", title: "Live longer: People who attended spiritual services frequently were 20% less likely to die at any age, study finds", body: "People who attended spiritual services have lower rates of cardiovascular disease, depression, stress, and suicide, and their immune systems seem to work better. \n\nIf you don't subscribe to any specific denomination, or if you haven't found a positive religious experience, you may want to explore a belief that is not based on strict dogma.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")

let bzTip30 = Tip(header: "", title: "Live longer: Schedule an hour a week to attend a spirital or community service", body: "Studies show that people who get involved with the service (singing songs, participating in prayers, volunteering) might enhance their well-being and live longer. Belonging to a community also increases your social network. \n\nIf you don't subscribe to any specific denomination, or if you haven't found a positive religious experience, you may want to explore a belief that is not based on strict dogma.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")

let sundayWIPTip1 = Tip(header: "🙏", title: "Regular meditation or other spiritual or religious practice may protect against major depression by thickening the brain cortex and counteracting the cortical thinning that would normally occur with major depression", body: "Research: Brain MRIs showed thicker cortices in subjects who placed a high importance on religion or spirituality than those who did not. The relatively thicker cortex was found in precisely the same regions of the brain that had otherwise shown thinning in people at high risk for depression." , sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2014/01/140116084846.htm", sponsorLogo: "", sponsorURL: "")

//SAT

//WEEK 1
//SUN
let weekendNow9to10TipArray0 = [weekendNow9to11Tip0, weekendNow9to11Tip1, weekendNow9to11Tip2, sunday9to11Tip3]
let sunday9to10Topic1 = Topic(title: weekendNow9to11Title, icon: weekendNow9to11Icon, tip: weekendNow9to10TipArray0)
//SAT
let weekendNow9to10TipArray1 = [weekendNow9to11Tip4, weekendNow9to11Tip5, weekendNow9to11Tip6, weekendNow9to11Tip7]
let saturday9to10Topic1 = Topic(title: weekendNow9to11Title, icon: weekendNow9to11Icon, tip: weekendNow9to10TipArray1)

//WEEK 2
//SUN
let weekendNow9to10TipArray3 = [sundayNow9to11Tip1, sundayNow9to11Tip2, sundayNow9to11Tip3, sundayNow9to11Tip4]
let sunday9to10Topic2 = Topic(title: weekendNow9to11Title, icon: weekendNow9to11Icon, tip: weekendNow9to10TipArray3)

//SAT
//WIP (1)
let weekendNow9to10TipArray2 = [weekendNow9to11Tip4, saturdayNow9to11Tip1, saturdayNow9to11Tip2, saturdayNow9to11Tip3]
let saturday9to10Topic2 = Topic(title: weekendNow9to11Title, icon: weekendNow9to11Icon, tip: weekendNow9to10TipArray2)


// MARK: - Now, Weekend, 11to14

let weekendNow11to14Title = "Now, Weekday, 11to14"
let weekendNow11to14Icon = "Now"

//WEEK 1
//SUN
let weekendNow11to14Tip0 = Tip(header: "☀️", title: "Prevent wrinkles and premature aging by wearing sunscreen everyday", body: "Research: people who used sunscreen daily were less likely to have wrinkles, sagging skin, and dark spots after 4.5 years than people who did not regularly use sunscreen." , sourceName: "The Skin Cancer Foundation", sourceURL: "https://www.skincancer.org/prevention/sun-protection/sunscreen/aging", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow11to14Tip1 = Tip(header: "👫", title: "Disconnect from technology on the weekend and reconnect with yourself and people", body: "Take a ‘tech Sabbath.’ If we look back in history, \"a day of rest\" is an ancient tradition represented across cultures that is used for reflection and connection. Even a walk without the phone can feel liberating." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/every-week-i-unplug-from-technology-for-24-hours-and-im-convinced-it-makes-me-better-at-my-job-2016-9", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow11to14Tip2 = Tip(header: "☀️", title: "Lower your risk of skin cancer: Reduce sun exposure between 10 a.m. and 4 p.m.", body: "Having 5+ sunburns during your lifetime doubles your risk of melanoma, the deadliest form of skin cancer. If you have to be outside during this time: \n\n• Work in the shade \n\n• Apply (and reapply) sunscreen \n\n• Wear a wide-brimmed hat that protects your face and neck", sourceName: "Raleigh Medical Group", sourceURL: "https://www.raleighmedicalgroup.com/blog/entryid/185/skin-cancer-prevention", sponsorLogo: "", sponsorURL: "")
let weekendNow11to14Tip3 = Tip(header: "🌲", title: "Spending time in nature is good for your mind, body and spirit", body: "Being active outdoors reduces anxiety, depression, and stress, keeps your joints loose, and reduces your chances of getting a virus; since you're not breathing in the same recycled air as everyone else is when you stay indoors." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/pop-culture/how-nature-can-solve-life-s-most-challenging-problems-ncna749361", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//SAT
let weekendNow11to14Tip4 = Tip(header: "🌲", title: "Exercising in nature for as little as 5 minutes improves self-esteem and mood", body: "The average American spends 90% of their life indoors. Sunlight elevates people's mood and exercise helps to relax and cheer people up." , sourceName: "Harvard Health Publishing", sourceURL: "https://www.health.harvard.edu/newsletter_article/a-prescription-for-better-health-go-alfresco", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow11to14Tip5 = Tip(header: "☀️", title: "Reduce sun exposure between 10 a.m. and 4 p.m. Skin cancer is the most common form of cancer in the US.", body: "Limiting exposure to the sun is the first line of defense against skin cancer. If you have to be outside during this time: \n\n• Work in the shade \n\n• Apply (and reapply) sunscreen n\n• Wear a wide-brimmed hat that protects your face and neck", sourceName: "Raleigh Medical Group", sourceURL: "https://www.raleighmedicalgroup.com/blog/entryid/185/skin-cancer-prevention", sponsorLogo: "", sponsorURL: "")
let weekendNow11to14Tip6 = Tip(header: "🍕", title: "Reduce your chances of weight gain by having 1 cheat meal this weekend", body: "People who stuck with a strict diet during the week, then overindulged on the weekends gained an average of 0.17 pounds per week (9 pounds a year). 1 weekly cheat meal reduces cravings and boosts metabolism." , sourceName: "Men's Journal", sourceURL: "https://www.mensjournal.com/health-fitness/best-way-work-cheat-meals/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow11to14Tip7 = Tip(header: "🏞", title: "Spending time in nature helps reduce stress levels", body: "Our brains become easily fatigued. When we slow down, stop the busywork, and take in beautiful natural surroundings, not only do we feel restored, but our mental performance improves too." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/entry/5-benefits-of-being-outdoors_us_5938266ce4b014ae8c69dce0", sponsorLogo: "", sponsorURL: "")

// WEEK 2
//SUN
let weekendNow11to14Tip8 = Tip(header: "🤔", title: "Spend time in nature today. It helps you to \"think big\"", body: "Venture capitalist Peter Thiel said he thinks best \"somewhere beautiful in nature.\" \n\nJohn Elkann, chairman of Fiat Chrysler, likes to think in nature. \"On one side, it really grounds you to see how incredibly extraordinary nature is. On the other, it really stimulates you to think big, to dream, and be ambitious.\"" , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/mark-zuckerberg-bill-gates-best-place-to-think-2018-11#venture-capitalist-peter-thiel-said-he-thinks-best-somewhere-beautiful-in-nature-5", sponsorLogo: "", sponsorURL: "")
let weekendNow11to14Tip9 = Tip(header: "🌲", title: "Taking walks in nature lowers anxiety and depression while boosting mood and well-being", body: "Exposure to more sunlight can boost Vitamin D levels that are known to increase mood, and even the sounds of nature trigger a relaxation response in the brain. \n\nExposure to nature lowers stress, including its physiological correlates the “stress hormone” cortisol, heart rate, and blood pressure." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2017/06/why-you-should-tell-your-team-to-take-a-break-and-go-outside", sponsorLogo: "", sponsorURL: "")
let weekendNow11to14Tip10 = Tip(header: "💸", title: "Lower depression by donating 10% of your income", body: "Researchers have found lower depression rates among Americans who donate more than 10% of their incomes (41% say they rarely or never experience depression versus 32% for everyone else.)", sourceName: "The New Republic", sourceURL: "https://newrepublic.com/article/119477/science-generosity-why-giving-makes-you-happy", sponsorLogo: "", sponsorURL: "")
let weekendNow11to14Tip11 = Tip(header: "🍽", title: "Reduce your risk of weight gain by consuming the majority of your daily calories before 3pm", body: "Researchers tracked the timing of meals, and found that those who ate their most major meal later in the day (after 3pm) lost less weight than those who ate most of their calories before 3pm." , sourceName: "Vox", sourceURL: "https://www.vox.com/2016/2/17/11034546/eating-late-night-bad-diet", sponsorLogo: "", sponsorURL: "")

// SAT
let weekendNow11to14Tip12 = Tip(header: "🌲", title: "Reduce stress by taking a walk through nature", body: "Study: Strolling through forest environments: \n• lowers stress hormones \n• slows your your heart rate \n• reduces blood pressure \n• increases feelings of well-being", sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/health/wellness/how-to-be-happy/", sponsorLogo: "", sponsorURL: "")
let weekendNow11to14Tip13 = Tip(header: "🍽", title: "Reduce weight gain by eating your meals earlier throughout the day", body: "Researchers looked at whether people expend more energy processing a meal earlier or later in the day and found that, independent of physical activity, the body uses less energy to digest food later in the day. \n\nThat means when we eat late at night, we may convert more calories to fat, instead of burning them off." , sourceName: "Vox", sourceURL: "https://www.vox.com/science-and-health/2019/3/26/18280663/night-eating-sleep-loss-weight-gain", sponsorLogo: "", sponsorURL: "")
let weekendNow11to14Tip14 = Tip(header: "😴", title: "Avoid afternoon naps if you have trouble sleeping at night", body: "Power naps may help you get through the day, but if you find that you can't fall asleep at bedtime, eliminating even short catnaps may help." , sourceName: "National Sleep Foundation", sourceURL: "https://www.sleepfoundation.org/articles/healthy-sleep-tips", sponsorLogo: "", sponsorURL: "")
let weekendNow11to14Tip15 = Tip(header: "👫", title: "Key to living a long, happy, and healthy life is to maintain good relationships with your family, friends, and community", body: "On the contrary, people who keep to themselves and experience loneliness are less happy, their health declines earlier in midlife, and they live shorter lives than people who are not lonely. \n\nToday, try: \n• Replacing screen time with people time; \n• Livening up a stale relationship by doing something new together, such as long walks or date nights; and \n• Reaching out to that family member who you haven't spoken to in years.", sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2017/10/31/this-harvard-study-reveals-how-you-can-be-happier-and-more-successful.html", sponsorLogo: "", sponsorURL: "")

//WEEK 3
//SUN
let weekendNow11to14Tip16 = Tip(header: "", title: "Burn calories: Go for a short hike", body: "Take in the sights and sounds of nature all while burning off calories. Just 15 minutes into your hike, you’ll have burned off 100 calories—and most trips last far longer than that.", sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/easy-ways-to-burn-calories/", sponsorLogo: "", sponsorURL: "")
let weekendNow11to14Tip17 = Tip(header: "🏃‍♂️", title: "Moderate to vigorous exercise and time outdoors correlates to better academic performance", body: "A study found that moderate to vigorous activity—especially in boys—directly correlated to better reading fluency, reading comprehension and arithmetic skills. Children who had more sedentary lives had poorer skills in both reading and math." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/entry/5-benefits-of-being-outdoors_us_5938266ce4b014ae8c69dce0", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow11to14Tip18 = Tip(header: "", title: "Live longer: Plant a garden", body: "Working in a garden requires frequent, low-intensity, full-range-of-motion-activity. Gardening can relieve stress. And you emerge from the season with fresh vegetables.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")
let weekendNow11to14Tip19 = Tip(header: "🏋️‍♂️", title: "Exercise at lunchtime to improve your mood this afternoon", body: "A 30-minute workout in the gym or power walk outside will help to boost levels of feel-good endorphins, which will help to make you feel upbeat, positive and less tired." , sourceName: "Weight Loss Resources", sourceURL: "https://www.weightlossresources.co.uk/diet/healthy_eating/beat-afternoon-energy-slump.htm", sponsorLogo: "", sponsorURL: "")

//SAT
let weekendNow11to14Tip20  =  Tip(header: "🙅‍♀️", title: "Don't do too many chores on the weekend", body: "Chores expand to fill the available space. If you do them on weekdays, you’ll spend less time doing chores simply because you have less time." , sourceName: "Fast Company", sourceURL: "https://www.fastcompany.com/3015285/6-surprising-tips-to-cut-household-chores-in-half", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow11to14Tip21 = Tip(header: "🚰", title: "Drink water. Drinking 8 glasses of water per day can aid in weight loss for the average person - drink more if you’re overweight or your working out a lot", body: "Study: 43% of adults drink less than 4 cups of water a day. Replacing caloric and sugary beverages such as soda, fruit juice, and sweetened iced teas with water can also help boost weight loss." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/drink-water-lose-weight/", sponsorLogo: "", sponsorURL: "")

let weekendNow11to14Tip22 = Tip(header: "", title: "Live longer: Increase your social connections (family, friends, rommantic partner, club membership, and volunteering)", body: "Across 148 studies, individuals with adequate social relationships have a 50% greater likelihood of survival compared to those with poor or insufficient social relationships. The magnitude of this effect is comparable with quitting smoking and it exceeds many well-known risk factors for mortality such as obesity and physical inactivity.", sourceName: "PLOS Medicine", sourceURL: "https://journals.plos.org/plosmedicine/article?id=10.1371/journal.pmed.1000316#pmed-1000316-g006", sponsorLogo: "", sponsorURL: "")
let weekendNow11to14Tip23 = Tip(header: "", title: "Live longer: Enroll in a yoga class", body: "Yoga, when done properly, will help increase balance. It also strengthens all muscle groups, increases flexibility, is good for your joints, and can lessen lower back pain. It may also provide the same kind of social support and spiritual centering that religions do. \n\nBe sure to practice it at least twice weekly.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")

//WEEK 4
//SUN



//SAT



//WEEK 1
//SUN
let weekendNow11to14TipArray0 = [weekendNow11to14Tip0, weekendNow11to14Tip1, weekendNow11to14Tip2, weekendNow11to14Tip3]
let saturdayNow11to14Topic1 = Topic(title: weekendNow11to14Title, icon: weekendNow11to14Icon, tip: weekendNow11to14TipArray0)
//SAT
let weekendNow11to14TipArray1 = [weekendNow11to14Tip4, weekendNow11to14Tip5, weekendNow11to14Tip6, weekendNow11to14Tip7]
let sundayNow11to14Topic1 = Topic(title: weekendNow11to14Title, icon: weekendNow11to14Icon, tip: weekendNow11to14TipArray1)

//WEEK 2
//SUN
let weekendNow11to14TipArray2 = [weekendNow11to14Tip8, weekendNow11to14Tip9, weekendNow11to14Tip10, weekendNow11to14Tip11]
let saturdayNow11to14Topic2 = Topic(title: weekendNow11to14Title, icon: weekendNow11to14Icon, tip: weekendNow11to14TipArray2)
//SAT
let weekendNow11to14TipArray3 = [weekendNow11to14Tip12, weekendNow11to14Tip13, weekendNow11to14Tip14, weekendNow11to14Tip15]
let sundayNow11to14Topic2 = Topic(title: weekendNow11to14Title, icon: weekendNow11to14Icon, tip: weekendNow11to14TipArray3)

// MARK: - Now, Weekend, 14to16

let weekendNow14to16Title = "Now, Weekday, 14to16"
let weekendNow14to16Icon = "Now"

//1
let weekendNow14to16Tip0 = Tip(header: "👫", title: "Research: being social improves your mental and emotional health", body: "An active social life reduces your risk of dementia and memory loss as we age." , sourceName: "The New York Times", sourceURL: "https://well.blogs.nytimes.com/2008/06/04/socializing-appears-to-delay-memory-problems/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow14to16Tip1 = Tip(header: "🏞", title: "Walking for 90 minutes in nature, as opposed to walking in a high-traffic urban setting, showed decreased activity in a region of the brain associated with depression", body: "Just as urbanization and disconnection from nature have grown dramatically, so have mental disorders such as depression. In fact, city dwellers have a 20% higher risk of anxiety disorders and a 40% higher risk of mood disorders as compared to people in rural areas." , sourceName: "Stanford University", sourceURL: "https://news.stanford.edu/2015/06/30/hiking-mental-health-063015/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow14to16Tip2 = Tip(header: "🚴‍♂️", title: "Use your day off to do something active", body: "Using the weekend for some intense, calorie-burning activities that you can't squeeze in midweek can result in weekend weight loss. People tend to eat more when they have a lot of free time because they're bored." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/2012/08/11/healthy-weekend_n_1760981.html?slideshow=true#gallery/243861/6", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow14to16Tip3 = Tip(header: "💪", title: "3pm-6pm is when physical performance is usually best, and the risk of injury least", body: "Muscle strength peaks between 2pm-6pm at levels as much as 6% above the day's lows. Lungs function 18% more efficiently at 5pm than at midday. \n\nEye-hand coordination is best in late afternoon. And joints and muscles are as much as 20% more flexible in the evening, lowering the risk of injury.", sourceName: "Wall Street Journal", sourceURL: "https://www.wsj.com/articles/SB10000872396390444180004578018294057070544", sponsorLogo: "", sponsorURL: "")

//2
let weekendNow14to16Tip4 = Tip(header: "🍝", title: "Avoid weight gain by eating smaller meals after 3 p.m", body: "A study of overweight and obese people found that \"late eaters,\" people classified as eating their biggest meal after 3 p.m., lost significantly less weight — and took longer to lose it — than \"early eaters,\" those who ate their main meal before 3 p.m." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/why-eating-late-bad-unhealthy-2018-1", sponsorLogo: "", sponsorURL: "")
let weekendNow14to16Tip5 = Tip(header: "😴", title: "The best time to take a nap is between 2 p.m and 3 p.m.", body: "We typically experience some sleepiness or decrease in alertness after lunch. A 10-30 minute nap at this time is less likely to interfere with nighttime rest than naps later in the day." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/the-best-time-of-day-to-do-everything-2016-5", sponsorLogo: "", sponsorURL: "")
let weekendNow14to16Tip6 = Tip(header: "👫", title: "Focus on face-to-face relationships. The more you use Facebook/social media, the worse you feel", body: "While real-world social networks were positively associated with overall well-being, the use of Facebook was negatively associated with overall well-being. \n\nExposure to the carefully curated images from others’ lives leads to negative self-comparison, and the sheer quantity of social media interaction detracts from more meaningful real-life experiences." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2017/04/a-new-more-rigorous-study-confirms-the-more-you-use-facebook-the-worse-you-feel", sponsorLogo: "", sponsorURL: "")
let weekendNow14to16Tip7 = Tip(header: "💪", title: "We all need 22 minutes per day of moderate-intensity exercise (like brisk walking) and muscle-strengthening exercise twice a week", body: "Among adults (18-64 years old), only 27% of men and 19% of women met the recommended guidelines for both aerobic and muscle-strengthening exercise. Exercise today." , sourceName: "Harvard Health Publishing", sourceURL: "https://www.health.harvard.edu/staying-healthy/americans-arent-meeting-exercise-goals", sponsorLogo: "", sponsorURL: "")

////// WEEK 2
//SUN
let weekendNow14to16Tip8 = Tip(header: "😴", title: "For many, the optimal time to take a nap is 7 hours after waking", body: "• 7AM wake up = 2PM nap \n• 8AM wake up = 3PM nap \n\nIf you have the flexibility to take a regular afternoon nap, consider making it a common ritual because there's evidence that habitual nappers get more from their naps than infrequent nappers." , sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
let weekendNow14to16Tip9 = Tip(header: "🚰", title: "Drink water. Drinking 8 glasses of water per day can aid in weight loss for the average person - drink more if you’re overweight or your working out a lot", body: "Study: 43% of adults drink less than 4 cups of water a day. Replacing caloric and sugary beverages such as soda, fruit juice, and sweetened iced teas with water can also help boost weight loss." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/drink-water-lose-weight/", sponsorLogo: "", sponsorURL: "")
let weekendNow14to16Tip10 = Tip(header: "", title: "Live longer: Encouraging your family and friends to live healthy lives improves your odds of livnig a healhty life", body: "Researchers found that people were more likely to become obese when their friends became obese. In the case of close mutual friends, if one became obese, the odds of the other becoming obese nearly trippled. It seemed the same effect occured with weight loss.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")
let weekendNow14to16Tip11 = Tip(header: "", title: "People who spend at least 2 hours in nature a week are significantly more likely to report good health and higher psychological wellbeing than those who don't visit nature at all during an average week", body: "The majority of nature visits in this research took place within just 2 miles of home so even visiting local urban greenspaces seems to be a good thing. \n\nThe study found itdidn't matter whether the 2 hours was achieved in a single visit or over several shorter visits.", sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2019/06/190613095227.htm", sponsorLogo: "", sponsorURL: "")

//SAT
let weekendNow14to16Tip12 = Tip(header: "", title: "Interview of 20+ billionaires: All of them have a regular exercise routine. You need to be physically fit to perform at the highest levels", body: "Mark Cuban does an hour of cardio at least 6 days a week; Richard Branson wakes up early to do some kind of exercise.", sourceName: "Market Watch", sourceURL: "https://www.marketwatch.com/story/4-habits-that-self-made-billionaires-practice-nearly-every-day-2019-07-11", sponsorLogo: "", sponsorURL: "")
let weekendNow14to16Tip13 = Tip(header: "🚰", title: "Drinking 8 glasses of water per day can aid in weight loss for the average person - drink more if you’re overweight or your working out a lot", body: "Study: 43% of adults drink less than 4 cups of water a day. Replacing caloric and sugary beverages such as soda, fruit juice, and sweetened iced teas with water can also help boost weight loss." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/drink-water-lose-weight/", sponsorLogo: "", sponsorURL: "")
let weekendNow14to16Tip14 = Tip(header: "🍽", title: "To prevent weight gain, experts say, limit food consumption to your hours of peak activity", body: "Researchers but 2 groups of mice on the same diet. One group was allowed to eat anytime; the other group was restricted to eating only during an 8-hour period when they were normally awake and active. The mice that ate only while active were 40% leaner and had lower cholesterol and blood sugar.", sourceName: "Wall Street Journal", sourceURL: "https://www.wsj.com/articles/SB10000872396390444180004578018294057070544", sponsorLogo: "", sponsorURL: "")
let weekendNow14to16Tip15 = Tip(header: "", title: "Live longer: Focus your life on serving others or caring for your family", body: "Study: Successful 100+ year-olds have a strong sense of purpose. They feel needed and want to contribute to a greater good. \n\nAs soon as they lose this, the switch goes off. They die very quickly if they don't feel needed.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")

//WEEK 3
//SUN
let weekendNow14to16Tip16 = Tip(header: "", title: "Millionaire Habit: Exercise daily. 66% of the millionaires exercise 30+ minutes every day", body: "Exercising can boost your: \n• memory \n• concentration \n• mental sharpness \n\nGo for a: \n• bike ride \n• walk \n• run \n• jog", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/rich-people-exercise-every-day-2016-4", sponsorLogo: "", sponsorURL: "")

//SAT
let weekendNow14to16Tip20 = Tip(header: "", title: "Millionaire Habit: Exercise daily. On average, millionaires work out 3.5 hours a week", body: "The consistency with which millionaires have a workout plan and stay with it relates directly to how successful they have become. \n\nMillionaires work hard at staying in shape, some by hitting the gym on the way to work, others by taking part in exercise classes or team sports.", sourceName: "The Street", sourceURL: "https://www.thestreet.com/lifestyle/lifestyle-habits-of-millionaires-that-everyone-should-adopt-14547729", sponsorLogo: "", sponsorURL: "")


//WEEK 1
//SUN
let weekendNow14to16TipArray0 = [weekendNow14to16Tip0, weekendNow14to16Tip1, weekendNow14to16Tip2, weekendNow14to16Tip3]
let weekendNow14to16Topic0 = Topic(title: weekendNow14to16Title, icon: weekendNow14to16Icon, tip: weekendNow14to16TipArray0)
//SAT
let weekendNow14to16TipArray1 = [weekendNow14to16Tip4, weekendNow14to16Tip5, weekendNow14to16Tip6, weekendNow14to16Tip7]
let weekendNow14to16Topic1 = Topic(title: weekendNow14to16Title, icon: weekendNow14to16Icon, tip: weekendNow14to16TipArray1)

//WEEK 2
//SUN
let weekendNow14to16TipArray2 = [weekendNow14to16Tip8, weekendNow14to16Tip9, weekendNow14to16Tip10, weekendNow14to16Tip11]
let weekendNow14to16Topic2 = Topic(title: weekendNow14to16Title, icon: weekendNow14to16Icon, tip: weekendNow14to16TipArray2)
//SAT
let weekendNow14to16TipArray3 = [weekendNow14to16Tip12, weekendNow14to16Tip13, weekendNow14to16Tip14, weekendNow14to16Tip15]
let weekendNow14to16Topic3 = Topic(title: weekendNow14to16Title, icon: weekendNow14to16Icon, tip: weekendNow14to16TipArray3)



// MARK: - Now, Weekend, 17to20

let weekendNow17to20Title = "Now, Weekday, 17to20"
let weekendNow17to20Icon = "Now"

// WEEK 1
// SUN
let sundayNow17to20Tip0 = Tip(header: "📵", title: "Enjoy your weekend by not checking your smartphone. Being connected 24/7 takes a toll on your health", body: "The blue light from our screens can sabotage a good night's sleep, and social media obsession can cause depression." , sourceName: "CNET Magazine", sourceURL: "https://www.cnet.com/news/take-a-break-from-your-smartphone/", sponsorLogo: "", sponsorURL: "")
let sundayNow17to20Tip1 = Tip(header: "🚰", title: "Drink water. Drinking water may reduce cancer risk", body: "Staying hydrated can reduce risk of colon cancer by 45%, bladder cancer by 50%, and possibly reduce breast cancer risk too." , sourceName: "Shape", sourceURL: "https://www.shape.com/healthy-eating/healthy-drinks/6-reasons-drinking-water-helps-solve-any-problem", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let sundayNow17to20Tip2 = Tip(header: "🥪", title: "Meal prep. You are more likely to eat healthier if you prepare your meals for the following week", body: "It forces you to commit to healthier eating, and over the course of months, you will notice a healthier, leaner self by doing this simple habit." , sourceName: "Bustle", sourceURL: "https://www.bustle.com/articles/159080-11-healthy-after-work-habits-to-try-instead-of-sitting-on-the-couch-all-night", sponsorLogo: "", sponsorURL: "")
let sundayNow17to20Tip3 = Tip(header: "🚶‍♂️", title: "Sleep better: Do some light exercise before bedtime", body: "When we sleep, our breathing is relatively infrequent and shallow, so oxygen levels are lower overnight. \n\nBy taking a 15- to 20-minute walk before bed (and breathing deeply throughout), you can help your cells stock up on the oxygen they need to accomplish all of their restorative handiwork while you sleep." , sourceName: "Health", sourceURL: "https://www.health.com/sleep/night-health-habits-before-bed", sponsorLogo: "", sponsorURL: "")

//SAT
let saturdayNow17to20Tip0 = Tip(header: "👨‍👩‍👧‍👦", title: "Live longer: Socialize with friends and family", body: "People with active social lives are more likely to live longer and less likely to be depressed and develop dementia those who are socially isolated." , sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/living-mild-cognitive-impairment/201606/the-health-benefits-socializing", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let saturdayNow17to20Tip1 = Tip(header: "🚘", title: "Saturday between 4pm-10pm is the most dangerous day and time of the week to drive", body: "An analysis of US car crash-related fatalities in 2016 found that Saturday during the late afternoon and evening had the most fatal car creashes compared to any other day and time during the week. Alcohol and speeding are key factors in the increased crash risk on Saturday." , sourceName: "Avvo", sourceURL: "https://www.avvo.com/fatal-car-accidents", sponsorLogo: "", sponsorURL: "")
let saturdayNow17to20Tip2 = Tip(header: "🚭", title: "30-year study finds that your friends greatly influence your future", body: "If your friend becomes obese, you are 45% more likely to gain weight over the next 2-4 years. If your friend smokes, you are 61% more likely to become a smoker." , sourceName: "Medium", sourceURL: "https://medium.com/the-mission/youre-not-the-average-of-the-five-people-you-surround-yourself-with-f21b817f6e69", sponsorLogo: "", sponsorURL: "")
let saturdayNow17to20Tip3 = Tip(header: "👫", title: "Loneliness increases when you choose social media interactions over face-to-face interactions", body: "20% of Americans report feeling lonely. Researchers found that lonely people spend more time on Facebook than non-lonely people. \n\nUsing social media to organize future face-to-face meetings is healthy. But, spending time alone, scrolling through social media is unhealthy." , sourceName: "The Atlantic", sourceURL: "https://www.theatlantic.com/magazine/archive/2012/05/is-facebook-making-us-lonely/308930/", sponsorLogo: "", sponsorURL: "")

//WEEK 2
//SUN (WIP 1)
let weekendNow17to20Tip0 = Tip(header: "🤳", title: "Reducing your time on social media helps to lower your risk of developing narcissistic traits", body: "Study: Facebook users have higher levels of total narcissism than Facebook nonusers. Narcissism manifests in patterns of: \n• Fantastic grandiosity \n• Craving for attention \n• Lack of empathy" , sourceName: "The Atlantic", sourceURL: "https://www.theatlantic.com/magazine/archive/2012/05/is-facebook-making-us-lonely/308930/", sponsorLogo: "", sponsorURL: "")
let weekendNow17to20Tip1 = Tip(header: "🍽", title: "Restrict eating to a 12-hour cycle", body: "Our bodies were designed for a 12-hour eating cycle. Disrupting this natural order by, say, snacking at 2 a.m., leads to poor sleep and weight gain.", sourceName: "SUCCESS Magazine", sourceURL: "https://www.success.com/the-new-secrets-of-perfect-sleep/", sponsorLogo: "", sponsorURL: "")
let weekendNow17to20Tip2 = Tip(header: "🚰", title: "Drink water. Drinking 8 glasses of water per day can aid in weight loss for the average person - drink more if you’re overweight or your working out a lot", body: "Study: 43% of adults drink less than 4 cups of water a day. Replacing caloric and sugary beverages such as soda, fruit juice, and sweetened iced teas with water can also help boost weight loss." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/drink-water-lose-weight/", sponsorLogo: "", sponsorURL: "")

//SAT (WIP - 1)
let weekendNow17to20Tip3 = Tip(header: "👫", title: "Spend tonight with family or friends. Being lonely is extremely bad for your health", body: "If you’re lonely, you are more likely to be depressed, to sleep badly, and to suffer dementia and general cognitive decline. You’re less likely to exercise. You’re more likely to be obese. You’re less likely to survive a serious operation and more likely to have hormonal imbalances. You’re more likely to be put in a geriatric home at an earlier age than a similar person who isn’t lonely." , sourceName: "The Atlantic", sourceURL: "https://www.theatlantic.com/magazine/archive/2012/05/is-facebook-making-us-lonely/308930/", sponsorLogo: "", sponsorURL: "")
let weekendNow17to20Tip4 = Tip(header: "🚰", title: "Drink water. Drinking 8 glasses of water per day can aid in weight loss for the average person - drink more if you’re overweight or your working out a lot", body: "Study: 43% of adults drink less than 4 cups of water a day. Replacing caloric and sugary beverages such as soda, fruit juice, and sweetened iced teas with water can also help boost weight loss." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/drink-water-lose-weight/", sponsorLogo: "", sponsorURL: "")
let weekendNow17to20Tip5 = Tip(header: "", title: "Prevent weight gain: Avoid drinking alcohol tonight", body: "Study: Drinking alcohol causes people to eat an extra 384 calories daily, likely because it makes us more sensitive to food aromas and less likely to resist indulgent fare." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/things-making-you-fatter/", sponsorLogo: "", sponsorURL: "")

//WEEK 1: 17-18
// SUNDAY
let sundayNow17to18TipArray0 = [sundayNow17to20Tip0, sundayNow17to20Tip1, sundayNow17to20Tip2, sundayNow17to20Tip3]
let sundayNow17to18Topic0 = Topic(title: weekendNow17to20Title, icon: weekendNow17to20Icon, tip: sundayNow17to18TipArray0)

// SATURDAY
//Andrew Jenson
let saturdayNow17to18TipArray0 = [saturdayNow17to20Tip0, saturdayNow17to20Tip1, saturdayNow17to20Tip2, saturdayNow17to20Tip3]
let saturdayNow17to18Topic0 = Topic(title: weekendNow17to20Title, icon: weekendNow17to20Icon, tip: saturdayNow17to18TipArray0)

//WEEK 1: 19-20
//SUN
let sundayNow19to20TipArray0 = [weekendNow17to20Tip0, weekendNow17to20Tip1, sundayNow17to20Tip2, sundayNow17to20Tip3]
let sundayNow19to20Topic0 = Topic(title: weekendNow17to20Title, icon: weekendNow17to20Icon, tip: sundayNow19to20TipArray0)
//SAT
let saturdayNow19to20TipArray0 = [weekendNow17to20Tip3, weekendNow17to20Tip4, weekendNow17to20Tip5, saturdayNow17to20Tip3]
let saturdayNow19to20Topic0 = Topic(title: weekendNow17to20Title, icon: weekendNow17to20Icon, tip: saturdayNow19to20TipArray0)

// MARK: - Now, Weekend, 21to24

let weekendNow21to24Title = "Now, Weekday, 21to24"
let weekendNow21to24Icon = "Now"

// WEEK 1
// Sunday Night
let sunday21to24Tip1 = Tip(header: "📖", title: "Bill Gates reads for an hour every night", body: "Bill Gates, Oprah Winfrey, Elon Musk, and Mark Zuckerberg all read a lot. Successful people tend to choose educational books and publications over novels, tabloids, and magazines. And they obsess over biographies and autobiographies of other successful people for guidance and inspiration." , sourceName: "Inc.", sourceURL: "https://www.inc.com/justin-bariso/bill-gates-follows-4-rules-to-get-most-from-reading-books.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let sunday21to24Tip2 = Tip(header: "🕙", title: "Oprah Winfrey is usually in bed by 10 p.m. and her night-time routine includes self-reflection", body: "\"I usually get into bed and I have volumes of gratitude journals by the side of my bed. The last thing I do before I go to sleep is write five things that gave me great pleasure or that I was grateful for.\"" , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2018/06/22/what-time-successful-people-to-go-bed.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let sunday21to24Tip3 = Tip(header: "🛌", title: "Build the habit of going to bed earlier. Night owls have a 10% higher risk of death than morning people", body: "Along with the 10% increased risk of death compared to morning people, night owls had almost double the risk of suffering from psychological disorders, about a 30% increased risk for diabetes, a 25% increased risk for neurological conditions, 23% increased risk for gastrointestinal disorders, and a 22% increased risk for respiratory disorders." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/night-owl-risk-for-death-vs-morning-people-2018-4?r=UK&IR=T", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let sunday21to24Tip4 = Tip(header: "😴", title: "Successful people make it a priority to get enough sleep", body: "Go to bed at the same time each night. And consider setting a \"bedtime alarm\" to remind yourself to get ready for bed." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/what-successful-people-do-before-bed-2016-6#11-they-plan-out-sleep-11", sponsorLogo: "TBD", sponsorURL: "www.test.com")

// Saturday Night
let saturday21to24Tip1 = Tip(header: "😴", title: "Sleeping in on the weekends leaves you more tired, and in a worse mood, than if you maintained a consistent sleep schedule all 7 days", body: "Every 1 hour that sleep is shifted, you increase your risk of heart disease by 11%. Each 1-hour shift was also linked with a 28% higher likelihood of reporting your health as poor or fair compared to excellent." , sourceName: "CBS News", sourceURL: "https://www.cbsnews.com/news/staying-up-late-and-sleeping-in-on-weekends-may-harm-heart/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let saturday21to24Tip2 = Tip(header: "💤", title: "Get more sleep on a weekend night to reduce weight gain", body: "Sleep deprivation often makes you eat more - about 500 extra calories a day - studies have found. Cap off your weekend weight-loss efforts with a relaxing activity and then head to bed early to squeeze in some extra sleep." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/2012/08/11/healthy-weekend_n_1760981.html?slideshow=true#gallery/243861/8", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let saturday21to24Tip3 = Tip(header: "🍷", title: "Avoid alcohol right before bedtime", body: "While alcohol can help you fall asleep, it robs you of quality sleep. Alcohol keeps people in the lighter stages of sleep from which they can be awakened easily and prevents them from falling into deeper, more restorative stages of sleep." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/what-successful-people-do-before-bed-2016-6#13-they-skip-the-wine-13", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let saturday21to24Tip4 = Tip(header: "😴", title: "Sleeping in on Sunday morning will make it harder to fall alseep on Sunday night", body: "Though you’ll feel more rested after waking up late on Sunday morning, it disrupts your circadian rhythm, making it harder to fall asleep at night." , sourceName: "National Sleep Foundation", sourceURL: "https://www.sleep.org/articles/catching-up-on-sleep/", sponsorLogo: "", sponsorURL: "")



//WEEK 2
//SUN
let sunday21to24Tip5 = Tip(header: "😴", title: "Don't stay up late. People who go to bed late gain more weight", body: "Study: Late sleepers consumed 248 more calories a day, ate twice as much fast food, ate half as many fruits and vegetables, and drank more full-calorie sodas as those with earlier sleep times. \n\nThe extra daily calories can mean a significant amount of weight gain – 2 pounds per month – if they are not balanced by more physical activity." , sourceName: "Northwestern University", sourceURL: "https://www.northwestern.edu/newscenter/stories/2011/05/night-owls-weight-gain.html", sponsorLogo: "", sponsorURL: "")
let sunday21to24Tip6 = Tip(header: "🧠", title: "Get 7+ hours of sleep. Not getting enough sleep increase your risk of Alzheimer's and all other diseases associated with dementia", body: "While the brain sleeps, it clears out harmful toxins, a process that may reduce the risk of Alzheimer's, researchers say. This could explain why we don't think clearly after a sleepless night and why a prolonged lack of sleep can actually kill a person." , sourceName: "NPR", sourceURL: "https://www.npr.org/sections/health-shots/2013/10/18/236211811/brains-sweep-themselves-clean-of-toxins-during-sleep", sponsorLogo: "", sponsorURL: "")
let sunday21to24Tip7 = Tip(header: "🍽", title: "Decrease your risk of weight gain by going to bed earlier and waking up earlier", body: "Researchers found that people who tended to sleep and wake later in the day ate the bulk of their calories after 8 pm, more calories overall, and fewer servings of fruits and vegetables. Consuming calories in the evening was associated with a higher body mass index." , sourceName: "Vox", sourceURL: "https://www.vox.com/2016/2/17/11034546/eating-late-night-bad-diet", sponsorLogo: "", sponsorURL: "")
let sunday21to24Tip8 = Tip(header: "📖", title: "Your body needs time to shift into sleep mode, so spend the last hour before bed doing a calming activity such as reading", body: "Electronic devices can make it hard to fall asleep because the light from the screens activates your brain. Avoid electronics before bed or in the middle of the night." , sourceName: "National Sleep Foundation", sourceURL: "https://www.sleepfoundation.org/articles/healthy-sleep-tips", sponsorLogo: "", sponsorURL: "")

// SAT
let saturday21to24Tip5 = Tip(header: "🙅‍♀️", title: "Sleep better by avoiding alcohol, heavy meals, and electronic screens before bed", body: "A lack of sleep leads to weight gain and unhealthy food cravings at night. The American Academy of Sleep Medicine recommends 7+ hours per night for adults." , sourceName: "Vox", sourceURL: "https://www.vox.com/science-and-health/2019/3/26/18280663/night-eating-sleep-loss-weight-gain", sponsorLogo: "", sponsorURL: "")
let saturday21to24Tip6 = Tip(header: "⌚️", title: "Sleep better: Stick to a sleep schedule of the same bedtime and wake up time, even on the weekends", body: "This helps to regulate your body's clock and could help you fall asleep and stay asleep for the night." , sourceName: "National Sleep Foundation", sourceURL: "https://www.sleepfoundation.org/articles/healthy-sleep-tips", sponsorLogo: "", sponsorURL: "")
let saturday21to24Tip7 = Tip(header: "🔥", title: "Don't eat. Eating less than 3-4 hours before bed increases the risk of nighttime heartburn", body: "Researchers say that it takes 3-4 hours for food to clear the stomach. In chronic heartburn, stomach acid slips into the esophagus, and that’s more likely when lying in bed shortly after a meal, when gravity is not helping to keep digestive juices in the stomach." , sourceName: "The New York Times", sourceURL: "https://well.blogs.nytimes.com/2011/09/05/really-the-claim-to-reduce-heartburn-dont-eat-four-hours-before-bed/", sponsorLogo: "", sponsorURL: "")
let saturday21to24Tip8 = Tip(header: "🙅‍♀️", title: "Sleep better: Avoid bright light in the evening", body: "Dim or turn off lights to help you fall asleep at bedtime. \n\nTomorrow, expose yourself to sunlight in the morning. These 2 steps will keep your circadian rhythms in check." , sourceName: "National Sleep Foundation", sourceURL: "https://www.sleepfoundation.org/articles/healthy-sleep-tips", sponsorLogo: "", sponsorURL: "")

//WEEK 2
//SUN
let sunday21to24Tip9 = Tip(header: "😴", title: "Not getting enough sleep causes premature aging and wrinkles", body: "Your body's cortisol levels naturally decrease while we sleep. Miss out on sleep, though, and that cycle is disrupted. Persistently high cortisol levels can contribute to the breakdown of collagen (a protein that's key in helping your skin look young and fresh) and elastic tissue.", sourceName: "Allure", sourceURL: "https://www.allure.com/story/sleep-and-skin-what-happens", sponsorLogo: "", sponsorURL: "")
let sunday21to24Tip10 = Tip(header: "", title: "Whatever it is that you consume the 2 hours before you go to bed, do it consciously. Don’t do anything that prevents you from calming down and becoming sleepy", body: "If you do, see, smell, touch, eat, drink, hear or spend time around something that stresses you, your body will rise the cortisol levels in your body, which is the exact opposite to what you need in order to relax and have a good, deep, relaxing sleep.", sourceName: "", sourceURL: "", sponsorLogo: "", sponsorURL: "")




//SAT
let saturday21to24Tip9 = Tip(header: "😴", title: "Not getting enough sleep causes premature aging and wrinkles", body: "If you don't sleep, your body doesn't make as much human growth hormone (which stimulates cell production), so your skin won't be as thick. Without time to produce new, fresh cells and fix yesterday's damage, you're practically welcoming accelerated aging—plus, collagen may prematurely stiffen (hello, fine lines and wrinkles!)", sourceName: "Allure", sourceURL: "https://www.allure.com/story/sleep-and-skin-what-happens", sponsorLogo: "", sponsorURL: "")
let saturday21to24Tip10 = Tip(header: "", title: "Avoid alcohol right before bedtime because it hurts sleep quality", body: "While alcohol can certainly help you fall asleep, the National Institute of Health finds that it hurts sleep quality. \n\nAlcohol keeps people in the lighter stages of sleep from which they can be awakened easily and prevents them from falling into deeper, more restorative stages of sleep, the institute finds.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/what-successful-people-do-right-before-bed-2016-1", sponsorLogo: "", sponsorURL: "")



//WEEK 1
// SUN
let sunday21to24TipArray1 = [sunday21to24Tip1, sunday21to24Tip2, sunday21to24Tip3, sunday21to24Tip4]
let sunday21to24Topic1 = Topic(title: weekendNow21to24Title, icon: weekendNow21to24Icon, tip: sunday21to24TipArray1)

// SAT
let saturday21to24TipArray1 = [saturday21to24Tip1, saturday21to24Tip2, saturday21to24Tip3, saturday21to24Tip4]
let saturday21to24Topic1 = Topic(title: weekendNow21to24Title, icon: weekendNow21to24Icon, tip: saturday21to24TipArray1)

//WEEK 2
// SUN
let sunday21to24TipArray2 = [sunday21to24Tip5, sunday21to24Tip6, sunday21to24Tip7, sunday21to24Tip8]
let sunday21to24Topic2 = Topic(title: weekendNow21to24Title, icon: weekendNow21to24Icon, tip: sunday21to24TipArray2)

// SAT
let saturday21to24TipArray2 = [saturday21to24Tip5, saturday21to24Tip6, saturday21to24Tip7, saturday21to24Tip8]
let saturday21to24Topic2 = Topic(title: weekendNow21to24Title, icon: weekendNow21to24Icon, tip: saturday21to24TipArray2)



// MARK: - WEEKDAY

// MARK: - Now, Weekday, 0to4

let weekdayNow0to4Title = "Now, 0to4"
let weekdayNow0to4Icon = "Now"

//// MON
let weekdayNow0to4Tip0 = Tip(header: "🤓", title: "Prioritze sleep to make smarter decisions tomorrow", body: "A study of high-earning professionals found the vast majority got within the recommended 7 to 9 hours of sleep over the course of a week. Successful people know they think better and make smarter decisions after getting enough sleep.", sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/home/cleaning-organizing/successful-people-work/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow0to4Tip1 = Tip(header: "⏰", title: "Have a set bedtime so you can perform optimally the next day", body: "Having a bedtime means you don't need to debate with yourself every night about when you intend to go to bed. Making the conscious choice to go to sleep at a certain time frees you from wrestling with the consequences of going to bed too late, which can include decreased productivity the next day." , sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/health/wellness/successful-people-habits-before-bed/1/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow0to4Tip2 = Tip(header: "🧦", title: "Wear socks to fall asleep faster", body: "Heating cold feet causes vasodilation—dilation of the blood vessels—which triggers your brain that its time for bed. If you aren't a sock sleeper, layer extra blankets on top of your comforter." , sourceName: "National Sleep Foundation", sourceURL: "https://sleep.org/articles/wearing-socks-to-bed/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow0to4Tip3 = Tip(header: "💤", title: "If you want to fall asleep faster, think about staying awake", body: "It sounds counter intuitive, but instead of worrying about falling asleep, think about staying awake instead. This often lessens anxiety and gives your mind a chance to relax enough to fall asleep. \n\nIt's a technique known as paradoxical intent, a cognitive behavioral therapy technique used to lessen the anxiety around falling asleep." , sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/health/wellness/improve-sleep-habits-one-day/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//// TUE
let weekdayNow0to4Tip4 = Tip(header: "📖", title: "Fall asleep faster: Reading for 6 minutes reduces stress by 68%", body: "Psychologists believe this is because the human mind has to concentrate on reading and the distraction of being taken into a literary world eases the tension in your body. Reading worked better than other methods at reducing stress levels: \n\n• Reading (68%) \n• Listening to music (61%)\n• Drinking tea (54%)", sourceName: "The Telegraph", sourceURL: "https://www.telegraph.co.uk/news/health/news/5070874/Reading-can-help-reduce-stress.html", sponsorLogo: "", sponsorURL: "")
let weekdayNow0to4Tip5 = Tip(header: "😕", title: "People who were more active at night were 6% to 10% more likely to be diagnosed with a mood disorder, like depression", body: "Every biological process, from eating to sleeping, is controlled by the body's circadian rhythms. Irregular circadian rhythms confuse the body, and they've been linked to mood disorders and weight gain. Scientists also discovered that night owls tended to be lonelier and more unhappy.", sourceName: "Men's Health", sourceURL: "https://www.menshealth.com/health/a20716425/circadian-rhythms-depression-mood-disorders/", sponsorLogo: "", sponsorURL: "")
let weekdayNow0to4Tip6 = Tip(header: "🙅‍♀️", title: "For a healthy weight, avoid eating at night and only eat during the day", body: "The circadian rhythm of our metabolism has not evolved for a world with 24-7 access to food and it still expects us to stop eating at sundown. Limiting food intake to a period of 8-12 hours during the day can help people lose weight and reduce the risk of cancer, diabetes, and heart disease.", sourceName: "The Washington Post", sourceURL: "https://www.washingtonpost.com/national/health-science/timing-your-meals-may-help-with-weight-loss-thats-what-it-seems-to-do-in-mice/2018/03/23/14672fc0-f718-11e7-a9e3-ab18ce41436a_story.html?utm_term=.b6892739a880", sponsorLogo: "", sponsorURL: "")
let weekdayNow0to4Tip7 = Tip(header: "😰", title: "Getting more sleep is a great way to manage stress and emotions", body: "Researchers have linked adequate sleep to everything from better mood to longer life spans. You’ll also have a better attention span, which in turn can improve your performance and reduce your stress during the day.", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/amymorin/2017/06/10/how-to-leave-stress-at-work-so-you-dont-take-out-your-frustration-on-your-family/#14ff2f584b48", sponsorLogo: "", sponsorURL: "")

//// WED
let weekdayNow0to4Tip8 = Tip(header: "💵", title: "Study: 89% of self made millionaire sleep 7+ hours each night", body: "Sleep is critical to success because it improves memory function and creative thinking. Albert Einstein reportedly preferred to get at least 10 hours of sleep a night." , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2016/11/29/7-habits-of-highly-successful-people-from-a-man-who-spent-5-years-studying-them.html", sponsorLogo: "", sponsorURL: "")
let weekdayNow0to4Tip9 = Tip(header: "💤", title: "People who don't get enough sleep during the work week and sleep in on the weekends are more likely to be overweight or obese", body: "\"Social jet lag\" is when you have different sleep patterns during the work week compared to the weekend. For every hour of social jet lag, the risk of being overweight or obese rises about 33%. And the more social jetlag you have, the higher probability it is that you suffer from depression, smoke, and drink unhealthy amounts of alcohol.", sourceName: "WebMD", sourceURL: "https://www.webmd.com/sleep-disorders/news/20120510/do-you-have-social-jet-lag#1", sponsorLogo: "", sponsorURL: "")
let weekdayNow0to4Tip10 = Tip(header: "😀", title: "Becoming a morning person will increase your happiness", body: "Study: Morning people are actually happier and more satisfied with life overall than night owls. Morning people also tended to say they felt healthier than did night owls. \n\nTo become a morning person: go to bed earlier and wake up earlier, wake up at the same time every day, and increase your natural light exposure early in the morning." , sourceName: "Live Science", sourceURL: "https://www.livescience.com/20880-morning-people-happier.html", sponsorLogo: "", sponsorURL: "")
let weekdayNow0to4Tip11 = Tip(header: "😴", title: "Go to sleep. A lack of sleep is linked to serious health problems", body: "Over time, a lack of sleep increases the risk of depression and heart disease. It also causes excessive daytime sleepiness which is linked to weakened social and occupational function, memory problems, and risk of having a vehicle crash.", sourceName: "Very Well Mind", sourceURL: "https://www.verywellmind.com/alcohol-and-sleep-66571", sponsorLogo: "", sponsorURL: "")

//THUR
let weekdayNow0to4Tip12 = Tip(header: "😴", title: "Go to sleep. Shorter amounts of sleep are associated with higher BMI levels and larger waistlines", body: "Research also shows that when we’re sleep-deprived, our brains respond more strongly to junk food and have less of an ability to practice portion control. Aim for no less than 7 hours of sleep per night." , sourceName: "Eat This, Not That!", sourceURL: "", sponsorLogo: "", sponsorURL: "")
let weekdayNow0to4Tip13 = Tip(header: "👫", title: "Highly successful people make it a habit to get enough sleep", body: "• Albert Einstein: 10 hours \n• Ellen DeGeneres: 8 hours \n• Bill Gates: 7 hours \n• Jeff Bezos: 7 hours \n• Arianna Huffington: 7 hours \n• Elon Musk: 7 hours \n• Richard Branson: 6 hours" , sourceName: "ThinkRichThinkPoor.com", sourceURL: "https://thinkrichthinkpoor.com/money-management/11-habits-self-made-millionaires/", sponsorLogo: "", sponsorURL: "")
let weekdayNow0to4Tip14 = Tip(header: "🤓", title: "Getting enough sleep makes you smarter", body: "Sleep improves our ability to problem solve and recall information. By getting a good night's rest, you'll perform better the next day." , sourceName: "Inc.", sourceURL: "https://www.inc.com/kevin-daum/science-proves-why-good-sleep-is-critical-to-your-success.html", sponsorLogo: "", sponsorURL: "")
let weekdayNow0to4Tip15 = Tip(header: "👍", title: "Getting enough sleep makes you more likable", body: "Participants in a study who prioritized sleep were considered more engaging and likable. Another study found that well-slept leaders are perceived as more charismatic." , sourceName: "Inc.", sourceURL: "https://www.inc.com/kevin-daum/science-proves-why-good-sleep-is-critical-to-your-success.html", sponsorLogo: "", sponsorURL: "")
//FRI
let weekdayNow0to4Tip16 = Tip(header: "😴", title: "Go to sleep. People who go to bed late and sleep late weigh more", body: "Study: Late sleepers consumed 248 more calories a day, ate twice as much fast food, ate half as many fruits and vegetables, and drank more full-calorie sodas as those with earlier sleep times. The extra daily calories can mean a significant amount of weight gain – 2 pounds per month – if they are not balanced by more physical activity." , sourceName: "Northwestern University", sourceURL: "https://www.northwestern.edu/newscenter/stories/2011/05/night-owls-weight-gain.html", sponsorLogo: "", sponsorURL: "")
let weekdayNow0to4Tip17 = Tip(header: "😴", title: "Live Longer: Get 7–8 hours of sleep each night", body: "Sleeping less than 5–7 hours per night is linked to a 12% greater risk of early death, while sleeping more than 8–9 hours per night could also decrease your lifespan by up to 38%. Sleep is crucial for regulating cell function and helping your body heal." , sourceName: "Healthline", sourceURL: "https://www.healthline.com/nutrition/13-habits-linked-to-a-long-life", sponsorLogo: "", sponsorURL: "")
let weekdayNow0to4Tip18 = Tip(header: "😴", title: "Go to bed. Sleeping less than 7 hours a night is associated with future weight gain and higher risk of obesity", body: "A 16-year study found that women sleeping 5 hours or less gained 2.5 pounds more than did those sleeping 7 hours over 16 years, and women sleeping 6 hours gained 1.5 pounds more than did those sleeping 7 hours over 16 years. Risk of obesity was also higher for those sleeping less than 7 hours over 16 years.", sourceName: "National Center for Biotechnology Information, U.S. National Library of Medicine", sourceURL: "https://www.ncbi.nlm.nih.gov/pubmed/16914506", sponsorLogo: "", sponsorURL: "")
let weekdayNow0to4Tip19 = Tip(header: "😴", title: "Not getting enough sleep reduces your skin's ability to protect itself which leads to acne breakouts", body: "Your body's cortisol levels naturally decrease while we sleep. Miss out on sleep, though, and that cycle is disrupted. Persistently high cortisol levels can interfere with how well our bodies heal and can promote acne breakouts.", sourceName: "Allure", sourceURL: "https://www.allure.com/story/sleep-and-skin-what-happens", sponsorLogo: "", sponsorURL: "")

//WEEK 2
//MON
let weekdayNow0to4Tip20 = Tip(header: "😴", title: "Timing of sleep is important. That’s why we see health risks higher among individuals who work night-shift jobs.", body: "For good health, it's best to have your sleep schedule aligned with the sun. Studies find that people who work night-shift jobs often experience circadian rhythm desynchronization and lower quality sleep. They also have a higher risk of depression and diabetes.", sourceName: "The Ladders", sourceURL: "https://www.theladders.com/career-advice/top-8-sleep-myths-that-can-harm-your-health", sponsorLogo: "", sponsorURL: "")

//TUES


//WEEK 1
//MON
let weekdayNow0to4TipArray0 = [weekdayNow0to4Tip0, weekdayNow0to4Tip1, weekdayNow0to4Tip2, weekdayNow0to4Tip3]
let weekdayNow0to4Topic0 = Topic(title: weekdayNow0to4Title, icon: weekdayNow0to4Icon, tip: weekdayNow0to4TipArray0)

//TUE
let weekdayNow0to4TipArray1 = [weekdayNow0to4Tip4, weekdayNow0to4Tip5, weekdayNow0to4Tip6, weekdayNow0to4Tip7]
let weekdayNow0to4Topic1 = Topic(title: weekdayNow0to4Title, icon: weekdayNow0to4Icon, tip: weekdayNow0to4TipArray1)

//WED
let weekdayNow0to4TipArray2 = [weekdayNow0to4Tip8, weekdayNow0to4Tip9, weekdayNow0to4Tip10, weekdayNow0to4Tip11]
let weekdayNow0to4Topic2 = Topic(title: weekdayNow0to4Title, icon: weekdayNow0to4Icon, tip: weekdayNow0to4TipArray2)

//THUR
let weekdayNow0to4TipArray3 = [weekdayNow0to4Tip12, weekdayNow0to4Tip13, weekdayNow0to4Tip14, weekdayNow0to4Tip15]
let weekdayNow0to4Topic3 = Topic(title: weekdayNow0to4Title, icon: weekdayNow0to4Icon, tip: weekdayNow0to4TipArray3)
//FRI
let weekdayNow0to4TipArray4 = [weekdayNow0to4Tip16, weekdayNow0to4Tip17, weekdayNow0to4Tip18, weekdayNow0to4Tip19]
let weekdayNow0to4Topic4 = Topic(title: weekdayNow0to4Title, icon: weekdayNow0to4Icon, tip: weekdayNow0to4TipArray4)

// MARK: - Now, Weekday, 5to8

let weekdayNow5to8Title = "Now, 5to8"
let weekdayNow5to8Icon = "Now"

// WEEK 1
// MON
let weekdayNow5to8Tip0 = Tip(header: "🤔", title: "Steve Jobs asked himself this question each morning...", body: "\"I looked in the mirror every morning and asked myself: \"If today were the last day of my life, would I want to do what I am about to do today?\" And whenever the answer has been no for too many days in a row, I know I need to change something.\"" , sourceName: "FastCompany", sourceURL: "https://www.fastcompany.com/3033652/the-morning-routines-of-the-most-successful-people", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow5to8Tip1 = Tip(header: "🗓", title: "Elon Musk and Bill Gates Schedule Their Days in 5-Minute Chunks", body: "Filling every moment of your calendar pushes you to make tough calls about prioritization and also leaves you feeling more in control of your time. If you try this, remember, you've also got to include time to relax and recharge." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/bill-gates-elon-musk-scheduling-habit-2017-8", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip2 = Tip(header: "👗", title: "Choose an outfit that you feel \"great\" in because it will boost your mood, self-confidence, and productivity", body: "In one study, a group of students were given a set of tasks to do — half were given a doctor’s lab coat to wear and half were not. Those wearing the lab coats were more attentive and focused than those not wearing the lab coat.", sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/business/can-wearing-work-uniform-help-you-get-ahead-ncna788136?cid=eml_better_20180716", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip3 = Tip(header: "🚰", title: "Before you leave for work, apply moisturizer and drink a glass of water to keep your skin looking good", body: "Dehydration makes your skin look more dry and wrinkled, which can be improved with proper hydration. You can also help \"lock\" moisture into your skin by using moisturizer, which creates a physical barrier to keep moisture in." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/diet/features/6-reasons-to-drink-water#3", sponsorLogo: "TBD", sponsorURL: "www.test.com")

////////// TUES
let weekdayNow5to8Tip4 = Tip(header: "☕️", title: "The best time to drink coffee is after 9:30 a.m.", body: "That's because the stress hormone cortisol, which regulates energy, generally peaks between 8 a.m. and 9 a.m., so you don't need the boost right then.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/the-best-time-of-day-to-do-everything-2016-5#-2", sponsorLogo: "sponsor", sponsorURL: "sponsorURL")
let weekdayNow5to8Tip5 = Tip(header: "🚰", title: "Drinking water first thing in the morning helps to rehydrate the body", body: "Our bodies are slightly dehydrated when we wake up in the morning. Drinking a couple glasses of water allows the body to rehydrate and helps with digestion after breakfast.", sourceName: "USA Today", sourceURL: "https://www.usatoday.com/story/news/nation-now/2017/03/14/why-you-should-drink-water-first-thing-every-day/99123938/", sponsorLogo: "sponsor", sponsorURL: "sponsorURL")
let weekdayNow5to8Tip6 = Tip(header: "🍽", title: "Breakfast eaters are 1/3 less likely to be overweight or obese", body: "They also show greater restraint when it comes to impulse snacking and overeating at other meals. Coming as it does after the day's longest period without food, breakfast seems to influence metabolism more strongly than lunch or dinner.", sourceName: "Harvard Health Publishing", sourceURL: "https://www.health.harvard.edu/nutrition/breakfast-and-beyond-the-case-for-a-healthy-morning-meal", sponsorLogo: "sponsor", sponsorURL: "sponsorURL")
let weekdayNow5to8Tip7 = Tip(header: "👔", title: "Dress well today. It may increase your earnings potential", body: "Study: People were shown photos of men dressed in either business or casual attire. They were then asked questions about how the men would perform in a variety of jobs. Results indicated that the men wearing casual attire were expected to earn a lower starting salary compared to the men dressed in business attire. Moreover, the men in business attire were expected to make more money and get promoted more rapidly.", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/ashleystahl/2016/05/11/how-self-worth-affects-your-salary/#4c97d0e677fa", sponsorLogo: "", sponsorURL: "")


////// WED
let weekdayNow5to8Tip8 = Tip(header: "😀", title: "85% of people suffer from low self-esteem. Boost your confidence this morning by improving your physical appearance", body: "If you aren’t confident in your outward appearance, then you may find yourself hiding, apologizing or overcompensating. The 3 common pain points are teeth, weight, and blemished or scarred skin.", sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/business/why-low-self-esteem-may-be-hurting-your-career-ncna814156", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip9 = Tip(header: "💸", title: "Increase your future earnings and boost your self-esteem by dressing well today", body: "93% of executives report that the way a person dresses at the office affects their prospects for a promotion. The way we dress strongly affects the way we feel about ourselves and pays off professionaly, so start each day looking your best.", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/ashleystahl/2016/05/11/how-self-worth-affects-your-salary/#4c97d0e677fa", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip10 = Tip(header: "🍽", title: "Skipping breakfast linked to higher odds of clogged arteries", body: "Clogged arteries can lead to a heart attack or stroke. Breakfast eaters also tended to eat healthier over all and were less likely to be obese or have high blood pressure, diabetes, or unhealthy cholesterol levels.", sourceName: "Harvard Health Publishing", sourceURL: "https://www.health.harvard.edu/heart-health/skipping-breakfast-linked-to-higher-odds-of-clogged-arteries", sponsorLogo: "sponsor", sponsorURL: "sponsorURL")
let weekdayNow5to8Tip11 = Tip(header: "🙂", title: "Getting into a good mood now helps you stay positive for the rest of the day", body: "A study found that people who started out each day happy or calm usually stayed that way throughout the day. By contrast, people who started the day in a bad mood usually stayed that way throughout the day, and felt even worse by the end of the day. \n\nGet in a good mood: \n• Take a few deep breaths \n• Listen to your favoirte song \n• Think of something you're thankful for", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2016/07/how-your-morning-mood-affects-your-whole-workday", sponsorLogo: "", sponsorURL: "")

/////// THURS
let weekdayNow5to8Tip12 = Tip(header: "🚰", title: "Drink water instead of coffee first thing in the morning", body: "We all wake up slightly dehydrated. Drinking water rehydrates your body, helps you be more alert, and kickstarts your digestion and metabolism." , sourceName: "USA Today", sourceURL: "https://www.usatoday.com/story/news/nation-now/2017/03/14/why-you-should-drink-water-first-thing-every-day/99123938/", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip13 = Tip(header: "☕️", title: "Avoid drinking coffee until the hours of 9:30am to 11:00am", body: "Cortisol is a hormone which makes us feel alert and awake. The peak production of cortisol in your body occurs between 8:00am to 9:00am (under normal circumstances). So, by consuming caffeine when it's not needed, your body will build a faster tolerance to it, and the buzz you get will greatly diminish.", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/anthonykosner/2014/01/05/why-the-best-time-to-drink-coffee-is-not-first-thing-in-the-morning/#322f5acd7a71", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip14 = Tip(header: "💪", title: "Top CEOs and investors exercise first thing in the morning", body: "These are very busy people. If they still make time to exercise, it must be important. A pre-breakfast workout burns belly fat, helps reduce stress later in the day, and improves sleep." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/what-successful-people-do-before-breakfast-2015-10", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip15 = Tip(header: "🛏", title: "Making your bed can make your happier and more productive all day long", body: "Making your bed every morning doesn't necessarily cause you to get more done at work, but it's a \"keystone habit\" that can spark chain reactions that help build other good habits. \n\nPeople that consistently make their beds also tend to have a greater sense of well-being and stronger skills at sticking with a budget." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/what-successful-people-do-before-breakfast-2015-10", sponsorLogo: "", sponsorURL: "")

//////// FRI
let weekdayNow5to8Tip16 = Tip(header: "🚰", title: "Drinking water in the morning increases your metabolism and ability to burn fat", body: "You are dehydrated when you wake up which can slow down metabolism by as much as 3%. Drinking about 17oz of water increases metabolic rate by 30%. \n\nDrinking 1-2 glasses of water before a meal can fill you up so you naturally eat less.", sourceName: "Shape", sourceURL: "https://www.shape.com/healthy-eating/healthy-drinks/6-reasons-drinking-water-helps-solve-any-problem", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip17 = Tip(header: "🍳", title: "Skipping breakfast is strongly correlated with weight gain. Eatting a high-protein breakfast reduces junk food cravings later today", body: "Study: Participants who ate 35 grams of protein in the morning had reductions in their \"cravings-related\" brain activity, and increased levels of a hormone associated with feeling full. \n\nThey also snacked less on fatty foods in the evening, as compared to those who ate cereal or nothing in the morning." , sourceName: "The Atlantic", sourceURL: "https://www.theatlantic.com/health/archive/2013/03/study-eat-protein-in-the-morning/274417/", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip18 = Tip(header: "🎽", title: "Pack your gym clothes and take them to work with you, so you have no excuses to not exercise after work", body: "Heading straight to the gym after work takes away the temptation of going home and being inactive and unproductive.", sourceName: "Bustle", sourceURL: "https://www.bustle.com/articles/159080-11-healthy-after-work-habits-to-try-instead-of-sitting-on-the-couch-all-night", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip19 = Tip(header: "🙏", title: "Gratitude journaling is a great way to center yourself before heading to work", body: "Entrepreneur and author, Tim Ferriss, spends 5 minutes each morning writing down what he's grateful for and what he's looking forward to. This allows him to feel better and get more done during the day." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/what-successful-people-do-before-breakfast-2015-10", sponsorLogo: "", sponsorURL: "")

/////// WEEK 2
// MON
let weekdayNow5to8Tip20 = Tip(header: "🚰", title: "Drink a glass of water when you wake up", body: "Becase we don't drink water while we sleep, we wake up mildly dehydrated. Drink a glass of water first thing to rehydrate, control early morning hunger pains, and helps you wake up." , sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip21 = Tip(header: "☕️", title: "Don't: Drink coffee immediately after you wake up. \nDo: Drink coffee 60-90 minutes after waking up", body: "The moment we awaken, our bodies begin producing cortisol, a hormone that helps us wake up. Caffeine interferes with the production of cortisol, so starting the day immediately with a cup of coffee barely boosts our wakefulness. \n\nWorse, early-morning coffee increases our tolerance for caffeine, which means we must drink even more to obtain its benefits. A better approach is to drink coffee 60-90 minutes after waking up, once our cortisol production has peaked." , sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")

let weekdayNow5to8Tip22 = Tip(header: "🍳", title: "Eat a high-protein breakfast. It reduces junk food cravings later today", body: "Study: Eating a high-protein breakfast was associated with increased feelings of fullness and a reduced desire to eat over the course of the entire day. \n\nParticipants who ate 35 grams of protein in the morning snacked less on fatty foods in the evening, as compared to those who ate cereal or nothing in the morning." , sourceName: "The Atlantic", sourceURL: "https://www.theatlantic.com/health/archive/2013/03/study-eat-protein-in-the-morning/274417/", sponsorLogo: "", sponsorURL: "")

let weekdayNow5to8Tip23 = Tip(header: "", title: "Not a breakfast eater and looking to lose weight? Try intermittent fasting: eating for 8 hours and fasting for 16 hours.", body: "Most people opt for an eating window of 12 p.m. to 8 p.m., meaning you essentially skip breakfast but eat whatever you want within the 8-hour \"feeding\" window. \n\nStudies have found intermittent fasting to be just as reliable for weight loss as traditional diets. Check with your doctor first before you start fasting." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/daily-routine-according-to-science-2017-12", sponsorLogo: "", sponsorURL: "")


// TUE
let weekdayNow5to8Tip24 = Tip(header: "🍳", title: "People who eat breakfast are less likely to gain weight and develop belly fat, study finds", body: "Researchers found that, on average, people who ate breakfast regularly only gained 3 pounds each year, while those who skipped breakfast gained eight pounds. Eating breakfast sets you up for eating healthy for the rest of the day." , sourceName: "CBS News", sourceURL: "https://www.cbsnews.com/news/eat-breakfast-gain-less-weight-belly-fat-study/", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip25 = Tip(header: "🕒", title: "Avoid weight gain by eating your largest meals of the day before 3 p.m.", body: "A study of 420 overweight and obese people found that \"late eaters,\" people classified as eating their biggest meal after 3 p.m., lost significantly less weight — and took longer to lose it — than \"early eaters,\" those who ate their main meal before 3 p.m." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/why-eating-late-bad-unhealthy-2018-1", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip26 = Tip(header: "🍳", title: "Eat breakfast, because skipping breakfast tricks your brain into thinking you want higher-calorie foods, which leads to weight gain", body: "Study: When people skipped breakfast their brain's reward center became more active when the person saw a high-calorie food (pizza and cake) as opposed to a low-calorie food (vegetables and fish). \n\nHowever, when people ate breakfast their brain's reward center did not show any significantly greater activity when the person saw a high-calorie food." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/diet/news/20090615/skip-breakfast-get-fat", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip27 = Tip(header: "📵", title: "Limiting your social media usage to 30 minutes a day leads to significant decreases in depression and loneliness", body: "The study was one of the first to show a cause-and-effect relationship between social media usage and mental health issues. Limiting social media usage can lead to significant improvements in your well-being." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/facebook-instagram-snapchat-social-media-well-being-2018-11", sponsorLogo: "", sponsorURL: "")

// WED
let weekdayNow5to8Tip28 = Tip(header: "🚰", title: "The sooner you can drink a big glass of water (with lemon), the better you'll feel", body: "Hydration reduces fatigue and improves brain performance and mood. Having a large glass of water with lemon in the morning helps stimulate digestion and decrease inflammation, which can improve your memory and focus this morning." , sourceName: "Bustle", sourceURL: "https://www.bustle.com/p/7-ways-to-change-your-morning-routine-that-can-drastically-boost-your-mood-8168589", sponsorLogo: "", sponsorURL: "")

let weekdayNow5to8Tip29 = Tip(header: "📵", title: "Be like Jennifer Aniston: Don't look a your phone in the morning", body: "Jennifer Aniston finds that her happiest days always begin with a device-free routine. \"It felt so liberating not to be tied to [my phone],” she recalls. \"When you start the day the way you should, which is for ourselves, that’s a great way to start your day.\"" , sourceName: "Thrive Global", sourceURL: "https://thriveglobal.com/stories/jennifer-aniston-arianna-huffington-boundaries-technology-happiness-morning-routine/", sponsorLogo: "", sponsorURL: "")

let weekdayNow5to8Tip30 = Tip(header: "🍳", title: "Dieters are more successful at losing weight—and keeping it off—when they eat breakfast every day", body: "If you don't already eat breakfast, start. If you are already a breakfast eater, try eating the same breakfast multiple days each week. Repeating the same meals can help you shed pounds, according to research.", sourceName: "EatingWell", sourceURL: "http://www.eatingwell.com/article/280967/7-small-changes-with-big-results/", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip31 = Tip(header: "⌚️", title: "Arrive on time to work today. People who test high in conscientiousness, such as being on time, earn higher salaries", body: "Research suggests that conscientiousness is the personality trait most often correlated with job performance. Conscientious people tend to be super organized, responsible, and plan ahead. If someone shows up on time, that's a great clue toward conscientiousness, since a punctual person has to be organized enough to arrive on time." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/conscientiousness-predicts-job-performance-2014-12", sponsorLogo: "", sponsorURL: "")


//THUR
let weekdayNow5to8Tip32 = Tip(header: "", title: "30-Second Morning Routine: Do 5-10 reps of any exercise (pushups, situps, squats or lunges)", body: "5-10 reps will wake you up, improve your moood, and bring clarity to your mind as your start your day. If you win the morning, you win the day." , sourceName: "Inc.", sourceURL: "https://www.inc.com/quora/5-simple-things-tim-ferriss-does-every-morning-and-you-should-too.html", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip33 = Tip(header: "", title: "Warning: People who watch just 3 minutes of negative news in the morning are 27% more likely to feel unhappy or depressed today compared to people who watched positive news", body: "Stop being fed doom and gloom on your mobile devices because researchers found that it lowers your work performance and increases your risk of depression. \n\nThe morning hours are priming our brain to either have a good day or a bad day. To improve your performance, researchers suggest seeking out positive news that empower you with potential solutions instead of just focusing on the problems." , sourceName: "Inc.", sourceURL: "https://www.inc.com/marcel-schwantes/this-best-selling-psychologist-says-watching-3-minutes-of-this-every-morning-rui.html", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip34 = Tip(header: "🍳", title: "Eat breakfast. Skipping breakfast is highly correlated with an early dealth", body: "Study finds that people who skipped breakfast were 19% more likely to have died from any cause and 87% more likely to have died of cardiovascular disease than those who had a morning meal." , sourceName: "Inverse", sourceURL: "https://www.inverse.com/article/55187-skipping-breakfast-costs", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip35 = Tip(header: "🤓", title: "What's the one goal which, when tackled, will make everything else you have to do easier or unnecessary?", body: "Block out the first 4 hours of your day to focus on your most important task. Until your one goal is achieved, anything else is a distraction." , sourceName: "Fast Company", sourceURL: "https://www.fastcompany.com/3066982/why-the-most-productive-people-do-these-six-things-every-day", sponsorLogo: "", sponsorURL: "")

//FRI
let weekdayNow5to8Tip36 = Tip(header: "🍽", title: "Prevent weight gain by eating breakfast earlier in the morning", body: "Study: Later meal timing was associated with a higher body mass index as well as greater body fat." , sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2019/03/190323145204.htm", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip37 = Tip(header: "", title: "Feel happier: When you first wake up, think of 3 things you're grateful for", body: "Priming your brain with positive information at the very start of your day puts your attention on the good in your life rather than the bad. As a result, you're reprogramming your brain to have a more upbeat world view. \n\nGratitude makes you happier, more resilient, more likeable, and can literally add years to your life." , sourceName: "", sourceURL: "", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip38 = Tip(header: "", title: "80% of the world-class performers Tim Ferriss interviewed for his book, “Tools of Titans,” had a mindfulness ritual in their morning routine", body: "By meditating, \"you’re practicing focus when it doesn’t matter (sitting on a couch for 10 minutes) so that you can focus better later when it does matter (negotiation, conversation with a loved one, etc.),\" he writes. \n\nFerriss recommends first-timers try a meditation app, like Headspace or Calm." , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2017/01/23/tim-ferriss-5-step-morning-routine.html", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip39 = Tip(header: "", title: "Write down the most important tasks that you need to complete today. It helps you simplify your life by focusing on what really counts", body: "These tasks are ones which support important long term goals that are aligned to your purpose, passion or general direction in life. \n\n\"If you have a goal, write it down. If you do not write it down, you do not have a goal - you have a wish.\" - Steve Maraboli" , sourceName: "Lifehack", sourceURL: "https://www.lifehack.org/articles/lifestyle/7-morning-rituals-empower-your-day-change-your-life.html", sponsorLogo: "", sponsorURL: "")

//Week 3
//MON
let weekdayNow5to8Tip40 = Tip(header: "", title: "Weight Loss: Drink water first thing in the morning. Don't drink coffee until 9 a.m.", body: "Study: Participants who drank 17 ounces of water (about two glasses) increased their metabolic rate by 30%, allowing them to burn more calories. Make it a habit to drink water before you drink coffee. \n\nBecause your cortisol levels naturally rise in the morning after you wake and peak between 8-9 a.m., having coffee before or during this time may result in increased stress and its stimulating effects won’t be as effective than after 9 a.m." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/surprising-habits-affecting-health/", sponsorLogo: "", sponsorURL: "")
let weekdayNow5to8Tip41 = Tip(header: "", title: "Morning exercise of moderate-intensity, such as a brisk walk, improves cognitive performance like decision-making across the day compared to prolonged sitting without exercise", body: "Furthermore, the study found that a morning bout of exercise combined with brief 3 minute walking breaks during an 8-hour day of prolonged sitting can boost your short-term memory compared to uninterrupted sitting." , sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2019/04/190429154529.htm", sponsorLogo: "", sponsorURL: "")
//let weekdayNow5to8Tip42
//let weekdayNow5to8Tip43



//TUES
let weekdayNow5to8Tip44 = Tip(header: "", title: "Drinking water before dinner reduces your risk of heartburn and indigestion", body: "When you drink water on an empty stomach, the acid in your stomach is pushed down and gets diluted, reducing your risk of stomach acid flowing back into esophagus.", sourceName: "LifeHack", sourceURL: "https://www.lifehack.org/449117/when-you-drink-water-on-an-empty-stomach-after-waking-up-these-8-amazing-things-will-happen", sponsorLogo: "", sponsorURL: "")
//let weekdayNow5to8Tip45
//let weekdayNow5to8Tip46
//let weekdayNow5to8Tip47



//WED
let weekdayNow5to8Tip48 = Tip(header: "", title: "Drinking water on an empty stomach in the morning will flush out harmful toxins, leaving your body fresh and healthy", body: "As you drink water, it prevents bladder infections caused by toxins and naturally urges movement in your bowels. Drinking water also strengthens your immune system, preventing you from getting sick as often.", sourceName: "LifeHack", sourceURL: "https://www.lifehack.org/449117/when-you-drink-water-on-an-empty-stomach-after-waking-up-these-8-amazing-things-will-happen", sponsorLogo: "", sponsorURL: "")


//WEEK 1
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

//WEEK 2
// MON
let weekdayNow5to8TipArray5 = [weekdayNow5to8Tip20, weekdayNow5to8Tip21, weekdayNow5to8Tip22, weekdayNow5to8Tip23]
let weekdayNow5to8Topic5 = Topic(title: weekdayNow5to8Title, icon: weekdayNow5to8Icon, tip: weekdayNow5to8TipArray5)

// TUE
let weekdayNow5to8TipArray6 = [weekdayNow5to8Tip24, weekdayNow5to8Tip25, weekdayNow5to8Tip26, weekdayNow5to8Tip27]
let weekdayNow5to8Topic6 = Topic(title: weekdayNow5to8Title, icon: weekdayNow5to8Icon, tip: weekdayNow5to8TipArray6)

// WED
let weekdayNow5to8TipArray7 = [weekdayNow5to8Tip28, weekdayNow5to8Tip29, weekdayNow5to8Tip30, weekdayNow5to8Tip31]
let weekdayNow5to8Topic7 = Topic(title: weekdayNow5to8Title, icon: weekdayNow5to8Icon, tip: weekdayNow5to8TipArray7)

// THU
let weekdayNow5to8TipArray8 = [weekdayNow5to8Tip32, weekdayNow5to8Tip33, weekdayNow5to8Tip34, weekdayNow5to8Tip35]
let weekdayNow5to8Topic8 = Topic(title: weekdayNow5to8Title, icon: weekdayNow5to8Icon, tip: weekdayNow5to8TipArray8)

// FRI
let weekdayNow5to8TipArray9 = [weekdayNow5to8Tip36, weekdayNow5to8Tip37, weekdayNow5to8Tip38, weekdayNow5to8Tip39]
let weekdayNow5to8Topic9 = Topic(title: weekdayNow5to8Title, icon: weekdayNow5to8Icon, tip: weekdayNow5to8TipArray9)

//WEEK3


// MARK: - Now, Weekday, 9to11

let weekdayNow9to11Title = "Now, Weekday, 9to11"
let weekdayNow9to11Icon = "Now"
//Week 1
// MON
let weekdayNow9to11Tip0 = Tip(header: "🚶‍♂️", title: "People who take mid-morning breaks are more focused and happier than those who don't take breaks", body: "Research: People who took a break before lunch were not only more energetic and focused, but they also experienced less headaches, eyestrain and lower back pain, and were happier with their jobs and felt less burned out." , sourceName: "USA Today", sourceURL: "https://www.usatoday.com/story/money/business/2015/10/10/cheat-sheet-work-break/73417008/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow9to11Tip1 = Tip(header: "💻", title: "Increase productivity: Block time at work to respond to emails, return calls, and other admin tasks", body: "It takes an average of 26 minutes to recover from trivial interruptions. If you respond to every email that hits your inbox you’ll never stay ahead. Block time for these tasks and don't touch these tasks outside of your set time block." , sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/ashleystahl/2017/10/20/4-ways-to-be-more-productive-at-work/#7638ce9f19eb", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow9to11Tip2 = Tip(header: "🚶‍♂️", title: "Take regular breaks at work to keep your energy levels high and your mind fresh", body: "Working at a task without breaks leads to a steady decline in performance. Working for 90 minutes straight, and then take a 15 minute break may be best for maximizing productivity. If this doesn't work, shorten that interval to 60 or 75 minutes." , sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/ashleystahl/2017/10/20/4-ways-to-be-more-productive-at-work/#7638ce9f19eb", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow9to11Tip3 = Tip(header: "☀️", title: "People exposed to sunlight or bright indoor lights during the morning hours, between 8 a.m. and Noon, sleep better at night", body: "Exposure to light during the day helps to calibrate the body’s internal “circadian” clock. A lack of good quality sleep has been linked to mental and physical health problems, including issues with mood, thinking, metabolism and the immune system.", sourceName: "Reuters", sourceURL: "https://www.reuters.com/article/us-health-sleep-daylight/morning-daylight-exposure-tied-to-a-good-nights-sleep-idUSKCN18E23E", sponsorLogo: "", sponsorURL: "")

// TUES
let weekdayNow9to11Tip4 = Tip(header: "🤔", title: "Having your smartphone in reach, even if it’s silenced or turned off lowers your ability to think", body: "Research: People who kept their phones in another room significantly outperformed the ones who kept them nearby in concentration tests. Having your phone within reach makes it harder to focus because a percentage of the brain has to actively work to not pick up or use the device.", sourceName: "Inc.", sourceURL: "https://www.inc.com/christina-desmarais/heres-why-you-need-to-put-your-phone-away-according-to-science.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow9to11Tip5 = Tip(header: "😀", title: "You only have 7 seconds to make a good \"first impression\"", body: "First impressions are more influenced by your facial appearance and body language than your words. So, straighten your posture, make eye contact, and smile. Standing tall, pulling your shoulders back, and holding your head straight are all signals of confidence and competence.", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/carolkinseygoman/2011/02/13/seven-seconds-to-make-a-first-impression/#3b38025d2722", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow9to11Tip6 = Tip(header: "🚶‍♂️", title: "Sitting for more than 8 hours a day with no physical activity results in the same risk of dying as posed by obesity and smoking", body: "Long periods of sitting causes excess body fat around the waist and increases the risk of death from cardiovascular disease and cancer. For better health, take a break from sitting every 30 minutes, stand while talking on the phone, and try a standing desk at work.", sourceName: "Mayo Clinic", sourceURL: "https://www.mayoclinic.org/healthy-lifestyle/adult-health/expert-answers/sitting/faq-20058005", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow9to11Tip7 = Tip(header: "👫", title: "Ask a friend to meet for drinks or dinner tonight - it's a healthy after-work ritual", body: "Not only does making plans give you something to look forward to, but it creates empathy, support, and bonding — all of which are great ways for you to de-stress after work, and allow you to head home with a clear mind and heart." , sourceName: "Bustle", sourceURL: "https://www.bustle.com/articles/159080-11-healthy-after-work-habits-to-try-instead-of-sitting-on-the-couch-all-night", sponsorLogo: "TBD", sponsorURL: "www.test.com")

// WED
let weekdayNow9to11Tip8 = Tip(header: "🤓", title: "For most adults, it's best to do analytical work that requires heads-down attention in the morning", body: "When we wake up, our body temperatures rise boosting our energy levels and alertness—and that, in turn, enhances our ability to concentrate and stay focused. Alertness and energy levels rise in the morning, peak in the late morning or around noon, and decrease during the afternoons." , sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
let weekdayNow9to11Tip9 = Tip(header: "😀", title: "Project confidence, high self-esteem, and create an emotional connection with the person you are speaking with by making eye contact 60% to 70% of the time", body: "Eye contact shows a person's social hierarchy and dominance in a conversation. When someone is talking to you, make sure you look them in the eye. Looking down or looking around makes you look nervous. People who are of high social status look longer at their subject and they also receive more eye contact in return.", sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2017/08/17/how-making-eye-contact-can-help-you-appear-more-confident-at-work.html", sponsorLogo: "", sponsorURL: "")
let weekdayNow9to11Tip10 = Tip(header: "🚶‍♂️", title: "Research: Those who take workday breaks earlier in the day (around 10AM-11AM) reported more energy, concentration, motivation, and job satisfaction, compared to those who saved their breaks for the afternoon", body: "Employees who took breaks earlier in the day had less symptoms of poor health, including headache, eyestrain, and lower back pain after the break. These employees also experienced increased job satisfaction and a decrease in emotional exhaustion (burnout).", sourceName: "Baylor University", sourceURL: "https://www.baylor.edu/mediacommunications/news.php?action=story&story=159785", sponsorLogo: "", sponsorURL: "")
let weekdayNow9to11Tip11 = Tip(header: "🗣", title: "Humans use voice pitch to communicate social status. Speak to people in a lower pitch in order to display high social status", body: "Both men and women tend to talk to high status individuals using a higher pitch. A deep, masculine voice sounds dominant, especially in men, while the opposite is true of a higher pitched voice. \n\nSo, if someone perceives the person they are speaking with to be more dominant than them, they raise their pitch. This may be a signal of submissiveness, to show the listener that you are not a threat, and to avoid possible confrontations." , sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2017/06/170629101721.htm", sponsorLogo: "", sponsorURL: "")

// THURS
let weekdayNow9to11Tip12 = Tip(header: "💻", title: "Constantly checking your email makes you more stressed and less productive. Only check email 2-3 times a day", body: "Researchers put participants into 2 groups, with one told to check email 3 times a day and another told to check it as often as they wanted. The group that checked email 3 times a day reduced the amount of time they spent answering messages by 20%." , sourceName: "Fast Company", sourceURL: "https://www.fastcompany.com/3066982/why-the-most-productive-people-do-these-six-things-every-day", sponsorLogo: "", sponsorURL: "")
let weekdayNow9to11Tip13 = Tip(header: "☀️", title: "Get sun exposure within 2 hours of waking up", body: "Morning sun exposure helps your circadian clock to reset itself for a new day and will help you fall asleep tonight." , sourceName: "SUCESS Magazine", sourceURL: "https://www.success.com/the-new-secrets-of-perfect-sleep/", sponsorLogo: "", sponsorURL: "")
let weekdayNow9to11Tip14 = Tip(header: "☀️", title: "Tired? Get as much sunlight as you can", body: "The sun, unlike most lightbulbs, emits light that covers a wide range of the color spectrum. When these extra wavelengths hit your eyes, they signal your brain to stop producing sleep hormones and start producing alertness hormones.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
let weekdayNow9to11Tip15 = Tip(header: "🚶‍♂️", title: "Shorter, more frequent breaks, especially walking breaks, increases your productivity throughout the day", body: "Study: Hourly 5-minute walking breaks boosted energy levels, sharpened focus, and improved mood throughout the day and reduced feelings of fatigue in the late afternoon. Shorter, more frequent breaks were more effective than a single 30 minute walking break.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")

// FRI
let weekdayNow9to11Tip16 = Tip(header: "🚰", title: "Drink 6-8 glasses of water thorughout the day", body: "Being even slightly dehydrated will make you tired and lower your concentration. Don’t wait until you feel thirsty before drinking either – by the time thirst kicks in you are already dehydrated.", sourceName: "Weight Loss Resources", sourceURL: "https://www.weightlossresources.co.uk/diet/healthy_eating/beat-afternoon-energy-slump.htm", sponsorLogo: "", sponsorURL: "")
let weekdayNow9to11Tip17 = Tip(header: "☀️", title: "Get at least 20 to 30 minutes of sunlight light before noon to lower your body mass index (BMI) and prevent weight gain", body: "Not getting enough light before noon disturbs your internal body clock, which is known to alter metabolism and lead to weight gain (increased BMI). In one study, morning light exposure accounted for about 20% of a person’s BMI.", sourceName: "Northwestern University", sourceURL: "https://news.northwestern.edu/stories/2014/04/morning-rays-keep-off-the-pounds", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow9to11Tip18 = Tip(header: "😀", title: "Perform 5 acts of kindness today makes your happier", body: "Study: People who performed 5 acts of kindness during a single day experienced a significant increase in well-being, while people who either did nothing or who spread the 5 acts of kindness out over a week did not experience an increase in well-being.", sourceName: "American Psychological Association", sourceURL: "https://www.apa.org/monitor/oct06/key", sponsorLogo: "", sponsorURL: "")
let weekdayNow9to11Tip19 = Tip(header: "", title: "Millionaire Habit: Write down a to-do list for today", body: "Those who maintain both a calendar and to-do list are 289% more likely to be millionaires, as compared with those who have no real set schedule. \n\nHigh-achievers have clear goals, specific plans, and hard deadlines. And when you’re setting goals, don’t be afraid to think big.", sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2018/07/05/habits-to-start-if-you-want-to-get-rich.html", sponsorLogo: "", sponsorURL: "")


//WEEK 2
//MON
let mondayNow9to11Week2Tip1 = Tip(header: "😟", title: "Monday is the most anxious day of the week, study finds", body: "An analysis of Google searches, by each day of the week, found that people searched for the term \"anxiety\" the most on Monday, followed by Tuesday, Wednesday, and Thursday. Feeling anxious today? It's okay, you're not alone" , sourceName: "The Washington Post", sourceURL: "https://www.washingtonpost.com/news/wonk/wp/2014/12/03/the-google-misery-index-the-times-of-year-were-most-depressed-anxious-and-stressed/?utm_term=.ce96d202a3f3", sponsorLogo: "", sponsorURL: "")
let mondayNow9to11Week2Tip2 = Tip(header: "📝", title: "A 5-year study of rich and poor people found that rich people have a daily to-do list", body: "81%% of rich people vs. only 19% of poor people maintain a daily to-do list. And 67% of rich people complete them 70% or more of their listed tasks each day." , sourceName: "Entrepreneur", sourceURL: "https://www.entrepreneur.com/article/235228", sponsorLogo: "", sponsorURL: "")
let mondayNow9to11Week2Tip3 = Tip(header: "📝", title: "CEO's advice to help anyone find a great business idea: Every day, write down a few frustrations. And then at the end of the week, you'll have maybe 10 problems", body: "By the end of the month, maybe you have 40 to 50 problems. And then you can spend time thinking about: Is there a viable business in solving any of these everyday frustrations?" , sourceName: "Business Insider", sourceURL: "", sponsorLogo: "", sponsorURL: "")
let mondayNow9to11Week2Tip4 = Tip(header: "🍽", title: "Prevent weight gain by eating lunch around noon (or earlier)", body: "Study: Later meal timing was associated with a higher body mass index as well as greater body fat." , sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2019/03/190323145204.htm", sponsorLogo: "", sponsorURL: "")

//TUE
let tuesdayNow9to11Week2Tip1 = Tip(header: "😤", title: "In a bad mood today? It's okay, you're not alone", body: "An analysis of Google searches, by each day of the week, found that people searched for the terms \"anxiety\", \"depression\", \"stress\", \"fatigue\", and \"pain\" the most on Tuesday and Wednesday, making them tied for the most miserable days of the week." , sourceName: "The Washington Post", sourceURL: "https://www.washingtonpost.com/news/wonk/wp/2014/12/03/the-google-misery-index-the-times-of-year-were-most-depressed-anxious-and-stressed/?utm_term=.ce96d202a3f3", sponsorLogo: "", sponsorURL: "")
let tuesdayNow9to11Week2Tip2 = Tip(header: "🍽", title: "For people who are trying to lose weight, eat most of your calories earlier in the day and then consume less at night", body: "Studies have found that when people eat more at night, they put on more weight." , sourceName: "Vox", sourceURL: "https://www.vox.com/2016/2/17/11034546/eating-late-night-bad-diet", sponsorLogo: "", sponsorURL: "")
let tuesdayNow9to11Week2Tip3 = Tip(header: "☀️", title: "Get sun exposure within 2 hours of waking up", body: "Morning sun exposure helps your circadian clock to reset itself for a new day and will help you fall asleep tonight." , sourceName: "SUCESS Magazine", sourceURL: "https://www.success.com/the-new-secrets-of-perfect-sleep/", sponsorLogo: "", sponsorURL: "")
let tuesdayNow9to11Week2Tip4 = Tip(header: "🙅‍♀️", title: "If you want to receive less email, send less emails", body: "LinkedIn CEO Jeff Weiner's golden rule for email management, is, don't send an email unless absolutely necessary. When you send an email, your inbox fills up with the responses from your emails and with the responses of the people who were added to those threads." , sourceName: "Inc.", sourceURL: "https://www.inc.com/business-insider/email-habits-of-successful-executives.html", sponsorLogo: "", sponsorURL: "")

//WED

let wednesdayNow9to11Week2Tip1 = Tip(header: "", title: "Live longer: Get \"smart\" sun exposure (about 15 minutes on the legs and arms) each day", body: "Sun exposure helps your body produce vitamin D for strong bones and healthy body function. Vitamin D deficiency is associated with a host of problems, such as osteoporosis and heart disease.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")
let wednesdayNow9to11Week2Tip2 = Tip(header: "😤", title: "In a bad mood today? It's okay, you're not alone", body: "An analysis of Google searches, by each day of the week, found that people searched for the terms \"anxiety\", \"depression\", \"stress\", \"fatigue\", and \"pain\" the most on Tuesday and Wednesday, making them tied for the most miserable days of the week." , sourceName: "The Washington Post", sourceURL: "https://www.washingtonpost.com/news/wonk/wp/2014/12/03/the-google-misery-index-the-times-of-year-were-most-depressed-anxious-and-stressed/?utm_term=.ce96d202a3f3", sponsorLogo: "", sponsorURL: "")
let wednesdayNow9to11Week2Tip3 = Tip(header: "", title: "Live Longer: Drink coffee or tea", body: "Both coffee and tea drinkers benefit from a 20–30% lower risk of early death, from cancer and disease, compared to non-drinkers. \n\nHowever, too much caffeine can also lead to anxiety and insomnia, so limit your intake to around 4 cups per day." , sourceName: "Healthline", sourceURL: "https://www.healthline.com/nutrition/13-habits-linked-to-a-long-life", sponsorLogo: "", sponsorURL: "")
let wednesdayNow9to11Week2Tip4 = Tip(header: "", title: "Prevent Wrinkles: Wear UV sunglasses (even on cloudy days)", body: "Squinting can cause overuse of the facial muscles, causing wrinkles. UV sunglasses can help block out UV rays, protecting not only your vision, but your skin." , sourceName: "Bustle", sourceURL: "https://www.bustle.com/articles/193394-7-weird-but-effective-habits-that-help-prevent-wrinkles", sponsorLogo: "", sponsorURL: "")

//THU
let thursdayNow9to11Tip1 = Tip(header: "", title: "Study: Brief 3 minute walking breaks during an 8-hour day of prolonged sitting can boost your short-term memory compared to uninterrupted sitting", body: "The study highlights that uninterrupted sitting should be avoided to maintain optimal cognition across the day, and that moderate-intensity exercise such as a brisk walk should be encouraged for the daily maintenance of brain health." , sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2019/04/190429154529.htm", sponsorLogo: "", sponsorURL: "")

//FRI


//WEEK 1
// MON
let weekdayNow9to11TipArray0 = [weekdayNow9to11Tip0, weekdayNow9to11Tip1, weekdayNow9to11Tip2, weekdayNow9to11Tip3]
let weekdayNow9to11Topic0 = Topic(title: weekdayNow9to11Title, icon: weekdayNow9to11Icon, tip: weekdayNow9to11TipArray0)
// TUE
let weekdayNow9to11TipArray1 = [weekdayNow9to11Tip4, weekdayNow9to11Tip5, weekdayNow9to11Tip6, weekdayNow9to11Tip7]
let weekdayNow9to11Topic1 = Topic(title: weekdayNow9to11Title, icon: weekdayNow9to11Icon, tip: weekdayNow9to11TipArray1)
// WED
let weekdayNow9to11TipArray2 = [wednesdayNow9to11Week2Tip1, weekdayNow9to11Tip9, weekdayNow9to11Tip10, weekdayNow9to11Tip11]
let weekdayNow9to11Topic2 = Topic(title: weekdayNow9to11Title, icon: weekdayNow9to11Icon, tip: weekdayNow9to11TipArray2)
// THU
let weekdayNow9to11TipArray3 = [weekdayNow9to11Tip12, weekdayNow9to11Tip13, weekdayNow9to11Tip14, weekdayNow9to11Tip15]
let weekdayNow9to11Topic3 = Topic(title: weekdayNow9to11Title, icon: weekdayNow9to11Icon, tip: weekdayNow9to11TipArray3)
// FRI
let weekdayNow9to11TipArray4 = [weekdayNow9to11Tip16, weekdayNow9to11Tip17, weekdayNow9to11Tip18, weekdayNow9to11Tip19]
let weekdayNow9to11Topic4 = Topic(title: weekdayNow9to11Title, icon: weekdayNow9to11Icon, tip: weekdayNow9to11TipArray4)

//WEEK 2
// MON
let weekdayNow9to11TipArray5 = [mondayNow9to11Week2Tip1, mondayNow9to11Week2Tip2, mondayNow9to11Week2Tip3, mondayNow9to11Week2Tip4]
let weekdayNow9to11Topic5 = Topic(title: weekdayNow9to11Title, icon: weekdayNow9to11Icon, tip: weekdayNow9to11TipArray5)
// TUE (WIP)
let weekdayNow9to11TipArray6 = [tuesdayNow9to11Week2Tip1, tuesdayNow9to11Week2Tip2, tuesdayNow9to11Week2Tip3, tuesdayNow9to11Week2Tip4]
let weekdayNow9to11Topic6 = Topic(title: weekdayNow9to11Title, icon: weekdayNow9to11Icon, tip: weekdayNow9to11TipArray6)
// WED (WIP)
let weekdayNow9to11TipArray7 = [wednesdayNow9to11Week2Tip1, wednesdayNow9to11Week2Tip2, wednesdayNow9to11Week2Tip3, wednesdayNow9to11Week2Tip4]
let weekdayNow9to11Topic7 = Topic(title: weekdayNow9to11Title, icon: weekdayNow9to11Icon, tip: weekdayNow9to11TipArray7)
// THU (WIP)
let weekdayNow9to11TipArray8 = [thursdayNow9to11Tip1, weekdayNow9to11Tip13, weekdayNow9to11Tip14, weekdayNow9to11Tip15]
let weekdayNow9to11Topic8 = Topic(title: weekdayNow9to11Title, icon: weekdayNow9to11Icon, tip: weekdayNow9to11TipArray8)
// FRI (WIP)
let weekdayNow9to11TipArray9 = [weekdayNow9to11Tip16, weekdayNow9to11Tip17, weekdayNow9to11Tip18, weekdayNow9to11Tip19]
let weekdayNow9to11Topic9 = Topic(title: weekdayNow9to11Title, icon: weekdayNow9to11Icon, tip: weekdayNow9to11TipArray9)


// MARK: - Now, Weekday, 11to13

let weekdayNow11to14Title = "Now, Weekday, 11to13"
let weekdayNow11to14Icon = "Now"

//WEEK 1
// MON
let weekdayNow11to14Tip0 =  Tip(header: "🚰", title: "Drinking water keeps you alert during the day", body: "Dehydration is the single most common cause of daytime fatigue. A 2% dehydration level can trigger short-term memory problems and difficulty focusing on a computer screen or printed page." , sourceName: "Shape", sourceURL: "https://www.shape.com/healthy-eating/healthy-drinks/6-reasons-drinking-water-helps-solve-any-problem", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow11to14Tip1 = Tip(header: "🚶‍♂️", title: "Be happier and more productive at work by taking multiple walking breaks", body: "Taking a walk will get your muscles moving and the oxygen flowing, and it also allows you to clear your head.", sourceName: "Huffington Post", sourceURL: "https://www.businessinsider.com/successful-people-do-during-afternoon-lull-2014-4", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow11to14Tip2 = Tip(header: "☝️", title: "Multitasking lowers productivity by 40%, increases the chance of errors by up to 50%, and increases the time to complete a task by 50%", body: "On average, it can take up to 25 minutes to resume the task after being interrupted. Focus on one thing exclusively, and you’ll find yourself completing it much faster." , sourceName: "Inc.", sourceURL: "https://www.inc.com/laura-montini/infographic/the-high-cost-of-multitasking.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow11to14Tip3 = Tip(header: "😰", title: "The next time you get stressed at work, pause before you respond", body: "The more something makes you mad or causes your heart to race, the more important it is to take a deep breath before speaking or typing a single word because you risk making the situation worse." , sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/advice/work-career/successful-people-habits-work/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

// TUE
//// TUESDAY, 11AM-1PM
let tuesdayNow11to14Tip0 = Tip(header: "😰", title: "11:45am on Tuesday is the most stressful time of the work week, survey suggests", body: "Tuesday is when workers are most likely to work through their lunch break and stay late at work. Eating healthy foods and drinking enough water keeps your energy levels high when you're busy." , sourceName: "The Telegraph", sourceURL: "https://www.telegraph.co.uk/news/newstopics/howaboutthat/5113653/Tuesday-at-1145-is-most-stressful-time-of-the-week-survey-suggests.html", sponsorLogo: "", sponsorURL: "")//Tuesday-specific
let weekdayNow11to14Tip4 = Tip(header: "🚰", title: "Drinking 8 to 10 cups of water per day can improve your levels of cognitive performance by 30%", body: "A dehydration level of just 1% of your body weight reduces thinking functions, so staying well-hydrated is important for your mental performance." , sourceName: "Shape", sourceURL: "https://www.shape.com/healthy-eating/healthy-drinks/6-reasons-drinking-water-helps-solve-any-problem", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow11to14Tip5 = Tip(header: "🎶", title: "Listening to music you like, especially songs without lyrics, improves your mood and productivity", body: "Research: participants who listened to music they enjoyed completed their tasks more quickly and came up with better ideas than those who didn't because the music improved their mood. Music is also effective in raising efficiency in repetitive work." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/the-best-music-for-productivity-2015-7", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow11to14Tip6 = Tip(header: "🗣", title: "Workers lose as much as 86 minutes per day due to noise distractions", body: "Wear large, over-the-ear headphones to help block out unwanted noise. Or, listen to white noise to mask conversations. Employees should speak to an office manager or human resources director on this issue." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2015/03/stop-noise-from-ruining-your-open-office", sponsorLogo: "TBD", sponsorURL: "www.test.com")

// WED
let weekdayNow11to14Tip7 = Tip(header: "👫", title: "The more you use Facebook/social media, the worse you feel", body: "While real-world social networks were positively associated with overall well-being, the use of Facebook was negatively associated with overall well-being. Liking others’ content and clicking links significantly predicted a reduction in self-reported physical health, mental health, and life satisfaction." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2017/04/a-new-more-rigorous-study-confirms-the-more-you-use-facebook-the-worse-you-feel", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow11to14Tip8 = Tip(header: "🗣", title: "Nearby speech distracts 48% of office workers. Increase your focus and mood by listening to nature sounds while you work", body: "Sounds of nature can mask intelligible speech just as well as white noise while also enhancing cognitive functioning, optimizing the ability to concentrate, and increasing overall worker satisfaction." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/the-best-music-for-productivity-2015-7", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow11to14Tip9 = Tip(header: "🌻", title: "Decorating your office with plants or pictures of your family or pet can increase productivity up to 15%", body: "Seeing plants around you can improve morale, increase satisfaction with your work, and make you more patient. Set your screensaver or web browser to display nature images." , sourceName: "Inc.", sourceURL: "https://www.inc.com/john-rampton/15-ways-to-increase-productivity-at-work.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow11to14Tip10 = Tip(header: "🚶‍♂️", title: "Be perceived as confident: Stand tall, with your neck elongated, ears and shoulders aligned, chest slightly sticking out, and legs slightly apart", body: "This changes the chemicals in our brain to make us feel stronger and more confident, and it gives the outward appearance of credibility, strength, and vitality." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/common-body-language-mistakes-employees-make-2014-4", sponsorLogo: "TBD", sponsorURL: "www.test.com")

// THUR
let weekdayNow11to14Tip11 = Tip(header: "😀", title: "Holding eye contact while speaking denotes authority, confidence, and has an enormous impact on your ability to persuade", body: "Lack of eye contact often implies deception. When breaking eye contact, it is better to break off to the left or to the right, as looking down suggests insecurity." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/common-body-language-mistakes-employees-make-2014-4", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow11to14Tip12 = Tip(header: "☀️", title: "Spending 20 minutes outside in good weather improves mood, memory, and thinking", body: "20 minutes is a short enough time to spend outside that you could fit it into your your lunch break or afternoon break." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/belle-beth-cooper/10-simple-things-to-be-happy_b_4241824.html", sponsorLogo: "", sponsorURL: "")
let weekdayNow11to14Tip13 = Tip(header: "📵", title: "Our maximum attention span these days is 15 minutes. Here's how to stay focused", body: "Concentrate on one task for 15-30 minutes. Don't check your emails, texts, or social media. Silence your phone and turn it facedown. Notifications cause your brain to switch your focus regardless of whether you want to or not." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/psychologist-gives-tip-for-staying-focused-2015-11", sponsorLogo: "", sponsorURL: "")
let weekdayNow11to14Tip14 = Tip(header: "🌬", title: "Reduce stress with 45 seconds of controlled breathing", body: "Take a deep breath, expanding your belly. Pause. Exhale slowly to the count of 5. Repeat 4 times. \n\nThis can reduce your stress hormones, sharpen your thinking, and improve your immune system." , sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")

// FRI
let weekdayNow11to14Tip15 = Tip(header: "🙅‍♀️", title: "Avoid multitasking. A decade’s worth of research found that heavy multitaskers have reduced memory", body: "If you’re multitasking while doing something significant, like an academic paper or work project, you’ll be slower to complete it and you might be less successful." , sourceName: "Stanford University", sourceURL: "https://news.stanford.edu/2018/10/25/decade-data-reveals-heavy-multitaskers-reduced-memory-psychologist-says/", sponsorLogo: "", sponsorURL: "")
let weekdayNow11to14Tip16 = Tip(header: "🔥", title: "Burn calories while sitting by fidgeting (tapping feet and fingers, twirling hair, and gesturing while speaking)", body: "Studies show that lean people fidget for about 150 minutes a day more than obese people do. Fidgeting can burn 350 calories a day, which translates into 10-30 pounds a year. \n\nLong periods of sitting increases the risk of obesity, heart disease, and cancer." , sourceName: "Lifehacker", sourceURL: "https://lifehacker.com/5323740/use-neat-activities-to-burn-more-calories", sponsorLogo: "", sponsorURL: "")
let weekdayNow11to14Tip17 = Tip(header: "🌬", title: "\"Box breathing\" reduces stress and helps you keep cool under pressure", body: "Focusing on your breath is one of the simplest ways to relax. \n\n• Count to 4 as you inhale \n• Hold for 4 \n• Count to 4 as you exhale \n• Hold for 4 \n• Repeat 4x4x4x4" , sourceName: "Curiosity", sourceURL: "https://curiosity.com/topics/box-breathing-is-the-navy-seal-technique-for-reducing-stress-and-staying-calm-curiosity/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow11to14Tip18 = Tip(header: "😀", title: "Research shows that practicing gratitude immediately boosts your mood", body: "Quickly think of 1-3 things you're thankful for, whether its for your family and friends, your health, or the nice weather." , sourceName: "The Thirty", sourceURL: "https://thethirty.byrdie.com/mindfulness-tips-ideas", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//WEEK 2
//MON
let weekdayNow11to14Tip19 = Tip(header: "🚶‍♂️", title: "Frequent short breaks are more effective than irregular breaks", body: "The ideal break also involves movement. Study: Hourly 5-minute walking breaks boosted energy levels, sharpened focus and improved mood throughout the day and reduced feelings of fatigue in the late afternoon. These \"microbursts of activity,\" as the researchers called them, were also more valuable than a single 30-minute walking break." , sourceName: "The Wall Street Journal", sourceURL: "https://www.wsj.com/articles/how-to-be-healthier-happier-and-more-productive-its-all-in-the-timing-1514560647", sponsorLogo: "", sponsorURL: "")
let weekdayNow11to14Tip20 = Tip(header: "😴", title: "In the afternoon, adenosine (sleep hormone) is high and cortisol (stress hormone that supports alertness and energy) is dropping", body: "Some people feel less energetic for this reason and might benefit from gentle exercise, meditation or a nap. Others might find a moderate or vigorous workout helps them finish the day strong. \n\nIf you feel completely wiped out in the afternoon, you should consult with your doctor because it could be a sign of underlying health issues." , sourceName: "American Council on Exercise", sourceURL: "https://www.acefitness.org/education-and-resources/professional/expert-articles/6929/when-is-the-best-time-of-day-to-exercise", sponsorLogo: "", sponsorURL: "")
let weekdayNow11to14Tip21 = Tip(header: "", title: "Live longer: Drink 5-6 glasses of water every day", body: "Study: Men who drank 5-6 daily glasses of water had a substantial reduction in the risk of a fatal heart attack - 60% to 70% - compared to those who drank considerably less.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")
let weekdayNow11to14Tip22 = Tip(header: "☀️", title: "Lower your risk of skin cancer: Reduce sun exposure between 10 a.m. and 4 p.m.", body: "If you have to be outside during this time: \n\n• Work in the shade \n\n• Apply (and reapply) sunscreen \n\n• Wear a wide-brimmed hat that protects your face and neck", sourceName: "Raleigh Medical Group", sourceURL: "https://www.raleighmedicalgroup.com/blog/entryid/185/skin-cancer-prevention", sponsorLogo: "", sponsorURL: "")

//TUES
let weekdayNow11to14Tip23 = Tip(header: "", title: "Live longer: Add more movement into your life by living in neighborhoods with sidewalks, commuting to places by bike, and planting a garden each spring", body: "A study of 100+ year-olds in Greece found that they exercised mindlessly, but just gardening, walking to their neighbor's house, or doing their own yard work.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")
let weekdayNow11to14Tip24 = Tip(header: "", title: "Project confidence: It's all in your posture. When standing, imagine a string pulling your head up toward the sky", body: "To stand confidently, keep your legs aligned with your shoulders and your feet approximately four to six inches apart. Distribute your weight equally on both legs, keep your shoulders back—but not way back—and turn your body towards others. \n\nAvoid standing in a \"submissive position\" with your legs crossed, hands folded in front of you, or weight pressed down on one hip. ", sourceName: "American Express", sourceURL: "https://www.americanexpress.com/en-us/business/trends-and-insights/articles/4-ways-your-body-language-can-project-confidence/", sponsorLogo: "", sponsorURL: "")

//WED
let weekdayNow11to14Tip27 = Tip(header: "", title: "Project confidence: When you're able to maintain eye contact, you're communicating to others that you're honest, approachable and confident.", body: "Those who aren't able to maintain eye contact or are the first to break eye contact signal that they're hiding something, feeling uncomfortable, or projecting a lower-status than or submissiveness to the person they're speaking with.", sourceName: "American Express", sourceURL: "https://www.americanexpress.com/en-us/business/trends-and-insights/articles/4-ways-your-body-language-can-project-confidence/", sponsorLogo: "", sponsorURL: "")

//THUR
let weekdayNow11to14Tip31 = Tip(header: "", title: "Project confidence: Have good posture while sitting", body: "Sit with your back straight with your rear toward the back of the chair, and your feet planted firmly on the floor. \n\nThis kind of sitting position puts the least amount of strain on supporting muscles, keeps you from back and neck pains and helps you develop a strong core—all essential for good standing posture. Additionally, good posture opens your airways, which ensures proper breathing.", sourceName: "American Express", sourceURL: "https://www.americanexpress.com/en-us/business/trends-and-insights/articles/4-ways-your-body-language-can-project-confidence/", sponsorLogo: "", sponsorURL: "")

//FRI
let weekdayNow11to14Tip35 = Tip(header: "", title: "Confidence reminder: Having an upright posture in the face of stress can maintain positive self-esteem, reduce negative mood, and increase positive mood compared to a slumped posture.", body: "Study: Upright participants reported higher self-esteem, better mood, and lower fear, compared to slumped participants. Sitting upright may be a simple behavioral strategy to help build resilience to stress.", sourceName: "American Psychological Association", sourceURL: "https://psycnet.apa.org/record/2014-37739-001", sponsorLogo: "", sponsorURL: "")

//WEEK 1
// MON
let weekdayNow11to14TipArray0 = [weekdayNow11to14Tip0, weekdayNow11to14Tip1, weekdayNow11to14Tip2, weekdayNow11to14Tip3]
let weekdayNow11to14Topic0 = Topic(title: weekdayNow11to14Title, icon: weekdayNow11to14Icon, tip: weekdayNow11to14TipArray0)

// TUESDAY (contains tuesday specific tip)
var tuesdayNow11to14TipArray0 = [tuesdayNow11to14Tip0, weekdayNow11to14Tip4, weekdayNow11to14Tip5, weekdayNow11to14Tip6]
let tuesdayNow11to14Topic0 = Topic(title: weekdayNow11to14Title, icon: weekdayNow11to14Icon, tip: tuesdayNow11to14TipArray0)

// WED
let weekdayNow11to14TipArray1 = [weekdayNow11to14Tip7, weekdayNow11to14Tip8, weekdayNow11to14Tip9, weekdayNow11to14Tip10]
let weekdayNow11to14Topic1 = Topic(title: weekdayNow11to14Title, icon: weekdayNow11to14Icon, tip: weekdayNow11to14TipArray1)

// THU
let weekdayNow11to14TipArray2 = [weekdayNow11to14Tip31, weekdayNow11to14Tip12, weekdayNow11to14Tip13, weekdayNow11to14Tip14]
let weekdayNow11to14Topic2 = Topic(title: weekdayNow11to14Title, icon: weekdayNow11to14Icon, tip: weekdayNow11to14TipArray2)

// FRI
let weekdayNow11to14TipArray3 = [weekdayNow11to14Tip35, weekdayNow11to14Tip16, weekdayNow11to14Tip17, weekdayNow11to14Tip18]
let weekdayNow11to14Topic3 = Topic(title: weekdayNow11to14Title, icon: weekdayNow11to14Icon, tip: weekdayNow11to14TipArray3)

//WEEK 2
//MON
let weekdayNow11to14TipArray4 = [weekdayNow11to14Tip19, weekdayNow11to14Tip20, weekdayNow11to14Tip21, weekdayNow11to14Tip22]
let weekdayNow11to14Topic4 = Topic(title: weekdayNow11to14Title, icon: weekdayNow11to14Icon, tip: weekdayNow11to14TipArray4)
//TUE
let weekdayNow11to14TipArray5 = [weekdayNow11to14Tip23, weekdayNow11to14Tip24, tuesdayNow11to14Tip0, weekdayNow11to14Tip6]
let weekdayNow11to14Topic5 = Topic(title: weekdayNow11to14Title, icon: weekdayNow11to14Icon, tip: weekdayNow11to14TipArray5)
//WED
let weekdayNow11to14TipArray6 = [weekdayNow11to14Tip19, weekdayNow11to14Tip10, weekdayNow11to14Tip9, weekdayNow11to14Tip8]
let weekdayNow11to14Topic6 = Topic(title: weekdayNow11to14Title, icon: weekdayNow11to14Icon, tip: weekdayNow11to14TipArray6)
//THUR
let weekdayNow11to14TipArray7 = [weekdayNow11to14Tip19, weekdayNow11to14Tip14, weekdayNow11to14Tip13, weekdayNow11to14Tip12]
let weekdayNow11to14Topic7 = Topic(title: weekdayNow11to14Title, icon: weekdayNow11to14Icon, tip: weekdayNow11to14TipArray7)
//FRI
let weekdayNow11to14TipArray8 = [weekdayNow11to14Tip18, weekdayNow11to14Tip17, weekdayNow11to14Tip16, weekdayNow11to14Tip14]
let weekdayNow11to14Topic8 = Topic(title: weekdayNow11to14Title, icon: weekdayNow11to14Icon, tip: weekdayNow11to14TipArray7)




// MARK: - Now, Weekday, 14to16

let weekdayNow14to16Title = "Now, Weekday, 14to16"
let weekdayNow14to16Icon = "Now"

//WEEK 1
//// MON
let weekdayNow14to16Tip0 = Tip(header: "🚶‍♂️", title: "Experts advise desk workers take breaks throughout the day to stand or walk for 2 hours every day", body: "Study: Men who sat 6+ hours per day at work were 90% more likely to report moderate levels of psychological distress—say, feeling tired, nervous, restless, or hopeless—than those who sat for less time. \n\nProlonged sitting is associated with an increased risk of diabetes, obesity, and back pain.", sourceName: "Men's Health", sourceURL: "https://www.menshealth.com/health/a19841065/sitting-too-long-could-put-your-brain-health-at-risk/", sponsorLogo: "", sponsorURL: "")
let weekdayNow14to16Tip1 = Tip(header: "😠", title: "If you're in a bad mood this afternoon, you're not alone", body: "A study found people typically feel less happy, feel less warm toward others, and feel less positive emotions in the afternoon. While positive emotions and moods are typically highest in the morning and evening.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/dp/B072Q985YX/ref=dp-kindle-redirect?_encoding=UTF8&btkr=1", sponsorLogo: "", sponsorURL: "")
let weekdayNow14to16Tip2 = Tip(header: "📝", title: "Before you leave work, write tomorrow's to-do list", body: "The last thing the CEO of American Express, Kenneth Chenault, does before leaving his office is to write down the top 3 things he wants to accomplish tomorrow. Then he uses the list to start his next day." , sourceName: "Inc.", sourceURL: "https://www.inc.com/business-insider/what-successful-people-do-before-they-go-to-sleep.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow14to16Tip3 = Tip(header: "🤔", title: "Improve your performance: Ask yourself how did your day go?", body: "Researchers asked a group of employees to spend 15 minutes at the end of each day to reflect on how their day went. After 10 days, the group of employees who spent time reflecting at the end of each day outperformed other employees who did not by 23%." , sourceName: "LinkedIn", sourceURL: "https://learning.linkedin.com/blog/learning-tips/want-to-get-better-at-your-job--build-in-time-to-reflect", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//// TUE
// Tuesday-specific tip
let weekdayNow14to16Tip4 = Tip(header: "😴", title: "Low on energy? Our bodies biological clocks create an urge to sleep in the afternoon", body: "Research shows that moving your body may help you feel less bored and tired. And a walk outside in sunlight and among trees and flowers may improve your focus and mood." , sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/minding-the-body/201802/5-simple-fixes-afternoon-slump-work", sponsorLogo: "", sponsorURL: "")
let weekdayNow14to16Tip5 = Tip(header: "👩‍💻", title: "People who sit at a desk for a long period of time tend to roll their shoulders in and hang their head forward", body: "Every inch you hold your head forward, you add 10 pounds of pressure on your spine. When you finally do lean back again, like at the end of the day, the overworked muscles tense up, which can lead to tension headaches. Take a break from sitting every 30 minutes." , sourceName: "USA Today", sourceURL: "https://www.usatoday.com/story/money/business/2015/06/07/cheat-sheet-body-language-donts/28460019/", sponsorLogo: "", sponsorURL: "")
let weekdayNow14to16Tip6 = Tip(header: "🙅‍♀️", title: "Avoid social media in the afternoon because this is when people write the most negative posts, study finds", body: "A study of Twitter posts found that the majority of negative posts occured in the afternoon, with the most amount of negative posts occuring between 3pm-4pm, while the most positive posts occured in the morning and evening. This analysis suggests that our moods are driven in part by a shared biological rhythm." , sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/2011/09/30/science/30twitter.html", sponsorLogo: "", sponsorURL: "")
let weekdayNow14to16Tip7 = Tip(header: "😔", title: "Feeling depressed today? You're not alone. People feel the most depressed on Tuesday", body: "An analysis of Google searches found that people searched for the term \"depression\" the most on Tuesday, followed by Monday, Wednesday, and Thursday." , sourceName: "The Washington Post", sourceURL: "https://www.washingtonpost.com/news/wonk/wp/2014/12/03/the-google-misery-index-the-times-of-year-were-most-depressed-anxious-and-stressed/?utm_term=.ce96d202a3f3", sponsorLogo: "", sponsorURL: "")

//// WED
let weekdayNow14to16Tip8 = Tip(header: "😰", title: "Take a deep breath. The afternoon is the most stressful time of the day", body: "Study: 1:42 p.m. is the most stressful minute of the day. With high stress levels continuing until 4:53 p.m. when end-of-day relief sets in. \n\nSurvey: 60% of respondents say they have a terrible work-life balance. Personal chores and tiredness, along with a heavy workload, were the main reasons respondents said they had difficulty maintaining a balanced life." , sourceName: "Inc.", sourceURL: "https://www.inc.com/bartie-scott/most-stressful-minute-age.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow14to16Tip9 = Tip(header: "🤓", title: "90% of top performers in their respective careers also rank high in terms of emotional intelligence", body: "People with higher emotional intelligence make an average of $29,000 more per year than people with low emotional intelligence. Focus on improving your skills in team work, social skills, empathy, and anger management." , sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/travisbradberry/2014/01/09/emotional-intelligence/#1989d5691ac0", sponsorLogo: "", sponsorURL: "")
let weekdayNow14to16Tip10 = Tip(header: "🗂", title: "Do administrative work between 1pm-3pm because this is when our energy levels tend to be at their lowest", body: "The afternoon slump is not just something that happens if you eat a particularly heavy meal; it’s a scientifically quantifiable phenomenon. In a 9-to-5 job format, your cognitive faculties decline significantly around 3pm, which means you should devote those hours to the easiest work that requires the least concentration like answering your emails, data entry, or filing papers.", sourceName: "Unstuck", sourceURL: "https://www.unstuck.com/advice/time-to-get-things-done/", sponsorLogo: "", sponsorURL: "")
let weekdayNow14to16Tip11 = Tip(header: "🚶‍♂️", title: "2:55 p.m. is the most unproductive time of the day. Stay alert by moving your body", body: "Researchers speculated that around 2:55 p.m. workers began to hit that after-lunch lull and became more focused on what they're doing after work — and less focused on their work. \n\nWalk to the water fountain, walk round the office, walk outside to get the blood flowing, get fresh air to provide a boost of energy, and interact with co-workers to recharge your mind when fatigue begins to set in.", sourceName: "Medical Daily", sourceURL: "https://www.medicaldaily.com/least-productive-time-day-officially-determined-be-255-pm-what-you-can-do-stay-awake-246495", sponsorLogo: "", sponsorURL: "")

// THU
let weekdayNow14to16Tip12 = Tip(header: "🚶‍♂️", title: "Reduce the afternoon slump by going for a walk. It'll help you generate new ideas.", body: "Brief walks, just a few minutes long, can help stimulate the brain. The effects will help you be more creative and better able to concentrate.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/best-time-day-work-according-to-science-2018-5", sponsorLogo: "", sponsorURL: "")
let weekdayNow14to16Tip13 = Tip(header: "😀", title: "Look Confident: Every time you walk through a doorway, remember to stand up, put your chin up, put your shoulders back, and smile", body: "It's called the doorway drill. If you do that through every doorway throughout the day, you’re going to create a habit where your default body language and non-verbal communication is open, upright and positive." , sourceName: "The Unbeatable Mind Podcast", sourceURL: "https://unbeatablemind.com/jordan-harbinger/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow14to16Tip14 = Tip(header: "🤓", title: "Top workers focus for 45 minutes then take a 15 minute break", body: "Study: The most productive people work for 52 minutes at a time, then take a 17-minute break before diving back into their work. During the 17 minutes of break, the group was more likely to go for a walk or tune out rather than check email or Facebook." , sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/advice/work-career/successful-people-habits-work/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow14to16Tip15 = Tip(header: "😠", title: "Receiving negative criticism has a greater impact on your emotions than receiving praise", body: "It takes about five good events to overcome the psychological effects of a bad one. Knowing this may remind us to be kinder to others and help us better deal with the bad stuff that will inevitably happen." , sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/2012/03/24/your-money/why-people-remember-negative-events-more-than-positive-ones.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

// FRI
let weekdayNow14to16Tip16 = Tip(header: "🚶‍♂️", title: "Move around every 30 mintues. Long periods of sitting increases your risk of developing diabetes, cancer, and death", body: "Metabolism slows down 90% after 30 minutes of sitting. The enzymes that move the bad fat from your arteries to your muscles, where it can get burned off, slow down. The muscles in your lower body are turned off. Just getting up for 5 minutes is going to get things going again." , sourceName: "The Washington Post", sourceURL: "https://www.washingtonpost.com/news/wonk/wp/2015/06/02/medical-researchers-have-figured-out-how-much-time-is-okay-to-spend-sitting-each-day/?utm_term=.b8239440b685", sponsorLogo: "", sponsorURL: "")
let weekdayNow14to16Tip17 = Tip(header: "🤔", title: "Spend one minute looking for positives, 3 times a day", body: "Our brain is not designed to create happiness. Unhappy chemicals, like cortisol, are used to scan for problems and survive. Rewire your brain with a positivity circuit so negativity doesn't overwhelm you." , sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/womensmedia/2016/12/21/how-to-train-your-brain-to-go-positive-instead-of-negative/#404057cc5a58", sponsorLogo: "", sponsorURL: "")
let weekdayNow14to16Tip18 = Tip(header: "🚶‍♂️", title: "Sitting is lethal. You can burn 90 more calories an hour pacing than if you just talk while sitting", body: "If you're thinking or talking on the phone, try pacing instead of sitting. Other low-grade activity (tapping feet and fingers, twirling hair, gesturing while speaking) can burn 350 calories a day, which translates into 10-30 pounds a year." , sourceName: "Lifehacker", sourceURL: "https://lifehacker.com/5323740/use-neat-activities-to-burn-more-calories", sponsorLogo: "", sponsorURL: "")
let weekdayNow14to16Tip19 = Tip(header: "🌬", title: "Even just 3-5 minutes of slow, rhythmic breathing can train your nervous system to be more adaptive", body: "The first thing to do when feeling stressed and anxious is to slow yourself down. The best way to do this is to take some deep breaths: inhale to a count of five and exhale to a count of five." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/health/how-effectively-manage-stress-so-it-doesn-t-hurt-your-ncna815626", sponsorLogo: "TBD", sponsorURL: "www.test.com")


//WEEK 2
//MON
let weekdayNow14to16Tip20 = Tip(header: "", title: "Avoid weight gain: When the afternoon slump hits and the effects of your morning coffee have worn off, go for a walk or a workout to get reenergized", body: "It's fine to drink coffee in the morning, but drinking more coffee in the afternoon to stay alert may increase your risk of weight gain. Study: Too much caffeine can lead to insulin resistance and increased fat storage." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/healthy-home/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow14to16Tip21 = Tip(header: "", title: "Sitting up straight in your chair gives you more confidence in your own thoughts, study finds", body: "On the other hand, slumped over your desk gives you less confidence in your own thoughts. The researchers found that people's thoughts are influenced by their posture, even though they don't realize that is what's happening." , sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2009/10/091005111627.htm", sponsorLogo: "", sponsorURL: "")
let weekdayNow14to16Tip22 = Tip(header: "", title: "Millionaire Habit: Work 50+ hours a week", body: "Study of what rich people and poor people do every week: \n• 86% of rich people worked 50+ hours a week \n• 43% of poor people worked 50+ hours a week" , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/common-myths-about-rich-people-2015-6", sponsorLogo: "", sponsorURL: "")

//WEEK 1
//MON
let weekdayNow14to16TipArray0 = [weekdayNow14to16Tip0, weekdayNow14to16Tip1, weekdayNow14to16Tip2, weekdayNow14to16Tip3]
let weekdayNow14to16Topic0 = Topic(title: weekdayNow14to16Title, icon: weekdayNow14to16Icon, tip: weekdayNow14to16TipArray0)

//TUE
let weekdayNow14to16TipArray1 = [weekdayNow14to16Tip4, weekdayNow14to16Tip5, weekdayNow14to16Tip6, weekdayNow14to16Tip7]
let weekdayNow14to16Topic1 = Topic(title: weekdayNow14to16Title, icon: weekdayNow14to16Icon, tip: weekdayNow14to16TipArray1)

//WED
let weekdayNow14to16TipArray2 = [weekdayNow14to16Tip8, weekdayNow14to16Tip9, weekdayNow14to16Tip10, weekdayNow14to16Tip11]
let weekdayNow14to16Topic2 = Topic(title: weekdayNow14to16Title, icon: weekdayNow14to16Icon, tip: weekdayNow14to16TipArray2)

//THU
let weekdayNow14to16TipArray3 = [weekdayNow14to16Tip12, weekdayNow14to16Tip13, weekdayNow14to16Tip14, weekdayNow14to16Tip15]
let weekdayNow14to16Topic3 = Topic(title: weekdayNow14to16Title, icon: weekdayNow14to16Icon, tip: weekdayNow14to16TipArray3)

//FRI
let weekdayNow14to16TipArray4 = [weekdayNow14to16Tip16, weekdayNow14to16Tip17, weekdayNow14to16Tip18, weekdayNow14to16Tip19]
let weekdayNow14to16Topic4 = Topic(title: weekdayNow14to16Title, icon: weekdayNow14to16Icon, tip: weekdayNow14to16TipArray4)

//WEEK 2
//MON (WIP: 1)
let weekdayNow14to16TipArray5 = [weekdayNow14to16Tip20, weekdayNow14to16Tip21, weekdayNow14to16Tip22, weekdayNow14to16Tip4]
let weekdayNow14to16Topic5 = Topic(title: weekdayNow14to16Title, icon: weekdayNow14to16Icon, tip: weekdayNow14to16TipArray5)

//TUE (WIP)
let weekdayNow14to16TipArray6 = [weekdayNow14to16Tip7, weekdayNow14to16Tip6, weekdayNow14to16Tip5, weekdayNow14to16Tip4]
let weekdayNow14to16Topic6 = Topic(title: weekdayNow14to16Title, icon: weekdayNow14to16Icon, tip: weekdayNow14to16TipArray6)

//WED (WIP)
let weekdayNow14to16TipArray7 = [weekdayNow14to16Tip11, weekdayNow14to16Tip10, weekdayNow14to16Tip9, weekdayNow14to16Tip8]
let weekdayNow14to16Topic7 = Topic(title: weekdayNow14to16Title, icon: weekdayNow14to16Icon, tip: weekdayNow14to16TipArray7)

//THU (WIP)
let weekdayNow14to16TipArray8 = [weekdayNow14to16Tip15, weekdayNow14to16Tip14, weekdayNow14to16Tip13, weekdayNow14to16Tip12]
let weekdayNow14to16Topic8 = Topic(title: weekdayNow14to16Title, icon: weekdayNow14to16Icon, tip: weekdayNow14to16TipArray8)

//FRI (WIP)
let weekdayNow14to16TipArray9 = [weekdayNow14to16Tip19, weekdayNow14to16Tip18, weekdayNow14to16Tip17, weekdayNow14to16Tip16]
let weekdayNow14to16Topic9 = Topic(title: weekdayNow14to16Title, icon: weekdayNow14to16Icon, tip: weekdayNow14to16TipArray9)


// MARK: - Now, Weekday, 17to18

let weekdayNow17to18Title = "Now, Weekday, 17to18"
let weekdayNow17to18Icon = "Now"

// WEEK 1
// MON
let monday17to18Week1Tip1 = Tip(header: "💏", title: "Nourish your romantic relationships—even when time is in short supply", body: "If you plan a date, great. But if you're too busy this week, choose one night this week to carve out a mini-date at home." , sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/home/cleaning-organizing/successful-people-work/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let monday17to18Week1Tip2 = Tip(header: "🏃‍♀️", title: "In a bad mood? Exercise before you go home because it improves your mood", body: "Research: People who are in a bad mood are more likely to verbally abuse their family because they’re too tired to regulate their behavior. \n\nStudy: Participants who took 10,900 steps each day were less likely to be verbally abusive toward family members when compared to participants who took 7,000 steps." , sourceName: "University of Central Florida", sourceURL: "https://today.ucf.edu/study-shows-exercise-sleep-keys-keeping-employees-bringing-home-work-frustrations/", sponsorLogo: "", sponsorURL: "")
let monday17to18Week1Tip3 = Tip(header: "", title: "Cook at home. On average, it's 5 times more expensive to order delivery from a restaurant than it is to cook at home", body: "Average price per serving based on 86 meals: \n• Restaurant Delivery = $20.37 \n• Home Cooking = $4.31 \n\nWhen cooking at home, you'll save a substantial amount of money on carb-based meals like pasta or pizza, and you'll save the most on protein-based meals like beef or chicken when compared to ordering from a restaurant.", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/priceonomics/2018/07/10/heres-how-much-money-do-you-save-by-cooking-at-home/#212e3e0235e5", sponsorLogo: "", sponsorURL: "")
let monday17to18Week1Tip4 = Tip(header: "👫", title: "Focus on maintaining your relationships outside of social media", body: "Frequent Facebook users tend to have higher levels of credit-card debt and lower credit scores. If your friends are doing all these cool things, you might feel envious or pressured to participate in those things as well." , sourceName: "Reuters", sourceURL: "https://www.reuters.com/article/us-socialmedia-envy-consumers/how-to-avoid-the-high-price-of-social-media-envy-idUSKBN0KM1CU20150113", sponsorLogo: "TBD", sponsorURL: "www.test.com")

// TUES
let tuesday17to18Week1Tip1 = Tip(header: "🤓", title: "Stay productive after work by not going home right away", body: "When you get home, it's easy to relax and watch TV. The key to making progress on your passion project is to stop by your local coffee shop before you go home because you'll be less distracted there." , sourceName: "LifeHacker", sourceURL: "https://lifehacker.com/5921271/how-to-stay-productive-after-work", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let tuesday17to18Week1Tip2 = Tip(header: "😀", title: "Activities that will increase your happiness tonight", body: "Researchers found that people reported being happiest when they were: \n• Relaxing \n• Socializing \n• Exercising \n• Eating \n• Doing spiritual activities \n• Engaging in intimate relations" , sourceName: "Fast Company", sourceURL: "https://www.fastcompany.com/3048975/the-scientifically-proven-way-to-have-the-best-vacation-ever", sponsorLogo: "", sponsorURL: "")
let tuesday17to18Week1Tip3 = Tip(header: "", title: "On average, cooking dinner at home saves you $9 per meal", body: "The average restaurant meal costs around $13. By contrast, the average meal prepared at home costs around $4 for groceries—a $9 savings per person per meal. To put it another way, a $13 restaurant meal is about 325% more expensive than a $4 meal you prepare yourself.", sourceName: "Money Under 30", sourceURL: "https://www.moneyunder30.com/the-true-cost-of-eating-in-restaurants-and-how-to-save", sponsorLogo: "", sponsorURL: "")

let tuesday17to18Week1Tip4 = Tip(header: "🌅", title: "Get into a relaxed mood by watching the sunset tonight", body: "Experiences of awe, like the sunset, brings you into the present momement, resulting in the feeling of having more time available and makes life feel more satisfying." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/2014/04/04/make-time-for-sunset_n_5066629.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")


// WED
let wednesday17to18Week1Tip1 = Tip(header: "👫", title: "Be social tonight. 75-year study finds people who have close, intimate relations live the happiest and healthiest lives", body: "Compared to people who are not lonely, people who are more isolated from others are: \n• less happy \n• their health declines earlier in midlife \n• and they live shorter lives. \n\nIf you can't socialize tonight, call a friend." , sourceName: "The Washington Post", sourceURL: "https://www.washingtonpost.com/news/inspired-life/wp/2016/03/02/harvard-researchers-discovered-the-one-thing-everyone-needs-for-happier-healthier-lives/?utm_term=.b8ae9207a2c2", sponsorLogo: "", sponsorURL: "")
let wednesday17to18Week1Tip2 = Tip(header: "💪", title: "Exercise tonight. For each additional hour a person sits during their free time, their risk of dying increased by 11%", body: "Your calorie-burning rate immediately plunges to about one per minute, a third of what it would be if you got up and walked. \n\nInsulin effectiveness drops within a single day, and the risk of developing Type 2 diabetes and being obsese rises." , sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/2011/04/17/magazine/mag-17sitting-t.html", sponsorLogo: "", sponsorURL: "")
let wednesday17to18Week1Tip3 = Tip(header: "📵", title: "Don't look at a screen during your free time because it's making you unhappy", body: "Study: People who spent more time seeing their friends in person, exercising, or reading were happier. However, people who spent more time on the internet, texting, or watching TV were less happy. \n\nIn other words, every activity that didn’t involve a screen was linked to more happiness, and every activity that involved a screen was linked to less happiness." , sourceName: "Quartz", sourceURL: "https://qz.com/1190151/why-am-i-unhappy-a-new-study-explains-americas-unhappiness-epidemic/", sponsorLogo: "", sponsorURL: "")
let wednesday17to18Week1Tip4 = Tip(header: "🙅‍♀️", title: "Tonight, say no to things that don't excite you, speak to your values, or further your mission in life", body: "Billionaire Warren Buffett said: \"The difference between successful people and really successful people is that really successful people say no to almost everything.\" \n\nSaying no to the unimportant things helps you focus on saying yes to the few things that truly matter." , sourceName: "Inc.", sourceURL: "https://www.inc.com/marcel-schwantes/warren-buffett-says-this-is-1-simple-habit-that-separates-successful-people-from-everyone-else.html", sponsorLogo: "", sponsorURL: "")

// THUR
let thursday17to18Week1Tip1 = Tip(header: "🙅‍♀️", title: "Sitting 6+ hours a day during your free time raises the risk of early death by 19%. Go exercise for 30+ minutes", body: "Americans sit an average of 7 hours a day in their free time. Sitting increases the risk of dying from 14 diseases, including cancer, heart disease, diabetes, and Alzheimer’s." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/health/health-news/here-s-more-evidence-sitting-too-much-can-kill-you-n887931", sponsorLogo: "", sponsorURL: "")
let thursday17to18Week1Tip2 = Tip(header: "👫", title: "Tonight, say no to spending time with uninspiring, critical, or negative people who drag you down", body: "Billionaire Warren Buffett said: \"The difference between successful people and really successful people is that really successful people say no to almost everything.\" Choose a small circle of people who will energize you and challenge you to be better." , sourceName: "Inc.", sourceURL: "https://www.inc.com/marcel-schwantes/warren-buffett-says-this-is-1-simple-habit-that-separates-successful-people-from-everyone-else.html", sponsorLogo: "", sponsorURL: "")
let thursday17to18Week1Tip3 = Tip(header: "", title: "People who frequently cook dinner at home are healthier than people who cook less often", body: "Study: People who cooked dinner at home only once a week consumed 2,300 calories per day on average, which included 84 grams of fat and 135 grams of sugar. In comparison, regular at-home cooks ate 150 fewer calories per day and consumed only 81 grams of fat and 119 grams of sugar.", sourceName: "Harvard Health", sourceURL: "https://www.health.harvard.edu/nutrition/get-cooking-at-home", sponsorLogo: "", sponsorURL: "")
let thursday17to18Week1Tip4 = Tip(header: "🤓", title: "Use your freetime to \"be seen as a recognized expert\" within your industry", body: "Attend industry events, enroll in a class or specialized certification program, blog on LinkedIn, or take on a leadership role in a relevant professional organization. \n\nThis will help you earn a raise, get promoted, or find a better job." , sourceName: "Havard Business Review", sourceURL: "https://hbr.org/2018/02/how-to-increase-your-influence-at-work", sponsorLogo: "", sponsorURL: "")

// FRI
let friday17to18Week1Tip1 = Tip(header: "👫", title: "Live longer: Focus on close relationships", body: "Answering this question can likely predict whether you will be alive and happy at age 80: \n\n\"Is there someone in your life whom you would feel comfortable phoning at 4AM to tell your troubles to? If your answer is yes, research finds you will likely live longer than someone whose answer is no.\"" , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/what-yesno-question-can-likely-predict-whether-you-will-be-alive-and-happy-at-age-80-2012-5", sponsorLogo: "", sponsorURL: "")
let friday17to18Week1Tip2 = Tip(header: "👨‍👩‍👧‍👦", title: "Spending 2 hours with family or friends tonight will increase your happiness", body: "Don’t just sit on the couch by yourself when you get home. A big reason why people are happier on weekends compared to weekdays is explained by differences in the amount of time spent with friends or family between weekends and weekdays (7.1 vs. 5.4 hours). \n\nThe extra daily social time of 1.7 hours in weekends raises average happiness by about 2%." , sourceName: "The Ladders", sourceURL: "https://www.theladders.com/career-advice/lights-7-night-time-rituals-will-make-happy-productive", sponsorLogo: "", sponsorURL: "")
let friday17to18Week1Tip3 = Tip(header: "💪", title: "The best time to exercise is 3-4 hours prior to going to sleep", body: "The increase in core body temperature from exercise followed by a decrease in core body temperature afterwards mimics the natural drop in body temperature needed to fall asleep and maintain sleep.", sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/health/wellness/why-cant-i-sleep/", sponsorLogo: "", sponsorURL: "")
let friday17to18Week1Tip4 = Tip(header: "🙏", title: "Best ways to reduce stress tonight", body: "• Play sports (73%)\n• Pray (73%)\n• Massage or spa (71%)\n• Meditage or yoga (70%)\n• Exercise or walk (62%)\n• Listen to music (56%)\n• Read (49%)\n\nLess effective ways to reduce stress:\n• Watch TV or movie (33%)\n• Surf the Internet (29%)" , sourceName: "American Psychological Association", sourceURL: "https://www.apa.org/news/press/releases/stress/2013/snapshot.aspx", sponsorLogo: "", sponsorURL: "")

// WEEK 2
// MON
let monday17to18Week2Tip1 = Tip(header: "🍽", title: "Prevent weight gain by eating dinner earlier tonight", body: "Study: Later meal timing was associated with a higher body mass index as well as greater body fat." , sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2019/03/190323145204.htm", sponsorLogo: "", sponsorURL: "")
let monday17to18Week2Tip2 = Tip(header: "💸", title: "Tonight, make plans to create 3+ sources of income. 65% of self-made millionaires had 3+ streams of income that they created prior to making their first million dollars, survey finds", body: "Having a side-business or income generating investments like REITs or real estate are a few common additional sources of income. Diversifying sources of income allows you to weather the economic downturns that inevitably occur." , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2016/11/29/7-habits-of-highly-successful-people-from-a-man-who-spent-5-years-studying-them.html", sponsorLogo: "", sponsorURL: "")
let monday17to18Week2Tip3 = Tip(header: "😀", title: "Donate to a cause you care about. People who donate more than 10% of their income are less depressed than people who give less", body: "41% of people who donate more than 10% of their income say they rarely or never experience depression versus 32% for people who give less." , sourceName: "The New Republic", sourceURL: "https://newrepublic.com/article/119477/science-generosity-why-giving-makes-you-happy", sponsorLogo: "", sponsorURL: "")

let monday17to18Week2Tip4 = Tip(header: "💪", title: "Exercise daily for a longer life. Even the world’s most successful business leaders, like Oprah Winfrey and Bill Gates, make physical activity a daily priority", body: "Study: Just small amounts of daily exercise can extend life expectancy by as much as 4.5 years. Dedicate 30 minutes of gym time before or after work.", sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2019/04/09/harvard-study-says-these-5-habits-may-help-you-live-10-years-longer.html", sponsorLogo: "", sponsorURL: "")

//TUES
let tuesday17to18Week2Tip1 = Tip(header: "🍽", title: "Prevent weight gain by reducing calorie intake after 8:00 PM", body: "Study: Calories consumed after 8:00 PM was associated with higher body mass index (BMI) and may increase the risk of obesity." , sourceName: "National Center for Biotechnology Information, U.S. National Library of Medicine", sourceURL: "https://www.ncbi.nlm.nih.gov/pubmed/21527892%20", sponsorLogo: "", sponsorURL: "")
let tuesday17to18Week2Tip2 = Tip(header: "📵", title: "Take a social media break and spend more time in real life with cherished loved ones", body: "A study found that the more time you spend on social media, the less happy you are. The reason? Looking at pictures and reading updates from friends leads you to compare your worst self to their best selves, leaving you feeling sad and left out." , sourceName: "Reader's Digiest", sourceURL: "https://www.rd.com/health/wellness/how-to-be-happy/", sponsorLogo: "", sponsorURL: "")
let tuesday17to18Week2Tip3 = Tip(header: "💪", title: "Exercise tonight. 76% of wealthy individuals exercise 30+ minutes each day, survey finds", body: "Working out regularly clears your head and makes you feel more motivated, studies show." , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2016/11/29/7-habits-of-highly-successful-people-from-a-man-who-spent-5-years-studying-them.html", sponsorLogo: "", sponsorURL: "")
let tuesday17to18Week2Tip4 = Tip(header: "😀", title: "Increase your happiness by becoming a volunteer", body: "Americans who describe themselves as \"very happy\" volunteer an average of 5.8 hours per month. Americans who describe themselves as \"unhappy\" only volunteered 0.6 hours per month." , sourceName: "Inc.", sourceURL: "https://www.inc.com/christina-desmarais/8-scientifically-proven-ways-to-achieve-better-suc.html", sponsorLogo: "", sponsorURL: "")

//WED
let wednesday17to18Week2Tip1 = Tip(header: "📞", title: "Increase happiness: Call a family member or an old friend", body: "The number one thing guaranteed to bring the most happiness isn’t actually a thing—it’s a person. \n\nStudy: Relationships with family, friends and lovers are necessary for our own personal happiness.", sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/health/wellness/how-to-be-happy/", sponsorLogo: "", sponsorURL: "")
let wednesday17to18Week2Tip2 = Tip(header: "💐", title: "Make someone happy tonight by suprising them with flowers", body: "In one study, participants who received flowers reported more positive moods 3 days later. Researchers suggest that flowers have evolved to rapidly induce positive emotions in humans.", sourceName: "SAGE Journals", sourceURL: "https://journals.sagepub.com/doi/full/10.1177/147470490500300109", sponsorLogo: "", sponsorURL: "")
let wednesday17to18Week2Tip3 = Tip(header: "", title: "Lose Weight: Drink 16 ounces of water 30 minutes before dinner", body: "Study: After 12 weeks, the participants who drank 16 ounces of water 30 minutes before eating lost approximately 3 pounds more than the participants who did not drink water before eating. Scientists speculate the water drinkers did better because drinking water helps people feel more full, causing them to eat less.", sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/lose-weight-before-dinner/", sponsorLogo: "", sponsorURL: "")
let wednesday17to18Week2Tip4 = Tip(header: "", title: "Live longer: Be kind and nice to others", body: "Researchers interviewed 100+ year-olds and found that a lot of them were likable. Likable people are more likely to have a social network, frequent visitors, and de facto caregivers. \n\nPeople are naturally drawn to likable people and avoid unlikable people.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")


//THUR
let thursday17to18Week2Tip1 = Tip(header: "", title: "Live longer: Spend at least 30 minutes a day with positive and healthy people", body: "Adopting good habits is easy when everyone around you is already practicing them.  Establish a regular time to meet, share a meal, or take a daily walk together. \n\nBuilding a strong friendship requires some effort, but it's an investment that can add years to your life.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")
let thursday17to18Week2Tip2 = Tip(header: "", title: "Cooking dinner at home reduces lowers your risk of obesity", body: "Study: People who cooked all of their family meals at home were 26% less likely to be obese, compared with those who ate some or no home-cooked meals. Meals cooked appear to be healthier than meals not cooked at home.", sourceName: "Reuters", sourceURL: "https://www.reuters.com/article/us-health-obesity-meals-tv/home-cooked-meals-hold-the-tv-linked-to-less-obesity-idUSKBN16928E", sponsorLogo: "", sponsorURL: "")
let thursday17to18Week2Tip3 = Tip(header: "", title: "Millionaire habit: Network and volunteer regularly because you'll build valuable relationships that can result in more business advisors or customers, or help you land a better job", body: "75% of wealthy people network and volunteer 5+ hours a month. Only 10% of people struggling financially network and volunteer. \n\nVery often the boards and committees of nonprofits are made up of wealthy, successful people. Developing personal relationships with these people will often result in future business relationships or job referrals.", sourceName: "SUCCESS Magazine", sourceURL: "https://www.success.com/16-rich-habits/", sponsorLogo: "", sponsorURL: "")
let thursday17to18Week2Tip4 = Tip(header: "", title: "Prevent weight gain: Spend time with friends who are active, eating well, and making other healthy choices", body: "Your social network has an enormous effect on your income, happiness, and especially your weight. Study: A person’s chance of becoming obese increased by 57% if he or she had a friend who became obese." , sourceName: "Eat This, Not That!", sourceURL: "", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//FRI
let friday17to18Week2Tip1 = Tip(header: "", title: "After a long week, don't reward yourself with alcohol, food, or sugary treats. Instead, choose calorie-free rewards such as a manicure, a massage, or a movie", body: "There’s nothing wrong with rewarding yourself after a long week. But, rewarding yourself with drinks and foods is likely the reason you’re not losing weight." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/weight-loss-lifestyle/", sponsorLogo: "", sponsorURL: "")//FRIDAY*
let friday17to18Week2Tip2 = Tip(header: "", title: "Millionaire habit: Hang out with high-achievers because your friends could affect your net worth", body: "In most cases, your net worth mirrors the level of your closest friends. We become like the people we associate with, and that's why winners surround themselves with winners.", sourceName: "Yahoo! Finance", sourceURL: "https://uk.finance.yahoo.com/news/11-habits-start-20s-want-150800135.html", sponsorLogo: "", sponsorURL: "")
let friday17to18Week2Tip3 = Tip(header: "", title: "Live longer: Exercise for 15 minutes per day", body: "Study: Compared with individuals in the inactive group, those who exercised for 15 min a day had a 14% reduced risk of premature death, and had a 3 year longer life expectancy. For every additional 15 min of daily exercise beyond the minimum amount of 15 min a day further decreased their risk of premature death by 4%.", sourceName: "The Lancet", sourceURL: "https://www.thelancet.com/journals/lancet/article/PIIS0140-6736(11)60749-6/fulltext", sponsorLogo: "", sponsorURL: "")
let friday17to18Week2Tip4 = Tip(header: "", title: "Millionaire habit: Not every thought needs to come out of your mouth. Not every emotion needs to be expressed.", body: "Loose lips are a habit for 69% of those who struggle financially. Oppositely, 94% of wealthy people filter their emotions. Wealthy people understand that letting emotions control them can destroy relationships at work and at home. \n\nWait to say what’s on your mind until you’re calm and have had time to look at the situation neutrally.", sourceName: "SUCCESS Magazine", sourceURL: "https://www.success.com/16-rich-habits/", sponsorLogo: "", sponsorURL: "")

//WEEK 3
//MON
let monday17to18Week3Tip1 = Tip(header: "", title: "People who frequently cook meals at home eat healthier and consume fewer calories, less sugar, and less fat than those who cook less", body: "The researchers also found that those who cook at home more frequently rely less on frozen foods and are less likely to choose fast foods on the occasions when they eat out.", sourceName: "Johns Hopkins University", sourceURL: "https://www.jhsph.edu/research/centers-and-institutes/johns-hopkins-center-for-a-livable-future/news-room/News-Releases/2014/Study-Suggests-Home-Cooking-Main-Ingredient-in-Healthier-Diet.html", sponsorLogo: "", sponsorURL: "")
let monday17to18Week3Tip2 = Tip(header: "", title: "Exercise often. It increases endorphins in your brain and improves your self-image, both ways to make you happier", body: "Strength training and aerobic training are good at decreasing depression and improving long-term heart health, according to research.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/how-to-make-sure-get-happier-as-you-get-older-2019-8", sponsorLogo: "", sponsorURL: "")
let monday17to18Week3Tip3 = Tip(header: "", title: "Reduce your risk of breast and prostate cancers: Eat dinner before 9 p.m. and eat dinner 2+ hours before you go to bed", body: "Results showed that those who waited 2+ hours after eating dinner to sleep had a 20% reduced risk for breast and prostate cancers combined compared with participants who went to sleep immediately after dinner. \n\nParticipants who reported eating dinner earlier — before 9 pm—also had similar reductions in risk compared with those who ate after 10 pm.", sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2018/07/180717182312.htm", sponsorLogo: "", sponsorURL: "")

//TUES
let tuesday17to18Week3Tip1 = Tip(header: "", title: "Exercise tonight. Study: Physically active males earned 14-17% higher incomes over a 15-year period, than less active males", body: "Exercise may enhance a person’s performance at work by improving their perseverance when facing obstacles, fostering goal-oriented behaviors, and developing social skills.  \n\nIn addition, physical activity may encourage participation in competitive situations within the workplace by enhancing self-esteem and self-confidence.", sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/in-the-neighborhood/201308/is-exercise-the-answer-higher-income", sponsorLogo: "", sponsorURL: "")

//WED
let wednesday17to18Week3Tip1 = Tip(header: "", title: "Exercise tonight. Study: People who exercise regularly earn 9% more than those who do not", body: "Exercise improves your energy, focus, mood, and motivation - making you a more valuable worker than someone who does not exercise. Regular exercise also helps you become highly disciplined and effective both at the gym and at work.", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/victorlipman/2012/06/08/new-study-links-exercise-to-higher-pay/#4dd513475db6", sponsorLogo: "", sponsorURL: "")

//THUR
let thursday17to18Week3Tip1 = Tip(header: "", title: "Live longer: Keep in touch with your friends during your free-time", body: "Study: People with more friends outlived those with the fewest friends by 22%. \n\nWhile your friend group tends to shrink as you get older, you can increase your social network by visiting the same places frequently (also known as \"becoming a regular\").", sourceName: "Business Insider", sourceURL: "", sponsorLogo: "", sponsorURL: "")
let thursday17to18Week3Tip2 = Tip(header: "", title: "Increase Happiness: Exercise makes you happier than money", body: "Study: People who are physically active feel just as good as those who avoid physical activity but earn $25,000 more a year. \n\nBut exercising too much can have the reverse effect on happiness. According to the study, physical activity only improves mental well-being within a certain time frame: 3-5 training sessions per week, each lasting around 45 minutes, is ideal.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/exercise-makes-you-happier-than-money-says-yale-and-oxford-study-2019-4", sponsorLogo: "", sponsorURL: "")

//FRI
let friday17to18Week3Tip1 = Tip(header: "", title: "Exercise often. People who exercised regularly felt bad for 35 days a year while people who did not exercise regularly felt bad for 53 days, on average", body: "The scientists also found that team sports, cycling, and aerobic and gym activities had the most positive effect on mental health. \n\nThe ultimate goal, if you want to become a self-made millionaire, is to save 20% or more or your net pay and prudently invest those savings.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/exercise-makes-you-happier-than-money-says-yale-and-oxford-study-2019-4", sponsorLogo: "", sponsorURL: "")
let friday17to18Week3Tip2 = Tip(header: "", title: "94% of the self-made millionaires, who became rich by saving money, saved 20% or more of their net pay or their net income", body: "They did this early in their work lives, long before they accumulated their millions. Get into the habit of saving something. ", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/self-made-millionaires-habits-build-wealth-2017-9#1-they-establish-savings-goals-early-in-their-lives-1", sponsorLogo: "", sponsorURL: "")

//



//WEEK 1
//MON
let weekdayNow17to18TipArray0 = [monday17to18Week1Tip1, monday17to18Week1Tip2, monday17to18Week1Tip3, monday17to18Week1Tip4]
let weekdayNow17to18Topic0 = Topic(title: weekdayNow17to18Title, icon: weekdayNow17to18Icon, tip: weekdayNow17to18TipArray0)
//TUE
let weekdayNow17to18TipArray1 = [tuesday17to18Week1Tip1, tuesday17to18Week1Tip2, tuesday17to18Week1Tip3, tuesday17to18Week1Tip4]
let weekdayNow17to18Topic1 = Topic(title: weekdayNow17to18Title, icon: weekdayNow17to18Icon, tip: weekdayNow17to18TipArray1)
//WED
let weekdayNow17to18TipArray2 = [wednesday17to18Week1Tip1, wednesday17to18Week1Tip2, wednesday17to18Week1Tip3, wednesday17to18Week1Tip4]
let weekdayNow17to18Topic2 = Topic(title: weekdayNow17to18Title, icon: weekdayNow17to18Icon, tip: weekdayNow17to18TipArray2)

//THU
let weekdayNow17to18TipArray3 = [thursday17to18Week1Tip1, thursday17to18Week1Tip2, thursday17to18Week1Tip3, thursday17to18Week1Tip4]
let weekdayNow17to18Topic3 = Topic(title: weekdayNow17to18Title, icon: weekdayNow17to18Icon, tip: weekdayNow17to18TipArray3)

//FRI
let weekdayNow17to18TipArray4 = [friday17to18Week1Tip1, friday17to18Week1Tip2, friday17to18Week1Tip3, friday17to18Week1Tip4]
let weekdayNow17to18Topic4 = Topic(title: weekdayNow17to18Title, icon: weekdayNow17to18Icon, tip: weekdayNow17to18TipArray4)

//WEEK 2
//MON
let weekdayNow17to18TipArray5 = [monday17to18Week2Tip1, monday17to18Week1Tip2, monday17to18Week2Tip3, monday17to18Week2Tip4]
let weekdayNow17to18Topic5 = Topic(title: weekdayNow17to18Title, icon: weekdayNow17to18Icon, tip: weekdayNow17to18TipArray5)
//TUE
let weekdayNow17to18TipArray6 = [tuesday17to18Week2Tip1, tuesday17to18Week2Tip2, tuesday17to18Week2Tip3, tuesday17to18Week2Tip4]
let weekdayNow17to18Topic6 = Topic(title: weekdayNow17to18Title, icon: weekdayNow17to18Icon, tip: weekdayNow17to18TipArray6)
//WED
let weekdayNow17to18TipArray7 = [wednesday17to18Week2Tip1, wednesday17to18Week2Tip2, wednesday17to18Week2Tip3, wednesday17to18Week2Tip4]
let weekdayNow17to18Topic7 = Topic(title: weekdayNow17to18Title, icon: weekdayNow17to18Icon, tip: weekdayNow17to18TipArray7)

//THU
let weekdayNow17to18TipArray8 = [thursday17to18Week2Tip1, thursday17to18Week2Tip2, thursday17to18Week2Tip3, thursday17to18Week2Tip4]
let weekdayNow17to18Topic8 = Topic(title: weekdayNow17to18Title, icon: weekdayNow17to18Icon, tip: weekdayNow17to18TipArray8)

//FRI
let weekdayNow17to18TipArray9 = [friday17to18Week2Tip1, friday17to18Week2Tip2, friday17to18Week2Tip3, friday17to18Week2Tip4]
let weekdayNow17to18Topic9 = Topic(title: weekdayNow17to18Title, icon: weekdayNow17to18Icon, tip: weekdayNow17to18TipArray9)

//WEEK 3





// MARK: - Now, Weekday, 19to20
// Focus: start thinking of bedtime, more home related activites, winding down, reduce food consumption

let weekdayNow19to20Title = "Now, Weekday, 19to20"
let weekdayNow19to20Icon = "Now"

//Week 1
//MON
let weekday19to20Tip1 = Tip(header: "🍽", title: "Restrict eating to a 12-hour cycle", body: "Our bodies were designed for a 12-hour eating cycle. Disrupting this natural order by, say, snacking at 2 a.m., leads to poor sleep and weight gain.", sourceName: "SUCCESS Magazine", sourceURL: "https://www.success.com/the-new-secrets-of-perfect-sleep/", sponsorLogo: "", sponsorURL: "")
let weekday19to20Tip2 = Tip(header: "🙅‍♀️", title: "Sleep better: Don’t schedule a strenuous gym session within 3 hours of your bedtime", body: "Your body temperature falls when we’re ready to go to sleep. But, an intense workout raises your body temperature, making it difficult to fall asleep afterwards.", sourceName: "SUCCESS Magazine", sourceURL: "https://www.success.com/the-new-secrets-of-perfect-sleep/", sponsorLogo: "", sponsorURL: "")
let weekday19to20Tip3 = Tip(header: "💵", title: "Write down your goals tonight", body: "A survey of 200+ wealthy individuals, mostly self-made millionaires, found that 80% of the wealthy set daily and long-term goals. \n\nThe survey's author recommends, \"Avoid putting your ladder on someone else’s wall and then spending the best years of your life climbing it. Find your own wall, your own dreams, and your own goals, and pursue them.\"" , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2016/11/29/7-habits-of-highly-successful-people-from-a-man-who-spent-5-years-studying-them.html", sponsorLogo: "", sponsorURL: "")
let weekday19to20Tip4 = Tip(header: "🍽", title: "Prevent weight gain by reducing calorie intake after 8:00 PM", body: "Study: Calories consumed after 8:00 PM was associated with higher body mass index (BMI) and may increase the risk of obesity." , sourceName: "National Center for Biotechnology Information, U.S. National Library of Medicine", sourceURL: "https://www.ncbi.nlm.nih.gov/pubmed/21527892%20", sponsorLogo: "", sponsorURL: "")

//TUES
let weekday19to20Tip5 = Tip(header: "📚", title: "Self-made millionares read each day to help outperform the competition", body: "• 94% read current events \n\n• 88% read 30 minutes or more per day on self-improvement \n\n• 63% listen to audio books while traveling" , sourceName: " ThinkRichThinkPoor.com", sourceURL: "https://thinkrichthinkpoor.com/money-management/11-habits-self-made-millionaires/", sponsorLogo: "", sponsorURL: "")
let weekday19to20Tip6 = Tip(header: "😴", title: "Go to bed early tonight because people report Wednesday as the most tiring day of the week", body: "An analysis of Google searches found that people searched for the term \"fatigue\" the most on Wednesday. The most searches of \"fatigue\" occured on Monday through Thursday." , sourceName: "The Washington Post", sourceURL: "https://www.washingtonpost.com/news/wonk/wp/2014/12/03/the-google-misery-index-the-times-of-year-were-most-depressed-anxious-and-stressed/?utm_term=.ce96d202a3f3", sponsorLogo: "", sponsorURL: "")//*TUES ONLY
let weekday19to20Tip7 = Tip(header: "🙏", title: "Best ways to reduce stress tonight", body: "• Play sports (73%)\n• Pray (73%)\n• Massage or spa (71%)\n• Meditage or yoga (70%)\n• Exercise or walk (62%)\n• Listen to music (56%)\n• Read (49%)\n\nLess effective ways to reduce stress:\n• Watch TV or movie (33%)\n• Surf the Internet (29%)" , sourceName: "American Psychological Association", sourceURL: "https://www.apa.org/news/press/releases/stress/2013/snapshot.aspx", sponsorLogo: "", sponsorURL: "")
let weekday19to20Tip8 = Tip(header: "🤓", title: "Use your freetime to \"be seen as a recognized expert\" within your industry", body: "Attend industry events, enroll in a class or specialized certification program, blog on LinkedIn, or take on a leadership role in a relevant professional organization. \n\nThis will help you earn a raise, get promoted, or find a better job." , sourceName: "Havard Business Review", sourceURL: "https://hbr.org/2018/02/how-to-increase-your-influence-at-work", sponsorLogo: "", sponsorURL: "")

//WED
let weekday19to20Tip9 = Tip(header: "📞", title: "Increase happiness: Call a family member or an old friend", body: "The number one thing guaranteed to bring the most happiness isn’t actually a thing—it’s a person. Study: Relationships with family, friends and lovers are necessary for our own personal happiness.", sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/health/wellness/how-to-be-happy/", sponsorLogo: "", sponsorURL: "")
let weekday19to20Tip10 = Tip(header: "👫", title: "Get a mentor. 90% of surveyed self-made millionaires had a mentor who helped them reach the millionaire status", body: "Mentors can come from several aspects of your life: \n\n• Parent Mentors \n• Teacher Mentors \n• Workplace Mentors \n• Community Mentors \n• Book Mentors" , sourceName: " ThinkRichThinkPoor.com", sourceURL: "https://thinkrichthinkpoor.com/money-management/11-habits-self-made-millionaires/", sponsorLogo: "", sponsorURL: "")
let weekday19to20Tip11 = Tip(header: "📵", title: "Take a social media break and spend more time in real life with cherished loved ones", body: "Study: The more time you spend on social media, the less happy you are. The reason? Looking at pictures and reading updates from friends leads you to compare your worst self to their best selves, leaving you feeling sad and left out." , sourceName: "Reader's Digiest", sourceURL: "https://www.rd.com/health/wellness/how-to-be-happy/", sponsorLogo: "", sponsorURL: "")
let weekday19to20Tip12 = Tip(header: "👨‍👩‍👧‍👦", title: "Study: Spending 2 hours with family or friends tonight will increase your happiness", body: "Don’t just sit on the couch by yourself when you get home. A big reason why people are happier on weekends compared to weekdays is explained by differences in the amount of time spent with friends or family between weekends and weekdays (7.1 vs. 5.4 hours). \n\nThe extra daily social time of 1.7 hours in weekends raises average happiness by about 2%." , sourceName: "The Ladders", sourceURL: "https://www.theladders.com/career-advice/lights-7-night-time-rituals-will-make-happy-productive", sponsorLogo: "", sponsorURL: "")

//THUR
let weekday19to20Tip13 = Tip(header: "📵", title: "Take a social media break and spend more time in real life with cherished loved ones", body: "A study found that the more time you spend on social media, the less happy you are. The reason? Looking at pictures and reading updates from friends leads you to compare your worst self to their best selves, leaving you feeling sad and left out." , sourceName: "Reader's Digiest", sourceURL: "https://www.rd.com/health/wellness/how-to-be-happy/", sponsorLogo: "", sponsorURL: "")
let weekday19to20Tip14 = Tip(header: "🔥", title: "To reduce heartburn, don’t eat 3-4 hours before bed", body: "Researchers say that it takes 3-4 hours for food to clear the stomach. In chronic heartburn, stomach acid slips into the esophagus, and that’s more likely when lying in bed shortly after a meal, when gravity is not helping to keep digestive juices in the stomach." , sourceName: "The New York Times", sourceURL: "https://well.blogs.nytimes.com/2011/09/05/really-the-claim-to-reduce-heartburn-dont-eat-four-hours-before-bed/", sponsorLogo: "", sponsorURL: "")
let weekday19to20Tip15 = Tip(header: "", title: "Read a book. Those who read 7+ books per year are more than 122% more likely to be millionaires as opposed to those who never read or only read 1-3 books per year, survey finds", body: "Reading dramatically correlates with income and higher education, as well as overall happiness. For example, Bill Gates reads 50 books a year and Warren Buffett spends as much as 80% of his day reading." , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2017/04/07/7-rich-habits-of-highly-successful-people.html", sponsorLogo: "", sponsorURL: "")
let weekday19to20Tip16 = Tip(header: "", title: "Millionaire habit: Start with your current income, increase it, and then start adding multiple flows of income", body: "You won't get rich without multiple flows of income. Developing multiple flows of income could mean starting a side hustle, generating passive income, or picking up a high-paying side job.", sourceName: "Yahoo! Finance", sourceURL: "https://uk.finance.yahoo.com/news/11-habits-start-20s-want-150800135.html", sponsorLogo: "", sponsorURL: "")

//FRI
let weekday19to20Tip17 = Tip(header: "", title: "Avoid alcohol, chocolate, nut butter, spicy foods, and junk foods after 8 p.m.", body: "Studies have found that consuming these 5 foods at night can led to weight gain and a poor night of sleep.", sourceName: "Men's Journal", sourceURL: "https://www.mensjournal.com/food-drink/five-foods-avoid-after-8-pm/", sponsorLogo: "", sponsorURL: "")

let weekday19to20Tip18 = Tip(header: "", title: "Live Longer: Spend tonight with your family or friends", body: "Having just 3 social ties may decrease your risk of early death by more than 200%. \n\nA strong social circle might also help you react less negatively to stress, perhaps further explaining the positive effect on lifespan." , sourceName: "Healthline", sourceURL: "https://www.healthline.com/nutrition/13-habits-linked-to-a-long-life", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekday19to20Tip19 = Tip(header: "", title: "Millionaire Habit: Don't spend your free time watching TV or surfing the Internet", body: "• People Struggling Financially: 77% spend more than an hour a day watching TV, and 74% spend more than an hour a day using the internet recreationally. \n\n• Millionaires: 66% spend less than an hour a day watching TV, and 63% spend less than an hour a day on the internet unless it is job-related. \n\nMillionaires use their free time engaged in: \n• personal development, \n• networking, \n• volunteering, \n• working side jobs or side businesses, \n• or pursuing some goal.", sourceName: "SUCCESS Magazine", sourceURL: "https://www.success.com/16-rich-habits/", sponsorLogo: "", sponsorURL: "")
let weekday19to20Tip20 = Tip(header: "", title: "Millionaire habit: Read every day. It increases your knowledge, which allows you to see more opportunities, which translates into more money", body: "People Struggling Financially: Only 2% engage in daily self-improvement reading, and as a result, the poor don’t grow professionally and are among the first to be fired or downsized. \n\nMillionaires: 88% read 30+ minutes every day. They read: \n• Educational career-related material \n•Current events \n•Personal development books \n• Biographies of successful people \n• History books", sourceName: "SUCCESS Magazine", sourceURL: "https://www.success.com/16-rich-habits/", sponsorLogo: "", sponsorURL: "")

//WEEK 2
//MON
let weekday19to20Tip21 = Tip(header: "", title: "Ultra-successful people read a lot. Books are a gateway to learning and knowledge.", body: "• Bill Gates reads about 50 books per year, which breaks down to 1 per week \n• Mark Cuban reads 3+ hours every day \n• Elon Musk is an avid reader and when asked how he learned to build rockets, he said \"I read books.\" \n• Warren Buffett read 600-1000 pages per day when he was beginning his investing career, and still devotes about 80% of each day to reading." , sourceName: "Huffington Post", sourceURL: "https://www.huffpost.com/entry/the-reading-habits-of-ult_b_9688130", sponsorLogo: "", sponsorURL: "")
let weekday19to20Tip22 = Tip(header: "🙂", title: "Increase happiness by doing anything other than looking at a screen during your freetime", body: "People who spent more time seeing their friends in person, exercising, reading or even doing homework were happier. However, people who spent more time on the internet, social media, or watching TV were less happy." , sourceName: "Quartz", sourceURL: "https://qz.com/1190151/why-am-i-unhappy-a-new-study-explains-americas-unhappiness-epidemic/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
//let weekday19to20Tip23
//let weekday19to20Tip24


//TUE
let weekday19to20Tip25 = Tip(header: "🗣", title: "Increase wellbeing by saying: \"I am enough\"", body: "Repeating this phrase (out loud and in your head) will eventually make it difficult for your mind to object to it. It will improve your confidence and outlook on life." , sourceName: "Marisa Peer, author of Ultimate Confidence", sourceURL: "https://www.marisapeer.com/i-am-enough-marisa/", sponsorLogo: "", sponsorURL: "")
let weekday19to20Tip26 = Tip(header: "", title: "Interview of 20+ billionaires: All of them read. Books are one of the methods billionaires use to learn to do business", body: "Billionaires read: \n• Business newspapers \n• Business books \n• Novels", sourceName: "Market Watch", sourceURL: "https://www.marketwatch.com/story/4-habits-that-self-made-billionaires-practice-nearly-every-day-2019-07-11", sponsorLogo: "", sponsorURL: "")
//let weekday19to20Tip27
//let weekday19to20Tip28

//WED
let weekday19to20Tip29 = Tip(header: "📵", title: "Avoid screen-time tonight because it reduces creativity", body: "When your brain is fed a constant stream of stimulating entertainment on a 2-D screen with flat, unnatural light, your senses are saturated and creative drive is reduced." , sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/mental-wealth/201704/10-ways-protect-the-brain-daily-screen-time", sponsorLogo: "TBD", sponsorURL: "www.test.com")
//let weekday19to20Tip30
//let weekday19to20Tip31
//let weekday19to20Tip32


//THUR
let weekday19to20Tip33 = Tip(header: "", title: "Get 150+ minutes of light exercise per week. It's associated with an increase of life expectancy of as much as 4.5 years compared to no exercise", body: "Even getting 75 minutes of exercise per week was associated with an increase of 1.8 years in life expectancy relative to no exercise. \n\nPeople who were inactive and obese had a life expectancy that was 5-7 years shorter than people who were normal weight and moderately active." , sourceName: "PLOS Medicine", sourceURL: "https://journals.plos.org/plosmedicine/article?id=10.1371/journal.pmed.1001335", sponsorLogo: "", sponsorURL: "")
//let weekday19to20Tip34
//let weekday19to20Tip35
//let weekday19to20Tip36

//FRI
let weekday19to20Tip37 = Tip(header: "", title: "Study: People who read books for 30+ minutes a day lived 2 years longer than people who didn’t read", body: "The key is to get some (book) reading in every single day because it: \n• improves intelligence and emotional IQ, \n• reduces stress, and \n• allows readers to, on average, live longer than non-readers." , sourceName: "Bustle", sourceURL: "https://www.bustle.com/p/how-much-should-i-read-a-day-these-studies-have-some-answers-on-the-ideal-amount-of-time-70040", sponsorLogo: "", sponsorURL: "")
//let weekday19to20Tip38
//let weekday19to20Tip39
//let weekday19to20Tip40

//WEEK 1
//MON
let weekdayNow19to20TipArray0 = [weekday19to20Tip1, weekday19to20Tip2, weekday19to20Tip3, weekday19to20Tip4]
let weekdayNow19to20Topic0 = Topic(title: weekdayNow19to20Title, icon: weekdayNow19to20Icon, tip: weekdayNow19to20TipArray0)
//TUE
let weekdayNow19to20TipArray1 = [weekday19to20Tip5, weekday19to20Tip6, weekday19to20Tip7, weekday19to20Tip8]
let weekdayNow19to20Topic1 = Topic(title: weekdayNow19to20Title, icon: weekdayNow19to20Icon, tip: weekdayNow19to20TipArray1)
//WED
let weekdayNow19to20TipArray2 = [weekday19to20Tip9, weekday19to20Tip10, weekday19to20Tip11, weekday19to20Tip12]
let weekdayNow19to20Topic2 = Topic(title: weekdayNow19to20Title, icon: weekdayNow19to20Icon, tip: weekdayNow19to20TipArray2)
//THUR
let weekdayNow19to20TipArray3 = [weekday19to20Tip13, weekday19to20Tip14, weekday19to20Tip15, weekday19to20Tip16]
let weekdayNow19to20Topic3 = Topic(title: weekdayNow19to20Title, icon: weekdayNow19to20Icon, tip: weekdayNow19to20TipArray3)
//FRI
let weekdayNow19to20TipArray4 = [weekday19to20Tip17, weekday19to20Tip18, weekday19to20Tip19, weekday19to20Tip20]
let weekdayNow19to20Topic4 = Topic(title: weekdayNow19to20Title, icon: weekdayNow19to20Icon, tip: weekdayNow19to20TipArray4)

//WEEK 2 (WIP)
//MON
let weekdayNow19to20TipArray5 = [weekday19to20Tip21, weekday19to20Tip22, weekday19to20Tip3, weekday19to20Tip2]
let weekdayNow19to20Topic5 = Topic(title: weekdayNow19to20Title, icon: weekdayNow19to20Icon, tip: weekdayNow19to20TipArray5)
//TUE
let weekdayNow19to20TipArray6 = [weekday19to20Tip25, weekday19to20Tip26, weekday19to20Tip7, weekday19to20Tip6]
let weekdayNow19to20Topic6 = Topic(title: weekdayNow19to20Title, icon: weekdayNow19to20Icon, tip: weekdayNow19to20TipArray6)
//WED
let weekdayNow19to20TipArray7 = [weekday19to20Tip29, weekday19to20Tip12, weekday19to20Tip11, weekday19to20Tip10]
let weekdayNow19to20Topic7 = Topic(title: weekdayNow19to20Title, icon: weekdayNow19to20Icon, tip: weekdayNow19to20TipArray7)
//THUR
let weekdayNow19to20TipArray8 = [weekday19to20Tip33, weekday19to20Tip14, weekday19to20Tip15, weekday19to20Tip16]
let weekdayNow19to20Topic8 = Topic(title: weekdayNow19to20Title, icon: weekdayNow19to20Icon, tip: weekdayNow19to20TipArray8)
//FRI
let weekdayNow19to20TipArray9 = [weekday19to20Tip37, weekday19to20Tip18, weekday19to20Tip19, weekday19to20Tip17]
let weekdayNow19to20Topic9 = Topic(title: weekdayNow19to20Title, icon: weekdayNow19to20Icon, tip: weekdayNow19to20TipArray9)

// MARK: - Now, Weekday, 21to24

let weekdayNow21to24Title = "Now, Weekday, 21to24"
let weekdayNow21to24Icon = "Now"

//Week 1
//Mon
let mondayNow21to24Week1Tip1 = Tip(header: "🛌", title: "Go to bed early tonight because people report Tuesday as the 2nd most tiring day of the week", body: "An analysis of Google searches found that people searched for the term \"fatigue\" the most on Wednesday, followed by Tuesday and Thursday." , sourceName: "The Washington Post", sourceURL: "https://www.washingtonpost.com/news/wonk/wp/2014/12/03/the-google-misery-index-the-times-of-year-were-most-depressed-anxious-and-stressed/?utm_term=.ce96d202a3f3", sponsorLogo: "", sponsorURL: "")
let mondayNow21to24Week1Tip2 = Tip(header: "👔", title: "Prepare for tomorrow with a pre-bedtime routine", body: "• Lay out tomorrow's outfit \n• Lay out gym clothes \n• Prepare a healthy lunch \n\nA little prep work will help ease the morning rush." , sourceName: "mindbodygreen, a lifestyle media brand", sourceURL: "https://www.mindbodygreen.com/0-20168/a-nighttime-ritual-for-deep-restful-sleep.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let mondayNow21to24Week1Tip3 = Tip(header: "💤", title: "Fall asleep faster by declaring a digital-free zone one hour before bedtime", body: "The bright blue glow of tech toys disrupt your body clock. Plus, that one last look at a social media app can easily turn into minutes of mindless web surfing that could be spent doing something more relaxing in the morning — like meditating." , sourceName: "mindbodygreen, a lifestyle media brand", sourceURL: "https://www.mindbodygreen.com/0-20168/a-nighttime-ritual-for-deep-restful-sleep.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let mondayNow21to24Week1Tip4 = Tip(header: "💡", title: "Dim or turn off the lights one hour before bed", body: "Exposure to too much electrical light before bed can significantly lower levels of melatonin, the hormone that helps make us feel sleepy." , sourceName: "mindbodygreen, a lifestyle media brand", sourceURL: "https://www.mindbodygreen.com/0-20168/a-nighttime-ritual-for-deep-restful-sleep.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//Tues
let weekdayNow21to24Tip4 = Tip(header: "🛌", title: "Increase confidence tomorrow by sleeping on your back or stomach with your arms and legs outstretched", body: "When we sleep, we tend to lie on our side and wrap our arms around ourselves or lay in a fetal position. This, however, is a low power position and affects the way you think and feel tomorrow. \n\nThe ideal sleeping position is similar to a power pose in an 'X' or 'Y' position, but simply on your back or stomach instead.", sourceName: "Business Insider", sourceURL: "http://www.businessinsider.com/sleep-position-may-affect-success-2013-11", sponsorLogo: "sponsor", sponsorURL: "sponsorURL")
let weekdayNow21to24Tip5 = Tip(header: "🔥", title: "Burn more fat by exercising before breakfast tomorrow", body: "Research suggests exercising in the a.m. — specifically, before breakfast — is most helpful for losing weight. The reason early morning workouts seem to accelerate weight loss and boost energy levels may be that they set up the body for an all-day fat burn.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/the-best-time-of-day-to-do-everything-2016-5#-1", sponsorLogo: "sponsor", sponsorURL: "sponsorURL")
let weekdayNow21to24Tip6 = Tip(header: "🧠", title: "Even one night of sleep deprivation can cause Alzheimer's-related proteins to build up in the brain", body: "During the day, mental activity causes brain cells to release proteins, which are basically waste byproducts. Sleep cleanses the human brain of these toxins. \n\nLong periods of bad sleep builds up these toxins, making it harder to sleep, creating a negative spiral towards Alzheimer's.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/alzheimers-protein-buildup-in-brain-after-bad-sleep-2018-4", sponsorLogo: "ABC", sponsorURL: "URL")
let weekdayNow21to24Tip7 = Tip(header: "📱", title: "Using smartphones after 9pm equals less sleep tonight, feeling tired tomorrow, and lower productivity tomorrow", body: "Smartphones make it harder to both fall asleep and stay asleep. Smartphones expose us to light, including blue light. Blue light inhibits the sleep-promoting chemical melatonin, meaning that the displays of smartphones are capable of producing this effect.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2014/01/research-using-a-smartphone-after-9-pm-leaves-workers-disengaged", sponsorLogo: "", sponsorURL: "")

//Wed
let weekdayNow21to24Tip8 = Tip(header: "😴", title: "Fall asleep faster by winding down your mind 30 minutes before bed", body: "DON'T do anything too stimulating, like texting, checking social media, or watching an action packed TV show. \n\nDO activities that relax you and bring closure to your evening, like reading, journaling, or setting out clothes for the next day.", sourceName: "Health", sourceURL: "https://www.health.com/mind-body/20-things-you-shouldn-t-do-before-bed#skip-your-wind-down-time", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip9 = Tip(header: "📵", title: "Be more focused tomorrow - Don't check your work email after 9 p.m.", body: "Study: People who used their smartphones for work purposes after 9 p.m. reported being more tired and unfocused the next day.", sourceName: "Health", sourceURL: "https://www.health.com/mind-body/20-things-you-shouldn-t-do-before-bed#skip-your-wind-down-time", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip10 = Tip(header: "💤", title: "Jeff Bezos, the richest person in the world, prioritizes 8 hours of sleep each night", body: "Your work can suffer when you're tired. \"8 hours of sleep makes a big difference for me, and I try hard to make that a priority. For me, that's the needed amount to feel energized and excited. If you shortchange your sleep, you might get a couple of extra 'productive' hours, but that productivity might be an illusion.\"", sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2017/04/21/why-jeff-bezos-makes-getting-8-hours-of-sleep-a-top-priority.html", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip11 = Tip(header: "😴", title: "Sleep better by creating a \"sleep sanctuary\" in your bedroom", body: "To visually send the brain the message that it’s time to sleep, the bedroom should be uncluttered, void of reminders of tasks to be done, and cozy-feeling. Keep ALL screens out of the bedroom, use blackout curtains, and keep the temperature of the room cool.", sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/mental-wealth/201704/10-ways-protect-the-brain-daily-screen-time", sponsorLogo: "", sponsorURL: "")

//Thur
let weekdayNow21to24Tip12 = Tip(header: "💭", title: "If you need to remember something, read it before bedtime", body: "When you sleep, you brain puts all of your short term memory into the long term memory. That means that the information you read right before bed stays with you longer than information learned earlier in the day.", sourceName: "Bustle", sourceURL: "https://www.bustle.com/p/9-reasons-why-you-should-read-before-bed-63326", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip13 = Tip(header: "📖", title: "Reduce stress before bed. Reading for 6 minutes reduces stress levels by 68%", body: "Psychologists believe this is because the human mind has to concentrate on reading and the distraction of being taken into a literary world eases muscle tension. Reading worked best at lowering stress levels: \n\n• Reading (68%) \n• Listening to music (61%)\n• Drinking tea (54%)", sourceName: "The Telegraph", sourceURL: "https://www.telegraph.co.uk/news/health/news/5070874/Reading-can-help-reduce-stress.html", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip14 = Tip(header: "🙅‍♀️", title: "One of the biggest setbacks to a good night's sleep is watching TV or looking at a computer before bed", body: "Electronic devices make it hard to fall asleep because the light emanating from the screen has the same effect as daylight. Instead, read an actual book because its a calms your body to transition into sleep mode.", sourceName: "National Sleep Foundation", sourceURL: "https://sleepfoundation.org/sleep-tools-tips/healthy-sleep-tips", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip15 = Tip(header: "🍕", title: "Go to sleep. Not getting enough sleep tonight is linked to consuming more calories tomorrow", body: "Study: People who were sleep-deprived consumed, on average, 385 calories extra per day. The extra calories were mostly in the form of fat. Unfortunately, poor food choices during the day also may affect how well we sleep at night.", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/alicegwalton/2016/11/02/the-vicious-cycle-of-sleep-deprivation-and-overeating/", sponsorLogo: "", sponsorURL: "")

//Fri
let weekdayNow21to24Tip16 = Tip(header: "🙆‍♀️", title: "Stretching before bed helps the mind and body relax, it will help you sleep better, too", body: "When you prepare your body for sleep through [gently] stretching, you’re helping your body recover and regenerate. Gently streching relaxes the muscles and, if done properly, has a calming effect.", sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/health/fitness/stretches-before-bed-proper/", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip17 = Tip(header: "😴", title: "Sleep better by not drinking alcohol before bed", body: "While alcohol makes it easier to fall asleep, as your body begins to metabolize the alcohol, your REM sleep is reduced. Impaired REM sleep leads to waking up tired and unable to concentrate.", sourceName: "Health", sourceURL: "https://www.health.com/mind-body/20-things-you-shouldn-t-do-before-bed#skip-your-wind-down-time", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip18 = Tip(header: "💤", title: "For a longer, healthier life, keep a regular sleep schedule—even on weekends", body: "Going to bed at different times on weekends compared to weekdays is associated with poorer sleep quality and increased tiredness. Altered sleep schedules is also associated with a greater risk of accidents, lower immune system, [higher] risk for chronic disease, and a shorter life expectancy.", sourceName: "Bustle", sourceURL: "https://www.bustle.com/articles/145170-7-tips-for-maintaining-a-regular-sleep-schedule-because-consistency-is-important", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip19 = Tip(header: "🤔", title: "People who sleep less than 6 hours per night are more likely to develop prediabetes", body: "Many people with prediabetes go on to develop type 2 diabetes.", sourceName: "WebMD", sourceURL: "https://www.webmd.com/diabetes/news/20090312/sleep-deprivation-linked-to-prediabetes", sponsorLogo: "", sponsorURL: "")

////// WEEK 2
//Mon
let weekdayNow21to24Tip20 = Tip(header: "⏰", title: "If your alarm clock woke you up this morning, then you're probably sleep deprived", body: "If you were getting adequate sleep, your brain would awaken you before the alarm goes off. On average, we need 7.5 hours per night." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/sleep-disorders/features/diabetes-lack-of-sleep#2", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow21to24Tip21 = Tip(header: "🛌", title: "Survey of 300 high achievers found that the average wake-up time was 6:27 a.m.", body: "Going to bed at 10:30 p.m. allows you to get 8 hours of sleep and wake up at 6:30 a.m. \n\nSuccessful people carve out time in their morning to do to things that make them feel relaxed, energized and motivated. That can mean working out, reading, meditating or just spending time with your loved ones." , sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/2018/10/21/smarter-living/tips-better-morning-routine.html", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip22 = Tip(header: "💪", title: "Sleeping 10 hours improves athletic performance", body: "Study: When Stanford swimmers increased their sleep time to 10 hours a night, they felt happier, more energetic—and their performance in the pool improved dramatically." , sourceName: "UC Berkeley, Greater Good Science Center", sourceURL: "https://greatergood.berkeley.edu/article/item/the_quiet_secret_to_success", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip23 = Tip(header: "🍕", title: "Avoid eating food late at night because your body is more likely to store those calories as fat rather than burn it as energy", body: "Studies suggest that eating out of our normal rhythm, like late at night, may cause weight gain. People tend to choose more sweet and salty foods, which tend to be more caloric." , sourceName: "The Washington Post", sourceURL: "https://www.washingtonpost.com/national/health-science/why-eating-late-at-night-may-be-particularly-bad-for-you-and-your-diet/2015/08/24/ad8b85ac-2583-11e5-b77f-eb13a215f593_story.html?utm_term=.085b3afcffae", sponsorLogo: "", sponsorURL: "")

//TUES
let weekdayNow21to24Tip24 = Tip(header: "😴", title: "Go to bed early tonight because people report Wednesday as the most tiring day of the week", body: "An analysis of Google searches found that people searched for the term \"fatigue\" the most on Wednesday. The most searches of \"fatigue\" occured on Monday through Thursday." , sourceName: "The Washington Post", sourceURL: "https://www.washingtonpost.com/news/wonk/wp/2014/12/03/the-google-misery-index-the-times-of-year-were-most-depressed-anxious-and-stressed/?utm_term=.ce96d202a3f3", sponsorLogo: "", sponsorURL: "")//*TUES

let weekdayNow21to24Tip25 = Tip(header: "🛌", title: "Going to bed and waking up at the same time every day improves performance", body: "Irregular patterns of sleep and wakefulness correlated with lower GPA, more difficulty falling asleep/waking up, and delayed release of the sleep-promoting hormone melatonin. \n\nGoing to sleep and waking up at approximately the same time each day appears to be as important as the number of hours you sleep." , sourceName: "Harvard Medical School", sourceURL: "https://sleep.med.harvard.edu/news/584/Irregular+Sleeping+Patterns+Linked+to+Poorer+Academic+Performance+in+College+Stu", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip26 = Tip(header: "💤", title: "Getting less than 7 hours of sleep a night has been linked to diabetes and heart disease", body: "The quality of your sleep tonight directly impacts your ability to perform tomorrow. If you’re constantly trying to get by on less than 7 hours of sleep, it will catch up with you, likely sooner rather than later." , sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/2018/10/21/smarter-living/tips-better-morning-routine.html", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip27 = Tip(header: "🧠", title: "Going to sleep shortly after learning new information is most beneficial for memory recall", body: "Participants who learned information before bedtime and took tests several hours later had superior performance in memory recall compared to particpants who learned the same information in the morning followed by a fully day of wakefulness. If you need to remember any information, you should review it prior to going to bed." , sourceName: "University of Notre Dame", sourceURL: "https://news.nd.edu/news/learning-best-when-you-rest-sleeping-after-processing-new-info-most-effective-new-study-shows/", sponsorLogo: "", sponsorURL: "")

//WED
let weekdayNow21to24Tip28 = Tip(header: "📵", title: "Study: Using your smartphone within the 1 hour before bedtime increases the amount of time it you to fall asleep", body: "Researchers found that as smartphone use increased – particularly around bedtime – sleep duration and quality decreased. \n\nPoor sleep increases your risk of: \n• obesity \n• diabetes \n• cardiovascular disease \n• depression \n• early death", sourceName: "University of California San Francisco", sourceURL: "https://www.ucsf.edu/news/2016/11/404886/smartphone-use-increases-so-does-lack-sleep", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip29 = Tip(header: "🛌", title: "The optimal sleeping temperature is between 60 and 68 degrees Fahrenheit (16 and 20 degrees Celsius)", body: "Temps in this range cause a drop in your core body temperature that initiates sleepiness. If it's too hot, you'll have more trouble sleeping." , sourceName: "mindbodygreen, a lifestyle media brand", sourceURL: "https://www.mindbodygreen.com/0-20168/a-nighttime-ritual-for-deep-restful-sleep.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow21to24Tip30 = Tip(header: "😀", title: "Exercising in the morning improves our mood throughout the day", body: "Cario workouts - walking, running, and swimming - can elevate mood. When we exercise in the morning, we enjoy these effects all day. If you wait to exercise until the evening, you'll end up sleeping through some of the good feelings.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip31 = Tip(header: "💵", title: "Read tonight. 88% of rich people surveyed devote 30+ minutes each day to education or self-improvement through reading", body: "Most of the rich people surveyed do not read for entertainment; they prefer biographies, history, and self-help books. There are important life lessons to be learned in biographies of people with rags-to-riches stories.", sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2016/11/29/7-habits-of-highly-successful-people-from-a-man-who-spent-5-years-studying-them.html", sponsorLogo: "", sponsorURL: "")

//THUR
let weekdayNow21to24Tip32 = Tip(header: "📖", title: "Highly successful people read before bed", body: "Microsoft co-founder Bill Gates reads for an hour before bed. His reading topics range from healthcare to climate change to business and politics." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/why-executives-read-before-bed-2017-9", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip33 = Tip(header: "😀", title: "Go to bed. Becoming a morning person will increase your happiness", body: "Study: Morning people are actually happier and more satisfied with life overall than night owls. Morning people also tended to say they felt healthier than did night owls. \n\nTo become a morning person: go to bed earlier and wake up earlier, wake up at the same time every day, and increase your natural light exposure early in the morning." , sourceName: "Live Science", sourceURL: "https://www.livescience.com/20880-morning-people-happier.html", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip34 = Tip(header: "🙅‍♀️", title: "Avoid sugar and alcohol prior to bedtime", body: "Because they inhibit sleep patterns and hinder muscle recovery and growth. Growth hormones release only when you're in REM sleep, which is the third cycle of sleep." , sourceName: "8 Weeks to SEALFIT", sourceURL: "https://www.amazon.com/dp/B00DFFGMPO/ref=dp-kindle-redirect?_encoding=UTF8&btkr=1", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip35 = Tip(header: "🛌", title: "Get 7+ hours of sleep. When we’re tired we eat more which results in weight gain", body: "In a meta-analysis of 11 studies, researchers showed that people ate 385 extra calories following a night of sleep deprivation. That’s about the same amount as a serving of Häagen-Dazs peanut butter ice cream a day." , sourceName: "Vox", sourceURL: "https://www.vox.com/science-and-health/2019/3/26/18280663/night-eating-sleep-loss-weight-gain", sponsorLogo: "", sponsorURL: "")

//FRI
let weekdayNow21to24Tip36 = Tip(header: "🍺", title: "Sleep better: Avoid alcohol, cigarettes, caffeine, and heavy meals in the evening", body: "Alcohol, cigarettes, and caffeine can disrupt sleep. Eating big or spicy meals can cause discomfort from indigestion that can make it hard to sleep. \n\nAvoid eating large meals 2-3 hours before bedtime. Try a light snack 45 minutes before bed if you’re still hungry." , sourceName: "National Sleep Foundation", sourceURL: "https://www.sleepfoundation.org/articles/healthy-sleep-tips", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip37 = Tip(header: "😴", title: "Elite performers sleep more than 8 hours at night so they can be at peak performance", body: "A study of the best violinists, found that the best violinists slept one hour a night more than the less-accomplised violinists. The best violinists averaged 8.6 hours of sleep each night." , sourceName: "UC Berkeley, Greater Good Science Center", sourceURL: "https://greatergood.berkeley.edu/article/item/the_quiet_secret_to_success", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip38 = Tip(header: "😴", title: "Sleep better: Avoid blue lights emitted from electronics tonight", body: "Light is the biggest anchor for sleep. Blue light suppresses melatonin twice as much as other wavelengths of light. \n\nIf you're unwilling to banish technology at bedtime, you can try: \n\n• Apple's Night Shift mode \n• f.lux software \n• Twilight software" , sourceName: "SUCCESS Magazine", sourceURL: "https://www.success.com/the-new-secrets-of-perfect-sleep/", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip39 = Tip(header: "😴", title: "Keep the same sleep schedule (even on the weekends)", body: "It may be difficult to give up sleeping in on weekends, but inconsistent sleep patterns can make it harder to reach deep sleep. Inconsistent sleep patterns also cause weight gain." , sourceName: "SUCCESS Magazine", sourceURL: "https://www.success.com/the-new-secrets-of-perfect-sleep/", sponsorLogo: "", sponsorURL: "")

//WEEK 3
//MON
let weekdayNow21to24Tip40 = Tip(header: "🌅", title: "Go to bed earlier. Top CEOs wake up early", body: "In a poll of 20 executives, 90% said they wake up before 6AM on weekdays. \n\n• 4:00AM: PepsiCo CEO Indra Nooyi \n• 4:30AM: Disney CEO Bob Iger \n• 5:30AM: Twitter CEO Jack Dorsey" , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/what-successful-people-do-before-breakfast-2015-10", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow21to24Tip41 = Tip(header: "😴", title: "Live longer: Get 7-9 hours of sleep per night", body: "Getting enough sleep recharges your brain, keeps your immune system functioning smoothly, and decreases your risk of a heart attack. \n\nGo to bed at the same time every night and wake up the same time each morning; keep your bedroom dark, quiet, and cool; and use a comfortable mattress and pillows.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip42 = Tip(header: "", title: "Millionaire habit: Wake up 3 hours before your work day begans", body: "Study of 177 self-made millionaires: 50% of them woke up at least 3 hours before their work day began. Most of them start the day at dawn, or even before. \n\nGetting up at 5AM to tackle the top 3 things you want to accomplish in your day allows you to regain control of your life. It gives you a sense of confidence that you control your life.", sourceName: "Yahoo! Finance", sourceURL: "https://uk.finance.yahoo.com/news/11-habits-start-20s-want-150800135.html", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip43 = Tip(header: "", title: "Getting 8.5 hours of sleep each night can drop cravings for junk food by 62% and decrease overall appetite by 14%", body: "Mayo Clinic researchers note similar findings: In their study, adults who slept 80 minutes less than a control group consumed an average of 549 additional calories daily. That’s more calories than you’ll find in a Big Mac!", sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/weight-loss-lifestyle/", sponsorLogo: "", sponsorURL: "")

//TUES
let weekdayNow21to24Tip44 = Tip(header: "", title: "Interview of 20+ billionaires: Most wake between 5 a.m. and 6 a.m and have a morning routine they follow religiously", body: "It’s important to get up early so they can have time for themselves — when they aren’t distracted by calls and other people. \n\nTheir morning routines include: \n• Reading \n• Exercise \n• Meditation \n• Walking their kids to school", sourceName: "Market Watch", sourceURL: "https://www.marketwatch.com/story/4-habits-that-self-made-billionaires-practice-nearly-every-day-2019-07-11", sponsorLogo: "", sponsorURL: "")
let weekdayNow21to24Tip45 = Tip(header: "", title: "For adults, the Centers for Disease Control and Prevention (CDC) recommends between 7-9 hours of sleep per night", body: "It's a myth that adults need only 5 hours or less of sleep for general health. \n\nA lack of sleep will affect: \n• Your heart (increasing risk of high blood pressure and heart attack) \n• Your mind (decreasing cognitive functioning and increasing risk of depression) \n• And increases your risk of diabetes and obesity.", sourceName: "The Ladders", sourceURL: "https://www.theladders.com/career-advice/top-8-sleep-myths-that-can-harm-your-health", sponsorLogo: "", sponsorURL: "")
//weekdayNow21to24Tip46
//weekdayNow21to24Tip47

//WED
let saturday21to24Tip48 = Tip(header: "😴", title: "Not getting enough sleep makes you less attractive", body: "Study: People showed redder, more swollen eyes, dark circles, and paler skin after a night of no sleep. The same study also found that sleep-deprived people were perceived to look sadder than they did after a good night's sleep.", sourceName: "Allure", sourceURL: "https://www.allure.com/story/sleep-and-skin-what-happens", sponsorLogo: "", sponsorURL: "")





//WEEK 1
// Monday
let weekdayNow21to24TipArray0 = [mondayNow21to24Week1Tip1, mondayNow21to24Week1Tip2, mondayNow21to24Week1Tip3, mondayNow21to24Week1Tip4]
let weekdayNow21to24Topic0 = Topic(title: weekdayNow21to24Title, icon: weekdayNow21to24Icon, tip: weekdayNow21to24TipArray0)

// Tuesday
let weekdayNow21to24TipArray1 = [weekdayNow21to24Tip4, weekdayNow21to24Tip5, weekdayNow21to24Tip6, weekdayNow21to24Tip7]
let weekdayNow21to24Topic1 = Topic(title: weekdayNow21to24Title, icon: weekdayNow21to24Icon, tip: weekdayNow21to24TipArray1)

// Wednesday
let weekdayNow21to24TipArray2 = [weekdayNow21to24Tip8, weekdayNow21to24Tip9, weekdayNow21to24Tip10, weekdayNow21to24Tip11]
let weekdayNow21to24Topic2 = Topic(title: weekdayNow21to24Title, icon: weekdayNow21to24Icon, tip: weekdayNow21to24TipArray2)

// Thursday
let weekdayNow21to24TipArray3 = [weekdayNow21to24Tip12, weekdayNow21to24Tip13, weekdayNow21to24Tip14, weekdayNow21to24Tip15]
let weekdayNow21to24Topic3 = Topic(title: weekdayNow21to24Title, icon: weekdayNow21to24Icon, tip: weekdayNow21to24TipArray3)

// Friday
let weekdayNow21to24TipArray4 = [weekdayNow21to24Tip16, weekdayNow21to24Tip17, weekdayNow21to24Tip18, weekdayNow21to24Tip19]
let weekdayNow21to24Topic4 = Topic(title: weekdayNow21to24Title, icon: weekdayNow21to24Icon, tip: weekdayNow21to24TipArray4)

////WEEK 2
// Monday
let weekdayNow21to24TipArray5 = [weekdayNow21to24Tip20, weekdayNow21to24Tip21, weekdayNow21to24Tip22, weekdayNow21to24Tip23]
let weekdayNow21to24Topic5 = Topic(title: weekdayNow21to24Title, icon: weekdayNow21to24Icon, tip: weekdayNow21to24TipArray5)

// Tuesday
let weekdayNow21to24TipArray6 = [weekdayNow21to24Tip24, weekdayNow21to24Tip25, weekdayNow21to24Tip26, weekdayNow21to24Tip27]
let weekdayNow21to24Topic6 = Topic(title: weekdayNow21to24Title, icon: weekdayNow21to24Icon, tip: weekdayNow21to24TipArray6)

// Wednesday
let weekdayNow21to24TipArray7 = [weekdayNow21to24Tip28, weekdayNow21to24Tip29, weekdayNow21to24Tip30, weekdayNow21to24Tip31]
let weekdayNow21to24Topic7 = Topic(title: weekdayNow21to24Title, icon: weekdayNow21to24Icon, tip: weekdayNow21to24TipArray7)

// Thursday
let weekdayNow21to24TipArray8 = [weekdayNow21to24Tip32, weekdayNow21to24Tip33, weekdayNow21to24Tip34, weekdayNow21to24Tip35]
let weekdayNow21to24Topic8 = Topic(title: weekdayNow21to24Title, icon: weekdayNow21to24Icon, tip: weekdayNow21to24TipArray8)

// Friday
let weekdayNow21to24TipArray9 = [weekdayNow21to24Tip36, weekdayNow21to24Tip37, weekdayNow21to24Tip38, weekdayNow21to24Tip39]
let weekdayNow21to24Topic9 = Topic(title: weekdayNow21to24Title, icon: weekdayNow21to24Icon, tip: weekdayNow21to24TipArray9)

//WEEK 3


// MARK: - MONTHS
// MARCH
let marchTip1 = Tip(header: "😔", title: "If you're feeling depressed, anxious, and stressed right now, you're not alone. March is the most miserable month of the year", body: "According to an analysis of Google searches, people's search interest for \"depression\", \"anxiety\", \"stress\", \"fatigue\", and \"pain\" were highest in March. Researchers have discovered greater incidence of depression and anxiety in the spring months. Lengthening daylight may confuse people's chemical regulatory system, which can affect mood.", sourceName: "The Washington Post", sourceURL: "https://www.washingtonpost.com/news/wonk/wp/2014/12/03/the-google-misery-index-the-times-of-year-were-most-depressed-anxious-and-stressed/?noredirect=on&utm_term=.0937735eaee2", sponsorLogo: "", sponsorURL: "")
// APRIL
let aprilTip1 = Tip(header: "😔", title: "If you're feeling depressed, anxious, and stressed right now, you're not alone. April is one of the most miserable months of the year", body: "According to an analysis of Google searches, people's search interest for \"depression\", \"anxiety\", \"stress\", \"fatigue\", and \"pain\" were higher than normal in April. Researchers have discovered greater incidence of depression and anxiety in the spring months. Lengthening daylight may confuse people's chemical regulatory system, which can affect mood.", sourceName: "The Washington Post", sourceURL: "https://www.washingtonpost.com/news/wonk/wp/2014/12/03/the-google-misery-index-the-times-of-year-were-most-depressed-anxious-and-stressed/?noredirect=on&utm_term=.0937735eaee2", sponsorLogo: "", sponsorURL: "")
// OCTOBER
let octoberTip1 = Tip(header: "😔", title: "If you're feeling depressed, anxious, and stressed right now, you're not alone. October is one of the most miserable months of the year", body: "According to an analysis of Google searches, people's search interest for \"depression\", \"anxiety\", \"stress\", \"fatigue\", and \"pain\" were higher than normal in October and November. As daylight decreases in the fall, people have more feelings of depression, anxiety, and stress.", sourceName: "The Washington Post", sourceURL: "https://www.washingtonpost.com/news/wonk/wp/2014/12/03/the-google-misery-index-the-times-of-year-were-most-depressed-anxious-and-stressed/?noredirect=on&utm_term=.0937735eaee2", sponsorLogo: "", sponsorURL: "")
// NOVEMBER
let novemberTip1 = Tip(header: "😔", title: "If you're feeling depressed, anxious, and stressed right now, you're not alone. November is one of the most miserable months of the year", body: "According to an analysis of Google searches, people's search interest for \"depression\", \"anxiety\", \"stress\", \"fatigue\", and \"pain\" were higher than normal in November. As daylight decreases in the fall, people have more feelings of depression, anxiety, and stress.", sourceName: "The Washington Post", sourceURL: "https://www.washingtonpost.com/news/wonk/wp/2014/12/03/the-google-misery-index-the-times-of-year-were-most-depressed-anxious-and-stressed/?noredirect=on&utm_term=.0937735eaee2", sponsorLogo: "", sponsorURL: "")


// MARK: - HOLIDAYS

let newyearsTip1 = Tip(header: "🎉", title: "New Year's resolutions are exactly the wrong way to change our behavior", body: "88% of all resolutions end in failure. Willpower, like a bicep, can only exert itself so long before it gives out; it's an extremely limited mental resource. Therefore, it makes no sense to try to quit smoking and lose weight at the same time. Instead, we should respect the weakness of self-control, and spread our resolutions out over the entire year.", sourceName: "The Wall Street Journal", sourceURL: "https://www.wsj.com/articles/SB10001424052748703478704574612052322122442", sponsorLogo: "", sponsorURL: "")
let newyearsTip2 = Tip(header: "🎊", title: "New Years’ Resolutions don’t work. 90-day sprints, then recovery breaks, work better", body: "Every 90 days, you review the previous 90 days, then you set new goals for the next 90 days. Every 90 days, you reset and re-assess. Every 90 days, you should have a celebration for the progress you’ve made.", sourceName: "Medium", sourceURL: "https://medium.com/thrive-global/30-behaviors-that-will-make-you-unstoppable-in-2019-e42c92cbcda9", sponsorLogo: "", sponsorURL: "")



