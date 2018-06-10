//
//  MyData.swift
//  finalProject
//
//  Created by Andrew Jenson on 3/30/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import Foundation

// MARK: - AllTipsTopics

let cereal = "CEREAL"
let diet = "DIET"
let planAhead = "PLAN AHEAD"
let avoidTemptation = "AVOID TEMPTATION"
let buildMuscle = "BUILD MUSCLE"
let loseWeight = "LOSE WEIGHT"
let reduceStress = "REDUCE STRESS"
let improveHealth = "IMPROVE HEALTH"
let mood = "MOOD"
let improvePerformance = "IMPROVE PERFORMANCE"
let mentalToughness = "MENTAL TOUGHNESS"
let bestResults = "BEST RESULTS"
let sleepBetter = "SLEEP BETTER"
let hygiene = "HYGIENE"
let fresherBreath = "FRESHER BREATH"
let reduceGerms = "REDUCE GERMS"
let reduceCavities = "REDUCE CAVITIES"
let increaseConfidence = "INCREASE CONFIDENCE"
let fitness = "FITNESS"
let coffee = "COFFEE"
let preventStess = "PREVENT STRESS"
let ceoAdvice = "CEO ADVICE"

// MARK: - Breakfast

let breakfastTitle = "Breakfast"
let breakfastIcon = "Bre"

