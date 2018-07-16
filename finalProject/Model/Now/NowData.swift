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

let weekendNow5to8Tip0 = Tip(header: beMoreProductive, title: "Increase your productivity by doing work that is most meaningful to you during the first three hours after you wake up.", body: "According to research, your brain is most active and readily creative immediately following sleep. So, the best time to do your best work is during the first three hours of your day." , sourceName: "Benjamin P. Hardy, auhor of Willpower Doesn't Work", sourceURL: "https://medium.com/@benjaminhardy/this-morning-routine-will-save-you-20-hours-per-week-409f8acbde1", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow5to8Tip1 = Tip(header: success, title: "How you spend the first hour after waking up in the morning sets the standard for your productivity for the rest of the day.", body: "WIRED Magazine asked leaders in business what they do before they’ve even eaten breakfast. Some of the common themes were reading, meditation, and exercise" , sourceName: "WIRED", sourceURL: "https://www.wired.co.uk/article/what-is-productivity-be-more-productive-how-to-work", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekendNow5to8Tip2 = Tip(header: navySealAdvice, title: "If you want to be successful in life, start by making your bed every day.", body: "Sometimes the simple act of making your bed can give the lift you need to start your day and provide you the satisfaction to end it right." , sourceName: "YouTube", sourceURL: "https://www.youtube.com/watch?v=U6OoCaGsz94", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekendNow5to8Tip3 = Tip(header: betterSkin, title: "Before you leave the house, apply moisturizer and drink a glass of water to keep your skin looking good.", body: "Dehydration makes your skin look more dry and wrinkled, which can be improved with proper hydration. You can also help \"lock\" moisture into your skin by using moisturizer, which creates a physical barrier to keep moisture in." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/diet/features/6-reasons-to-drink-water#3", sponsorLogo: "TBD", sponsorURL: "www.test.com")
var weekendNow5to8TipArray0 = [weekendNow5to8Tip0, weekendNow5to8Tip1, weekendNow5to8Tip2, weekendNow5to8Tip3]

let weekendNow5to8Topic0 = Topic(title: weekendNow5to8Title, icon: weekendNow5to8Icon, tip: weekendNow5to8TipArray0)

// MARK: - Now, Weekend, 9to11

let weekendNow9to11Title = "Now, Weekday, 9to11"
let weekendNow9to11Icon = "Now"


let weekendNow9to11Tip0 = Tip(header: health, title: "Before you go outside, wear sunscreen (SPF 15 or higher), sunglasses, and a hat to reduce your risk of skin cancer", body: "Skin cancer is the most common cancer in the United States. And your nose, eyelids, and lips are one of the most common sites for skin cancer." , sourceName: "Men's Health", sourceURL: "https://www.menshealth.com/health/a19525153/applying-sunscreen-wrong-on-face/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekendNow9to11Tip1 = Tip(header: success, title: "Don't multi-task on the weekend", body: "It may be tempting to maximize your weekend productivity by running on the treadmill while calling your mother and trolling your newsfeed, but successful people know that this just reduces efficiency and effectiveness. Instead, be present for each single activity." , sourceName: "Life Hack", sourceURL: "https://www.lifehack.org/articles/productivity/12-weekend-habits-highly-successful-people.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekendNow9to11Tip2 = Tip(header: improvePerformance, title: "Relax on Saturday and reflect on Sunday", body: "CEO of Twitter and Square, Jack Dorsey, works 16-hour days during the week but says, \"Saturday I take off. I hike. And then Sunday is reflections, feedback, strategy and getting ready for the rest of the week.\"" , sourceName: "LifeHack.org", sourceURL: "https://www.lifehack.org/articles/productivity/12-weekend-habits-highly-successful-people.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekendNow9to11Tip3 = Tip(header: success, title: "Wake up early, even on the weekends", body: "Our brains are the sharpest 2 to 4 hours after we wake up. Use these less distractive hours to work on a creative project, exercise, meditate, or spend time with the people you love." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/successful-people-who-wake-up-really-early-2016-9", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekendNow9to11Tip4 = Tip(header: success, title: "Have some \"me time\" each morning", body: "Your mind performs at its peak during the first two-to-four hours after you wake up. Successful people take advantage of that time to do things for themselves. \n\nThis could involve taking a long walk or even meditating. Whatever you choose, make it personal to you.", sourceName: "MoneyVersed", sourceURL: "https://moneyversed.com/weekend-habits-successful-people/", sponsorLogo: "logo", sponsorURL: "logoURL")

var weekendNow9to11TipArray0 = [weekendNow9to11Tip0, weekendNow9to11Tip1, weekendNow9to11Tip2, weekendNow9to11Tip3]

let weekendNow9to11Topic0 = Topic(title: weekendNow9to11Title, icon: weekendNow9to11Icon, tip: weekendNow9to11TipArray0)

// MARK: - Now, Weekend, 11to14

let weekendNow11to14Title = "Now, Weekday, 11to14"
let weekendNow11to14Icon = "Now"

let weekendNow11to14Tip0 = Tip(header: reduceAging, title: "Prevent wrinkles and premature aging by wearing sunscreen everyday", body: "Research: people who used sunscreen daily were less likely to have wrinkles, sagging skin, and dark spots after 4.5 years than people who did not regularly use sunscreen." , sourceName: "The Skin Cancer Foundation", sourceURL: "https://www.skincancer.org/prevention/sun-protection/sunscreen/aging", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekendNow11to14Tip1 = Tip(header: success, title: "Disconnect from technology on the weekend and reconnect with yourself and people", body: "Take a ‘tech Sabbath.’ If we look back in history, \"a day of rest\" is an ancient tradition represented across cultures that is used for reflection and connection. Even a walk without the phone can feel liberating." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/every-week-i-unplug-from-technology-for-24-hours-and-im-convinced-it-makes-me-better-at-my-job-2016-9", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekendNow11to14Tip2 = Tip(header: success, title: "Skip the chores today", body: "After a hectic work week, spending a day elbow deep in a bucket of soapy water sucks. Bite the bullet, hire a house keeper and spend the weekend doing the things you like to do. " , sourceName: "Slice", sourceURL: "https://www.slice.ca/money/photos/Weekend-Warriors-What-Successful-People-Do-on-Weekends/#!081682b856ae4ff25e5d82040951a8a5", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekendNow11to14Tip3 = Tip(header: health, title: "Spending time in nature is good for your mind, body and spirit", body: "Being active outdoors keeps joints loose, reduces anxiety, depression, and stress, and reduces your chances of getting a virus; since you're not breathing in the same recycled air as every else." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/pop-culture/how-nature-can-solve-life-s-most-challenging-problems-ncna749361", sponsorLogo: "TBD", sponsorURL: "www.test.com")

var weekendNow11to14TipArray0 = [weekendNow11to14Tip0, weekendNow11to14Tip1, weekendNow11to14Tip2, weekendNow11to14Tip3]

let weekendNow11to14Topic0 = Topic(title: weekendNow11to14Title, icon: weekendNow11to14Icon, tip: weekendNow11to14TipArray0)

// MARK: - Now, Weekend, 14to16

let weekendNow14to16Title = "Now, Weekday, 14to16"
let weekendNow14to16Icon = "Now"

let weekendNow14to16Tip0 = Tip(header: loseWeight, title: "Reduce your chances of weight gain by having one cheat meal this weekend", body: "People who stuck with a strict diet during the week, then overindulged on the weekends gained an average of 0.17 pounds per week (nine pounds a year). A weekly cheat meal reduces cravings and boosts metabolism." , sourceName: "Men's Journal", sourceURL: "https://www.mensjournal.com/health-fitness/best-way-work-cheat-meals/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekendNow14to16Tip1 = Tip(header: health, title: "Research: being social improves your mental and emotional health", body: "An active social life reduces your risk of dementia and memory loss as we age." , sourceName: "The New York Times", sourceURL: "https://well.blogs.nytimes.com/2008/06/04/socializing-appears-to-delay-memory-problems/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekendNow14to16Tip2 = Tip(header: loseWeight, title: "Use your day off to reduce weight gain by doing something active.", body: "Using the day off for some intense, calorie-burning activities that you can't squeeze in midweek can result in weekend weight loss. People tend to eat more when they have a lot of free time because they're bored." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/2012/08/11/healthy-weekend_n_1760981.html?slideshow=true#gallery/243861/6", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekendNow14to16Tip3 = Tip(header: improvePerformance, title: "Research: the best time to take a nap is between 2 p.m and 3 p.m.", body: "We typically experience some sleepiness or decrease in alertness after lunch. A 10 to 30 minute nap at this time is less likely to interfere with nighttime rest than naps later in the day." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/the-best-time-of-day-to-do-everything-2016-5#-6", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekendNow14to16Tip4 = Tip(header: fitness, title: "Physical performance is usually best, and the risk of injury least, from about 3 p.m. to 6 p.m.", body: "Muscle strength tends to peak between 2 p.m. and 6 p.m. at levels as much as 6% above the day's lows, improving your ability to grip a club or racquet. Eye-hand coordination is best in late afternoon, making that a good time for racquetball or Frisbee. And joints and muscles are as much as 20% more flexible in the evening, lowering the risk of injury.", sourceName: "Wall Street Journal", sourceURL: "https://www.wsj.com/articles/SB10000872396390444180004578018294057070544", sponsorLogo: "sponsor", sponsorURL: "sponsorURL")
var weekendNow14to16TipArray0 = [weekendNow14to16Tip0, weekendNow14to16Tip1, weekendNow14to16Tip2, weekendNow14to16Tip3]

let weekendNow14to16Topic0 = Topic(title: weekendNow14to16Title, icon: weekendNow14to16Icon, tip: weekendNow14to16TipArray0)

// MARK: - Now, Weekend, 17to20

let weekendNow17to20Title = "Now, Weekday, 17to20"
let weekendNow17to20Icon = "Now"

let weekendNow17to20Tip0 = Tip(header: increaseConfidence, title: "Build a Habit of Confidence: Every time you walk through a doorway, remember to stand up, put your chin up, put your shoulders back, and smile.", body: "This will create a first impression that causes other people to view you as confident, open, positive, and friendly. That will change the way that we think about ourselves." , sourceName: "The Unbeatable Mind Podcast", sourceURL: "https://unbeatablemind.com/jordan-harbinger/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekendNow17to20Tip1 = Tip(header: weekendNow17to20Title, title: "Enjoy your weekend by not checking your smartphone because studies show that being connected 24/7 can take its toll on your physical and emotional health", body: "The blue light from our screens can sabotage a good night's sleep, and social media obsession can cause depression." , sourceName: "CNET Magazine", sourceURL: "https://www.cnet.com/news/take-a-break-from-your-smartphone/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekendNow17to20Tip2 = Tip(header: weekendNow17to20Title, title: "Receive health benefits by watching the sunset tonight", body: "Research: By witnessing the beauty and awe of the sunset, you can slow down your perception of time. Experiences of awe brings you into the present momement, resulting in the feeling of having more time available and makes life feel more satisfying than it would otherwise." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/2014/04/04/make-time-for-sunset_n_5066629.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekendNow17to20Tip3 = Tip(header: weekendNow17to20Title, title: "It's the weekend - socialize with friends and family to live longer, improve your health, and lower your risk of dementia", body: "People with more social support tend to be less depressed and live longer than those who are more isolated. And, in the long run, people with active social lives are less likely to develop dementia than those who are more socially isolated." , sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/living-mild-cognitive-impairment/201606/the-health-benefits-socializing", sponsorLogo: "TBD", sponsorURL: "www.test.com")

var weekendNow17to20TipArray0 = [weekendNow17to20Tip0, weekendNow17to20Tip1, weekendNow17to20Tip2, weekendNow17to20Tip3]

let weekendNow17to20Topic0 = Topic(title: weekendNow17to20Title, icon: weekendNow17to20Icon, tip: weekendNow17to20TipArray0)

// MARK: - Now, Weekend, 21to24

let weekendNow21to24Title = "Now, Weekday, 21to24"
let weekendNow21to24Icon = "Now"

let weekendNow21to24Tip0 = Tip(header: planAhead, title: "Sleeping in on the weekends leaves you more tired, and in a worse mood, than if you maintained a consistent sleep schedule all seven days", body: "Every one hour that sleep is shifted, you increase your risk of heart disease by 11 percent. Each one-hour shift was also linked with a 28 percent higher likelihood of people reporting their health as poor or fair compared to excellent." , sourceName: "CBS News", sourceURL: "https://www.cbsnews.com/news/staying-up-late-and-sleeping-in-on-weekends-may-harm-heart/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekendNow21to24Tip1 = Tip(header: loseWeight, title: "Get more sleep on a weekend night to reduce weight gain", body: "Sleep deprivation often makes you eat more - about 500 extra calories a day - studies have found. Cap off your weekend weight-loss efforts with a relaxing activity and then head to bed early to squeeze in some extra sleep." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/2012/08/11/healthy-weekend_n_1760981.html?slideshow=true#gallery/243861/8", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekendNow21to24Tip2 = Tip(header: success, title: "Read a book before bed", body: "Bill Gates has said he reads for an hour every night, even when he gets home late. So, put a book next to your bed to increase your chances of reading; even if it's just one page." , sourceName: "Inc.", sourceURL: "https://www.inc.com/justin-bariso/bill-gates-follows-4-rules-to-get-most-from-reading-books.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekendNow21to24Tip3 = Tip(header: health, title: "Begin to build the habit of going to bed earlier because night owls have a 10% higher risk of death than being a morning person", body: "The more people identified as evening people, the greater their risk for a variety of medical conditions including psychological disorders, diabetes, neurological conditions, gastrointestinal disorders, and respiratory disorders. Try going to bed a littler earlier each night." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/night-owl-risk-for-death-vs-morning-people-2018-4?r=UK&IR=T", sponsorLogo: "TBD", sponsorURL: "www.test.com")

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

let weekday1Now5to8Tip0 = Tip(header: success, title: "Reach for water instead of coffee first thing in the morning", body: "Drinking water in the morning helps you feel more alert, rehydrates your body, and kickstarts your metabolism. \n\nKat Cole, president of Focus Brands, parent company of Auntie Anne's and Cinnabon, wakes up every morning and drinks 24 ounces of water. Huffington Post founder Arianna Huffington starts her day with a glass of hot water with lemon." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/what-successful-people-do-before-breakfast-2015-10", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekday1Now5to8Tip1 = Tip(header: success, title: "The top morning activity of the rich and powerful is exercise, be it lifting weights at home or going to the gym", body: "Xerox CEO Ursula Burns does an hour-long personal training session at 6 a.m. twice a week. \"Shark Tank\" investor Kevin O'Leary gets up at 5:45 every morning and jumps on the elliptical or exercise bike, and entrepreneur Gary Vaynerchuk starts every day with an hour-long workout with his trainer. \n\nThese are incredibly busy people. If they make time to exercise, it must be important. \n\nBeyond the fact that exercising in the morning means they can't later run out of time, a morning workout helps reduce stress later in the day, counteracts the effects of high-fat diet, and improves sleep." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/what-successful-people-do-before-breakfast-2015-10", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekday1Now5to8Tip2 = Tip(header: beMoreProductive, title: "Getting into the routine of making your bed every morning is correlated with increased productivity", body: "Making your bed doesn't necessarily cause you to get more done at work, but it's a \"keystone habit\" that can spark chain reactions that help other good habits take hold. \n\nIn addition to being more productive, people that consistently make their beds also tend to have a greater sense of well-being and stronger skills at sticking with a budget." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/what-successful-people-do-before-breakfast-2015-10", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekday1Now5to8Tip3 = Tip(header: improvePerformance, title: "Commit to a spiritual practice such as meditation or prayer to center yourself for the rush of the day", body: "Manisha Thakor, a financial adviser and former corporate executive, practices transcendental meditation to clear her mind. She does two 20-minute sessions a day, the first before breakfast and the second in the evening, and focuses on breathing and repeating a mantra in her head. \n\nShe's found it to be one of the most life-enhancing practices she's ever experienced." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/what-successful-people-do-before-breakfast-2015-10", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekday1Now5to8Tip4 = Tip(header: success, title: "Expressing gratitude is a great way to center yourself and get the proper perspective before heading to work", body: "Writing down the people, places, and opportunities that you're grateful for takes just a few minutes but can make a real difference in your outlook. \n\nEntrepreneur and author of \"The 4-Hour Workweek,\" Tim Ferriss, spends five minutes each morning writing down what he's grateful for and what he's looking forward to. It \"allows me to not only get more done during the day but to also feel better throughout the entire day,\" he said." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/what-successful-people-do-before-breakfast-2015-10", sponsorLogo: "TBD", sponsorURL: "www.test.com")

var weekday1Now5to8TipArray0 = [weekday1Now5to8Tip0, weekday1Now5to8Tip1, weekday1Now5to8Tip2, weekday1Now5to8Tip3]

let weekday1Now5to8Topic0 = Topic(title: weekday1Now5to8Title, icon: weekday1Now5to8Icon, tip: weekday1Now5to8TipArray0)


// MARK: - Now, Weekday, 9to11

let weekdayNow9to11Title = "Now, Weekday, 9to11"
let weekdayNow9to11Icon = "Now"

let weekdayNow9to11Tip0 = Tip(header: improvePerformance, title: "At work, people who take mid-morning breaks have more energy and focus than those who don't take breaks.", body: "Research found that people who took a break before lunch were not only more energetic and focused, but they also experienced less headaches, eyestrain and lower back pain, and were happier with their jobs and less likely to feel burnt out." , sourceName: "USA Today", sourceURL: "https://www.usatoday.com/story/money/business/2015/10/10/cheat-sheet-work-break/73417008/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow9to11Tip1 = Tip(header: improvePerformance, title: "Block time at work to respond to emails, return calls, and other admin tasks. Be proactive rather than reactive, and you'll be less likely to get pulled off task.", body: "Research has shown it takes an average of 26 minutes to recover from trivial interruptions. If you respond to every email that hits your inbox, or every text message that comes your way, you’ll never stay ahead. Block time for these tasks and don't touch these tasks outside of your set time block." , sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/ashleystahl/2017/10/20/4-ways-to-be-more-productive-at-work/#7638ce9f19eb", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekdayNow9to11Tip2 = Tip(header: improvePerformance, title: "Take regular breaks at work to keep your energy levels high and your mind fresh.", body: "Research has shown that working at a task without breaks leads to a steady decline in performance. Working for 90 minutes straight, and then take a 15 minute break may be the sweet spot for maximizing productivity. If this doesn't work, shorten that interval to 60 or 75 minutes. Taking short breaks during long tasks helps you to maintain a constant level of performance. During your break, do something different than the task at hand to jumpstart your mind." , sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/ashleystahl/2017/10/20/4-ways-to-be-more-productive-at-work/#7638ce9f19eb", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekdayNow9to11Tip3 = Tip(header: sleepBetter, title: "People exposed to sunlight or bright indoor lights during the morning hours, between 8 a.m. and Noon, sleep better at night", body: "Exposure to light during the day helps to calibrate the body’s internal “circadian” clock. A lack of good quality sleep has been linked to mental and physical health problems, including issues with mood, thinking, metabolism and the immune system.", sourceName: "Reuters", sourceURL: "https://www.reuters.com/article/us-health-sleep-daylight/morning-daylight-exposure-tied-to-a-good-nights-sleep-idUSKCN18E23E", sponsorLogo: "", sponsorURL: "")

var weekdayNow9to11TipArray0 = [weekdayNow9to11Tip0, weekdayNow9to11Tip1, weekdayNow9to11Tip2, weekdayNow9to11Tip3]

let weekdayNow9to11Topic0 = Topic(title: weekdayNow9to11Title, icon: weekdayNow9to11Icon, tip: weekdayNow9to11TipArray0)

// MARK: - Now, Weekday, 11to14

let weekdayNow11to14Title = "Now, Weekday, 11to14"
let weekdayNow11to14Icon = "Now"

let weekdayNow11to14Tip0 = Tip(header: beMoreProductive, title: "Decorating your office with plants or pictures of your family or pet can increase productivity up to 15%", body: "Seeing plants around you can improve morale, increase satisfaction with your work, and make you more patient. Set your screensaver or web browser to display nature images." , sourceName: "Inc.", sourceURL: "https://www.inc.com/john-rampton/15-ways-to-increase-productivity-at-work.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekdayNow11to14Tip1 = Tip(header: beMoreProductive, title: "Be happier and more productive at at work by taking regular exercise breaks", body: "Health experts are warning of the dangers of people sitting too long. Taking a walk will get your muscles moving and the oxygen flowing, and it also allows you to clear your head.", sourceName: "Huffington Post", sourceURL: "https://www.businessinsider.com/successful-people-do-during-afternoon-lull-2014-4", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow11to14Tip2 = Tip(header: beMoreProductive, title: "Research: Stop multitasking, it doesn't work", body: "Multitasking can actually result in lost time and productivity. Focus on one thing exclusively, and you’ll find yourself completing it much faster." , sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/ashleystahl/2017/10/20/4-ways-to-be-more-productive-at-work/#7638ce9f19eb", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow11to14Tip3 = Tip(header: preventStess, title: "The next time you get stressed at work, pause before you respond", body: "The more something makes you mad or causes your heart to race, the more important it is to take a deep breath before speaking or typing a single word because you risk making the situation worse." , sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/advice/work-career/successful-people-habits-work/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
var weekdayNow11to14TipArray0 = [weekdayNow11to14Tip0, weekdayNow11to14Tip1, weekdayNow11to14Tip2, weekdayNow11to14Tip3]

let weekdayNow11to14Topic0 = Topic(title: weekdayNow11to14Title, icon: weekdayNow11to14Icon, tip: weekdayNow11to14TipArray0)

// MARK: - Now, Weekday, 14to16

let weekdayNow14to16Title = "Now, Weekday, 14to16"
let weekdayNow14to16Icon = "Now"

let weekdayNow14to16Tip0 = Tip(header: ceoAdvice, title: "Before you leave work, write tomorrow's to-do list", body: "The last thing the CEO of American Express, Kenneth Chenault, does before leaving his office at night is to write down the top three things he wants to accomplish tomorrow. Then he’ll use that list to start his next day." , sourceName: "Inc.", sourceURL: "https://www.inc.com/business-insider/what-successful-people-do-before-they-go-to-sleep.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow14to16Tip1 = Tip(header: success, title: "Reflect on the day", body: "If you can make time to reflect on your best achievement or success that day, you could end up walking out with a spring in your step." , sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/jacquelynsmith/2013/08/26/16-things-you-should-do-at-the-end-of-every-work-day/2/#69e6187158bf", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow14to16Tip2 = Tip(header: success, title: "Focus on having positive conversations because our brains need at least three to five positive interactions to outweigh every one negative exchange", body: "Negative emotions produce higher levels of the stress hormone cortisol, which causes you to perceive situations as being worse than they actually are. Positive exchanges boost your body’s production of oxytocin, a feel-good hormone. However, the effects of a positive surge are less dramatic and enduring than they are for a negative one." , sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/advice/work-career/successful-people-habits-work/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow14to16Tip3 = Tip(header: improvePerformance, title: "Top workers focus for 45 minutes then take a 15 minute break", body: "One study found that the most productive people work for 52 minutes at a time, then take a 17-minute break before diving back into their work. During the 17 minutes of break, the group was more likely to go for a walk or tune out rather than check email or Facebook." , sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/advice/work-career/successful-people-habits-work/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
var weekdayNow14to16TipArray0 = [weekdayNow14to16Tip0, weekdayNow14to16Tip1, weekdayNow14to16Tip2, weekdayNow14to16Tip3]

let weekdayNow14to16Topic0 = Topic(title: weekdayNow14to16Title, icon: weekdayNow14to16Icon, tip: weekdayNow14to16TipArray0)

// MARK: - Now, Weekday, 17to20

let weekdayNow17to20Title = "Now, Weekday, 17to20"
let weekdayNow17to20Icon = "Now"

let weekdayNow17to20Tip0 = Tip(header: success, title: "Increase happiness by doing anything other than looking at a screen during your freetime", body: "People who spent more time seeing their friends in person, exercising, reading or even doing homework were happier. However, people who spent more time on the internet, social media, or watching TV were less happy." , sourceName: "Quartz", sourceURL: "https://qz.com/1190151/why-am-i-unhappy-a-new-study-explains-americas-unhappiness-epidemic/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow17to20Tip1 = Tip(header: success, title: "Nourish your romantic relationships—even when time is in short supply", body: "If you plan a dates, great. But if you're too busy this week, choose one night this week to carve out a mini-date at home." , sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/home/cleaning-organizing/successful-people-work/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow17to20Tip2 = Tip(header: success, title: "Delegate your errands to provide yourself more free-time", body: "You might not have a personal assistant or accountant on call, but you can avoid a run to the drugstore or grocery store if you sign up for a recurring delivery service." , sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/home/cleaning-organizing/successful-people-work/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let weekdayNow17to20Tip3 = Tip(header: success, title: "Increase wellbeing by saying: \"I am enough\" everyday", body: "The root of so many modern problems are the result of a need to fill the inner emptiness of not feeling “enough” with external things. The repetition of this simple phrase over and over will eventually make it difficult for your mind to object to it." , sourceName: "Marisa Peer, author of Ultimate Confidence", sourceURL: "https://www.marisapeer.com/i-am-enough-marisa/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
var weekdayNow17to20TipArray0 = [weekdayNow17to20Tip0, weekdayNow17to20Tip1, weekdayNow17to20Tip2, weekdayNow17to20Tip3]

let weekdayNow17to20Topic0 = Topic(title: weekdayNow17to20Title, icon: weekdayNow17to20Icon, tip: weekdayNow17to20TipArray0)

// MARK: - Now, Weekday, 21to24

let weekdayNow21to24Title = "Now, Weekday, 21to24"
let weekdayNow21to24Icon = "Now"

let weekdayNow21to24Tip0 = Tip(header: success, title: "Prepare for tomorrow with a pre-bedtime routine", body: "Plan your outfit, lay out gym clothes, prepare a lunch. Just a little prep work (say, 15 to 30 minutes) will help ease the morning rush." , sourceName: "mindbodygreen, a lifestyle media brand", sourceURL: "https://www.mindbodygreen.com/0-20168/a-nighttime-ritual-for-deep-restful-sleep.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekdayNow21to24Tip1 = Tip(header: sleepBetter, title: "Fall asleep faster by declaring the hour before bedtime a digital-free zone", body: "The bright blue glow of tech toys disrupt your body clock. Plus, that one last look at a social media app can easily turn into minutes of mindless web surfing that could be spent doing something more relaxing in the morning — like meditating." , sourceName: "mindbodygreen, a lifestyle media brand", sourceURL: "https://www.mindbodygreen.com/0-20168/a-nighttime-ritual-for-deep-restful-sleep.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekdayNow21to24Tip2 = Tip(header: sleepBetter, title: "Dim or turn off the lights one hour before bed", body: "Exposure to too much electrical light before bed can significantly lower levels of melatonin, the hormone that helps make us feel sleepy." , sourceName: "mindbodygreen, a lifestyle media brand", sourceURL: "https://www.mindbodygreen.com/0-20168/a-nighttime-ritual-for-deep-restful-sleep.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekdayNow21to24Tip3 = Tip(header: sleepBetter, title: "The optimal sleeping temperature is somewhere between 60 and 68 degrees Fahrenheit", body: "Temps in this range cause a drop in your core body temperature that initiates sleepiness. If it's too hot, you'll have more trouble sleeping." , sourceName: "mindbodygreen, a lifestyle media brand", sourceURL: "https://www.mindbodygreen.com/0-20168/a-nighttime-ritual-for-deep-restful-sleep.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let weekdayNow21to24Tip4 = Tip(header: increaseConfidence, title: "Sleep on your back or stomach with your arms and legs outstretched", body: "When we sleep, we tend to lie on our side and wrap our arms around ourselves or lay in a fetal position, which makes us feel safe. The fetal position is when you lie on your side. This, however, is a low power position. \n\nIf you spend a lot of time in a low power position, it affects the way you think and feel. The ideal sleeping position is similar to a power pose in an 'X' or 'Y' position, but simply on your back or stomach instead. Lying in an open position with your arms and legs outstretched will make you feel bigger and, therefore, more powerful.", sourceName: "Business Insider", sourceURL: "http://www.businessinsider.com/sleep-position-may-affect-success-2013-11", sponsorLogo: "sponsor", sponsorURL: "sponsorURL")

let weekdayNow21to24Tip5 = Tip(header: loseWeight, title: "Burn more fat by exercising before breakfast tomorrow", body: "Research suggests exercising in the a.m. — specifically, before breakfast — is most helpful for losing weight. The reason early morning workouts seem to accelerate weight loss and boost energy levels may be that they set up the body for an all-day fat burn.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/the-best-time-of-day-to-do-everything-2016-5#-1", sponsorLogo: "sponsor", sponsorURL: "sponsorURL")

let weekdayNow21to24Tip6 = Tip(header: health, title: "Even one night of sleep deprivation can cause Alzheimer's-related proteins to build up in the brain.", body: "During the day, mental activity causes brain cells to release proteins, which are basically waste byproducts. Sleep cleanses the human brain of these toxins. \n\nA long period of bad sleep builds up these toxins, making it harder to sleep, creating a negative spiral towards Alzheimer's.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/alzheimers-protein-buildup-in-brain-after-bad-sleep-2018-4", sponsorLogo: "ABC", sponsorURL: "URL")

let weekdayNow21to24Tip7 = Tip(header: "Health", title: "People who sleep less than six hours per night are more likely to develop prediabetes", body: "Many people with prediabetes go on to develop type 2 diabetes.", sourceName: "WebMD", sourceURL: "https://www.webmd.com/diabetes/news/20090312/sleep-deprivation-linked-to-prediabetes", sponsorLogo: "", sponsorURL: "")

var weekdayNow21to24TipArray0 = [weekdayNow21to24Tip0, weekdayNow21to24Tip1, weekdayNow21to24Tip2, weekdayNow21to24Tip3]

let weekdayNow21to24Topic0 = Topic(title: weekdayNow21to24Title, icon: weekdayNow21to24Icon, tip: weekdayNow21to24TipArray0)

var weekdayNow21to24TipArray1 = [weekdayNow21to24Tip4, weekdayNow21to24Tip5, weekdayNow21to24Tip6, weekdayNow21to24Tip7]

let weekdayNow21to24Topic1 = Topic(title: weekdayNow21to24Title, icon: weekdayNow21to24Icon, tip: weekdayNow21to24TipArray1)


