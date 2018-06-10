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

let weekendNow0to4Tip0 = Tip(header: sleepBetter, title: "Can't fall sleep? You may have high Blood Sugar", body: "High blood sugar is a red flag for sleep problems among people with diabetes for another reason. People who are tired will eat more because they want to get energy from somewhere. That can mean consuming sugar or other foods that can spike blood sugar levels. \n\nEat properly throughout the day to get your blood sugar under control so you can sleep better at night and wake up feeling great with lots of energy." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/sleep-disorders/features/diabetes-lack-of-sleep#1", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow0to4Tip1 = Tip(header: loseWeight, title: "Prevent weight gain by sleeping 7-8 hours per night.", body: "Some studies show that people who get less sleep tend to be heavier than those who sleep well." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/sleep-disorders/features/diabetes-lack-of-sleep#2", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekendNow0to4Tip2 = Tip(header: loseWeight, title: "Start your day by hitting the gym on an empty stomach in order to increase your energy level throughout the day.", body: "Research suggests that an early-morning workout on an empty stomach helps speed weight loss and boost energy levels by priming the body for an all-day fat burn. \n\nExercising first thing in the morning may push the body to tap into its fat reserves for fuel instead of simply \"burning off\" the most recent snack or meal." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/morning-routine-according-to-science-2017-12#hit-the-track-3", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekendNow0to4Tip3 = Tip(header: buildMuscle, title: "The three key breakfast ingredients are: protein, fiber, and healthy fats. ", body: "Most US breakfasts are lacking in all three. Instead, they're full of refined carbs, a type of unhealthy carbohydrate that gets rapidly turned into sugar in our bodies. Pancakes, bagels, muffins, and even cereal all fall into this category. Add juice to the mix and you've got a big dessert. \n\nInstead, try a couple of eggs with a few avocado slices, or some Greek yogurt (the plain kind, since the flavored varieties can be high in sugar) with fruit and nuts. Both of these options will fill you up, help smooth out your digestion, and power up your muscles." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")
var weekendNow0to4TipArray0 = [weekendNow0to4Tip0, weekendNow0to4Tip1, weekendNow0to4Tip2, weekendNow0to4Tip3]

let weekendNow0to4Topic0 = Topic(title: weekendNow0to4Title, icon: weekendNow0to4Icon, tip: weekendNow0to4TipArray0)

// MARK: - Now, Weekend, 5to8

let weekendNow5to8Title = "Now, 5to8"
let weekendNow5to8Icon = "Now"

let beMoreProductive = "BE MORE PRODUCTIVE"
let betterSkin = "BETTER SKIN"

let weekendNow5to8Tip0 = Tip(header: beMoreProductive, title: "Increase your productivity by doing work that is most meaningful to you during the first three hours after you wake up.", body: "According to research, your brain is most active and readily creative immediately following sleep. So, the best time to do your best work is during the first three hours of your day." , sourceName: "Benjamin P. Hardy, auhor of Willpower Doesn't Work", sourceURL: "https://medium.com/@benjaminhardy/this-morning-routine-will-save-you-20-hours-per-week-409f8acbde1", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow5to8Tip1 = Tip(header: success, title: "How you spend the first hour after waking up in the morning sets the standard for your productivity for the rest of the day.", body: "WIRED Magazine asked leaders in business what they do before they’ve even eaten breakfast. Some of the common themes were reading, meditation, and exercise" , sourceName: "WIRED", sourceURL: "https://www.wired.co.uk/article/what-is-productivity-be-more-productive-how-to-work", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow5to8Tip2 = Tip(header: navySealAdvice, title: "If you want to be successful in life, start by making your bed every day.", body: "Sometimes the simple act of making your bed can give the lift you need to start your day and provide you the satisfaction to end it right." , sourceName: "YouTube", sourceURL: "https://www.youtube.com/watch?v=U6OoCaGsz94", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekendNow5to8Tip3 = Tip(header: betterSkin, title: "Before you leave the house, apply moisturizer and drink a glass of water to keep your skin looking good.", body: "Dehydration makes your skin look more dry and wrinkled, which can be improved with proper hydration. You can also help \"lock\" moisture into your skin by using moisturizer, which creates a physical barrier to keep moisture in." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/diet/features/6-reasons-to-drink-water#3", sponsorLogo: "TBD", sponsorURL: "www.test.com")
var weekendNow5to8TipArray0 = [weekendNow5to8Tip0, weekendNow5to8Tip1, weekendNow5to8Tip2, weekendNow5to8Tip3]

let weekendNow5to8Topic0 = Topic(title: weekendNow5to8Title, icon: weekendNow5to8Icon, tip: weekendNow5to8TipArray0)

// MARK: - Now, Weekend, 9to11

let weekendNow9to11Title = "Now, Weekday, 9to11"
let weekendNow9to11Icon = "Now"


let weekendNow9to11Tip0 = Tip(header: health, title: "Before you go outside, wear sun screen, sunglasses, and a hat to prevent skin cancer.", body: "Skin cancer is the most common cancer in the United States. And your nose, eyelids, and lips are one of the most common sites for skin cancer. \n\nResearchers founds that people miss 10% of their face when they’re applying sun screen. Your nose is the most common place on your face to get skin cancer, while 5% to 10% of all skin cancers occur on the eyelids. \n\nMost people consider the point of sunglasses is to protect the eyes from UV damage and to make it easier to see in bright sunlight. Sunglasses also protect your eyelids from skin cancer." , sourceName: "Men's Health", sourceURL: "https://www.menshealth.com/health/a19525153/applying-sunscreen-wrong-on-face/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekendNow9to11Tip1 = Tip(header: success, title: "Don't multi-task on the weekend", body: "Multi-tasking is so 2005. It may be tempting to maximize your weekend productivity by running on the treadmill while calling your mother and trolling your newsfeed, but successful people know that this just reduces efficiency and effectiveness. Instead, be present for each single activity. \n\nTim Ferris recommends a maximum of two goals per day to ensure productivity and accomplishments align." , sourceName: "Life Hack", sourceURL: "https://www.lifehack.org/articles/productivity/12-weekend-habits-highly-successful-people.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekendNow9to11Tip2 = Tip(header: improvePerformance, title: "Relax on Saturday and reflect on Sunday", body: "The Twitter and Square co-founder is notorious for 16-hour work days from Monday to Friday but says, \"Saturday I take off. I hike. And then Sunday is reflections, feedback, strategy and getting ready for the rest of the week.\"" , sourceName: "LifeHack.org", sourceURL: "https://www.lifehack.org/articles/productivity/12-weekend-habits-highly-successful-people.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekendNow9to11Tip3 = Tip(header: success, title: "Wake up early, even on the weekends.", body: "Disney CEO, Robert Iger, is not the only executive claiming to rise at 4:30 every morning. Successful people do not stay in bed until 2 p.m. on a Sunday. Or even 11 a.m. \n\nResearch shows that our brains are sharpest two and a half to four hours after waking. Get up early on a weekend and you’ve got a head start on the rest of the world." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/successful-people-who-wake-up-really-early-2016-9", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekendNow9to11Tip4 = Tip(header: success, title: "Have some \"me time\" each morning.", body: "Your mind performs at its peak during the first two-to-four hours after you wake up. Successful people take advantage of that time to do things for themselves. \n\nThis could involve taking a long walk or even meditating. Whatever you choose, make it personal to you.", sourceName: "MoneyVersed", sourceURL: "https://moneyversed.com/weekend-habits-successful-people/", sponsorLogo: "logo", sponsorURL: "logoURL")

var weekendNow9to11TipArray0 = [weekendNow9to11Tip0, weekendNow9to11Tip1, weekendNow9to11Tip2, weekendNow9to11Tip3]

let weekendNow9to11Topic0 = Topic(title: weekendNow9to11Title, icon: weekendNow9to11Icon, tip: weekendNow9to11TipArray0)

// MARK: - Now, Weekend, 11to14

let weekendNow11to14Title = "Now, Weekday, 11to14"
let weekendNow11to14Icon = "Now"

let reduceAging = "REDUCE AGING"

let weekendNow11to14Tip0 = Tip(header: reduceAging, title: "Prevent wrinkles and premature aging by wearing sunscreen everyday.", body: "Researchers found that participants who used sunscreen daily were less likely to have wrinkles and dark spots after 4.5 years than participants who did not regularly use sunscreen. \n\nDaily use of a broad-spectrum (UVA/UVB) sunscreen with an SPF of 15 or higher can help reduce aging of the skin caused by sun damage. Ultraviolet (UV) rays from the sun cause more than 90% of the visible signs of aging, which include wrinkles, rough patches, sagging, and skin discoloration. \n\nOther anti-aging tips include seeking shade, covering up with protective clothing including wide-brimmed hats and UV-blocking sunglasses." , sourceName: "The Skin Cancer Foundation", sourceURL: "https://www.skincancer.org/prevention/sun-protection/sunscreen/aging", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekendNow11to14Tip1 = Tip(header: success, title: "Disconnect from technology on the weekend and reconnect with yourself and people.", body: "The most successful people avoid e-mail for a period of time. Even just a walk without the phone can feel liberating. \n\nTry taking a ‘tech Sabbath.’ If we look back in history, \"a day of rest\" is an ancient tradition represented across societies and cultures. And among many peoples and religions, it's not a choice. It's sacred space carved out for reflection and connection." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/every-week-i-unplug-from-technology-for-24-hours-and-im-convinced-it-makes-me-better-at-my-job-2016-9", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekendNow11to14Tip2 = Tip(header: success, title: "Skip the chores.", body: "Believe it or not, many successful people skip out on doing the dirty work in their homes. After a hectic work week, spending a day elbow deep in a bucket of soapy water sucks. Bite the bullet, hire a house keeper and spend the weekend doing the things you like to do. " , sourceName: "Slice", sourceURL: "https://www.slice.ca/money/photos/Weekend-Warriors-What-Successful-People-Do-on-Weekends/#!081682b856ae4ff25e5d82040951a8a5", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekendNow11to14Tip3 = Tip(header: health, title: "Research found that spending time in nature is good for your mind, body and spirit.", body: "Being physically active outdoors keeps joints loose and helps with chronic pain and stiffness. Plus, when you exercise outside, you have to disconnect from your phone — and that allows you to focus on yourself and what you’re doing. \n\nYou’re also less likely to pick up a virus, since you’re not breathing in the same recycled air as everyone else quite as much. Cold and flu happen in the winter because people are huddled indoors, where you’re more likely to be exposed to those viruses." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/pop-culture/how-nature-can-solve-life-s-most-challenging-problems-ncna749361", sponsorLogo: "TBD", sponsorURL: "www.test.com")
var weekendNow11to14TipArray0 = [weekendNow11to14Tip0, weekendNow11to14Tip1, weekendNow11to14Tip2, weekendNow11to14Tip3]

let weekendNow11to14Topic0 = Topic(title: weekendNow11to14Title, icon: weekendNow11to14Icon, tip: weekendNow11to14TipArray0)

// MARK: - Now, Weekend, 14to16

let weekendNow14to16Title = "Now, Weekday, 14to16"
let weekendNow14to16Icon = "Now"

let weekendNow14to16Tip0 = Tip(header: loseWeight, title: "Reduce your chances of weight gain by having a cheat meal (not a cheat weekend).", body: "Researchers found that people who stuck with a strict diet all week, then overindulged on the weekends actually gained an average of 0.17 pounds per week (which, over the course of a year, would leave them nine pounds heavier!). \n\nA weekly cheat meal creates a spike in calories, which can temporarily increase your overall metabolic rate. The result: You’ll knock down some cravings and boost metabolism over the long term. \n\nBut keep it to one meal, not an entire weekend. And be warned: You may go through a bit of digestive purgatory for about 48 hours." , sourceName: "Men's Journal", sourceURL: "https://www.mensjournal.com/health-fitness/best-way-work-cheat-meals/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekendNow14to16Tip1 = Tip(header: health, title: "Research shows that being social improves your health", body: "Socializing is good for our mental and emotional health, but it’s also good for our brains. An active social life appears to delay memory loss as we age. \n\nResearchers found that older women who maintained large social networks reduced their risk of dementia and delayed or prevented cognitive impairment. \n\nIn addition, people who had an active social life in their 50s and 60s had slower rates of memory decline compared to those who were more isolated." , sourceName: "The New York Times", sourceURL: "https://well.blogs.nytimes.com/2008/06/04/socializing-appears-to-delay-memory-problems/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekendNow14to16Tip2 = Tip(header: loseWeight, title: "Use your day off to reduce weight gain by doing something active.", body: "Using the day off for some intense, calorie-burning activities that you can't squeeze in midweek can result in weekend weight loss. People tend to eat more when they have a lot of free time because they're bored." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/2012/08/11/healthy-weekend_n_1760981.html?slideshow=true#gallery/243861/6", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekendNow14to16Tip3 = Tip(header: improvePerformance, title: "According to research, the best time to take a nap is between 2 p.m and 3 p.m.", body: "We typically experience some sleepiness or decrease in alertness after lunch. And two, a nap at this time is less likely to interfere with nighttime rest than naps later on. \n\nLimit your nap to between 10 and 30 minutes. Otherwise, you could wake up feeling groggy." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/the-best-time-of-day-to-do-everything-2016-5#-6", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekendNow14to16Tip4 = Tip(header: fitness, title: "Physical performance is usually best, and the risk of injury least, from about 3 p.m. to 6 p.m.", body: "Muscle strength tends to peak between 2 p.m. and 6 p.m. at levels as much as 6% above the day's lows, improving your ability to grip a club or racquet. Eye-hand coordination is best in late afternoon, making that a good time for racquetball or Frisbee. And joints and muscles are as much as 20% more flexible in the evening, lowering the risk of injury.", sourceName: "Wall Street Journal", sourceURL: "https://www.wsj.com/articles/SB10000872396390444180004578018294057070544", sponsorLogo: "sponsor", sponsorURL: "sponsorURL")
var weekendNow14to16TipArray0 = [weekendNow14to16Tip0, weekendNow14to16Tip1, weekendNow14to16Tip2, weekendNow14to16Tip3]

let weekendNow14to16Topic0 = Topic(title: weekendNow14to16Title, icon: weekendNow14to16Icon, tip: weekendNow14to16TipArray0)

// MARK: - Now, Weekend, 17to20

let weekendNow17to20Title = "Now, Weekday, 17to20"
let weekendNow17to20Icon = "Now"

let weekendNow17to20Tip0 = Tip(header: increaseConfidence, title: "Every time you walk through a doorway, remember to stand up, put your chin up, put your shoulders back, and smile.", body: "This will create a first impression that causes other people to view you as confident, open, positive, and friendly. That will change the way that we think about ourselves." , sourceName: "The Unbeatable Mind Podcast", sourceURL: "https://unbeatablemind.com/jordan-harbinger/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekendNow17to20Tip1 = Tip(header: weekendNow17to20Title, title: "Now, Weekend, 17to20 3 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekendNow17to20Tip2 = Tip(header: weekendNow17to20Title, title: "Now, Weekend, 17to20 3 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekendNow17to20Tip3 = Tip(header: weekendNow17to20Title, title: "Now, Weekend, 17to20 4 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

var weekendNow17to20TipArray0 = [weekendNow17to20Tip0, weekendNow17to20Tip1, weekendNow17to20Tip2, weekendNow17to20Tip3]

let weekendNow17to20Topic0 = Topic(title: weekendNow17to20Title, icon: weekendNow17to20Icon, tip: weekendNow17to20TipArray0)

// MARK: - Now, Weekend, 21to24

let weekendNow21to24Title = "Now, Weekday, 21to24"
let weekendNow21to24Icon = "Now"

let weekendNow21to24Tip0 = Tip(header: planAhead, title: "Sleeping in on the weekends leaves you more tired, and in a worse mood, than if you maintained a consistent sleep schedule all seven days.", body: "Research found that with every one hour that sleep is shifted, you increase your risk of heart disease by 11 percent. Each one-hour shift was also linked with a 28 percent higher likelihood of people reporting their health as poor or fair compared to excellent. \n\nWaking up early on the weekend can be hard, so schedule something you can look forward to earlier in the day." , sourceName: "CBS News", sourceURL: "https://www.cbsnews.com/news/staying-up-late-and-sleeping-in-on-weekends-may-harm-heart/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekendNow21to24Tip1 = Tip(header: loseWeight, title: "Get More Sleep On a Weekend Night to reduce weight gain.", body: "Sleep deprivation often makes you eat more -- about 500 extra calories a day -- studies have found. Unwind and get ready for bed early. Cap off your weekend weight-loss efforts with a relaxing activity and then head to bed early to squeeze in some extra sleep." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/2012/08/11/healthy-weekend_n_1760981.html?slideshow=true#gallery/243861/8", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekendNow21to24Tip2 = Tip(header: success, title: "Read a book before bed.", body: "Bill Gates has said he reads for an hour every night, even when he gets home late. So, put a book next to your bed to increase your chances of reading. And if you're tired, set a goal to read at least one page before bed." , sourceName: "Inc.", sourceURL: "https://www.inc.com/justin-bariso/bill-gates-follows-4-rules-to-get-most-from-reading-books.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekendNow21to24Tip3 = Tip(header: health, title: "Night owls have a 10% higher risk of death than being a morning person.", body: "The more people identified as evening people, the greater their risk for a variety of medical conditions including psychological disorders, diabetes, neurological conditions, gastrointestinal disorders, and respiratory disorders. \n\nWhile being a night owl is biological, everything from work time to meal time occurs at a time that doesn't feel right for night owls. Try going to bed earlier or changing your daily schedule to later in the morning." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/night-owl-risk-for-death-vs-morning-people-2018-4?r=UK&IR=T", sponsorLogo: "TBD", sponsorURL: "www.test.com")

var weekendNow21to24TipArray0 = [weekendNow21to24Tip0, weekendNow21to24Tip1, weekendNow21to24Tip2, weekendNow21to24Tip3]

// this is topic that gets put into a function that combines all the topics for each time period
let weekendNow21to24Topic0 = Topic(title: weekendNow21to24Title, icon: weekendNow21to24Icon, tip: weekendNow21to24TipArray0)



// MARK: - WEEKDAY

// MARK: - Now, Weekday, 0to4

let weekdayNow0to4Title = "Now, 0to4"
let weekdayNow0to4Icon = "Now"

let weekdayNow0to4Tip0 = Tip(header: success, title: "Prioritze sleep", body: "A study of high-earning professionals found the vast majority got within the recommended 7 to 9 hours of sleep over the course of a week. Successful people know they think better and make smarter decisions after getting enough sleep.", sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/home/cleaning-organizing/successful-people-work/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekdayNow0to4Tip1 = Tip(header: success, title: "Have a set bedtime so you can perform optimally the next day.", body: "Having a bedtime means you don't need to debate with yourself every night about when you intend to go to bed. Making the conscious choice to go to sleep at a certain time frees you from wrestling with the consequences of going to bed too late, which can include decreased productivity the next day." , sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/health/wellness/successful-people-habits-before-bed/1/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekdayNow0to4Tip2 = Tip(header: sleepBetter, title: "Fall asleep faster by getting into a neutral position.", body: "A neutral spine can be on the back and it can be on the side. The positioning with pillows is key. When our body is neutral with an aligned spine, it allows our body to relax with less twisting, pushing and pulling. Neck, shoulder, low back and hip pain are less aggravated with a neutral spine," , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekdayNow0to4Tip3 = Tip(header: sleepBetter, title: "If you want to fall asleep faster, think about staying awake.", body: "It sounds counter intuitive, but nstead of worrying about falling asleep, think about staying awake instead. This often lessens anxiety and gives your mind a chance to relax enough to fall asleep. \n\nIt's a technique known as paradoxical intent, a cognitive behavioral therapy technique used to lessen the anxiety around falling asleep." , sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/health/wellness/improve-sleep-habits-one-day/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

var weekdayNow0to4TipArray0 = [weekdayNow0to4Tip0, weekdayNow0to4Tip1, weekdayNow0to4Tip2, weekdayNow0to4Tip3]

let weekdayNow0to4Topic0 = Topic(title: weekdayNow0to4Title, icon: weekdayNow0to4Icon, tip: weekdayNow0to4TipArray0)

// MARK: - Now, Weekday, 5to8 (0)

let weekday0Now5to8Title = "Now, 5to8"
let weekday0Now5to8Icon = "Now"

let weekday0Now5to8Tip0 = Tip(header: success, title: "Steve Jobs asked himself this question each morning...", body: "In a commencement address he gave at Stanford back in 2005, Steve Jobs revealed the motivational tactic that he used to start each and every day.\n\n\"For the past 33 years, I have looked in the mirror every morning and asked myself: “If today were the last day of my life, would I want to do what I am about to do today?” And whenever the answer has been no for too many days in a row, I know I need to change something.\"" , sourceName: "FastCompany", sourceURL: "https://www.fastcompany.com/3033652/the-morning-routines-of-the-most-successful-people", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekday0Now5to8Tip1 = Tip(header: health, title: "If your alarm clock woke you up this morning, then you're probably sleep deprived.", body: "If you were getting adequate sleep, your brain would awaken you before the alarm goes off. On average, we need 7.5 hours per night." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/sleep-disorders/features/diabetes-lack-of-sleep#2", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekday0Now5to8Tip2 = Tip(header: success, title: "Benjamin Franklin, a founding father of America, stared his day with writing in his journal.", body: "Franklin had specific rules for how he started each morning. His three-hour block of morning routine stretched from 5:00 a.m. to 7:00 a.m. and included addressing \"Powerful Goodness\" and setting a plan for the rest of his day. \n\nEvery morning Franklin asked himself, \"What good shall I do today?\"" , sourceName: "FastCompany", sourceURL: "https://www.fastcompany.com/3033652/the-morning-routines-of-the-most-successful-people", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekday0Now5to8Tip3 = Tip(header: betterSkin, title: "Before you leave for work, apply moisturizer and drink a glass of water to keep your skin looking good.", body: "Dehydration makes your skin look more dry and wrinkled, which can be improved with proper hydration. You can also help \"lock\" moisture into your skin by using moisturizer, which creates a physical barrier to keep moisture in." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/diet/features/6-reasons-to-drink-water#3", sponsorLogo: "TBD", sponsorURL: "www.test.com")



let weekday0Now5to8Tip4 = Tip(header: coffee, title: "The best time to drink coffee is after 9:30 a.m.", body: "That's because the stress hormone cortisol, which regulates energy, generally peaks between 8 a.m. and 9 a.m., so you don't need the boost right then.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/the-best-time-of-day-to-do-everything-2016-5#-2", sponsorLogo: "sponsor", sponsorURL: "sponsorURL")

var weekday0Now5to8TipArray0 = [weekday0Now5to8Tip0, weekday0Now5to8Tip1, weekday0Now5to8Tip2, weekday0Now5to8Tip3]

let weekday0Now5to8Topic0 = Topic(title: weekday0Now5to8Title, icon: weekday0Now5to8Icon, tip: weekday0Now5to8TipArray0)

// MARK: - Now, Weekday, 5to8 (1)

let weekday1Now5to8Title = "Now, 5to8"
let weekday1Now5to8Icon = "Now"

let weekday1Now5to8Tip5 = Tip(header: success, title: "Top CEOs wake up early", body: "In a poll of 20 executives, 90% said they wake up before 6 a.m. on weekdays. \n\nPepsiCo CEO Indra Nooyi, for example, wakes at 4 a.m. and is in the office no later than 7 a.m. Meanwhile, Disney CEO Bob Iger gets up at 4:30 to read, and Twitter and Square CEO Jack Dorsey is up at 5:30 to jog." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/what-successful-people-do-before-breakfast-2015-10", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekday1Now5to8Tip0 = Tip(header: success, title: "Reach for water instead of coffee first thing in the morning.", body: "Drinking water in the morning helps you feel more alert, rehydrates your body, and kickstarts your metabolism. \n\nKat Cole, president of Focus Brands, parent company of Auntie Anne's and Cinnabon, wakes up every morning and drinks 24 ounces of water. Huffington Post founder Arianna Huffington starts her day with a glass of hot water with lemon." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/what-successful-people-do-before-breakfast-2015-10", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekday1Now5to8Tip1 = Tip(header: success, title: "The top morning activity of the rich and powerful is exercise, be it lifting weights at home or going to the gym.", body: "Xerox CEO Ursula Burns does an hour-long personal training session at 6 a.m. twice a week. \"Shark Tank\" investor Kevin O'Leary gets up at 5:45 every morning and jumps on the elliptical or exercise bike, and entrepreneur Gary Vaynerchuk starts every day with an hour-long workout with his trainer. \n\nThese are incredibly busy people. If they make time to exercise, it must be important. \n\nBeyond the fact that exercising in the morning means they can't later run out of time, a morning workout helps reduce stress later in the day, counteracts the effects of high-fat diet, and improves sleep." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/what-successful-people-do-before-breakfast-2015-10", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekday1Now5to8Tip2 = Tip(header: beMoreProductive, title: "Getting into the routine of making your bed every morning is correlated with increased productivity.", body: "Making your bed doesn't necessarily cause you to get more done at work, but it's a \"keystone habit\" that can spark chain reactions that help other good habits take hold. \n\nIn addition to being more productive, people that consistently make their beds also tend to have a greater sense of well-being and stronger skills at sticking with a budget." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/what-successful-people-do-before-breakfast-2015-10", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekday1Now5to8Tip3 = Tip(header: improvePerformance, title: "Commit to a spiritual practice such as meditation or prayer to center yourself for the rush of the day.", body: "Manisha Thakor, a financial adviser and former corporate executive, practices transcendental meditation to clear her mind. She does two 20-minute sessions a day, the first before breakfast and the second in the evening, and focuses on breathing and repeating a mantra in her head. \n\nShe's found it to be one of the most life-enhancing practices she's ever experienced." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/what-successful-people-do-before-breakfast-2015-10", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekday1Now5to8Tip4 = Tip(header: success, title: "Expressing gratitude is a great way to center yourself and get the proper perspective before heading to work.", body: "Writing down the people, places, and opportunities that you're grateful for takes just a few minutes but can make a real difference in your outlook. \n\nEntrepreneur and author of \"The 4-Hour Workweek,\" Tim Ferriss, spends five minutes each morning writing down what he's grateful for and what he's looking forward to. It \"allows me to not only get more done during the day but to also feel better throughout the entire day,\" he said." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/what-successful-people-do-before-breakfast-2015-10", sponsorLogo: "TBD", sponsorURL: "www.test.com")

var weekday1Now5to8TipArray0 = [weekday1Now5to8Tip0, weekday1Now5to8Tip1, weekday1Now5to8Tip2, weekday1Now5to8Tip3]

let weekday1Now5to8Topic0 = Topic(title: weekday1Now5to8Title, icon: weekday1Now5to8Icon, tip: weekday1Now5to8TipArray0)


// MARK: - Now, Weekday, 9to11

let weekdayNow9to11Title = "Now, Weekday, 9to11"
let weekdayNow9to11Icon = "Now"

let weekdayNow9to11Tip0 = Tip(header: improvePerformance, title: "At work, people who take mid-morning breaks have more energy and focus than those who don't take breaks.", body: "Research found that people who took a break before lunch were not only more energetic and focused, but they also experienced less headaches, eyestrain and lower back pain, and were happier with their jobs and less likely to feel burnt out." , sourceName: "USA Today", sourceURL: "https://www.usatoday.com/story/money/business/2015/10/10/cheat-sheet-work-break/73417008/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow9to11Tip1 = Tip(header: improvePerformance, title: "Block time at work to respond to emails, return calls, and other admin tasks. Be proactive rather than reactive, and you'll be less likely to get pulled off task.", body: "Research has shown it takes an average of 26 minutes to recover from trivial interruptions. If you respond to every email that hits your inbox, or every text message that comes your way, you’ll never stay ahead. Block time for these tasks and don't touch these tasks outside of your set time block." , sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/ashleystahl/2017/10/20/4-ways-to-be-more-productive-at-work/#7638ce9f19eb", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow9to11Tip2 = Tip(header: improvePerformance, title: "Take regular breaks at work to keep your energy levels high and your mind fresh.", body: "Research has shown that working at a task without breaks leads to a steady decline in performance. Working for 90 minutes straight, and then take a 15 minute break may be the sweet spot for maximizing productivity. If this doesn't work, shorten that interval to 60 or 75 minutes. Taking short breaks during long tasks helps you to maintain a constant level of performance. During your break, do something different than the task at hand to jumpstart your mind." , sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/ashleystahl/2017/10/20/4-ways-to-be-more-productive-at-work/#7638ce9f19eb", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow9to11Tip3 = Tip(header: improvePerformance, title: "Research shows that we hit our energy level peak at 8 AM, so don't waste the morning with meetings.", body: "\"Multitasking is not humanly possible,\" said Earl Miller, a neuroscience professor at MIT. Multitasking can result in lost time and productivity. Focus on one thing exclusively, and you’ll find yourself completing it much faster." , sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/ashleystahl/2017/10/20/4-ways-to-be-more-productive-at-work/#7638ce9f19eb", sponsorLogo: "TBD", sponsorURL: "www.test.com")
var weekdayNow9to11TipArray0 = [weekdayNow9to11Tip0, weekdayNow9to11Tip1, weekdayNow9to11Tip2, weekdayNow9to11Tip3]

let weekdayNow9to11Topic0 = Topic(title: weekdayNow9to11Title, icon: weekdayNow9to11Icon, tip: weekdayNow9to11TipArray0)

// MARK: - Now, Weekday, 11to14

let weekdayNow11to14Title = "Now, Weekday, 11to14"
let weekdayNow11to14Icon = "Now"

let weekdayNow11to14Tip0 = Tip(header: beMoreProductive, title: "At work, give yourself something nice to look at.", body: "Research shows outfitting an office with aesthetically pleasing elements--like plants or pictures of your family or pet--can increase productivity up to 15 percent. At the very least, set your screensaver to display nature images." , sourceName: "Inc Magazine", sourceURL: "https://www.inc.com/john-rampton/15-ways-to-increase-productivity-at-work.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow11to14Tip1 = Tip(header: beMoreProductive, title: "Be happier and more productive at your job by taking exercise breaks at work.", body: "Health experts are warning of the dangers of people sitting too long. Taking a walk will get your muscles moving and the oxygen flowing, and it also allows you to clear your head..", sourceName: "Huffington Post", sourceURL: "https://www.businessinsider.com/successful-people-do-during-afternoon-lull-2014-4", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow11to14Tip2 = Tip(header: beMoreProductive, title: "Stop multitasking. It doesn't work.", body: "\"Research found that multitasking can result in lost time and productivity. Focus on one thing exclusively, and you’ll find yourself completing it much faster." , sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/ashleystahl/2017/10/20/4-ways-to-be-more-productive-at-work/#7638ce9f19eb", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow11to14Tip3 = Tip(header: preventStess, title: "The next time you get stressed at work, hit the pause button in your mind before you respond. ", body: "Technology makes it much easier to exacerbate a stressor with a quick response. The more something gets under your skin, causes your heart to race, and makes you breathe a bit more quickly, the more important it is to step back before speaking or typing a single word because you risk making the situation worse. \n\nTake a moment to gather your thoughts, and then have a rational discussion. This will give you time to think things through and determine a way to deal with the other person in a healthier manner." , sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/advice/work-career/successful-people-habits-work/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
var weekdayNow11to14TipArray0 = [weekdayNow11to14Tip0, weekdayNow11to14Tip1, weekdayNow11to14Tip2, weekdayNow11to14Tip3]

let weekdayNow11to14Topic0 = Topic(title: weekdayNow11to14Title, icon: weekdayNow11to14Icon, tip: weekdayNow11to14TipArray0)

// MARK: - Now, Weekday, 14to16

let weekdayNow14to16Title = "Now, Weekday, 14to16"
let weekdayNow14to16Icon = "Now"

let weekdayNow14to16Tip0 = Tip(header: ceoAdvice, title: "Before you leave work, write tomorrow's to-do list.", body: "The last thing the CEO of American Express, Kenneth Chenault, does before leaving his office at night is to write down the top three things he wants to accomplish tomorrow. Then he’ll use that list to start his next day." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow14to16Tip1 = Tip(header: success, title: "Reflect on the day", body: "if you can make time to reflect on your best achievement or success that day, you could end up walking out with a spring in your step." , sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/jacquelynsmith/2013/08/26/16-things-you-should-do-at-the-end-of-every-work-day/2/#69e6187158bf", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow14to16Tip2 = Tip(header: success, title: "When you’re talking with coworkers: 80 percent of your conversations should be focused on what’s going right.", body: "When you experience negative emotions as a result of criticism or rejection, for example, your body produces higher levels of the stress hormone cortisol, which shuts down much of your thinking and activates conflict and defense mechanisms. You perceive situations as being worse than they actually are. \n\nWhen you experience a positive interaction, it activates a very different response. Positive exchanges boost your body’s production of oxytocin, a feel-good hormone that increases your ability to communicate, collaborate, and trust others. However, the effects of a positive surge are less dramatic and enduring than they are for a negative one. We need at least three to five positive interactions to outweigh every one negative exchange." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow14to16Tip3 = Tip(header: improvePerformance, title: "Top workers focus for 45 minutes then take a 15 minute break.", body: "When the makers of DeskTime, a software application that tracks employees’ time use throughout the day, looked at the most productive 10 percent of their 36,000-employee user base, they made some surprising discoveries. \n\nWhat the most productive people have in common is an ability to take effective breaks. These elite 10 percent work for 52 minutes at a time, then take a 17-minute break before diving back into their work. During the 17 minutes of break, the group was more likely to go for a walk or tune out rather than checking email or Facebook." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")
var weekdayNow14to16TipArray0 = [weekdayNow14to16Tip0, weekdayNow14to16Tip1, weekdayNow14to16Tip2, weekdayNow14to16Tip3]

let weekdayNow14to16Topic0 = Topic(title: weekdayNow14to16Title, icon: weekdayNow14to16Icon, tip: weekdayNow14to16TipArray0)

// MARK: - Now, Weekday, 17to20

let weekdayNow17to20Title = "Now, Weekday, 17to20"
let weekdayNow17to20Icon = "Now"

let weekdayNow17to20Tip0 = Tip(header: success, title: "Exercise after you leave work and before you head home so you're less likely to get distracted.", body: "A consistent fitness regime boosts your creativity, confidence, and resilience." , sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/home/cleaning-organizing/successful-people-work/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow17to20Tip1 = Tip(header: success, title: "Nourish your romantic relationships—even when time is in short supply.", body: "If you plan a date, great. But if you're too busy this week, choose one night this week to carve out a mini-date at home." , sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/home/cleaning-organizing/successful-people-work/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow17to20Tip2 = Tip(header: success, title: "Delegate your errands to provide yourself more free-time.", body: "You might not have a personal assistant or accountant on call, but you can avoid a run to the drugstore or grocery store if you sign up for a recurring delivery service." , sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/home/cleaning-organizing/successful-people-work/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow17to20Tip3 = Tip(header: success, title: "Don't watch TV.", body: "Nothing inherently wrong with TV, but it's often a mindless default and we consume more than we’d like. Cutting back (only watching a specific show, no aimless channel surfing) frees you up for other goals you want to accomplish." , sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/home/cleaning-organizing/successful-people-work/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
var weekdayNow17to20TipArray0 = [weekdayNow17to20Tip0, weekdayNow17to20Tip1, weekdayNow17to20Tip2, weekdayNow17to20Tip3]

let weekdayNow17to20Topic0 = Topic(title: weekdayNow17to20Title, icon: weekdayNow17to20Icon, tip: weekdayNow17to20TipArray0)

// MARK: - Now, Weekday, 21to24

let weekdayNow21to24Title = "Now, Weekday, 21to24"
let weekdayNow21to24Icon = "Now"

let weekdayNow21to24Tip0 = Tip(header: success, title: "Prepare for tomorrow with a pre-bedtime routine.", body: "A routine at night means better time management. Plan your outfit, lay out gym clothes, prepare a lunch. Just a little prep work (say, 15 to 30 minutes) will help ease the morning rush." , sourceName: "mindbodygreen, a lifestyle media brand", sourceURL: "https://www.mindbodygreen.com/0-20168/a-nighttime-ritual-for-deep-restful-sleep.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekdayNow21to24Tip1 = Tip(header: sleepBetter, title: "Fall asleep faster by declaring the hour before bedtime a digital-free zone.", body: "Not only does the bright blue glow of tech toys disrupt your body clock, but that one last look at a social media app can easily turn into an hour of mindless web surfing that could be spent doing something more relaxing in the morning — like savoring your AM cup of coffee or meditating before work." , sourceName: "mindbodygreen, a lifestyle media brand", sourceURL: "https://www.mindbodygreen.com/0-20168/a-nighttime-ritual-for-deep-restful-sleep.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekdayNow21to24Tip2 = Tip(header: sleepBetter, title: "Dim or turn off the lights an hour before bed.", body: "Exposure to too much electrical light before bed can significantly lower levels of melatonin, the hormone that helps make us feel sleepy, a study in the Journal of Clinical Endocrinology finds." , sourceName: "mindbodygreen, a lifestyle media brand", sourceURL: "https://www.mindbodygreen.com/0-20168/a-nighttime-ritual-for-deep-restful-sleep.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekdayNow21to24Tip3 = Tip(header: sleepBetter, title: "The optimal sleeping temperature is somewhere between 60 and 68 degrees Fahrenheit.", body: "Temps in this range cause a drop in your core body temperature that initiates sleepiness, say sleep experts. Worried you’ll be too cold to crawl out of the covers come morning? Treat yourself to a new pair of cozy slippers or a warm, fluffy robe and leave them at the foot of the bed." , sourceName: "mindbodygreen, a lifestyle media brand", sourceURL: "https://www.mindbodygreen.com/0-20168/a-nighttime-ritual-for-deep-restful-sleep.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekdayNow21to24Tip4 = Tip(header: increaseConfidence, title: "Sleep on your back or stomach with your arms and legs outstretched.", body: "When we sleep, we tend to lie on our side and wrap our arms around ourselves or lay in a fetal position, which makes us feel safe. The fetal position is when you lie on your side. This, however, is a low power position. \n\nIf you spend a lot of time in a low power position, it affects the way you think and feel. The ideal sleeping position is similar to a power pose in an 'X' or 'Y' position, but simply on your back or stomach instead. Lying in an open position with your arms and legs outstretched will make you feel bigger and, therefore, more powerful.", sourceName: "Business Insider", sourceURL: "http://www.businessinsider.com/sleep-position-may-affect-success-2013-11", sponsorLogo: "sponsor", sponsorURL: "sponsorURL")
let weekdayNow21to24Tip5 = Tip(header: loseWeight, title: "Burn more fat by exercising before breakfast tomorrow", body: "Research suggests exercising in the a.m. — specifically, before breakfast — is most helpful for losing weight. The reason early morning workouts seem to accelerate weight loss and boost energy levels may be that they set up the body for an all-day fat burn.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/the-best-time-of-day-to-do-everything-2016-5#-1", sponsorLogo: "sponsor", sponsorURL: "sponsorURL")

let weekdayNow21to24Tip6 = Tip(header: health, title: "Even one night of sleep deprivation can cause Alzheimer's-related proteins to build up in the brain.", body: "During the day, mental activity causes brain cells to release proteins, which are basically waste byproducts. Sleep cleanses the human brain of these toxins. \n\nA long period of bad sleep builds up these toxins, making it harder to sleep, creating a negative spiral towards Alzheimer's.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/alzheimers-protein-buildup-in-brain-after-bad-sleep-2018-4", sponsorLogo: "ABC", sponsorURL: "URL")

var weekdayNow21to24TipArray0 = [weekdayNow21to24Tip0, weekdayNow21to24Tip1, weekdayNow21to24Tip2, weekdayNow21to24Tip3]

let weekdayNow21to24Topic0 = Topic(title: weekdayNow21to24Title, icon: weekdayNow21to24Icon, tip: weekdayNow21to24TipArray0)


