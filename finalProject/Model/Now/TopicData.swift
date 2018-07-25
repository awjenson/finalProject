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
let success = "SUCCESS"
let getSmarter = "GET SMARTER"
let relax = "RELAX"
let health = "HEALTH"
let beer = "BEER"
let qualityOfSleep = "QUALITY OF SLEEP"
let strategy = "STRATEGY"
let beMoreProductive = "BE MORE PRODUCTIVE"
let betterSkin = "BETTER SKIN"
let reduceAging = "REDUCE AGING"
let preWorkout = "PRE-WORKOUT"

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

let brunchTip1 = Tip(header: planAhead, title: "Eat a little food before your brunch to reduce chances of weight gain", body: "If you're not meeting until 11 a.m. or noon, have a light breakfast at home. Breaking the fast from the night before will rev up your metabolism for the day, keep you feeling satisfied until brunch and help prevent you from over-ordering and overeating at brunch." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/2013/04/28/healthy-brunch-tips_n_3134586.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let brunchTip2 = Tip(header: "BRUNCH", title: "Healthiest alcoholic drinks are champagne and Bloody Marys. Avoid mimosas and margaritas", body: "If you want to watch your calories, skip mimosas: They're generally made with cheap sparkling wine and additional sugar in the form of juice. Instead, choose champagne: one 4-ounce glass has 84 calories. \n\nMargaritas, and other drinks with pre-made mixes are an easy way to tack on lots of sugar. Instead, choose Bloody Marys: tomato juice offers a great source of vitamins A and C as well as potassium." , sourceName: "Everyday Health", sourceURL: "https://www.everydayhealth.com/pictures/what-to-order-at-brunch/#02", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let brunchTip3 = Tip(header: "BRUNCH", title: "Healthiest meals are omelets. Avoid eggs Benedictor huevos rancheros which are high in calories and fat", body: "Smart ingredient picks include spinach, mushrooms, peppers, tomatoes, onions, and even a dash of cheese. Avoid roasted vegetables, like peppers, that are marinated in oil, as well as fattening bacon or sausages (choose turkey bacon or ham instead)." , sourceName: "Everyday Health", sourceURL: "https://www.everydayhealth.com/pictures/what-to-order-at-brunch/#04", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let brunchTip4 = Tip(header: "BRUNCH", title: "For sides, choose either whole-grain toast or the potatoes — not both", body: "Otherwise, you end up with too many carbs on your plate. In place of potatoes, ask for fruit or a side salad to add some low-calorie, high nutritional value to your meal. And avoid home fries and hashbrowns which are likely deep fried and covered in butter and oil." , sourceName: "Everyday Health", sourceURL: "https://www.everydayhealth.com/pictures/what-to-order-at-brunch/#06", sponsorLogo: "TBD", sponsorURL: "www.test.com")

var brunchTipArray0 = [brunchTip1, brunchTip2, brunchTip3, brunchTip4]

let brunchTopic0 = Topic(title: brunchTitle, icon: brunchIcon, tip: brunchTipArray0)

// MARK: - Lunch

let lunchTitle = "Lunch"
let lunchIcon = "Lun"

let lunchTip1 = Tip(header: planAhead, title: "Prevent the afternoon slump by eating a healthy lunch", body: "Unhealthy snacks don't keep you full, meaning you'll eat more and gain weight. Eat whole grains, lean proteins, vegetables, and good fats." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com.au/2016/08/02/this-is-why-you-crave-junk-food-later-in-the-day_a_21443885/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let lunchTip2 = Tip(header: "Lunch", title: "Eat lean protein because it takes longer for your body to digest, keeping you feeling full longer", body: "Also, protein helps to build and maintain metabolism-boosting muscle mass. Your body becomes more effective at burning calories when you eat protein." , sourceName: "Very Well Fit", sourceURL: "https://www.verywellfit.com/healthy-lunch-ideas-and-recipes-3495782", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let lunchTip3 = Tip(header: "Lunch", title: "Eat Fiber: It helps you lose weight by making you feel full for a longer period of time" , body: "Research: people who ate 30 grams of fiber a day lost roughly the same weight as people who followed a complex diet published by the American Heart Association. Eat vegetables, fruit, and whole grain bread and pasta.", sourceName: "Very Well Fit", sourceURL: "https://www.verywellfit.com/how-to-eat-fiber-to-lose-weight-3495368", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let lunchTip4 = Tip(header: "Lunch", title: "Walking 15 minutes after lunch speeds up digestion, prevents stomach problems, and increases metabolism which burns belly fat", body: "Walking after a meal, as short as 15 minutes, increases metabolism, which in turn helps in burning calories. The faster your metabolism, the faster you’ll burn calories, and thus, the better your weight will be controlled." , sourceName: "NYTimes", sourceURL: "https://food.ndtv.com/health/how-30-minutes-of-walking-after-meals-can-help-you-stay-fit-1662358", sponsorLogo: "TBD", sponsorURL: "www.test.com")

var lunchTipArray0 = [lunchTip1, lunchTip2, lunchTip3, lunchTip4]

let lunchTopic0 = Topic(title: lunchTitle, icon: lunchIcon, tip: lunchTipArray0)

// MARK: - Dinner

let dinnerTitle = "Dinner"
let dinnerIcon = "Din"

let dinnerTip1 = Tip(header: "Dinner", title: "Reduce weight gain by reducing your plate size", body: "The average dinner plate has increased in size 36% since 1960. By switching from a 12 inch plate to a 10 inch plate you eat 22% less." , sourceName: "Eat Out, Eat Well.", sourceURL: "https://eatouteatwell.com/how-big-are-your-dinner-plates-and-why-it-matters/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let dinnerTip2 = Tip(header: "Dinner", title: "Eat three hours before bedtime to allow for proper digestion", body: "But, the time you eat is not as important as compared to the quantity you eat. If you want to lose weight, your caloric intake must be less than your caloric expenditure." , sourceName: "Sleep Advisor", sourceURL: "https://www.sleepadvisor.org/eat-just-before-bed-risks/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let dinnerTip3 = Tip(header: "Weight Loss", title: "Reading or watching TV while you eat may add to weight gain", body: "It takes 20 minutes before the brain begins to start sending out \"I'm full\" signals that turn off appetite. If you're hurrying or not paying attention, it's easy to take in more calories than you need. \n\n• Don't multitask \n• Eat slowly \n• Savor your food", sourceName: "Harvard Medical School", sourceURL: "https://www.health.harvard.edu/healthbeat/mindful-eating-may-help-with-weight-loss", sponsorLogo: "", sponsorURL: "")

let dinnerTip4 = Tip(header: "Health", title: "Don't eat a heavy dinner (greasy or high-fat) because you're body shuts down while you sleep and the food will be stored as fat", body: "Greasy or high-fat dinners take longer to digest which causes the food to be stored as fat while you sleep. Also, it can cause issues with reflux or heartburn." , sourceName: "Elle", sourceURL: "https://www.elle.com/beauty/health-fitness/news/a45387/dinner-time-health-myths-facts/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let dinnerTip5 = Tip(header: "Dinner", title: "Walking after dinner helps you sleep better", body: "The gentle physical activity and the fading light before nightfall can recalibrate your body clock, helping you sleep better. It's a simple way to aid digestion, lower the postmeal surge in insulin, increase blood circulation, and stimulate metabolism - all important for a good night sleep." , sourceName: "Prevention", sourceURL: "https://www.prevention.com/weight-loss/a20503013/try-this-15-minute-after-dinner-ritual-that-helps-italians-lose-weight/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let dinnerAfter9PM1 = Tip(header: "Dinner", title: "Late Dinner: avoid large portions, greasy, fatty, spicy, and fried foods, and high-sugar, high-carbohydrate treats like cookies or ice cream", body: "These foods can cause indigestion (feeling bloated and gassy), heartburn, and even acid reflux before bedtime. The result is poor sleep and poor health.", sourceName: "Life Hacker", sourceURL: "https://lifehacker.com/the-late-night-snacks-that-wont-upset-your-stomach-and-1717594825", sponsorLogo: "text", sponsorURL: "text")

let dinnerAfter9PM2 = Tip(header: "Dinner", title: "Drinking a glass of milk before bed will help you sleep at night", body: "Milk is a sleep supporter because it has tryptophan, which raises melatonin and serotonin levels in the body, both of which induce sleep. Plus, milk has calcium, and recent research has found that calcium deficiency in the diet can cause disturbed sleep patterns.", sourceName: "Cooking Light", sourceURL: "http://www.cookinglight.com/healthy-living/health/foods-that-help-you-sleep", sponsorLogo: "text", sponsorURL: "text")

let dinnerAfter9PM3 = Tip(header: "Health", title: "Don't have large amounts of carbohydrates-heavy food like pasta, bread, and fried foods", body: "Carbohydrates turns into sugar in your blood and you get a rise in insulin. Since you are just going to bed, you aren't using that sugar for energy, so you're more likely to store it as fat. \n\nIf you do go for whole grain carbs, make sure to pair it with protein and healthy fats (avocado, salmon, olive oil, or nuts).", sourceName: "Elle", sourceURL: "https://www.elle.com/beauty/health-fitness/news/a45387/dinner-time-health-myths-facts/", sponsorLogo: "test", sponsorURL: "test")

let dinnerAfter9PM4 = Tip(header: "Health", title: "Eat protein for dinner so your body can build muscle while you sleep.", body: "The body rebuilds muscle through a process called protein synthesis. If you go to bed without eating enough protein your body can’t produce enough protein synthesis to rebuild the muscle. \n\nProtein-based snacks like string cheese a handful of almonds, whole grain crackers with a bit of guacamole, greek yogurt, and almond butter with an apple can stabilize your blood sugar when you sleep. Make sure to allow an hour for staying upright before going to sleep for good digestion.", sourceName: "Elle", sourceURL: "https://www.elle.com/beauty/health-fitness/news/a45387/dinner-time-health-myths-facts/", sponsorLogo: "test", sponsorURL: "test")

var dinnerTipArray0 = [dinnerTip1, dinnerTip2, dinnerTip3, dinnerTip4]
let dinnerTopic0 = Topic(title: dinnerTitle, icon: dinnerIcon, tip: dinnerTipArray0)

var dinnerAfter9PMTipArray0 = [dinnerAfter9PM1, dinnerAfter9PM2, dinnerAfter9PM3, dinnerAfter9PM4]
let dinnerAfter9PMTopic0 = Topic(title: dinnerTitle, icon: dinnerIcon, tip: dinnerTipArray0)

// MARK: - AfternoonSnack

let afternoonSnackTitle = "Snack"
let afternoonSnackIcon = "Sna"

let afternoonSnackTip1 = Tip(header: diet, title: "Being thirsty can sometimes be confused with hunger", body: "The body’s thirst signal is similar to the hunger signal, meaning you could reach for a snack when you should be reaching for a drink. Drink water or tea. If you’re still hungry five minutes later, it’s probably actual hunger." , sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/health/healthy-eating/eating-when-not-hungry/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let afternoonSnackTip2 = Tip(header: diet, title: "It's perfectly normal to feel hungry at 3 p.m, just choose the right snacks: protein, healthy fats and veggies", body: "Later in the day our energy levels tend to slump due to a drop in our blood sugar levels. What we're craving is something to bring our sugar levels back up to normal. Instead of chips or a chocolate bar, have yoghurt (protein) with fruit (fiber) or a handful of nuts (healthy fat)." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com.au/2016/08/02/this-is-why-you-crave-junk-food-later-in-the-day_a_21443885/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let afternoonSnackTip3 = Tip(header: avoidTemptation, title: "If you have your healthy afternoon snack all ready to go, you're less likely to choose chips and chocolate.", body: "Have your afternoon snack prepared. Crackers and cheese, nuts, or peanut butter on wholegrain toast are great mid afternoon snacks. They can curb a craving without added sugar and saturated fats." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com.au/2016/08/02/this-is-why-you-crave-junk-food-later-in-the-day_a_21443885/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let afternoonSnackTip4 = Tip(header: "Snack", title: "Don't eat your snack while doing something else — like surfing the Internet, watching TV, or working at your desk", body: "Often times we find ourselves mindlessly snacking because of certain emotions or situations (boredom, loneliness, stress). Start to notice when your emotions are fueling your eating and try to find a different outlet for those emotions." , sourceName: "Eating Bird Food", sourceURL: "https://www.eatingbirdfood.com/how-to-stop-mindless-snacking/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

var afternoonSnackTipArray0 = [afternoonSnackTip1, afternoonSnackTip2, afternoonSnackTip3, afternoonSnackTip4]

let afternoonSnackTopic0 = Topic(title: afternoonSnackTitle, icon: afternoonSnackIcon, tip: afternoonSnackTipArray0)

// MARK: - LateNightSnack

let lateNightSnackTitle = "Snack"
let lateNightSnackIcon = "Sna"

let lateNightSnackTip1 = Tip(header: buildMuscle, title: "Drink a protein shake before bed and gain muscle while you sleep", body: "A study found that a protein shake before sleep can increase muscle growth by 22%. A 12-week study found that weightlifters who drank a protein shake before bed had more muscle and were significantly (3%) stronger." , sourceName: "Men's Journal", sourceURL: "https://www.mensjournal.com/food-drink/best-late-night-snack-according-science/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let lateNightSnackTip2 = Tip(header: loseWeight, title: "If you’re trying to lose weight, avoid drinking and eating simple carbs at night", body: "Since you won’t be burning off any carbs while you’re sleeping, your body is more likely to store these as fat. Avoid beer, chips, cookies, juice, soda, and wine." , sourceName: "12 Minute Athlete", sourceURL: "https://www.12minuteathlete.com/bedtime-snack-ideas/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let lateNightSnackTip3 = Tip(header: planAhead, title: "If you’re working out tomorrow morning, some carbs will help give you energy for your workout", body: "That’s where the idea of carb loading before an endurance race of some sort comes in—carbs give you fuel, but since you’re waking up early you have to give them to your body the night before rather than the morning of." , sourceName: "12 Minute Athlete", sourceURL: "https://www.12minuteathlete.com/bedtime-snack-ideas/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let lateNightSnackTip4 = Tip(header: planAhead, title: "Eating healthy fats at night is a great way to feel satisfied and not wake up in the middle of the night starving", body: "Healthy fat foods include: avocados, nuts, almond butter, full-fat yogurt, cheese, eggs, fish, extra virgin olive oil, and coconut oil." , sourceName: "Healthline", sourceURL: "https://www.healthline.com/nutrition/10-super-healthy-high-fat-foods", sponsorLogo: "TBD", sponsorURL: "www.test.com")

var lateNightSnackTipArray0 = [lateNightSnackTip1, lateNightSnackTip2, lateNightSnackTip3, lateNightSnackTip4]

let lateNightSnackTopic0 = Topic(title: lateNightSnackTitle, icon: lateNightSnackIcon, tip: lateNightSnackTipArray0)

// MARK: - Journal

// PLAN TO USE IN NEXT VERSION OF APP:
//
//    let am0 = JournalAdvice(quote: "David McCullough, the Pulitzer Prize winning author and historian has said if you want to become the voice of your generation, write a journal entry every day and then gift it to your local university library at the end of your life. Voice of your generation or not, I believe that a journal is one of the most precious gifts you can give to those you leave behind.", source: "Greg McKeown, author of Essentialism: The Disciplined Pursuit of Less", question: "https://gregmckeown.com/blog/one-thing-productive-people-reaching-phones/")
//

//
//    let pm1 = JournalAdvice(quote: "Journaling helps you know yourself better. By writing routinely you will get to know what makes you feel happy and confident. You will also become clear about situations and people who are toxic for you — important information for your emotional well-being.", source: "Psych Central", question: "https://psychcentral.com/lib/the-health-benefits-of-journaling/")
//
//    let am1 = JournalAdvice(quote: "Journaling helps to reduce stress. Writing about anger, sadness and other painful emotions helps to release the intensity of these feelings. By doing so you will feel calmer and better able to stay in the present.", source: "Psych Central", question: "https://psychcentral.com/lib/the-health-benefits-of-journaling/")
//
//    let am2 = JournalAdvice(quote: "Journaling helps you solve problems more effectively. Typically we problem solve from a left-brained, analytical perspective. But sometimes the answer can only be found by engaging right-brained creativity and intuition. Writing unlocks these other capabilities, and affords the opportunity for unexpected solutions to seemingly unsolvable problems.", source: "Psych Central", question: "https://psychcentral.com/lib/the-health-benefits-of-journaling/")
//
//    let pm2 = JournalAdvice(quote: "Keeping a journal allows you to track patterns, trends and improvement and growth over time. When current circumstances appear insurmountable, you will be able to look back on previous dilemmas that you have since resolved.", source: "Psych Central", question: "https://psychcentral.com/lib/the-health-benefits-of-journaling/")
//
//    let am3 = JournalAdvice(quote: "Your journaling will be most effective if you do it daily for about 20 minutes. Begin anywhere, and forget spelling and punctuation. Privacy is key if you are to write without censor. Write quickly, as this frees your brain from \"shoulds\" and other blocks to successful journaling. If it helps, pick a theme for the day, week or month (for example, peace of mind, confusion, change or anger). The most important rule of all is that there are no rules. You’ll discover that your journal is an all-accepting, nonjudgmental friend. And it may provide the cheapest therapy you will ever get.", source: "Psych Central", question: "https://psychcentral.com/lib/the-health-benefits-of-journaling/")
//

//
//    let am4 = JournalAdvice(quote: "Even if you start a journal session in a bad mood, a five-minute a day gratitude journal can increase your long-term well-being by more than 10 percent. Those who pay attention to what is good in their life instead of what is bad are more likely to feel positively about their life. Gratitude makes us feel more gratitude.", source: "Positive Psychology Program", question: "https://positivepsychologyprogram.com/benefits-gratitude-research-questions/")
//
//    let pm4 = JournalAdvice(quote: "Journaling gratitude . It also keeps suicidal thoughts and attempts at bay. A study found that gratitude is a protective factor when it comes to suicidal ideation in stressed and depressed individuals. Enhancing our own practice of gratitude can help protect us when we are weakest.", source: "Positive Psychology Program", question: "https://positivepsychologyprogram.com/benefits-gratitude-research-questions/")
//
//    let am5 = JournalAdvice(quote: "Regular gratitude journaling has been shown to result in 5% to 15% increases in optimism, meaning that the more we think about what we are grateful for, the more we find to be grateful for.", source: "Positive Psychology Program", question: "https://positivepsychologyprogram.com/benefits-gratitude-research-questions/")
//

//    let am6 = JournalAdvice(quote: "Journaling can help you achieve your goals. ", source: "Huffington Post", question: "https://www.huffingtonpost.com/thai-nguyen/benefits-of-journaling-_b_6648884.html")
//
//    let pm5 = Tip(header: success, title: "Benjamin Franklin, a founding father of America, stared his day with writing in his journal.", body: "Franklin had specific rules for how he started each morning. His three-hour block of morning routine stretched from 5:00 a.m. to 7:00 a.m. and included addressing \"Powerful Goodness\" and setting a plan for the rest of his day. \n\nEvery morning Franklin asked himself, \"What good shall I do today?\"" , sourceName: "FastCompany", sourceURL: "https://www.fastcompany.com/3033652/the-morning-routines-of-the-most-successful-people", sponsorLogo: "TBD", sponsorURL: "www.test.com")
//


let journalTitle = "Journal"
let journalIcon = "Jou"

//    let pm0 = JournalAdvice(quote: "", source: "", question: "")

let journalTip1 = Tip(header: success, title: "Journaling helps you clarify your thoughts and feelings", body: "Do you ever seem all jumbled up inside, unsure of what you want or feel? Taking a few minutes to jot down your thoughts and emotions (no editing!) will quickly get you in touch with your internal world." , sourceName: "Psych Central", sourceURL: "https://psychcentral.com/lib/the-health-benefits-of-journaling/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let journalTip2 = Tip(header: journalTitle, title: "Gratitude journaling has a strong positive impact on psychological well-being, self-esteem, and depression", body: "Study: participants who practiced gratitude journaling experienced a 35% reduction in depressive symptoms for as long as the journaling continued. Think of at least one thing that you are greatful for today." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let journalTip3 = Tip(header: journalTitle, title: "To create a new journaling habit, write less than you feel like writing", body: "When people start journaling they write pages the first day. Then by the second day the thought of writing a page is daunting, and they procrastinate or abandon the exercise. So even if you feel like writing more, force yourself to write no more than one sentence a day." , sourceName: "Essentialism: The Disciplined Pursuit of Less", sourceURL: "https://gregmckeown.com/blog/one-thing-productive-people-reaching-phones/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let journalTip4 = Tip(header: journalTitle, title: "Study: Gratitude journaling can improve your sleep", body: "If you’re having trouble sleeping or just waking up feeling fatigued, try a quick gratitude journaling exercise before bed by writing down what you're thankful for. Participants of a two week study who kept a gratitude journal had increased sleep quality and reduced blood pressure." , sourceName: "Positive Psychology Program", sourceURL: "https://positivepsychologyprogram.com/benefits-gratitude-research-questions/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

var journalTipArray0 = [journalTip1, journalTip2, journalTip3, journalTip4]

let journalTopic0 = Topic(title: journalTitle, icon: journalIcon, tip: journalTipArray0)


// MARK: - Meditation

let meditationTitle = "Meditation"
let meditationIcon = "Med"

let meditationTip1 = Tip(header: success, title: "Oprah practices sitting still for 20 minutes - twice a day", body: "This once-best-kept secret of the yogis is now common knowledge. Even the corporate world is acknowledging the benefits of meditation and mindfulness for reducing stress, improving productivity, facilitating creativity and maintaining general well-being. \n\nThe weekends can often be busier than week days with attempting to cram in chores, exercise, family commitments, social engagements and more into a 48-hour period. The most successful people take daily time outs for stillness." , sourceName: "LifeHack.org", sourceURL: "https://www.lifehack.org/articles/productivity/12-weekend-habits-highly-successful-people.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let meditationTip2 = Tip(header: reduceStress, title: "Set aside 15 mindful minutes to reduce stress", body: "Spending 10 to 15 minutes each morning with some mindfulness or meditation practice. It grounds us to an intention for how we want to show up during the day, before we start worrying about what we need to get done." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/health/how-effectively-manage-stress-so-it-doesn-t-hurt-your-ncna815626", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let meditationTip3 = Tip(header: success, title: "More than 80% of the world-class performers interviewed by Tim Ferris, author of Tools of Titans, have some form of daily meditation or mindfulness practice", body: "The goal is to cultivate a present-state awareness when it doesn't matter (sitting on the couch for ten minutes) so that you can be nonreactive and focus better later when it does matter (time-sensitive project at work, conversation with a loved one, etc.)." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/quora/the-most-successful-peopl_b_13607676.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let meditationTip4 = Tip(header: success, title: "Meditation helps you become aware of all the voices in your head and recognize the difference between \"you\" and all the noise", body: "If you've never tried it before you may be so used to the different voices that you don't notice them, their thoughts are considered to be your thoughts. \n\nBut, it’s possible to listen to the voices without identifying with them directly. When you meditate you'll develop the ability to hear, and observe, the inner converstaion that's always going on in your head." , sourceName: "Medium", sourceURL: "https://betterhumans.coach.me/better-than-meditation-12532d29f6cd", sponsorLogo: "TBD", sponsorURL: "www.test.com")

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

let gymTip1 = Tip(header: improvePerformance, title: "Improve performance by drinking 20 ounces of water two hours before exercise and drink throughout your workout", body: "During exercise, drink fluids early, and drink at regular intervals to prevent muscle fatigue by replacing fluids lost by sweating." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/diet/features/6-reasons-to-drink-water#3", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let gymTip2 = Tip(header: improvePerformance, title: "Research: People who practiced positive self-talk were able to push harder for longer", body: "You can go a lot harder than you think you can. When you're tired, tell yourself positive, empowering phrases like \"I got this\" or \"I am strong\"." , sourceName: "Time", sourceURL: "https://time.com/4606637/exercise-motivational-skills-training/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let gymTip3 = Tip(header: mentalToughness, title: "When your mind is telling you you're done, you're really only 40 percent done", body: "When you're doing something difficult and you think you need to stop, don't. You’re only actually 40% done. The 40% rule reminds us that no matter how exhausted we might feel, it is always possible to draw on an untapped reserve of energy and motivation that we all possess." , sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/chrismyers/2017/10/06/the-40-rule-the-simple-secret-to-success/#48c94eea5cdd", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let gymTip4 = Tip(header: bestResults, title: "For better results, shorter but more intensive exercise is more effective than longer drawn-out exercise", body: "To get the best results in your fitness, research has found that shorter but more intensive exercise is more effective than longer drawn-out exercise.  \n\nMost of the growth actually comes during the recovery process. However, the only way to truly recover is by actually pushing yourself to exhaustion during the workout." , sourceName: "ACSM", sourceURL: "https://www.acsm.org/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//////////
let gymTip5 = Tip(header: navySealAdvice, title: "Former Navy Seal recommends box breathing before each workout", body: "With your nose, inhale for a count of 5, hold for a count of 5, exhale for a count of 5, and hold for a count of 5. Repeat for at least 5 minutes. This leads to a calm, steady mindstate.", sourceName: "SEALFIT", sourceURL: "https://sealfit.com/box-breathing/", sponsorLogo: "ABC", sponsorURL: "URL")

let gymTip6 = Tip(header: navySealAdvice, title: "Positive internal dialogue improves perforance", body: "Override negative thoughts with positive ones. Develop a power statement that you repeat to yourself like: \"Let's go!\" \"I got this!\" \"Feeling good, looking good, oughta be in Hollywood! \"Day by day, in every way, I am getting better and better.\"", sourceName: "8 Weeks to Sealfit", sourceURL: "https://www.amazon.com/Weeks-SEALFIT-Unconventional-Training-Toughness/dp/125004054X", sponsorLogo: "ABC", sponsorURL: "URL")

let gymTip7 = Tip(header: navySealAdvice, title: "Visualize your workout before you start", body: "True warriors through the ages have discovered this secret: you first need to win in your mind; only then can you win in the battleground. Visualize the whole workout with perfect form. Navy SEALs do this before each mission.", sourceName: "8 Weeks to Sealfit", sourceURL: "https://www.amazon.com/Weeks-SEALFIT-Unconventional-Training-Toughness/dp/125004054X", sponsorLogo: "ABC", sponsorURL: "URL")

let gymTip8 = Tip(header: improvePerformance, title: "Perform better during high-instensity training by breathing through your nose", body: "It allows for more deeper breaths into your diaphragm. If you feel you're not getting air, use your mouth to take a few extra gulps of air and then go back to nostril breathing.", sourceName: "8 Weeks to SEALFIT", sourceURL: "https://www.amazon.com/Weeks-SEALFIT-Unconventional-Training-Toughness/dp/125004054X", sponsorLogo: "ABC", sponsorURL: "URL")

//////////
let gymTip9 = Tip(header: "Gym", title: "Get pumped up by reminding yourself why you are working out", body: "When your're feeling lazy or like you want to quit, remind yourself why you are working out. If you have a powerful reason why, you can get through anything.", sourceName: "Men's Journal", sourceURL: "https://www.mensjournal.com/health-fitness/mental-toughness-training/", sponsorLogo: "", sponsorURL: "")

let gymTip10 = Tip(header: "Post-Workout", title: "0:00-10:00 minutes post-workout: stretch to prevent injury", body: "Strech before the muscles have time to cool down, which takes 30-40 minutes. Do five minutes of stretching followed by five minutes of ironing out the kinks with a foam roller for proper recovery.", sourceName: "Shape", sourceURL: "https://www.shape.com/fitness/tips/3-things-you-need-do-immediately-after-workout", sponsorLogo: "", sponsorURL: "")

let gymTip11 = Tip(header: "Post-Workout", title: "10:00-20:00 minutes post-workout: shower or change your clothes", body: "Don't wait longer than 30 minutes to shower or change your clothes. Your wet clothes trap moisture that encourages the growth of germs, bacteria, fungus and yeast, which could invite a skin infection or cause breakouts.", sourceName: "Shape", sourceURL: "https://www.shape.com/fitness/tips/3-things-you-need-do-immediately-after-workout", sponsorLogo: "", sponsorURL: "")

let gymTip12 = Tip(header: "Post-Workout", title: "20:00-30:00 minutes post-workout: eat carbs and protein", body: "The 30-minute window is the peak time for potential to start rebuilding and replenishing muscles.", sourceName: "Shape", sourceURL: "https://www.shape.com/fitness/tips/3-things-you-need-do-immediately-after-workout", sponsorLogo: "", sponsorURL: "")

////////
let gymTip13 = Tip(header: navySealAdvice, title: "Controlling of your breath is one of the most essential tools in life and while exercising", body: "It's a secret practice of ancient yogis and matrial artists use to develop more power, presence, and mental control. Before your workout, perform the box breathing exercise for 5 minutes.", sourceName: "8 Weeks to SEALFIT", sourceURL: "https://www.amazon.com/Weeks-SEALFIT-Unconventional-Training-Toughness/dp/125004054X", sponsorLogo: "ABC", sponsorURL: "URL")

let gymTip14 = Tip(header: mentalToughness, title: "Don't just workout. Develop a disciplined habit of training.", body: "Training is is lifelong growth of your physical, mental, emotional, and spiritual skills to become a better person. \n\nDon't skip a training session without serious thought. When its cold, you train. When it rains, you train. If you must, make it up.", sourceName: "8 Weeks to SEALFIT", sourceURL: "https://www.amazon.com/Weeks-SEALFIT-Unconventional-Training-Toughness/dp/125004054X", sponsorLogo: "ABC", sponsorURL: "URL")


var gymTipArray0 = [gymTip1, gymTip2, gymTip3, gymTip4]
var gymTipArray1 = [gymTip5, gymTip6, gymTip7, gymTip8]
var gymTipArray2 = [gymTip9, gymTip10, gymTip11, gymTip12]

let gymTopic0 = Topic(title: gymTitle, icon: gymIcon, tip: gymTipArray0)
let gymTopic1 = Topic(title: gymTitle, icon: gymIcon, tip: gymTipArray1)
let gymTopic2 = Topic(title: gymTitle, icon: gymIcon, tip: gymTipArray2)


// MARK: - Running

let runningTitle = "Running"
let runningIcon = "Run"

let runningTip1 = Tip(header: improvePerformance, title: "The American College of Sports Medicine recommends that people drink 17 ounces of fluid two hours before exercise", body: "During exercise, they recommend that people start drinking fluids early, and drink them at regular intervals to prevent muscle fatigue and replace fluids lost by sweating." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/diet/features/6-reasons-to-drink-water#3", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let runningTip2 = Tip(header: runningTitle, title: "Run faster by adding short sprints into your endurance training on a regular basis", body: "You won’t make performance gains if you always run at the same speed. Work short speedwork into one of your long-distance runs to vary the pace. \n\nDuring an acceleration, you slowly, but steadily increase your running speed from a recovery pace to a sprint over a distance of 80-100 m.! A deceleration begins with a sprint and gradually slows down to a jog." , sourceName: "Runtastic", sourceURL: "https://www.runtastic.com/blog/en/5-effective-tips-for-improving-your-running-performance/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let runningTip3 = Tip(header: runningTitle, title: "Land on the midsole of your foot, body", body: "Landing on your forefoot (instead of your heels) allows your muscles to catch the weight of your body in flight, reducing the effects of impact on the joints and bones. \n\nAvoid running with a heel landing first because it can contribute to back and knee pain.", sourceName: "Shape", sourceURL: "https://www.shape.com/fitness/cardio/10-ways-improve-your-running-technique", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let runningTip4 = Tip(header: runningTitle, title: "Take short effective strides to conserve energy and reduce join pain", body: "Stand tall and lean forward, and when you feel like you are going to fall, step forward just enough to catch yourself. This should be the length of your stride. Taking long strides while you run is inefficient and an energy drain. \n\nShorter strides help to reduce the movement within any joint (for running, this means the joints of the ankles, knees, and hips), and less movement means a longer, healthier life for these joints." , sourceName: "Shape", sourceURL: "https://www.shape.com/fitness/cardio/10-ways-improve-your-running-technique", sponsorLogo: "TBD", sponsorURL: "www.test.com")

var runningTipArray0 = [runningTip1, runningTip2, runningTip3, runningTip4]

let runningTopic0 = Topic(title: runningTitle, icon: runningIcon, tip: runningTipArray0)


// MARK: - Yoga

let yogaTitle = "Yoga"
let yogaIcon = "Yog"

let yogaTip1 = Tip(header: yogaTitle, title: "Ideally, yoga is practiced in the early morning at sunrise when the mind is clearest and the world is quiet", body: "Practicing first thing in the morning allows you to avoid distraction and start the day off with health and intentionality, thus setting the tone for the rest of the day." , sourceName: "Art of Living", sourceURL: "https://www.artofliving.org/us-en/yoga/yoga-for-beginners/get-started-with-yoga", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let yogaTip2 = Tip(header: yogaTitle, title: "It is best to practice yoga on an empty stomach or at least 2-3 hours after your last meal", body: "When practicing yoga, you are much more in tune to your body’s subtle feelings than at any other point, and practicing with food in your stomach inevitably leads to discomfort and can disrupt the digestion process." , sourceName: "Art of Living", sourceURL: "https://www.artofliving.org/us-en/yoga/yoga-for-beginners/get-started-with-yoga", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let yogaTip3 = Tip(header: yogaTitle, title: "Before starting your practice, create an intention that sets the tone for your practice and prepares your mind", body: "Centering your mind around one thought will help bring you into the present moment before beginning. As you continue to focus on your intention, you uplift your energy and increase your vibration, thereby acting as an example to inspire the lives of those you encounter." , sourceName: "Mind Body Green", sourceURL: "https://www.mindbodygreen.com/0-18626/the-power-behind-setting-an-intention-in-yoga.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let yogaTip4 = Tip(header: yogaTitle, title: "Research: Yoga can benefit those living with depression, sleep problems, and mental disorders", body: "Practicing with other people stimulates the production of oxytocin, the love and bonding hormone. Practicing mindfulness through yoga results in higher serotonin levels (the happiness hormone), and long-term practitioners have shown more mass in the areas of the brain associated with happiness." , sourceName: "Everyday Health", sourceURL: "https://www.everydayhealth.com/fitness-pictures/10-surprising-health-perks-of-yoga.aspx#02", sponsorLogo: "TBD", sponsorURL: "www.test.com")

var yogaTipArray0 = [yogaTip1, yogaTip2, yogaTip3, yogaTip4]

let yogaTopic0 = Topic(title: yogaTitle, icon: yogaIcon, tip: yogaTipArray0)


// MARK: - Bar

let barTitle = "Bar"
let barIcon = "Bar"

let barTip1 = Tip(header: beer, title: "Reduce your chance getting a migraine by drinking beer in a bottle instead of on tap", body: "Beer on tap has about 25 times the migraine-inducing tyramine as beer in bottles. So if you really want a cold one, ask for a bottle. Or change it up and order a bourbon. It doesn’t have any of the stuff." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/migraines-headaches/ss/slideshow-food-migraines?ecd=wnl_din_121716&ctr=wnl-din-121716_nsl-ld-stry_1&mb=aT%2fNo%2fMfdXIeXdniBtn11BXFE73IOX1chB5LGA9kRyM%3d", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let barTip2 = Tip(header: qualityOfSleep, title: "Alcohol will help you fall asleep, but it will reduce the quality of your sleep.", body: "Drinking within three hours of bedtime helps you fall asleep — alcohol is a depressant. But once the alcohol is metabolized hours later, you’re more likely to wake up or start tossing and turning. \n\nWhile any amount of alcohol can increase short-wave sleep — the kind you get in the first half of the night that repairs body tissues and boost your immune system — it can disrupt REM sleep, the later sleep stage that encourages learning and memory formation." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/2014/12/14/bedtime-rituals_n_6309564.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let barTip3 = Tip(header: health, title: "Drinking once a day or five to 10 alcoholic drinks a week is likely to shortern your life by up to six months.", body: "While non-fatel heart attacks are less likely in people who drink alchool, scientists say this benefit is swamped by the increase of other forms of heart disearse including fatal heart attacks and stroke. \n\nIf you already drink, drinking less may help you live longer and lower your risk of several cardiovascular conditions." , sourceName: "BBC News", sourceURL: "https://www.bbc.com/news/health-43738644", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let barTip4 = Tip(header: health, title: "After a night of drinking, drink coffee in the morning because it can protect your liver from damage casused by too much alcohol", body: "Studies show that drinking two to three cups a day can protect your liver from damage caused by too much alcohol or an unhealthy diet. Some research suggests it may lower your risk of liver cancer." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/hepatitis/ss/slideshow-best-and-worst-foods-for-your-liver?ecd=wnl_spr_120616_REMAIL&ctr=wnl-spr-120616-REMAIL_nsl-ld-stry_1&mb=aT%2fNo%2fMfdXIeXdniBtn11BXFE73IOX1chB5LGA9kRyM%3d", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let barTip5 = Tip(header: "Bar", title: "Avoid lemon and lime slices and other garnishes added to your drink", body: "A study of 76 lemons at 21 different restaurants in The Journal of Environmental Health found that 70% of them contained microbial growth. Of the positive culture results, 13% were E. coli.", sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/menu-items-never-order/", sponsorLogo: "", sponsorURL: "")

let barTip6 = Tip(header: diet, title: "The sweet-and-fancy drinks have more calories and increases your food cravings", body: "If you're going to drink, have something straight up and simple like wine or beer." , sourceName: "CNN", sourceURL: "https://www.cnn.com/2013/04/03/health/wine-waistline/index.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let barTip7 = Tip(header: health, title: "Drinking three or four drinks drinks on one night is worse for you body than drinking one drink a day", body: "Because your body now has many hundreds of alcohol calories to process before it can continue to break down food calories or stored fat. All those drinks increase your blood sugar which makes you hungrier and because you're tipsy, your prefrontal cortex is misfiring, resulting in less self-control when it comes overeating unhealthy foods." , sourceName: "CNN", sourceURL: "https://www.cnn.com/2013/04/03/health/wine-waistline/index.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let barTip8 = Tip(header: "Bar", title: "When trying to talk with someone you don't know, start with playful banter", body: "It helps you to get the other person to have fun, laugh, and relax. Compare this to more serious conversation starters like \"What do you do for a living\" and \"Where do you live\" which can create stress by demanding personal information from a total stranger.", sourceName: "The Art of Charm", sourceURL: "https://theartofcharm.com/building-a-connection/what-to-say-to-a-girl-you-meet-at-a-bar/", sponsorLogo: "", sponsorURL: "")

var barTipArray0 = [barTip1, barTip2, barTip3, barTip4]

let barTopic0 = Topic(title: barTitle, icon: barIcon, tip: barTipArray0)

var barTipArray1 = [barTip5, barTip6, barTip7, barTip8]

let barTopic1 = Topic(title: barTitle, icon: barIcon, tip: barTipArray1)

// MARK: - Happy Hour

let happyHourTitle = "Happy Hour"
let happyHourIcon = "Hap"

let happyHourTip1 = Tip(header: planAhead, title: "Before happy hour, eat protein, fiber, and healthy fat to reduce your chances of a hangover and weight-gain", body: "Try greek yogurt with berries, almond butter with fruit, or a protein shake. These foods stabilize your blood-sugar levels and slow down the alcohol from being absorded into your bloodstream, reducing the diet-damaging effects." , sourceName: "CNN", sourceURL: "https://www.cnn.com/2013/04/03/health/wine-waistline/index.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let happyHourTip2 = Tip(header: loseWeight, title: "Alcohol reduces your ability to have self-control, which leads to overeating and weight gain", body: "Drinking lowers your inhibitions and sense of awareness, causing you to mindlessly eat when you have a buzz. It's harder to for your brain to read those fullness signals when you've had a few drinks." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/hepatitis/ss/slideshow-best-and-worst-foods-for-your-liver?ecd=wnl_spr_120616_REMAIL&ctr=wnl-spr-120616-REMAIL_nsl-ld-stry_1&mb=aT%2fNo%2fMfdXIeXdniBtn11BXFE73IOX1chB5LGA9kRyM%3d", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let happyHourTip3 = Tip(header: loseWeight, title: "Alcohol adds hundreds of calories to your diet and decreases fat burn in the belly", body: "Your body can't store calories from alcohol for later, the way it does with food calories. When you drink, your metabolism stops what it's doing (like, say, burning off food calories) to focus on the alcohol. The result, whatever you recently ate gets stored as fat." , sourceName: "CNN", sourceURL: "https://www.cnn.com/2013/04/03/health/wine-waistline/index.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let happyHourTip4 = Tip(header: loseWeight, title: "People who drink heavily when they’re younger have a higher risk of becoming overweight or obese when they’re older because of the calories in alcohol", body: "People who were heavy drinkers (having four or more drinks on any day or eight or more drinks per week for women) had a 41% higher risk of going from a normal weight BMI to an overweight BMI when compared with people who weren’t heavy drinkers, and a 36% higher risk of going from an overweight BMI to an obese BMI by the time they hit their mid-twenties." , sourceName: "Women's Health", sourceURL: "https://www.womenshealthmag.com/weight-loss/a19918843/will-drinking-make-me-gain-weight/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

var happyHourTipArray0 = [happyHourTip1, happyHourTip2, happyHourTip3, happyHourTip4]

let happyHourTopic0 = Topic(title: happyHourTitle, icon: happyHourIcon, tip: happyHourTipArray0)


// MARK: - Cafe

let cafeTitle = "Cafe"
let cafeIcon = "Caf"

let cafeTip1 = Tip(header: health, title: "Caffeine (in moderation) may help you live longer", body: "Research: If you take your coffee daily, and abstain from smoking, you’re likely to live longer than the average adult." , sourceName: "New England Journal of Medicine", sourceURL: "https://www.nejm.org/doi/full/10.1056/NEJMoa1112010", sponsorLogo: "GM_logo", sponsorURL: "https://gm.com")

let cafeTip2 = Tip(header: loseWeight, title: "Coffee can help you lose weight as long as your don't add sugar or cream", body: "Coffee stimulates your metabolismm which can help you lose weight, but only a little. Don't count on this for weight loss, especially if you add calories with toppings." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/diet/ss/slideshow-fat-fighting-foods?ecd=wnl_din_112616&ctr=wnl-din-112616_nsl-ld-stry_1&mb=aT%2fNo%2fMfdXIeXdniBtn11BXFE73IOX1chB5LGA9kRyM%3d%22,%22Source:%20WebMD", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let cafeTip3 = Tip(header: loseWeight, title: "Coffee may help prevent diseases like stroke and certain cancers, lower risk of Parkinson's and dementia, and boost concentration and memory", body: "But, remember: caffeine is a drug and can become an addiction. Experts say 400 milligrams of caffeine a day is a safe amount — about the amount in four 8-ounce cups of coffee." , sourceName: "Mayo Clinic", sourceURL: "https://www.mayoclinic.org/healthy-lifestyle/nutrition-and-healthy-eating/in-depth/caffeine/art-20045678", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let cafeTip4 = Tip(header: health, title: "Green tea increases metabolism to help you burn fat and helps to decrease cancer risk", body: "To get higher levels of cancer-fighting antioxidants, it's best to brew tea yourself and drink it hot. Iced tea and ready-to-drink green teas have less antioxidants." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/hepatitis/ss/slideshow-best-and-worst-foods-for-your-liver?ecd=wnl_spr_120616_REMAIL&ctr=wnl-spr-120616-REMAIL_nsl-ld-stry_1&mb=aT%2fNo%2fMfdXIeXdniBtn11BXFE73IOX1chB5LGA9kRyM%3d", sponsorLogo: "TBD", sponsorURL: "www.test.com")

var cafeTipArray0 = [cafeTip1, cafeTip2, cafeTip3, cafeTip4]

let cafeTopic0 = Topic(title: cafeTitle, icon: cafeIcon, tip: cafeTipArray0)


// MARK: - Quick Break

let breakTitle = "Break"
let breakIcon = "Bre"

let breakTip1 = Tip(header: breakTitle, title: "Research: Take a break every 52 minutes", body: "One study found the top 10% of productive workers all worked an average of 52 minutes before taking a 17 minute break. Working for any longer can cause cognitive boredom. By knowing you have a break coming up, you’re more likely to stay focused and work with purpose. And taking breaks at regular intervals in your day will improve your health and mental focus." , sourceName: "Fast Company", sourceURL: "https://www.fastcompany.com/40475204/youre-taking-breaks-the-wrong-way-heres-how-to-fix-that", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let breakTip2 = Tip(header: breakTitle, title: "High efficiency breaks = walking outside, especially in green spaces. Low efficiency breaks = Scrolling through the news or social media", body: "Get up and move around to get the blood flowing and clear the mind. Researchers found that just 10 minutes of exercise is enough to boost memory and attention performance throughout the day. \n\nAdditionally, increased exposure to sunlight and fresh air helps increase productivity and can even improve your sleep. Researchers found that workers with more exposure to natural light during the day slept an average of 46 minutes more per night." , sourceName: "Fast Company", sourceURL: "https://www.fastcompany.com/40475204/youre-taking-breaks-the-wrong-way-heres-how-to-fix-that", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let breakTip3 = Tip(header: breakTitle, title: "Research: Increase meditative state by walking in green spaces, not in busy streets", body: "Compared to city shopping streets and busy business areas, feelings of a meditative state were the highest when the participants walked through green spaces, as well as less frustration. \n\nThe findings don’t mean the green space triggered a meditative state — rather, the energy required to walk through a green space is more \"effortless.\"" , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/2013/03/29/green-space-meditation-brain-walk-park_n_2964199.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let breakTip4 = Tip(header: breakTitle, title: "Take vision breaks from looking at digital devices because your eyes will strain in as little as two hours", body: "The 20-20-20 exercise to reduce your eye fatigue: Every 20 minutes look away from your computer screen and focus on an item at least 20 feet away for at least 20 seconds." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

var breakTipArray0 = [breakTip1, breakTip2, breakTip3, breakTip4]

let breakTopic0 = Topic(title: breakTitle, icon: breakIcon, tip: breakTipArray0)


// MARK: - Date

let dateTitle = "Date"
let dateIcon = "Dat"

let dateTip1 = Tip(header: dateTitle, title: "Put your phone away. A study found that the mere presence of a cell phone during conversation lowers relationship development", body: "Cell phones, even when not being used, can intrude into awareness when you see a cell phone. You find yourself thinking about all the things you could be doing with your cell phone. Once those thoughts enter awareness, you may devote less attention to this new person." , sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/mental-mishaps/201407/date-you-and-our-cell-phones", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let dateTip2 = Tip(header: dateTitle, title: "If you keep conversation fun, your date is more likely to come away in a good mood and feeling more positive towards you", body: "Ask them about their family, favorite trips and find out what they are passionate about. Showing interest in someone and letting them feel heard is very attracting. \n\nConversly, if you complain or ask something associated with a negative topic, they'll think the same of you." , sourceName: "The Independent", sourceURL: "https://www.independent.co.uk/life-style/love-sex/first-date-rules-for-men-women-conversation-negative-topics-politics-james-preece-a8288116.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
 
let dateTip3 = Tip(header: dateTitle, title: "Body language signs that show your date is into you", body: "Good eye contact, smileing, leaning in when you speak, laughing at your jokes, blushing, open posture, mirroring your actions, angling their body towards you, and they an excuse to touch you" , sourceName: "Ask Men", sourceURL: "https://www.askmen.com/top_10/dating/10-first-date-success-signs_4.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let dateTip4 = Tip(header: dateTitle, title: "Eat these aphrodisiac foods to increase romance and sexual desire", body: "Eat: Oysters, chili peppers, dark chocolate, vanila, whipped cream, honey, coffee, chai tea, watermelon, bananas, strawberries, cherries, figs, nuts, olive oil, avocado, arugula, asparagus, artichokes. \n\nDon't eat: red meat, broccoli, dairy, whole grains, and beans." , sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/food/fun/aphrodisiac-foods/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

var dateTipArray0 = [dateTip1, dateTip2, dateTip3, dateTip4]

let dateTopic0 = Topic(title: dateTitle, icon: dateIcon, tip: dateTipArray0)

// MARK: - Grocery Store

let groceryStoreTitle = "Groceries"
let groceryStoreIcon = "Gro"

let groceryStoreTip1 = Tip(header: planAhead, title: "Eat healthy before you shop and you're less likely to buy junk food", body: "Research found that shoppers who ate a small healthy snack before shopping filled their carts with 25% more fruits and vegetables than if they didn't eat a healthy snack.  \n\nHealthy eating before buying food primes your brain for the decisions you'll make inside the supermarket." , sourceName: "Cornell University", sourceURL: "https://foodpsychology.cornell.edu/discoveries/apple-day-brings-more-apples-your-way", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let groceryStoreTip2 = Tip(header: "Grocery Store", title: " If you want to eat healthfully, avoid the center aisles - that's where the stores try to get consumers to buy the highly profitable junk foods", body: "To eat healhty, focus on the foods at the periphery of the store, where the meat, fish, dairy, and produce are located.", sourceName: "UC Berkeley News", sourceURL: "https://www.berkeley.edu/news/berkeleyan/2006/04/13_nestle.shtml", sponsorLogo: "", sponsorURL: "")

let groceryStoreTip3 = Tip(header: loseWeight, title: "Eating more protein is a great way to lose weight and belly fat", body: "Protein has been shown to reduce food cravings, boost metabolism, and help you eat fewer calories per day. Protein foods to buy include: eggs, seafood, legumes, nuts, meat, dairy products, and some whole grains." , sourceName: "HealthLine", sourceURL: "https://www.healthline.com/nutrition/how-protein-can-help-you-lose-weight", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let groceryStoreTip4 = Tip(header: health, title: "There are lots of germs in a supermarket. Use the hand sanitizer when you walk out of the store or wash your hands when you get home", body: "The germiest things include: shopping carts, the produce, meat, and seafood aisles, credit card and self-checkout touch screens, and your reuseable bag." , sourceName: "Today", sourceURL: "https://www.today.com/food/10-germiest-things-grocery-store-how-stay-safe-t109564", sponsorLogo: "TBD", sponsorURL: "www.test.com")

///////////////

let groceryStoreTip5 = Tip(header: "Grocery Store", title: "It is no coincidence that most supermarkets place the bakery, flower and produce departments at the entrance: the scent of fresh bread or fruit makes you hungry and entices you to buy more", body: "The part of our brain that is responsible for cognitive thinking is bypassed so before we are even aware of a scent’s existence, an emotional reaction has already been ignited.", sourceName: "American Marketing Association", sourceURL: "https://www.ama.org/publications/eNewsletters/Pages/good-smells-good-marketing-how-use-scent-advantage.aspx", sponsorLogo: "", sponsorURL: "")

let groceryStoreTip6 = Tip(header: planAhead, title: "Think healthy before you shop and you'll buy healthier foods", body: "Research found that priming your brain with healthy food cues (like reading a health-focused magazine or aritcle) before you shop may subconsciously influence what you buy.  " , sourceName: "International Journal of Obesity", sourceURL: "https://www.nature.com/articles/ijo2013136", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let groceryStoreTip7 = Tip(header: "Grocery Store", title: "The most important consideration when buying produce is the amount of time it spends away from the plant. The second you harvest, it starts losing vitamin C and phytochemicals that are sensitive to oxygen", body: "If you can’t buy organic (or if flavor matters more than anything else), go for locally grown instead.", sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/2018/07/03/smarter-living/the-terms-on-a-food-label-to-ignore-and-the-ones-to-watch-for.html?rref=collection%2Fsectioncollection%2Fsmarter-living&action=click&contentCollection=smarter-living&region=stream&module=stream_unit&version=latest&contentPlacement=3&pgtype=sectionfront", sponsorLogo: "", sponsorURL: "")

let groceryStoreTip8 = Tip(header: "Grocery Store", title: "Buy what you and your family is realistically going to eat. Buying in bulk only saves money if you actually eat it", body: "In the United States, food waste consumes between 30 to 40 percent of the food supply. That doesn’t just hurt your wallet, but the planet, too.", sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/2018/07/03/smarter-living/the-terms-on-a-food-label-to-ignore-and-the-ones-to-watch-for.html?rref=collection%2Fsectioncollection%2Fsmarter-living&action=click&contentCollection=smarter-living&region=stream&module=stream_unit&version=latest&contentPlacement=3&pgtype=sectionfront", sponsorLogo: "", sponsorURL: "")

///////////////
let groceryStoreTip9 = Tip(header: "Grocery Store", title: "Shopping carts were invented to make it easy for consumers to buy more", body: "The larger the cart, the more prone you are to spending more, so opt for the hand basket — or even the old-school armful of purchases — if you can.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/tricks-stores-use-to-make-you-spend-more-money-2015-10#-3", sponsorLogo: "", sponsorURL: "")

let groceryStoreTip10 = Tip(header: "Grocery Store", title: "Supermarkets place the bakery and flower departments at the entrance because the bright colors and appealling smells are used to get you to buy more", body: "Their appealing smell activates your salivary glands, making you more likely to purchase on impulse.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/tricks-stores-use-to-make-you-spend-more-money-2015-10#-5", sponsorLogo: "", sponsorURL: "")

let groceryStoreTip11 = Tip(header: "Grocery Store", title: "Ads like ten for $10 sound like a great deal. However, you'll get the same savings even if you only buy one item", body: "A survey found that people bought way more items when they saw 10 for $10 deals vs. five for $5 and one for $1 sales. Even if you aren't buying 10 items, your mind will trick you into thinking that the item is such a great deal that you end up buying more of it.", sourceName: "Pop Sugar", sourceURL: "https://www.popsugar.com/smart-living/Supermarket-Psychology-Tricks-18344600?stream_view=1#photo-18474488", sponsorLogo: "", sponsorURL: "")

let groceryStoreTip12 = Tip(header: "Grocery Store", title: "Look for foods with less than 20 percent daily value of sodium and saturated fat, less than 10 grams of added sugar, and a nice amount of fiber", body: "The FDA requires that labels of nutrition facts include added sugars and serving size. Even supposed \"single-serving\" packages can contain multiples.", sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/2018/07/03/smarter-living/the-terms-on-a-food-label-to-ignore-and-the-ones-to-watch-for.html?rref=collection%2Fsectioncollection%2Fsmarter-living&action=click&contentCollection=smarter-living&region=stream&module=stream_unit&version=latest&contentPlacement=3&pgtype=sectionfront", sponsorLogo: "", sponsorURL: "")

////////////

let groceryStoreTip13 = Tip(header: "Grocery Store", title: "Supermarkets place the higher priced items at eye level", body: "Anything a store wants customers to buy is placed at eye level so it's easy to find. Look above and below for similar items with lower prices and fewer markups.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/tricks-stores-use-to-make-you-spend-more-money-2015-10#-9", sponsorLogo: "", sponsorURL: "")

let groceryStoreTip14 = Tip(header: "Grocery Store", title: "Supermarkets place dairy products and other essentials on the back wall to get you to spend more", body: "This forces you to walk through the whole store to reach them, increasing your odds of throwing some items into your cart along the way.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/tricks-stores-use-to-make-you-spend-more-money-2015-10#-6", sponsorLogo: "", sponsorURL: "")

let groceryStoreTip15 = Tip(header: "Grocery Store", title: "Check the unit prices on items that you are comparing", body: "This will help you to see that the cost-per-unit on one item may be less than the cost-per-unit on a comparable item, which would mean a better deal for you.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/tricks-stores-use-to-make-you-spend-more-money-2015-10#-6", sponsorLogo: "", sponsorURL: "")

let groceryStoreTip16 = Tip(header: "Grocery Store", title: "It's counter intuitive, but to checkout faster you should get in line behind the cart loaded up the most", body: "The science behind it states that if you choose a line with lots of people each carrying a few items, your wait time is increased by each interaction between the customer and checkout clerk.", sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/business/7-tricks-saving-time-money-grocery-store-ncna775791", sponsorLogo: "", sponsorURL: "")

let groceryStoreTipArray0 = [groceryStoreTip1, groceryStoreTip2, groceryStoreTip3, groceryStoreTip4]
let groceryStoreTipArray1 = [groceryStoreTip5, groceryStoreTip6, groceryStoreTip7, groceryStoreTip8]
let groceryStoreTipArray2 = [groceryStoreTip9, groceryStoreTip10, groceryStoreTip11, groceryStoreTip12]
let groceryStoreTipArray3 = [groceryStoreTip13, groceryStoreTip14, groceryStoreTip15, groceryStoreTip16]

let groceryStoreTopic0 = Topic(title: groceryStoreTitle, icon: groceryStoreIcon, tip: groceryStoreTipArray0)
let groceryStoreTopic1 = Topic(title: groceryStoreTitle, icon: groceryStoreIcon, tip: groceryStoreTipArray1)
let groceryStoreTopic2 = Topic(title: groceryStoreTitle, icon: groceryStoreIcon, tip: groceryStoreTipArray2)
let groceryStoreTopic3 = Topic(title: groceryStoreTitle, icon: groceryStoreIcon, tip: groceryStoreTipArray3)

// MARK: - Shopping, Clothes

let shoppingClothesTitle = "Shopping"
let shoppingClothesIcon = "Sho"

let shoppingClothesTip1 = Tip(header: loseWeight, title: "Shop healthier by getting exercise", body: "Park far away from the entrance and build a few extra, calorie-burning steps into your day. Visit stores on different levels and take the stairs, not the escalator. " , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/2012/08/11/healthy-weekend_n_1760981.html?slideshow=true#gallery/243861/2", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let shoppingClothesTip2 = Tip(header: shoppingClothesTitle, title: "Harvard professor says 95% of purchasing decisions are subconscious", body: "Emotion is what really drives the purchasing behaviors. To achieve the highest emotional response, marketers target you through many different senses, including colors and scents in stores." , sourceName: "Inc.", sourceURL: "https://www.inc.com/logan-chierotti/harvard-professor-says-95-of-purchasing-decisions-are-subconscious.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let shoppingClothesTip3 = Tip(header: shoppingClothesTitle, title: "People stay 40% longer in businesses that smell good, resulting in more purchases", body: "Scents evoke an emotional response and people spend more time in places when they feel good. Scent’s main role is to make the customer feel comfortable, happy and put them at ease so they will spend more time in the store, spend more money and ultimately make them more likely to return." , sourceName: "American Marketing Association", sourceURL: "https://www.ama.org/publications/eNewsletters/Pages/good-smells-good-marketing-how-use-scent-advantage.aspx", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let shoppingClothesTip4 = Tip(header: shoppingClothesTitle, title: "Slow music and cool colors like blues and greens encourage them to spend more", body: "Studies show that slow music makes people shop leisurely and spend more.  Classical music encourages more expensive purchases." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/tricks-stores-use-to-make-you-spend-more-money-2015-10#-12", sponsorLogo: "TBD", sponsorURL: "www.test.com")

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

let commutePMTip4 = Tip(header: improvePerformance, title: "Identify an area in your life that you want to improve and use your commute to fix it.", body: "If it’s exercise you need, then bike or walk to work, even if it’s just partway. Or park far away from your office and walk an extra minute. \n\nIf it’s relaxation you’re missing, then do nothing, or read a fun book, or take a quick walk around your office before you leave for home. \n\nIf you want to learn something, then read about it or, if you have internet access, watch a video or participate in an online course. If you’re feeling lonely, call, text, or email people you cherish." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2015/01/get-more-done-during-your-commute", sponsorLogo: "TBD", sponsorURL: "www.test.com")

var commutePMTipArray0 = [commutePMTip1, commutePMTip2, commutePMTip3, commutePMTip4]

let commutePMTopic0 = Topic(title: commutePMTitle, icon: commutePMIcon, tip: commutePMTipArray0)

// MARK: - Work, AM

let workAMTitle = "Work"
let workAMIcon = "Wor"

let workAMTip1 = Tip(header: improvePerformance, title: "Produce at a peak level: Work for extended periods with full concentration on a single task free from distraction", body: "Stop constantly checking your email, phone, and multitasking. Your brain's attention remains stuck thinking about the previous task when beginning your next task. This results in lower performance and increases the amount of time to complete your work.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/wharton-adam-grant-uses-deep-work-for-maximum-productivity-2016-2", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let workAMTip2 = Tip(header: improvePerformance, title: "Don't schedule your meetings in the morning. Instead, schedule them for the afternoon, after lunch.", body: "Our brains are more focused in the morning. So spend this time doing difficult tasks, not sitting in a meeting. For team meetings, schedule it at 3:30 or 4 p.m. and use it to plan for the next day." , sourceName: "Fast Company", sourceURL: "https://www.fastcompany.com/3032498/why-you-should-rethink-that-morning-meeting", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let workAMTip3 = Tip(header: improvePerformance, title: "Be more productive at work by placing your cell phone out of sight or face-down", body: "A study found people were much more likely to make errors and not pay attention to their main task if they were interrupted by notifications from their phone - such as a text or a call.", sourceName: "WIRED", sourceURL: "https://www.wired.co.uk/article/what-is-productivity-be-more-productive-how-to-work", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let workAMTip4 = Tip(header: improvePerformance, title: "The best time to take a break from work is midmorning", body: "Your mental resources are generally at their highest soon after you wake up, and they gradually diminish throughout the day. It's easier to restore those resources when you take a midmorning break.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/the-best-time-of-day-to-do-everything-2016-5#-5", sponsorLogo: "sponsor", sponsorURL: "sponsorURL")

//
let workAMTip5 = Tip(header: improvePerformance, title: "Try to avoid meetings because they are the biggest office time-sucks", body: "The average office worker spends over 31 hours each month in unproductive meetings. Before booking your next meeting, ask yourself whether you can accomplish the same goals or tasks via email, phone, or Web-based meeting.", sourceName: "Inc", sourceURL: "https://www.inc.com/john-rampton/15-ways-to-increase-productivity-at-work.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")


var workAMTipArray0 = [workAMTip1, workAMTip2, workAMTip3, workAMTip4]

let workAMTopic0 = Topic(title: workAMTitle, icon: workAMIcon, tip: workAMTipArray0)

// MARK: - Work, PM

let workPMTitle = "Work"
let workPMIcon = "Wor"

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

let homeAMTip4 = Tip(header: increaseConfidence, title: "Every time you walk through a doorway, remember to stand up, put your chin up, put your shoulders back, and smile.", body: "This will create a first impression that causes other people to view you as confident, open, positive, and friendly. That will change the way that we think about ourselves." , sourceName: "The Unbeatable Mind Podcast", sourceURL: "https://unbeatablemind.com/jordan-harbinger/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

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

//let kitchenTopic0 = Topic(title: kitchenTitle, icon: kitchenIcon, tip: kitchenTipArray0)

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

let bathroomPMTip3 = Tip(header: sleepBetter, title: "Trade your shower for a bath to reduce stress, sleep better, and lose weight", body: "When you take a hot bath your body temperature rises, and then quickly cools down, which relaxes your body, burns calories, and primes it for sleep." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/health/5-science-backed-ways-have-healthier-weekend-ncna782761", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let bathroomPMTip4 = Tip(header: reduceGerms, title: "Scientist recommend wiping down your bathroom at least once a week", body: "Your bathroom is the ultimate bacteria host; E.coli can be found within six feet of the toilet and in the sink. To keep it at bay, disinfect the toilet and sink at least once weekly, and the bathtub every two weeks." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/pop-culture/how-often-you-should-wash-everything-your-home-according-science-ncna826271", sponsorLogo: "TBD", sponsorURL: "www.test.com")

var bathroomPMTipArray0 = [bathroomPMTip1, bathroomPMTip2, bathroomPMTip3, bathroomPMTip4]

let bathroomPMTopic0 = Topic(title: bathroomPMTitle, icon: bathroomPMIcon, tip: bathroomPMTipArray0)

// MARK: - Bedtime

let bedtimeTitle = "Bedtime"
let bedtimeIcon = "Bed"

let bedtimeTip1 = Tip(header: reduceCavities, title: "Brush your teeth before bed because it's easier to get a cavity while you sleep.", body: "While you sleep, your mouth salivates less, which can lead to cavities. This is why it is important to brush your teeth before bed. The American Dental Association recommends you brush twice a day for two minutes, although they don't specify what time of day these brushing should happen." , sourceName: "Greatist", sourceURL: "https://greatist.com/live/brushing-teeth-before-bed", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let bedtimeTip2 = Tip(header: navySealAdvice, title: "Wake up early tomorrow and exercise. Don't think. Just execute the plan.", body: "One of the most common ways to sabotage your morning is to get a slow start by gradually waking up and doing tasks that require thinking. Instead, wake up early, jump out of bed, and puts on the workout clothes you prepared the night before. By the time you've finished your workout, most people are just waking up." , sourceName: "Jocko Willink, retired Navy SEAL commander", sourceURL: "https://www.businessinsider.com/jocko-willink-how-to-wake-up-earlier-2017-11", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let bedtimeTip3 = Tip(header: sleepBetter, title: "A nighttime ritual will help to reduce stress and fall asleep faster", body: "Taking a hot bath, reading a book, journaling, going for an evening stroll or listening to calming music, is critical to priming the brain to sleep well." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/health/how-effectively-manage-stress-so-it-doesn-t-hurt-your-ncna815626", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let bedtimeTip4 = Tip(header: planAhead, title: "Reduce decision fatigure tomorrow by making a plan tonight", body: "List the major tasks you want to accomplish the next day — and how you want to spend the first few hours of the day. Lay out the clothes you’ll wear and have ingredients ready to make a healthy breakfast. Making less decisions in the morning helps you have more willpower later in the day." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/health/9-things-do-morning-make-your-whole-day-more-productive-ncna772446", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let bedtimeTip5 = Tip(header: increaseConfidence, title: "Increase your confidence. Before you even get out of bed tomorrow, stretch your body as wide as possible in an 'X' or 'Y' position.", body: "We can become more confident simply by striking a power pose or stretching out in the morning. Sleeping in the fetal position sends a subtle signal to your brain that your body is under attack. But if you open up your posture in bed, you’ll see an improvement in your daily confidence levels and happiness.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/amy-cuddy-advice-waking-up-right-2016-1", sponsorLogo: "sponsor", sponsorURL: "sponsorURL")

var bedtimeTipArray0 = [ bedtimeTip1,  bedtimeTip2,  bedtimeTip3,  bedtimeTip4]

let bedtimeTopic0 = Topic(title: bedtimeTitle, icon: bedtimeIcon, tip: bedtimeTipArray0)

// MARK: - Leadership, AM

let leadershipAMTitle = "Leadership"
let leadershipAMIcon = "Lea"

let leadershipAMTip1 = Tip(header: leadershipAMTitle, title: "Leadership, AM 1 Title", body: "Harvard Business School encourages its students to see success as making a positive difference in the lives of their colleagues, their organizations, their families, and society as a whole. As you take on greater leadership responsibilities, the key is to stay grounded and authentic, face new challenges with humility, and balance professional success with more important but less easily quantified measures of personal success. The practice of mindful leadership gives you tools to measure and manage your life as you’re living it. It teaches you to pay attention to the present moment, recognizing your feelings and emotions and keeping them under control, especially when faced with highly stressful situations. When you are mindful, you’re aware of your presence and the ways you impact other people. In order to gain awareness and clarity about the present moment, you must be able to quiet your mind. You must have practices that you engage in every day. When I started meditating, I was able to stay calmer and more focused in my leadership. Meditation enabled me to cast off the many trivial worries that once possessed me and gain clarity about what was really important. I gradually became more self-aware and more sensitive to the impact I was having on others. The important thing is to have a set time each day to pull back from the intense pressures of leadership to reflect on what is happening. In addition to meditation, I know leaders who take time for daily journaling, prayer, and reflecting while walking, hiking or jogging. Mindfulness will help you clear away the trivia and needless worries about unimportant things, nurture passion for your work and compassion for others, and develop the ability to empower the people in your organization." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2012/10/mindfulness-helps-you-become-a", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let leadershipAMTip2 = Tip(header: leadershipAMTitle, title: "The only way to think like a leader is to first act: to plunge yourself into new projects and activities, interact with very different kinds of people, and experiment with unfamiliar ways of getting things done", body: "leaders ought to seek out new knowledge, experiences and networks in order to both grow as a leader and act as a better, more effective type of leader. Effective leaders create and use networks to tap new ideas, connect to people in different worlds, and access people for radically different perspectives. Network outside the organization, often an untapped source not only of contacts and people but of potential innovations and creative solutions to business problems." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

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


// MARK: - Restaurant (Friends or Family)

let restaurantTitle = "Restaurant"
let restaurantIcon = "Res"

let restaurantTip1 = Tip(header: "Restaurant", title: "Pay attention to the music being played", body: "Eateries with loud, energic music—create a hectic atmosphere that makes people overeat. Opt for establishments with softer sounds like jazz. Researchers found that people who dined in restaurants with lighter music ate less food." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/how-to-eat-healthy-at-restaurants/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let restaurantTip2 = Tip(header: "Restaurant", title: "Look at the colors on the walls", body: "Restaurants with bold, bright colors—think reds and oranges—are stimulating, so you’re more likely to order more. However, softer colors like blues, peaches, grays and pinks encourage a more relaxed, eat-slowly atmosphere." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/how-to-eat-healthy-at-restaurants/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let restaurantTip3 = Tip(header: "Restaurant", title: "Avoid empty calorie alcoholic drinks", body: "Stay away from sugary margaritas and pina coladas because they’ll just add hundreds—or even thousands—of extra calories. Instead, get a glass of red wine (for the antioxidant benefits) or a vodka with a splash of club soda and a lime." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/healthy-eating-weight-loss-tips-not-calories-2018-7#if-you-go-out-to-eat-take-half-of-your-meal-home-in-a-to-go-box-15", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let restaurantTip4 = Tip(header: "Restaurant", title: "Reduce weight gain by putting half of your meal home in a to-go box", body: "A study found that many restaurants serve portions that are triple (or even quadruple!) that of a recommended portion size." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/how-to-eat-healthy-at-restaurants/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let restaurantTip5 = Tip(header: "Restaurant", title: "Scientists found that people who ate a large vegetable salad before their main dish ate fewer calories than those who didn’t", body: "Keep it simple by foregoing creamy (read: fattening) dressings for simple oil and vinegar. And skip the cheese and croutons, too." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/how-to-eat-healthy-at-restaurants/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let restaurantTip6 = Tip(header: "Restaurant", title: "Fat and calories hide in these buzzwords", body: "Anything that’s described as creamy, buttery, breaded, fried, stuffed or smothered is likely loaded with fat and calories. Fancy-sounding terms like au gratin, parmesan, cheese-filed scalloped or sauteed is a giveaway that there are plenty of calories stuffed inside the meal." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/how-to-eat-healthy-at-restaurants/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let restaurantTip7 = Tip(header: "Restaurant", title: "Look for these healthy buzzwords", body: "Roasted, baked, braised, broiled, poached, rubbed, seared, grilled, steamed, sautéed, spiced, seasoned indicate that the food was cooked in the healthiest way possible." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/how-to-eat-healthy-at-restaurants/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let restaurantTip8 = Tip(header: "Restaurant", title: "Plan to do some light exercise after dinner", body: "A nice stroll after dinner will not only help you digest, it’ll keep you from ordering something heavy while out. Why? You simply won’t want to feel weighed down and sluggish for a walk." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/how-to-eat-healthy-at-restaurants/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

// TODO
var restaurantTipArray0 = [restaurantTip1, restaurantTip2, restaurantTip3, restaurantTip4]

let restaurantTopic0 = Topic(title: restaurantTitle, icon: restaurantIcon, tip: restaurantTipArray0)

var restaurantTipArray1 = [restaurantTip5, restaurantTip6, restaurantTip7, restaurantTip8]

let restaurantTopic1 = Topic(title: restaurantTitle, icon: restaurantIcon, tip: restaurantTipArray1)


// MARK: - Getting Ready AM
let getReadyAM0 = Tip(header: "Get Ready", title: "Reduce decision fatigue wearing the same type of clothes each day", body: "Steve Jobs, Mark Zuckerberg, and Barack Obama have all applied this idea to their lives. Wearing the same thing each day frees up the brainpower you would have put into picking out an outfit to make other, more important decisions." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/barack-obama-mark-zuckerberg-wear-the-same-outfit-2015-4", sponsorLogo: "TBD", sponsorURL: "www.test.com")

// MARK: - Getting Ready PM
let getReadyPM0 = Tip(header: "Get Ready", title: "Wearing the color red can actually make you feel more attractive", body: "In one experiment, a group of individuals who were wearing red were rated as more attractive by another group of individuals — despite the fact that the first groups’ clothing wasn’t visible to the group do the rating." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/business/can-wearing-work-uniform-help-you-get-ahead-ncna788136?cid=eml_better_20180716", sponsorLogo: "TBD", sponsorURL: "www.test.com")


// MARK: - Sex

let sex0 = Tip(header: "Sex", title: "Females should always pee after sex to prevent UTIs", body: "Females are 10 times more likely to get a UTI. Peeing flushes out bacteria in your urethra naturally caused by having sex. It's recommended to pee within 30 minutes after sex.", sourceName: "Bustle", sourceURL: "https://www.bustle.com/articles/144605-why-pee-after-sex-exactly-why-when-you-should-go-after-every-romp", sponsorLogo: "", sponsorURL: "")

