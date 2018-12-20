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
let navySealAdvice = "NAVY SEAL ADVICE"

// MARK: - Breakfast

let breakfastTitle = "Breakfast"
let breakfastIcon = "Bre"

let breakfastTip1 = Tip(header: diet, title: "Consume at least 30 grams of protein for breakfeat to keep you fuller for longer", body: "Protein keeps you full longer than other foods because it takes longer to digest and leave the stomach. Also, protein keeps blood-sugar levels steady, which prevent spikes in hunger." , sourceName: "Benjamin P. Hardy, author of Willpower Doesn't Work", sourceURL: "https://medium.com/personal-growth/this-morning-routine-will-save-you-20-hours-per-week-409f8acbde1", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let breakfastTip2 = Tip(header: planAhead, title: "Reduce your odds of having an afternoon slump today by eating a healthy breakfast", body: "Eating breakfast reduces your chances an unhealthy snack later in the day. We can also crave extra calories if we have not eaten enough during the day or if we have skipped lunch. \n\nWhen you don't eat regularly, your blood sugar levels are not maintained and your body is not supported by nutrition. This causes the body to 'call out' for something to eat and we usually find we want a high calorie, comfort type food. We're less likely to have a slump if we've fuelled our bodies well beforehand." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com.au/2016/08/02/this-is-why-you-crave-junk-food-later-in-the-day_a_21443885/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let breakfastTip3 = Tip(header: cereal, title: "Cereal: There should always be at least five grams of fiber, and there should always be more fiber than sugar", body: "The more sugar in your breakfast cereal, the faster it digests, and the hungrier you’ll be. Conversely, more fiber will keep you fuller longer. For extra fiber, add chia or flax seeds." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/2013/03/23/healthy-breakfast-mistakes_n_2877800.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let breakfastTip4 = Tip(header: planAhead, title: "A breakfast with no fat can make you hungry again within an hour", body: "Let’s look at the supposed healthy breakfast of non-fat Greek yogurt, high-fiber cereal and berries. Where’s the fat? Switch to 2%-fat yogurt or to add some nuts. But you only need a little fat to keep you feeling full for longer." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/2013/03/23/healthy-breakfast-mistakes_n_2877800.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
///////////
let breakfastTip5 = Tip(header: planAhead, title: "The Best Foods to Eat for Breakfast", body: "A healthy breakfast includes fiber, protein and healthy fat that gives you energy and makes you feel full. \n\n• Protein: Eggs, Greek Yogurt, Protein Shake, Cottage Cheese \n\n• Fiber: Oatmeal, Chia Seeds, Flaxseeds \n\n• Vitamins: Berries and Citrus Fruit \n\n• Healthy Fats: Nuts, Avocado, Peanut Butter \n\n• Caffeine: Coffee or Green Tea" , sourceName: "Healthline", sourceURL: "https://www.healthline.com/nutrition/12-best-foods-to-eat-in-morning#section4", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let breakfastTip6 = Tip(header: planAhead, title: "The Worst Foods to Eat for Breakfast", body: "The list below contain little nutrients and high amounts of sugar, refined grains, and trans fats: \n\n• Fruit Juice and Smooties \n\n• Cereal, Bagels, Breads, Granola Bars, Muffins, Toaster Pastries, Pancakes, and Waffles \n\n• Butter, Flavored Yogurt, and Cream Cheese \n\n• Bacon and Sausage \n\n• Jelly, Syrup, Flavored Creamers, and Ketchup" , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/worst-breakfast-foods/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let breakfastTip7 = Tip(header: planAhead, title: "A healthy breakfast includes lean protein, whole-grain carbohydrates, healthy fat, and fresh fruit", body: "Try low-fat Greek yogurt topped with fresh berries and a handful of nuts; a whole-wheat English muffin spread with a dollop of peanut butter; or an egg scrambled in extra-virgin olive oil along with some spinach, mushrooms, or other vegetables." , sourceName: "Harvard Health Publishing", sourceURL: "https://www.health.harvard.edu/nutrition/breakfast-and-beyond-the-case-for-a-healthy-morning-meal", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let breakfastTip8 = Tip(header: "", title: "Eat a protein-rich breakfast to reduce food cravings, prevent overeating later today", body: "Compared to breakfast-skippers, brain scans of protein-rich breakfast-eaters showed less activity in the brain's regions controlling food motivation prior to lunch. Eating a healthy, protein-rich breakfast helps people be less prone to snacking between meals. Convenient snack foods are almost always high in sugar and fat and add a substantial amount of calories to the diet." , sourceName: "University of Missouri", sourceURL: "https://munews.missouri.edu/news-releases/2011/0518-eat-a-protein-rich-breakfast-to-reduce-food-cravings-prevent-overeating-later-mu-researcher-finds/", sponsorLogo: "", sponsorURL: "")
//3 (WIP)
let breakfastTip9 = Tip(header: buildMuscle, title: "The key ingredients for breakfast are: protein, fiber, and healthy fats", body: "Try a couple of eggs with a few avocado slices, or some Greek yogurt (the plain kind, since the flavored varieties can be high in sugar) with fruit and nuts. Both of these options will fill you up, help smooth out your digestion, and power up your muscles." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/morning-routine-according-to-science-2017-12#fuel-up-5", sponsorLogo: "TBD", sponsorURL: "www.test.com")

var breakfastTipArray0 = [breakfastTip1, breakfastTip2, breakfastTip3, breakfastTip4]
let breakfastTopic0 = Topic(title: breakfastTitle, icon: breakfastIcon, tip: breakfastTipArray0)

var breakfastTipArray1 = [breakfastTip5, breakfastTip6, breakfastTip7, breakfastTip8]
let breakfastTopic1 = Topic(title: breakfastTitle, icon: breakfastIcon, tip: breakfastTipArray1)

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

// 1
let lunchTip1 = Tip(header: planAhead, title: "Prevent the afternoon slump by eating a healthy lunch", body: "Unhealthy snacks don't keep you full, meaning you'll eat more and gain weight. Eat whole grains, lean proteins, vegetables, and good fats." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com.au/2016/08/02/this-is-why-you-crave-junk-food-later-in-the-day_a_21443885/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let lunchTip2 = Tip(header: "Lunch", title: "Eat lean protein because it takes longer for your body to digest, keeping you feeling full longer", body: "Also, protein helps to build and maintain metabolism-boosting muscle mass. Your body becomes more effective at burning calories when you eat protein." , sourceName: "Very Well Fit", sourceURL: "https://www.verywellfit.com/healthy-lunch-ideas-and-recipes-3495782", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let lunchTip3 = Tip(header: "Lunch", title: "Eat Fiber: It helps you lose weight by making you feel full for a longer period of time" , body: "Research: people who ate 30 grams of fiber a day lost roughly the same weight as people who followed a complex diet published by the American Heart Association. Eat vegetables, fruit, and whole grain bread and pasta.", sourceName: "Very Well Fit", sourceURL: "https://www.verywellfit.com/how-to-eat-fiber-to-lose-weight-3495368", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let lunchTip4 = Tip(header: "Lunch", title: "Walking 15 minutes after lunch speeds up digestion, prevents stomach problems, and increases metabolism which burns belly fat", body: "Walking after a meal, as short as 15 minutes, increases metabolism, which in turn helps in burning calories. The faster your metabolism, the faster you’ll burn calories, and thus, the better your weight will be controlled." , sourceName: "The New York Times", sourceURL: "https://well.blogs.nytimes.com/2013/06/24/really-the-claim-taking-a-walk-after-a-meal-aids-digestion", sponsorLogo: "", sponsorURL: "")

//2
let lunchTip5 = Tip(header: "Lunch", title: "Jerry Seinfeld—maintained his sanity while filming \"Seinfeld\" by meditating during his lunch hour", body: "\"I was doing the TV series in which I was the star of the show, the executive producer of the show, the head writer, in charge of casting and editing, for 24 episodes on network television for 9 years!\" he said. \"So I meditated every day. And that's how I survived the 9 years.\"" , sourceName: "The Wall Street Journal", sourceURL: "https://www.wsj.com/articles/ohm-for-all-1386299691", sponsorLogo: "", sponsorURL: "")
let lunchTip6 = Tip(header: "Lunch", title: "Always eat protein-rich foods at lunchtime such as chicken, lean meat, tuna, eggs, beans or reduced-fat cheese", body: "Protein-rich foods either help to block the production of sleep-inducing serotonin or increase levels of brain chemicals - dopamine and norepinephrine - which make us feel more alert and help us concentrate better." , sourceName: "Weight Loss Resources", sourceURL: "https://www.weightlossresources.co.uk/diet/healthy_eating/beat-afternoon-energy-slump.htm", sponsorLogo: "", sponsorURL: "")
let lunchTip7 = Tip(header: "Lunch", title: "Never skip lunch – it lowers your blood sugar levels in the afternoon making you tired, easily annoyed, and unable to concentrate", body: "Skipping lunch causes you to start craving sweet foods – this is simply your body’s way of letting you know that your blood sugar levels need topping up." , sourceName: "Weight Loss Resources", sourceURL: "https://www.weightlossresources.co.uk/diet/healthy_eating/beat-afternoon-energy-slump.htm", sponsorLogo: "", sponsorURL: "")
let lunchTip8 = Tip(header: "Lunch", title: "Taking a light walk after lunch helps balance your blood sugar and makes you feel lighter", body: "Stand up after you eat or take a light walk. This will get your metabolism moving, as the metabolism slows substantially when sitting down." , sourceName: "Bustle", sourceURL: "https://www.bustle.com/articles/169443-11-things-to-do-before-after-eating-to-help-your-metabolism-work-as-efficiently-as", sponsorLogo: "", sponsorURL: "")

//3
let lunchTip9 = Tip(header: "Lunch", title: "Exercise at lunchtime to improve your mood this afternoon", body: "A 30-minute workout in the gym or power walk outside will help to boost levels of feel-good endorphins, which will help to make you feel upbeat, positive and less tired." , sourceName: "Weight Loss Resources", sourceURL: "https://www.weightlossresources.co.uk/diet/healthy_eating/beat-afternoon-energy-slump.htm", sponsorLogo: "", sponsorURL: "")
let lunchTip10 = Tip(header: "Lunch", title: "Always include one serving of carbs with a high-fiber content such as wholegrain bread, bean soup, brown rice or wholewheat pasta", body: "These will help to keep your blood sugar levels up, preventing slumps that leave you needing a nap. But don’t go too heavy on portion sizes – whilst helping to boost blood sugar, carbs also increase the production of a chemical in the brain called serotonin, which can make us sleepy." , sourceName: "Weight Loss Resources", sourceURL: "https://www.weightlossresources.co.uk/diet/healthy_eating/beat-afternoon-energy-slump.htm", sponsorLogo: "", sponsorURL: "")
let lunchTip11 = Tip(header: "Lunch", title: "Eat lean protein at every meal to build muscle and satisfy hunger", body: "A good rule of thumb is to aim for 20 to 30 grams per meal of lean protein from sources that are low in saturated fats and processed carbohydrates. There are many plant foods that contain protein, including grains, beans, legumes, nuts, and vegetables." , sourceName: "POPSUGAR", sourceURL: "https://www.popsugar.com/fitness/photo-gallery/45405356/image/45407390/You-Dont-Eat-Enough-Protein", sponsorLogo: "", sponsorURL: "")
let lunchTip12 = Tip(header: "Diet", title: "Studies show that vegetarians (and even more so, vegans) routinely have lower body weights", body: "Plant-based foods are high in fiber, and research shows that people who followed a higher-fiber diet had a lower waist circumference. Try eating a more plant-based diet, focusing on veggies, whole grains, and plant proteins such as beans, nuts, seeds, and soy products." , sourceName: "POPSUGAR", sourceURL: "https://www.popsugar.com/fitness/photo-gallery/45270438/image/45346172/Do-Eat-More-Plant-Based-Meals", sponsorLogo: "", sponsorURL: "")

var lunchTipArray0 = [lunchTip1, lunchTip2, lunchTip3, lunchTip4]
let lunchTopic0 = Topic(title: lunchTitle, icon: lunchIcon, tip: lunchTipArray0)

var lunchTipArray1 = [lunchTip5, lunchTip6, lunchTip7, lunchTip8]
let lunchTopic1 = Topic(title: lunchTitle, icon: lunchIcon, tip: lunchTipArray1)

var lunchTipArray2 = [lunchTip9, lunchTip10, lunchTip11, lunchTip12] //WIP
let lunchTopic2 = Topic(title: lunchTitle, icon: lunchIcon, tip: lunchTipArray2)

// MARK: - Dinner

let dinnerTitle = "Dinner"
let dinnerIcon = "Din"

//0
let dinnerTip1 = Tip(header: "Dinner", title: "Reduce weight gain by reducing your plate size", body: "The average dinner plate has increased in size 36% since 1960. By switching from a 12 inch plate to a 10 inch plate you eat 22% less." , sourceName: "Eat Out, Eat Well.", sourceURL: "https://eatouteatwell.com/how-big-are-your-dinner-plates-and-why-it-matters/", sponsorLogo: "", sponsorURL: "")
let dinnerTip2 = Tip(header: "Dinner", title: "Eat 3 hours before bedtime to allow for proper digestion", body: "But, the time you eat is not as important as compared to the quantity you eat. If you want to lose weight, your caloric intake must be less than your caloric expenditure." , sourceName: "Sleep Advisor", sourceURL: "https://www.sleepadvisor.org/eat-just-before-bed-risks/", sponsorLogo: "", sponsorURL: "")
let dinnerTip3 = Tip(header: "Weight Loss", title: "Reading or watching TV while you eat may add to weight gain", body: "It takes 20 minutes before the brain begins to start sending out \"I'm full\" signals that turn off appetite. If you're hurrying or not paying attention, it's easy to take in more calories than you need. \n\n• Don't multitask \n• Eat slowly \n• Savor your food", sourceName: "Harvard Medical School", sourceURL: "https://www.health.harvard.edu/healthbeat/mindful-eating-may-help-with-weight-loss", sponsorLogo: "", sponsorURL: "")
let dinnerTip4 = Tip(header: "Dinner", title: "Walking after dinner helps you sleep better", body: "The gentle physical activity and the fading light before nightfall can recalibrate your body clock, helping you sleep better. It's a simple way to aid digestion, lower the postmeal surge in insulin, increase blood circulation, and stimulate metabolism - all important for a good night sleep." , sourceName: "Prevention", sourceURL: "https://www.prevention.com/weight-loss/a20503013/try-this-15-minute-after-dinner-ritual-that-helps-italians-lose-weight/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//1
let dinnerTip5 = Tip(header: "", title: "Eating dinner early or waiting at least 2 hours before going to sleep lowers your risk of cancer", body: "A study found an association between eating earlier (before 9 p.m.) and a 20% lower risk for breast and prostate cancers compared to people who ate a late dinner (after 10 p.m.) or went to bed right after eating." , sourceName: "USA Today", sourceURL: "https://www.usatoday.com/story/news/nation-now/2018/07/18/early-dinner-time-linked-lower-risk-cancer-says-study/795819002/", sponsorLogo: "", sponsorURL: "")
let dinnerTip6 = Tip(header: "Health", title: "Don't eat a fatty dinner because you're body shuts down while you sleep and stores the food as fat", body: "Greasy or high-fat dinners take longer to digest which causes the food to be stored as fat while you sleep. Also, it can cause issues with reflux or heartburn." , sourceName: "Elle", sourceURL: "https://www.elle.com/beauty/health-fitness/news/a45387/dinner-time-health-myths-facts/", sponsorLogo: "", sponsorURL: "")
let dinnerTip7 = Tip(header: "", title: "Turn on the lights. People who eat in well-lit spaces consume about 39% fewer calories than those who dine under dim lighting.", body: "Bright spaces make us feel more alert, so we eat more mindfully. In one study, participants who ate with bright lights ate more slowly, enjoyed their food more and consumed 373 fewer calories." , sourceName: "EatingWell", sourceURL: "http://www.eatingwell.com/article/280967/7-small-changes-with-big-results/", sponsorLogo: "", sponsorURL: "")
let dinnerTip8 = Tip(header: "Dinner", title: "Slouched posture after a meal can trigger heartburn caused by acid reflux (when stomach acid squirts back up into the esophagus)", body: "Slouching puts pressure on the abdomen, which can force stomach acid in the wrong direction. And some evidence suggests that transit in the intestines slows down when you slouch." , sourceName: "Harvard Health Publishing", sourceURL: "https://www.health.harvard.edu/staying-healthy/3-surprising-risks-of-poor-posture", sponsorLogo: "", sponsorURL: "")

var dinnerTipArray0 = [dinnerTip1, dinnerTip2, dinnerTip3, dinnerTip4]
let dinnerTopic0 = Topic(title: dinnerTitle, icon: dinnerIcon, tip: dinnerTipArray0)

/// Work in progress
var dinnerTipArray1 = [dinnerTip5, dinnerTip6, dinnerTip7, dinnerTip8]
let dinnerTopic1 = Topic(title: dinnerTitle, icon: dinnerIcon, tip: dinnerTipArray1)

// MARK: - Dinner (Late)

// 0
let dinnerAfter9PM1 = Tip(header: "Dinner", title: "Late Dinner: Avoid large portions, greasy, fatty, spicy, and fried foods, and high-sugar, high-carbohydrate treats like cookies or ice cream", body: "These foods can cause indigestion (feeling bloated and gassy), heartburn, and even acid reflux before bedtime. The result is poor sleep and poor health.", sourceName: "Life Hacker", sourceURL: "https://lifehacker.com/the-late-night-snacks-that-wont-upset-your-stomach-and-1717594825", sponsorLogo: "text", sponsorURL: "text")
let dinnerAfter9PM2 = Tip(header: "Dinner", title: "Drinking a glass of milk before bed will help you sleep at night", body: "Milk is a sleep supporter because it has tryptophan, which raises melatonin and serotonin levels in the body, both of which induce sleep. Plus, milk has calcium, and recent research has found that calcium deficiency in the diet can cause disturbed sleep patterns.", sourceName: "Cooking Light", sourceURL: "http://www.cookinglight.com/healthy-living/health/foods-that-help-you-sleep", sponsorLogo: "text", sponsorURL: "text")
let dinnerAfter9PM3 = Tip(header: "Health", title: "Don't eat large amounts of carbohydrates-heavy food like pasta, bread, and fried foods before bed", body: "Carbohydrates turns into sugar in your blood and you get a rise in insulin. Since you are just going to bed, you aren't using that sugar for energy, so you're more likely to store it as fat. \n\nIf you do go for whole grain carbs, make sure to pair it with protein and healthy fats (avocado, salmon, olive oil, or nuts).", sourceName: "Elle", sourceURL: "https://www.elle.com/beauty/health-fitness/news/a45387/dinner-time-health-myths-facts/", sponsorLogo: "test", sponsorURL: "test")
let dinnerAfter9PM4 = Tip(header: "", title: "Prevent acid-reflux: Don't eat a large dinner, especially if you plan to go to bed in the next 3 hours", body: "A study of 350 people found that eating dinner within 3 hours of bedtime was positively linked with a risk of developing acid-reflux symptoms, a common condition that causes heartburn, indigestion, and coughing.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/why-eating-late-bad-unhealthy-2018-1", sponsorLogo: "", sponsorURL: "")

// 1
let dinnerAfter9PM5 = Tip(header: "", title: "Eating a late dinner or going to sleep shortly after dinner increases your risk of cancer", body: "Researchers found an association between eating earlier (before 9 p.m.) and a 20% lower risk for breast and prostate cancers compared to people who ate a late dinner (after 10 p.m.) or went to bed right after eating.", sourceName: "USA Today", sourceURL: "https://www.usatoday.com/story/news/nation-now/2018/07/18/early-dinner-time-linked-lower-risk-cancer-says-study/795819002/", sponsorLogo: "", sponsorURL: "")
let dinnerAfter9PM6 = Tip(header: "", title: "Don't make dinner your largest meal of day because it prevents weight loss", body: "A study of 420 overweight and obese people found that \"late eaters,\" people classified as eating their biggest meal after 3 p.m., lost significantly less weight — and took longer to lose it — than \"early eaters,\" those who ate their main meal before 3 p.m.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/why-eating-late-bad-unhealthy-2018-1", sponsorLogo: "", sponsorURL: "")
let dinnerAfter9PM7 = Tip(header: "Health", title: "Eat protein for dinner so your body can build muscle while you sleep", body: "The body rebuilds muscle through a process called protein synthesis. If you go to bed without eating enough protein your body can’t produce enough protein synthesis to rebuild the muscle. \n\nProtein-based snacks like string cheese a handful of almonds, whole grain crackers with a bit of guacamole, greek yogurt, and almond butter with an apple can stabilize your blood sugar when you sleep. Make sure to allow an hour for staying upright before going to sleep for good digestion.", sourceName: "Elle", sourceURL: "https://www.elle.com/beauty/health-fitness/news/a45387/dinner-time-health-myths-facts/", sponsorLogo: "test", sponsorURL: "test")
let dinnerAfter9PM8 = Tip(header: "", title: "After eating, prevent heartburn and acid reflux by staying upright because gravity helps keep the contents in the stomach", body: "Reflux is the result of acid spilling out of the stomach, and lying down with a full stomach makes reflux much more likely.", sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/2014/10/26/opinion/sunday/the-dangers-of-eating-late-at-night.html", sponsorLogo: "", sponsorURL: "")


let dinnerAfter9PMTipArray0 = [dinnerAfter9PM1, dinnerAfter9PM2, dinnerAfter9PM3, dinnerAfter9PM4]
let dinnerAfter9PMTopic0 = Topic(title: dinnerTitle, icon: dinnerIcon, tip: dinnerTipArray0)

// WIP
let dinnerAfter9PMTipArray1 = [dinnerAfter9PM5, dinnerAfter9PM6, dinnerAfter9PM7, dinnerAfter9PM4]
let dinnerAfter9PMTopic1 = Topic(title: dinnerTitle, icon: dinnerIcon, tip: dinnerTipArray1)

// MARK: - AfternoonSnack

let afternoonSnackTitle = "Snack"
let afternoonSnackIcon = "Sna"

let afternoonSnackTip1 = Tip(header: diet, title: "Being thirsty can sometimes be confused with hunger", body: "The body’s thirst signal is similar to the hunger signal, meaning you could reach for a snack when you should be reaching for a drink. Drink water or tea. If you’re still hungry five minutes later, it’s probably actual hunger." , sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/health/healthy-eating/eating-when-not-hungry/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let afternoonSnackTip2 = Tip(header: diet, title: "It's perfectly normal to feel hungry at 3 p.m, just choose the right snacks: protein, healthy fats and veggies", body: "Later in the day our energy levels tend to slump due to a drop in our blood sugar levels. What we're craving is something to bring our sugar levels back up to normal. Instead of chips or a chocolate bar, have yogurt (protein) with fruit (fiber) or a handful of nuts (healthy fat)." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com.au/2016/08/02/this-is-why-you-crave-junk-food-later-in-the-day_a_21443885/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let afternoonSnackTip3 = Tip(header: avoidTemptation, title: "If you have your healthy afternoon snack all ready to go, you're less likely to choose chips and chocolate.", body: "Have your afternoon snack prepared. Crackers and cheese, nuts, or peanut butter on wholegrain toast are great mid afternoon snacks. They can curb a craving without added sugar and saturated fats." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com.au/2016/08/02/this-is-why-you-crave-junk-food-later-in-the-day_a_21443885/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let afternoonSnackTip4 = Tip(header: "Snack", title: "Don't eat your snack while doing something else — like surfing the Internet, watching TV, or working at your desk", body: "Often times we find ourselves mindlessly snacking because of certain emotions or situations (boredom, loneliness, stress). Start to notice when your emotions are fueling your eating and try to find a different outlet for those emotions." , sourceName: "Eating Bird Food", sourceURL: "https://www.eatingbirdfood.com/how-to-stop-mindless-snacking/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
//////////
let afternoonSnackTip5 = Tip(header: "Snack", title: "Drink water. The longevity and well-being of your brain are critically dependent upon consuming water", body: "80% of the brain’s content is water. The brain is so sensitive to dehydration that even a minimal loss of water can cause symptoms like brain fog, fatigue, dizziness, confusion and, more importantly, brain shrinkage." , sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/jesscording/2018/03/12/top-brain-foods/#60668db63a9d", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let afternoonSnackTip6 = Tip(header: "Snack", title: "Avoid sugary foods for a quick energy boost because the effects will be short lived", body: "A candy bar or can of cola will rapidly boost blood sugar levels to give you a quick energy boost. But, your blood sugar levels will drop just as rapidly, leaving you right back where you started." , sourceName: "Weight Loss Resources", sourceURL: "https://www.weightlossresources.co.uk/diet/healthy_eating/beat-afternoon-energy-slump.htm", sponsorLogo: "", sponsorURL: "")

let afternoonSnackTipArray0 = [afternoonSnackTip1, afternoonSnackTip2, afternoonSnackTip3, afternoonSnackTip4]
let afternoonSnackTopic0 = Topic(title: afternoonSnackTitle, icon: afternoonSnackIcon, tip: afternoonSnackTipArray0)

let afternoonSnackTipArray1 = [afternoonSnackTip5, afternoonSnackTip6, afternoonSnackTip3, afternoonSnackTip4]
let afternoonSnackTopic1 = Topic(title: afternoonSnackTitle, icon: afternoonSnackIcon, tip: afternoonSnackTipArray1)

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

//
//
//    let am2 = JournalAdvice(quote: "Journaling helps you solve problems more effectively. Typically we problem solve from a left-brained, analytical perspective. But sometimes the answer can only be found by engaging right-brained creativity and intuition. Writing unlocks these other capabilities, and affords the opportunity for unexpected solutions to seemingly unsolvable problems.", source: "Psych Central", question: "https://psychcentral.com/lib/the-health-benefits-of-journaling/")
//
//    let pm2 = JournalAdvice(quote: "Keeping a journal allows you to track patterns, trends and improvement and growth over time. When current circumstances appear insurmountable, you will be able to look back on previous dilemmas that you have since resolved.", source: "Psych Central", question: "https://psychcentral.com/lib/the-health-benefits-of-journaling/")
//

//

//
//    let pm4 = JournalAdvice(quote: "Journaling gratitude . It also keeps suicidal thoughts and attempts at bay. A study found that gratitude is a protective factor when it comes to suicidal ideation in stressed and depressed individuals. Enhancing our own practice of gratitude can help protect us when we are weakest.", source: "Positive Psychology Program", question: "https://positivepsychologyprogram.com/benefits-gratitude-research-questions/")
//
//


//

//


let journalTitle = "Journal"
let journalIcon = "Jou"

let journalTip1 = Tip(header: success, title: "Journaling helps you clarify your thoughts and feelings", body: "Do you ever seem all jumbled up inside, unsure of what you want or feel? Taking a few minutes to jot down your thoughts and emotions (no editing!) will quickly get you in touch with your internal world." , sourceName: "Psych Central", sourceURL: "https://psychcentral.com/lib/the-health-benefits-of-journaling/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let journalTip2 = Tip(header: journalTitle, title: "Gratitude journaling has a strong positive impact on psychological well-being, self-esteem, and depression", body: "Study: participants who practiced gratitude journaling experienced a 35% reduction in depressive symptoms for as long as the journaling continued. Think of at least one thing that you are greatful for today." , sourceName: "Positive Psychology Program", sourceURL: "https://positivepsychologyprogram.com/benefits-gratitude-research-questions/m", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let journalTip3 = Tip(header: journalTitle, title: "To create a new journaling habit, write less than you feel like writing", body: "When people start journaling they write pages the first day. Then by the second day the thought of writing a page is daunting, and they procrastinate or abandon the exercise. So even if you feel like writing more, force yourself to write no more than one sentence a day." , sourceName: "Essentialism: The Disciplined Pursuit of Less", sourceURL: "https://gregmckeown.com/blog/one-thing-productive-people-reaching-phones/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let journalTip4 = Tip(header: journalTitle, title: "Study: Gratitude journaling can improve your sleep", body: "If you’re having trouble sleeping or just waking up feeling fatigued, try a quick gratitude journaling exercise before bed by writing down what you're thankful for. Participants of a 2 week study who kept a gratitude journal had increased sleep quality and reduced blood pressure." , sourceName: "Positive Psychology Program", sourceURL: "https://positivepsychologyprogram.com/benefits-gratitude-research-questions/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

////////////
let journalTip5 = Tip(header: success, title: "Journaling helps you know yourself better", body: "By writing routinely you will get to know what makes you feel happy and confident. You will also become clear about situations and people who are toxic for you — important information for your emotional well-being." , sourceName: "Psych Central", sourceURL: "https://psychcentral.com/lib/the-health-benefits-of-journaling/", sponsorLogo: "", sponsorURL: "")
let journalTip6 = Tip(header: journalTitle, title: "Journaling is most effective when you don't worry about spelling, grammar, or rules", body: "Write quickly, as this frees your brain from \"shoulds\" and other blocks to successful journaling. You’ll discover that your journal is an all-accepting, nonjudgmental friend. And it may provide the cheapest therapy you will ever get." , sourceName: "Psych Central", sourceURL: "https://psychcentral.com/lib/the-health-benefits-of-journaling/", sponsorLogo: "", sponsorURL: "")
let journalTip7 = Tip(header: journalTitle, title: "Even if you're in a bad mood, five-minutes gratitude journaling a day can increase your long-term well-being by more than 10%", body: "Those who pay attention to what is good in their life instead of what is bad are more likely to feel positively about their life. Gratitude makes us feel more gratitude." , sourceName: "Positive Psychology Program", sourceURL: "https://positivepsychologyprogram.com/benefits-gratitude-research-questions/", sponsorLogo: "", sponsorURL: "")
let journalTip8 = Tip(header: journalTitle, title: "Benjamin Franklin, a founding father of America, stared his day with writing in his journal", body: "His morning routine included setting a plan for the rest of his day and asking himself, \"What good shall I do today?\"" , sourceName: "FastCompany", sourceURL: "https://www.fastcompany.com/3033652/the-morning-routines-of-the-most-successful-people", sponsorLogo: "", sponsorURL: "")


let journalTipArray0 = [journalTip1, journalTip2, journalTip3, journalTip4]
let journalTipArray1 = [journalTip5, journalTip6, journalTip7, journalTip8]

let journalTopic0 = Topic(title: journalTitle, icon: journalIcon, tip: journalTipArray0)
let journalTopic1 = Topic(title: journalTitle, icon: journalIcon, tip: journalTipArray0)


// MARK: - Meditation

let meditationTitle = "Meditation"
let meditationIcon = "Med"

let meditationTip1 = Tip(header: success, title: "Oprah practices sitting still for 20 minutes - twice a day", body: "This once-best-kept secret of the yogis is now common knowledge. Even the corporate world is acknowledging the benefits of meditation and mindfulness for reducing stress, improving productivity, facilitating creativity and maintaining general well-being. \n\nThe weekends can often be busier than week days with attempting to cram in chores, exercise, family commitments, social engagements and more into a 48-hour period. The most successful people take daily time outs for stillness." , sourceName: "LifeHack.org", sourceURL: "https://www.lifehack.org/articles/productivity/12-weekend-habits-highly-successful-people.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let meditationTip2 = Tip(header: reduceStress, title: "Set aside 15 mindful minutes to reduce stress", body: "Spending 10 to 15 minutes each morning with some mindfulness or meditation practice. It grounds us to an intention for how we want to show up during the day, before we start worrying about what we need to get done." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/health/how-effectively-manage-stress-so-it-doesn-t-hurt-your-ncna815626", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let meditationTip3 = Tip(header: success, title: "More than 80% of the world-class performers interviewed by Tim Ferris, author of Tools of Titans, have some form of daily meditation or mindfulness practice", body: "The goal is to cultivate a present-state awareness when it doesn't matter (sitting on the couch for ten minutes) so that you can be nonreactive and focus better later when it does matter (time-sensitive project at work, conversation with a loved one, etc.)." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/quora/the-most-successful-peopl_b_13607676.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let meditationTip4 = Tip(header: success, title: "Meditation helps you become aware of all the voices in your head and recognize the difference between \"you\" and all the noise", body: "If you've never tried it before you may be so used to the different voices that you don't notice them, their thoughts are considered to be your thoughts. \n\nBut, it’s possible to listen to the voices without identifying with them directly. When you meditate you'll develop the ability to hear, and observe, the inner converstaion that's always going on in your head." , sourceName: "Medium", sourceURL: "https://betterhumans.coach.me/better-than-meditation-12532d29f6cd", sponsorLogo: "TBD", sponsorURL: "www.test.com")

///////////

let meditationTip5 = Tip(header: success, title: "Meditation is associated with increased thickness of the cortex—the exact opposite of an effect found in tech addiction", body: "Meditation quiets the brain, reduces stress and stimulation, improves blood flow, and even balances our hormones." , sourceName: "Medium", sourceURL: "https://betterhumans.coach.me/better-than-meditation-12532d29f6cd", sponsorLogo: "", sponsorURL: "")




var meditationTipArray0 = [meditationTip1, meditationTip2, meditationTip3, meditationTip4]

let meditationTopic0 = Topic(title: meditationTitle, icon: meditationIcon, tip: meditationTipArray0)

// MARK: - Mindfulness

let mindfulnessTitle = "Mindfulness"
let mindfulnessIcon = "Min"

let mindfulnessTip1 = Tip(header: reduceStress, title: "Even just 3 to 5 minutes of slow, rhythmic breathing can train your nervous system to be more adaptive", body: "The first thing to do when feeling stressed and anxious is to slow yourself down. The best way to do this is to take some deep breaths: inhale to a count of five and exhale to a count of five." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/health/how-effectively-manage-stress-so-it-doesn-t-hurt-your-ncna815626", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let mindfulnessTip2 = Tip(header: improveHealth, title: "Go for a walk outside reduces blood pressure, while increasing brain activity responsible for relaxation", body: "Research shows that going for a deliberate stroll helped reduce the effects of depression. Known as \"forest bathing,\" is the Japanese practice of simply being in nature. \n\nPro tip: Leave your earbuds at home and just take in the sounds of your neighborhood." , sourceName: "The Thirty", sourceURL: "https://thethirty.byrdie.com/mindfulness-tips-ideas", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let mindfulnessTip3 = Tip(header: navySealAdvice, title: "\"Box breathing\" reduces stress and helps you keep cool under pressure", body: "Focusing on your breath is one of the simplest ways to be more mindful (and in turn, relaxed). Count to 4 as you inhale, hold for 4, count to 4 as you exhale, and hold for 4. Repeat 4x4x4x4." , sourceName: "Curiosity", sourceURL: "https://curiosity.com/topics/box-breathing-is-the-navy-seal-technique-for-reducing-stress-and-staying-calm-curiosity/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let mindfulnessTip4 = Tip(header: mood, title: "Research shows that practicing gratitude immediately boosts your mood", body: "Quickly think of 1 to 3 things you're thankful for, whether its for your family and friends, your health, or the nice weather. Science shows that this exercise is an immediate mood booster." , sourceName: "The Thirty", sourceURL: "https://thethirty.byrdie.com/mindfulness-tips-ideas", sponsorLogo: "TBD", sponsorURL: "www.test.com")

/////////////
let mindfulnessTip5 = Tip(header: improvePerformance, title: "Research show that practicing visualization helps you perform better in real life", body: "Whatever you're stressing about or want to accomplish today, close your eyes and quickly run through it in your head beforehand. \n\nScientists found that weight lifters who simply visualized their workouts were nearly 2 times stronger than those who did nothing at all. Basically, you're helping your brain establish patterns for success.", sourceName: "The Thirty", sourceURL: "https://thethirty.byrdie.com/mindfulness-tips-ideas", sponsorLogo: "LOGO", sponsorURL: "URL")

let mindfulnessTip6 = Tip(header: improvePerformance, title: "Journaling helps to reduce stress and be more present", body: "Writing about anger, sadness and other painful emotions helps to release the intensity of these feelings. By doing so you will feel calmer and better able to stay in the present.", sourceName: "Psych Central", sourceURL: "https://psychcentral.com/lib/the-health-benefits-of-journaling/", sponsorLogo: "", sponsorURL: "")

let mindfulnessTipArray0 = [mindfulnessTip1, mindfulnessTip2, mindfulnessTip3, mindfulnessTip4]
let mindfulnessTipArray1 = [mindfulnessTip5, mindfulnessTip6, mindfulnessTip4, mindfulnessTip3]

let mindfulnessTopic0 = Topic(title: mindfulnessTitle, icon: mindfulnessIcon, tip: mindfulnessTipArray0)
let mindfulnessTopic1 = Topic(title: mindfulnessTitle, icon: mindfulnessIcon, tip: mindfulnessTipArray1)

// MARK: - Gym

let gymTitle = "Gym"
let gymIcon = "Gym"

// 0
let gymTip1 = Tip(header: improvePerformance, title: "Improve performance by drinking 20 ounces of water 2 hours before exercise and drink throughout your workout", body: "During exercise, drink fluids early, and drink at regular intervals to prevent muscle fatigue by replacing fluids lost by sweating." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/diet/features/6-reasons-to-drink-water#3", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let gymTip2 = Tip(header: improvePerformance, title: "Research: People who practiced positive self-talk were able to push harder for longer", body: "You can go a lot harder than you think you can. When you're tired, tell yourself positive, empowering phrases like \"I got this\" or \"I am strong\"." , sourceName: "Time", sourceURL: "https://time.com/4606637/exercise-motivational-skills-training/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let gymTip3 = Tip(header: mentalToughness, title: "When your mind is telling you you're done, you're really only 40% done", body: "When you're doing something difficult and you think you need to stop, don't. You’re only actually 40% done. The 40% rule reminds us that no matter how exhausted we might feel, it is always possible to draw on an untapped reserve of energy and motivation that we all possess." , sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/chrismyers/2017/10/06/the-40-rule-the-simple-secret-to-success/#48c94eea5cdd", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let gymTip4 = Tip(header: bestResults, title: "For better results, shorter but more intensive exercise is more effective than longer drawn-out exercise", body: "To get the best results in your fitness, research has found that shorter but more intensive exercise is more effective than longer drawn-out exercise.  \n\nMost of the growth actually comes during the recovery process. However, the only way to truly recover is by actually pushing yourself to exhaustion during the workout." , sourceName: "ACSM", sourceURL: "https://www.acsm.org/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

// 1
let gymTip5 = Tip(header: navySealAdvice, title: "Former Navy Seal recommends box breathing before each workout", body: "With your nose, inhale for a count of 5, hold for a count of 5, exhale for a count of 5, and hold for a count of 5. Repeat for at least 5 minutes. This leads to a calm, steady mindstate.", sourceName: "SEALFIT", sourceURL: "https://sealfit.com/box-breathing/", sponsorLogo: "ABC", sponsorURL: "URL")
let gymTip6 = Tip(header: navySealAdvice, title: "Positive internal dialogue improves perforance", body: "Override negative thoughts with positive ones. Develop a power statement that you repeat to yourself like: \"Let's go!\" \"I got this!\" \"Feeling good, looking good, oughta be in Hollywood! \"Day by day, in every way, I am getting better and better.\"", sourceName: "8 Weeks to Sealfit", sourceURL: "https://www.amazon.com/Weeks-SEALFIT-Unconventional-Training-Toughness/dp/125004054X", sponsorLogo: "ABC", sponsorURL: "URL")
let gymTip7 = Tip(header: navySealAdvice, title: "Visualize your workout before you start", body: "True warriors through the ages have discovered this secret: you first need to win in your mind; only then can you win in the battleground. Visualize the whole workout with perfect form. Navy SEALs do this before each mission.", sourceName: "8 Weeks to Sealfit", sourceURL: "https://www.amazon.com/Weeks-SEALFIT-Unconventional-Training-Toughness/dp/125004054X", sponsorLogo: "ABC", sponsorURL: "URL")
let gymTip8 = Tip(header: improvePerformance, title: "Perform better during high-instensity training by breathing through your nose", body: "It allows for more deeper breaths into your diaphragm. If you feel you're not getting air, use your mouth to take a few extra gulps of air and then go back to nostril breathing.", sourceName: "8 Weeks to SEALFIT", sourceURL: "https://www.amazon.com/Weeks-SEALFIT-Unconventional-Training-Toughness/dp/125004054X", sponsorLogo: "ABC", sponsorURL: "URL")

// 2
let gymTip9 = Tip(header: mentalToughness, title: "Pre-workout (5-15 minutes): warmup to raise your heart rate and body temperature", body: "A good rule of thumb is to make sure you break a sweat. Activities, like yoga poses, walking slowing and then gradually building into a jog, or cycling at a low intensity and building up to a moderate effort over a few minutes, are good warmups.", sourceName: "Quick And Dirty Tips", sourceURL: "https://www.quickanddirtytips.com/health-fitness/exercise/why-pre-workout-static-stretching-is-actually-dangerous?utm_source=sciam&utm_campaign=sciam", sponsorLogo: "", sponsorURL: "")
let gymTip10 = Tip(header: "Post-Workout", title: "Post-workout (0-10 minutes): stretch to prevent injury", body: "Strech before your muscles have time to cool down, which takes 30-40 minutes. Do 5 minutes of stretching followed by 5 minutes of ironing out the kinks with a foam roller for proper recovery.", sourceName: "Shape", sourceURL: "https://www.shape.com/fitness/tips/3-things-you-need-do-immediately-after-workout", sponsorLogo: "", sponsorURL: "")
let gymTip11 = Tip(header: "Post-Workout", title: "Post-workout (10-20 minutes): shower or change your clothes", body: "Don't wait longer than 30 minutes to shower or change your clothes. Wet clothes trap moisture that encourages the growth of germs, bacteria, fungus and yeast, which could invite a skin infection or cause breakouts.", sourceName: "Shape", sourceURL: "https://www.shape.com/fitness/tips/3-things-you-need-do-immediately-after-workout", sponsorLogo: "", sponsorURL: "")
let gymTip12 = Tip(header: "Post-Workout", title: "Post-workout (20-30 minutes): eat carbs and protein", body: "Eating within the 30-minute window optimizes recovery, helps reduce muscle soreness, and helps you perform better during your next workout.", sourceName: "Shape", sourceURL: "https://www.shape.com/fitness/tips/3-things-you-need-do-immediately-after-workout", sponsorLogo: "", sponsorURL: "")

// 3
let gymTip13 = Tip(header: mentalToughness, title: "Warm up: Do dynamic strecthing, don't do static strecthing", body: "Static stretching, in which hold a stretching position for 5, 10 or 20 seconds, not only reduces performance (less strength, less speed, less power) but it also does not protect us against injury. In contrast, dynamic stretching can improve power, strength, and performance. \n\nGood pre-workout dynamic streches include: arm circles, hip circles, leg swings, walking lunges, and body weight squats.", sourceName: "Quick And Dirty Tips", sourceURL: "https://www.quickanddirtytips.com/health-fitness/exercise/what-is-the-best-way-to-warm-up", sponsorLogo: "", sponsorURL: "")
let gymTip14 = Tip(header: mentalToughness, title: "Don't just workout. Develop a disciplined habit of training.", body: "Training is is lifelong growth of your physical, mental, emotional, and spiritual skills to become a better person. \n\nDon't skip a training session without serious thought. When its cold, you train. When it rains, you train. If you must, make it up.", sourceName: "8 Weeks to SEALFIT", sourceURL: "https://www.amazon.com/Weeks-SEALFIT-Unconventional-Training-Toughness/dp/125004054X", sponsorLogo: "ABC", sponsorURL: "URL")
let gymTip15 = Tip(header: "Gym", title: "Get pumped up by reminding yourself why you are working out", body: "When your're feeling lazy or like you want to quit, remind yourself why you are working out. If you have a powerful reason why, you can get through anything.", sourceName: "Men's Journal", sourceURL: "https://www.mensjournal.com/health-fitness/mental-toughness-training/", sponsorLogo: "", sponsorURL: "")
let gymTip16 = Tip(header: navySealAdvice, title: "Controlling of your breath is one of the most essential tools in life and while exercising", body: "It's a secret practice of ancient yogis and matrial artists use to develop more power, presence, and mental control. Before your workout, perform the box breathing exercise for 5 minutes.", sourceName: "8 Weeks to SEALFIT", sourceURL: "https://www.amazon.com/Weeks-SEALFIT-Unconventional-Training-Toughness/dp/125004054X", sponsorLogo: "ABC", sponsorURL: "URL")
// 4
let gymTip17 = Tip(header: "", title: "Decrease belly fat by strength training 3 times a week", body: "Many experts agree that cardio shouldn't be your main focus. Incorporate strength training to increase your muscle mass to burn more calories and speed up your metabolism.", sourceName: "POPSUGAR", sourceURL: "https://www.popsugar.com/fitness/photo-gallery/45405356/image/45407154/You-Dont-Strength-Train", sponsorLogo: "", sponsorURL: "")
let gymTip18 = Tip(header: "", title: "What is your favorite place to think big?", body: "Facebook COO Sheryl Sandberg said she did her best thinking on the treadmill.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/mark-zuckerberg-bill-gates-best-place-to-think-2018-11", sponsorLogo: "", sponsorURL: "")
let gymTip19 = Tip(header: "", title: "If you do like cardio, skip the hours on the treadmill or bike and do high-intensity interval training (HIIT) workouts", body: "They're the most effective type of cardio proven to target belly fat. It not only works, but it saves you time at the gym.", sourceName: "POPSUGAR", sourceURL: "https://www.popsugar.com/fitness/photo-gallery/45270438/image/45345719/Do-Add-Exercise", sponsorLogo: "", sponsorURL: "")
let gymTip20 = Tip(header: "", title: "Consuming 20 grams of protein after your workout is the best amount to maximize muscle growth", body: "Compared to the 0-gram and 10-gram doses, the 20-gram and 40-gram doses more effectively stimulated muscle protein synthesis—the process that helps promote the muscle repair and growth after exercise. However, the 40-gram dose didn’t produce any added benefit. Whey protien powder, milk, or yogurt are good post-workout options.", sourceName: "Men's Health", sourceURL: "https://www.menshealth.com/fitness/a19520629/how-much-post-workout-protein-do-you-really-need/", sponsorLogo: "", sponsorURL: "")
// 5


let gymTipArray0 = [gymTip1, gymTip2, gymTip3, gymTip4]
let gymTipArray1 = [gymTip5, gymTip6, gymTip7, gymTip8]
let gymTipArray2 = [gymTip9, gymTip10, gymTip11, gymTip12]
let gymTipArray3 = [gymTip13, gymTip14, gymTip15, gymTip16]
var gymTipArray4 = [gymTip17, gymTip18, gymTip19, gymTip20]

let gymTopic0 = Topic(title: gymTitle, icon: gymIcon, tip: gymTipArray0)
let gymTopic1 = Topic(title: gymTitle, icon: gymIcon, tip: gymTipArray1)
let gymTopic2 = Topic(title: gymTitle, icon: gymIcon, tip: gymTipArray2)
let gymTopic3 = Topic(title: gymTitle, icon: gymIcon, tip: gymTipArray3)
let gymTopic4 = Topic(title: gymTitle, icon: gymIcon, tip: gymTipArray4)

// MARK: - FITNESS GOALs
// MORNING
let fitGoalTip1 = Tip(header: "Lose Weight", title: "Burn 20% more fat by exercising in the morning", body: "When we first wake up, having not eaten for at least 8 hours, our blood surgar is low. Since we need blood sugar to fuel a run, morning exercise will use the fat stored in our tissues to supply the energy we need. (When we exercise after eating, we use the energy from the food we've just consumed.) In many cases, morning exercise may burn 20% more fat than later, post-food workouts.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
let fitGoalTip2 = Tip(header: "Boost Mood", title: "", body: "Cario workouts-swimming, running, and walking the dog-can elevate mood. When we exercise in the morning, we enjoy these effects all day. If you wait to exercise until the evening, you'll end up sleeping through some of the good feelings.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
let fitGoalTip3 = Tip(header: "Keep a Routine", title: "", body: "Some studies suggest that we're more likely to stick to our workout routine when we do it in the morning. So if you find yourself struggling to stick with a plan, morning exercise, especially if you enlist a regular partner, can help you form a habit.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
let fitGoalTip4 = Tip(header: "Build Strength", title: "", body: "Testosterone levels peak in the morning. Testosterone helps build muscle, so if you're doing weight training, schedule your workout for those early-morning hours.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
// AFTERNOON, EVENING
let fitGoalTip5 = Tip(header: "Avoid Injury", title: "", body: "When our muscles are warm, they're more elastic and less prone to injury. That's why they call what we do at the beginning of our workout a \"warm-up.\" Our body temperature is low when we first wake up, rises steadily throughout the day, and peaks in the late afternoon and early evening. That means that in later-in-the-day workouts our muscles are warmer and injuries are less common.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
let fitGoalTip6 = Tip(header: "Perform your best", title: "", body: "Working out in the afternoons not only means that you're less likely to get injured, it also means that you're less likely to get injured, it also helps you sprint faster and life more. Lung function is highest this time of the day, so you're circulation system can distribute more oxygen and nutrients. This is also the time of day when strength peaks, reaction time quickens, hand-eye coordination sharpens, and heart rate and blood pressure drop. These factors make it a great time to put on your best athletic performance. In fact, a disproportionate number of Olympic records, especially in running and swimming, are set in the late afternoon and early evening.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
let fitGoalTip7 = Tip(header: "Enjoy the workout", title: "", body: "People typically perceive that they're exerting themselves a little less in the afternoon even if they're doing exactly the same exercise routine as in the morning.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")// Page 63

// MARK: - Running

let runningTitle = "Running"
let runningIcon = "Run"

let runningTip1 = Tip(header: improvePerformance, title: "The American College of Sports Medicine recommends that people drink 17 ounces of fluid 2 hours before exercise", body: "During exercise, they recommend that people start drinking fluids early, and drink them at regular intervals to prevent muscle fatigue and replace fluids lost by sweating." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/diet/features/6-reasons-to-drink-water#3", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let runningTip2 = Tip(header: runningTitle, title: "Run faster by adding short sprints into your endurance training on a regular basis", body: "You won’t make performance gains if you always run at the same speed. Work short speedwork into one of your long-distance runs to vary the pace. \n\nDuring an acceleration, you slowly, but steadily increase your running speed from a recovery pace to a sprint over a distance of 80-100 m.! A deceleration begins with a sprint and gradually slows down to a jog." , sourceName: "Runtastic", sourceURL: "https://www.runtastic.com/blog/en/5-effective-tips-for-improving-your-running-performance/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let runningTip3 = Tip(header: runningTitle, title: "Run with better form by landing on the midsole of your foot", body: "Landing on your forefoot (instead of your heels) allows your muscles to catch the weight of your body in flight, reducing the effects of impact on the joints and bones. \n\nAvoid running with a heel landing first because it can contribute to back and knee pain.", sourceName: "Shape", sourceURL: "https://www.shape.com/fitness/cardio/10-ways-improve-your-running-technique", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let runningTip4 = Tip(header: runningTitle, title: "Take short effective strides to conserve energy and reduce joint pain", body: "Stand tall and lean forward, and when you feel like you are going to fall, step forward just enough to catch yourself. This should be the length of your stride. Taking long strides while you run is inefficient and an energy drain. \n\nShorter strides help to reduce the movement within any joint (for running, this means the joints of the ankles, knees, and hips), and less movement means a longer, healthier life for these joints." , sourceName: "Shape", sourceURL: "https://www.shape.com/fitness/cardio/10-ways-improve-your-running-technique", sponsorLogo: "TBD", sponsorURL: "www.test.com")

var runningTipArray0 = [leadershipGrid1, leadershipGrid2, runningTip3, runningTip4]

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

let barTip1 = Tip(header: beer, title: "Reduce your chances of getting a migraine by drinking beer in a bottle instead of on tap", body: "Beer on tap has about 25 times the migraine-inducing tyramine as beer in bottles. So if you really want a cold one, ask for a bottle. Or change it up and order a bourbon. It doesn’t have any of the stuff." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/migraines-headaches/ss/slideshow-food-migraines?ecd=wnl_din_121716&ctr=wnl-din-121716_nsl-ld-stry_1&mb=aT%2fNo%2fMfdXIeXdniBtn11BXFE73IOX1chB5LGA9kRyM%3d", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let barTip2 = Tip(header: qualityOfSleep, title: "Alcohol will help you fall asleep, but it will reduce the quality of your sleep", body: "Drinking within 3 hours of bedtime helps you fall asleep — alcohol is a depressant. But once the alcohol is metabolized hours later, you’re more likely to wake up or start tossing and turning." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/2014/12/14/bedtime-rituals_n_6309564.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let barTip3 = Tip(header: health, title: "Drinking once a day or 5 to 10 alcoholic drinks a week is likely to shortern your life by up to 6 months", body: "While non-fatal heart attacks are less likely in people who drink alcohol, scientists say this benefit is swamped by the increase of other forms of heart disease including fatal heart attacks and stroke. \n\nIf you already drink, drinking less may help you live longer and lower your risk of several cardiovascular conditions." , sourceName: "BBC News", sourceURL: "https://www.bbc.com/news/health-43738644", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let barTip4 = Tip(header: health, title: "After a night of drinking, drink coffee in the morning because it can protect your liver from damage casused by too much alcohol", body: "Studies show that drinking 2 to 3 cups a day can protect your liver from damage caused by too much alcohol or an unhealthy diet. Some research suggests it may lower your risk of liver cancer." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/hepatitis/ss/slideshow-best-and-worst-foods-for-your-liver?ecd=wnl_spr_120616_REMAIL&ctr=wnl-spr-120616-REMAIL_nsl-ld-stry_1&mb=aT%2fNo%2fMfdXIeXdniBtn11BXFE73IOX1chB5LGA9kRyM%3d", sponsorLogo: "TBD", sponsorURL: "www.test.com")

/////////////
let barTip5 = Tip(header: "Bar", title: "Avoid lemon and lime slices and other garnishes added to your drink", body: "A study of 76 lemons at 21 different restaurants in The Journal of Environmental Health found that 70% of them contained microbial growth. Of the positive culture results, 13% were E. coli.", sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/menu-items-never-order/", sponsorLogo: "", sponsorURL: "")

let barTip6 = Tip(header: diet, title: "The sweet-and-fancy drinks have more calories and increases your food cravings", body: "If you're going to drink, have something straight up and simple like wine or beer." , sourceName: "CNN", sourceURL: "https://www.cnn.com/2013/04/03/health/wine-waistline/index.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let barTip7 = Tip(header: health, title: "Drinking three or four drinks drinks on one night is worse for you body than drinking one drink a day", body: "In addition, to the hundreds of extra calories from alcohol, all those drinks increase your blood sugar. This makes you hungrier and because you're tipsy, you have less self-control when it comes overeating unhealthy foods." , sourceName: "CNN", sourceURL: "https://www.cnn.com/2013/04/03/health/wine-waistline/index.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let barTip8 = Tip(header: "Bar", title: "When trying to talk with someone you don't know, start with playful banter", body: "It helps you to get the other person to have fun, laugh, and relax. Compare this to more serious conversation starters like \"What do you do for a living\" and \"Where do you live\" which can create stress by demanding personal information from a total stranger.", sourceName: "The Art of Charm", sourceURL: "https://theartofcharm.com/building-a-connection/what-to-say-to-a-girl-you-meet-at-a-bar/", sponsorLogo: "", sponsorURL: "")

//////////
let barTip9 = Tip(header: "Bar", title: "Beer has more calories than wine and hard alcohol", body: "A standard 12-ounce beer contains about 150 calories; a light beer, about 110 calories. For comparison, a 5½-ounce glass of wine or a 1½-ounce shot of hard liquor provides about 100 calories. Since all these beverages contain approximately the same amount of alcohol, you can see that regular beer does have extra calories.", sourceName: "Harvard Health Publishing", sourceURL: "https://www.health.harvard.edu/healthbeat/giving-thanks-can-make-you-happier", sponsorLogo: "", sponsorURL: "")
let barTip10 = Tip(header: "Bar", title: "No amount of alcohol is good for your overall health, global study says", body: "Drinking alcoholic beverages is linked to some 2.8 million deaths each year. The chemical in beer, wine and hard liquor is associated with nearly one in 10 deaths in people ages 15 to 49 around the world. Any health benefits of drinking are outweighed by the combined health risks.", sourceName: "Bloomberg", sourceURL: "https://www.bloomberg.com/news/articles/2018-08-23/no-amount-of-alcohol-use-is-safe-analysis-of-studies-finds", sponsorLogo: "", sponsorURL: "")
let barTip11 = Tip(header: "Bar", title: "Limit alcohol and soda to avoid belly fat because they offer no nutrition", body: "Excessive alcohol will cause the liver to stop metabolizing fat and carbohydrates in order to get the alcohol metabolized first. This leads to the storage of more fat in your body (and your belly).", sourceName: "POPSUGAR", sourceURL: "https://www.popsugar.com/fitness/photo-gallery/45405356/image/45407022/You-Drink-Your-Calories", sponsorLogo: "", sponsorURL: "")


var barTipArray0 = [barTip1, barTip2, barTip3, barTip4]
let barTopic0 = Topic(title: barTitle, icon: barIcon, tip: barTipArray0)

var barTipArray1 = [barTip5, barTip6, barTip7, barTip8]
let barTopic1 = Topic(title: barTitle, icon: barIcon, tip: barTipArray1)

var barTipArray2 = [barTip9, barTip10, barTip11, barTip8]
let barTopic2 = Topic(title: barTitle, icon: barIcon, tip: barTipArray2)

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

let cafeTip1 = Tip(header: health, title: "Caffeine (in moderation) may help you live longer", body: "If you take your coffee daily, and abstain from smoking, you’re likely to live longer than the average adult." , sourceName: "New England Journal of Medicine", sourceURL: "https://www.nejm.org/doi/full/10.1056/NEJMoa1112010", sponsorLogo: "", sponsorURL: "")
let cafeTip2 = Tip(header: loseWeight, title: "Coffee can help you lose weight as long as your don't add sugar or cream", body: "Coffee stimulates your metabolismm which can help you lose weight, but only a little. Don't count on this for weight loss, especially if you add calories with toppings." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/diet/ss/slideshow-fat-fighting-foods?ecd=wnl_din_112616&ctr=wnl-din-112616_nsl-ld-stry_1&mb=aT%2fNo%2fMfdXIeXdniBtn11BXFE73IOX1chB5LGA9kRyM%3d%22,%22Source:%20WebMD", sponsorLogo: "", sponsorURL: "")
let cafeTip3 = Tip(header: health, title: "Unless you specify your milk preference, Starbucks will automatically give you 2% milk, and most other restaurants will give you whole milk", body: "If you're ordering a \"fancy\" coffee, then you should consider nonfat milk. For example, a tall nonfat latte at Starbucks is 100 calories, whereas the same drink with 2% milk is 150 calories. 50 calories adds up over time." , sourceName: "U.S. News & World Report", sourceURL: "https://health.usnews.com/health-news/blogs/eat-run/2014/02/26/how-to-order-a-healthy-cup-of-coffee", sponsorLogo: "", sponsorURL: "")
let cafeTip4 = Tip(header: health, title: "Green tea increases metabolism to help you burn fat and helps to decrease cancer risk", body: "To get higher levels of cancer-fighting antioxidants, it's best to brew tea yourself and drink it hot. Iced tea and ready-to-drink green teas have less antioxidants." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/hepatitis/ss/slideshow-best-and-worst-foods-for-your-liver?ecd=wnl_spr_120616_REMAIL&ctr=wnl-spr-120616-REMAIL_nsl-ld-stry_1&mb=aT%2fNo%2fMfdXIeXdniBtn11BXFE73IOX1chB5LGA9kRyM%3d", sponsorLogo: "TBD", sponsorURL: "www.test.com")

/////////////////
let cafeTip5 = Tip(header: health, title: "Drinking coffee, tea and other beverages at temperatures hotter than 149 degrees Fahrenheit may lead to esophagus cancer", body: "Beverages that are too hot can injure cells in the esophagus and lead to the formation of cancer cells. But, scientists said coffee at cooler temperatures is safe to drink and may decrease the risk of liver cancer by 15%." , sourceName: "USA Today", sourceURL: "https://www.usatoday.com/story/news/2016/06/15/who-drinking-extremely-hot-coffee-tea-probably-causes-cancer/85923476/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let cafeTip6 = Tip(header: health, title: "For the least amount of calories, order a cup of plain, black coffee", body: "Researchers found that one cup of certain kinds of specialty coffee drinks contain up to half your daily requirement of calories, plus all of your sugar and fat for the day. If you like sweetness or a little milk, add it yourself so that you know exactly what's going in your cup of coffee shop." , sourceName: "Shape", sourceURL: "https://www.shape.com/healthy-eating/healthy-drinks/3-tips-lighten-your-coffee-order", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let cafeTip7 = Tip(header: loseWeight, title: "Coffee may help prevent diseases like stroke and certain cancers, lower risk of Parkinson's and dementia, and boost concentration and memory", body: "But, remember: caffeine is a drug and can become an addiction. Experts say 400 milligrams of caffeine a day is a safe amount — about the amount in four 8-ounce cups of coffee." , sourceName: "Mayo Clinic", sourceURL: "https://www.mayoclinic.org/healthy-lifestyle/nutrition-and-healthy-eating/in-depth/caffeine/art-20045678", sponsorLogo: "", sponsorURL: "")
let cafeTip8 = Tip(header: health, title: "Watch your calories: Every time you add syrup to a coffee beverage, you're adding a whole lot of calories", body: "Skip syrup altogether and simply sprinkle a little cinnamon, vanilla or chocolate powder or nutmeg for added flavor. Another idea is to order your beverage with soy milk instead of regular milk; it tastes sweeter." , sourceName: "U.S. News & World Report", sourceURL: "https://health.usnews.com/health-news/blogs/eat-run/2014/02/26/how-to-order-a-healthy-cup-of-coffee", sponsorLogo: "", sponsorURL: "")

// 3 (WIP)
let cafeTip9 = Tip(header: health, title: "Drinking coffee is associated with a lower risk of death", body: "A study of 400,000+ people found that drinking coffee (decaf, ground, and instant) reduced the risk of death from cardiovascular disease and some cancers." , sourceName: "The Journal of the American Medical Association", sourceURL: "https://jamanetwork.com/journals/jamainternalmedicine/article-abstract/2686145", sponsorLogo: "", sponsorURL: "")
let cafeTip10 = Tip(header: health, title: "What is your favorite place to think big?", body: "LinkedIn cofounder Reid Hoffman said he does his best thinking in places that are brand new to him, like a cafe he's never been to before." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/mark-zuckerberg-bill-gates-best-place-to-think-2018-11", sponsorLogo: "", sponsorURL: "")


let cafeTipArray0 = [cafeTip1, cafeTip2, cafeTip3, cafeTip4]
let cafeTipArray1 = [cafeTip5, cafeTip6, cafeTip7, cafeTip8]
let cafeTipArray2 = [cafeTip9, cafeTip10, cafeTip8, cafeTip4]

let cafeTopic0 = Topic(title: cafeTitle, icon: cafeIcon, tip: cafeTipArray0)
let cafeTopic1 = Topic(title: cafeTitle, icon: cafeIcon, tip: cafeTipArray1)
let cafeTopic2 = Topic(title: cafeTitle, icon: cafeIcon, tip: cafeTipArray1)

// MARK: - PM Cafe

let cafePMTip1 = Tip(header: health, title: "Avoid caffeine after 2 p.m. to prevent sleep disruption", body: "Caffeine after 2 p.m. can cause problems for your sleep, even if you aren’t aware of it. One study found that caffeine consumed 0, 3, and 6 hours before bedtime significantly reduced sleep amounts by more than 1 hour." , sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/sleep-newzzz/201312/new-details-caffeine-s-sleep-disrupting-effects", sponsorLogo: "GM_logo", sponsorURL: "https://gm.com")

let cafePMTip2 = Tip(header: health, title: "Decaf coffee has a little caffeine. USDA regulations require decaf coffee to be 97% caffeine-free", body: "While a 3% dose of caffeine may seem relatively small, it might be enough to keep you awake at night. If you’re drinking decaf coffee to avoid caffeine then you might be better off playing it safe with green tea, instead." , sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/food/fun/how-much-caffeine-is-in-decaf-coffee/", sponsorLogo: "", sponsorURL: "")

let cafePMTip3 = Tip(header: health, title: "The Mayo Clinic advises adults to limit their caffeine intake to 400 mg per day, or the equivalent of about 2 to 3 coffees", body: "Caffeine levels can differ based on the type of coffee. For example, 1.5 cups of Starbucks gives you 400 mg of caffeine. Too much caffeine comes with risks, including migraine headaches, irritability, upset stomach, and insomnia." , sourceName: "Inc.", sourceURL: "https://www.inc.com/business-insider/healthy-daily-routine-habits-according-to-science.html", sponsorLogo: "GM_logo", sponsorURL: "https://gm.com")

let cafePMTip4 = Tip(header: health, title: "If you need an \"afternoon coffee break\", drink between 1:30 pm and 5:00 pm for best results", body: "You body releases cortisol, a hormone which makes us feel alert and awake. The time of peak cortisol levels in the afternoon for most people are between 12:00-1:00 pm and 5:30-6:30 pm. Therefore, time your \"afternoon coffee break\" between 1:30 pm and 5:00 pm to take advantage of the dips in your cortisol levels when you need a boost the most." , sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/sleep-newzzz/201312/new-details-caffeine-s-sleep-disrupting-effects", sponsorLogo: "GM_logo", sponsorURL: "https://gm.com")


//2 (WIP)
let cafePMTip5 = Tip(header: health, title: "Avoid caffeine use past noon each day to sleep well tonight", body: "Our sleep is closely tied to our body's natural circadian rhythm. Caffeine can throw off your circadian rhythm by delaying the release of melatonin, a hormone in your body that helps you fall asleep, by approximately 40 minutes." , sourceName: "Bustle", sourceURL: "https://www.bustle.com/articles/145170-7-tips-for-maintaining-a-regular-sleep-schedule-because-consistency-is-important", sponsorLogo: "", sponsorURL: "")
let cafePMTip6 = Tip(header: health, title: "Caffeine consumed 6 hours before bed lowers sleep quality", body: "Researchers found that sleep quality was diminished for people who consumed caffeine 6 hours before bed. While participants might not have felt the caffeine in their body, it still affected their sleep amounts by over an hour." , sourceName: "Medium", sourceURL: "https://medium.com/the-mission/the-latest-time-you-should-drink-coffee-according-to-science-8c1db17bca21", sponsorLogo: "", sponsorURL: "")


let cafePMTipArray0 = [cafePMTip1, cafePMTip2, cafePMTip3, cafePMTip4]
let cafePMTipArray1 = [cafePMTip5, cafePMTip6, cafePMTip4, cafePMTip3]

let cafePMTopic0 = Topic(title: cafeTitle, icon: cafeIcon, tip: cafeTipArray0)

// MARK: - BREAKS

let breakTitle = "Break"
let breakIcon = "Bre"

let breakAMTip1 = Tip(header: breakTitle, title: "Take a 17 minute break every 52 minutes", body: "One study found the top 10% of productive people all worked an average of 52 minutes before taking a 17 minute break. Working for any longer can cause cognitive boredom. By knowing you have a break coming up, you’re more likely to stay focused and work with purpose. And taking regular breaks will improve your health." , sourceName: "Fast Company", sourceURL: "https://www.fastcompany.com/40475204/youre-taking-breaks-the-wrong-way-heres-how-to-fix-that", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let breakAMTip2 = Tip(header: breakTitle, title: "High efficiency breaks = walking outside, especially in green spaces. Low efficiency breaks = Scrolling through the news or social media", body: "Researchers found that just 10 minutes of exercise is enough to boost memory and attention performance throughout the day. Additionally, workers with more exposure to natural light during the day improved their sleep and slept an average of 46 minutes more per night." , sourceName: "Fast Company", sourceURL: "https://www.fastcompany.com/40475204/youre-taking-breaks-the-wrong-way-heres-how-to-fix-that", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let breakAMTip3 = Tip(header: breakTitle, title: "Increase meditative state by walking in green spaces, not in busy streets", body: "Compared to city shopping streets and busy business areas, feelings of a meditative state were the highest when the participants walked through green spaces, as well as less frustration. \n\nThe findings don’t mean the green space triggered a meditative state — rather, the energy required to walk through a green space is more \"effortless.\"" , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/2013/03/29/green-space-meditation-brain-walk-park_n_2964199.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let breakAMTip4 = Tip(header: breakTitle, title: "Take vision breaks from looking at digital devices because your eyes will strain in as little as 2 hours", body: "The 20-20-20 exercise to reduce your eye fatigue: Every 20 minutes look away from your computer screen and focus on an item at least 20 feet away for at least 20 seconds." , sourceName: "Medium", sourceURL: "https://medium.com/the-mission/digital-eye-strain-is-destroying-your-eyes-4ac7f8e87b24", sponsorLogo: "TBD", sponsorURL: "www.test.com")

///////
let breakAMTip5 = Tip(header: breakTitle, title: "Longer breaks are good, but it’s beneficial to take frequent short breaks", body: "Researcher found that more short breaks were associated with higher levels of energy, concentration and motivation, suggesting that employees should be encouraged to take more frequent short breaks to facilitate recovery." , sourceName: "Baylor University", sourceURL: "https://www.baylor.edu/mediacommunications/news.php?action=story&story=159785", sponsorLogo: "", sponsorURL: "")
let breakAMTip6 = Tip(header: breakTitle, title: "Take breaks by doing things you choose to do and things you like to do", body: "A common belief exists that doing things that are non-work-related are more beneficial. One study found there was no evidence to prove that non-work-related activities were more beneficial. Finding something on your break that you prefer to do – something that’s not given to you or assigned to you – are the kinds of activities that are going to make your breaks much more restful and help you come back to work stronger." , sourceName: "Baylor University", sourceURL: "https://www.baylor.edu/mediacommunications/news.php?action=story&story=159785", sponsorLogo: "", sponsorURL: "")
let breakAMTip7 = Tip(header: breakTitle, title: "In high-stress occupations, social breaks - talking with coworkers about something other than work-are more effective at reducing stress and improving mood than either cognitive breaks (checking the news) or nutrition breaks (getting a snack)", body: "Social breaks cut down on errors and reduce turnover; workers who take social breaks are more likely to stay at their jobs." , sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
let breakAMTip8 = Tip(header: breakTitle, title: "Nature breaks are better for increasing happiniess than indoor breaks", body: "People who take short walks outdoors return with better moods than people who walk indoors. Looking out a window into nature is a better micro-break than looking at a wall. Even taking a break indoors surrounded by plants is better than an area with no plants." , sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")

// AM Break
var breakTipArray0 = [breakAMTip1, breakAMTip2, breakAMTip3, breakAMTip4]
let breakTopic0 = Topic(title: breakTitle, icon: breakIcon, tip: breakTipArray0)

var breakTipArray1 = [breakAMTip5, breakAMTip6, breakAMTip7, breakAMTip8]
let breakTopic1 = Topic(title: breakTitle, icon: breakIcon, tip: breakTipArray1)

// PM BREAKS
let breakPMTip1 = Tip(header: breakTitle, title: "An afternoon nap increases the brain's capacity to learn", body: "Napping increases short-term memory, mood, alertness, and cognitive performance. Researchers found that nappers were twice as likely to solve a complex problem than non-nappers." , sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")// PM
let breakPMTip2 = Tip(header: breakTitle, title: "The ideal naps are between 10 and 20 minutes", body: "A study found that 5 minute naps did little to reduce fatigue, increase health, or sharpen thinking. But 10-20 minute naps improved alertness and mood that lasted nearly 3 hours. But naps longer than 20 minutes cause our brains to enter the deeper stages of sleep, making you feel groggy when you wake up." , sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")// PM
let breakPMTip3 = Tip(header: breakTitle, title: "Perform better by consuming caffeine and then taking a nap", body: "Caffeine takes about 25 minutes to enter the bloodstream. Researchers have found that caffeine, usually in the form of coffee, followed by a nap of 10-20 minutes, is the ideal technique for reducing sleepiness and increasing perfomance. The study found that the group that ingested caffeine and then had a nap performed better than the caffeine-only group." , sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
let breakPMTip4 = Tip(header: "Lunch", title: "Take a 10-minute walk when tiredness hits, preferably outside", body: "The fresh air will help you feel more alert. Plus, a quick brisk walk will improve your circulation and help you breathe more deeply so you take in more oxygen – an essential ingredient for the brain." , sourceName: "Weight Loss Resources", sourceURL: "https://www.weightlossresources.co.uk/diet/healthy_eating/beat-afternoon-energy-slump.htm", sponsorLogo: "", sponsorURL: "")
/////
let breakPMTip6 = Tip(header: breakTitle, title: "A brief nap can speed up cognitive processing, decrease errors, and increase stamina this afternoon", body: "One study found that as little as 8 minutes of sleep during the day was enough to significantly improve memory. Organizations such as Google and PriceWaterhouseCoopers have nap pods for employees, understanding that 20 minutes of naptime can make people more productive in the afternoon." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/09/sleep-well-lead-better", sponsorLogo: "", sponsorURL: "")
let breakPMTip7 = Tip(header: breakTitle, title: "People who nap are 37% less likely to die from heart disease", body: "Napping strengthens our immune system and overall health. Healthy adults should ideally nap for 10-20 minutes." , sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
let breakPMTip8 = Tip(header: "", title: "A person's creative output increased by 60% when they were walking, study finds", body: "The study showed that it doesn't matter if you're outside or inside. It's the actual walking that matters, not the environment. A person who walked indoors, on a treadmill facing a blank wall, or outside all produced twice as many creative responses compared to someone sitting down.  And creativity continued even after a person sat back down after his/her walk." , sourceName: "Inc.", sourceURL: "https://www.inc.com/laura-garnett/this-is-scientific-reason-steve-jobs-went-for-walks.html", sponsorLogo: "", sponsorURL: "")
let breakPMTip9 = Tip(header: "", title: "What is your favorite place to think big?", body: "Microsoft founder Bill Gates said he thinks big while on walks. \n\nEvan Williams, founder of Blogger and Medium, said he thinks big whenever he's moving: \"Walking anywhere.\"" , sourceName: "Inc.", sourceURL: "https://www.inc.com/laura-garnett/this-is-scientific-reason-steve-jobs-went-for-walks.html", sponsorLogo: "", sponsorURL: "")

// PM BREAK
var breakPMTipArray0 = [breakPMTip1, breakPMTip2, breakPMTip3, breakPMTip4]
let breakPMTopic0 = Topic(title: breakTitle, icon: breakIcon, tip: breakTipArray0)


// MARK: - Date

let dateTitle = "Date"
let dateIcon = "Dat"

let dateTip1 = Tip(header: dateTitle, title: "Put your phone away. A study found that the mere presence of a cell phone during conversation lowers relationship development", body: "Cell phones, even when not being used, can intrude into awareness when you see a cell phone. You find yourself thinking about all the things you could be doing with your cell phone. Once those thoughts enter awareness, you may devote less attention to this new person." , sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/mental-mishaps/201407/date-you-and-our-cell-phones", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let dateTip2 = Tip(header: dateTitle, title: "If you keep conversation fun, your date is more likely to come away in a good mood and feeling more positive towards you", body: "Ask them about their family, favorite trips and find out what they are passionate about. Showing interest in someone and letting them feel heard is very attracting. \n\nConversly, if you complain or ask something associated with a negative topic, they'll think the same of you." , sourceName: "The Independent", sourceURL: "https://www.independent.co.uk/life-style/love-sex/first-date-rules-for-men-women-conversation-negative-topics-politics-james-preece-a8288116.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
 
let dateTip3 = Tip(header: dateTitle, title: "Body language signs that show your date is into you", body: "Good eye contact, smiling, leaning in when you speak, laughing at your jokes, blushing, open posture, mirroring your actions, angling their body towards you, and they make physical contact." , sourceName: "Ask Men", sourceURL: "https://www.askmen.com/top_10/dating/10-first-date-success-signs.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let dateTip4 = Tip(header: dateTitle, title: "Eat these aphrodisiac foods to increase romance", body: "Eat: Oysters, chili peppers, dark chocolate, whipped cream, coffee, chai tea, watermelon, bananas, strawberries, cherries, figs, nuts, olive oil, avocado, arugula, asparagus, and artichokes." , sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/food/fun/aphrodisiac-foods/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

/////////////
let dateTip5 = Tip(header: dateTitle, title: "Research: People who had asked a lot of questions on their first dates, were much more likely to get asked out on second dates", body: "Self-disclosure feels good. By asking your date questions, they attribute that enjoyment to you, the question asker, which causes your date to like you more. So asking more questions during a date makes you more likeable and more likely to get a second date.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/ideacast/2016/06/asking-for-advice-makes-people-think-youre-smarter.html", sponsorLogo: "", sponsorURL: "")

let dateTip6 = Tip(header: "Date", title: "On dates, both genders reported feeling a spark when the conversations were mainly about the women, and when men demonstrated alignment with the women", body: "Women are typically more selective about who they are willing to go out with. So talking about the woman is a good strategy toward building a connection. Women reported a sense of connection to men who used appreciative language (\"That's awesome\" or \"Good for you\") and sympathy (\"That must be tough on you\").", sourceName: "Stanford University", sourceURL: "https://news.stanford.edu/news/2013/may/jurafsky-mcfarland-dating-050613.html", sponsorLogo: "", sponsorURL: "")

var dateTipArray0 = [dateTip1, dateTip2, dateTip3, dateTip4]
let dateTopic0 = Topic(title: dateTitle, icon: dateIcon, tip: dateTipArray0)

var dateTipArray1 = [dateTip5, dateTip2, dateTip4, dateTip3]
let dateTopic1 = Topic(title: dateTitle, icon: dateIcon, tip: dateTipArray1)

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

let groceryStoreTip8 = Tip(header: "Grocery Store", title: "Buy what you and your family is realistically going to eat. Buying in bulk only saves money if you actually eat it", body: "In the United States, food waste consumes between 30% to 40% of the food supply. That doesn’t just hurt your wallet, but the planet, too.", sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/2018/07/03/smarter-living/the-terms-on-a-food-label-to-ignore-and-the-ones-to-watch-for.html?rref=collection%2Fsectioncollection%2Fsmarter-living&action=click&contentCollection=smarter-living&region=stream&module=stream_unit&version=latest&contentPlacement=3&pgtype=sectionfront", sponsorLogo: "", sponsorURL: "")

///////////////
let groceryStoreTip9 = Tip(header: "Grocery Store", title: "The average household wastes 20% of their groceries, costing them $2,000 per year", body: "That's because people impulse-buy at the supermarkets, giving in to the psychological tactics stores use to encourage consumers to shop more. Plan ahead by making a shopping list.", sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2015/04/22/americas-165-billion-food-waste-problem.html", sponsorLogo: "", sponsorURL: "")

let groceryStoreTip10 = Tip(header: "Grocery Store", title: "Look for foods with less than 20% daily value of sodium and saturated fat, less than 10 grams of added sugar, and a nice amount of fiber", body: "The FDA requires that labels of nutrition facts include added sugars and serving size. Even supposed \"single-serving\" packages can contain multiples.", sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/2018/07/03/smarter-living/the-terms-on-a-food-label-to-ignore-and-the-ones-to-watch-for.html?rref=collection%2Fsectioncollection%2Fsmarter-living&action=click&contentCollection=smarter-living&region=stream&module=stream_unit&version=latest&contentPlacement=3&pgtype=sectionfront", sponsorLogo: "", sponsorURL: "")

let groceryStoreTip11 = Tip(header: "Grocery Store", title: "Ads like ten for $10 sound like a great deal. However, you'll get the same savings even if you only buy one item", body: "A survey found that people bought way more items when they saw 10 for $10 deals vs. five for $5 and one for $1 sales. Even if you aren't buying 10 items, your mind will trick you into thinking that the item is such a great deal that you end up buying more of it.", sourceName: "Pop Sugar", sourceURL: "https://www.popsugar.com/smart-living/Supermarket-Psychology-Tricks-18344600?stream_view=1#photo-18474488", sponsorLogo: "", sponsorURL: "")

let groceryStoreTip12 = Tip(header: "Grocery Store", title: "Supermarkets place the higher priced items at eye level", body: "Anything a store wants customers to buy is placed at eye level so it's easy to find. Look above and below for similar items with lower prices and fewer markups.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/tricks-stores-use-to-make-you-spend-more-money-2015-10#-9", sponsorLogo: "", sponsorURL: "")

////////////

let groceryStoreTip13 = Tip(header: "Grocery Store", title: "Supermarkets place the bakery and flower departments at the entrance because the bright colors and appealling smells are used to get you to buy more", body: "Their appealing smell activates your salivary glands, making you more likely to purchase on impulse.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/tricks-stores-use-to-make-you-spend-more-money-2015-10#-5", sponsorLogo: "", sponsorURL: "")

let groceryStoreTip14 = Tip(header: "Grocery Store", title: "Supermarkets place dairy products and other essentials on the back wall to get you to buy more", body: "This forces you to walk through the whole store to reach them, increasing your odds of throwing some items into your cart along the way.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/tricks-stores-use-to-make-you-spend-more-money-2015-10#-6", sponsorLogo: "", sponsorURL: "")

let groceryStoreTip15 = Tip(header: "Grocery Store", title: "Check the unit prices on items that you are comparing", body: "This will help you to see that the cost-per-unit on one item may be less than the cost-per-unit on a comparable item, which would mean a better deal for you.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/tricks-stores-use-to-make-you-spend-more-money-2015-10#-6", sponsorLogo: "", sponsorURL: "")

let groceryStoreTip16 = Tip(header: "Grocery Store", title: "It's counter intuitive, but to checkout faster you should get in line behind the cart loaded up the most", body: "The science behind it states that if you choose a line with lots of people each carrying a few items, your wait time is increased by each interaction between the customer and checkout clerk.", sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/business/7-tricks-saving-time-money-grocery-store-ncna775791", sponsorLogo: "", sponsorURL: "")

let groceryStoreTip17 = Tip(header: "Grocery Store", title: "Shopping carts were invented to make it easy for consumers to buy more", body: "The larger the cart, the more prone you are to spending more, so opt for the hand basket — or even the old-school armful of purchases — if you can.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/tricks-stores-use-to-make-you-spend-more-money-2015-10#-3", sponsorLogo: "", sponsorURL: "")

///////////
// Morning
let groceryStoreTip18 = Tip(header: "Grocery Store", title: "Shop in the morning if you want the best selection", body: "Early to mid-morning is the best time of day for the finest selection. That’s when dairy, bakery goods, produce, meat and seafood are newly stocked and freshest.", sourceName: "Today", sourceURL: "https://www.today.com/food/best-time-go-grocery-store-worst-t108655", sponsorLogo: "", sponsorURL: "")

// Weekend
let groceryStoreTip19 = Tip(header: "Grocery Store", title: "Weekends are the busiest days to grocery shop", body: "Midday on Saturday and Sunday is the most crowded time to go grocery shoping.", sourceName: "Today", sourceURL: "https://www.today.com/food/best-time-go-grocery-store-worst-t108655", sponsorLogo: "", sponsorURL: "")

// Weekdays
let groceryStoreTip20 = Tip(header: "Grocery Store", title: "The most crowded times to shop during the week are between 4 p.m. and 6 p.m.", body: "Shop after dinner time if you want to avoid the crowds. Mondays and Tuesdays are the least busy days but stores may be out of a lot of items, especially if sales start on Wednesday.", sourceName: "Today", sourceURL: "https://www.today.com/food/best-time-go-grocery-store-worst-t108655", sponsorLogo: "", sponsorURL: "")

// Cereal
let groceryStoreTip21 = Tip(header: "Cereal", title: "Tips for buying healthy cereal", body: "• Look for whole-grain cereals such as those made with corn, whole wheat, oats, or brown rice. \n\n• Choose a cereal that has at least 5 grams of fiber per serving. \n\n• Avoid cereals that contain more than 5 grams of sugar per serving.", sourceName: "Harvard Health Publishing", sourceURL: "https://www.health.harvard.edu/nutrition/breakfast-and-beyond-the-case-for-a-healthy-morning-meal", sponsorLogo: "", sponsorURL: "")

let groceryStoreTip22 = Tip(header: "", title: "Supermarkets play music with a slower beat so you move through the aisles more slowly, increasing the likelihood you'll stop to pick up items", body: "In one study, participants said pleasurable music in the background increased the likelihood they'd spend more time and money in the store — and thwarted their negative emotions.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/yes-grocery-stores-are-tricking-you-into-spending-more-money-2017-2", sponsorLogo: "", sponsorURL: "")
let groceryStoreTip23 = Tip(header: "", title: "Reduce impulse purchases by shopping for less than 23 minutes", body: "Brain scans reveal that consumers only act rationally for the first 23 minutes of shopping. Afterwards, the emotional part of the brain becomes more active which is not good at making money-based decisions. \n\nThey also indicate that after 40 minutes - the time taken for a typical weekly shop - the brain becomes tired and effectively shuts down, leading to impulse buys.", sourceName: "BBC News", sourceURL: "https://www.bbc.com/news/uk-wales-north-west-wales-24995031", sponsorLogo: "", sponsorURL: "")
let groceryStoreTip24 = Tip(header: "", title: "The point of those bite-sized free samples of food are not to get you to buy a particular product. It’s to trick your body into thinking it’s hungry", body: "If they can tantalize your taste buds but not satisfy your hunger, you become a less disciplined shopper and buy more. As much as 50% of purchases are unplanned.", sourceName: "Bon Appétit", sourceURL: "https://www.bonappetit.com/test-kitchen/how-to/article/supermarket-psychology", sponsorLogo: "", sponsorURL: "")
let groceryStoreTip25 = Tip(header: "", title: "A supermarket's most profitable section of the store tends to be checkout", body: "The person who does the most shopping at checkout is the third person in line. That’s the person who isn’t paying for groceries, or placing items on the conveyer belt, but who has nothing to do but wait.", sourceName: "Bon Appétit", sourceURL: "https://www.bonappetit.com/test-kitchen/how-to/article/supermarket-101", sponsorLogo: "", sponsorURL: "")

let groceryStoreTipArray0 = [groceryStoreTip1, groceryStoreTip2, groceryStoreTip3, groceryStoreTip4]
let groceryStoreTipArray1 = [groceryStoreTip5, groceryStoreTip6, groceryStoreTip7, groceryStoreTip8]
let groceryStoreTipArray2 = [groceryStoreTip9, groceryStoreTip10, groceryStoreTip11, groceryStoreTip12]
let groceryStoreTipArray3 = [groceryStoreTip13, groceryStoreTip14, groceryStoreTip15, groceryStoreTip16]

let groceryStoreTopic0 = Topic(title: groceryStoreTitle, icon: groceryStoreIcon, tip: groceryStoreTipArray0)
let groceryStoreTopic1 = Topic(title: groceryStoreTitle, icon: groceryStoreIcon, tip: groceryStoreTipArray1)
let groceryStoreTopic2 = Topic(title: groceryStoreTitle, icon: groceryStoreIcon, tip: groceryStoreTipArray2)
let groceryStoreTopic3 = Topic(title: groceryStoreTitle, icon: groceryStoreIcon, tip: groceryStoreTipArray3)

// Weekend (18)
let groceryStoreTipArrayWEND = [groceryStoreTip19, groceryStoreTip21, groceryStoreTip22, groceryStoreTip23]
let groceryStoreTopicWEND = Topic(title: groceryStoreTitle, icon: groceryStoreIcon, tip: groceryStoreTipArrayWEND)
// Weekday (19)
let groceryStoreTipArrayWDAY = [groceryStoreTip20, groceryStoreTip24, groceryStoreTip16, groceryStoreTip25] // Partial; replace Tip16.
let groceryStoreTopicWDAY = Topic(title: groceryStoreTitle, icon: groceryStoreIcon, tip: groceryStoreTipArrayWDAY)


// MARK: - SHOPPING, Clothes

let shoppingClothesTitle = "Shopping"
let shoppingClothesIcon = "Sho"

let shoppingClothesTip1 = Tip(header: loseWeight, title: "Shop healthier by getting exercise", body: "Park far away from the entrance and build a few extra, calorie-burning steps into your day. Visit stores on different levels and take the stairs, not the escalator. " , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/2012/08/11/healthy-weekend_n_1760981.html?slideshow=true#gallery/243861/2", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let shoppingClothesTip2 = Tip(header: shoppingClothesTitle, title: "Harvard professor says 95% of purchasing decisions are subconscious", body: "Emotion is what really drives the purchasing behaviors. To achieve the highest emotional response, marketers target you through many different senses, including colors and scents in stores." , sourceName: "Inc.", sourceURL: "https://www.inc.com/logan-chierotti/harvard-professor-says-95-of-purchasing-decisions-are-subconscious.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let shoppingClothesTip3 = Tip(header: shoppingClothesTitle, title: "People stay 40% longer in businesses that smell good, resulting in more purchases", body: "Scents evoke an emotional response and people spend more time in places when they feel good. Scent’s main role is to make the customer feel comfortable, happy and put them at ease so they will spend more time in the store, spend more money and ultimately make them more likely to return." , sourceName: "American Marketing Association", sourceURL: "https://www.ama.org/publications/eNewsletters/Pages/good-smells-good-marketing-how-use-scent-advantage.aspx", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let shoppingClothesTip4 = Tip(header: shoppingClothesTitle, title: "Slow music and cool colors like blues and greens encourage them to spend more", body: "Studies show that slow music makes people shop leisurely and spend more.  Classical music encourages more expensive purchases." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/tricks-stores-use-to-make-you-spend-more-money-2015-10#-12", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//1 (WIP)
let shoppingClothesTip5 = Tip(header: shoppingClothesTitle, title: "Simplify your day and reduce decision fatigue: buy a work uniform", body: "Steve Jobs, Mark Zuckerberg, and Dr. Dre all use work uniforms. Having a regular uniform makes it quick and easy to get dressed. You can conserve all that decision-making power directly towards more important decisions. A go-to outfit also saves loads of time shopping. You know what you're looking for and can get right to your favorite store. Or better yet, if you know your size, style, and color, you can order everything online -- without the annoyance of sending back returns." , sourceName: "Inc.", sourceURL: "https://www.inc.com/craig-bloem/this-1-unusual-habit-helped-make-mark-zuckerberg-steve-jobs-dr-dre-successful.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let shoppingClothesTip6 = Tip(header: shoppingClothesTitle, title: "Forget luxury goods — rich people are investing more in education and health", body: "In the US, the top 1% have been spending less on material goods since 2007. Showing off wealth is no longer the way to signify having wealth because the rich and middle class can now own the same luxary brand. Instead, the rich are investing in education and health to advance their social status and wealth." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/discreet-wealth-new-status-symbol-rich-people-2018-11", sponsorLogo: "", sponsorURL: "")

let shoppingClothesTipArray0 = [shoppingClothesTip1, shoppingClothesTip2, shoppingClothesTip3, shoppingClothesTip4]
let shoppingClothesTopic0 = Topic(title: shoppingClothesTitle, icon: shoppingClothesIcon, tip: shoppingClothesTipArray0)

let shoppingClothesTipArray1 = [shoppingClothesTip5, shoppingClothesTip6, shoppingClothesTip3, shoppingClothesTip4]
let shoppingClothesTopic1 = Topic(title: shoppingClothesTitle, icon: shoppingClothesIcon, tip: shoppingClothesTipArray1)

// MARK: - Commute, AM

let commuteAMTitle = "Commute"
let commuteAMIcon = "Com"

///// WEEK 1
//// MON
let commuteAMTip1 = Tip(header: getSmarter, title: "Be productive on your commute", body: "• Read a book \n• Listen to a podcast or audiobook \n• Use a meditation app \n• Learn a new language" , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/what-to-do-on-your-commute-2015-12#5-listen-to-music-or-audio-books-5", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let commuteAMTip2 = Tip(header: health, title: "Long commutes are bad for your health and productivity, study says", body: "Longer-commuting workers were more likely to suffer from depression, have financial worries, and report multiple aspects of work-related stress. They were also more likely to get less than the recommended seven hours of sleep each night and more likely to be obese." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/long-commutes-have-an-impact-on-health-and-productivity-2017-5", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let commuteAMTip3 = Tip(header: relax, title: "Practice calming your mind or enjoy the environment around you", body: "If you spend a majority of your commute doing some deep breathing through your nose and being mindful, it can be an excellent way to relax before you start the work day." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/what-to-do-on-your-commute-2015-12#8-relax-8", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let commuteAMTip4 = Tip(header: improvePerformance, title: "Use this time to check in on your goals", body: "Think about what makes you happy and what areas of your life could be improved. It's a great way to stay on track and make adjustments with your goals." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/what-to-do-on-your-commute-2015-12#3-reflect-3", sponsorLogo: "TBD", sponsorURL: "www.test.com")

///// TUE
let commuteTuesdayAMTip0 = Tip(header: "", title: "The safest day to drive to work is Tuesday", body: "An analysis of US car crash-related fatalities in 2016 found that Tuesday was the safest day of the week to drive. And morning rushhour was found to be safer (less deadly accidents) than afternoon rushhour (more deadly accidents)." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/rachael-yahne/mantras_b_6919316.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let commuteAMTip5 = Tip(header: improvePerformance, title: "Reclaim your commute time by repeating a mantra", body: "The more you repeat a phrase, the more it becomes a part of you. Repeat a phrase internally or out loud for 5-20 minutes a day. Try: \"I have everything I need,\" \"I choose to be happy\", or \"I am a voice for peace\"." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/rachael-yahne/mantras_b_6919316.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let commuteAMTip6 = Tip(header: improvePerformance, title: "Spend five to ten minutes thinking and planing out your day", body: "Think hour by hour. What will make this day a success? With whom are you meeting? What are you trying to accomplish? What might throw you off? How will you handle it? Do you expect to have any difficult conversations? How will you approach them? Any risks you want to take? How will you initiate them? ", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2015/01/get-more-done-during-your-commute", sponsorLogo: "Sponsor", sponsorURL: "sponsorURL")
let commuteAMTip7 = Tip(header: improvePerformance, title: "Economists found that for every hour you spend commuting, one way, you will have to make 40% more in salary to have the same level of well-being in life as non-commuters", body: "People overestimate the value of the things they'll obtain by commuting -- more money, more material goods, more prestige -- and underestimate the benefit of what they are losing: social connections, hobbies, sleep, and health.", sourceName: "The New Yorker", sourceURL: "https://www.newyorker.com/magazine/2007/04/16/there-and-back-again", sponsorLogo: "Sponsor", sponsorURL: "sponsorURL")
///// WED
let commuteAMTip8 = Tip(header: improvePerformance, title: "Every 20 minute increase in commute time has the same effect as a 19% pay cut for job satisfaction", body: "Long journeys by bus were associated with the biggest reduction in job satisfaction. Job satisfaction can be improved if workers have opportunities to reduce the time spent commuting, to work from home, and/or to walk or cycle to work.", sourceName: "The Telegraph", sourceURL: "https://www.telegraph.co.uk/news/2017/10/23/20-minute-increase-commute-time-bad-taking-pay-cut-study-finds/", sponsorLogo: "Sponsor", sponsorURL: "sponsorURL")
let commuteAMTip9 = Tip(header: "", title: "\"What is your favorite place to think big?\"", body: "Microsoft founder Bill Gates said he thinks big while driving. \n\nSara Blakely, CEO of Spanx, said she does her best thinking in her car on the commute to work. She even wakes up an hour early to get more commuting time." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/mark-zuckerberg-bill-gates-best-place-to-think-2018-11", sponsorLogo: "", sponsorURL: "")
let commuteAMTip10 = Tip(header: improvePerformance, title: "Use this time to do something that improves your life", body: "If you drive you can use the time to think, listen to music, or listen to a book on CD. If you take the bus or train, you could use the time to read, write, or meditate. By walking or biking to work, you can use the commute as a way to get in your daily exercise. Or carpool and use the time to socialize and network.", sourceName: "Fast Company", sourceURL: "https://www.fastcompany.com/3028274/two-surprising-ways-to-improve-your-commute", sponsorLogo: "", sponsorURL: "")
let commuteAMTip11 = Tip(header: "", title: "The morning commute was ranked as the worst thing you’ll do all day but you'll be happiest if you walk, bike, or take the train", body: "Social scientists surveyed 900 women in Texas, asking which of their daily activities made them happiest. The least happy activity was morning commute followed by working, and evening commute. Another study found that people who walk, bike, or take the train are happier than people who drive, take the bus, or take the subway.", sourceName: "The Cut", sourceURL: "https://www.thecut.com/2015/03/11-facts-about-your-soul-sucking-commute.html", sponsorLogo: "", sponsorURL: "")

///// THU
let commuteAMTip12 = Tip(header: "Mood", title: "Improve daily job performance by 10% by getting into a good mood now, study says", body: "Employees who were in a positive mood provided higher-quality service: they were more articulate on the phone with fewer \"ums\" and verbal tics, and used more proper grammar. Employees who were in a negative mood tended to take more frequent breaks from their duties to cope with the stress and get themselves through the day. These small breaks piled up, leading to a greater than 10% loss of productivity.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2016/07/how-your-morning-mood-affects-your-whole-workday", sponsorLogo: "", sponsorURL: "")
let commuteAMTip13 = Tip(header: "", title: "The best way to breathe cleaner air is to drive with the windows up and the air conditioning on", body: "In cases where the A/C was used, the indoor cabin air had 20% to 34% fewer pollutants. And keeping the windows closed offered a protective boost between 8% to 44%. It’s important to note that the fan doesn’t offer the same protection as the air conditioning. When the A/C is operating, you have a cold evaporator that is cooling the air as it passes. This cold surface attracts the pollutant particles, and they deposit there, as opposed to being diffused into the air you’re breathing.", sourceName: "Readers Digest", sourceURL: "https://www.rd.com/health/wellness/banish-pollution-during-commute/", sponsorLogo: "", sponsorURL: "")
let commuteAMTip14 = Tip(header: "", title: "Decrease your risk of getting sick during your commute", body: "Carry these items with with you: \n\n• antibacterial hand sanitizer or wipes \n\n• sunscreen \n\n• a relaxing playlist, podcast, or book to calm any stress (plus, podcasts can help your commute go by faster) \n\n• a helmet, and other protective gear, if you bike or ride a scooter", sourceName: "Readers Digest", sourceURL: "https://www.rd.com/health/conditions/commute-making-you-sick/", sponsorLogo: "", sponsorURL: "")
let commuteAMTip15 = Tip(header: "", title: "If you are sitting in a car, train, or bus for long periods of time every workday, you are putting yourself at risk for heart disease, diabetes, and premature death", body: "Sitting for long periods can increase the risk of blood clots. Get off of the bus or train a stop or two early to get blood flowing, park your car farther away from the office, or remind yourself to take a walk at lunch.", sourceName: "Readers Digest", sourceURL: "https://www.rd.com/health/conditions/commute-making-you-sick/", sponsorLogo: "", sponsorURL: "")

///// FRI
let commuteAMTip16 = Tip(header: "", title: "Reduce your chances of getting sick - Avoid touching your face, use hand sanitizer after touching a public service, and wash your hands as soon as you get to work", body: "Just touching something does nothing. You get sick when you introduce germs to your mouth, eyes, or nose. It’s OK to get germs on your hands if you wash them or use antibacterial gel and don’t touch your face.", sourceName: "Readers Digest", sourceURL: "https://www.rd.com/health/conditions/commute-making-you-sick/", sponsorLogo: "", sponsorURL: "")
let commuteAMTip17 = Tip(header: "", title: "Commuting long distances is associated with decreased cardio fitness, increased weight and high blood pressure", body: "The more time spent commutting means less time to exercise. Park away from your office to rack up extra steps, take the stairs instead of the elevator, and try to move as much as possible. Second, try to wake up 20 minutes earlier to talk a walk or do some exercise before you get in the car or on the bus, train or plane.", sourceName: "Shape", sourceURL: "https://www.shape.com/blogs/shape-your-life/your-long-commute-causing-you-gain-weight", sponsorLogo: "", sponsorURL: "")
let commuteAMTip18 = Tip(header: "Pollution", title: "Taking a side street route when walking and cycling [to work] through a city cuts a person’s air pollution exposure by half", body: "The average reduction in overall pollution exposure for those taking the side street routes was 53%, with the cuts ranging from 30-60%. Air pollution is the world’s largest single environmental health risk, according to the World Health Organisation.", sourceName: "The Guardian", sourceURL: "https://www.theguardian.com/environment/2017/jun/14/side-street-routes-avoid-city-pollution-cut-exposure-by-half", sponsorLogo: "", sponsorURL: "")
let commuteAMTip19 = Tip(header: improvePerformance, title: "Every 10 minutes of commuting results in 10% fewer social connections", body: "Over the past twenty-five years, Americans have experienced a 58% attendance drop in club meetings, a 43% decrease in family dinners, and a 35% decline in having friends over. Commuting reduces social connections, which causes unhappiness.", sourceName: "Personal Capital", sourceURL: "https://www.personalcapital.com/blog/financial-planning-2/surprising-costs-commute/", sponsorLogo: "Sponsor", sponsorURL: "sponsorURL")

// MON
let commuteAMTipArray0 = [commuteAMTip1, commuteAMTip2, commuteAMTip3, commuteAMTip4]
let commuteAMTopic0 = Topic(title: commuteAMTitle, icon: commuteAMIcon, tip: commuteAMTipArray0)

// TUES (*Tuesday-specific)
let commuteTuesdayAMTipArray0 = [commuteTuesdayAMTip0, commuteAMTip5, commuteAMTip6, commuteAMTip7]
let commuteTuesdayAMTopic0 = Topic(title: commuteAMTitle, icon: commuteAMIcon, tip: commuteAMTipArray0)

// WED
let commuteAMTipArray2 = [commuteAMTip8, commuteAMTip9, commuteAMTip10, commuteAMTip11]
let commuteAMTopic2 = Topic(title: commuteAMTitle, icon: commuteAMIcon, tip: commuteAMTipArray2)

// THURS
let commuteAMTipArray3 = [commuteAMTip12, commuteAMTip13, commuteAMTip14, commuteAMTip15]
let commuteAMTopic3 = Topic(title: commuteAMTitle, icon: commuteAMIcon, tip: commuteAMTipArray3)

// FRI
let commuteAMTipArray4 = [commuteAMTip16, commuteAMTip17, commuteAMTip18, commuteAMTip19] // WIP
let commuteAMTopic4 = Topic(title: commuteAMTitle, icon: commuteAMIcon, tip: commuteAMTipArray4)

// MARK: - Commute, PM

let commutePMTitle = "Commute"
let commutePMIcon = "Com"

// MON
let commutePMTip1 = Tip(header: health, title: "Pollution at intersections is 29x higher than on the open road", body: "To reduce the amount of pollution exposure while waiting in traffic jams and at traffic lights, drivers should keep a distance from the car in front, close car windows, and switch off the fan. \n\nThis can reduce the chance of breathing in hazardous levels of air pollution by 76%. Also, set the fan so that the air circulates internally and prevents pollution from entering from outside." , sourceName: "Medical News Today", sourceURL: "https://www.medicalnewstoday.com/articles/312570.php", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let commutePMTip2 = Tip(header: health, title: "Research links spending a single hour in traffic to higher odds of having a heart attack", body: "High noise levels -- like the kind you hear on a freeway -- are also linked to heart disease. If you can’t avoid traveling during rush hour, squash stress by listening to relaxing music. Or share the ride and chat with your fellow passenger." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/heart/ss/slideshow-surprising-hurt-heart?ecd=wnl_spr_091316_AM&ctr=wnl-spr-091316-AM_nsl-ld-stry_1&mb=aT%2fNo%2fMfdXIeXdniBtn11BXFE73IOX1chB5LGA9kRyM%3d", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let commutePMTip3 = Tip(header: improvePerformance, title: "Use your commuting time to bring yourself closer to the life you want to live", body: "Think back through your day hour by hour and glean wisdom and connection from it. How did the day go? What worked? What didn’t? What do you want to do the same – or differently – tomorrow? With whom can you share feedback? Who should you thank? What happened today for which you can feel grateful? These questions will help you learn, grow, and connect." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2015/01/get-more-done-during-your-commute", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let commutePMTip4 = Tip(header: improvePerformance, title: "Identify an area in your life that you want to improve and use your commute to fix it", body: "If it’s exercise you need, then bike or walk to work, even if it’s just partway. Or park far away from your office and walk an extra minute. \n\nIf it’s relaxation you’re missing, then do nothing, or read a fun book, or take a quick walk around your office before you leave for home. \n\nIf you want to learn something, then read about it or, if you have internet access, watch a video or participate in an online course. If you’re feeling lonely, call, text, or email people you cherish." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2015/01/get-more-done-during-your-commute", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//TUE
let commutePMTip5 = Tip(header: improvePerformance, title: "Don’t grocery shop right after work in order to reduce your chances of buying unhealthy foods", body: "After a long day of work, you're likely to be both hungry and tired. When you're hungry or tired, your brain craves fatty, sugary foods. During the week, the best time to go to grocery shopping is after dinner when you're well-fed and it's less crowded." , sourceName: "LifeHacker", sourceURL: "https://lifehacker.com/avoid-grocery-shopping-right-after-work-to-save-money-1616069034", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let commutePMTip6 = Tip(header: improvePerformance, title: "The commute is a great time for people who say \"I'm too busy to meditate\"", body: "De-stress and let go of the busy day. Put your hand on your belly. Then deeply, slowly breathe in, feeling your belly rise. Then feel it gently recede as you breathe out. This quickly activates the parasympathetic nervous system, which leads to relaxation." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com.au/2016/04/12/quick-mindfulness-exercises_n_9657876.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let commutePMTip7 = Tip(header: improvePerformance, title: "People who frequently cook meals at home consume fewer carbohydrates, less sugar, and less fat than those who cook less or not at all – even if they are not trying to lose weight", body: "People who cook at home more frequently rely less on frozen foods and are less likely to choose fast foods on the occasions when they eat out. The research also found that individuals who work more than 35 hours a week outside the home cook less." , sourceName: "Johns Hopkins University", sourceURL: "https://www.jhsph.edu/research/centers-and-institutes/johns-hopkins-center-for-a-livable-future/news-room/News-Releases/2014/Study-Suggests-Home-Cooking-Main-Ingredient-in-Healthier-Diet.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let commutePMTip8 = Tip(header: improvePerformance, title: "Bringing your work problems, stress, and low energy into your life after work can be disruptive to your relationships and to your mental health", body: "Research suggests that spending some time outside before you go home can help with reducing stress and being more productive once you get home. Take a stroll around your block or skip public transportation and walk home." , sourceName: "Bustle", sourceURL: "https://www.bustle.com/articles/159080-11-healthy-after-work-habits-to-try-instead-of-sitting-on-the-couch-all-night", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//WED (WIP)
let commutePMTip9 = Tip(header: "", title: "A long commute after work reduces your willpower to exercise or eat right", body: "People who spend more time commuting spend less time exercising, sleeping, and making food at home. And are more likely to buy \"non-grocery food purchases\" (i.e., fast food or takeout). As a result, they are more likely to be obese." , sourceName: "Vox", sourceURL: "https://www.vox.com/2015/5/20/8629881/commuting-health-happiness", sponsorLogo: "", sponsorURL: "")
let commutePMTip10 = Tip(header: improvePerformance, title: "Couples in which one partner commutes for longer than 45 minutes are 40% likelier to divorce", body: "If you are commuting, you are not spending quality time with your loved ones. However, not all commuter relationships were doomed; the study found that people who had a lengthy commute for more than 5 years were only 1% more likely to divorce than non-commuter couples. And breakups were less common for those who had already been commuting long distances before the relationship began.", sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/2013/08/13/divorce-study_n_3751641.html", sponsorLogo: "", sponsorURL: "")
let commutePMTip11 = Tip(header: improvePerformance, title: "The more time we spend commuting, the less time we spend exercising or preparing meals at home", body: "Each minute you commute is associated with a 0.0257 minute exercise time reduction, a 0.0387 minute food preparation time reduction, and a 0.2205 minute sleep time reduction. These amounts add up over time. Long commutes make us more likely to spend more money eating out, forego exercise, sleep less, experience body aches, and gain weight.", sourceName: "Personal Capital", sourceURL: "https://www.personalcapital.com/blog/financial-planning-2/surprising-costs-commute/", sponsorLogo: "", sponsorURL: "")
let commutePMTip12 = Tip(header: improvePerformance, title: "Drink water before you drive. Being dehydrated can cause as many driving errors as drunk driving", body: "Researchers set up an experiment in which normally hydrated and dehydrated people drove in a simulator for 2 hours. The normally hydrated drivers made an average of 47 errors; the dehydrated drivers 101 errors. Thus the dehydrated drivers made more than twice the number of errors of normally hydrated drivers – a failure rate similar to drunk drivers.", sourceName: "The Guardian", sourceURL: "https://www.theguardian.com/uk-news/shortcuts/2015/apr/20/want-to-be-safe-driver-drink-water-before-you-drive", sponsorLogo: "", sponsorURL: "")


//THUR (WIP)

//FRI (WIP)
let commuteFridayPMTip0 = Tip(header: weekendNow17to20Title, title: "Friday from 4:00 p.m. to 7:00 p.m. is the most dangerous day and time to drive during the workweek", body: "An analysis of US car crash-related fatalities in 2016 found that Friday during rushhour had the most fatal car creashes compared to any other day and time during the workweek. Be aware of what other drivers around you are doing, and expect the unexpected tonight." , sourceName: "Avvo", sourceURL: "https://www.avvo.com/fatal-car-accidents", sponsorLogo: "", sponsorURL: "")

// MON
let commutePMTipArray0 = [commutePMTip1, commutePMTip2, commutePMTip3, commutePMTip4]
let commutePMTopic0 = Topic(title: commutePMTitle, icon: commutePMIcon, tip: commutePMTipArray0)

//TUE
let commutePMTipArray1 = [commutePMTip5, commutePMTip6, commutePMTip7, commutePMTip8]
let commutePMTopic1 = Topic(title: commutePMTitle, icon: commutePMIcon, tip: commutePMTipArray1)
//WED
let commutePMTipArray2 = [commutePMTip9, commutePMTip10, commutePMTip11, commutePMTip12]
let commutePMTopic2 = Topic(title: commutePMTitle, icon: commutePMIcon, tip: commutePMTipArray2)

//THU


//FRI
let commuteFridayPMTipArray0 = [commuteFridayPMTip0, commutePMTip10, commutePMTip11, commutePMTip4] //WIP
let commuteFridayPMTopic0 = Topic(title: commutePMTitle, icon: commutePMIcon, tip: commuteFridayPMTipArray0)

// MARK: - Work, AM

let workAMTitle = "Work"
let workAMIcon = "Wor"

// WEEK 1
// MON
let workAMTip1 = Tip(header: improvePerformance, title: "Produce at a peak level: Work for extended periods with full concentration on a single task free from distraction", body: "Stop constantly checking your email, phone, and multitasking. A percentage of your brain's attention remains stuck thinking about the previous task when beginning your next task. This results in lower performance.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/wharton-adam-grant-uses-deep-work-for-maximum-productivity-2016-2", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let workAMTip2 = Tip(header: improvePerformance, title: "Don't schedule your meetings in the morning. Instead, schedule them for the afternoon, after lunch.", body: "Our brains are more focused in the morning. So spend this time doing difficult tasks, not sitting in a meeting. For team meetings, schedule it at 3:30 or 4 p.m. and use it to plan for the next day." , sourceName: "Fast Company", sourceURL: "https://www.fastcompany.com/3032498/why-you-should-rethink-that-morning-meeting", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let workAMTip3 = Tip(header: improvePerformance, title: "Be more productive at work by placing your cell phone out of sight or face-down", body: "A study found people were much more likely to make errors and not pay attention to their main task if they were interrupted by notifications from their phone - such as a text or a call.", sourceName: "WIRED", sourceURL: "https://www.wired.co.uk/article/what-is-productivity-be-more-productive-how-to-work", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let workAMTip4 = Tip(header: improvePerformance, title: "The best time to take a break from work is midmorning", body: "Your mental resources are generally at their highest soon after you wake up, and they gradually diminish throughout the day. It's easier to restore those resources when you take a midmorning break.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/the-best-time-of-day-to-do-everything-2016-5#-5", sponsorLogo: "sponsor", sponsorURL: "sponsorURL")

/////// TUES
let workAMTip5 = Tip(header: improvePerformance, title: "Try to avoid meetings because they are the biggest office time-sucks", body: "The average office worker spends over 31 hours each month in unproductive meetings. Before booking your next meeting, ask yourself whether you can accomplish the same goals or tasks via email, phone, or Web-based meeting.", sourceName: "Inc", sourceURL: "https://www.inc.com/john-rampton/15-ways-to-increase-productivity-at-work.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let workAMTip6 = Tip(header: improvePerformance, title: "Lower your body mass index (BMI) by getting at least 20 to 30 minutes of sunlight light before noon", body: "Not getting enough light before noon disturbs your internal body clock, which is known to alter metabolism and lead to weight gain (increased BMI). In one study, morning light exposure accounted for about 20% of a person’s BMI.", sourceName: "Northwestern University", sourceURL: "https://news.northwestern.edu/stories/2014/04/morning-rays-keep-off-the-pounds", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let workAMTip7 = Tip(header: improvePerformance, title: "Having your smartphone in reach, even if it’s silenced or turned off lowers your ability to think", body: "Researchers found that people who kept their phones in another room significantly outperformed the ones who kept them nearby in concentration tests. Having your phone within reach makes it harder to focus because a percentage of the brain has to actively work to not pick up or use the device.", sourceName: "Inc.", sourceURL: "https://www.inc.com/christina-desmarais/heres-why-you-need-to-put-your-phone-away-according-to-science.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let workAMTip8 = Tip(header: improvePerformance, title: "Feeling shame about work you have not completed is likely to make you less productive", body: "If you're behind on your work, forgiving yourself reduces the negative effects of shame. Focusing on your accomplishments instead of the work you have not completed gives you a sense of pride in what you have done.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/07/youre-never-going-to-be-caught-up-at-work-stop-feeling-guilty-about-it", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//////// WED
let workAMTip9 = Tip(header: improvePerformance, title: "Research: Most professionals only spend an average of one minute and fifteen seconds on a task before some kind of interruption", body: "After an interruption, it can take our brains up to 25 minutes to resume the task. Multitasking leads to decreased efficiency and more errors.", sourceName: "Inc.", sourceURL: "https://www.inc.com/laura-montini/infographic/the-high-cost-of-multitasking.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let workAMTip10 = Tip(header: improvePerformance, title: "People are most likely to multitask during phone conference calls (57%), web conference calls (23%), and in-person meetings (16%)", body: "People are least likely to multitask during video conferences (4%). This leads to more productive meetings.", sourceName: "Inc.", sourceURL: "https://www.inc.com/laura-montini/infographic/the-high-cost-of-multitasking.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
 let workAMTip11 = Tip(header: improvePerformance, title: "Have regular weekly meetings with direct reports. This not only empowers them, it also results in you being interrupted less often.", body: "If your direct reports feel empowered to make decisions on their own, and they understand how far their responsibilities extend and what they need your help for, they will then be more likely to hold their questions and issues to discuss at your weekly meeting.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/07/4-ways-leaders-can-protect-their-time-and-empower-their-teams", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let workAMTip12 = Tip(header: improvePerformance, title: "Mentor in hindsight. Employees learn much less when advice is given on the front end than they do when they have the opportunity to experience their own successes and failures and discuss them with their boss later.", body: "Mentoring helps to groom employees to advance within the organization. Ask your staff, \"What problems or challenges did you face this week, and how did you deal with them? And how well did that work out for you?\"", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/07/4-ways-leaders-can-protect-their-time-and-empower-their-teams", sponsorLogo: "TBD", sponsorURL: "www.test.com")

/////// THURS
let workAMTip13 = Tip(header: improvePerformance, title: "Lowering the pitch of your voice can make you think and act more confident", body: "Research results showed that people who spoke in a lower voice were more likely to be described as choose the more powerful traits than students in the other two groups." , sourceName: "The Wall Street Journal", sourceURL: "https://www.wsj.com/articles/SB10001424127887323735604578440851083674898", sponsorLogo: "GM_logo", sponsorURL: "https://www.gm.com/")
let workAMTip14 = Tip(header: improvePerformance, title: "Sitting all day causes sore muscles, strained eyes, poor circulation, and weight gain", body: "For proper posture, sit at the end of your chair and let yourself slouch. Now, try to sit up straight, accentuating the curve of your back as much as possible. Hold this position for a few seconds. Next, release the position a little bit — no more than about 10 degrees. This is your proper sitting position." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/daily-routine-according-to-science-2017-12", sponsorLogo: "GM_logo", sponsorURL: "https://www.gm.com/")
let workAMTip15 = Tip(header: improvePerformance, title: "Low self-esteem at work results in thousands of dollars of lost income", body: "Individuals who are from blue-collar families and possess self-confidence earn roughly $7,000 more per year than their peers who have low self-esteem. Individuals who are from white-collar families, the gap is even larger. Those with high self-esteem earn approximately $28,000 more annually than those who lack confidence. Over a 40-year career, that adds up to $280,000 to $1.12 million in lost earnings." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/business/why-low-self-esteem-may-be-hurting-your-career-ncna814156", sponsorLogo: "", sponsorURL: "")
let workAMTip16 = Tip(header: improvePerformance, title: "Job switchers are earning 48% higher annual pay increases in 2018 than those who stay in their jobs", body: "The pay raise gap between job seekers and job stayers in 2018 hasn't been this big since 2000. More workers are quitting their jobs and taking advantage of a labor market that's prioritizing employees over employers." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/how-to-get-a-raise-quit-your-job-2018-7", sponsorLogo: "", sponsorURL: "")

///////////// FRI
let workAMTip17 = Tip(header: improvePerformance, title: "Poor posture can lead to neck pain, back problems, and slowed digestion", body: "To attain a neutral, upright spine position, put your shoulders down and back, pull your head back, and engage your core muscles. Bring your belly button in toward your spine, as if you're zipping up a snug pair of jeans. This will help to engage the transverse abdominis muscle, which acts like a corset around the spine." , sourceName: "Harvard Health Publishing", sourceURL: "https://www.health.harvard.edu/staying-healthy/3-surprising-risks-of-poor-posture", sponsorLogo: "", sponsorURL: "")
let workAMTip18 = Tip(header: improvePerformance, title: "Ask youself these questions to determine if you should stay at your current job", body: "Is this work meaningful to me? Will I have an opportunity for recognition and achievement? Am I going to learn new things? These motivators are stable across professions and over time-giving us a sense of \"true north\" against which we can recalibrate the trajectories of our careers. \n\nWe should always remember that beyond a certain point, money, status, compensation, and job security are much more a by-product of being happy with a job rather than the cause of it. Realizing this frees us to focus on the things that really matter." , sourceName: "How Will You Measure Your Life?", sourceURL: "https://www.amazon.com/dp/B006ID0CH4/ref=dp-kindle-redirect?_encoding=UTF8&btkr=1", sponsorLogo: "", sponsorURL: "")
let workAMTip19 = Tip(header: "Career", title: "Increase your influence at work by speaking in a lower tone than you normally do", body: "People relate a low tone voice to both leadership and dominance. Speaking in a lower tone counteracts the effect of nervousness, which tends to push your tone higher.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/02/how-to-increase-your-influence-at-work?utm_medium=email&utm_source=newsletter_daily&utm_campaign=mtod&referral=00203", sponsorLogo: "", sponsorURL: "")
let workAMTip20 = Tip(header: reduceStress, title: "Reduce stress and increase motivation by surrounding yourself with plants, water, or animals", body: "Researchers noted that simply staring at an image of natural scenery for 40 seconds was enough to trigger the brain into a more relaxed state. People looking at plants also made fewer mistakes and were less distracted all around." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/health/why-natural-scenery-improves-your-mood-makes-you-more-productive-ncna860806", sponsorLogo: "TBD", sponsorURL: "www.test.com")

// WEEK 2
// MON
let workAMTip21 = Tip(header: "Productive", title: "Be more productive at work by matching your daily tasks with your circadian rhythm", body: "Humans have an internal clock that shapes our energy levels throughout the day: our circadian rhythm. On average, you should work on important tasks that require deep cognitive processing in the morning hours when your body is at or near its first peak in alertness (around noon). Then, early afternoon is a good time to do administrative work like responding to emails because not long after lunch, your energy levels begin to decline, hitting a low at around 3pm." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2015/01/the-ideal-work-schedule-as-determined-by-circadian-rhythms", sponsorLogo: "", sponsorURL: "")
let workAMTip22 = Tip(header: "Happy", title: "Taking vacations improve your productivity at work", body: "Professional services firm Ernst & Young conducted an internal study of its employees and found that for each additional 10 hours of vacation time employees took, their year-end performance ratings improved 8%. When you're more productive, you're happier, and when you're happier, you excel at what you do." , sourceName: "Inc.", sourceURL: "https://www.inc.com/lolly-daskal/4-scientific-reasons-why-vacation-is-awesome-for-you.html", sponsorLogo: "", sponsorURL: "")
let workAMTip23 = Tip(header: "Happy", title: "Taking vacations could help you live longer", body: "In one study, men at risk for heart disease who skipped vacations for 5 consecutive years were 30% more likely to suffer heart attacks than those who took at least a week off each year. In another study, women who took a vacation once every 6 years or less were almost eight times more likely to develop heart disease, have a heart attack, or die of a coronary-related cause than those who took at least 2 vacations a year." , sourceName: "Inc.", sourceURL: "https://www.inc.com/lolly-daskal/4-scientific-reasons-why-vacation-is-awesome-for-you.html", sponsorLogo: "", sponsorURL: "")
let workAMTip24 = Tip(header: "", title: "Exposure to light, during the day --particularly in the morning -- improves your mood, alertness and metabolism", body: "Employees with windows in the workplace received slept an average of 46 minutes more per night than employees who did not have the natural light exposure in the workplace. People who get more light during the day sleep better at night, which can help improve health. Workers without windows reported poorer scores than their counterparts on quality of life measures related to health." , sourceName: "Northwestern University", sourceURL: "https://news.northwestern.edu/stories/2014/08/natural-light-in-the-office-boosts-health", sponsorLogo: "", sponsorURL: "")
// TUES
let workAMTip25 = Tip(header: "", title: "Devote the first few minutes of each day to strategizing a plan. Then execute it", body: "Typically, the first 3 hours of the day is when we're most focused and can think and speak our best. But most of us waste those first 3 hours reacting to other people’s priorities for us, like answering emails. Save the emails for the mid afternoon slump, when your energy levels are low, and use the next 3 hours to do your best work." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/ideacast/2015/03/your-brains-ideal-schedule.html", sponsorLogo: "", sponsorURL: "")
let workAMTip26 = Tip(header: "Happy", title: "Communications with customers, investors, and other managerial decisions and negotiations, should be conducted in the morning", body: "A study of 26,000 public company earnings calls found that afternoon calls were more negative, irritable, and combative than morning calls. Calls held first thing in the morning turned out to be reasonably upbeat and positive." , sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/dp/B072Q985YX/ref=dp-kindle-redirect?_encoding=UTF8&btkr=1", sponsorLogo: "", sponsorURL: "")
let workAMTip27 = Tip(header: "", title: "Amazon CEO Jeff Bezos schedules his most challenging meetings for 10 a.m. and avoids afternoon meetings whenever discussing major issues", body: "Research supports Bezos' logic as it can be harder to think clearly in the afternoon. The 10 a.m. slot gives everyone the optimal chance to fully wake up and tackle the most challenging project of the day." , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2018/11/20/why-jeff-bezos-schedules-challenging-meetings-at-10-am.html?recirc=taboolainternal", sponsorLogo: "", sponsorURL: "")
let workAMTip28 = Tip(header: "", title: "Natural light in an office significantly improves health and wellness among workers", body: "Researchers found that workers in daylight office environments reported a 51% drop in the incidence of eyestrain, a 63% drop in the incidence of headaches and a 56% reduction in drowsiness. If you don't sit next to a window, take a walk outside during your next break." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/09/the-1-office-perk-natural-light", sponsorLogo: "", sponsorURL: "")

// WED
let workAMTip29 = Tip(header: "", title: "The best time to send an email is on a weekday from 10 a.m. to 2 p.m.", body: "This answer is based on data analyzed by MailChimp, an email marketing company. So think about the time zone of your recipient and avoid sending emailing over the weekend." , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2017/09/28/this-is-the-best-time-to-send-an-email.html", sponsorLogo: "", sponsorURL: "")
let workAMTip30 = Tip(header: "", title: "", body: "Compared to workers in offices without windows, those with windows in the workplace slept an average of 46 minutes more per night. Workers without windows reported lower scores than their counterparts on quality of life measures related to physical problems and vitality. They also had poorer outcomes in measures of overall sleep quality, sleep efficiency, sleep disturbances and daytime dysfunction." , sourceName: "", sourceURL: "", sponsorLogo: "", sponsorURL: "")
let workAMTip31 = Tip(header: "", title: "Prevent back pain when sitting by altering your position every 15 minutes", body: "Sitting without interruption for as little as 4 hours can cause compression of certain disks in your lower back. This pressure may lead to lower back pain. But there’s an easy fix for this: Get up and move. When participants altered their positions every 15 minutes, researchers didn’t notice any changes in their disks." , sourceName: "Men's Health", sourceURL: "https://www.menshealth.com/health/a19526472/surprising-health-effects-of-sitting/", sponsorLogo: "", sponsorURL: "")
let workAMTip32 = Tip(header: "Happy", title: "If your organization's culture does not encourage time off then it may be time to look for a new job", body: "Upon returning from vacation, employees who said their organization’s culture encourages time off were more likely to report having more motivation (71%) compared to employees who said their organization doesn’t encourage time off (45%). They were also more likely to say they are satisfied with their job (88% vs. 50%) and that the organization treats them fairly (88% vs. 47%)." , sourceName: "American Psychology Association", sourceURL: "http://www.apa.org/news/press/releases/2018/06/vacation-recharges-workers.aspx", sponsorLogo: "", sponsorURL: "")



/*
 In the AM:
 If you aren’t confident in your outward appearance, then you may find yourself hiding, apologizing or overcompensating. And in many cases, there are three common pain points: teeth, weight and blemished or scarred skin. By dealing with appearance issues, you can give yourself an immediate boost of confidence and turn your attention toward the root of your self-esteem problem.
 */

// WEEK 1
let workAMTipArray0 = [workAMTip1, workAMTip2, workAMTip3, workAMTip4]
let workAMTopic0 = Topic(title: workAMTitle, icon: workAMIcon, tip: workAMTipArray0)

let workAMTipArray1 = [workAMTip5, workAMTip6, workAMTip7, workAMTip8]
let workAMTopic1 = Topic(title: workAMTitle, icon: workAMIcon, tip: workAMTipArray1)

let workAMTipArray2 = [workAMTip9, workAMTip10, workAMTip11, workAMTip12]
let workAMTopic2 = Topic(title: workAMTitle, icon: workAMIcon, tip: workAMTipArray2)

let workAMTipArray3 = [workAMTip13, workAMTip14, workAMTip15, workAMTip16]
let workAMTopic3 = Topic(title: workAMTitle, icon: workAMIcon, tip: workAMTipArray3)

let workAMTipArray4 = [workAMTip17, workAMTip18, workAMTip19, workAMTip20]
let workAMTopic4 = Topic(title: workAMTitle, icon: workAMIcon, tip: workAMTipArray4)

// WEEK 2
let workAMTipArray5 = [workAMTip21, workAMTip22, workAMTip23, workAMTip24]
let workAMTopic5 = Topic(title: workAMTitle, icon: workAMIcon, tip: workAMTipArray5)

let workAMTipArray6 = [workAMTip25, workAMTip26, workAMTip23, workAMTip24]
let workAMTopic6 = Topic(title: workAMTitle, icon: workAMIcon, tip: workAMTipArray6)

// MARK: - Work, PM

let workPMTitle = "Work"
let workPMIcon = "Wor"

// WEEK 1
///// MON
let workPMTip1 = Tip(header: health, title: "Avoid computer eye strain by keeping your monitor arm's length away, blinking frequently, taking a break every 20 minutes", body: "When staring at screens, the number of times you blink decreases to a half or third your normal rate. That can lead to dry, irritated, and tired eyes. Every 20 minutes spent using a screen, you should try to look away at something that is 20 feet away from you for a total of 20 seconds." , sourceName: "Healthline", sourceURL: "https://www.healthline.com/health/eye-health/20-20-20-rule#prevention", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let workPMTip2 = Tip(header: strategy, title: "Your best work — which for most people is thinking — will actually happen while you’re away from your work", body: "Your most creative ideas aren’t going to come while sitting in front of your monitor. When you’re working directly on a task, your mind is tightly focused on the problem at hand (i.e., direct reflection). Conversely, when you’re not working, your mind loosely wanders (i.e., indirect reflection)." , sourceName: "Benjamin P. Hardy, author of Willpower Doesn't Work", sourceURL: "https://medium.com/@benjaminhardy/this-morning-routine-will-save-you-20-hours-per-week-409f8acbde1", sponsorLogo: "logo", sponsorURL: "https://www.test.com/")

let workPMTip3 = Tip(header: "Career", title: "A survey of top executives found that executives who have a mentor averaged higher percentage gains in salary, bonus, and total compensation than executives who did not have a mentor", body: "Executives who have had a mentor earn more money at a younger age, are better educated, and are more likely to follow a career plan than executives who have not had a mentor. The majority of executives’ mentors were department or division heads, immedate supervisors, and presidents and CEOs. and nearly half had mentors who were their immediate supervisors.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/1979/01/much-ado-about-mentors", sponsorLogo: "", sponsorURL: "")

let workPMTip4 = Tip(header: improvePerformance, title: "Increase productivity at work by taking a nap. Many tech companies have nap rooms for this very reason", body: "Sleepiness tends to peak around 2 p.m. making it a good time for a nap. Some of the greatest creative minds, most notably Thomas Edison, were or are huge fans of naps. Napping for 15 minutes you could be doing yourself (and your employer) a huge favor." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/successful-people-do-during-afternoon-lull-2014-4", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//////////// TUES
let workPMTip5 = Tip(header: strategy, title: "A study found that 3 p.m. on a Tuesday is the best time for a team meeting", body: "That's when everyone is most likely to be available. By contrast, the worst time to suggest a meeting is at the beginning of the workday. \n\nIt's important to leave people time to prepare — and if you have a meeting at 9 a.m., they'll either scramble to prep the day before or show up unprepared." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/the-best-time-of-day-to-do-everything-2016-5#-7", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let workPMTip6 = Tip(header: "Health", title: "Your brain can only focus for 90 to 120 minutes before it needs a break", body: "You’re an organism. And organisms run in cycles. During the day, we move from higher to lower alertness–the ultradian rhythm. Studies of top performers found that they follow the same pattern: focus then rest, focus then rest.", sourceName: "Fast Company", sourceURL: "https://www.fastcompany.com/3013188/why-you-need-to-unplug-every-90-minutes", sponsorLogo: "", sponsorURL: "")

let workPMTip7 = Tip(header: "Health", title: "People perform best when they’re feeling positive energy and perform worst when they're feeling negative energy. Take breaks during the day", body: "We’re not physiologically capable of sustaining highly positive emotions for long periods. Confronted with the daily demands and challenges, people slip into negative emotions—the fight-or-flight mode, making it impossible to think clearly or logically. Take walking breaks, do deep breathing (exhaling slowly for 6 seconds), and express appreciation to others.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2007/10/manage-your-energy-not-your-time", sponsorLogo: "", sponsorURL: "")

let workPMTip8 = Tip(header: "Productivity", title: "Distraction are costly: A temporary shift in attention from one task to another—stopping to answer an e-mail or take a phone call, for instance—increases the amount of time necessary to finish the primary task by as much as 25%", body: "It’s far more efficient to fully focus for 90 to 120 minutes, take a true break, and then fully focus on the next activity. ", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2007/10/manage-your-energy-not-your-time", sponsorLogo: "", sponsorURL: "")

///////////// WED
let workPMTip9 = Tip(header: "Advice", title: "Advance your career by creating an advocacy team. A graceful way to approach a potential advocate is to ask for advice", body: "Rather than showing inadequacy, asking for advice makes you appear more competent. This is because being asked for advice is flattering, it feels good. When people provide advice they become invested in it, and therefore in you.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/07/how-to-advance-in-your-career-when-your-boss-wont-help", sponsorLogo: "", sponsorURL: "")

let workPMTip10 = Tip(header: "Productivity", title: "At the end of the workday, identify the most important challenge for the next day and make it your very first priority when you arrive in the morning", body: "Concentrate the first hour of every day on the most important topic. By 10 am you'll feel like you've already had a productive day.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2007/10/manage-your-energy-not-your-time", sponsorLogo: "", sponsorURL: "")

let workPMTip11 = Tip(header: "Productivity", title: "Reduce constant distractions from emails", body: "Create a ritual of checking your e-mail twice a day—at 10:15 am and 2:30 pm. To make this work, notify people that you communicate with in advance that you're doing this and let me know they can call your phone number if it's an emergency.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2007/10/manage-your-energy-not-your-time", sponsorLogo: "", sponsorURL: "")

let workPMTip12 = Tip(header: "Career", title: "Advance your career by finding your own platform and putting yourself in front of stakeholders", body: "Look for cross-functional or internal projects that will involve or be debriefed to stakeholders. If one doesn’t exist, propose a project that aligns with the corporate values or vision or that solves a stated need.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/07/how-to-advance-in-your-career-when-your-boss-wont-help", sponsorLogo: "", sponsorURL: "")

//////////// THUR
let workPMTip13 = Tip(header: "Career", title: "Employees can succeed without a formal mentor by developing productive relationships with key opinion leaders", body: "In every organization there are centers of influence. Draw maps of how people are connected to show spheres of influence in the organization, paying special attention to those with large numbers of connections. When you determine who the influencers are in your work, make yourself helpful to them. Look at what you can offer them rather than just what they can give you.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/07/how-to-advance-in-your-career-when-your-boss-wont-help", sponsorLogo: "", sponsorURL: "")
let workPMTip14 = Tip(header: "Career", title: "Building your status outside the organization can often gain you visibility inside it", body: "Corporate leaders notice who is visible to customers, stakeholders, and the broader industry. Choose a way to do this that is genuinely interesting to you. You might decide to join an industry association and work toward holding a leadership position there. You can build a following on social media by demonstrating expertise and engaging with known thinkers in your field.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/07/how-to-advance-in-your-career-when-your-boss-wont-help", sponsorLogo: "", sponsorURL: "")
let workPMTip15 = Tip(header: "Career", title: "Increase your influence at work through body language", body: "Standing up straight with your shoulders back helps you come across as confident and commanding; slouching and looking down at your feet has the opposite effect. When you adopt a certain [slumping] posture, you think and talk in subordinate terms, and it increases the likelihood that you’ll be seen as less confident. Also, speaking in a lower tone lower than you normally do suggests power. This is useful to work on because it counteracts the effect of nervousness, which tends to push your tone higher.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/07/how-to-advance-in-your-career-when-your-boss-wont-help", sponsorLogo: "", sponsorURL: "")
let workPMTip16 = Tip(header: improvePerformance, title: "Staying employed at the same company for over two years on average is going to make you earn less over your lifetime by 50% or more", body: "The problem with staying at a company forever is you start with a base salary and usually annual raises are based on a percentage of your current salary. There is often a limit to how high your manager can bump you up since it's based on a percentage of your current salary. However, if you move to another company, you start fresh and can usually command a higher base salary to hire you.", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/cameronkeng/2014/06/22/employees-that-stay-in-companies-longer-than-2-years-get-paid-50-less/#2501fb00e07f", sponsorLogo: "", sponsorURL: "")

//// FRI
let workPMTip17 = Tip(header: "Career", title: "Having influence in the workplace helps you get noticed, get promoted, and receive raises", body: "Having a good relationship with your coworkers helps you get your project or budget approved because they like and trust you. The best way to get coworkers to back you and your agenda is to make them feel heard. Give them your undivided attention - turn your body toward the other person, freeze in place, and listen.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/02/how-to-increase-your-influence-at-work?utm_medium=email&utm_source=newsletter_daily&utm_campaign=mtod&referral=00203", sponsorLogo: "", sponsorURL: "")
let workPMTip18 = Tip(header: "Career", title: "Increase your influence on a particular issue by framing it as a benefit to the people you want to persuade", body: "If your proposal is fundamentally self-interested, people won’t line up. Don't use “I” too much. Instead, talk about how an idea will “benefit the organization” as a whole. “Use the word ‘we,’ as in ‘We’ll see value'. ", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/02/how-to-increase-your-influence-at-work?utm_medium=email&utm_source=newsletter_daily&utm_campaign=mtod&referral=00203", sponsorLogo: "", sponsorURL: "")
let workPMTip19 = Tip(header: improvePerformance, title: "Switching jobs will probably give you a bigger pay increase than staying with your current employer", body: "Employees who changed jobs earned about 1% more year-over-year than those who stayed with the same employer. That might not make a huge difference for one year, but it could add up to hundreds of thousands of dollars of lost wages over the course of your career. If your job doesn’t offer much in terms of professional or financial growth, then maybe it’s time to look for new opportunities.", sourceName: "LinkedIn", sourceURL: "https://www.linkedin.com/pulse/employees-who-stay-companies-more-than-2-years-get-paid-preitam-jape/", sponsorLogo: "", sponsorURL: "")
let workPMTip20 = Tip(header: "Career", title: "You should always be passively job searching while you have a job because it puts you in control of your career", body: "Passive job searching puts you in a position of strength because you have leverage of being employed. You’re able to negotiate for better pay and a better position than you have now. When you don’t have a job or want to leave a job that you dislike, on the other hand, you may appear and act more desperate. \n\nPassive job searching either helps you be grateful for the job you have and therefore more committed to your choice, or it makes you realize that you would feel more fulfilled (and therefore more committed) in another position or company.", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/forbeshumanresourcescouncil/2018/04/25/four-reasons-you-should-be-always-passively-job-hunting/#6cd852ab49ff", sponsorLogo: "", sponsorURL: "")

//// WEEK 2
//// MON
let workPMTip21 = Tip(header: "Productive", title: "Be more productive at work by matching your daily tasks with your circadian rhythm", body: "Humans have an internal clock that shapes our energy levels throughout the day: our circadian rhythm. On average, early afternoon is a good time to do less important work like responding to emails because not long after lunch, your energy levels begin to decline, hitting a low at around 3pm. We often blame this on lunch, but in reality this is just a natural part of the circadian process. Then, use the late afternoon, early evening to work on important tasks that require deep cognitive processing because, after the 3pm dip, alertness tends to increase again until hitting a second peak at approximately 6pm." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2015/01/the-ideal-work-schedule-as-determined-by-circadian-rhythms", sponsorLogo: "", sponsorURL: "")
let workPMTip22 = Tip(header: "Productive", title: "Humans naturally move from full focus and energy to physiological fatigue every 90 minutes", body: "Our cognitive capacity declines throughout the day; you must build in frequent mental breaks to recharge and maintain productivity. Take short breaks every 90 minutes throughout the day to drink water, walk, or to eat healthy snacks. Power walking breaks get your blood pumping and feed the brain with oxygen that boost your energy levels." , sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/kevinkruse/2017/02/06/want-to-get-more-done-try-taking-more-breaks/#36a8909a6db4", sponsorLogo: "", sponsorURL: "")
let workPMTip23 = Tip(header: "", title: "Natural light and outdoor views in an office significantly improves health and wellness among workers", body: "Research found that access to natural light and outdoor views improved employee wellbeing by 78% and improved work performance by 70%. In addition, workers in daylight office environments reported a 51% drop in the incidence of eyestrain, a 63% drop in the incidence of headaches and a 56% reduction in drowsiness." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/09/the-1-office-perk-natural-light", sponsorLogo: "", sponsorURL: "")
let workPMTip24 = Tip(header: "", title: "To be a good leader, start out as a follower, study finds", body: "Being a good follower does not mean being subservient. It means caring more about getting things done than getting your way. Ultimately, to become a leader you need to convince people to follow you. To exert influence over others, you need to first show them that you share their values, experiences, and concerns so that when you make decisions, they believe you are acting in the interest of the group, and not just yourself." , sourceName: "The Ladders", sourceURL: "https://www.theladders.com/career-advice/to-be-a-good-leader-start-out-as-a-follower-study-finds", sponsorLogo: "", sponsorURL: "")

// TUES
let workPMTip25 = Tip(header: "", title: "If you take 11+ vacation days, you're more likely to receive a raise or bonus", body: "People who took less than 10 vacation days per year had only a 35% likelihood of receiving a raise or bonus in a 3-year period of time. People who took 10+ vacation days had a 65% chance of receiving a raise or bonus." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2016/07/the-data-driven-case-for-vacation", sponsorLogo: "", sponsorURL: "")
let workPMTip26 = Tip(header: "", title: "Prevent burnout by focusing on learning, study finds", body: "Worker who engaged in more learning activities (e.g. picking up a new skill, gathering new information, or seeking out intellectual challenges) reported significantly lower levels of negative emotions, unethical behavior, and burnout. Learning reduces stress because knowledge can be useful for solving near-term stressful problems and helps us see ourselves as constantly improving, rather than being stuck with fixed capabilities." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/09/to-cope-with-stress-try-learning-something-new", sponsorLogo: "", sponsorURL: "")
let workPMTip27 = Tip(header: "", title: "Taking brief mental breaks improves performance when working on a long task", body: "The brain is built to detect and respond to change, and prolonged attention to a single task actually decreases performance. When faced with long tasks, it is best to impose brief breaks on yourself. Brief mental breaks will actually help you stay focused on your task. " , sourceName: "Univeristy of Illinois", sourceURL: "https://news.illinois.edu/view/6367/205427", sponsorLogo: "", sponsorURL: "")
let workPMTip28 = Tip(header: "", title: "Do you want to be in this job on your next work anniversary?", body: "People are likely to leave a job around the time of a work anniversary. If you dread the thought of being at your job on your next work anniversary, start looking now. You'll be better prepared when the time comes." , sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")

// WED
let workPMTip29 = Tip(header: "", title: "The most fufilling jobs allow us to work at our highest level but in a way that we, not someone else ,control", body: "Jobs that are demanding but don't autonomy burn us out. Jobs that offer autonomy but little challenge bore us. If your job doesn't meet these 2 factors then consider finding a new job." , sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
let workPMTip30 = Tip(header: "", title: "If your boss has your back, takes responsibility instead of blaming others, encourages your efforts but also gets out of your way, and displays a sense of humor rather than a raging temper, you're probably in a good place", body: "But, if you is the opposite, watch out-and maybe find a new job." , sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
let workPMTip31 = Tip(header: "", title: "One of the best ways to boost your salary is to switch companies after 3 to 5 years", body: "Research found that 3 to 5 years represents the sweet spot for pay increases. Fewer than 3 yeras might be too little time to develop the most marketable skills. More than 5 years is when employees start becoming tied to their company and moving up its leadership ranks, which makes it more difficult to start somewhere else." , sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
let workPMTip32 = Tip(header: "", title: "One easy way to increase your wealth is to learn how to write and speak clearly", body: "Legendary investor and billionaire Warren Buffett said, \"Invest in yourself. And one easy way to become worth 50% more than you are now — at least — is to hone your communication skills — both written and verbal. You can have all the brainpower in the world, but you have to be able to transmit it. And the transmission is communication.\"" , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2018/12/05/warren-buffett-how-to-increase-your-worth-by-50-percent.html", sponsorLogo: "", sponsorURL: "")
// THUR
let workPMTip33 = Tip(header: "", title: "Highly confident executives are 2.5 times more likely to be promoted to C-suite roles", body: "Research on 113 strong performers who were finalists for C-suite roles but got turned down in the final decision round concluded that 36% had poor executive presence. Executvie presence is an ill-defined catchall for a multitude issues from the seemingly trivial but career damaging body odor, to deeper challenges, such as when someone doesn't carry herself/himself in a way consistent with company culture. Often executives who fail to appear confident get comments about lackluster executive presence." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/11/what-to-do-if-your-career-is-stalled-and-you-dont-know-why", sponsorLogo: "", sponsorURL: "")
let workPMTip34 = Tip(header: "", title: "Successful executives use familiar vocabulary and down-to-earth storytelling to communicate", body: "Research on 113 strong performers who were finalists for C-suite roles but got turned down in the final decision round concluded that 28% had a poor communication style. Candidates who used more complex, esoteric, or intellectual vocabulary were, 8 times less likely to be hired compared to candidates who used more familiar language. Down-to-earth storytelling, drawing on memorable results, is vastly more powerful than a intellectual, academic style." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/11/what-to-do-if-your-career-is-stalled-and-you-dont-know-why", sponsorLogo: "", sponsorURL: "")
let workPMTip35 = Tip(header: "", title: "Sucessful executives say \"we\" and \"team\" more than \"I\"", body: "Research on 113 strong performers who were finalists for C-suite roles concluded that the weakest candidates used “I” at twice the rate of the rest of the sample. Candidates who go on and on with their own accomplishments impress decision makers less than the ones who say, \"My proudest achievement was the moment the team began to knock it out of the park\" — and then clearly explain their role in the group’s achievement." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/11/what-to-do-if-your-career-is-stalled-and-you-dont-know-why", sponsorLogo: "", sponsorURL: "")
let workPMTip36 = Tip(header: "", title: "Sucessful executives build strong peer-level relationships", body: "Research on 113 strong performers who were finalists for C-suite roles but got turned down in the final decision round concluded that 29% had poor peer-level relationships. People who prioritize their own advancement or department at the expense of other departments often do extremely well in the middle management ranks but stall out on the path to the C-suite, because they seem unable or unwilling to think beyond their own division or function." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/11/what-to-do-if-your-career-is-stalled-and-you-dont-know-why", sponsorLogo: "", sponsorURL: "")
//FRI
let workPMTip37 = Tip(header: "", title: "Do less taxing work, like respond to emails, during the afternoon slump", body: "Our energy levels fluctuate over the course of the day and the reality is, at 2 or 3 o’clock, we tire. Take those fluctuations of energy into account and plan some of the less taxing work, the work that requires less will power, less concentration, focus on doing those types of tasks at 2 or 3 o’clock in the afternoon. Or take a meeting that maybe is a lower level priority meeting." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/ideacast/2015/03/your-brains-ideal-schedule.html", sponsorLogo: "", sponsorURL: "")
let workPMTip38 = Tip(header: "", title: "Stronger candidates for leadership positions are more effective at persuading others, including their peers", body: "Research on 2,000+ CEOs found that high-performing CEOs are more likely than lower performers to treat others with respect (73% of the high-performing versus 59% of low-performing). They may act tough sometimes but over the longer term they build strong followership and the reputation for doing what’s right for the business." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/11/what-to-do-if-your-career-is-stalled-and-you-dont-know-why", sponsorLogo: "", sponsorURL: "")
let workPMTip39 = Tip(header: "", title: "Sadly, research found that CEO candidates for US-based companies who had a significant accent were 12 times less likely to be hired", body: "While in-group bias is a deep and persistent issue in hiring, researchers found that at least for some of these CEO candidates their insufficient language fluency lead them to be perceived as less competent than they were and that as this bias was brought to light and they worked to improve fluency and reduce the accent, their career trajectory improved." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/11/what-to-do-if-your-career-is-stalled-and-you-dont-know-why", sponsorLogo: "", sponsorURL: "")
let workPMTip40 = Tip(header: "", title: "Afternoon Slump Tip: We’re actually better at being creative when we’re fatigued", body: "Your fatigued brain isn’t very good at filtering out weird ideas, something that can lead to creative insights. So scheduling a creative task for the time in your day when you know you’re a little bit tired can actually be beneficial." , sourceName: "The Cut", sourceURL: "https://www.thecut.com/2015/03/sometimes-tired-people-are-creative-people.html", sponsorLogo: "", sponsorURL: "")
///////
// WEEK 3
let workPMTip41 = Tip(header: "", title: "People who initiate office friendships, pick up slack for their co-workers, and organize workplace social activities are 40% more likely to get a promotion in the next 2 years", body: "" , sourceName: "", sourceURL: "", sponsorLogo: "", sponsorURL: "")






// Male CEOs with lower-pitched voices tended to manage large companies, make $187,000 a year more than their higher-pitched peers, and last in political office on average five months longer.

// uptalk, ending our sentences on a higher note so that they sound like a question
// seem more direct and confident

// Mon
let workPMTipArray0 = [workPMTip1, workPMTip2, workPMTip3, workPMTip4]
let workPMTopic0 = Topic(title: workPMTitle, icon: workPMIcon, tip: workPMTipArray0)

// Tues
let workPMTipArray1 = [workPMTip5, workPMTip6, workPMTip7, workPMTip8]
let workPMTopic1 = Topic(title: workPMTitle, icon: workPMIcon, tip: workPMTipArray1)

// Wed
let workPMTipArray2 = [workPMTip9, workPMTip10, workPMTip11, workPMTip12]
let workPMTopic2 = Topic(title: workPMTitle, icon: workPMIcon, tip: workPMTipArray2)

// Thurs
let workPMTipArray3 = [workPMTip13, workPMTip14, workPMTip15, workPMTip16]
let workPMTopic3 = Topic(title: workPMTitle, icon: workPMIcon, tip: workPMTipArray3)

// Fri
let workPMTipArray4 = [workPMTip17, workPMTip18, workPMTip19, workPMTip20]
let workPMTopic4 = Topic(title: workPMTitle, icon: workPMIcon, tip: workPMTipArray4)

let workPMTipArray5 = [workPMTip21, workPMTip22, workPMTip23, workPMTip24]
let workPMTopic5 = Topic(title: workPMTitle, icon: workPMIcon, tip: workPMTipArray5)



/*
Harvard Business Review
 https://hbr.org/2017/05/what-sets-successful-ceos-apart

our most important discovery was that successful chief executives tend to demonstrate four specific behaviors that prove critical to their performance. We also found that when boards focus on those behaviors in their selection and development processes, they significantly increase their chances of hiring the right CEO. And our research and experience suggest that when leaders who aspire to the CEO’s office—87% of executives, according to a 2014 survey from Korn Ferry—deliberately develop those behaviors, they dramatically raise the odds that they’ll become high-performing chief executives.

 Roughly half the strong candidates (who had earned an A overall on a scale of A, B, or C) had distinguished themselves in more than one of the four essential behaviors, while only 5% of the weak candidates (who earned a B or C) had.


 1. Deciding with speed and conviction.
people who were described as “decisive” were 12 times more likely to be high-performing CEOs.

 Interestingly, the highest-IQ executives we coach, those who relish intellectual complexity, sometimes struggle the most with decisiveness. While the quality of their decisions is often good, because of their pursuit of the perfect answer, they can take too long to make choices or set clear priorities—and their teams pay a high price. These smart but slow decision makers become bottlenecks, and their teams either grow frustrated (which can lead to the attrition of valuable talent) or become overcautious themselves, stalling the entire enterprise. So it’s no surprise that when we looked more closely at the executives who were rated poor on decisiveness, we found that only 6% received low marks because they made decisions too quickly. The vast majority—94%—scored low because they decided too little, too late.

 Good CEOs realize that a wrong decision may be better than no decision at all.
 High-performing CEOs understand that a wrong decision is often better than no decision at all.
As former Greyhound CEO Stephen Gorman, who led the bus operator through a turnaround, told us, A bad decision was better than a lack of direction. Most decisions can be undone, but you have to learn to move with the right amount of speed.

Decisive CEOs recognize that they can’t wait for perfect information. “Once I have 65% certainty around the answer, I have to make a call,” says Jerry Bowe, CEO of the private-label manufacturer Vi-Jon. But they do work actively to solicit multiple points of view and often poll a relatively small, carefully cultivated “kitchen cabinet” of trusted advisers who can be counted on for unvarnished opinions and sound judgment.

Bowe motivates himself to act on decisions by framing things this way: “I ask myself two questions: First, what’s the impact if I get it wrong? And second, how much will it hold other things up if I don’t move on this?”

 But once a path is chosen, high-performing CEOs press ahead without wavering. Art Collins, former chairman and CEO of Medtronic, told us: “Employees and other key constituencies will quickly lose faith in leaders who waffle or backtrack once a decision is made.” And if decisions don’t turn out well? Our analysis suggests that while every CEO makes mistakes, most of them are not lethal. We found that among CEOs who were fired over issues related to decision making, only one-third lost their jobs because they’d made bad calls; the rest were ousted for being indecisive.



 2. Engaging for impact.

  CEOs who deftly engaged stakeholders with this results orientation were 75% more successful in the role.

 When interacting with stakeholders, CEOs like Bell are acutely aware of how their moods and body language can affect the impact of their communications.
 Composure is a job requirement, and more than three-quarters of the strong CEO candidates in our sample demonstrated calm under pressure.

 skilled CEOs gain the support of their colleagues by instilling confidence that they will lead the team to success, even if that means making uncomfortable or unpopular moves. These CEOs do not shy away from conflict in the pursuit of business goals; in fact, in our analysis two-thirds of the CEOs who excelled at engagement were rated as strong in conflict management. The ability to handle clashing viewpoints also seems to help candidates advance to the CEO’s office. When we analyzed leaders who’d made it there significantly faster than average, one of the qualities that stood out was their willingness to engage in conflict.
CEOs who engage stakeholders do not invest their energy in being liked or protecting their teams from painful decisions.


 Consensus is good, but it’s too slow, and sometimes you end up with the lowest common denominator.
 When tackling contentious issues, leaders who are good at engagement give everyone a voice but not a vote. They listen and solicit views but do not default to consensus-driven decision making.

 It’s no coincidence that the careers of turnaround CEOs are frequently a series of lucrative two- to three-year stints; they put out the fires and then move on to the next assignment.



 3. Adapting proactively.

 Our analysis shows that CEOs who excel at adapting are 6.7 times more likely to succeed. CEOs themselves told us over and over that this skill was critical.
 When asked what differentiates effective CEOs, Dominic Barton, global managing partner of McKinsey & Company, immediately offered: “It’s dealing with situations that are not in the playbook. As a CEO you are constantly faced with situations where a playbook simply cannot exist. You’d better be ready to adapt.
Most CEOs know they have to divide their attention among short-, medium-, and long-term perspectives, but the adaptable CEOs spent significantly more of their time—as much as 50%—thinking about the long term. Other executives, by contrast, devoted an average of 30% of their time to long-term thinking. We believe a long-term focus helps because it makes CEOs more likely to pick up on early signals. Highly adaptable CEOs regularly plug into broad information flows: They scan wide networks and diverse sources of data, finding relevance in information that may at first seem unrelated to their businesses. As a result, they sense change earlier and make strategic moves to take advantage of it.
Adaptable CEOs also recognize that setbacks are an integral part of changing course and treat their mistakes as opportunities to learn and grow. In our sample, CEOs who considered setbacks to be failures had 50% less chance of thriving. Successful CEOs, on the other hand, would offer unabashedly matter-of-fact accounts of where and why they had come up short and give specific examples of how they tweaked their approach to do better next time. Similarly, aspiring CEOs who demonstrated this kind of attitude (what Stanford’s Carol Dweck calls a “growth mindset”) were more likely to make it to the top of the pyramid: Nearly 90% of the strong CEO candidates we reviewed scored high on dealing with setbacks.



 4. Delivering reliably.

 Mundane as it may sound, the ability to reliably produce results was possibly the most powerful of the four essential CEO behaviors. In our sample, CEO candidates who scored high on reliability were twice as likely to be picked for the role and 15 times more likely to succeed in it. Boards and investors love a steady hand, and employees trust predictable leaders.
A stunning 94% of the strong CEO candidates we analyzed scored high on consistently following through on their commitments.
 A key practice here is setting realistic expectations up front. In their first weeks on the job reliable CEOs resist the temptation to jump into execution mode. They dig into budgets and plans, and engage with board members, employees, and customers to understand expectations. At the same time, they rapidly assess the business to develop their own point of view on what’s realistic and work to align expectations with that.

 CEOs who ranked high on reliability employed several other tactics as well. Three-quarters of them were rated strong on organization and planning skills. They established business management systems that included a cadence of meetings, dashboards of metrics, clear accountability, and multiple channels for monitoring performance and making rapid course corrections. Most important, they surrounded themselves with strong teams.

 Unfortunately, this was not true of all CEOs: The single most common mistake among first-time CEOs—committed by a surprisingly high 60% of them—was not getting the right team in place quickly enough. For CEOs choosing talent, the stakes are high and the misses obvious. The successful ones move decisively to upgrade talent. They set a high bar and focus on performance relevant to the role rather than personal comfort or loyalty—two criteria that often lead to bad calls.

 the key ingredients: decisiveness, the ability to engage stakeholders, adaptability, and reliability.
 focusing on these essential behaviors will improve both a board’s likelihood of choosing the right CEO—and an individual leader’s chances of succeeding in the role.




 */


// MARK: - Work Late

let workLateTitle = "Work"
let workLateIcon = "Wor"

let workLateTip1 = Tip(header: improvePerformance, title: "The Research Is Clear: Long Hours Backfire for People and for Companies.", body: "Research show overworking and stress leads to all sorts of health problems, including impaired sleep, depression, heavy drinking diabetes, impaired memory, and heart disease. \n\nThis also hurts a company's bottom line, showing up as absenteeism, turnover, and rising health insurance costs." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2015/08/the-research-is-clear-long-hours-backfire-for-people-and-for-companies", sponsorLogo: "GM_logo", sponsorURL: "https://www.gm.com/")

let workLateTip2 = Tip(header: improvePerformance, title: "Research: Working long hours makes you less productive", body: "When we work too hard, we lose sight of the bigger picture. Even if you work long hour voluntarily, you're more likely to make mistakes when you're tired - and most of us tire more easily than we think we do." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2015/08/the-research-is-clear-long-hours-backfire-for-people-and-for-companies", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let workLateTip3 = Tip(header: health, title: "If you have to stay late, take a break and eat a healthy dinner", body: "Give yourself a much-deserved break before jumping in for work round two. At the very least, take a five-minute walk outside and get some fresh air. \n\nBut if you can, grab a quick dinner away from your desk (and maybe a coffee or two). Ideally, you’d sit down and have a healthy, protein-packed meal." , sourceName: "The Muse", sourceURL: "https://www.themuse.com/advice/stuck-working-after-hours-heres-how-to-make-it-bearable", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let workLateTip4 = Tip(header: health, title: "Working more than 45 hours a week increases a person’s risk for heart-related health problems, like heart attacks", body: "The risk for heart disease progressively increases the more hours a person works. Regularly working late can increase risk for stroke and affect focus and mood. \n\nNeed more convincing? Working more could actually make you less productive. One mind-blowing study found that someone who spends 70 hours working produces nothing more than they would have at 55 hours. That’s 15 hours entirely wasted.", sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/entry/work-stress-late-hours-heart-disease_us_56e85252e4b0860f99da951a", sponsorLogo: "sponsor", sponsorURL: "sponsorURL")

/////////
let workLateTip5 = Tip(header: improvePerformance, title: "Your output falls sharply after working 50 hours in a week", body: "Employee output falls sharply after a 50-hour work-week, and falls off a cliff after 55 hours—so much so that someone who puts in 70 hours produces nothing more with those extra 15 hours. \n\nWork, both mental and physical, results in fatigue that limits the cognitive and bodily resources people have to put towards their work. When you're not thinking clearly or moving as quickly or precisely you must work more slowly to maintain quality and safety requirements." , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2015/01/26/working-more-than-50-hours-makes-you-less-productive.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let workLateTip6 = Tip(header: "", title: "Morning people are better positioned for career success, because they’re more proactive than evening people", body: "A number of studies have linked this trait, proactivity, with better job performance, greater career success, and higher wages. Though evening people do have some advantages-they tend to be smarter and more creative than morning people-they’re out of sync with the typical corporate schedule. An evening person can shift their circadian clock towards becoming a morning person by going to bed earlier and getting outside into the daylight early in the morning." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2010/07/defend-your-research-the-early-bird-really-does-get-the-worm", sponsorLogo: "", sponsorURL: "")
let workLateTip7 = Tip(header: "", title: "For early birds, late afternoon/early evening is the best time to do tasks involving brainstorming and creativity", body: "Scientists characterize late afternoon/early evening as best for \"insight thinking,\" when energy levels go back up, resulting in a better mood and more open to creativity and out-of-the-box ideas. (The exact time depends on how early you wake up in the morning.)" , sourceName: "Unstuck", sourceURL: "https://www.unstuck.com/advice/time-to-get-things-done/", sponsorLogo: "", sponsorURL: "")

/*
 https://www.economist.com/business/2018/11/24/americans-need-to-take-a-break
 A study of munitions workers in the first world war found that their output per hour tended to decline once they spent over 50 hours a week toiling.
 The Institute for Employment Studies in Britain reviewed academic research on the subject and concluded that “long hours working [more than 48 hours a week] was associated with (but was not proved to cause) various negative effects, such as decreased productivity, poor performance, health problems, and lower employee motivation.

 long hours simply lead to wasted effort. work expands to fill the time available.

 The modern world is supposedly moving in a direction where routine tasks are automated, leaving the more creative processes to the humans

 */

let workLateTipArray0 = [workLateTip1, workLateTip2, workLateTip3, workLateTip4]
let workLateTopic0 = Topic(title: workLateTitle, icon: workLateIcon, tip: workLateTipArray0)

let workLateTipArray1 = [workLateTip5, workLateTip6, workLateTip7, workLateTip2] // WIP
let workLateTopic1 = Topic(title: workLateTitle, icon: workLateIcon, tip: workLateTipArray1)


// MARK: - Work: Late Shift




// MARK: - Work by Quarter (WIP)
// Display in Q4
let workQ41 = Tip(header: "", title: "Make sure to take all of your vacation days before they expire", body: "Around half of all US workers do not take their full allotment of days off. In effect, many Americans spend part of the year working for nothing, donating the equivalent of $561 on average to their firms. A study by the Harvard Business Review in 2016 found that those who took 11 or more days off a year were almost twice as likely to get a raise or a bonus as those who took ten days off or fewer (although the causation could be the other way around; star workers may feel they can afford to take a break)." , sourceName: "The Econmist", sourceURL: "https://www.economist.com/business/2018/11/24/americans-need-to-take-a-break", sponsorLogo: "", sponsorURL: "")



// MARK: - MBA Leadership

let leadershipGrid1 = Tip(header: "", title: "Be a leader / get into a top MBA program: take initiative at work", body: "Stanford's MBA application includes a grading of your leadership potential (initiative). \n\nHigh Performers: \"Proactively seeks high-impact projects; steps up to challenges even when things are not going well.\" \n\nLow Performers: \"Reluctant to take on new tasks; waits to be told what to do; defers to others.\"" , sourceName: "Stanford Graduate School of Business", sourceURL: "https://www.gsb.stanford.edu/sites/gsb/files/gsb-mba_leadership_form_v4.pdf", sponsorLogo: "", sponsorURL: "")
let leadershipGrid2 = Tip(header: "", title: "Be a leader / get into a top MBA program: be results orientated at work", body: "Stanford's MBA application includes a grading of your leadership potential (results orientation).\" \n\nHigh Performers: \"Invents new approaches with measurably better results; works to deliver best-in-class performance improvements.\" \n\nLow Performers: \"Focuses on fulfilling activities at hand; unsure how work relates to goals.\"" , sourceName: "Stanford Graduate School of Business", sourceURL: "https://www.gsb.stanford.edu/sites/gsb/files/gsb-mba_leadership_form_v4.pdf", sponsorLogo: "", sponsorURL: "")
let leadershipGrid3 = Tip(header: "", title: "Be a leader / get into a top MBA program: be a team leader at work", body: "Stanford's MBA application includes a grading of your leadership potential (team leadership).\" \n\nHigh Performers: \"Recruits others into duties or roles based on insight into individual abilities; rewards those who exceed expectations\" \n\nLow Performers: \" Avoids leadership responsibilities; does not provide direction to team\"" , sourceName: "Stanford Graduate School of Business", sourceURL: "https://www.gsb.stanford.edu/sites/gsb/files/gsb-mba_leadership_form_v4.pdf", sponsorLogo: "", sponsorURL: "")
let leadershipGrid4 = Tip(header: "", title: "Be a leader / get into a top MBA program: be an influencer and collaborator at work", body: "Stanford's MBA application includes a grading of your leadership potential (influence and collaboration).\" \n\nHigh Performers: \"Builds enduring partnerships within and outside of organization to improve effectiveness, even at short-term personal cost.\" \n\nLow Performers: \"Accepts input from others; engages other in problem solving.\"" , sourceName: "Stanford Graduate School of Business", sourceURL: "https://www.gsb.stanford.edu/sites/gsb/files/gsb-mba_leadership_form_v4.pdf", sponsorLogo: "", sponsorURL: "")
let leadershipGrid5 = Tip(header: "", title: "Be a leader / get into a top MBA program: communicate better at work", body: "Stanford's MBA application includes a grading of your leadership potential (communicating).\" \n\nHigh Performers: \"Presents views clearly; solicits opinions and concerns; discusses them openly.\" \n\nLow Performers: \"Is generally to the point and organized\" and \"Sometimes rambles or is occasionally unfocused.\"" , sourceName: "Stanford Graduate School of Business", sourceURL: "https://www.gsb.stanford.edu/sites/gsb/files/gsb-mba_leadership_form_v4.pdf", sponsorLogo: "", sponsorURL: "")
let leadershipGrid6 = Tip(header: "", title: "Be a leader / get into a top MBA program: seek information at work", body: "Stanford's MBA application includes a grading of your leadership potential (information seeking).\" \n\nHigh Performers: \"Involves others who would not normally be involved including experts or outside organizations; may get them to seek out information.\" \n\nLow Performers: \" Asks direct questions about problem at hand to those individuals immediately available.\"" , sourceName: "Stanford Graduate School of Business", sourceURL: "https://www.gsb.stanford.edu/sites/gsb/files/gsb-mba_leadership_form_v4.pdf", sponsorLogo: "", sponsorURL: "")
let leadershipGrid7 = Tip(header: "", title: "Be a leader / get into a top MBA program: develop others at work", body: "Stanford's MBA application includes a grading of your leadership potential (developing others).\" \n\nHigh Performers: \"Inspires and motivates others to develop by providing feedback and identifying new growth opportunities as well as supporting their efforts to change.\" \n\nLow Performers: \"Points out mistakes to support the development of others\" and \" focuses primarily on own abilities.\"" , sourceName: "Stanford Graduate School of Business", sourceURL: "https://www.gsb.stanford.edu/sites/gsb/files/gsb-mba_leadership_form_v4.pdf", sponsorLogo: "", sponsorURL: "")
let leadershipGrid8 = Tip(header: "", title: "Be a leader / get into a top MBA program: change leadership at work", body: "Stanford's MBA application includes a grading of your leadership potential (change leadership).\" \n\nHigh Performers: \" Builds coalition of supporters and coordinates change across multiple individuals; may create champions who will mobilize others to change.\" \n\nLow Performers: \"Accepts status quo; does not see the need for change.\"" , sourceName: "Stanford Graduate School of Business", sourceURL: "https://www.gsb.stanford.edu/sites/gsb/files/gsb-mba_leadership_form_v4.pdf", sponsorLogo: "", sponsorURL: "")
let leadershipGrid9 = Tip(header: "", title: "Be a leader / get into a top MBA program: show respect for others at work", body: "Stanford's MBA application includes a grading of your leadership potential (respect for others).\" \n\nHigh Performers: \"Uses understanding of others and self to resolve conflicts and foster mutual respect.\" \n\nLow Performers: \"Generally treats others with respect; usually shares praise and credit\" and \"Is sometimes self-absorbed or overly self-interested.\"" , sourceName: "Stanford Graduate School of Business", sourceURL: "https://www.gsb.stanford.edu/sites/gsb/files/gsb-mba_leadership_form_v4.pdf", sponsorLogo: "", sponsorURL: "")
let leadershipGrid10 = Tip(header: "", title: "Be a leader / get into a top MBA program: be trustworthy at work", body: "Stanford's MBA application includes a grading of your leadership potential (trustworthiness).\" \n\nHigh Performers: \" Is reliable and authentic even at some personal cost; works to ensure all members of the organization operate with integrity\" and \"Acts as a role model for the values of the organization.\" \n\nLow Performers: \"Generally acts consistently with stated intensions\" and \"Shows occasional lapses in trustworthy behavior.\"" , sourceName: "Stanford Graduate School of Business", sourceURL: "https://www.gsb.stanford.edu/sites/gsb/files/gsb-mba_leadership_form_v4.pdf", sponsorLogo: "", sponsorURL: "")

let leadershipGridTipArray0 = [leadershipGrid1, leadershipGrid2, leadershipGrid3, leadershipGrid4]
let leadershipGridTopic0 = Topic(title: "Leadership", icon: "Lea", tip: leadershipGridTipArray0)

let leadershipGridTipArray1 = [leadershipGrid5, leadershipGrid6, leadershipGrid7, leadershipGrid8] // WIP
let leadershipGridTopic1 = Topic(title: "Leadership", icon: "Lea", tip: leadershipGridTipArray1)

// How top MBA programs grade their candidates

let leadershipAMTip1 = Tip(header: "", title: "Leadership, AM 1 Title", body: "Harvard Business School encourages its students to see success as making a positive difference in the lives of their colleagues, their organizations, their families, and society as a whole. As you take on greater leadership responsibilities, the key is to stay grounded and authentic, face new challenges with humility, and balance professional success with more important but less easily quantified measures of personal success. The practice of mindful leadership gives you tools to measure and manage your life as you’re living it. It teaches you to pay attention to the present moment, recognizing your feelings and emotions and keeping them under control, especially when faced with highly stressful situations. When you are mindful, you’re aware of your presence and the ways you impact other people. In order to gain awareness and clarity about the present moment, you must be able to quiet your mind. You must have practices that you engage in every day. When I started meditating, I was able to stay calmer and more focused in my leadership. Meditation enabled me to cast off the many trivial worries that once possessed me and gain clarity about what was really important. I gradually became more self-aware and more sensitive to the impact I was having on others. The important thing is to have a set time each day to pull back from the intense pressures of leadership to reflect on what is happening. In addition to meditation, I know leaders who take time for daily journaling, prayer, and reflecting while walking, hiking or jogging. Mindfulness will help you clear away the trivia and needless worries about unimportant things, nurture passion for your work and compassion for others, and develop the ability to empower the people in your organization." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2012/10/mindfulness-helps-you-become-a", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let leadershipAMTip2 = Tip(header: "", title: "The only way to think like a leader is to first act: to plunge yourself into new projects and activities, interact with very different kinds of people, and experiment with unfamiliar ways of getting things done", body: "leaders ought to seek out new knowledge, experiences and networks in order to both grow as a leader and act as a better, more effective type of leader. Effective leaders create and use networks to tap new ideas, connect to people in different worlds, and access people for radically different perspectives. Network outside the organization, often an untapped source not only of contacts and people but of potential innovations and creative solutions to business problems." , sourceName: "", sourceURL: "", sponsorLogo: "", sponsorURL: "")
let leadershipPMTip1 = Tip(header: success, title: "Volunteer to help others", body: "Successful people agree with Anne Frank: \"No one has ever become poor from giving.\" Author Tom Corley studied the rich for five years and found that 73% of wealthy people volunteer for five or more hours per month. Nothing helps put things in perspective and reduce stress more than helping those less fortunate. Weekends are a great time to get involved in local and community volunteer events." , sourceName: "LifeHack.org", sourceURL: "https://www.lifehack.org/articles/productivity/12-weekend-habits-highly-successful-people.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")



// MARK: - Job Search
/*
 Stats on days/times people are applying for jobs:
 http://blog.indeed.com/2017/06/27/timing-matters-in-the-job-search/
 */

// MARK: - New Job
let newJob1 = Tip(header: "", title: "Many individuals assert themselves too quickly and too soon. Let your results do the talking", body: "Research suggests that over time extroverts lose status in groups. So, at the outset, concentrate on accomplishing a few meaningful achievements, and once you've gained status by demonstrating excellence, feel free to be more assertive.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")

// MARK: - Event/Party/Networking

//1
let networking1 = Tip(header: "", title: "\"Tell me about yourself\" is the only ice breaker you'll ever need", body: "The beauty in opening with \"tell me about yourself\" is that it allows you to start a conversation without the fear that you’re going to inadvertently make someone uncomfortable or self-conscious. Posing a broad question lets people lead you to who they are. Avoid asking more pointed questions (for example, “What do you do for work?”) that presume information to be true.", sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/2018/11/17/style/self-care/terry-gross-conversation-advice.html", sponsorLogo: "", sponsorURL: "")
let networking2 = Tip(header: "", title: "Be curious about what the other person is telling you", body: "You can respond to what somebody is saying by expressing if you're feeling sympathy or empathy, and explaining why.", sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/2018/11/17/style/self-care/terry-gross-conversation-advice.html", sponsorLogo: "", sponsorURL: "")
let networking3 = Tip(header: "", title: "A good conversationalist is somebody who is fun to talk to", body: "If you can’t be funny, being mentally organized, reasonably concise and energetic will go a long way in impressing people.", sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/2018/11/17/style/self-care/terry-gross-conversation-advice.html", sponsorLogo: "", sponsorURL: "")
let networking4 = Tip(header: "", title: "Organize your thoughts beforehand by thinking about the things you expect you’ll be asked and then reflecting on how you might answer", body: "Being prepared can help you avoid getting caught off guard, or help you to more easily pivot the conversation to a subject that you’ve prepared yourself to talk about in a way that plays to your strengths.", sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/2018/11/17/style/self-care/terry-gross-conversation-advice.html", sponsorLogo: "", sponsorURL: "")
//2
let networking5 = Tip(header: "", title: "To remember a person's name, repeat the name of the person you just met", body: "When first introduced to someone new, repeat the person's name during the conversation and then use it over and over again. In order to remember someone's name, you must focus on it for at least 1 to 2 seconds.", sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2016/09/21/11-memory-hacks-to-remember-the-names-of-everyone-you-meet.html", sponsorLogo: "", sponsorURL: "")
let networking6 = Tip(header: "", title: "Always hold your drink or food plate in your left hand", body: "This leaves your right hand dry and free to shake hands or accept a business card.", sourceName: "Inc.", sourceURL: "https://www.inc.com/rene-siegel/sixteen-cocktail-party-tips-for-wallflowers.html", sponsorLogo: "", sponsorURL: "")
let networking7 = Tip(header: "", title: "When you get to the event, place your name badge on your right", body: "This facilitates reading from left to right, when shaking hands. The left side is reserved for a boutonniere, a corsage, medals and your professional alliance.", sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.ca/julie-blais-comeau/cocktail-networking_b_7469156.html", sponsorLogo: "", sponsorURL: "")
let networking8 = Tip(header: "", title: "Listen 60% of the time and speak the other 40%", body: "Ask open-ended questions. Learn from the other; their daily routine, their ideal client and their needs. \"What do you do when you're not working?\" Is a great question to ask.", sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.ca/julie-blais-comeau/cocktail-networking_b_7469156.html", sponsorLogo: "", sponsorURL: "")

//3
let networking9 = Tip(header: "", title: "Make an entrance. First impressions do count. Think about your posture.", body: "Your body language should be confident, happy and approachable. Take a moment. Breathe in and scout the horizon to search for familiar faces or inviting eye contact from a group member looking for someone to connect with.", sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.ca/julie-blais-comeau/cocktail-networking_b_7469156.html", sponsorLogo: "", sponsorURL: "")
let networking10 = Tip(header: "", title: "LinkedIn Co-founder, Reid Hoffman, believes networking is critical for success because when it comes to knowledge, who you know is often more valuable than what you've read", body: "The most valuable professional information is often in other people's heads. Hoffman said, \"There are more smart people in the world who do not work at your company than the total number of smart people who work at your company. So look beyond your office. If you do, your team becomes a whole lot bigger\"." , sourceName: "Inc.", sourceURL: "https://www.inc.com/marcel-schwantes/3-winning-habits-youll-find-in-most-successful-people-this-year.html", sponsorLogo: "", sponsorURL: "")

// MARK: - Side Hustle
//1
let sideHustle1 = Tip(header: "", title: "To succeed as an entrepreneur, you have to be a storyteller", body: "I realised very early on that the entrepreneurs who make a difference know how to relate to and interact with other people. Thanks to technology platforms and social media, there are so many more ways to connect to people. Storytelling is a great way to get your views across, highlight how you and company are different to your competitors, and also to work out new ideas. I often find a subject I’m pondering becomes a lot clearer once it is down on paper – it’s one of the reasons I blog so much. The ability to tell a story will help build trust. What moves people is someone who is credible. People can see straight through storytelling that is false, staged or cynical. It has to come from the heart, not just the head." , sourceName: "Virgin (Richard Branson)", sourceURL: "https://www.virgin.com/richard-branson/why-entrepreneurs-are-storytellers", sponsorLogo: "", sponsorURL: "")
let sideHustle2 = Tip(header: "", title: "Successful businesses are great at saying no to the many unimportant things and remain focused on saying yes to the few things that truly matter", body: "Apple Co-founder, Steve Jobs, said, \"People think focus means saying yes to the thing you've got to focus on. But that's not what it means at all. It means saying no to the hundred other good ideas that there are. You have to pick carefully. I'm actually as proud of the things we haven't done as the things I have done. Innovation is saying no to 1,000 things.\"" , sourceName: "Inc.", sourceURL: "https://www.inc.com/marcel-schwantes/warren-buffett-says-this-is-1-simple-habit-that-separates-successful-people-from-everyone-else.html", sponsorLogo: "", sponsorURL: "")
let sideHustle3 = Tip(header: "", title: "Failure is an important ingredient to success", body: "J.K. Rowling’s first Harry Potter book was rejected by 12 publishers (and before she even wrote the book she suffered a stream of potentially devastating personal failures). Michael Jordon was cut from his high school basketball team. Abraham Lincoln, probably the most famous example of failure contributing to success, suffered a series of lost elections (along with some notable successes) before he went on to become one of our greatest presidents." , sourceName: "UC Berkeley", sourceURL: "https://greatergood.berkeley.edu/article/item/passion_adversity_success", sponsorLogo: "", sponsorURL: "")
//2
let sideHustle4 = Tip(header: success, title: "Elite performers practice roughly the same amount every day, including weekends", body: "Most successful people average 10 years of practice before becoming great. Even child-prodigies generally work at it for a decade or more. Tiger Woods had been working on his golf game for 15 years when he became the youngest-ever winner of the U.S. Amateur Championship." , sourceName: "UC Berkeley", sourceURL: "https://greatergood.berkeley.edu/article/item/a_new_theory_of_elite_performance", sponsorLogo: "", sponsorURL: "")







// MARK: - Studying/Homework
//1
let studying1 = Tip(header: "", title: "Taking brief mental breaks improves performance when working on a long task", body: "The brain is built to detect and respond to change, and prolonged attention to a single task actually decreases performance. When faced with long tasks (such as doing your homework or studying before an exam), it is best to impose brief breaks on yourself. Brief mental breaks will actually help you stay focused on your task!" , sourceName: "Univeristy of Illinois", sourceURL: "https://news.illinois.edu/view/6367/205427", sponsorLogo: "", sponsorURL: "")
let studying2 = Tip(header: "", title: "Taking hourly 5-minute walking breaks boosts energy levels, sharpens focus, and reduces fatigue", body: "These 5 minute breaks were also more valuable than a single 30-minute walking break. Also, research found that people who took outdoor breaks and did not check their smartphones returned feeling happier and more rested than people who walked indoors and checked their smartphones." , sourceName: "Inc.", sourceURL: "https://www.inc.com/marcel-schwantes/3-winning-habits-youll-find-in-most-successful-people-this-year.html", sponsorLogo: "", sponsorURL: "")
let studying3 = Tip(header: "", title: "Study better by drinking water. Mild dehydration can lower a person's energy level and ability to think clearly", body: "Researchers found that a lack of water resulted in headaches, fatigue, and difficulty in concentrating. The study's participants also considered cognitive tasks as more difficult when slightly dehydrated." , sourceName: "The Atlantic", sourceURL: "https://www.theatlantic.com/health/archive/2012/02/study-of-the-day-mild-dehydration-alters-mood-makes-thinking-hard/253320/", sponsorLogo: "", sponsorURL: "")
let studying4 = Tip(header: "", title: "The most effective way to become a National Spelling Bee champion is solitary study", body: "The highest performers in the National Spelling Bee spend the most time by studying long lists alone. \"Deliberate practice\" is the most effective, but probably the least fun, way to learn to spell obscure words. In fact, it is the elite performer’s willingness to engage in hard or, quite often, very boring, practice that distinguishes people who are good at their chosen activity from those who are the very best at it." , sourceName: "UC Berkeley", sourceURL: "https://greatergood.berkeley.edu/article/item/a_new_theory_of_elite_performance", sponsorLogo: "", sponsorURL: "")

//2
let studying5 = Tip(header: "", title: "Improve your performance on memory and problem solving by not having your phone near you", body: "Researchers asked participants to either place phones on their desks, in their bags/pockets, or in another room entirely. They were then tested on their working memory capacity, as well as problem solving. According to the study, \"the mere presence of participants' own smartphones impaired their performance,\" noting that even though the participants received no notifications from their phones over the course of the test, they did far more poorly than the participants who had their phones in another room." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.ca/2017/06/30/cellphones-distraction-study_a_23009948/", sponsorLogo: "", sponsorURL: "")
let studying6 = Tip(header: "", title: "Study better by exercising first", body: "Studies show our brainpower gets a boost following even a short workout, as our bodies are pumping oxygen and nutrients to the brain. Exercising shortly before studying can make you more alert, open, and able to learn new information during your post-workout study session." , sourceName: "The Best Colleges", sourceURL: "https://www.thebestcolleges.org/17-scientifically-proven-ways-to-study-better-this-year/", sponsorLogo: "", sponsorURL: "")
let studying7 = Tip(header: "", title: "Study better by getting into a calm and positive mood first", body: "UC Irvine researchers find that being stressed can produce corticotropin-releasing hormones that disrupt the process of creating and storing memories. Taking study breaks to go for a walk or take in a few deep breaths will help help lower your stress  level and improve your studying." , sourceName: "The Best Colleges", sourceURL: "https://www.thebestcolleges.org/17-scientifically-proven-ways-to-study-better-this-year/", sponsorLogo: "", sponsorURL: "")
let studying8 = Tip(header: "", title: "People learn better when using multiple, 1-hour studying sessions (with breaks) rather than one extended session (without breaks)", body: "Brain synapses encode memories in the hippocampus much better when activated briefly at one-hour intervals. Some sets of synapses require hourlong delays between activation in order to store new information. This explains why prolonged ‘cramming’ is inefficient – only one set of synapses is being engaged." , sourceName: "University of California, Irvine", sourceURL: "https://news.uci.edu/2014/12/10/multiple-short-learning-sessions-strengthen-memory-formation-in-fragile-x-syndrome-2/", sponsorLogo: "", sponsorURL: "")
//3
let studying9 = Tip(header: "", title: "Learn better by studying a short time on each class every day over several days and weeks", body: "The total amount of time spent studying will be the same (or less) than 1 or 2 marathon library sessions, but you will learn the information more deeply and retain much more for the long term. Long study sessions lead to a lack of concentration and thus a lack of learning and retention." , sourceName: "University of North Carolina at Chapel Hill", sourceURL: "https://learningcenter.unc.edu/tips-and-tools/studying-101-study-smarter-not-harder/", sponsorLogo: "", sponsorURL: "")
let studying10 = Tip(header: "", title: "Studying in multiple locations helps you remember more later", body: "Rather than sitting at your desk or the kitchen table studying for hours, finding some new scenery will create new associations in your brain and make it easier to recall information later. Also, by changing your environment, your brain is forced to retrieve the same information in different places and will therefore see that information as more useful and worth holding onto." , sourceName: "Open Colleges", sourceURL: "https://www.opencolleges.edu.au/informed/features/how-does-the-brain-learn-best-10-smart-studying-strategies/", sponsorLogo: "", sponsorURL: "")
let studying11 = Tip(header: "", title: "Compared to just studying for an exam, students who answered these questions were less stressed and outperformed those who did not, by an average of 1/3 of a letter grade (e.g. B+ to A-)", body: "Answer these questions: • What grade do you want on the exam? • How important is it to get this grade? • What's the probability that you will get this grade? • What kinds of questions might the exam include? • And what resources will you use to study and why will they be useful  (lecture notes, practice exam questions, textbook readings, instructor office hours, private tutoring)?" , sourceName: "Quartz", sourceURL: "https://qz.com/978273/a-stanford-professors-15-minute-study-hack-improves-test-grades-by-a-third-of-a-grade/", sponsorLogo: "", sponsorURL: "")
let studying12 = Tip(header: "", title: "Psychologists agree that reviewing the material you just learned soon after class is better than 'cramming' right before exam day", body: "The first time you hear a lecture or study something new, you retain up to 80% of what you’ve just learned -- if you review the material within 24 hours. And this effect is cumulative; so after a week, you may retain 100% of the same information after only 5 minutes of review." , sourceName: "The Best Colleges", sourceURL: "https://www.thebestcolleges.org/17-scientifically-proven-ways-to-study-better-this-year/", sponsorLogo: "", sponsorURL: "")

//4
let studying13 = Tip(header: "", title: "Taking practice tests (or quizing yourself) is a better way to study than simply re-reading your notes or textbook", body: "Students who took practice tests while studying on their own performed better on long-term memory recall exams than students who simply studyed by re-reading the material. Also, the researchers found that students who rely on repeated study alone often come away with a false sense of confidence about their mastery of the material." , sourceName: "Washington University in St. Louis", sourceURL: "https://source.wustl.edu/2006/03/repeated-testtaking-better-for-retention-than-repeated-studying-research-shows/", sponsorLogo: "", sponsorURL: "")
let studying14 = Tip(header: "", title: "Music you like increases focus, while music you don’t decreases focus", body: "Music that causes pleasurable feelings can improve concentration. Music with no (or little) words might be best for studying, as human speech is something our brains pay particular attention to. As a result, some people argue that one of the best music genres for concentration is the video game soundtrack." , sourceName: "The Guardian", sourceURL: "https://www.theguardian.com/education/2016/aug/20/does-music-really-help-you-concentrate", sponsorLogo: "", sponsorURL: "")


//Day
let studyingDay2 = Tip(header: "", title: "Taking a daytime nap shortly after learning new information improves long-term memory recall", body: "Children who took a daytime nap shortly after learning new information scored 10% higher on a memory test taken the next day compared to children who did not nap during the day. It seems that there is an additional benefit of having the sleep occur in close proximity to the learning." , sourceName: "University of Massachusetts Amherst", sourceURL: "https://www.umass.edu/newsoffice/article/sleep-research-study-finds-daytime-naps", sponsorLogo: "", sponsorURL: "")

//PM
let studyingPM1 = Tip(header: "", title: "Studying before bedtime is best because our brains create stronger memories during sleep", body: "Participants who engaged in studying before bedtime were able to recall information from their memory at a higher rate and felt more confident about their answers compared to those who studied in the morning. This is because, the cortex of the brain, which is important for building neural connections for creating memories of newly learned information, becomes very active when during sleep." , sourceName: "Chronobiology", sourceURL: "https://www.chronobiology.com/scientists-say-studying-before-bedtime-is-best/", sponsorLogo: "", sponsorURL: "")


// MARK: - Home, AM

let homeAMTitle = "Home"
let homeAMIcon = "Hom"

let homeAMTip1 = Tip(header: improvePerformance, title: "If you wake up energized, you’re going to carry that energy through the rest of the day", body: "The morning is a critical time that can set the tone for the entire day. Start your morning with little \"wins\" to prime your brain to work toward more \"wins\" and successes throughout the day. \n\nEat breakfast, say one thing you're grateful for, get outside, exercise, or talk with your family or friends." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/pop-culture/9-things-do-morning-make-your-whole-day-more-productive-ncna772446", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let homeAMTip2 = Tip(header: health, title: "Drink a glass or two of water before breakfast to rehydrate your body and aid digestion and metabolism", body: "After being asleep all night, we wake up every day slightly dehydrated. Drinking a couple glasses of water allows the body to rehydrate for better digestion when you do eat. It also helps with moving the lower bowels for regularity in the mornings." , sourceName: "USA Today", sourceURL: "https://www.usatoday.com/story/news/nation-now/2017/03/14/why-you-should-drink-water-first-thing-every-day/99123938/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let homeAMTip3 = Tip(header: loseWeight, title: "Front-load your calories early in the day to jump-start your metabolism and prevent obesity, starting with a healthy breakfast and tapering off to a smaller lunch and light dinner", body: "Having the largest meal in the morning appears to have advantages for weight control compared with having a large meal in the evening, she said, since the digestive process and the action of insulin, the pancreatic hormone that the body uses to process the sugars in carbohydrates and store glucose, appear to be at their peak performance early in the day. Researchers also found that those who ate their largest meal early in the day were more likely to have less body fat than those who ate a large lunch or dinner." , sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/2017/08/21/well/eat/the-case-for-a-breakfast-feast.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let homeAMTip4 = Tip(header: increaseConfidence, title: "Every time you walk through a doorway, remember to stand up, put your chin up, put your shoulders back, and smile", body: "This will create a first impression that causes other people to view you as confident, open, positive, and friendly. That will change the way that we think about ourselves." , sourceName: "The Unbeatable Mind Podcast", sourceURL: "https://unbeatablemind.com/jordan-harbinger/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let homeAMTipArray0 = [homeAMTip1, homeAMTip2, homeAMTip3, homeAMTip4]
let homeAMTopic0 = Topic(title: homeAMTitle, icon: homeAMIcon, tip: homeAMTipArray0)

// MARK: - Home, PM

let homePMTitle = "Home"
let homePMIcon = "Hom"

// 0
let homePMTip1 = Tip(header: sleepBetter, title: "Sleep better by only using your room for sleep", body: "You know how Pavlov trained his dogs to associate a ringing bell with eating? That’s what you want to do with your bedroom and feeling sleepy. Don't use your bedroom for anything but sleep (and sex) to create a mental association between the bed and feeling sleepy." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/2014/12/14/bedtime-rituals_n_6309564.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let homePMTip2 = Tip(header: sleepBetter, title: "Sleep better by not eating 3 hours before bed", body: "Finish dinner no later than three hours before bedtime, so you give your stomach time to digest, and you won’t be kept awake by heartburn, gas or a sugar- or caffeine-fueled energy surge." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/2014/12/14/bedtime-rituals_n_6309564.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let homePMTip3 = Tip(header: hygiene, title: "Scientists recommend changing your bed sheets once a week - or a minimum of every 2 weeks", body:  "Though most bacteria on sheets is mostly harmless, the bacteria and fungi, along with the dirt and oils sloughed off during sleep, can cling to sheets and your skin, contributing to acne and dandruff. Wash sheets in hot water." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/pop-culture/how-often-you-should-wash-everything-your-home-according-science-ncna826271", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let homePMTip4 = Tip(header: hygiene, title: "Scientists recommend washing your sinks daily", body: "Even if they look clean, sinks can get really gross. \n\nBathroom sink: accumulates fecal matter from washing your hands after you use the bathroom. \n\nKitchen sink:  bacteria from food, like E.Coli and Salmonella, can contaminate the kitchen sink." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/pop-culture/how-often-you-should-wash-everything-your-home-according-science-ncna826271", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//1
let homePMTip5 = Tip(header: hygiene, title: "Scientists recommend vacuuming rugs and washing floors every 1 to 2 weeks", body: "Rugs should be vacuumed weekly (more often if you have pets) to keep dust, dirt and allergens at bay. Hard floors should be washed or steamed once every couple of weeks." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/pop-culture/how-often-you-should-wash-everything-your-home-according-science-ncna826271", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let homePMTip6 = Tip(header: hygiene, title: "90% of Americans spend close to 22 hours inside every day", body: "Spending so much time inside is not good for your health: indoor air can be up to five times as polluted as outdoor air. Poor air quality can increase instances of eye, nose and throat irritation as well as headaches. Living in damp and moldy homes increases risk of asthma by as much as 40%." , sourceName: "USA Today", sourceURL: "https://www.usatoday.com/story/sponsor-story/velux/2018/05/15/indoor-generation-and-health-risks-spending-more-time-inside/610289002/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let homePMTip7 = Tip(header: hygiene, title: "Spending too much time indoors disrupts your natural sleep cycle", body: "Human sleep cycles have evolved to respond to natural daylight. Not getting enough sunlight affects the resetting of your circadian clock and, as a result, reduces your sleep quality." , sourceName: "USA Today", sourceURL: "https://www.usatoday.com/story/sponsor-story/velux/2018/05/15/indoor-generation-and-health-risks-spending-more-time-inside/610289002/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let homePMTip8 = Tip(header: hygiene, title: "Get outside: Getting some green can help alleviate symptoms of depression, up your energy, and improve your overall well-being", body: "people who walked, ran, or biked in nature had a lower risk of poor mental health than people who exercised at the gym or at home." , sourceName: "Health", sourceURL: "https://www.health.com/depression/bad-to-stay-inside", sponsorLogo: "", sponsorURL: "")

//2 (WIP)
let homePMTip9 = Tip(header: hygiene, title: "Research: People make healthier choices when their home is neat but people with a cluttered home have more stress and do less physical activity", body: "To reduce clutter, think of areas in your home in terms of \"zones.\" Items that are used or accessed frequently should claim prime real estate, while lesser-used items should be stored in closets and bottom shelves." , sourceName: "Prevention", sourceURL: "https://www.prevention.com/life/a20510511/how-to-organize-your-home/", sponsorLogo: "", sponsorURL: "")
let homePMTip10 = Tip(header: "", title: "Warren Buffett and Mark Cuban agree that reading is the key to success and winning against competitors", body: "Cuban wrote in his blog, \"I read more than 3 hours almost every day. Most people won't put in the time to get a knowledge advantage.\" Buffett said in interviews, \"I still probably spend 5 or 6 hours a day reading. All of you can do it, but I guarantee not many of you will do it.\"" , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2017/11/15/warren-buffett-and-mark-cuban-agree-reading-is-key-to-success.html", sponsorLogo: "", sponsorURL: "")
let homePMTip11 = Tip(header: "", title: "To read 200 books a year, simply spend 417 hours a year (or 70 minutes a day) reading", body: "In comparison to the estimated time it takes the average American to read 200 books, the average American spends 608 hours on social media and 1,642 hours on TV each year. If you want to read, make sure (1) you remove all distractions from your environment and (2) you make books as easy to access as possible." , sourceName: "Quartz", sourceURL: "https://qz.com/895101/in-the-time-you-spend-on-social-media-each-year-you-could-read-200-books/", sponsorLogo: "", sponsorURL: "")


var homePMTipArray0 = [homePMTip1, homePMTip2, homePMTip3, homePMTip4]
let homePMTopic0 = Topic(title: homePMTitle, icon: homePMIcon, tip: homePMTipArray0)

var homePMTipArray1 = [homePMTip5, homePMTip6, homePMTip7, homePMTip8]
let homePMTopic1 = Topic(title: homePMTitle, icon: homePMIcon, tip: homePMTipArray1)

// NOT USED YET
var homePMTipArray2 = [homePMTip9, homePMTip8, homePMTip7, homePMTip6]
let homePMTopic2 = Topic(title: homePMTitle, icon: homePMIcon, tip: homePMTipArray1)

// MARK: - Kitchen

let kitchenTitle = "Kitchen"
let kitchenIcon = "Kit"

let kitchenTip1 = Tip(header: hygiene, title: "Changed your sponges every fews days", body: "Your kitchen sponge collects billions of bacteria. But most of the bacteria isn’t harmful. Because washing sponges with soap and water doesn’t really work, drop them into boiling water for 2 minutes, put them in the microwave for 2 minutes while damp every couple of days, and replace them when they deteriorate." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/pop-culture/how-often-you-should-wash-everything-your-home-according-science-ncna826271", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let kitchenTip2 = Tip(header: kitchenTitle, title: "Home,kitchen Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let kitchenTip3 = Tip(header: kitchenTitle, title: "Home, kitchen Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let kitchenTip4 = Tip(header: kitchenTitle, title: "Home, kitchen Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")

var kitchenTipArray0 = [homeAMTip1, homeAMTip2, homeAMTip3, homeAMTip4]

//let kitchenTopic0 = Topic(title: kitchenTitle, icon: kitchenIcon, tip: kitchenTipArray0)

// MARK: - AM Bathroom

let bathroomTitle = "Bathroom"
let bathroomIcon = "Bat"

let bathroomTip1 = Tip(header: health, title: "Check to see if you're hydrated when you go to the bathroom. Staying hydrated reduces your risk for kidney stones.", body: "When you're getting enough water, urine flows freely, is light in color and free of odor. When your body is not getting enough water, urine is dark yellow, has an oder, and is more concentrated which increases because the kidneys trap extra fluid for bodily functions. \n\nIf you chronically drink too little, you may be at higher risk for kidney stones, especially in warm climates." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/diet/features/6-reasons-to-drink-water#1", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let bathroomTip2 = Tip(header: health, title: "Drinking water reduces your chances of getting constipation.", body: "Proper hydration keeps things flowing along your gastrointestinal tract and prevents constipation. When you don't get enough liquid, the colon pulls water from stools to maintain hydration -- and the result is constipation. \n\nAdequate liquid and fiber is the perfect combination, because the liquid pumps up the fiber and acts like a broom to keep your bowel functioning properly." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/diet/features/6-reasons-to-drink-water#3", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let bathroomTip3 = Tip(header: reduceGerms, title: "Scientist recommend cleaning your bathroom door knobs once a week.", body: "Disinfect bathroom door knobs at least once a week, especially if there’s an illness in the house." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/pop-culture/how-often-you-should-wash-everything-your-home-according-science-ncna826271", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let bathroomTip4 = Tip(header: reduceGerms, title: "Scientist recommend wiping down your bathroom at least once a week", body: "Your bathroom is the ultimate bacteria host; E.coli can be found within 6 feet of the toilet and in the sink. To keep it at bay, disinfect the toilet and sink at least once weekly, and the bathtub every 2 weeks — more if you shower often. Your shower curtains should be disinfected weekly to avoid mildew, which can cause skin, eye and throat irritation in some people." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/pop-culture/how-often-you-should-wash-everything-your-home-according-science-ncna826271", sponsorLogo: "TBD", sponsorURL: "www.test.com")

var bathroomTipArray0 = [bathroomTip1, bathroomTip2, bathroomTip3, bathroomTip4]

let bathroomTopic0 = Topic(title: bathroomTitle, icon: bathroomIcon, tip: bathroomTipArray0)

// MARK: - Bathroom PM

let bathroomPMTitle = "Bathroom"
let bathroomPMIcon = "Bat"

let bathroomPMTip1 = Tip(header: fresherBreath, title: "Cleaning your tongue is one of the best ways to prevent bad breath", body: "Brush your tongue with a toothbrush or tongue scraper after brushing your teeth. You'll know your tongue is clean when it looks like a fleshy pink color. If it looks like any other color besides pink, you probably have debris buildup to clean off." , sourceName: "SELF", sourceURL: "https://www.self.com/story/how-to-clean-your-tongue", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let bathroomPMTip2 = Tip(header: reduceGerms, title: "Scientist recommend changing your bathroom towels every other day.", body: "Bath towels become loaded with bacteria (including staph and fecal) and if your towel doesn’t fully dry, that bacteria can grow. Plus, dandruff-causing fungi can also grow in them." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/pop-culture/how-often-you-should-wash-everything-your-home-according-science-ncna826271", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let bathroomPMTip3 = Tip(header: sleepBetter, title: "Trade your shower for a bath to reduce stress, sleep better, and lose weight", body: "When you take a hot bath your body temperature rises, and then quickly cools down, which relaxes your body, burns calories, and primes it for sleep." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/health/5-science-backed-ways-have-healthier-weekend-ncna782761", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let bathroomPMTip4 = Tip(header: reduceGerms, title: "Scientist recommend wiping down your bathroom at least once a week", body: "Your bathroom is the ultimate bacteria host; E.coli can be found within 6 feet of the toilet and in the sink. To keep it at bay, disinfect the toilet and sink at least once weekly, and the bathtub every 2 weeks." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/pop-culture/how-often-you-should-wash-everything-your-home-according-science-ncna826271", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//////////
let bathroomPMTip5 = Tip(header: reduceGerms, title: "While a hot bath may even help relax and prime your body for sleep, showers often wake people up, so it might not be the best thing to do before bed", body: "Also, people with long hair should be careful not to go to bed with wet hair because it can also make sheets and pillows damp, which could cause mold to grow." , sourceName: "Health", sourceURL: "https://www.health.com/mind-body/20-things-you-shouldn-t-do-before-bed#take-a-shower", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let bathroomPMTip6 = Tip(header: reduceGerms, title: "Throwing contacts down the toilet or sink contributes to microplastic pollution. Throw contacts away in the trash", body: "Contacts don’t decompose, and as a result, nearly 50 tons of contacts could end up in American water supplies each year. Tiny bits of plastic from many sources have also been spotted in the oceans and other bodies of water, where they may be ingested by fish, corals and other animals." , sourceName: "The Atlantic", sourceURL: "https://www.theatlantic.com/health/archive/2018/08/contacts-down-the-drain/567850/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let bathroomPMTipArray0 = [bathroomPMTip1, bathroomPMTip2, bathroomPMTip3, bathroomPMTip4]
let bathroomPMTopic0 = Topic(title: bathroomPMTitle, icon: bathroomPMIcon, tip: bathroomPMTipArray0)

let bathroomPMTipArray1 = [bathroomPMTip5, bathroomPMTip6, bathroomPMTip4, bathroomPMTip3]
let bathroomPMTopic1 = Topic(title: bathroomPMTitle, icon: bathroomPMIcon, tip: bathroomPMTipArray1)

// MARK: - Bedtime

let bedtimeTitle = "Bedtime"
let bedtimeIcon = "Bed"

// MON
let bedtimeTip1 = Tip(header: reduceCavities, title: "Brush your teeth before bed because it's easier to get a cavity while you sleep", body: "While you sleep, your mouth salivates less, which can lead to cavities. This is why it is important to brush your teeth before bed. The American Dental Association recommends you brush twice a day for two minutes, although they don't specify what time of day these brushing should happen." , sourceName: "Greatist", sourceURL: "https://greatist.com/live/brushing-teeth-before-bed", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let bedtimeTip2 = Tip(header: navySealAdvice, title: "Wake up early tomorrow and exercise. Don't think. Just execute the plan.", body: "One of the most common ways to sabotage your morning is to get a slow start by gradually waking up and doing tasks that require thinking. Instead, wake up early, jump out of bed, and puts on the workout clothes you prepared the night before. By the time you've finished your workout, most people are just waking up." , sourceName: "Jocko Willink, retired Navy SEAL commander", sourceURL: "https://www.businessinsider.com/jocko-willink-how-to-wake-up-earlier-2017-11", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let bedtimeTip3 = Tip(header: sleepBetter, title: "A nighttime ritual will help to reduce stress and fall asleep faster", body: "Taking a hot bath, reading a book, journaling, going for an evening stroll or listening to calming music, is critical to priming the brain to sleep well." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/health/how-effectively-manage-stress-so-it-doesn-t-hurt-your-ncna815626", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let bedtimeTip4 = Tip(header: planAhead, title: "Reduce decision fatigure tomorrow by making a plan tonight", body: "List the major tasks you want to accomplish the next day — and how you want to spend the first few hours of the day. Lay out the clothes you’ll wear and have ingredients ready to make a healthy breakfast. Making less decisions in the morning helps you have more willpower later in the day." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/health/9-things-do-morning-make-your-whole-day-more-productive-ncna772446", sponsorLogo: "TBD", sponsorURL: "www.test.com")

////// TUES
let bedtimeTip5 = Tip(header: "Bedtime", title: "Set your room temperature between 60 and 70 degrees fahrenheit (16 to 21 degrees celsius)", body: "Your core body temperature drops during the night to help you fall asleep and maintain sleep. A lower room temperature allows for people to cover up with blankets without getting too hot.", sourceName: "Health", sourceURL: "https://www.health.com/mind-body/20-things-you-shouldn-t-do-before-bed#alter-your-routine", sponsorLogo: "", sponsorURL: "")
let bedtimeTip6 = Tip(header: "Bedtime", title: "Drink a glass of warm milk before bed to reduce insomnia and fidgetiness", body: "Milk is high in antioxidants, vitamin B2 and B12, as well as protein and calcium. The protein lactium has a calming effect by lowering blood pressure, which the potassium in milk can help relieve muscle spasms triggered by feeling tense.", sourceName: "Men's Journal", sourceURL: "https://www.mensjournal.com/food-drink/eat-to-beat-stress-10-foods-that-reduce-anxiety/4-milk/", sponsorLogo: "", sponsorURL: "")
let bedtimeTip7 = Tip(header: "Bedtime", title: "Having a bedtime routine sends a signal to your brain that it's time for bed—especially if you do them in the same order, at the same time every night", body: "Without a consistent bedtime routine, your brain doesn't go into sleep mode until you crawl into bed and turn out the light. Try brushing your teeth, washing your face, and laying out your clothes for the morning in the same order each night.", sourceName: "Health", sourceURL: "https://www.health.com/mind-body/20-things-you-shouldn-t-do-before-bed#alter-your-routine", sponsorLogo: "", sponsorURL: "")
let bedtimeTip8 = Tip(header: increaseConfidence, title: "Increase your confidence. Before you even get out of bed tomorrow, stretch your body as wide as possible in an 'X' or 'Y' position.", body: "Sleeping in the fetal position sends a subtle signal to your brain that your body is under attack. But if you do a power pose when you wake up, you’ll see an improvement in your daily confidence levels and happiness.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/amy-cuddy-advice-waking-up-right-2016-1", sponsorLogo: "sponsor", sponsorURL: "sponsorURL")

/////// WED
let bedtimeTip9 = Tip(header: increaseConfidence, title: "Use mouthwash before bed to give your mouth an extra layer of protection from cavity-causing acids", body: "Saliva prevents cavity-causing acids from building up. But we produce less saliva when we sleep. That can dry out your mouth, leaving teeth and gums vulnerable to things like tooth decay and gingivitis.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/amy-cuddy-advice-waking-up-right-2016-1", sponsorLogo: "sponsor", sponsorURL: "sponsorURL")
let bedtimeTip10 = Tip(header: "Phone", title: "Put your phone in another room or somewhere across the bedroom, far away from your arms' reach, so you're not tempted to check it first thing in the morning", body: "Immediately checking your phone when you wake up is more likely to increase stress and leave you feeling overwhelmed. The information overload that hits you before you're fully awake also interferes with your ability to priority tasks during the day.", sourceName: "Elite Daily", sourceURL: "https://www.elitedaily.com/p/is-it-bad-to-look-at-your-phone-right-when-you-wake-up-it-might-be-sabotaging-your-day-8437383", sponsorLogo: "", sponsorURL: "")
let bedtimeTip11 = Tip(header: "", title: "Sleep more - you’ll be less sensitive to negative emotions", body: "In one experiment, sleep-deprived college students tried to memorize a list of words. They could remember 81% of the words with a negative connotation, like \"cancer.\" But they could remember only 31% of the words with a positive or neutral connotation, like \"sunshine\" or \"basket.\"", sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/belle-beth-cooper/10-simple-things-to-be-happy_b_4241824.html", sponsorLogo: "", sponsorURL: "")
let bedtimeTip12 = Tip(header: "", title: "Serial entrepreneur Gary Vaynerchuk wakes up at 6AM every day and follows the same morning routine", body: "Consistency and routine are helpful for starting the day in a proactive mode. He reads the news, checks his social media, exercises for 45 minutes, spends times with his kids before they go to school, calls a friend or family member while he commutes to work, and then gets into the office at 9AM.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/gary-vaynerchuks-morning-routine-2015-3", sponsorLogo: "", sponsorURL: "")

/////// THURS
let bedtimeTip13 = Tip(header: "", title: "Virgin Group founder Richard Branson wakes up at 5 AM every day and exercises", body: "You can’t be productive if you’re not healthy. \"I definitely can achieve twice as much by keeping fit,\" Branson said. \"It keeps the brain functioning well.\"", sourceName: "Fast Company", sourceURL: "https://www.fastcompany.com/3066982/why-the-most-productive-people-do-these-six-things-every-day", sponsorLogo: "", sponsorURL: "")
let bedtimeTip14 = Tip(header: "", title: "Getting 7 to 8 hours of sleep each night is associated with the lowest risk of missing work because of sickness", body: "People sleeping 5 hours or less, or 10 hours or more, reported 5 to 9 more sick days each year, as compared to those who slept between 7 and 8 hours per night. Sleep deficiency causes sickness, decline in cognitive functioning, and accidents while commuting.", sourceName: "Reuters", sourceURL: "https://www.reuters.com/article/us-sleep-disturbance-workers-absence/sleeping-seven-to-eight-hours-a-night-linked-to-taking-fewer-sick-days-idUSKBN0H62BM20140911", sponsorLogo: "", sponsorURL: "")
let bedtimeTip15 = Tip(header: health, title: "Reflect on or write down one positive moment that happened today", body: "Celebrate the successes, even if they were few and far between, because the last thing you do before bed tends to impact your mood the next day. Benjamin Franklin famously asked himself the same question every night: \"What good have I done today?\"" , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/what-successful-people-do-before-bed-2016-6#7-they-reflect-on-the-good-things-from-the-day-7", sponsorLogo: "", sponsorURL: "")
let bedtimeTip16 = Tip(header: health, title: "Loss weight by waking up earlier tomorrow and making time to get sunlight between 8:00 a.m. and 12:00 p.m.", body: "Research found that 20 to 30 minutes of early morning sun exposure is enough for you to lower your Body Mass Index (BMI) and lower your waistline. If you're not getting sufficient sunlight at the appropriate time of day, it could de-synchronise your internal body clock, which is known to affect metabolism and can lead to weight gain." , sourceName: "Pop Sugar", sourceURL: "https://www.popsugar.com.au/fitness/Sunlight-Helps-Weight-Loss-34543871?stream_view=1#photo-34543872", sponsorLogo: "", sponsorURL: "")
//// FRI (WIP)
let bedtimeTip17 = Tip(header: health, title: "Fall asleep faster by not using electronics an hour before bed", body: "Cell phones, TVs, and tablets give off what’s known as blue light—a type that studies suggest can inhibit the production of the sleep-inducing hormone melatonin and disrupt your circadian rhythm. This may be because blue light emits wavelengths similar to daylight, which can make your body think it’s daytime while you're trying to fall asleep." , sourceName: "ABC News", sourceURL: "https://abcnews.go.com/Health/reasons-sleep-phone-bed/story?id=24839804", sponsorLogo: "", sponsorURL: "")
let bedtimeTip18 = Tip(header: health, title: "Prepare your gym clothes tonight so that you can throw it on as soon as you slide out of bed", body: "Former Navy SEAL Jocko Willink says, \"Don't think in the morning. That's a big mistake that people make. They wake up in the morning and they start thinking. Don't think. Just execute the plan. The plan is the alarm clock goes off, you get up, you go work out." , sourceName: "Thrive Global", sourceURL: "https://medium.com/thrive-global/this-10-minute-night-routine-guarantees-success-your-next-morning-af47fa7a00d5", sponsorLogo: "", sponsorURL: "")
let bedtimeTip19 = Tip(header: health, title: "The most fundamental thing you can do tonight is decide what you’re going to do the next morning. Design trumps tomorrow's willpower.", body: "Write down when you’re going to wake up and set the alarm for that time (but put your phone or alarm clock in a different room so you physically have to get out of bed to turn it off). And you write down the top 1–3 things you intend to accomplish with your morning." , sourceName: "Thrive Global", sourceURL: "https://medium.com/thrive-global/this-10-minute-night-routine-guarantees-success-your-next-morning-af47fa7a00d5", sponsorLogo: "", sponsorURL: "")
let bedtimeTip20 = Tip(header: health, title: "Cellphone or computer use in bed before bedtime increases your risk of insomnia", body: "A study found that a mean usage of 46.6 minutes per night of cellphone and computer before bed were both positively associated with insomnia." , sourceName: "The Ohio State University", sourceURL: "https://u.osu.edu/emotionalfitness/2015/06/17/cell-phone-use-before-bedtime-might-impact-sleep-and-daytime-tiredness/", sponsorLogo: "", sponsorURL: "")

//WEEK 2
// MON (WIP)

//TUE

//WED

//THU

//FRIDAY NIGHT ONLY
let bedtimeFridayPMTip21 = Tip(header: health, title: "Successful people wake up early on the weekend too", body: "Former Navy SEAL Jocko Willink noticed the highest performers he served with were the ones who woke up earliest, beginning their days while others were sleeping. \"Don't sleep in on the weekends or else you'll ruin any progress you've made optimizing your schedule.\"" , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/former-navy-seal-jocko-willink-daily-routines-to-change-your-life-2017-11", sponsorLogo: "", sponsorURL: "")



//WEEK 1
//MON
var bedtimeTipArray0 = [ bedtimeTip1,  bedtimeTip2,  bedtimeTip3,  bedtimeTip4]
let bedtimeTopic0 = Topic(title: bedtimeTitle, icon: bedtimeIcon, tip: bedtimeTipArray0)
//TUE
var bedtimeTipArray1 = [ bedtimeTip5,  bedtimeTip6,  bedtimeTip7,  bedtimeTip8]
let bedtimeTopic1 = Topic(title: bedtimeTitle, icon: bedtimeIcon, tip: bedtimeTipArray1)
//WED
var bedtimeTipArray2 = [ bedtimeTip9,  bedtimeTip10,  bedtimeTip11,  bedtimeTip12]
let bedtimeTopic2 = Topic(title: bedtimeTitle, icon: bedtimeIcon, tip: bedtimeTipArray2)
//THU
var bedtimeTipArray3 = [ bedtimeTip3,  bedtimeTip14,  bedtimeTip15,  bedtimeTip16]
let bedtimeTopic3 = Topic(title: bedtimeTitle, icon: bedtimeIcon, tip: bedtimeTipArray3)
//FRI
var bedtimeTipArray4 = [ bedtimeTip17,  bedtimeTip18,  bedtimeTip19,  bedtimeTip20]
let bedtimeTopic4 = Topic(title: bedtimeTitle, icon: bedtimeIcon, tip: bedtimeTipArray4)






// MARK: - Restaurant (Friends or Family)

let restaurantTitle = "Restaurant"
let restaurantIcon = "Res"

//1
let restaurantTip1 = Tip(header: "Restaurant", title: "Mindful eating: Pay attention to the music being played", body: "Eateries with loud, energic music—create a hectic atmosphere that makes people overeat. Opt for establishments with softer sounds like jazz. Researchers found that people who dined in restaurants with lighter music ate less food." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/how-to-eat-healthy-at-restaurants/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let restaurantTip2 = Tip(header: "Restaurant", title: "Mindful eating: Look at the colors on the walls", body: "Restaurants with bold, bright colors—think reds and oranges—are stimulating, so you’re more likely to order more. However, softer colors like blues, peaches, grays and pinks encourage a more relaxed, eat-slowly atmosphere." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/how-to-eat-healthy-at-restaurants/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let restaurantTip3 = Tip(header: "Restaurant", title: "Avoid empty calorie alcoholic drinks", body: "Stay away from sugary margaritas and pina coladas because they’ll just add hundreds—or even thousands—of extra calories. Instead, get a glass of red wine (for the antioxidant benefits) or a vodka with a splash of club soda and a lime." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/healthy-eating-weight-loss-tips-not-calories-2018-7#if-you-go-out-to-eat-take-half-of-your-meal-home-in-a-to-go-box-15", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let restaurantTip4 = Tip(header: "Restaurant", title: "Reduce weight gain by putting half of your meal home in a to-go box", body: "A study found that many restaurants serve portions that are triple (or even quadruple!) that of a recommended portion size." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/how-to-eat-healthy-at-restaurants/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
//2
let restaurantTip5 = Tip(header: "Restaurant", title: "Scientists found that people who ate a large vegetable salad before their main dish ate fewer calories than those who didn’t", body: "Keep it simple by foregoing creamy (read: fattening) dressings for simple oil and vinegar. And skip the cheese and croutons, too." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/how-to-eat-healthy-at-restaurants/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let restaurantTip6 = Tip(header: "Restaurant", title: "Fat and calories hide in these buzzwords", body: "Anything that’s described as creamy, buttery, breaded, fried, stuffed or smothered is likely loaded with fat and calories. Fancy-sounding terms like sauteed, parmesan, or scalloped is a giveaway that there are plenty of calories stuffed inside the meal." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/how-to-eat-healthy-at-restaurants/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let restaurantTip7 = Tip(header: "Restaurant", title: "Look for these healthy buzzwords", body: "Roasted, baked, braised, broiled, poached, rubbed, seared, grilled, steamed, sautéed, spiced, seasoned indicate that the food was cooked in the healthiest way possible." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/how-to-eat-healthy-at-restaurants/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let restaurantTip8 = Tip(header: "Restaurant", title: "Plan to do some light exercise after dinner", body: "A nice stroll after dinner will not only help you digest, it’ll keep you from ordering something heavy while out. Why? You simply won’t want to feel weighed down and sluggish for a walk." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/how-to-eat-healthy-at-restaurants/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
//3 (WIP)
let restaurantTip9 = Tip(header: "Restaurant", title: "Diners leave 17% of their meals uneaten and 55% of edible leftovers are left at the restaurant", body: "Portion sizes have increased significantly over the past 30 years. The average pizza slice has grown 70% in calories, the average chicken caesar salad doubled in calories, and the average chocolate chip cookie has quadrupled. Today, portion sizes can be 2 to 8 times larger than USDA or FDA standard serving sizes." , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2015/04/22/americas-165-billion-food-waste-problem.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let restaurantTip10 = Tip(header: "Restaurant", title: "Be alert. Diners seated in darker rooms order dishes with 39% more calories than diners in brigher rooms", body: "Research found that people eating in well-lit spaces are 16%-24% more likely to order healthy dishes than those in dimly lit rooms, due to a higher level of alertness." , sourceName: "Food & Wine", sourceURL: "https://www.foodandwine.com/blogs/dim-lighting-makes-you-eat-more-restaurants", sponsorLogo: "", sponsorURL: "")

var restaurantTipArray0 = [restaurantTip1, restaurantTip2, restaurantTip3, restaurantTip4]
let restaurantTopic0 = Topic(title: restaurantTitle, icon: restaurantIcon, tip: restaurantTipArray0)

var restaurantTipArray1 = [restaurantTip5, restaurantTip6, restaurantTip7, restaurantTip8]
let restaurantTopic1 = Topic(title: restaurantTitle, icon: restaurantIcon, tip: restaurantTipArray1)


// MARK: - Morning Routine
let AMRoutine0 = Tip(header: "", title: "Apple CEO Tim Cook wakes up at 4 a.m. to exercise", body: "Cook's morning routine includes a one hour workout at the gym, which he says helps reduce stress and prepares him for the day." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/apple-ceo-tim-cooks-daily-routine-2018-11", sponsorLogo: "", sponsorURL: "")

// Tony Robbins
let AMRoutine1 = Tip(header: "", title: "Tony Robbins' 10 minute morning routine boosts his energy level for the day", body: "1. Breathing Exercise (1 minute): \n\n(He usually plays instrumental meditative music.) Begin by sitting straight with your eyes closed. Then inhale deeply through your nostrils while simultaneously lifting your arms up in a shoulder press motion, and then exhale forcefully through your nostrils while bringing your arms back down to your body, palms up. Do 3 sets of 30 quick repetitions, with a brief break in between each set." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/tony-robbins-morning-routine-meditation-and-workout-2017-10", sponsorLogo: "", sponsorURL: "")
let AMRoutine2 = Tip(header: "", title: "Tony Robbins then practices gratitude to eliminate anger and fear", body: "2. Express gratitude (3 minutes): \n\nThink about 3 things your grateful for. \"I make sure that one of them is very simple: The wind on my face, the reflection of the clouds that I just saw.\" This process eliminates anger and fear because, \"You can't be fearful and grateful simultaneously,\" Robbins said.", sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2017/01/26/tony-robbins-shares-the-10-minute-routine-that-sets-him-up-for-success.html", sponsorLogo: "", sponsorURL: "")
let AMRoutine3 = Tip(header: "", title: "Tony Robbins then visualizes positive energy flowing through him and sending well wishes out to the world", body: "3. Experience connection (3 minutes): \n\nHe imagines a light flowing in through his head and to the rest of his body, feeling as if the light is energizing and healing him. In this visualization, the light flows outward to the rest of the world, reaching his loved ones as well as strangers.", sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2017/01/26/tony-robbins-shares-the-10-minute-routine-that-sets-him-up-for-success.html", sponsorLogo: "", sponsorURL: "")
let AMRoutine4 = Tip(header: "", title: "Tony Robbins then visualizes 3 things that he's going to accomplish today", body: "4. Visualize success (3 minutes): \n\nHe spends a minute each imagining what it would feel and look like to accomplish 3 of his goals. Focus on how these accomplishments not only benefit you but allow you to help others.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/tony-robbins-morning-routine-meditation-and-workout-2017-10", sponsorLogo: "", sponsorURL: "")

// Jocko Willink
let AMRoutine5 = Tip(header: "", title: "Retired US Navy SEAL Jocko Willink wakes up a 4:30 a.m. and exercises", body: "He grabs his workout clothes, laid out the night before, and heads to the gym for a one hour strength workout. The exercises can either be lower weight with high reps and little rest or heavy weight with low reps and lots of rest.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/retired-navy-seal-jocko-willinks-morning-routine-2015-11", sponsorLogo: "", sponsorURL: "")
let AMRoutine6 = Tip(header: "", title: "Jocko Willink warms up to get his blood flowing and muscles loosened up", body: "Repeat this cycle: \n\n• Hang on a pull-up bar for 10 to 15 seconds. \n• Hold a push-up position for 10 to 15 seconds. \n• Get on the ground, face down, arch your head to ceiling to stretch abs. \n• Raise hips to the sky and stretch your back (aka the downward dog pose in yoga). \n• Do a slow squat and hold at bottom for 10 to 15 seconds. \n• Do a burpee. \n• Do a pull-up. \n• Do a push-up. \n• Do a few jumping jacks.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/retired-navy-seal-jocko-willink-workout-philosophy-2017-11", sponsorLogo: "", sponsorURL: "")
let AMRoutine7 = Tip(header: "", title: "Jocko Willink does strength training exercises to get stronger", body: "His exercises include: \n\n• Dead lifts. \n• Cleans. \n• Jerks. \n• Snatches. \n• Dips. \n• Maxing out to dead hang pull-ups. \n• Overhead squats, back squats, and front squats. \n• Core exercises like crunches and hanging leg raises.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/retired-navy-seal-jocko-willink-workout-philosophy-2017-11", sponsorLogo: "", sponsorURL: "")
let AMRoutine8 = Tip(header: "", title: "Jocko Willink then spends a few minutes (intense bursts) to 30 minutes (steady) on cardio training", body: "He pushes himself after his main exercises with either: \n\n• A few sprints. \n• A hard 1-2 mile run. \n• A stationary bike. \n• Or, a rowing machine.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/retired-navy-seal-jocko-willink-workout-philosophy-2017-11", sponsorLogo: "", sponsorURL: "")






// MARK: - Getting Ready AM
let getReadyAM0 = Tip(header: "Get Ready", title: "Reduce decision fatigue wearing the same type of clothes each day", body: "Steve Jobs, Mark Zuckerberg, and Barack Obama have all applied this idea to their lives. Wearing the same thing each day frees up the brainpower you would have put into picking out an outfit to make other, more important decisions." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/barack-obama-mark-zuckerberg-wear-the-same-outfit-2015-4", sponsorLogo: "TBD", sponsorURL: "www.test.com")



// MARK: - Getting Ready PM
let getReadyPM0 = Tip(header: "Get Ready", title: "Wearing the color red can actually make you feel more attractive", body: "In one experiment, a group of individuals who were wearing red were rated as more attractive by another group of individuals — despite the fact that the first groups’ clothing wasn’t visible to the group do the rating." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/business/can-wearing-work-uniform-help-you-get-ahead-ncna788136?cid=eml_better_20180716", sponsorLogo: "TBD", sponsorURL: "www.test.com")

// MARK: - Going Out (Nightlife)

let goingOutTitle = "Going Out"
let goingOutIcon = "Goi"

// MARK: - Sex

let sex0 = Tip(header: "Sex", title: "Females should always pee after sex to prevent UTIs", body: "Females are 10 times more likely to get a UTI. Peeing flushes out bacteria in your urethra naturally caused by having sex. It's recommended to pee within 30 minutes after sex.", sourceName: "Bustle", sourceURL: "https://www.bustle.com/articles/144605-why-pee-after-sex-exactly-why-when-you-should-go-after-every-romp", sponsorLogo: "", sponsorURL: "")

// MARK: - Relationships / Couples

let relationship0 = Tip(header: "Gratitude", title: "Expressing gratitude can improve relationships", body: "A study of couples found that individuals who took time to express gratitude for their partner not only felt more positive toward the other person but also felt more comfortable expressing concerns about their relationship. Express gratitude in person or via a phone call or text message.", sourceName: "Harvard Health Publishing", sourceURL: "https://www.health.harvard.edu/healthbeat/giving-thanks-can-make-you-happier", sponsorLogo: "", sponsorURL: "")
let relationship1 = Tip(header: "Cheating", title: "People who have cheated before are 350% more likely to cheat again", body: "People who’ve been cheated on in the past are more likely to date a cheater again down the line. In addition, cheaters are significantly more prone to dating other cheaters.", sourceName: "Women's Health", sourceURL: "https://www.womenshealthmag.com/relationships/a19932020/will-they-cheat-again/", sponsorLogo: "", sponsorURL: "")
let relationship2 = Tip(header: "", title: "", body: "People who marry when they're very young are more likely to divorce. An American who weds at 25 is 11% less likely to divorce than one who marries at age 24. But waiting too long has a downside. Past the age of about 32-even after controlling for religion, education, geographic location, and other factors-the odds of divorce increase by 5% per year for at least the next decade.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
let relationship3 = Tip(header: "", title: "Couples tend to be more satisfied with their marriages, and less likely to divorce, if they have more education before the wedding", body: "So finish as much education as you can before getting married.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")

let relationship4 = Tip(header: "", title: "Couples that dated for at least 1 year before marriage were 20% less likely to divorce than those who made the move quickly. Couples that had dated for more than 3 years were even less likely to divorce. ", body: " ", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")// WIP

let relationship5 = Tip(header: "", title: "The more a couple spent on its wedding and engagement ring, the more likely they were to divorce", body: " ", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")// WIP

// MARK: - Breakups

let breakup1 = Tip(header: "Breakup", title: "The most humane and fair thing to do is to break the bad news to them as quickly as possible", body: "That means that if you want to break up with someone, you shouldn't sit through an awkward dinner beforehand or tell them there's something on your mind three days before you see them. You also shouldn't try and sugarcoat it so much that they get confused as to what you're talking about. But all you need is a 'we need to talk' buffer — just a couple of seconds for the other person to process that bad news is coming. Think about it like a band-aid— the faster you rip it off, the better you feel.", sourceName: "Insider", sourceURL: "https://www.thisisinsider.com/best-way-you-can-break-up-with-someone-2017-10", sponsorLogo: "", sponsorURL: "")


// MARK: - Parenting

let parenting0 = Tip(header: "Parenting", title: "Children who are held, rocked, soothed and attended to by an \"in tune\" parent have larger brains than children who are touched less or who are outright neglected", body: "Eye contact in particular fosters bonding and stimulates brain development, and children these days receive less eye contact than ever because of both kids and parents being locked onto screens. Eye contact, face to face interaction, touch, and observing body language all help children learn to regulate emotion and  arousal, develop a sense of self, and build capacity for intimacy. ", sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/mental-wealth/201704/10-ways-protect-the-brain-daily-screen-time", sponsorLogo: "", sponsorURL: "")

let parenting1 = Tip(header: "Parenting", title: "Studies found that kids who do chores have higher GPAs and were more likely to have sucessful relationships and careers", body: "One study found that kids with the highest GPA’s did more chores, had less than 30 minutes of daily screen-time, and spent more time with their parents. Another study showed that children who started doing chores at age 3 or 4 were more likely to have successful relationships and careers and were more self-sufficient.", sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/mental-wealth/201704/10-ways-protect-the-brain-daily-screen-time", sponsorLogo: "", sponsorURL: "")

// WIP
let parenting2 = Tip(header: "Parenting", title: "Rich parents invest in top-notch education to secure and preserve their children's social status", body: "In 2014, the top 1% spent 860% more than the national average on education, from high-end preschools to SAT tutors to Ivy League tuition. Rich parents are spending millions to live within walking distance of the country's best schools— an investment in hopes of setting their children up for a successful, well-connected future.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/discreet-wealth-new-status-symbol-rich-people-2018-11", sponsorLogo: "", sponsorURL: "")

let parenting3 = Tip(header: "Parenting", title: "Children who live near transportation noise are more likely to test poorly for language and cognitive skills and have lower reading scores", body: "Chronic noise impairs a child’s development and may have a lifelong effect on educational attainment and overall health. Numerous studies now show that children exposed to households or classrooms near airplane flight paths, railways or highways are slower in their development of cognitive and language skills and have lower reading scores. The report concludes, citing children as particularly vulnerable to the effects of chronic urban and suburban racket. One study in New York City found that reading scores of sixth-grade students whose classrooms faced train tracks were a year behind those on the quieter side of the building. Researchers also found that the Munich students near the working airports had significantly higher levels of the stress hormones adrenaline and cortisol and markedly higher blood pressure readings than children in quieter neighborhoods. Evidence suggests that elevated blood pressure in childhood predicts higher blood pressure later in life, and higher levels of stress hormones are linked to several life-threatening adult illnesses, including high blood pressure, elevated cholesterol and other lipids, and heart disease. We think one thing that might be going on is that children who are exposed to noise develop a stress response of ignoring the noise, but not only do they ignore noise, there’s evidence that they also ignore speech. So not only are they ignoring the stimuli that are harmful, but they’re also ignoring stimuli that they need to pay attention to.", sourceName: "American Psychological Association", sourceURL: "https://www.apa.org/monitor/2011/07-08/silence.aspx", sponsorLogo: "", sponsorURL: "")

// BODY HEALTH
let body1 = Tip(header: "Belly", title: "Whether it's called a beer belly, a spare tire, or the middle-age spread - abdominal obesity is the shape of health risk", body: "Abdominal obesity increases the risk of heart attack, stroke, diabetes, erectile dysfunction, and other woes. Risk begins to mount at a waist size above 37 inches for men, and a measurement above 40 inches would put you in the danger zone. For women, the corresponding waist sizes are 31½ and 35 inches, respectively.", sourceName: "Harvard Health Publishing", sourceURL: "https://www.health.harvard.edu/healthbeat/giving-thanks-can-make-you-happier", sponsorLogo: "", sponsorURL: "") // - seperate this by male and female tips

// STUDENTS
let student1 = Tip(header: "Confidence", title: "confidence during teenage years strongly correlates with higher earnings in adulthood", body: "", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/ashleystahl/2016/05/11/how-self-worth-affects-your-salary/#4c97d0e677fa", sponsorLogo: "", sponsorURL: "")

// Female Student
let fStudent1 = Tip(header: "Female", title: "Girls who play team sports are more likely to graduate from college, find a job, and be employed in male-dominated industries.", body: "There’s even a direct link between playing sports in high school and earning a bigger salary as an adult. Learning to own victory and survive defeat in sports is apparently good training for owning triumphs and surviving setbacks at work.", sourceName: "The Atlantic", sourceURL: "https://www.theatlantic.com/magazine/archive/2014/05/the-confidence-gap/359815/", sponsorLogo: "", sponsorURL: "")
// Male Student

// MARRIAGE
let marriage1 = Tip(header: "Marriage", title: "Women are most likely to cheat between 6 and 10 years of a relationship, and men are most likely to cheat after 11 years", body: "The research identified being female, being more religious, and being married for a shorter amount of time as the 3 most influential factors in people resisting cheating. The decision to stay out of an affair was motivated more by internal than external factors-fear of being alone and the desire to adhere to moral standards were found to be more influential in keeping people out of extramarital affairs than concerns of how cheating would impact their kids or partner.", sourceName: "Men's Health", sourceURL: "https://www.menshealth.com/sex-women/a19541650/marriage-when-is-cheating-most-likely-to-happen/", sponsorLogo: "", sponsorURL: "")

let marriage2 = Tip(header: "Marriage", title: "The best age to get married seems to be somewhere between 28 and 32", body: "Overall, those who marry before age 25 tend to be more likely to divorce than those who marry after that age. In general, marrying later in life tends to point to better odds of staying married.", sourceName: "Refinery29", sourceURL: "https://www.refinery29.com/2017/01/137440/divorce-rate-in-america-statistics", sponsorLogo: "", sponsorURL: "")

let marriage3 = Tip(header: "Marriage", title: "People with a college degree are about 10% less likely to divorce", body: "Women who had completed their college education had a rate of about 14.2 divorces per 1,000 while those who only completed some college had a rate of 23 per 1,000.", sourceName: "Refinery29", sourceURL: "https://www.refinery29.com/2017/01/137440/divorce-rate-in-america-statistics", sponsorLogo: "", sponsorURL: "")

let marriage4 = Tip(header: "Marriage", title: "Couples are less likely to get divorced if they have children", body: "Ratings of happiness and life satisfaction in that same study tended to decrease after couples had children.", sourceName: "Refinery29", sourceURL: "https://www.refinery29.com/2017/01/137440/divorce-rate-in-america-statistics", sponsorLogo: "", sponsorURL: "")

// MARK: - TRAVEL

let travelTitle = "Travel"
let travelIcon = "Tra"

let travelTip0 = Tip(header: "Jet Lag", title: "Reduce jet lag by changing your bedtime to better match the local time of your destination", body: "Jet lag occurs when we cross three or more time zone changes, because it throws off our circadian rhythm -- the biological clock that helps control when we wake and fall asleep. Try to sleep on the plane if it’s nighttime where you’re going or stay awake if it’s daytime -- but don’t force it.", sourceName: "The Washington Post", sourceURL: "https://www.washingtonpost.com/lifestyle/travel/want-to-minimize-jet-lag-heres-what-the-doctors-order/2018/08/29/23c14836-a7d8-11e8-97ce-cc9042272f07_story.html?noredirect=on&utm_term=.cb43c744e8ee", sponsorLogo: "", sponsorURL: "")

let travelTip1 = Tip(header: "Stress", title: "Poorly planned and stressful vacations eliminate the benefits of time away, study finds", body: "If you plan ahead, create social connections on the trip, go far from your work, and feel safe, 94% of vacations have a good ROI in terms of your energy and outlook upon returning to work. Just make sure you plan the trip at least a month in advance, as one of the key predictors of vacation ROI is the amount of stress caused by not planning ahead.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2016/07/the-data-driven-case-for-vacation", sponsorLogo: "", sponsorURL: "")

let travelTip2 = Tip(header: "Health", title: "Make sure to end the trip on a high note because our brains place more weight on things that happened last in a series", body: "This so-called \"recency effect\" means the end of a vacation is more easily recalled than the beginning. If you’re only going to upgrade once, splurge on the business class seat on the way home, not the way there. Plan your big dinner at the Michelin-starred restaurant for your final night, not your first.", sourceName: "Fast Company", sourceURL: "https://www.fastcompany.com/3048975/the-scientifically-proven-way-to-have-the-best-vacation-ever", sponsorLogo: "", sponsorURL: "")

let travelTip3 = Tip(header: "Health", title: "Vacations further away from home leads to greater levels of happiness, study finds", body: "An average vacation (or \"staycation\") was found to create no positive effect on happiness. But 84% of the best trips recorded by participants were to locations outside of country.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2014/02/when-a-vacation-reduces-stress-and-when-it-doesnt", sponsorLogo: "", sponsorURL: "")

/////////////
let travelTip4 = Tip(header: "Stress", title: "Vacations with medium to high levels of stress showed no increase in happiness after a vacation", body: "• Plan ahead. 74% find the most stressful part of travel to be figuring out the details: transportation, wasting time figure things out on the trip, and being unfamiliar with the location. \n\n• Meet with someone knowledgeable at the location. On the best trips, 77% met with a local host or had a knowledgeable friend.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2014/02/when-a-vacation-reduces-stress-and-when-it-doesnt", sponsorLogo: "", sponsorURL: "")
let travelTip5 = Tip(header: "Health", title: "Study: The health and wellness benefits of a vacation peaked at about 8 days in", body: "Research finds that we return to previous happiness levels fairly quickly after a vacation, and so shorter vacations experienced frequently contribute more to overall well-being than longer but less infrequent multi-week vacations.", sourceName: "Fast Company", sourceURL: "https://www.fastcompany.com/3048975/the-scientifically-proven-way-to-have-the-best-vacation-ever", sponsorLogo: "", sponsorURL: "")
let travelTip6 = Tip(header: "Memory", title: "Under some conditions taking a photo of something actually makes it harder to remember the event fully", body: "Taking pictures rather than concentrating fully on the events in front of us prevents memories from taking hold. However, taking a photograph of a specific detail on the object by zooming in on it with the camera seemed to preserve memory for the object, not just for the part that was zoomed in on but also for the part that was out of frame.", sourceName: "The Telegraph", sourceURL: "https://www.telegraph.co.uk/news/science/science-news/10507146/Taking-photographs-ruins-the-memory-research-finds.html", sponsorLogo: "", sponsorURL: "")

let travelTip7 = Tip(header: "Mental", title: "Destinations that are compatable with your personality and also fascinate or inspire you are best for your mental health", body: "The destination should have enough variation of interest and activities for you to be engaged with. Travel to a place that makes you feel at ease so you don't waste energy on feeling anxious. Also, a place that lets you disconnect from everyday life (e.g. technoloogy) or is physically different from where you live will likely make you feel more rejuvenated when you return.", sourceName: "Travel + Leisure", sourceURL: "https://www.travelandleisure.com/travel-news/beach-vacation-not-good-for-mental-health-study", sponsorLogo: "", sponsorURL: "")

var travelTipArray0 = [travelTip0, travelTip1, travelTip2, travelTip3]
let travelTopic0 = Topic(title: travelTitle, icon: travelIcon, tip: travelTipArray0)

var travelTipArray1 = [travelTip4, travelTip5, travelTip6, travelTip7]
let travelTopic1 = Topic(title: travelTitle, icon: travelIcon, tip: travelTipArray1)




// MARK: - HAIR

let hair1 = Tip(header: "Health", title: "Research: People view bald men as more dominate than men with hair", body: "A study found that men with shaved heads were rated as more dominant than similar men with full heads of hair, and that men whose hair was digitally removed were perceived as more dominant, taller, and stronger than their authentic selves. So if it’s starting to go, shave it off.", sourceName: "", sourceURL: "", sponsorLogo: "", sponsorURL: "")




//while daily self-care habits like exercise and getting enough sleep are a great way to manage our stress loads and help us live longer, healthier lives overall, research shows that there’s

// In our study, men with shorter vacations worked more and slept less than those who took longer vacations. This stressful lifestyle may have overruled any benefit of the intervention.
// stress reduction is an essential part of programmes aimed at reducing the risk of cardiovascular disease
// men with shorter vacations worked more and slept less than those who took longer vacations. This stressful lifestyle may have overruled any benefit of the intervention
// Shorter vacations were associated with excess deaths in the intervention group. In the intervention group, men who took three weeks or less annual vacation had a 37% greater chance of dying in 1974 to 2004 than those who took more than three weeks.


// MARK: - SCHOOL
//AM
// 1 // WIP
let schoolAMTip0 = Tip(header: "", title: "Students who get more sunlight before going to school perform better in tests", body: "Researchers followed students who moved to school districts with later start times and found that their standardized test scores improved. The results found that students going through puberty benefited the most from later start times. So, girls are negatively impacted by late start times starting around age 11, and boys at age 13.", sourceName: "The Atlantic", sourceURL: "https://www.theatlantic.com/education/archive/2017/05/sunshine-boosts-test-scores/526503/", sponsorLogo: "", sponsorURL: "")
let schoolAMTip1 = Tip(header: "", title: "Improve your grades by taking tests in the morning", body: "Researchers found students scored higher in the mornings than in the afternoons. For every hour later in the day the tests were given, scores feel a little more.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")

//PM


// I've found conflicting studies with early start times and math test scores
let school2 = Tip(header: "", title: "Get better at math by scheduling your math class in the morning", body: "Researchers found that students are more productive earlier in the school day, especially in math. Having math in the first two periods of the school day instead of the last two periods increases the math GPA of students as well as their scores in statewide tests.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
let school3 = Tip(header: "", title: "Students test scores increased when they had a 20-30 minute break to eat, play, and chat before a test", body: "Students who take the tests in the afternoon score significantly worse than those who take th eexams earlier in the day. But when students had a 20-30 minute breat to eat, play, and chat before a test, their scores did not decline. In fact, they increased. A break causes an improvement that is larger than the hourly deterioration. That is, scores go down after noon. But scores go up by a higher amount after breaks. Taking a test in the afternoon without a break produces scores that are equivalent to spending less time in school each year and having parents with lower incomes and less education. But taking the same test after a 20-30 minute break leads to scores that are equivalent to students spending 3 additional weeks in the classroom and having somewhat wealthier and better-educated parents. And the benefits were the greatest for the lowest-performing students. If there were a break after every hour, test scores would actually improve over the course of the day.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "") // WIP
let school4 = Tip(header: "", title: "Students who take recess often earn better grades than those with fewer recesses", body: "Students who have recess work harder, fidget less, and focus better. They even develop better social skills, show greater empathy, and eat healthier food.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
// 2
let school5 = Tip(header: "", title: "Teenagers who get less sleep than they need are at a higher risk for depression, suicide, substance abuse, and car crashes", body: "Evidence also links short sleep duration with obesity and a weakened immune system.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
let school6 = Tip(header: "", title: "Teenagers who get less sleep than they need are at a higher risk for depression, suicide, substance abuse, and car crashes", body: "Evidence also links short sleep duration with obesity and a weakened immune system.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")

// MARK: - Recent Graduate
let recentGrad1 = Tip(header: "", title: "Graduating from college in a bad economy has a long-run, negative impact on wages", body: "Those who entered the job market in weak economies earned less at the beginning of their careers than those who started in strong economies. The disadvantage persisted for as long as 20 years. On average, even after 15 years of work, people who'd graduated in high unemployment years were still earning 2.5% less than those who'd graduated in low unemployment years. In some cases, the wage difference between graduating in an especially strong year versus an especially weak one was 20%-not just immediately after college but even when these people had reached their late 30's. The total cost, in inflation-adjusted terms, of graduating in a bad year rather than a good year averaged about $100,000. ", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
let recentGrad2 = Tip(header: "", title: "A large portion of one's lifetime wage growth occurs in the first 10 years of a career", body: "Starting with a higher salary puts people on a higher initial trajectory.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
let recentGrad3 = Tip(header: "", title: "One of the fastest routes to higher pay early in a career is to switch jobs fairly often", body: "", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")// WIP
let recentGrad4 = Tip(header: "", title: "", body: "", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")


// MARK: - BIRTHDAY
let fallWinter1 = Tip(header: "", title: "People born in the fall and winter are more likely to be larks", body: "Research shows morning people to be pleasant, productive, introverted, conscientious, agreeable, persistent, and emotionally stable. They take initiative, suppress ugly impulses, and plan for the future. Morning types also tend to be high in positive affect-that is, many are happy to be morning people.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
let springSummer1 = Tip(header: "", title: "People born in the spring and summer are more likely to be owls", body: "Night owls display some darker tendencies. They're more open and extroverted than morning people. They're also more neurotic-and are often impulsive, sensation-seeking, live-for-the-moment hedonists. They're more likley than morning people to use nicotine, alcohol, cafeine, marijuana, ecstasy, and cocaine. They're also more prone to addiction, eating disorders, diabetes, depression, and infidelity. But, they also tend to display greater creativity, show superior working memory, have a better sense of humor, and post high scores on intelligence tests such as the GMAT.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")



// MARK: - Doctor
let doctor1 = Tip(header: "", title: "Never accept an appointment that wasn't before noon", body: "Adverse events were significantly more frequent for cases starting during the 3 p.m. and 4 p.m hours. The probability of a problem at 9 a.m. was about 1%. At 4 p.m., 4.2%. In other words, the chance of something going wrong while someone is delivering drugs to knock you unconscious was 4-times greater during the afternoon than during the morning. On actual harm (not only a slipup but also something that hurts the patient), the probability at 8 a.m. was 0.3%. But at 3 p.m., the probabilty was 1%-one in every one hundred cases, a threefold increase. Afternoon circadian lows, the researchers concluded, impair physician vigilance and \"affect human performance of complex tasks such as those required in anesthesia care.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
// WIP
let doctor2 = Tip(header: "", title: "XXXXXXXXXXXXXXXXXXXXXXXXXXX", body: "Doctors are more likely to prescribe antibiotics, including unnecessary ones, for acute respiratory infections in the afternoons than in the mornings. As the cumulative effect of dealing with patient after patient reduces doctors' decision-making resolve, it's far easier just to write the perscription than investigate whether the patient's symptoms suggest a bacterial infection, for which antibiotics might be appropriate, or a virus, for which they have no effect.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
let doctor3 = Tip(header: "", title: "Schedule your doctor's appointment for the morning because caregivers are less likely to wash their hands in the afternoon", body: "A study found that hospital workers washed their hands 38% less often at the end of a shift. That is, for every 10 times they washed their hands in the morning, they did so only 6 times in the afternoon.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/best-time-day-work-according-to-science-2018-5", sponsorLogo: "", sponsorURL: "")
let doctor4 = Tip(header: "", title: "Schedule your doctor's appointment for the morning because this is when caregivers are more likely to diagnose more problem", body: "Studies suggest doctors are better at diagnosing colon problems in the morning and have more successful surgeries in the morning. Factors such as case load, fatigue, and effects of circadian rhythms may be influencing the quality of patient appointments that start in the late afternoon.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/best-time-day-work-according-to-science-2018-5", sponsorLogo: "", sponsorURL: "")

// MARK: - Age
// 30
let thirties1 = Tip(header: "", title: "Happiness begins to slide downward in the late 30's early 40's, dipping to a low in the 50's, but rises again from 55 onward and well-being later in life often exceeds that of our younger years", body: "If the midlife drop is inevitable, just knowing that eases some of the pain, as does knowing that the state is not permanent. If we're aware that our standards are likely to sink at the midpoint, that knowledge can help us temper the consequences. Even if we can't hold off biology and nature, we can prepare for the ramifications.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
// 19
let nineteen1 = Tip(header: "", title: "The suicide rate was higher among people with an age ending in 9 than among people whose ages ended in any other digit", body: "TODO", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
let nineteen2 = Tip(header: "", title: "The chance of cheating on your spouse was higher among people with an age ending in 9 than among people whose ages ended in any other digit", body: "On the extramarital-affair website Ashley Madison, nearly 1/8 men were 29, 39, 49, or 59, about 18% higher than chance would predict.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
// 60+
let sixty1 = Tip(header: "", title: "After age 60, your number of friendships and social network decreases", body: "As we get older, when we become conscious of the ultimate ending, we edit our friends. We choose to spend our remaining years with networks that are small and populated with those who satisfy higher needs.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")