let breakfastTip1 = Tip(header: diet, title: "Consume at least 30 grams of protein for breakfeat to keep you fuller for longer", body: "Protein keeps you full longer than other foods because it takes longer to digest and leave the stomach. Also, protein keeps blood-sugar levels steady, which prevent spikes in hunger." , sourceName: "Benjamin P. Hardy, author of Willpower Doesn't Work", sourceURL: "https://medium.com/personal-growth/this-morning-routine-will-save-you-20-hours-per-week-409f8acbde1", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let breakfastTip2 = Tip(header: planAhead, title: "Reduce your odds of having an afternoon slump today by eating a healthy breakfast.", body: "Without that first substantial meal in the day, we often make up for those missed calories more intensely later through the form of a quick, unhealthy snack. We can also crave extra calories if we have not eaten enough during the day or if we have skipped lunch. \n\nWhen you don't eat regularly, your blood sugar levels are not maintained and your body is not supported by nutrition. This causes the body to 'call out' for something to eat and we usually find we want a high calorie, comfort type food. We're less likely to have a slump if we've fuelled our bodies well beforehand" , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com.au/2016/08/02/this-is-why-you-crave-junk-food-later-in-the-day_a_21443885/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let breakfastTip3 = Tip(header: cereal, title: "Rule of thumb for cereal: There should always be at least five grams of fiber, and there should always be more fiber than sugar.", body: "The more sugar in your breakfast cereal, the faster it digests, and the hungrier you’ll be. \n\nConversely, more fiber will keep you fuller longer. For extra fiber, add chia or flax seeds." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/2013/03/23/healthy-breakfast-mistakes_n_2877800.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let breakfastTip4 = Tip(header: planAhead, title: "A breakfast with no fat can make you hungry again within an hour.", body: "Let’s look at the supposed healthy breakfast of non-fat Greek yogurt, high-fiber cereal and berries. Where’s the fat? Switch to 2 percent-fat yogurt or to add some nuts. But you only need a little fat to keep you feeling full for longer." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/2013/03/23/healthy-breakfast-mistakes_n_2877800.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
var breakfastTipArray0 = [breakfastTip1, breakfastTip2, breakfastTip3, breakfastTip4]

let breakfastTopic0 = Topic(title: breakfastTitle, icon: breakfastIcon, tip: breakfastTipArray0)

// MARK: - Brunch

let brunchTitle = "Brunch"
let brunchIcon = "Bru"

let brunchTip1 = Tip(header: planAhead, title: "Eat a little food before your brunch to reduce chances of weight gain", body: "If you're not meeting until 11 a.m. or noon, have a light breakfast at home. That way you'll keep your hands out of the muffin basket while you're waiting for your meal to be served. An egg-white veggie omelet with whole-wheat toast is a great diet choice because it delivers filling protein and fiber to keep you fuller longer." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/2012/08/11/healthy-weekend_n_1760981.html?slideshow=true#gallery/243861/5", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let brunchTip2 = Tip(header: "BRUNCH", title: "brunch 3 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let brunchTip3 = Tip(header: "BRUNCH", title: "brunch 3 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let brunchTip4 = Tip(header: "BRUNCH", title: "brunch 4 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

var brunchTipArray0 = [brunchTip1, brunchTip2, brunchTip3, brunchTip4]

let brunchTopic0 = Topic(title: brunchTitle, icon: brunchIcon, tip: brunchTipArray0)

// MARK: - Lunch

let lunchTitle = "Lunch"
let lunchIcon = "Lun"

let lunchTip1 = Tip(header: planAhead, title: "Avoid the afternoon slump by eating a healthy lunch.", body: "Eating and drinking regular meals and snacks can help keep your blood sugar levels from dipping and eliminate the '3 p.m. slump'. Eating a balanced lunch, including whole grains, lean proteins, good fats, and plenty of vegetables. You can pack healthy snacks to eat throughout the day and drink water throughout the day to keep yourself hydrated. \n\nUnhealthy snacks are not going to keep us full until dinner, meaning we're more likely to eat more of them and gain weight." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com.au/2016/08/02/this-is-why-you-crave-junk-food-later-in-the-day_a_21443885/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let lunchTip2 = Tip(header: "Lunch", title: "Lunch 2 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let lunchTip3 = Tip(header: "Lunch", title: "Lunch 3 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let lunchTip4 = Tip(header: "Lunch", title: "Lunch 4 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

var lunchTipArray0 = [lunchTip1, lunchTip2, lunchTip3, lunchTip4]

let lunchTopic0 = Topic(title: lunchTitle, icon: lunchIcon, tip: lunchTipArray0)

// MARK: - Dinner

let dinnerTitle = "Dinner"
let dinnerIcon = "Din"

let dinnerTip1 = Tip(header: "Dinner", title: "Dinner 1 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let dinnerTip2 = Tip(header: "Dinner", title: "Dinner 2 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let dinnerTip3 = Tip(header: "Dinner", title: "Dinner 3 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let dinnerTip4 = Tip(header: "Dinner", title: "Dinner 4 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

var dinnerTipArray0 = [dinnerTip1, dinnerTip2, dinnerTip3, dinnerTip4]

let dinnerTopic0 = Topic(title: dinnerTitle, icon: dinnerIcon, tip: dinnerTipArray0)

// MARK: - AfternoonSnack

let afternoonSnackTitle = "Snack"
let afternoonSnackIcon = "Sna"

let afternoonSnackTip1 = Tip(header: diet, title: "Make sure you are hydrated, as being thirsty can sometimes be confused with hunger.", body: "Drinking water before a meal has also been shown to reduce the amount of food you eat overall, while also increasing the amount of energy your body burns." , sourceName: "Fast Company", sourceURL: "https://www.fastcompany.com/3032498/why-you-should-rethink-that-morning-meeting", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let afternoonSnackTip2 = Tip(header: diet, title: "It's perfectly normal to feel hungry at 3 p.m, just choose the right snacks.", body: "Cravings can occur for many different reasons, but often later in the day our energy levels tend to slump due to a drop in our blood sugar levels. \n\nWhat we're craving is something to bring our sugar levels back up to normal. Instead of chips or a chocolate bar, have yoghurt (protein) with fruit (fiber) or a handful of nuts (healthy fat)." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let afternoonSnackTip3 = Tip(header: avoidTemptation, title: "If you have your healthy afternoon snack all ready to go, you're less likely to choose chips and chocolate.", body: "Have your afternoon snack prepared. Crackers and cheese, nuts, or peanut butter on wholegrain toast are great mid afternoon snacks. They can curb a craving without added sugar and saturated fats." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com.au/2016/08/02/this-is-why-you-crave-junk-food-later-in-the-day_a_21443885/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let afternoonSnackTip4 = Tip(header: "Snack", title: "Snack 4 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

var afternoonSnackTipArray0 = [afternoonSnackTip1, afternoonSnackTip2, afternoonSnackTip3, afternoonSnackTip4]

let afternoonSnackTopic0 = Topic(title: afternoonSnackTitle, icon: afternoonSnackIcon, tip: afternoonSnackTipArray0)

// MARK: - LateNightSnack

let lateNightSnackTitle = "Snack"
let lateNightSnackIcon = "Sna"

let lateNightSnackTip1 = Tip(header: buildMuscle, title: "Drink a protein shake before bed and gain muscle while you sleep.", body: "A study found that a protein shake before sleep can increase muscle growth by 22%. A 12-week study found that weightlifters who drank a protein shake before bed had more muscle and were significantly (3%) stronger." , sourceName: "Men's Journal", sourceURL: "https://www.mensjournal.com/food-drink/best-late-night-snack-according-science/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let lateNightSnackTip2 = Tip(header: loseWeight, title: "If you’re trying to lose weight, avoid drinking and eating simple carbs at night.", body: "Since you won’t be burning off any carbs while you’re sleeping, your body is more likely to store these as fat. Avoid beer, chips, cookies, juice, soda, and wine." , sourceName: "12 Minute Athlete", sourceURL: "https://www.12minuteathlete.com/bedtime-snack-ideas/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let lateNightSnackTip3 = Tip(header: planAhead, title: "If you’re working out tomorrow morning, some carbs will help give you energy for your workout.", body: "That’s where the idea of carb loading before an endurance race of some sort comes in—carbs give you fuel, but since you’re waking up early you have to give them to your body the night before rather than the morning of." , sourceName: "12 Minute Athlete", sourceURL: "https://www.12minuteathlete.com/bedtime-snack-ideas/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let lateNightSnackTip4 = Tip(header: planAhead, title: "Eating healthy fats at night is a great way to feel satisfied and not wake up in the middle of the night starving.", body: "Healthy fat foods include: avocados, nuts, full-fat yogurt, cheese, dark chocolate (at least 70% cocoa), eggs, fish, chia seeds, extra virgin olive oil, and coconut oil." , sourceName: "Healthline", sourceURL: "https://www.healthline.com/nutrition/10-super-healthy-high-fat-foods", sponsorLogo: "TBD", sponsorURL: "www.test.com")

var lateNightSnackTipArray0 = [lateNightSnackTip1, lateNightSnackTip2, lateNightSnackTip3, lateNightSnackTip4]

let lateNightSnackTopic0 = Topic(title: lateNightSnackTitle, icon: lateNightSnackIcon, tip: afternoonSnackTipArray0)

// MARK: - Journal

let journalTitle = "Journal"
let journalIcon = "Jou"

let success = "SUCCESS"

let journalTip1 = Tip(header: success, title: "Bill Gates takes time to reflect", body: "The founder of Microsoft famously said, \"It’s fine to celebrate success but it is more important to heed the lessons of failure.\" Reflection should be a daily practice but the weekends are a perfect opportunity to step back and reflect on the lessons of the previous week and to make improvements for the next. \n\nAuthor of \"The Happiness Project,\" Gretchen Rubin, suggests starting a “one sentence journal” to encourage daily reflection." , sourceName: "LifeHack.org", sourceURL: "https://www.lifehack.org/articles/productivity/12-weekend-habits-highly-successful-people.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let journalTip2 = Tip(header: journalTitle, title: "journal 2 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let journalTip3 = Tip(header: journalTitle, title: "journal 3 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let journalTip4 = Tip(header: journalTitle, title: "journal 4 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

var journalTipArray0 = [journalTip1, journalTip2, journalTip3, journalTip4]

let journalTopic0 = Topic(title: journalTitle, icon: journalIcon, tip: journalTipArray0)


// MARK: - Meditation

let meditationTitle = "Meditation"
let meditationIcon = "Med"

let meditationTip1 = Tip(header: success, title: "Oprah practices sitting still for 20 minutes - twice a day!", body: "This once-best-kept secret of the yogis is now common knowledge. Even the corporate world is acknowledging the benefits of meditation and mindfulness for reducing stress, improving productivity, facilitating creativity and maintaining general well-being. \n\nThe weekends can often be busier than week days with attempting to cram in chores, exercise, family commitments, social engagements and more into a 48-hour period. The most successful people take daily time outs for stillness." , sourceName: "LifeHack.org", sourceURL: "https://www.lifehack.org/articles/productivity/12-weekend-habits-highly-successful-people.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let meditationTip2 = Tip(header: reduceStress, title: "Set aside 15 mindful minutes to reduce stress.", body: "Spending 10 to 15 minutes each morning with some mindfulness or meditation practice, which can also be incorporated with physical activity, helps the brain connect with what’s most important to us. It grounds us to an intention for how we want to show up during the day, before we start worrying about what we need to get done." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/health/how-effectively-manage-stress-so-it-doesn-t-hurt-your-ncna815626", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let meditationTip3 = Tip(header: success, title: "More than 80% of the world-class performers interviewed by Tim Ferris, author of Tools of Titans, have some form of daily meditation or mindfulness practice.", body: "The goal is to cultivate a present-state awareness when it doesn't matter (sitting on the couch for ten minutes) so that you can be nonreactive and focus better later when it does matter (time-sensitive project at work, conversation with a loved one, etc.). Doing it will improve everything else in your life." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/quora/the-most-successful-peopl_b_13607676.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let meditationTip4 = Tip(header: success, title: "Meditation helps you become aware of all the voices in your head and recognize the difference between \"you\" and all the noise.", body: "If you've never tried it before you may be so used to the different voices that you don't notice them, their thoughts are considered to be your thoughts. \n\nBut, it’s possible to listen to the voices without identifying with them directly. When you meditate you'll develop the ability to hear, and observe, the inner converstaion that's always going on in your head." , sourceName: "Medium", sourceURL: "https://betterhumans.coach.me/better-than-meditation-12532d29f6cd", sponsorLogo: "TBD", sponsorURL: "www.test.com")

var meditationTipArray0 = [meditationTip1, meditationTip2, meditationTip3, meditationTip4]

let meditationTopic0 = Topic(title: meditationTitle, icon: meditationIcon, tip: meditationTipArray0)

// MARK: - Mindfulness

let mindfulnessTitle = "Mindfulness"
let mindfulnessIcon = "Min"

let mindfulnessTip1 = Tip(header: reduceStress, title: "Even just 3 to 5 minutes of slow, rhythmic breathing can start to train the nervous system to be more adaptive.", body: "Stress tends to cause us to speed up. The first thing to do when feeling stressed and anxious is to slow yourself down. The best way to do this is to take some deep breaths. \n\nResearch indicates breathing about six breaths per minute (inhale to a count of five and exhale to a count of five) in an even pattern is ideal for this shift to happen. Breathing helps to regulate our system, allowing us to feel more grounded and in control. \n\nOnce we can be in that place, we have a better ability to problem solve what to do about the stressful situation (if there is anything we can do)." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/health/how-effectively-manage-stress-so-it-doesn-t-hurt-your-ncna815626", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let navySealAdvice = "NAVY SEAL ADVICE"

let mindfulnessTip2 = Tip(header: improveHealth, title: "Go for a walk outside reduces blood pressure, while increasing brain activity responsible for relaxation.", body: "Research shows that going for a deliberate stroll helped reduce the effects of depression. Known as \"forest bathing,\" is the Japanese practice of simply being in nature. \n\nPro tip: Leave your earbuds at home and just take in the sounds of your neighborhood." , sourceName: "The Thirty", sourceURL: "https://thethirty.byrdie.com/mindfulness-tips-ideas", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let mindfulnessTip3 = Tip(header: navySealAdvice, title: "\"Box breathing\" reduces stress and helps you keep cool under pressure.", body: "Focusing on your breath is one of the simplest and most proven effective ways to be more mindful (and in turn, relaxed). Count to four as you inhale, hold for hour, count to four as you exhale, and hold for four. Repeat." , sourceName: "Curiosity", sourceURL: "https://curiosity.com/topics/box-breathing-is-the-navy-seal-technique-for-reducing-stress-and-staying-calm-curiosity/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let mindfulnessTip4 = Tip(header: mood, title: "Research shows that practicing gratitude immediately boosts your mood", body: "Quickly think of one to three things you're thankful for, whether its for your family and friends, your health, or the nice weather. Science shows that this exercise is an immediate mood booster." , sourceName: "The Thirty", sourceURL: "https://thethirty.byrdie.com/mindfulness-tips-ideas", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let mindfulnessTip5 = Tip(header: improvePerformance, title: "Research show that practicing visualization helps you perform better in real life.", body: "Whatever you're stressing about or want to accomplish today, close your eyes and quickly run through it in your head beforehand. \n\nScientists found that weight lifters who simply visualized their workouts were nearly two times stronger than those who did nothing at all. Basically, you're helping your brain establish patterns for success.", sourceName: "The Thirty", sourceURL: "https://thethirty.byrdie.com/mindfulness-tips-ideas", sponsorLogo: "LOGO", sponsorURL: "URL")

var mindfulnessTipArray0 = [mindfulnessTip1, mindfulnessTip2, mindfulnessTip3, mindfulnessTip4]

let mindfulnessTopic0 = Topic(title: mindfulnessTitle, icon: mindfulnessIcon, tip: mindfulnessTipArray0)

// MARK: - Gym

let gymTitle = "Gym"
let gymIcon = "Gym"

let preWorkout = "PRE-WORKOUT"

let gymTip1 = Tip(header: improvePerformance, title: "Positive self talk improves workout performance", body: "Research found that people who practiced motivational self-talk—that is, thinking positive, encouraging things—were able to push harder for longer, which ultimately increased their endurance. \n\nIt’s really ultimately the brain that lets you down. You can go a lot harder than you think you can. \n\nSo, when you're tired, tell yourself positive, empowering phrases like \"I got this\" or \"I am strong and powerful\"" , sourceName: "Time", sourceURL: "https://time.com/4606637/exercise-motivational-skills-training/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let gymTip2 = Tip(header: improvePerformance, title: "To perform best at the gym, drink about 17 ounces of fluid about two hours before exercise and drink throughout your workout.", body: "During exercise, start drinking fluids early, and drink them at regular intervals to replace fluids lost by sweating. \n\nCells that don't maintain their balance of fluids and electrolytes shrivel, which can result in muscle fatigue and performance can suffer." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/diet/features/6-reasons-to-drink-water#3", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let gymTip3 = Tip(header: mentalToughness, title: "When your mind is telling you you're done, you're really only 40 percent done.", body: "The human mind is an amazing thing. It both propels us forward and holds us back. When you're doing something difficult and you think you need to stop, don't. You’re only actually 40% done. The 40% rule reminds us that no matter how exhausted we might feel, it is always possible to draw on an untapped reserve of energy, motivation, and drive that we all possess." , sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/chrismyers/2017/10/06/the-40-rule-the-simple-secret-to-success/#48c94eea5cdd", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let gymTip4 = Tip(header: bestResults, title: "For better results, shorter but more intensive exercise is more effective than longer drawn-out exercise", body: "To get the best results in your fitness, research has found that shorter but more intensive exercise is more effective than longer drawn-out exercise.  \n\nMost of the growth actually comes during the recovery process. However, the only way to truly recover is by actually pushing yourself to exhaustion during the workout." , sourceName: "ACSM", sourceURL: "https://www.acsm.org/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let gymTip5 = Tip(header: navySealAdvice, title: "Do box breathing before you workout.", body: "With your nose, inhale for a count of 5, hold for a count of 5, exhale for a count of 5, and hold for a count of 5. Repeat for at least 5 minutes. This leads to a calm, steady mindstate.", sourceName: "Unbeatable Mind", sourceURL: "https://unbeatablemind.com/breathing-and-hydration/", sponsorLogo: "ABC", sponsorURL: "URL")

let gymTip6 = Tip(header: navySealAdvice, title: "Use positive internal dialogue.", body: "Override negative thoughts with positive ones. Develop a power statement that you repeat to yourself like: \"Let's go!\" \"I got this!\" \"Feeling good, looking good, oughta be in Hollywood! \"Day by day, in every way, I am getting better and better.\"", sourceName: "8 Weeks to Sealfit", sourceURL: "https://www.amazon.com/Weeks-SEALFIT-Unconventional-Training-Toughness/dp/125004054X", sponsorLogo: "ABC", sponsorURL: "URL")

let gymTip7 = Tip(header: navySealAdvice, title: "Start by visualizing your workout before you start.", body: "True warriors through the ages have discovered this secret: You must win the first battle--in your mind--to win every other battle in life. Rehearse the whole thing with perfect form. SEAL teams use the same technique before each mission.", sourceName: "8 Weeks to Sealfit", sourceURL: "https://www.amazon.com/Weeks-SEALFIT-Unconventional-Training-Toughness/dp/125004054X", sponsorLogo: "ABC", sponsorURL: "URL")

let gymTip8 = Tip(header: improvePerformance, title: "Perform better during high-instensity training by breathing through your nose.", body: "It allows for deeper, more penetrating breaths into your diaphragm. If you feel you're not getting air, use your mouth to take a few extra gulps of air and then go back to nostril breathing.", sourceName: "8 Weeks to SEALFIT", sourceURL: "https://www.amazon.com/Weeks-SEALFIT-Unconventional-Training-Toughness/dp/125004054X", sponsorLogo: "ABC", sponsorURL: "URL")

let gymTip9 = Tip(header: navySealAdvice, title: "Gaining deep awareness and control of your breath is one of the most essential tools in life.", body: "It's a secret practice of ancient yogis and matrial artists to develop more power, presence, and mental control. Before your training session, perform the box breathing exercise for 5 minutes. This will ground you, clear any baggage from your mind, and energize you from the work ahead.", sourceName: "8 Weeks to SEALFIT", sourceURL: "https://www.amazon.com/Weeks-SEALFIT-Unconventional-Training-Toughness/dp/125004054X", sponsorLogo: "ABC", sponsorURL: "URL")

let gymTip10 = Tip(header: mentalToughness, title: "Training isn't \"working out\". Develop a disciplined habit of training.", body: "Training is is lifelong growth of your physical, mental, emotional, and spiritual skills neeeded to become a better person. \n\nDon't bump a training session without serious thought. When its cold, you train. When it rains, you train. If you must, make it up.", sourceName: "8 Weeks to SEALFIT", sourceURL: "https://www.amazon.com/Weeks-SEALFIT-Unconventional-Training-Toughness/dp/125004054X", sponsorLogo: "ABC", sponsorURL: "URL")


var gymTipArray0 = [gymTip1, gymTip2, gymTip3, gymTip4]
var gymTipArray1 = [gymTip5, gymTip6, gymTip7, gymTip8]

let gymTopic0 = Topic(title: gymTitle, icon: gymIcon, tip: gymTipArray0)
let gymTopic1 = Topic(title: gymTitle, icon: gymIcon, tip: gymTipArray1)

// MARK: - Running

let runningTitle = "Running"
let runningIcon = "Run"

let runningTip1 = Tip(header: improvePerformance, title: "Drink about 17 ounces of fluid about two hours before running.", body: "The American College of Sports Medicine recommends that people drink about 17 ounces of fluid about two hours before exercise. During exercise, they recommend that people start drinking fluids early, and drink them at regular intervals to replace fluids lost by sweating. \n\nCells that don't maintain their balance of fluids and electrolytes shrivel, which can result in muscle fatigue and performance can suffer." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/diet/features/6-reasons-to-drink-water#3", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let runningTip2 = Tip(header: runningTitle, title: "Running 2 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let runningTip3 = Tip(header: runningTitle, title: "Running 3 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let runningTip4 = Tip(header: runningTitle, title: "Running 4 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let runningTip5 = Tip(header: runningTitle, title: "Running 5 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

var runningTipArray0 = [runningTip1, runningTip2, runningTip3, runningTip4, runningTip5]

let runningTopic0 = Topic(title: runningTitle, icon: runningIcon, tip: runningTipArray0)


// MARK: - Yoga

let yogaTitle = "Yoga"
let yogaIcon = "Yog"

let yogaTip1 = Tip(header: yogaTitle, title: "Yoga 1 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let yogaTip2 = Tip(header: yogaTitle, title: "Yoga 2 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let yogaTip3 = Tip(header: yogaTitle, title: "Yoga 3 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let yogaTip4 = Tip(header: yogaTitle, title: "Yoga 4 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

var yogaTipArray0 = [yogaTip1, yogaTip2, yogaTip3, yogaTip4]

let yogaTopic0 = Topic(title: yogaTitle, icon: yogaIcon, tip: yogaTipArray0)


// MARK: - Bar

let barTitle = "Bar"
let barIcon = "Bar"

let health = "HEALTH"
let beer = "BEER"
let qualityOfSleep = "QUALITY OF SLEEP"


let barTip1 = Tip(header: beer, title: "Reduce your chance getting a migraine by drinking beer in a bottle instead of on tap", body: "Beer on tap has about 25 times the migraine-inducing tyramine as beer in bottles. So if you really want a cold one, ask for a bottle. Or change it up and order a bourbon. It doesn’t have any of the stuff." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/migraines-headaches/ss/slideshow-food-migraines?ecd=wnl_din_121716&ctr=wnl-din-121716_nsl-ld-stry_1&mb=aT%2fNo%2fMfdXIeXdniBtn11BXFE73IOX1chB5LGA9kRyM%3d", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let barTip2 = Tip(header: qualityOfSleep, title: "Alcohol will help you fall asleep, but it will reduce the quality of your sleep.", body: "Drinking within three hours of bedtime helps you fall asleep — alcohol is a depressant. But once the alcohol is metabolized hours later, you’re more likely to wake up or start tossing and turning. \n\nWhile any amount of alcohol can increase short-wave sleep — the kind you get in the first half of the night that repairs body tissues and boost your immune system — it can disrupt REM sleep, the later sleep stage that encourages learning and memory formation." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/2014/12/14/bedtime-rituals_n_6309564.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let barTip3 = Tip(header: health, title: "Drinking once a day or five to 10 alcoholic drinks a week is likely to shortern your life by up to six months.", body: "While non-fatel heart attacks are less likely in people who drink alchool, scientists say this benefit is swamped by the increase of other forms of heart disearse including fatal heart attacks and stroke. \n\nIf you already drink, drinking less may help you live longer and lower your risk of several cardiovascular conditions." , sourceName: "BBC News", sourceURL: "https://www.bbc.com/news/health-43738644", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let barTip4 = Tip(header: health, title: "After a night of drinking, drink coffee in the morning because it can protect your liver from damage casused by too much alcohol", body: "Studies show that drinking two to three cups a day can protect your liver from damage caused by too much alcohol or an unhealthy diet. Some research suggests it may lower your risk of liver cancer." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/hepatitis/ss/slideshow-best-and-worst-foods-for-your-liver?ecd=wnl_spr_120616_REMAIL&ctr=wnl-spr-120616-REMAIL_nsl-ld-stry_1&mb=aT%2fNo%2fMfdXIeXdniBtn11BXFE73IOX1chB5LGA9kRyM%3d", sponsorLogo: "TBD", sponsorURL: "www.test.com")

var barTipArray0 = [barTip1, barTip2, barTip3, barTip4]

let barTopic0 = Topic(title: barTitle, icon: barIcon, tip: barTipArray0)

// MARK: - MORE BAR TIPS

let barTip5 = Tip(header: diet, title: "Some drinks have more calories and make you hungrier.", body: "When it comes to waist-friendly cocktails, the simpler the drink, the better. The sweet-and-fancy ones tend to have more calories and the additional sugar can make you even hungrier: Your blood sugar skyrockets higher than it does on beer, wine, or a shot of something, making the resulting cravings worse. \n\nAlcohol has 7 calories per gram, making it the second-most calorie-dense macronutrient. (That's just below pure fat, which has 9 calories per gram.) This means a only 1.5-ounce of vodka has almost 100 calories. \n\nSo if you're going to drink, have something straight up and simple like wine or beer. Any wine or beer works, but to reduce about 10 calories per glass, choose a rosé or white wine instead of a heavier red. Dark beer has less calories than regular beer and may leave you feeling fuller than because it's so starchy and rich. Avoid juices, liqueurs (which are sweet and syrupy), colas, tonics, and super-sugary bottled mixes like the ones for a lot of margaritas and daiquiris." , sourceName: "CNN", sourceURL: "https://www.cnn.com/2013/04/03/health/wine-waistline/index.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let barTip6 = Tip(header: health, title: "Drinking multiple drinks on one night is worse for you body than drinking one drink a day", body: "When you down three or four drinks in one night, your body has many hundreds of alcohol calories to process before it can continue to break down food calories or stored fat. All those drinks increase your blood sugar which makes you hungrier and because you're tipsy, your prefrontal cortex is misfiring and you now have zero hesitation about ordering the fried mozzarella sticks with a side of ranch and eating all of them. \n\nHave four drinks every Saturday night and you'll be up about 10 pounds in a year." , sourceName: "CNN", sourceURL: "https://www.cnn.com/2013/04/03/health/wine-waistline/index.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let happyHourTitle = "Happy Hour"
let happyHourIcon = "Hap"

let happyHourTip1 = Tip(header: planAhead, title: "Before you go to happy hour, have dinner or a snack with protein, fiber, and healthy fat to reduce your chances of a hangover and weight-gain.", body: "It's important to eat right than to eat less. Try greek yogurt with berries, almond butter with fruit, or a protein shake. These foods stabilize your blood-sugar levels without slowing down your metabolism. They will also slow down the alcohol from being absorded into your bloodstream, reducing the diet-damaging effects." , sourceName: "CNN", sourceURL: "https://www.cnn.com/2013/04/03/health/wine-waistline/index.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let happyHourTip2 = Tip(header: loseWeight, title: "Alcohol reduces your ability to have self-control, which leads to eating more and weight gain.", body: "Drinking can lower your inhibitions and sense of awareness, making you much more likely to mindlessly eat when you have a buzz. \n\nIt's harder to for your brain to read those fullness signals when you've had a few drinks. People often end up eating when they aren't necessarily hungry." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/hepatitis/ss/slideshow-best-and-worst-foods-for-your-liver?ecd=wnl_spr_120616_REMAIL&ctr=wnl-spr-120616-REMAIL_nsl-ld-stry_1&mb=aT%2fNo%2fMfdXIeXdniBtn11BXFE73IOX1chB5LGA9kRyM%3d", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let happyHourTip3 = Tip(header: loseWeight, title: "Alcohol adds hundreds of calories to your diet and temporarily stops your body from burning fat.", body: "Your body can't store calories from alcohol for later, the way it does with food calories. So when you drink, your body must stop what it's doing (like, say, burning off calories from your last meal) to get rid of the alcohol. \n\nDrinking presses 'pause' on your metabolism, shoves away the food calories, and says, 'Break me down first!'. The result is that whatever you recently ate gets stored as fat. \n\nResearch also found that alcohol decreases fat burn in the belly. That's why you never hear about 'beer hips' -- you hear about a 'beer belly.'" , sourceName: "CNN", sourceURL: "https://www.cnn.com/2013/04/03/health/wine-waistline/index.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let happyHourTip4 = Tip(header: loseWeight, title: "People who drink heavily when they’re younger have a higher risk of becoming overweight or obese when they’re older.", body: "People who were heavy drinkers (having four or more drinks on any day or eight or more drinks per week for women) had a 41% higher risk of going from a normal weight BMI to an overweight BMI when compared with people who weren’t heavy drinkers, and a 36% higher risk of going from an overweight BMI to an obese BMI by the time they hit their mid-twenties. \n\nIt’s important to look at alcohol in terms of calories. 12 ounces of regular beer can have about 150 calories, five ounces of wine might have about 120 calories, and a seven-ounce rum and Coke has about 155 calories. And, if you’re drinking a lot of those in a week, it can add up." , sourceName: "Women's Health", sourceURL: "https://www.womenshealthmag.com/weight-loss/a19918843/will-drinking-make-me-gain-weight/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

var happyHourTipArray0 = [happyHourTip1, happyHourTip2, happyHourTip3, happyHourTip4]

let happyHourTopic0 = Topic(title: happyHourTitle, icon: happyHourIcon, tip: happyHourTipArray0)


// MARK: - Cafe

let cafeTitle = "Cafe"
let cafeIcon = "Caf"

let cafeTip1 = Tip(header: health, title: "Caffeine (in moderation) may help you live longer.", body: "Part of coffee's health-sustaining power is derived from its caffeine content. If you take your coffee daily and often, and abstain from smoking, you’re likely to live longer than the average adult, says a study of 500,000 men and women." , sourceName: "New England Journal of Medicine", sourceURL: "https://www.nejm.org/doi/full/10.1056/NEJMoa1112010", sponsorLogo: "GM_logo", sponsorURL: "https://gm.com")

let cafeTip2 = Tip(header: loseWeight, title: "Coffee can help you lose weight as long as your don't add sugar or cream.", body: "Coffee does stimulate the metabolismm which can help you lose weight, but only a little. Don't count on this for weight loss, especially if you add calories with toppings." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/diet/ss/slideshow-fat-fighting-foods?ecd=wnl_din_112616&ctr=wnl-din-112616_nsl-ld-stry_1&mb=aT%2fNo%2fMfdXIeXdniBtn11BXFE73IOX1chB5LGA9kRyM%3d%22,%22Source:%20WebMD", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let cafeTip3 = Tip(header: loseWeight, title: "Green tea promotes weight loss by stimulating the body to burn fat.", body: "Green tea contains catechins, a type of phytochemical that may briefly affect the metabolism to burn body fat. To get the most benefit, you may need to drink green tea several times a day. Try taking your tea hot, because it takes longer to drink, providing a soothing, mindful experience." , sourceName: "SourceName", sourceURL: "https://www.webmd.com/diet/ss/slideshow-fat-fighting-foods?ecd=wnl_din_112616&ctr=wnl-din-112616_nsl-ld-stry_1&mb=aT%2fNo%2fMfdXIeXdniBtn11BXFE73IOX1chB5LGA9kRyM%3d%22,%22Source:%20WebMD", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let cafeTip4 = Tip(header: health, title: "Green tea contains antioxidants which may protect against some forms of cancer, especially if you drink it hot", body: "Research suggests it may protect against some forms of cancer, including liver. You'll get more catechins if you brew tea yourself and drink it hot. Iced tea and ready-to-drink green teas have much lower levels." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/hepatitis/ss/slideshow-best-and-worst-foods-for-your-liver?ecd=wnl_spr_120616_REMAIL&ctr=wnl-spr-120616-REMAIL_nsl-ld-stry_1&mb=aT%2fNo%2fMfdXIeXdniBtn11BXFE73IOX1chB5LGA9kRyM%3d", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let cafeTip5 = Tip(header: health, title: "A California judge ruled that coffee should come with a cancer warning.", body: "The culprit is a chemical produced in the bean roasting process that is a known carcinogen. Studies indicate coffee is unlikely to cause breast, prostate, or pancreatic cancer, and it seems to lower the risks for liver and uterine cancers, the agency said. Evidence is inadequate to determine its effect on dozens of other cancer types. \n\nThe Council for Education and Research on Toxics wanted the coffee industry to remove acrylamide from its processing — like potato chip makers did when it sued them years ago — or disclose the danger in ominous warning signs or labels. The industry, led by Starbucks Corp., said the level of the chemical in coffee isn't harmful and any risks are outweighed by benefits.", sourceName: "Men's Health", sourceURL: "https://www.menshealth.com/health/a19643946/starbucks-coffee-cancer-warning/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

var cafeTipArray0 = [cafeTip1, cafeTip2, cafeTip3, cafeTip4, cafeTip5]

let cafeTopic0 = Topic(title: cafeTitle, icon: cafeIcon, tip: cafeTipArray0)

// MARK: - Date

let dateTitle = "Date"
let dateIcon = "Dat"

let dateTip1 = Tip(header: dateTitle, title: "Date 1 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let dateTip2 = Tip(header: dateTitle, title: "Date 2 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let dateTip3 = Tip(header: dateTitle, title: "Date 3 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let dateTip4 = Tip(header: dateTitle, title: "Date 4 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

var dateTipArray0 = [dateTip1, dateTip2, dateTip3, dateTip4]

let dateTopic0 = Topic(title: dateTitle, icon: dateIcon, tip: dateTipArray0)

// MARK: - Grocery Store

let groceryStoreTitle = "Groceries"
let groceryStoreIcon = "Gro"

let groceryStoreTip1 = Tip(header: planAhead, title: "Eat healthy before you shop and you're less likely to buy junk food.", body: "Research found that shoppers who ate a small healthy snack before shopping filled their carts with 25% more fruits and vegetables than if they didn't eat a healthy snack.  \n\nHealthy eating before buying food primes your brain for the decisions you'll make inside the supermarket." , sourceName: "Cornell University", sourceURL: "https://foodpsychology.cornell.edu/discoveries/apple-day-brings-more-apples-your-way", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let groceryStoreTip2 = Tip(header: planAhead, title: "Think healthy before you shop and you'll buy healthier foods", body: "Research found that priming your brain with healthy food cues (like reading a health-focused magazine or aritcle) before you shop may subconsciously influence what you buy.  " , sourceName: "International Journal of Obesity", sourceURL: "https://www.nature.com/articles/ijo2013136", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let groceryStoreTip3 = Tip(header: loseWeight, title: "Eating more protein is one of the best strategies to reduce belly fat.", body: "Protein has been shown to reduce food cravings, boost metabolism, and help you eat fewer calories per day. Protein foods to buy include: eggs, seafood, legumes, nuts, meat, dairy products, and some whole grains." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let groceryStoreTip4 = Tip(header: health, title: "There are lots of germs in a superarket. Use the hand sanitizer when you walk out of the store or wash your hands when you get home.", body: "80 percent of germs are transmitted with our hands. The germiest things include: shopping carts, the produce, meat, and seafood aisles, credit card and self-checkout touch screens, and your reuseable bag." , sourceName: "Today", sourceURL: "https://www.today.com/food/10-germiest-things-grocery-store-how-stay-safe-t109564", sponsorLogo: "TBD", sponsorURL: "www.test.com")

var groceryStoreTipArray0 = [groceryStoreTip1, groceryStoreTip2, groceryStoreTip3, groceryStoreTip4]

let groceryStoreTopic0 = Topic(title: groceryStoreTitle, icon: groceryStoreIcon, tip: groceryStoreTipArray0)

// MARK: - Shopping, Clothes

let shoppingClothesTitle = "Shopping"
let shoppingClothesIcon = "Sho"

let shoppingClothesTip1 = Tip(header: loseWeight, title: "Shop healthier.", body: "Park far away from the entrance and build a few extra, calorie-burning steps into your day. Visit stores on different levels and take the stairs, not the escalator. " , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/2012/08/11/healthy-weekend_n_1760981.html?slideshow=true#gallery/243861/2", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let shoppingClothesTip2 = Tip(header: shoppingClothesTitle, title: "Shopping 2 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let shoppingClothesTip3 = Tip(header: shoppingClothesTitle, title: "Shopping 3 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let shoppingClothesTip4 = Tip(header: shoppingClothesTitle, title: "Shopping 4 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

var shoppingClothesTipArray0 = [shoppingClothesTip1, shoppingClothesTip2, shoppingClothesTip3, shoppingClothesTip4]

let shoppingClothesTopic0 = Topic(title: shoppingClothesTitle, icon: shoppingClothesIcon, tip: shoppingClothesTipArray0)

// MARK: - Going Out (Nightlife)

let goingOutTitle = "Going Out"
let goingOutIcon = "Goi"

let goingOutTip1 = Tip(header: goingOutTitle, title: "Grocery Store 1 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let goingOutTip2 = Tip(header: goingOutTitle, title: "Grocery Store 2 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let goingOutTip3 = Tip(header: goingOutTitle, title: "Grocery Store 3 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let goingOutTip4 = Tip(header: goingOutTitle, title: "Grocery Store 4 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

var goingOutTipArray0 = [goingOutTip1, goingOutTip2, goingOutTip3, goingOutTip4]

let goingOutTopic0 = Topic(title: goingOutTitle, icon: goingOutIcon, tip: goingOutTipArray0)

// MARK: - Commute, AM

let commuteAMTitle = "Commute"
let commuteAMIcon = "Com"

let commuteAMTip1 = Tip(header: health, title: "Long commutes are bad for your health and productivity.", body: "Research found that longer-commuting workers more likely to suffer from depression, have financial worries, and report multiple aspects of work-related stress. They were also more likely to get less than the recommended seven hours of sleep each night and more likely to be obese." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/long-commutes-have-an-impact-on-health-and-productivity-2017-5", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let getSmarter = "GET SMARTER"
let relax = "RELAX"


let commuteAMTip2 = Tip(header: getSmarter, title: "Support your ongoing learning and development.", body: "Read a book listen to a podcast, Ted talk, audio book or perhaps even learn a new language. Consider it breakfast for your brain." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/what-to-do-on-your-commute-2015-12#5-listen-to-music-or-audio-books-5", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let commuteAMTip3 = Tip(header: relax, title: "Practice calming your mind, or just enjoy the environment around you.", body: "The idea is to just be present in the moment and relax. \n\nIf you spend a majority of your commute doing some deep breathing and being mindful, it can be an excellent transitional time so you don't walk in the door feeling wound up." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/what-to-do-on-your-commute-2015-12#8-relax-8", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let commuteAMTip4 = Tip(header: improvePerformance, title: "Use this time to check in on your goals.", body: "Think about what makes you happy and what areas of your life could be improved. It's a great way to stay on track and make adjustments with your goals." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/what-to-do-on-your-commute-2015-12#3-reflect-3", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let commuteAMTip5 = Tip(header: improvePerformance, title: "Spend five to ten minutes thinking and planing out your day.", body: "Think hour by hour. What will make this day a success? With whom are you meeting? What are you trying to accomplish? What might throw you off? How will you handle it? Do you expect to have any difficult conversations? How will you approach them? Any risks you want to take? How will you initiate them? ", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2015/01/get-more-done-during-your-commute", sponsorLogo: "Sponsor", sponsorURL: "sponsorURL")

var commuteAMTipArray0 = [commuteAMTip1, commuteAMTip2, commuteAMTip3, commuteAMTip4]

let commuteAMTopic0 = Topic(title: commuteAMTitle, icon: commuteAMIcon, tip: commuteAMTipArray0)

// MARK: - Commute, PM

let commutePMTitle = "Commute"
let commutePMIcon = "Com"

let commutePMTip1 = Tip(header: health, title: "Research links spending a single hour in traffic to higher odds of having a heart attack.", body: "High noise levels -- like the kind you hear on a freeway -- are also linked to heart disease. If you can’t avoid traveling during rush hour, squash stress by listening to relaxing music. Or share the ride and chat with your fellow passenger." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/heart/ss/slideshow-surprising-hurt-heart?ecd=wnl_spr_091316_AM&ctr=wnl-spr-091316-AM_nsl-ld-stry_1&mb=aT%2fNo%2fMfdXIeXdniBtn11BXFE73IOX1chB5LGA9kRyM%3d", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let commutePMTip2 = Tip(header: health, title: "Pollution at intersections is 29x higher than on the open road.", body: "To reduce the amount of pollution exposure while waiting in traffic jams and at traffic lights, drivers should keep a distance from the car in front, close car windows, and switch off the fan. \n\nThis can reduce the chance of breathing in hazardous levels of air pollution by 76%. Also, set the fan so that the air circulates internally and prevents pollution from entering from outside." , sourceName: "Medical News Today", sourceURL: "https://www.medicalnewstoday.com/articles/312570.php", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let commutePMTip3 = Tip(header: improvePerformance, title: "Use your commuting time to bring yourself closer to the life you want to live.", body: "Think back through your day hour by hour and glean wisdom and connection from it. How did the day go? What worked? What didn’t? What do you want to do the same – or differently – tomorrow? With whom can you share feedback? Who should you thank? What happened today for which you can feel grateful? These questions will help you learn, grow, and connect." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2015/01/get-more-done-during-your-commute", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let commutePMTip4 = Tip(header: improvePerformance, title: "Identify an area in your life that you want to improve and use your commute to fix it.", body: "If it’s exercise you need, then bike or walk to work, even if it’s just partway. Or park far away from your office and walk an extra minute. If it’s relaxation you’re missing, then do nothing, or read a fun book, or take a quick walk around your office before you leave for home. \n\nIf you want to learn something, then read about it or, if you have internet access, watch a video or participate in an online course. If you’re feeling lonely, call, text, or email people you cherish." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2015/01/get-more-done-during-your-commute", sponsorLogo: "TBD", sponsorURL: "www.test.com")

var commutePMTipArray0 = [commutePMTip1, commutePMTip2, commutePMTip3, commutePMTip4]

let commutePMTopic0 = Topic(title: commutePMTitle, icon: commutePMIcon, tip: commutePMTipArray0)

// MARK: - Work, AM

let workAMTitle = "Work"
let workAMIcon = "Wor"

let workAMTip1 = Tip(header: improvePerformance, title: "Don’t check your social media or email until after your 3 hours of deep work. Your morning should be spent on output.", body: "A common strategy for this is known as the “90–90–1” rule, where you spend the first 90 minutes of your workday on your #1 priority." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let workAMTip2 = Tip(header: improvePerformance, title: "Don't schedule your meetings in the morning. Instead, schedule them for the afternoon, after lunch.", body: "Research shows we are more focused in the morning. So spend this time doing difficult tasks, not sitting in a meeting. \n\nSchedule your meetings for the afternoon, because the thing about meetings is that if they're scheduled, people will show up. While many teams meet first thing in the morning to figure out what everyone will do that day. Another option is to have that meeting at 3:30 or 4 p.m., figure out the next day’s plan, send everyone home, and then come in the next morning ready to roll." , sourceName: "Fast Company", sourceURL: "https://www.fastcompany.com/3032498/why-you-should-rethink-that-morning-meeting", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let workAMTip3 = Tip(header: improvePerformance, title: "Be more productive at work by taking your cell phone moving it out of sight or face-down.", body:  "A recent study found people were much more likely to make errors and not pay attention to their main task if they were interrupted by notifications from their phone - such as a text or a call. \n\nTo boost our productivity, it's important to recognize not all emails and texts are created equal and therefore don’t warrant immediate notification.", sourceName: "WIRED", sourceURL: "https://www.wired.co.uk/article/what-is-productivity-be-more-productive-how-to-work", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let workAMTip4 = Tip(header: improvePerformance, title: "Try to avoid meetings because they are the biggest office time-sucks.", body: "The average office worker spends over 31 hours each month in unproductive meetings. Before booking your next meeting, ask yourself whether you can accomplish the same goals or tasks via email, phone, or Web-based meeting (which may be slightly more productive). \n\nIf you must have a meeting, there's some evidence that standing meetings can result in increased group arousal, decreased territoriality, and improved group performance.", sourceName: "Inc", sourceURL: "https://www.inc.com/john-rampton/15-ways-to-increase-productivity-at-work.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let workAMTip5 = Tip(header: improvePerformance, title: "The best time to take a break from work is midmorning.", body: "That's because your mental resources are generally at their highest soon after you wake up, and they gradually diminish throughout the day. So it's easier to restore those resources when you take a break closer to the start of the workday. \n\nResearchers found that people who took breaks earlier in the day, and used them to do activities they preferred, reported less physical distress and feeling more satisfied with their jobs.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/the-best-time-of-day-to-do-everything-2016-5#-5", sponsorLogo: "sponsor", sponsorURL: "sponsorURL")

var workAMTipArray0 = [workAMTip1, workAMTip2, workAMTip3, workAMTip4]

let workAMTopic0 = Topic(title: workAMTitle, icon: workAMIcon, tip: workAMTipArray0)

// MARK: - Work, PM

let workPMTitle = "Work"
let workPMIcon = "Wor"

let strategy = "STRATEGY"

let workPMTip1 = Tip(header: strategy, title: "Your best work — which for most people is thinking — will actually happen while you’re away from your work, \"recovering.\" For best results: Spend 20% of your energy on your work and 80% of your energy on recovery and self-improvement.", body: "In one study, only 16 percent of respondents reported getting creative insight while at work. Ideas generally came while the person was at home, in transportation, or during recreational activity. \n\n\"The most creative ideas aren’t going to come while sitting in front of your monitor,\" says Scott Birnbaum, a vice president of Samsung Semiconductor. The reason for this is simple. When you’re working directly on a task, your mind is tightly focused on the problem at hand (i.e., direct reflection). Conversely, when you’re not working, your mind loosely wanders(i.e., indirect reflection)." , sourceName: "Benjamin P. Hardy, author of Willpower Doesn't Work", sourceURL: "https://medium.com/@benjaminhardy/this-morning-routine-will-save-you-20-hours-per-week-409f8acbde1", sponsorLogo: "logo", sponsorURL: "https://www.test.com/")

let workPMTip2 = Tip(header: health, title: "Avoid computer eye strain by keeping your monitor arm's length away, blinking frequently, taking a break every 15 minutes.", body: "The monitor should be directly in front of the face, not off to the side. Position the monitor so its center is four to eight inches below the eyes. Instal anti-glare filters, adjust window shades, and changing the screen’s contrast and brightness can help reduce glare and reflections. \n\nTake a break every 15 minutes to give your eyes a break.  Stand, stretch, or just look off into the distance." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let workPMTip3 = Tip(header: reduceStress, title: "You’ll experience less stress and more motivation when you’re surrounded by plants, water and other natural elements.", body: "Researchers noted that simply staring at an image of natural scenery for 40 seconds was enough to trigger the brain into a more relaxed state. Beyond this feeling of relaxation, subjects who stared at the green meadow performed significantly better in a test of attention after the initial session; they made fewer mistakes, and were less distracted all around. \n\nOverall, the presence or visibility of plants, animals and water should be enough to raise the productivity — and even the health — of your entire team." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/health/why-natural-scenery-improves-your-mood-makes-you-more-productive-ncna860806", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let workPMTip4 = Tip(header: improvePerformance, title: "Increase productivity at work by taking a nap. Many tech companies have nap rooms for this very reason.", body: "Sleepiness tends to peak around 2 p.m. making it a good time for a nap. Some of the greatest creative minds, most notably Thomas Edison, were or are huge fans of naps, believing that naps not only allow them to be more productive, but that they also helped them to be more creative. \n\nIt may be difficult to nap at work but if you can find a quiet place to rest for 15 minutes, you could be doing yourself (and your employer) a huge favor." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/successful-people-do-during-afternoon-lull-2014-4", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let workPMTip5 = Tip(header: strategy, title: "A study found that 3 p.m. on a Tuesday is the best time for a team meeting.", body: "That's when everyone is most likely to be available. By contrast, the worst time to suggest a meeting is at the beginning of the workday. \n\nIt's important to leave people time to prepare — and if you have a meeting at 9 a.m., they'll either scramble to prep the day before or show up unprepared." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/the-best-time-of-day-to-do-everything-2016-5#-7", sponsorLogo: "TBD", sponsorURL: "www.test.com")


var workPMTipArray0 = [workPMTip1, workPMTip2, workPMTip3, workPMTip4]

let workPMTopic0 = Topic(title: workPMTitle, icon: workPMIcon, tip: workPMTipArray0)

// MARK: - Work Late

let workLateTitle = "Work"
let workLateIcon = "Wor"

let workLateTip1 = Tip(header: improvePerformance, title: "The Research Is Clear: Long Hours Backfire for People and for Companies.", body: "Research show overworking and stress leads to all sorts of health problems, including impaired sleep, depression, heavy drinking diabetes, impaired memory, and heart disease. \n\nThis also hurts a company's bottom line, showing up as absenteeism, turnover, and rising health insurance costs." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2015/08/the-research-is-clear-long-hours-backfire-for-people-and-for-companies", sponsorLogo: "GM_logo", sponsorURL: "https://www.gm.com/")

let workLateTip2 = Tip(header: improvePerformance, title: "Working long hours makes you less productive.", body: "Research found that when we work too hard, we lose sight of the bigger picture. Even if you work long hour voluntarily, you're more likely to make mistakes when you're tired - and most of us tire more easily than we think we do. \n\nOverworking results in diminishing returns: keep overworking, and you'll progressively work more stupidly on tasks that are increasingly meaningless." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2015/08/the-research-is-clear-long-hours-backfire-for-people-and-for-companies", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let workLateTip3 = Tip(header: improvePerformance, title: "Your output falls sharply after working 50 hours in a week.", body: "Research found that employee output falls sharply after a 50-hour work-week, and falls off a cliff after 55 hours—so much so that someone who puts in 70 hours produces nothing more with those extra 15 hours. \n\nWork, both mental and physical, results in fatigue that limits the cognitive and bodily resources people have to put towards their work. When you're not thinking clearly or moving as quickly or precisely you must work more slowly to maintain quality and safety requirements." , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2015/01/26/working-more-than-50-hours-makes-you-less-productive.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let workLateTip4 = Tip(header: health, title: "Working more than 45 hours a week increases a person’s risk for heart-related health problems, like heart attacks.", body: "Researchers found that the risk for heart disease progressively increased the more hours a person worked. And found that regularly working late can increase risk for stroke and affect focus and mood. \n\nNeed more convincing? Working more could actually make you less productive. One mind-blowing study found that someone who spends 70 hours working produces nothing more than they would have at 55 hours. That’s 15 hours entirely wasted. ", sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/entry/work-stress-late-hours-heart-disease_us_56e85252e4b0860f99da951a", sponsorLogo: "sponsor", sponsorURL: "sponsorURL")

let workLateTip5 = Tip(header: health, title: "If you have to stay late, take a break and eat a healthy dinner.", body: "Give yourself a much-deserved break before jumping in for work round two. At the very least, take a five-minute walk outside and get some fresh air. \n\nBut if you can, grab a quick dinner away from your desk (and maybe a coffee or two). Ideally, you’d sit down and have a healthy, protein-packed meal." , sourceName: "The Muse", sourceURL: "https://www.themuse.com/advice/stuck-working-after-hours-heres-how-to-make-it-bearable", sponsorLogo: "TBD", sponsorURL: "www.test.com")

var workLateTipArray0 = [workLateTip1, workLateTip2, workLateTip3, workLateTip4]

let workLateTopic0 = Topic(title: workLateTitle, icon: workLateIcon, tip: workLateTipArray0)

// MARK: - Home, AM

let homeAMTitle = "Home"
let homeAMIcon = "Hom"

let homeAMTip1 = Tip(header: improvePerformance, title: "If you wake up energized, you’re going to carry that energy through the rest of the day.", body: "The morning is a critical time that can set the tone for the entire day. Start your morning with little \"wins\" to prime your brain to work toward more \"wins\" and successes throughout the day. \n\nEat breakfast, say one thing you're grateful for, get outside, exercise, or talk with your family or friends." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let homeAMTip2 = Tip(header: health, title: "Drink a glass or two of water before breakfast to rehydrate your body and aid digestion and metabolism.", body: "After being asleep all night, we wake up every day slightly dehydrated. Drinking a couple glasses of water allows the body to rehydrate for better digestion when you do eat. It also helps with moving the lower bowels for regularity in the mornings." , sourceName: "USA Today", sourceURL: "https://www.usatoday.com/story/news/nation-now/2017/03/14/why-you-should-drink-water-first-thing-every-day/99123938/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let homeAMTip3 = Tip(header: loseWeight, title: "Reduce weight gain and have more energy by eating a healthy breakfast.", body: "Our metabolism works better earlier in the day so that body is able to turn the calories you eat into energy that you can use in the morning. Researchers found that skipping your first meal can make you more likely to overeat later in the day. And with the slower metabolism at night, you're more likely to gain weight by eating bigger meals at night." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/health/9-things-do-morning-make-your-whole-day-more-productive-ncna772446", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let homeAMTip4 = Tip(header: homeAMTitle, title: "Home, AM 4 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")
var homeAMTipArray0 = [homeAMTip1, homeAMTip2, homeAMTip3, homeAMTip4]

let homeAMTopic0 = Topic(title: homeAMTitle, icon: homeAMIcon, tip: homeAMTipArray0)

// MARK: - Home, PM

let homePMTitle = "Home"
let homePMIcon = "Hom"

let homePMTip1 = Tip(header: sleepBetter, title: "Sleep better by only using your room for sleep.", body: "You know how Pavlov trained his dogs to associate a ringing bell with eating? That’s what you want to do with your bedroom and feeling sleepy. Don't use your bedroom for anything but sleep and sex will create a mental association between the bed and fatigue. \n\nWorking, watching TV, or other pre-bedtime activities should be done anywhere but the bedroom, so when it’s time to to lay in bed, your body takes it as a signal to sack out.”" , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/2014/12/14/bedtime-rituals_n_6309564.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let homePMTip2 = Tip(header: sleepBetter, title: "Sleep better by not eating 3 hours before bed", body: "Finish dinner no later than three hours before bedtime, so you give your stomach time to digest, and you won’t be kept awake by heartburn, gas or a sugar- or caffeine-fueled energy surge. \n\nOne exception: Going to bed hungry can keep you awake, so grab a small snack that’s part protein, part complex carbs with no added sugar, caffeine, or anything spicy, which can block sleep." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/2014/12/14/bedtime-rituals_n_6309564.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let homePMTip3 = Tip(header: hygiene, title: "Scientists recommend changing your bed sheets once a week - or a minimum of every two weeks.", body:  "Though most bacteria on sheets is environmental (like dust) and mostly harmless, the bacteria and fungi, along with the dirt and oils sloughed off during sleep, can cling to sheets and your skin, contributing to acne and dandruff. Was your sheets in hot water." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/pop-culture/how-often-you-should-wash-everything-your-home-according-science-ncna826271", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let homePMTip4 = Tip(header: hygiene, title: "Scientists recommend washing your sinks daily.", body: "Even if they look clean, sinks can get really gross. The bathroom sink accumulates fecal matter (from washing your hands after you use the bathroom). \n\nAlso, bacteria from food, like E.Coli and Salmonella, can contaminate the kitchen sink, especially if you’ve been handling raw meat. To stay on the safe side, wipe down your sinks daily." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/pop-culture/how-often-you-should-wash-everything-your-home-according-science-ncna826271", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let homePMTip5 = Tip(header: hygiene, title: "Scientists recommend vacuuming rugs and washing floors every 1 to 2 weeks.", body: "Rugs should be vacuumed weekly (more often if you have pets) to keep dust, dirt and allergens at bay. Give floors a good wash or steam once every couple of weeks. \n\nYou might want to wash your kitchen floors a little more often, due to food bacteria that can spread around." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/pop-culture/how-often-you-should-wash-everything-your-home-according-science-ncna826271", sponsorLogo: "TBD", sponsorURL: "www.test.com")

var homePMTipArray0 = [homePMTip1, homePMTip2, homePMTip3, homePMTip4]

let homePMTopic0 = Topic(title: homePMTitle, icon: homePMIcon, tip: homePMTipArray0)

// MARK: - Kitchen

let kitchenTitle = "Kitchen"
let kitchenIcon = "Kit"

let kitchenTip1 = Tip(header: hygiene, title: "Changed your sponges every fews days.", body: "Your kitchen sponge collects billions of bacteria. But most of the bacteria isn’t harmful. Because washing sponges with soap and water doesn’t really work, drop them into boiling water for 2 minutes, put them in the microwave for 2 minutes while damp every couple of days, and replace them when they deteriorate." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/pop-culture/how-often-you-should-wash-everything-your-home-according-science-ncna826271", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let kitchenTip2 = Tip(header: kitchenTitle, title: "Home,kitchen Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let kitchenTip3 = Tip(header: kitchenTitle, title: "Home, kitchen Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let kitchenTip4 = Tip(header: kitchenTitle, title: "Home, kitchen Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

var kitchenTipArray0 = [homeAMTip1, homeAMTip2, homeAMTip3, homeAMTip4]

let kitchenTopic0 = Topic(title: kitchenTitle, icon: kitchenIcon, tip: kitchenTipArray0)

// MARK: - AM Bathroom

let bathroomTitle = "Bathroom"
let bathroomIcon = "Bat"

let bathroomTip1 = Tip(header: health, title: "Check to see if you're hydrated when you go to the bathroom. Staying hydrated reduces your risk for kidney stones.", body: "When you're getting enough water, urine flows freely, is light in color and free of odor. When your body is not getting enough water, urine is dark yellow, has an oder, and is more concentrated which increases because the kidneys trap extra fluid for bodily functions. \n\nIf you chronically drink too little, you may be at higher risk for kidney stones, especially in warm climates." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let bathroomTip2 = Tip(header: health, title: "Drinking water reduces your chances of getting constipation.", body: "Proper hydration keeps things flowing along your gastrointestinal tract and prevents constipation. When you don't get enough liquid, the colon pulls water from stools to maintain hydration -- and the result is constipation. \n\nAdequate liquid and fiber is the perfect combination, because the liquid pumps up the fiber and acts like a broom to keep your bowel functioning properly." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/diet/features/6-reasons-to-drink-water#3", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let bathroomTip3 = Tip(header: reduceGerms, title: "Scientist recommend cleaning your bathroom door knobs once a week.", body: "Disinfect bathroom door knobs at least once a week, especially if there’s an illness in the house." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/pop-culture/how-often-you-should-wash-everything-your-home-according-science-ncna826271", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let bathroomTip4 = Tip(header: reduceGerms, title: "Scientist recommend wiping down your bathroom at least once a week", body: "Your bathroom is the ultimate bacteria host; E.coli can be found within six feet of the toilet and in the sink. To keep it at bay, disinfect the toilet and sink at least once weekly, and the bathtub every two weeks — more if you shower often. Your shower curtains should be disinfected weekly to avoid mildew, which can cause skin, eye and throat irritation in some people." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/pop-culture/how-often-you-should-wash-everything-your-home-according-science-ncna826271", sponsorLogo: "TBD", sponsorURL: "www.test.com")

var bathroomTipArray0 = [bathroomTip1, bathroomTip2, bathroomTip3, bathroomTip4]

let bathroomTopic0 = Topic(title: bathroomTitle, icon: bathroomIcon, tip: bathroomTipArray0)

// MARK: - Bathroom PM

let bathroomPMTitle = "Bathroom"
let bathroomPMIcon = "Bat"

let bathroomPMTip1 = Tip(header: fresherBreath, title: "Cleaning your tongue is one of the best ways to prevent bad breath.", body: "Brush your tongue with a toothbrush or tongue scraper after brushing your teeth. Either work, but a tongue scraper is flatter and less intrusive than a toothbrush. \n\nStart by sticking your tongue out as far as you can. Then, reach to the back of it, apply gentle pressure, and scrape outward towards the tip. After each pass, rinse the toothbrush or scraper to avoid putting the bacteria back in your tongue. \n\nYou'll know your tongue is clean when it looks like a fleshy pink color. If it looks like any other color besides pink, you probably have debris buildup to clean off." , sourceName: "SELF", sourceURL: "https://www.self.com/story/how-to-clean-your-tongue", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let bathroomPMTip2 = Tip(header: reduceGerms, title: "Scientist recommend changing your bathroom towels every other day.", body: "Bath towels become loaded with bacteria (including staph and fecal) and if your towel doesn’t fully dry, that bacteria can grow. Plus, dandruff-causing fungi can also grow in them." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/pop-culture/how-often-you-should-wash-everything-your-home-according-science-ncna826271", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let bathroomPMTip3 = Tip(header: sleepBetter, title: "Trade your shower for a bath to reduce stress, sleep better, and lose weight.", body: "When you take a hot bath your body temperature rises, and then quickly cools down, which relaxes your body and primes it for sleep. A pre-snooze bath also helps induce higher quality sleep (which can be hard to come by when you’re stressed). Making baths a habit can also lower blood pressure (which tends to spike when we’re chronically stressed). Plus, you can burn some calories while you’re soaking: Researchers at Loughborough University found that relaxing in a hot bath and doing absolutely nothing burned 130 calories, the same amount you’ll burn on a half-hour walk." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/health/5-science-backed-ways-have-healthier-weekend-ncna782761", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let bathroomPMTip4 = Tip(header: reduceGerms, title: "Scientist recommend wiping down your bathroom at least once a week", body: "Your bathroom is the ultimate bacteria host; E.coli can be found within six feet of the toilet and in the sink. To keep it at bay, disinfect the toilet and sink at least once weekly, and the bathtub every two weeks — more if you shower often. Your shower curtains should be disinfected weekly to avoid mildew, which can cause skin, eye and throat irritation in some people." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/pop-culture/how-often-you-should-wash-everything-your-home-according-science-ncna826271", sponsorLogo: "TBD", sponsorURL: "www.test.com")

var bathroomPMTipArray0 = [bathroomPMTip1, bathroomPMTip2, bathroomPMTip3, bathroomPMTip4]

let bathroomPMTopic0 = Topic(title: bathroomPMTitle, icon: bathroomPMIcon, tip: bathroomPMTipArray0)

// MARK: - Bedtime

let bedtimeTitle = "Bedtime"
let bedtimeIcon = "Bed"

let bedtimeTip1 = Tip(header: reduceCavities, title: "Brush your teeth before bed because it's easier to get a cavity while you sleep.", body: "While you sleep, your mouth salivates less, which can lead to cavities. This is why it is important to brush your teeth before bed. The American Dental Association recommends you brush twice a day for two minutes, although they don't specify what time of day these brushing should happen." , sourceName: "Greatist", sourceURL: "https://greatist.com/live/brushing-teeth-before-bed", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let bedtimeTip2 = Tip(header: navySealAdvice, title: "Wake up early tomorrow and exercise. Don't think. Just execute the plan.", body: "One of the most common ways to sabotage your morning is to get a slow start by gradually waking up and doing tasks that require thinking. Instead, wake up early, jump out of bed, and puts on the workout clothes you prepared the night before. By the time you've finished your workout, most people are just waking up." , sourceName: "Jocko Willink, retired Navy SEAL commander", sourceURL: "https://www.businessinsider.com/jocko-willink-how-to-wake-up-earlier-2017-11", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let bedtimeTip3 = Tip(header: sleepBetter, title: "A nighttime ritual will help to reduce stress and fall asleep faster.", body: "Taking a hot bath, reading a book, journaling, going for an evening stroll or listening to calming music, is critical to priming the brain to sleep well." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/health/how-effectively-manage-stress-so-it-doesn-t-hurt-your-ncna815626", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let bedtimeTip4 = Tip(header: planAhead, title: "Reduce decision fatigure tomorrow by making a plan tonight.", body: "It doesn’t need to be a minute-by-minute itinerary, but it should map out the major tasks or things you want to accomplish the next day — and how you want to spend the first few hours of the day. Lay out the clothes you’ll wear and make sure you have ingredients ready to make a healthy breakfast. It helps to plan the small things that might slow you down. The idea is to avoid \"decision fatigue\". Habits that get you out the door in the morning without having to stress over decisions enables you to have more willpower to make [other] decisions during the day about important things." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/health/9-things-do-morning-make-your-whole-day-more-productive-ncna772446", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let bedtimeTip5 = Tip(header: increaseConfidence, title: "Increase your confidence. Before you even get out of bed tomorrow, stretch your body as wide as possible in an 'X' or 'Y' position.", body: "We can become more confident simply by striking a power pose — or stretching out in the morning. There is some preliminary evidence that people who wake up in a fetal position are much more stressed out. Sleeping in a low power position may explain why you feel angsty or vulnerable in the mornings.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/amy-cuddy-advice-waking-up-right-2016-1", sponsorLogo: "sponsor", sponsorURL: "sponsorURL")

var bedtimeTipArray0 = [ bedtimeTip1,  bedtimeTip2,  bedtimeTip3,  bedtimeTip4]

let bedtimeTopic0 = Topic(title: bedtimeTitle, icon: bedtimeIcon, tip: bedtimeTipArray0)

// MARK: - Leadership, AM

let leadershipAMTitle = "Leadership"
let leadershipAMIcon = "Lea"

let leadershipAMTip1 = Tip(header: leadershipAMTitle, title: "Leadership, AM 1 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let leadershipAMTip2 = Tip(header: leadershipAMTitle, title: "Leadership, AM 2 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let leadershipAMTip3 = Tip(header: leadershipAMTitle, title: "Leadership, AM 3 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let leadershipAMTip4 = Tip(header: leadershipAMTitle, title: "Leadership, AM 4 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")
var leadershipAMTipArray0 = [leadershipAMTip1, leadershipAMTip2, leadershipAMTip3, leadershipAMTip4]

let leadershipAMTopic0 = Topic(title: leadershipAMTitle, icon: leadershipAMIcon, tip: leadershipAMTipArray0)

// MARK: - Leadership, PM

let leadershipPMTitle = "Leadership"
let leadershipPMIcon = "Lea"

let leadershipPMTip1 = Tip(header: success, title: "Volunteer to help others", body: "Successful people agree with Anne Frank: \"No one has ever become poor from giving.\" Author Tom Corley studied the rich for five years and found that 73% of wealthy people volunteer for five or more hours per month. Nothing helps put things in perspective and reduce stress more than helping those less fortunate. Weekends are a great time to get involved in local and community volunteer events." , sourceName: "LifeHack.org", sourceURL: "https://www.lifehack.org/articles/productivity/12-weekend-habits-highly-successful-people.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let leadershipPMTip2 = Tip(header: leadershipPMTitle, title: "Leadership, PM 2 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let leadershipPMTip3 = Tip(header: leadershipPMTitle, title: "Leadership, PM 3 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let leadershipPMTip4 = Tip(header: leadershipPMTitle, title: "Leadership, PM 4 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

var leadershipPMTipArray0 = [leadershipPMTip1, leadershipPMTip2, leadershipPMTip3, leadershipPMTip4]

let leadershipPMTopic0 = Topic(title: leadershipPMTitle, icon: leadershipPMIcon, tip: leadershipPMTipArray0)

// MARK: - Leadership, PM

let courageTitle = "Courage"
let courageIcon = "Cou"

let courageTip1 = Tip(header: courageTitle, title: "Never give up. Sam Walton's first store went out of business. Walton learned from his first missteps and started a new business. Today Wal-Mart is the world's largest retailer. ", body: "Successful people agree with Anne Frank: \"No one has ever become poor from giving.\" Author Tom Corley studied the rich for five years and found that 73% of wealthy people volunteer for five or more hours per month. Nothing helps put things in perspective and reduce stress more than helping those less fortunate. Weekends are a great time to get involved in local and community volunteer events." , sourceName: "LifeHack.org", sourceURL: "https://www.lifehack.org/articles/productivity/12-weekend-habits-highly-successful-people.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let courageTip2 = Tip(header: courageTitle, title: "Leadership, PM 2 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let courageTip3 = Tip(header: courageTitle, title: "Leadership, PM 3 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let courageTip4 = Tip(header: courageTitle, title: "Leadership, PM 4 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

var courageTipArray0 = [courageTip1, courageTip2, courageTip3, courageTip4]
let courageTopic0 = Topic(title: courageTitle, icon: courageIcon, tip: courageTipArray0)



