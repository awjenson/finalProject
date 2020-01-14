//
//  MyData.swift
//  finalProject
//
//  Created by Andrew Jenson on 3/30/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import Foundation







// Each tab should stand on its own, not mix with the other, be consistent, for a specific purpose or use, equally important

//TIPS: Time-based and location based tips (home, work, school, gym, grocery store, bar, networking, date, commuting, safety while out, meals, shopping, coffee, travel

//ADVICE: Profile famous person (passion, purpose, vision, goals, fears, habits) and advice on parenting, relationships (marriage, break-ups, being single, long-term relationships), family relationships, friendships, parenting, side hustle, startup advice from founders, investing advice, professional athlete training advice, screenwriting advice, filmmaking advice, coding advice, photography advice, dating advice, motivation, wisdom, reflection throughout the day, career advice, looking for a job/new job, break-up, addiction,

//MOOD: ok, sad, depressed, angry, happy, scared, anxious, low self-esteem, lacking confidence, lonely, tired, bored,

// MARK: - AllTipsTopics

// Adria wants the app to tell here where to eat based on her location
// Good source of activity data: https://flowingdata.com/2015/12/15/a-day-in-the-life-of-americans/

// Add mental training, mindfulness, and philosophies to user's toolkit

//Find and audience to target
//Add 'Friendship' or 'Hangout' tips
//

//


// MARK: - Breakfast

let breakfastTitle = "Breakfast"
let breakfastIcon = Constants.Icon.food

let breakfastTip1 = Tip(header: Constants.Image.breakfast1, title: "Consume at least 30 grams of protein for breakfast to keep you fuller for longer", body: "Protein keeps you full longer than other foods because it takes longer to digest and leave the stomach. Also, protein keeps blood-sugar levels steady, which prevent spikes in hunger." , sourceName: "Benjamin P. Hardy, author of Willpower Doesn't Work", sourceURL: "https://medium.com/personal-growth/this-morning-routine-will-save-you-20-hours-per-week-409f8acbde1", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let breakfastTip2 = Tip(header: Constants.Image.breakfast2, title: "Reduce your odds of having an afternoon slump today by eating a healthy breakfast", body: "Eating breakfast reduces your risk of eating an unhealthy snack later in the day. We can also crave extra calories if we have not eaten enough during the day or if we have skipped lunch. \n\nWhen you don't eat regularly, your body starts to crave high calorie, comfort type food. We're less likely to have a slump and eat unhealthy if we've fuelled our bodies well beforehand." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com.au/2016/08/02/this-is-why-you-crave-junk-food-later-in-the-day_a_21443885/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let breakfastTip3 = Tip(header: Constants.Image.cereal, title: "Cereal: There should always be at least 5 grams of fiber, and there should always be more fiber than sugar", body: "The more sugar in your breakfast cereal, the faster it digests, and the hungrier you’ll be. \n\nConversely, more fiber will keep you fuller longer. For extra fiber, add: \n• Chia seeds \n• Flax seeds" , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/2013/03/23/healthy-breakfast-mistakes_n_2877800.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let breakfastTip4 = Tip(header: Constants.Image.yogurt, title: "Eating healthy fats keeps you feeling full for longer", body: "Let’s look at the supposed healthy breakfast of non-fat Greek yogurt, high-fiber cereal and berries. \n\nSwitch to 2%-fat yogurt or to add some nuts." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/2013/03/23/healthy-breakfast-mistakes_n_2877800.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//2
let breakfastTip5 = Tip(header: Constants.Image.breakfast2, title: "Healthy breakfast foods that give you energy and makes you feel full", body: "• Protein: Eggs, Greek Yogurt, Protein Shake, Cottage Cheese \n\n• Fiber: Oatmeal, Chia Seeds, Flaxseeds \n\n• Vitamins: Berries and Citrus Fruit \n\n• Healthy Fats: Nuts, Avocado, Peanut Butter \n\n• Caffeine: Coffee or Green Tea" , sourceName: "Healthline", sourceURL: "https://www.healthline.com/nutrition/12-best-foods-to-eat-in-morning#section4", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let breakfastTip6 = Tip(header: Constants.Image.unhealthyBreakfast, title: "The Worst Foods to Eat for Breakfast", body: "The list below contain little nutrients and high amounts of sugar, refined grains, and trans fats: \n\n• Fruit Juice and Smoothies \n\n• Cereal, Bagels, Breads, Granola Bars, Muffins, Toaster Pastries, Pancakes, and Waffles \n\n• Butter, Flavored Yogurt, and Cream Cheese \n\n• Bacon and Sausage \n\n• Jelly, Syrup, Flavored Creamers, and Ketchup" , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/worst-breakfast-foods/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let breakfastTip7 = Tip(header: "🍓", title: "A healthy breakfast includes lean protein, whole-grain carbohydrates, healthy fat, and fresh fruit", body: "Try low-fat Greek yogurt topped with fresh berries and a handful of nuts; a whole-wheat English muffin spread with a dollop of peanut butter; or an egg scrambled in extra-virgin olive oil along with some spinach, mushrooms, or other vegetables." , sourceName: "Harvard Health Publishing", sourceURL: "https://www.health.harvard.edu/nutrition/breakfast-and-beyond-the-case-for-a-healthy-morning-meal", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let breakfastTip8 = Tip(header: "🥜", title: "Eat a protein-rich breakfast to reduce food cravings, prevent overeating later today", body: "Compared to breakfast-skippers, brain scans of protein-rich breakfast-eaters showed less activity in the brain's regions controlling food motivation prior to lunch. \n\nEating a healthy, protein-rich breakfast helps people be less prone to snacking between meals. Convenient snack foods are almost always high in sugar and fat and add a substantial amount of calories to the diet." , sourceName: "University of Missouri", sourceURL: "https://munews.missouri.edu/news-releases/2011/0518-eat-a-protein-rich-breakfast-to-reduce-food-cravings-prevent-overeating-later-mu-researcher-finds/", sponsorLogo: "", sponsorURL: "")

//3
let breakfastTip9 = Tip(header: "🥑", title: "The key ingredients for breakfast are: protein, fiber, and healthy fats", body: "Try a couple of eggs with a few avocado slices or some Greek yogurt (the plain kind, since the flavored varieties can be high in sugar) with fruit and nuts. \n\nBoth of these options will fill you up, help smooth out your digestion, and power up your muscles." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/morning-routine-according-to-science-2017-12#fuel-up-5", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let breakfastTip10 = Tip(header: "🤓", title: "Eating the same breakfast every day helps you make better decisions later in the day", body: "According to research, our daily decision-making power is limited. \n\nThe more decisions we make over the course of the day, the worse our decision-making ability becomes. \n\nBy eliminating the smaller decisions that consume us every day, we will have more decision-making power later in the day." , sourceName: "Entrepreneur", sourceURL: "https://www.entrepreneur.com/article/319838", sponsorLogo: "", sponsorURL: "")
let breakfastTip11 = Tip(header: "😁", title: "Eating probiotic foods, like yogurt, makes you happier", body: "Over 80% of the body’s serotonin, a brain chemical associated with happiness and satisfaction, is actually produced in your gut. \n\nThis means that taking care of the good bacteria in your gut has a direct impact on how happy you feel." , sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/health/wellness/how-to-be-happy/", sponsorLogo: "", sponsorURL: "")
let breakfastTip12 = Tip(header: "", title: "Drink water during or after a meal to aid digestion", body: "Water helps break down food so that your body can absorb the nutrients. \n\nWater also softens stool, which helps prevent constipation." , sourceName: "Mayo Clinic", sourceURL: "https://www.mayoclinic.org/healthy-lifestyle/nutrition-and-healthy-eating/expert-answers/digestion/faq-20058348", sponsorLogo: "", sponsorURL: "")

//4
let breakfastTip13 = Tip(header: "🚰", title: "Lose Weight: Drink 16 ounces of water before every meal", body: "Study: Over the course of 12 weeks, dieters who drank 16 ounces of water before meals, 3 times per day, lost about 5 pounds more than dieters who did not increase their water intake. \n\nWater promotes weight loss because it fills up the stomach with a substance that has zero calories. People feel fuller as a result, and eat less calorie-containing food during the meal.", sourceName: "Virginia Polytechnic Institute and State University", sourceURL: "https://vtnews.vt.edu/articles/2010/08/082310-cals-davy.html", sponsorLogo: "", sponsorURL: "")
let breakfastTip14 = Tip(header: "", title: "Reduce calorie consumption by 44% simply by eating with a smaller bowl or plate", body: "When serving food onto bigger plates, we subconsciously want to fill the empty space—and end up piling on more. Research from Cornell showed that both adults and kids poured more cereal into larger bowls and consumed 44% more calories.", sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/healthy-home/", sponsorLogo: "", sponsorURL: "")
let breakfastTip15 = Tip(header: "", title: "Weight Loss: Unless you’re lactose intolerant, steering clear of milk, yogurt and other popular dairy-based breakfast foods to save calories may be doing you more harm than good", body: "The primary reason: Calcium plays a key role in regulating the way the body metabolizes food. Specifically, it determines whether we burn calories or tack them on as excess fat. \n\nStudy A calcium-rich diet can help you burn more fat.", sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/weight-loss-lifestyle/", sponsorLogo: "", sponsorURL: "")
let breakfastTip16 = Tip(header: "", title: "Breakfast foods that boost your mood naturally", body: "Eat: Fresh fruit (apples, bananas, and blueberries), citrus (oranges and lemons), veggies (spinach, onions), avocados, nuts, foods with probiotics, dairy, eggs, flaxseed, and whole grains. \n\nAvoid Eating: sweets, sugary drinks, refined cereals, and processed meats.", sourceName: "Health", sourceURL: "https://www.health.com/depression/best-foods-depression#mediterranean-diet-depression", sponsorLogo: "", sponsorURL: "")

//5
let breakfastTip17 = Tip(header: "", title: "Increase Happiness: Eat 6 servings of fruit and vegetables a day", body: "Research: People who go from no fruit or produce in their diets to 8 servings a day experienced an increase in their well-being equivalent to getting a new job.", sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")
let breakfastTip18 = Tip(header: "", title: "Breakfast foods that reduce anxiety", body: "Oatmeal, oranges, blueberries, milk and almond butter.", sourceName: "Men's Journal", sourceURL: "https://www.mensjournal.com/food-drink/eat-to-beat-stress-10-foods-that-reduce-anxiety/8-spinach-2/", sponsorLogo: "", sponsorURL: "")
let breakfastTip19 = Tip(header: "", title: "Prevent Weight Gain: Eat with smaller plates, bowls, cups, and silverware", body: "Reduce extra calories by eating with: \n• 9-to-10 inch plate: 22% less \n• Smaller bowl: 17% less \n• Smaller spoon: 14% less \n• Small or tall cup: 30% less \n\nLarger tableware equals larger waistline." , sourceName: "Slim By Design", sourceURL: "https://www.slimbydesign.com/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let breakfastTip20 = Tip(header: "", title: "Prevent Weight Gain: Don't keep cereal boxes visible", body: "Study: Women who had even one box of breakfast cereal that was visible - anywhere in their kitchen - weighed 21 pounds more than their neighbor who didn't. \n\nIn sight, in stomach.", sourceName: "Slim By Design", sourceURL: "https://www.slimbydesign.com/", sponsorLogo: "", sponsorURL: "")

/////////

//WEEK 1
let breakfastTipArray0 = [breakfastTip1, breakfastTip2, breakfastTip3, breakfastTip4]
let breakfastTopic0 = Topic(title: breakfastTitle, icon: breakfastIcon, tip: breakfastTipArray0)

let breakfastTipArray1 = [breakfastTip5, breakfastTip6, breakfastTip7, breakfastTip8]
let breakfastTopic1 = Topic(title: breakfastTitle, icon: breakfastIcon, tip: breakfastTipArray1)

let breakfastTipArray2 = [breakfastTip9, breakfastTip10, breakfastTip11, breakfastTip12]
let breakfastTopic2 = Topic(title: breakfastTitle, icon: breakfastIcon, tip: breakfastTipArray2)

let breakfastTipArray3 = [breakfastTip13, breakfastTip14, breakfastTip15, breakfastTip16]
let breakfastTopic3 = Topic(title: breakfastTitle, icon: breakfastIcon, tip: breakfastTipArray3)

let breakfastTipArray4 = [breakfastTip17, breakfastTip18, breakfastTip19, breakfastTip20]
let breakfastTopic4 = Topic(title: breakfastTitle, icon: breakfastIcon, tip: breakfastTipArray4)

let breakfastTipArray5 = [breakfastTip5, breakfastTip6, breakfastTip7, breakfastTip8]
let breakfastTopic5 = Topic(title: breakfastTitle, icon: breakfastIcon, tip: breakfastTipArray5)

let breakfastTipArray6 = [breakfastTip9, breakfastTip10, breakfastTip11, breakfastTip12]
let breakfastTopic6 = Topic(title: breakfastTitle, icon: breakfastIcon, tip: breakfastTipArray6)


// MARK: - Brunch

let brunchTitle = "Brunch"
let brunchIcon = Constants.Icon.restaurant

//1
let brunchTip1 = Tip(header: "🍌", title: "Eat a little food before your brunch to reduce chances of weight gain", body: "If you're not meeting until 11 AM or Noon, have a light breakfast at home. \n\nBreaking the fast from the night before will rev up your metabolism for the day, keep you feeling satisfied until brunch and help prevent you from over-ordering and overeating at brunch." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/2013/04/28/healthy-brunch-tips_n_3134586.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let brunchTip2 = Tip(header: "🍹", title: "Healthiest alcoholic drinks are champagne and Bloody Marys. Avoid mimosas and margaritas", body: "If you want to watch your calories, skip mimosas: They're generally made with cheap sparkling wine and additional sugar in the form of juice. Instead, choose champagne: one 4-ounce glass has 84 calories. \n\nMargaritas, and other drinks with pre-made mixes are an easy way to tack on lots of sugar. Instead, choose Bloody Marys: tomato juice offers a great source of vitamins A and C as well as potassium." , sourceName: "Everyday Health", sourceURL: "https://www.everydayhealth.com/pictures/what-to-order-at-brunch/#02", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let brunchTip3 = Tip(header: "🍳", title: "Healthiest meals are omelets. Avoid eggs Benedict or huevos rancheros which are high in calories and fat", body: "Smart ingredient picks include spinach, mushrooms, peppers, tomatoes, onions, and even a dash of cheese. \n\nAvoid roasted vegetables, like peppers, that are marinated in oil, as well as fattening bacon or sausages (choose turkey bacon or ham instead)." , sourceName: "Everyday Health", sourceURL: "https://www.everydayhealth.com/pictures/what-to-order-at-brunch/#04", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let brunchTip4 = Tip(header: "", title: "Drink water during or after a meal to aid digestion", body: "Water helps break down food so that your body can absorb the nutrients. \n\nWater also softens stool, which helps prevent constipation." , sourceName: "Mayo Clinic", sourceURL: "https://www.mayoclinic.org/healthy-lifestyle/nutrition-and-healthy-eating/expert-answers/digestion/faq-20058348", sponsorLogo: "", sponsorURL: "")

//2
let brunchTip5 = Tip(header: "🚰", title: "Lose Weight: Drink 16 ounces of water before every meal", body: "Study: Over the course of 12 weeks, dieters who drank 16 ounces of water before meals, 3 times per day, lost about 5 pounds more than dieters who did not increase their water intake. \n\nWater promotes weight loss because it fills up the stomach with a substance that has zero calories. People feel fuller as a result, and eat less calorie-containing food during the meal.", sourceName: "Virginia Polytechnic Institute and State University", sourceURL: "https://vtnews.vt.edu/articles/2010/08/082310-cals-davy.html", sponsorLogo: "", sponsorURL: "")
let brunchTip6 = Tip(header: "🍞", title: "For sides, choose either whole-grain toast or the potatoes — not both", body: "Otherwise, you end up with too many carbs on your plate. In place of potatoes, ask for fruit or a side salad to add some low-calorie, high nutritional value to your meal. And avoid home fries and hashbrowns which are likely deep-fried and covered in butter and oil." , sourceName: "Everyday Health", sourceURL: "https://www.everydayhealth.com/pictures/what-to-order-at-brunch/#06", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let brunchTip7 = Tip(header: "", title: "Prevent weight gain: Be mindful that you eat more food when you eat out with others", body: "A meal consumed with one other person is typically 33% larger than a meal consumed alone. It gets scarier from there. A meal consumed with two friends was associated with a 47% bigger meal. Dining with four, six, or 8+ friends was associated with meal increases of 69%, 70% and 96%, respectively." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/things-making-you-fatter/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let brunchTip8 = Tip(header: "", title: "Brunch foods that boost your mood naturally", body: "Eat: Fresh fruit (apples, bananas, and blueberries), citrus (oranges and lemons), veggies (spinach, onions), avocados, nuts, foods with probiotics, dairy, eggs, flaxseed, and whole grains. \n\nAvoid Eating: sweets, sugary drinks, refined cereals, processed meats, and fried food.", sourceName: "Health", sourceURL: "https://www.health.com/depression/best-foods-depression#mediterranean-diet-depression", sponsorLogo: "", sponsorURL: "")

//3
let brunchTip9 = Tip(header: "", title: "Make fruit the first thing you put on your brunch tray. It seems to trigger a chain reaction of healthier choices", body: "When researchers gave people a free piece of fruit at the beginning of their cafeteria-line journey, they continued to make healthier food choices than those who received nothing. \n\nWorst of all, when they instead gave them cookies first, they didn't compensate by getting a salad. Instead, they headed for the pepperoni-and-sausage pizza.", sourceName: "Slim By Design", sourceURL: "https://www.slimbydesign.com/", sponsorLogo: "", sponsorURL: "")

//WEEK 1
let brunchTipArray0 = [brunchTip1, brunchTip2, brunchTip3, brunchTip4]
let brunchTopic0 = Topic(title: brunchTitle, icon: brunchIcon, tip: brunchTipArray0)

let brunchTipArray1 = [brunchTip5, brunchTip6, brunchTip7, brunchTip8]
let brunchTopic1 = Topic(title: brunchTitle, icon: brunchIcon, tip: brunchTipArray1)

let brunchTipArray2 = [brunchTip9, brunchTip2, brunchTip3, brunchTip4]
let brunchTopic2 = Topic(title: brunchTitle, icon: brunchIcon, tip: brunchTipArray2)

let brunchTipArray3 = [brunchTip5, brunchTip6, brunchTip7, brunchTip8]
let brunchTopic3 = Topic(title: brunchTitle, icon: brunchIcon, tip: brunchTipArray3)

let brunchTipArray4 = [brunchTip1, brunchTip2, brunchTip3, brunchTip4]
let brunchTopic4 = Topic(title: brunchTitle, icon: brunchIcon, tip: brunchTipArray4)

let brunchTipArray5 = [brunchTip9, brunchTip6, brunchTip7, brunchTip8]
let brunchTopic5 = Topic(title: brunchTitle, icon: brunchIcon, tip: brunchTipArray5)

let brunchTipArray6 = [brunchTip5, brunchTip8, brunchTip3, brunchTip4]
let brunchTopic6 = Topic(title: brunchTitle, icon: brunchIcon, tip: brunchTipArray6)

// MARK: - Lunch

let lunchTitle = "Lunch"
let lunchIcon = Constants.Icon.food

// 0
let lunchTip1 = Tip(header: "🥑", title: "Prevent the afternoon slump by eating a healthy lunch", body: "Unhealthy snacks don't keep you full, meaning you'll eat more and gain weight. Eat whole grains, lean proteins, vegetables, and good fats." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com.au/2016/08/02/this-is-why-you-crave-junk-food-later-in-the-day_a_21443885/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let lunchTip2 = Tip(header: "🥜", title: "Eat lean protein because it takes longer for your body to digest, keeping you feeling full longer", body: "Also, protein helps to build and maintain metabolism-boosting muscle mass. Your body becomes more effective at burning calories when you eat protein." , sourceName: "Very Well Fit", sourceURL: "https://www.verywellfit.com/healthy-lunch-ideas-and-recipes-3495782", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let lunchTip3 = Tip(header: "🍎", title: "Eat Fiber: It helps you lose weight by making you feel full for a longer period of time" , body: "Research: people who ate 30 grams of fiber a day lost roughly the same weight as people who followed a complex diet published by the American Heart Association. Eat vegetables, fruit, and whole grain bread and pasta.", sourceName: "Very Well Fit", sourceURL: "https://www.verywellfit.com/how-to-eat-fiber-to-lose-weight-3495368", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let lunchTip4 = Tip(header: "🚶‍♂️", title: "Walking 15 minutes after lunch speeds up digestion, prevents stomach problems, and increases metabolism which burns belly fat", body: "Walking after a meal, as short as 15 minutes, increases metabolism, which in turn helps in burning calories. The faster your metabolism, the faster you’ll burn calories, and thus, the better your weight will be controlled." , sourceName: "The New York Times", sourceURL: "https://well.blogs.nytimes.com/2013/06/24/really-the-claim-taking-a-walk-after-a-meal-aids-digestion", sponsorLogo: "", sponsorURL: "")

//1
let lunchTip5 = Tip(header: "🙅‍♀️", title: "Never skip lunch – it lowers your blood sugar levels in the afternoon making you tired, easily annoyed, and unable to concentrate", body: "Skipping lunch causes you to start craving sweet foods – this is simply your body’s way of letting you know that your blood sugar levels need topping up." , sourceName: "Weight Loss Resources", sourceURL: "https://www.weightlossresources.co.uk/diet/healthy_eating/beat-afternoon-energy-slump.htm", sponsorLogo: "", sponsorURL: "")
let lunchTip6 = Tip(header: "🍳", title: "Always eat protein - rich foods at lunchtime such as chicken, lean meat, tuna, eggs, beans or reduced-fat cheese", body: "Protein-rich foods either help to block the production of sleep-inducing serotonin or increase levels of brain chemicals - dopamine and norepinephrine - which make us feel more alert and help us concentrate better." , sourceName: "Weight Loss Resources", sourceURL: "https://www.weightlossresources.co.uk/diet/healthy_eating/beat-afternoon-energy-slump.htm", sponsorLogo: "", sponsorURL: "")
let lunchTip7 = Tip(header: "🧘‍♂️", title: "Jerry Seinfeld maintained his sanity while filming \"Seinfeld\" by meditating during his lunch hour", body: "\"I was doing the TV series in which I was the star of the show, the executive producer of the show, the head writer, in charge of casting and editing, for 24 episodes on network television for 9 years!\" he said. \"So I meditated every day. And that's how I survived the 9 years.\"" , sourceName: "The Wall Street Journal", sourceURL: "https://www.wsj.com/articles/ohm-for-all-1386299691", sponsorLogo: "", sponsorURL: "")
let lunchTip8 = Tip(header: "🚶‍♂️", title: "Taking a light walk after lunch helps balance your blood sugar and makes you feel lighter", body: "Stand up after you eat or take a light walk. This will get your metabolism moving, as the metabolism slows substantially when sitting down." , sourceName: "Bustle", sourceURL: "https://www.bustle.com/articles/169443-11-things-to-do-before-after-eating-to-help-your-metabolism-work-as-efficiently-as", sponsorLogo: "", sponsorURL: "")

//2
let lunchTip9 = Tip(header: "", title: "Live longer: Only eat meat 2 times a week", body: "A study of the longest living people in the world found that they consume limited quantities of meat. Only eat meat for special occasions, and each serving should not be larger than a deck of cards.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")
let lunchTip10 = Tip(header: "🍞", title: "Always include one serving of carbs with a high-fiber content such as wholegrain bread, bean soup, brown rice or wholewheat pasta", body: "These will help to keep your blood sugar levels up, preventing slumps that leave you needing a nap. But don’t go too heavy on portion sizes – whilst helping to boost blood sugar, carbs also increase the production of a chemical in the brain called serotonin, which can make us sleepy." , sourceName: "Weight Loss Resources", sourceURL: "https://www.weightlossresources.co.uk/diet/healthy_eating/beat-afternoon-energy-slump.htm", sponsorLogo: "", sponsorURL: "")
let lunchTip11 = Tip(header: "🥜", title: "Eat lean protein at every meal to build muscle and satisfy hunger", body: "A good rule of thumb is to aim for 20 to 30 grams per meal of lean protein from sources that are low in saturated fats and processed carbohydrates. There are many plant foods that contain protein, including grains, beans, legumes, nuts, and vegetables." , sourceName: "POPSUGAR", sourceURL: "https://www.popsugar.com/fitness/photo-gallery/45405356/image/45407390/You-Dont-Eat-Enough-Protein", sponsorLogo: "", sponsorURL: "")
let lunchTip12 = Tip(header: "🥗", title: "Studies show that vegetarians (and even more so, vegans) routinely have lower body weights", body: "Plant-based foods are high in fiber, and research shows that people who followed a higher-fiber diet had a lower waist circumference. Try eating a more plant-based diet, focusing on veggies, whole grains, and plant proteins such as beans, nuts, seeds, and soy products." , sourceName: "POPSUGAR", sourceURL: "https://www.popsugar.com/fitness/photo-gallery/45270438/image/45346172/Do-Eat-More-Plant-Based-Meals", sponsorLogo: "", sponsorURL: "")

//3
let lunchTip13 = Tip(header: "🚰", title: "Lose Weight: Drink 16 ounces of water before every meal", body: "Study: Over the course of 12 weeks, dieters who drank 16 ounces of water before meals, 3 times per day, lost about 5 pounds more than dieters who did not increase their water intake. \n\nWater promotes weight loss because it fills up the stomach with a substance that has zero calories. People feel fuller as a result, and eat less calorie-containing food during the meal.", sourceName: "Virginia Polytechnic Institute and State University", sourceURL: "https://vtnews.vt.edu/articles/2010/08/082310-cals-davy.html", sponsorLogo: "", sponsorURL: "")
let lunchTip14 = Tip(header: "🥗", title: "Reduce premature skin aging: Avoid eating highly processed or sugary foods. Eat more whole grains, fruits and vegetables", body: "Avoid eating highly processed or sugary foods because they cause inflammation at the cellular level which can speed up skin aging. \n\nEat more antioxidant-rich fruits and vegetables – such as berries, citrus fruits, kiwi, pineapple, broccoli and red and green peppers – because antioxidants can help reduce the signs of aging (sagging and wrinkling of the skin)." , sourceName: "U.S. News & World Report", sourceURL: "https://health.usnews.com/wellness/aging-well/articles/2017-01-09/6-surprising-factors-that-can-accelerate-the-aging-of-your-skin", sponsorLogo: "", sponsorURL: "")
let lunchTip15 = Tip(header: "", title: "Live longer: Eat with smaller plates, and drink with tall, narrow glasses", body: "Study: People eat 30% more if they eat from a 34-ounce bowl compared to a 17-ounce bowl and drink 25% more if they drink from a short, wide glass compared to a tall, narrow glass.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")
let lunchTip16 = Tip(header: "", title: "Increase Happiness: Resist the temptation to eat at your desk and eat with your co-workers", body: "Invite your co-workers out to lunch or organize a brown bag group. \n\nTalk to your employer about a company policy that favors co-workers eating together.", sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")

//4
let lunchTip17 = Tip(header: "", title: "Prevent weight gain: Drink 2 cups of water before eating", body: "Study: People who drank 2 cups of water before eating consumed 75-90 fewer calories over the course of a meal than they would otherwise. \n\nThis may simply be because water is filling, but researchers note the added water may well be displacing calories otherwise spent on high-calorie beverages such as sodas, sports drinks, and fruit drinks.", sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/things-making-you-fatter/", sponsorLogo: "", sponsorURL: "")
let lunchTip18 = Tip(header: "", title: "Live longer: Eat a Mediterranean style diet - olive oil, fruits, vegetables, beans, whole grains, some fish, moderate amounts of wine, and low in dairy and meat products", body: "Study: People who follow the Mediterranean diet have stronger bones, lower cancer rates, and live up to 4 years longer than those who don't.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")
let lunchTip19 = Tip(header: "", title: "Live longer: Eat fruits, vegetables, nuts, seeds, whole grains, and beans", body: "Many studies link a plant-rich diet to a lower risk of premature death, as well as a reduced risk of cancer, metabolic syndrome, heart disease, and depression. \n\nAvoid eating meat, especially processed meat, as some research suggests that eating meat increases your risk of premature death and certain diseases.", sourceName: "Healthline", sourceURL: "https://www.healthline.com/nutrition/13-habits-linked-to-a-long-life", sponsorLogo: "", sponsorURL: "")
let lunchTip20 = Tip(header: "", title: "Live longer: Make beans or tofu the centerpiece of lunches and dinners", body: "Diets rich in beans are associated with fewer heart attacks and less colon cancer. They are also an excellent source of protein. \n\nTofu is an excellent source of protein without the side effects of meat. Tofu is low in calories, high in protein, rich in minerals, devoid of cholesterol, and eco-friendly.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")

//5
let lunchTip21 = Tip(header: "", title: "Millionaire Habit: Network during your lunch hour", body: "Study: 55% of millionaires networked during their lunch hour. \n\nFurthermore, 79% of millionaires networked 5+ hours each month.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/common-myths-about-rich-people-2015-6", sponsorLogo: "", sponsorURL: "")
let lunchTip22 = Tip(header: "", title: "Research: Eating less meat and more vegetables can help fight climate change", body: "58% of all food emissions come from animal products. Eating meat =contributes to global warming through the methane gas the animals produce, but also via deforestation to expand pastures. \n\nRising temperatures, increased rain and more extreme weather events will all have a negative impact on crops and livestock.", sourceName: "BBC News", sourceURL: "https://www.bbc.com/news/science-environment-49238749", sponsorLogo: "", sponsorURL: "")
let lunchTip23 = Tip(header: "", title: "Lunch foods that boost your mood naturally", body: "Eat: Fresh fruit (apples, bananas, and blueberries), citrus (oranges and lemons), veggies (spinach, onions), avocados, nuts, foods with probiotics, dairy, eggs, flax seed, whole grains, fish (salmon and tuna), lean red meats, turkey, sweet potatoes, olive oil, and dark chocolate. \n\nAvoid Eating: sweets, sugary drinks, refined cereals, processed meats, and fried food.", sourceName: "Health", sourceURL: "https://www.health.com/depression/best-foods-depression#mediterranean-diet-depression", sponsorLogo: "", sponsorURL: "")

let lunchTip24 = Tip(header: "", title: "Lunch foods that reduce anxiety", body: "Salmon, turkey, avocado, spinach, and almonds.", sourceName: "Men's Journal", sourceURL: "https://www.mensjournal.com/food-drink/eat-to-beat-stress-10-foods-that-reduce-anxiety/8-spinach-2/", sponsorLogo: "", sponsorURL: "")

//6
let lunchTip25 = Tip(header: "", title: "Eat slowly. Study: Fast eaters are up to 115% more likely to be obese", body: "Another study: People who ate \"very fast\" tended to be heavier and had gained the most bodyweight since age 20. \n\nPut simply, overweight people chew less than normal-weight people, because when you chew more, you tend to eat less - 15% less, in one study." , sourceName: "Own The Day, Own Your Life", sourceURL: "https://www.amazon.com/dp/B072HLS5QJ/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let lunchTip26 = Tip(header: "", title: "Prevent Weight Gain: Slim people chew each bite an average of 15 times - 3 chews more than heavy people", body: "Study: On average, the number of times people chewed for each bite: \n\n• Slim people: 15 chews \n• Heavy people: 12 chews", sourceName: "Slim By Design", sourceURL: "https://www.slimbydesign.com/", sponsorLogo: "", sponsorURL: "")
let lunchTip27 = Tip(header: "", title: "Bread: The best time for eating bread is dinner, after your glycogen stores have been depleted by exercise, and you're about to head sleep", body: "So if bread and butter is your thing, eat it at dinner, with grass-fed button on sprouted or sourdough.", sourceName: "Own The Day, Own Your Life", sourceURL: "https://www.amazon.com/dp/B072HLS5QJ/", sponsorLogo: "", sponsorURL: "")
let lunchTip28 = Tip(header: "", title: "Study: People who went for a walk after eating had lower blood sugar levels than people who didn't walk after eating", body: "Another study shows that 15 minutes of low-intensity walking is enough to significantly drop blood sugar levels.", sourceName: "Own The Day, Own Your Life", sourceURL: "https://www.amazon.com/dp/B072HLS5QJ/", sponsorLogo: "", sponsorURL: "")

//WEEK 2
//7
let lunchTip29 = Tip(header: "", title: "Make fruit the first thing you put on your lunch tray. It seems to trigger a chain reaction of healthier choices", body: "When researchers gave people a free piece of fruit at the beginning of their lunch-line journey, they continued to make healthier lunch choices than those who received nothing. \n\nWorst of all, when they instead gave them cookies first, they didn't compensate by getting a salad. Instead, they headed for the pepperoni-and-sausage pizza.", sourceName: "Slim By Design", sourceURL: "https://www.slimbydesign.com/", sponsorLogo: "", sponsorURL: "")
let lunchTip30 = Tip(header: "", title: "Prevent Weight Gain: Choosing plate colors that contrast the color of your food helps you eat 18% less", body: "Study: If you're plate's the same color as your food, you'll put 18% more food on your plate. \n\n• Use darker plates for rice, potatoes, and pasta with Alfredo sause. \n\nUse lighter plates for meat and pasta with marinara sauce.", sourceName: "Slim By Design", sourceURL: "https://www.slimbydesign.com/", sponsorLogo: "", sponsorURL: "")
let lunchTip31 = Tip(header: "", title: "Live Longer: Limit meat to only a few times a month", body: "Study of people who lived to 100 years old: Meat - mostly pork - is eaten on average only 5 times per month, and in a serving of 3 to 4 ounces, about the size of a deck of cards. \n\nBeans, including black, fava, soy, and lentils, are the cornerstone of most diets for people who live to 100.", sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")
let lunchTip32 = Tip(header: "", title: "Live longer: Eat until you are 80% full", body: "It takes 20 minutes for the stomach to tell the brain it is full. Undereating, as the theory goes, slows down the body's metabolism in a way such that it produces less damaging oxidants - agents that rust the body from within.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")

//8
let lunchTip33 = Tip(header: "", title: "Increase Happiness: Eat 6 servings of fruit and vegetables a day", body: "Research: People who go from no fruit or produce in their diets to 8 servings a day experienced an increase in their well-being equivalent to getting a new job.", sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")
let lunchTip34 = Tip(header: "", title: "Survey: The average person exceeds their weekly lunch budget goal by +35% when they buy lunch everyday", body: "On average, the weekly amount that people spend — not including bills like housing and utilities — is $340, or $143 more than the average $197 budgeted. \n\nThat extra spending equals roughly $7,400 each year of overspending. \n\nAlign your spending with your values and cut back in areas that don’t reflect them." , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2019/12/26/consumers-overspend-by-7400-a-year-here-are-weekly-trouble-spots.html", sponsorLogo: "", sponsorURL: "")

//WEEK 1
let lunchTipArray0 = [lunchTip1, lunchTip2, lunchTip3, lunchTip4]
let lunchTopic0 = Topic(title: lunchTitle, icon: lunchIcon, tip: lunchTipArray0)

let lunchTipArray1 = [lunchTip5, lunchTip6, lunchTip7, lunchTip8]
let lunchTopic1 = Topic(title: lunchTitle, icon: lunchIcon, tip: lunchTipArray1)

let lunchTipArray2 = [lunchTip9, lunchTip10, lunchTip11, lunchTip12]
let lunchTopic2 = Topic(title: lunchTitle, icon: lunchIcon, tip: lunchTipArray2)

let lunchTipArray3 = [lunchTip13, lunchTip14, lunchTip15, lunchTip16]
let lunchTopic3 = Topic(title: lunchTitle, icon: lunchIcon, tip: lunchTipArray3)

let lunchTipArray4 = [lunchTip17, lunchTip18, lunchTip19, lunchTip20]
let lunchTopic4 = Topic(title: lunchTitle, icon: lunchIcon, tip: lunchTipArray4)

let lunchTipArray5 = [lunchTip21, lunchTip22, lunchTip23, lunchTip24]
let lunchTopic5 = Topic(title: lunchTitle, icon: lunchIcon, tip: lunchTipArray5)

let lunchTipArray6 = [lunchTip25, lunchTip26, lunchTip27, lunchTip28]
let lunchTopic6 = Topic(title: lunchTitle, icon: lunchIcon, tip: lunchTipArray6)

//WEEK 2




//TODO: Todo: Add Week 2 Lunch Tips

// MARK: - Dinner

let dinnerTitle = "Dinner"
let dinnerIcon = Constants.Icon.food

//0
let dinnerTip1 = Tip(header: "🍽", title: "Reduce weight gain by reducing your plate size", body: "The average dinner plate has increased in size 36% since 1960. \n\nYou'll eat 22% less by switching from a 12 inch plate to a 10 inch plate.", sourceName: "Eat Out, Eat Well", sourceURL: "https://eatouteatwell.com/how-big-are-your-dinner-plates-and-why-it-matters/", sponsorLogo: "", sponsorURL: "")
let dinnerTip2 = Tip(header: "🛌", title: "Eat 3 hours before bedtime to allow for proper digestion", body: "But, the time you eat is not as important as compared to the quantity you eat. \n\nIf you want to lose weight, your caloric intake must be less than your caloric expenditure." , sourceName: "Sleep Advisor", sourceURL: "https://www.sleepadvisor.org/eat-just-before-bed-risks/", sponsorLogo: "", sponsorURL: "")
let dinnerTip3 = Tip(header: "🧠", title: "Reading or watching TV while you eat may add to weight gain", body: "It takes 20 minutes before the brain begins to start sending out \"I'm full\" signals that turn off appetite. \n\nIf you're hurrying or not paying attention, it's easy to take in more calories than you need. \n\n• Don't multitask \n• Eat slowly \n• Savor your food", sourceName: "Harvard Medical School", sourceURL: "https://www.health.harvard.edu/healthbeat/mindful-eating-may-help-with-weight-loss", sponsorLogo: "", sponsorURL: "")
let dinnerTip4 = Tip(header: "🚶‍♂️", title: "Walking after dinner helps you sleep better", body: "The light physical activity and the fading light before nightfall can recalibrate your body clock, helping you sleep better. \n\nIt's a simple way to aid digestion, lower the post-meal surge in insulin, increase blood circulation, and stimulate metabolism - all important for a good night sleep." , sourceName: "Prevention", sourceURL: "https://www.prevention.com/weight-loss/a20503013/try-this-15-minute-after-dinner-ritual-that-helps-italians-lose-weight/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//1
let dinnerTip5 = Tip(header: "🛌", title: "Eating dinner early or waiting at least 2 hours before going to sleep lowers your risk of cancer", body: "A study found an association between eating earlier (before 9 p.m.) and a 20% lower risk for breast and prostate cancers compared to people who ate a late dinner (after 10 p.m.) or went to bed right after eating." , sourceName: "USA Today", sourceURL: "https://www.usatoday.com/story/news/nation-now/2018/07/18/early-dinner-time-linked-lower-risk-cancer-says-study/795819002/", sponsorLogo: "", sponsorURL: "")
let dinnerTip6 = Tip(header: "🍕", title: "Don't eat a fatty dinner because you're body shuts down while you sleep and stores the food as fat", body: "Greasy or high-fat dinners take longer to digest which causes the food to be stored as fat while you sleep. Also, it can cause issues with reflux or heartburn." , sourceName: "Elle", sourceURL: "https://www.elle.com/beauty/health-fitness/news/a45387/dinner-time-health-myths-facts/", sponsorLogo: "", sponsorURL: "")
let dinnerTip7 = Tip(header: "💡", title: "Turn on the lights. People who eat in well-lit spaces consume about 39% fewer calories than those who dine under dim lighting.", body: "Bright spaces make us feel more alert, so we eat more mindfully. In one study, participants who ate with bright lights ate more slowly, enjoyed their food more and consumed 373 fewer calories." , sourceName: "EatingWell", sourceURL: "http://www.eatingwell.com/article/280967/7-small-changes-with-big-results/", sponsorLogo: "", sponsorURL: "")
let dinnerTip8 = Tip(header: "🔥", title: "Slouched posture after a meal can trigger heartburn caused by acid reflux (when stomach acid squirts back up into the esophagus)", body: "Slouching puts pressure on the abdomen, which can force stomach acid in the wrong direction. And some evidence suggests that transit in the intestines slows down when you slouch." , sourceName: "Harvard Health Publishing", sourceURL: "https://www.health.harvard.edu/staying-healthy/3-surprising-risks-of-poor-posture", sponsorLogo: "", sponsorURL: "")

//2
let dinnerTip9 = Tip(header: "🥜", title: "45% of all U.S. deaths from heart disease, stroke, and diabetes were based on eating too much or too little of 10 foods", body: "Eat More: \n• Nuts/seeds \n• Seafood omega-3 fat \n• Vegetables \n• Fruits \n• Whole grains \n• Polyunsaturated fat \n\nEat Less: \n• Sodium \n• Processed red meats \n• Sugar-sweetened beverages \n• Unprocessed red meat" , sourceName: "Tufts University", sourceURL: "https://www.nutritionletter.tufts.edu/issues/13_7/current-articles/Diet-Causing_2181-1.html", sponsorLogo: "", sponsorURL: "")
let dinnerTip10 = Tip(header: "🍽", title: "Eating with smaller plates, bowls, and utensils reduces weight gain", body: "Researchers invited 85 nutrition experts to an ice cream social and randomly assigned them with large or small bowls and spoons. Participants with both a larger bowl and a larger spoon ate 50% more ice cream than participants with smaller bowl and spoon pairs. \n\nPeople base their portion size on how it looks relative to their plate, bowl, and utensils. And so the bigger the dinnerware, the bigger the portions." , sourceName: "Stanford University", sourceURL: "https://sparq.stanford.edu/solutions/use-smaller-plates-smaller-waist", sponsorLogo: "", sponsorURL: "")
let dinnerTip11 = Tip(header: "🍎", title: "Poor diets lead to 1 in 5 deaths, including high blood pressure and diabetes", body: "A good diet, according to the researchers, contains minimally processed, whole foods and grains, vegetables, fruits, nuts and any natural source of protein (i.e., fish and beans)." , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2019/04/09/harvard-study-says-these-5-habits-may-help-you-live-10-years-longer.html", sponsorLogo: "", sponsorURL: "")
let dinnerTip12 = Tip(header: "🚰", title: "Drink water during or after a meal to aid digestion", body: "Water helps break down food so that your body can absorb the nutrients. Water also softens stool, which helps prevent constipation." , sourceName: "Mayo Clinic", sourceURL: "https://www.mayoclinic.org/healthy-lifestyle/nutrition-and-healthy-eating/expert-answers/digestion/faq-20058348", sponsorLogo: "", sponsorURL: "")

//3
let dinnerTip13 = Tip(header: "🚰", title: "Lose Weight: Drink 16 ounces of water before every meal", body: "Study: Over the course of 12 weeks, dieters who drank 16 ounces of water before meals, 3 times per day, lost about 5 pounds more than dieters who did not increase their water intake. \n\nWater promotes weight loss because it fills up the stomach with a substance that has zero calories. People feel fuller as a result, and eat less calorie-containing food during the meal.", sourceName: "Virginia Polytechnic Institute and State University", sourceURL: "https://vtnews.vt.edu/articles/2010/08/082310-cals-davy.html", sponsorLogo: "", sponsorURL: "")
let dinnerTip14 = Tip(header: "", title: "Live longer: Eat 2+ vegetable servings at each meal", body: "A study of the longest living people in the world found that they all eat at least 2 vegetables at each meal. They ate the what they produced in their gardens and avoided meat (except for special occasions), processed foods, soda pop, and salty snacks.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")
let dinnerTip15 = Tip(header: "", title: "Live longer: Focus only on your food when you're eating", body: "A guaranteed way to eat mindlessly is to do so while watching your favorite show on TV or while emailing a friend at the computer. If you're going to eat, just eat. You'll eat more slowly, consume less, and savor your food more.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")
let dinnerTip16 = Tip(header: "", title: "Live longer: Eat a lean, plant-based diet accented with meat", body: "A study of people who lived to 100+ years old in Sardinia, Italy, found that their diet consists of whole-grain bread, beans, garden vegetables, and fruits. Meat is largely reserved for Sundays and special occasions.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")

//4
let dinnerTip17 = Tip(header: "", title: "Prevent weight gain: Drink 2 cups of water before eating", body: "Study: people who drank 2 cups of water before eating consumed 75 to 90 fewer calories over the course of a meal than they would otherwise. This may simply be because water is filling, but researchers note the added water may well be displacing calories otherwise spent on high-calorie beverages such as sodas, sports drinks, and fruit drinks.", sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/things-making-you-fatter/", sponsorLogo: "", sponsorURL: "")
let dinnerTip18 = Tip(header: "", title: "Live longer: Cook with olive oil, which contains cholesterol-lowering mono-unsaturated fats", body: "• Look for the freshest oil, as time can diminish its antioxidant power • But, don't cook with so much heat that the oil smokes. High heat breaks down healthy fats, making them much less healthy.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")
let dinnerTip19 = Tip(header: "", title: "Reduce calorie consumption by 44% simply by eating with a smaller bowl or plate", body: "When serving food onto bigger plates, we subconsciously want to fill the empty space—and end up piling on more. \n\nResearch from Cornell showed that both adults and kids poured more cereal into larger bowls and consumed 44% more calories.", sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/healthy-home/", sponsorLogo: "", sponsorURL: "")
let dinnerTip20 = Tip(header: "", title: "Prevent weight gain and disease: Choose beverages with few or no calories. Water is best.", body: "• Drink: Water, seltzer water, Skim or 1% milk \n\nLimit: Diet soda, low-calorie, low-sugar drinks, 100% juice \n\nAvoid: Regular sodas, energy or sports drinks, fruit drinks \n\nResearch: Sugary drinks are one of the major causes of obesity and diabetes, and evidence indicates that high consumption of sugary drinks increases the risk for heart disease, the number one killer of men and women in the U.S.", sourceName: "Harvard School of Public Health", sourceURL: "https://www.hsph.harvard.edu/nutritionsource/healthy-drinks/beverages-public-health-concerns/", sponsorLogo: "", sponsorURL: "")

//5
let dinnerTip21 = Tip(header: "", title: "Eat with health-minded people. Study: When we eat with overweight people, we may consume more food than what we usually do or what we would if dining with non-overweight people", body: "Ditching your overweight friend isn’t mandatory, but expanding your social circle to include some health-minded people can help you keep your weight—in check. \n\nOtherwise, encourage your friends and family to eat healthier." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/things-making-you-fatter/", sponsorLogo: "", sponsorURL: "")

let dinnerTip22 = Tip(header: "", title: "Live longer: Eat a Mediterranean style diet - olive oil, fruits, vegetables, beans, whole grains, some fish, moderate amounts of wine, and low in dairy and meat products", body: "Study: People who follow the Mediterranean diet have stronger bones, lower cancer rates, and live up to 4 years longer than those who don't.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")

let dinnerTip23 = Tip(header: "", title: "Reduce calorie consumption by 22% by eating with a red plate", body: "Study: Participants who served themselves pasta alfredo on a white plate loaded their plate with 22% more pasta than those who were given red plates.", sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/healthy-home/", sponsorLogo: "", sponsorURL: "")

let dinnerTip24 = Tip(header: "", title: "Study: Chewing more increases the number of calories burned during digestion and improves absorption of nutrients from food", body: "The study suggests a partial link between obesity trends and chewing. \n\nIf you slowed down and chewed more, you could potentially burn 2,000 more calories each month.", sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/healthy-home/", sponsorLogo: "", sponsorURL: "")

//6
let dinnerTip25 = Tip(header: "", title: "Prevent weight gain: Slow down and chew your food more", body: "Study: People who focused on doubling the number of times they chewed before swallowing ate 15% less food and 112 fewer calories over the course of a meal.", sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/bad-habits-that-give-you-belly-fat/", sponsorLogo: "", sponsorURL: "")
let dinnerTip26 = Tip(header: "", title: "Prevent weight gain: Don't watch TV or videos while eating dinner", body: "Study: People who never watched TV during meals had 37% lower odds of being obese than those who always watched TV or videos during family meals.", sourceName: "Reuters", sourceURL: "https://www.reuters.com/article/us-health-obesity-meals-tv/home-cooked-meals-hold-the-tv-linked-to-less-obesity-idUSKBN16928E", sponsorLogo: "", sponsorURL: "")
let dinnerTip27 = Tip(header: "", title: "The Worst and Best Foods for Acid Reflux", body: "Foods that cause acid reflux: \nFried & Spicy Foods \nBeef & Eggs \nDairy Products \nTomatoes \nPeanut Butter \nJam & Jelly \nChocolate & Sugar \nAlcohol, Carbonated Drinks, and Coffee \n\nFoods that prevent acid reflux: \nKale & Raw Spinach \nBroccoli & Celery \nLentils \nBone Broth \nGinger \nPineapple & Watermelon \nOatmeal \nAlmond Butter", sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/foods-and-acid-reflux/", sponsorLogo: "", sponsorURL: "")
let dinnerTip28 = Tip(header: "", title: "Study: People who ate slower consumed 66 fewer calories per meal than their fast-eating counterparts and felt fuller after their meal", body: "It takes about 20 minutes for your brain to recognize that your body is full. \n\nTake your time and eat mindfully to avoid overeating, avoid weight gain, and reduce feeling hungry later.", sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/surprising-habits-affecting-health/", sponsorLogo: "", sponsorURL: "")

//7
let dinnerTip29 = Tip(header: "", title: "Research: Eating less meat and more vegetables can help fight climate change", body: "58% of all food emissions come from animal products. Eating meat =contributes to global warming through the methane gas the animals produce, but also via deforestation to expand pastures. \n\nRising temperatures, increased rain and more extreme weather events will all have a negative impact on crops and livestock.", sourceName: "BBC News", sourceURL: "https://www.bbc.com/news/science-environment-49238749", sponsorLogo: "", sponsorURL: "")
let dinnerTip30 = Tip(header: "", title: "Reduce weight gain: Serve food from the kitchen counter, not from the dinner table", body: "Study: When food is served from the dinner table, people ate 35% more food during the meal. If going for second helpings requires leaving the table, people are more likely to restrain themselves from overeating as opposed to when food is served at arm’s length.", sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/surprising-habits-affecting-health/", sponsorLogo: "", sponsorURL: "")
let dinnerTip31 = Tip(header: "", title: "Warning to chili sauce and chopped jalapeno eaters. Study: Those who consistently ate more than 50 grams of chili a day had almost double the risk of memory decline and poor cognition", body: "Chili intake included both fresh and dried chili peppers but not sweet capsicum or black pepper. Memory decline was even more significant if the chili lovers were slim.", sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2019/07/190722105939.htm", sponsorLogo: "", sponsorURL: "")
let dinnerTip32 = Tip(header: "", title: "Study: Eating slower reduces your risk of weight gain and obesity", body: "• Fast eaters: 45% were found to be obese with an average waist circumference of 87cm (34in). \n\n• Slow eaters: Only 22% were found to obese with an average waist circumference of 80cm (32in). \n\nEating quickly has been linked to impaired glucose tolerance and insulin resistance. This is possibly because it may take longer for fast eaters to feel full, whereas this might happen more quickly for slow eaters, helping to curb their calorie intake, the researchers suggest.", sourceName: "BMJ Open, a medical journal", sourceURL: "https://bmjopen.bmj.com/content/8/1/e019589", sponsorLogo: "", sponsorURL: "")

//8
let dinnerTip33 = Tip(header: "", title: "Study: Eating mostly plant-based foods and fewer animal-based foods were linked to a lower risk of dying from: \n• a heart attack \n• a stroke \n• heart failure", body: "People who ate the most plant-based foods overall had a: \n• 16% lower risk of having a cardiovascular disease such as heart attacks, stroke, and heart failure; \n• 32% lower risk of dying from a cardiovascular disease and \n• 25% lower risk of dying from any cause compared to those who ate the least amount of plant-based foods. \n\nEat more vegetables, nuts, whole grains, fruits, legumes and fewer animal-based foods.", sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2019/08/190807092326.htm", sponsorLogo: "", sponsorURL: "")
let dinnerTip34 = Tip(header: "", title: "Dinner foods that boost your mood naturally", body: "Eat: Veggies (spinach, onions, sweet potatoes), fish (salmon and tuna), lean red meats, turkey, avocados, nuts, dairy, whole grains, olive oil, and dark chocolate. \n\nAvoid Eating: sweets, sugary drinks, processed meats, and fried food.", sourceName: "Health", sourceURL: "https://www.health.com/depression/best-foods-depression#mediterranean-diet-depression", sponsorLogo: "", sponsorURL: "")
let dinnerTip35 = Tip(header: "", title: "Dinner foods that reduce anxiety", body: "Salmon, turkey, spinach, asparagus, milk, and almonds.", sourceName: "Men's Journal", sourceURL: "https://www.mensjournal.com/food-drink/eat-to-beat-stress-10-foods-that-reduce-anxiety/8-spinach-2/", sponsorLogo: "", sponsorURL: "")
let dinnerTip36 = Tip(header: "", title: "Prevent Weight Gain: Slim people chew each bite an average of 15 times - 3 chews more than heavy people", body: "Study: On average, the number of times people chewed for each bite: \n\n• Slim people: 15 chews \n• Heavy people: 12 chews", sourceName: "Slim By Design", sourceURL: "https://www.slimbydesign.com/", sponsorLogo: "", sponsorURL: "")


//9
let dinnerTip37 = Tip(header: "", title: "Prevent Weight Gain: Choosing plate colors that contrast the color of your food helps you eat 18% less", body: "Study: If you're plate's the same color as your food, you'll put 18% more food on your plate. \n\n• Use darker plates for rice, potatoes, and pasta with Alfredo sause. \n\nUse lighter plates for meat and pasta with marinara sauce.", sourceName: "Slim By Design", sourceURL: "https://www.slimbydesign.com/", sponsorLogo: "", sponsorURL: "")
let dinnerTip38 = Tip(header: "", title: "Don’t heat your fats - butter, avocado oil, olive oil, coconut oil - to what is called their \"smoke point.\"", body: "This is where healthy fats start to turn unhealthy, because once they burn, they start to produce toxic compounds. \n\nPro Tip: Cook with Avocado Oil \n\nIt has the highest smoke point of all cooking oils (a smoke point above 500º F.", sourceName: "Own The Day, Own Your Life", sourceURL: "https://www.amazon.com/dp/B072HLS5QJ/", sponsorLogo: "", sponsorURL: "")
let dinnerTip39 = Tip(header: "", title: "The best time for eating bread is dinner, after your glycogen stores have been depleted by exercise, and you're about to head sleep", body: "So if bread and butter is your thing, eat it at dinner, with grass-fed button on sprouted or sourdough.", sourceName: "Own The Day, Own Your Life", sourceURL: "https://www.amazon.com/dp/B072HLS5QJ/", sponsorLogo: "", sponsorURL: "")
let dinnerTip40 = Tip(header: "", title: "Eat slowly. Study: Fast eaters are up to 115% more likely to be obese", body: "Another study: People who ate \"very fast\" tended to be heavier and had gained the most bodyweight since age 20. \n\nPut simply, overweight people chew less than normal-weight people, because when you chew more, you tend to eat less - 15% less, in one study." , sourceName: "Own The Day, Own Your Life", sourceURL: "https://www.amazon.com/dp/B072HLS5QJ/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//10
let dinnerTip41 = Tip(header: "", title: "Warning: Analysis of the 'Joy of Cooking' recipes found that recipes in the 2006 edition have 44% more calories than recipes in the 1937 edition", body: "• One-third of the extra calories is due to bigger servings. \n\n• Two-thirds of the extra calories is due to more fat, sugar, meat, and goodies like nutes and raisins. \n\nSolution: When you follow a recipe, plan on dividing the finished dish and storing half in the fridge for tomorrow, before you sit down to eat." , sourceName: "Slim By Design", sourceURL: "https://www.slimbydesign.com/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let dinnerTip42 = Tip(header: "", title: "Prevent Weight Gain: Eat with smaller plates, bowls, cups, and silverware", body: "Reduce extra calories by eating with: \n• 9-to-10 inch plate: 22% less \n• Smaller bowl: 17% less \n• Smaller spoon: 14% less \n• Small or tall cup: 30% less \n• White wineglass: 12% less \n\nLarger tableware equals larger waistline." , sourceName: "Slim By Design", sourceURL: "https://www.slimbydesign.com/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let dinnerTip43 = Tip(header: "", title: "Prevent Weight Gain: People who served from the stove or counter ate 19% less food compared to those serving themselves right off the table", body: "Having to get up and walk another 6 feet for the food was enough for people to ask, \"Am I really that hungry?\" The answer's usually \"No.\" \n\nBut, if you want to eat more salad, put that salad bowl right in the middle of the table." , sourceName: "Slim By Design", sourceURL: "https://www.slimbydesign.com/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let dinnerTip44 = Tip(header: "", title: "Prevent Overeating: Don't watch TV, listen to radio, or read a book while eating", body: "Anything distracting and enjoyable increases overeating. \n\nSolution: Put the food back in the cuboard or refrigerator or on the stove. You can have seconds, but you'll have to walk for it." , sourceName: "Slim By Design", sourceURL: "https://www.slimbydesign.com/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//11
let dinnerTip45 = Tip(header: "", title: "Survey: The average person exceeds their weekly dinner budget goal by +32% when they rely on food delivery apps everyday", body: "On average, the weekly amount that people spend — not including bills like housing and utilities — is $340, or $143 more than the average $197 budgeted. \n\nThat extra spending equals roughly $7,400 each year of overspending. \n\nAlign your spending with your values and cut back in areas that don’t reflect them." , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2019/12/26/consumers-overspend-by-7400-a-year-here-are-weekly-trouble-spots.html", sponsorLogo: "", sponsorURL: "")
let dinnerTip46 = Tip(header: "", title: "Half-Plate Rule: Fill half your plate with fruit, vegetables, or salad, and fill the other half with whatever you want", body: "People reported that they eat a lot more \"balanced\" diet than they did before." , sourceName: "Slim By Design", sourceURL: "https://www.slimbydesign.com/", sponsorLogo: "", sponsorURL: "")
let dinnerTip47 = Tip(header: "", title: "Drinking water before dinner reduces your risk of heartburn and indigestion", body: "When you drink water on an empty stomach, the acid in your stomach is pushed down and gets diluted, reducing your risk of stomach acid flowing back into esophagus.", sourceName: "LifeHack", sourceURL: "https://www.lifehack.org/449117/when-you-drink-water-on-an-empty-stomach-after-waking-up-these-8-amazing-things-will-happen", sponsorLogo: "", sponsorURL: "")
let dinnerTip48 = Tip(header: "", title: "Leftovers: Store healthy food in clear wrap or clear glass. Store unhealthy food in aluminum foil", body: "Study: Unhealthy food wrapped in aluminum foil is a third less likely to be eaten within the first week of being wrapped than in clear wrap. \n\nOut of sight, out of mind." , sourceName: "Slim By Design", sourceURL: "https://www.slimbydesign.com/", sponsorLogo: "", sponsorURL: "")


//Week 1
//0
let dinnerTipArray0 = [dinnerTip1, dinnerTip2, dinnerTip3, dinnerTip4]
let dinnerTopic0 = Topic(title: dinnerTitle, icon: dinnerIcon, tip: dinnerTipArray0)
//1
let dinnerTipArray1 = [dinnerTip5, dinnerTip6, dinnerTip7, dinnerTip8]
let dinnerTopic1 = Topic(title: dinnerTitle, icon: dinnerIcon, tip: dinnerTipArray1)
//2
let dinnerTipArray2 = [dinnerTip9, dinnerTip10, dinnerTip11, dinnerTip12]
let dinnerTopic2 = Topic(title: dinnerTitle, icon: dinnerIcon, tip: dinnerTipArray2)
//3
let dinnerTipArray3 = [dinnerTip13, dinnerTip14, dinnerTip15, dinnerTip16]
let dinnerTopic3 = Topic(title: dinnerTitle, icon: dinnerIcon, tip: dinnerTipArray3)
//4
let dinnerTipArray4 = [dinnerTip17, dinnerTip18, dinnerTip19, dinnerTip20]
let dinnerTopic4 = Topic(title: dinnerTitle, icon: dinnerIcon, tip: dinnerTipArray4)
//5
let dinnerTipArray5 = [dinnerTip21, dinnerTip22, dinnerTip23, dinnerTip24]
let dinnerTopic5 = Topic(title: dinnerTitle, icon: dinnerIcon, tip: dinnerTipArray5)
//6
let dinnerTipArray6 = [dinnerTip25, dinnerTip26, dinnerTip27, dinnerTip28]
let dinnerTopic6 = Topic(title: dinnerTitle, icon: dinnerIcon, tip: dinnerTipArray6)

//WEEK 2
let dinnerTipArray7 = [dinnerTip29, dinnerTip30, dinnerTip31, dinnerTip32]
let dinnerTopic7 = Topic(title: dinnerTitle, icon: dinnerIcon, tip: dinnerTipArray7)

let dinnerTipArray8 = [dinnerTip33, dinnerTip34, dinnerTip35, dinnerTip36]
let dinnerTopic8 = Topic(title: dinnerTitle, icon: dinnerIcon, tip: dinnerTipArray8)

let dinnerTipArray9 = [dinnerTip37, dinnerTip38, dinnerTip39, dinnerTip40]
let dinnerTopic9 = Topic(title: dinnerTitle, icon: dinnerIcon, tip: dinnerTipArray9)

let dinnerTipArray10 = [dinnerTip41, dinnerTip42, dinnerTip43, dinnerTip44]
let dinnerTopic10 = Topic(title: dinnerTitle, icon: dinnerIcon, tip: dinnerTipArray10)

let dinnerTipArray11 = [dinnerTip45, dinnerTip46, dinnerTip47, dinnerTip48]
let dinnerTopic11 = Topic(title: dinnerTitle, icon: dinnerIcon, tip: dinnerTipArray11)
//WIP
let dinnerTipArray12 = [dinnerTip13, dinnerTip14, dinnerTip15, dinnerTip16]
let dinnerTopic12 = Topic(title: dinnerTitle, icon: dinnerIcon, tip: dinnerTipArray12)

let dinnerTipArray13 = [dinnerTip17, dinnerTip18, dinnerTip19, dinnerTip20]
let dinnerTopic13 = Topic(title: dinnerTitle, icon: dinnerIcon, tip: dinnerTipArray13)


// MARK: - Dinner (Late)

// 0
let dinnerAfter9PM1 = Tip(header: "🌶", title: "Late Dinner: Avoid large portions, greasy, fatty, spicy, and fried foods, and high-sugar, high-carbohydrate treats like cookies or ice cream", body: "These foods can cause indigestion (feeling bloated and gassy), heartburn, and even acid reflux before bedtime. The result is poor sleep and poor health.", sourceName: "Life Hacker", sourceURL: "https://lifehacker.com/the-late-night-snacks-that-wont-upset-your-stomach-and-1717594825", sponsorLogo: "text", sponsorURL: "text")
let dinnerAfter9PM2 = Tip(header: "🥛", title: "Drinking a glass of milk before bed will help you sleep at night", body: "Milk supports sleep because it has tryptophan, which raises melatonin and serotonin levels in the body, both of which induce sleep. Plus, milk has calcium, and recent research has found that calcium deficiency in the diet can cause disturbed sleep patterns.", sourceName: "Cooking Light", sourceURL: "http://www.cookinglight.com/healthy-living/health/foods-that-help-you-sleep", sponsorLogo: "text", sponsorURL: "text")
let dinnerAfter9PM3 = Tip(header: "🍝", title: "Don't eat large amounts of carbohydrates-heavy food like pasta, bread, and fried foods before bed", body: "Carbohydrates turns into sugar in your blood and you get a rise in insulin. Since you are just going to bed, you aren't using that sugar for energy, so you're more likely to store it as fat. \n\nIf you do go for whole-grain carbs, make sure to pair it with protein and healthy fats (avocado, salmon, olive oil, or nuts).", sourceName: "Elle", sourceURL: "https://www.elle.com/beauty/health-fitness/news/a45387/dinner-time-health-myths-facts/", sponsorLogo: "test", sponsorURL: "test")
let dinnerAfter9PM4 = Tip(header: "🛌", title: "Prevent acid-reflux: Don't eat a large dinner, especially if you plan to go to bed in the next 3 hours", body: "A study of 350 people found that eating dinner within 3 hours of bedtime was positively linked with a risk of developing acid-reflux symptoms, a common condition that causes heartburn, indigestion, and coughing.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/why-eating-late-bad-unhealthy-2018-1", sponsorLogo: "", sponsorURL: "")

// 1
let dinnerAfter9PM5 = Tip(header: "🕘", title: "Eating a late dinner or going to sleep shortly after dinner increases your risk of cancer", body: "Researchers found an association between eating earlier (before 9 p.m.) and a 20% lower risk for breast and prostate cancers compared to people who ate a late dinner (after 10 p.m.) or went to bed right after eating.", sourceName: "USA Today", sourceURL: "https://www.usatoday.com/story/news/nation-now/2018/07/18/early-dinner-time-linked-lower-risk-cancer-says-study/795819002/", sponsorLogo: "", sponsorURL: "")
let dinnerAfter9PM6 = Tip(header: "🍽", title: "Don't make dinner your largest meal of day because it prevents weight loss", body: "A study found that \"Late Eaters,\" people classified as eating their biggest meal after 3 p.m., lost significantly less weight — and took longer to lose it — than \"Early Eaters,\" those who ate their main meal before 3 p.m.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/why-eating-late-bad-unhealthy-2018-1", sponsorLogo: "", sponsorURL: "")
let dinnerAfter9PM7 = Tip(header: "💪", title: "Eat protein for dinner so your body can build muscle while you sleep", body: "The body rebuilds muscle through a process called protein synthesis. If you go to bed without eating enough protein your body can’t produce enough protein synthesis to rebuild the muscle. \n\nProtein-based snacks like string cheese a handful of almonds, whole-grain crackers with a bit of guacamole, greek yogurt, and almond butter with an apple can stabilize your blood sugar when you sleep. Make sure to allow an hour for staying upright before going to sleep for good digestion.", sourceName: "Elle", sourceURL: "https://www.elle.com/beauty/health-fitness/news/a45387/dinner-time-health-myths-facts/", sponsorLogo: "", sponsorURL: "")
let dinnerAfter9PM8 = Tip(header: "🔥", title: "After eating, prevent heartburn and acid reflux by staying upright because gravity helps keep the contents in the stomach", body: "Reflux is the result of acid spilling out of the stomach, and lying down with a full stomach makes reflux much more likely.", sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/2014/10/26/opinion/sunday/the-dangers-of-eating-late-at-night.html", sponsorLogo: "", sponsorURL: "")
//2
let dinnerAfter9PM9 = Tip(header: "🛌", title: "Reduce your nighttime heartburn risk: Eat 2 hours before sleep", body: "Eating close to bedtime can trigger heartburn symptoms you have not allowed enough time for the food to pass out of the stomach and into the small intestine. Lying down in bed makes digestion difficult and makes heartburn more likely.", sourceName: "WebMD", sourceURL: "https://www.webmd.com/heartburn-gerd/triggers#1", sponsorLogo: "", sponsorURL: "")
let dinnerAfter9PM10 = Tip(header: "🍅", title: "Reduce your nighttime heartburn risk: Avoid tomatoes and tomato sauce", body: "While they might be chockfull of healthy nutrients, tomatoes are also highly acidic and likely to cause heartburn in those who are prone to it.", sourceName: "WebMD", sourceURL: "https://www.webmd.com/heartburn-gerd/features/top-10-heartburn-foods#1", sponsorLogo: "", sponsorURL: "")
let dinnerAfter9PM11 = Tip(header: "🌶", title: "Reduce your nighttime heartburn risk: Avoid spicy foods, onions, and garlic", body: "Pepper, Mexican food, chili, and any other food that is loaded with pepper or other spices can trigger heartburn. Some people with heartburn do not do well with garlic and onions.", sourceName: "WebMD", sourceURL: "https://www.webmd.com/heartburn-gerd/features/top-10-heartburn-foods#1", sponsorLogo: "", sponsorURL: "")
let dinnerAfter9PM12 = Tip(header: "🍕", title: "Reduce your nighttime heartburn risk: Avoid fried and fatty foods", body: "Fried and fatty foods can cause the lower esophageal sphincter to relax, allowing more stomach acid to back up into the esophagus. Avoid full-fat dairy products, such as butter, whole milk, and regular cheese, creamy sauces, fatty cuts of meat, and snacks or desserts such as french fries potato chips, and ice cream.", sourceName: "Healthline", sourceURL: "https://www.healthline.com/health/gerd/diet-nutrition#research", sponsorLogo: "", sponsorURL: "")

//3
let dinnerAfter9PM13 = Tip(header: "", title: "Lose Weight: Drink 16 ounces of water before every meal", body: "Study: Over the course of 12 weeks, dieters who drank 16 ounces of water before meals, 3 times per day, lost about 5 pounds more than dieters who did not increase their water intake. \n\nWater promotes weight loss because it fills up the stomach with a substance that has zero calories. People feel fuller as a result, and eat less calorie-containing food during the meal.", sourceName: "Virginia Polytechnic Institute and State University", sourceURL: "https://vtnews.vt.edu/articles/2010/08/082310-cals-davy.html", sponsorLogo: "", sponsorURL: "")
let dinnerAfter9PM14 = Tip(header: "🥦", title: "Foods that may help reduce stomach acid and heartburn", body: "• Vegetables, such as leafy greens, broccoli, asparagus, cauliflower, and potatoes. \n\n• Non-fried lean meats, such as chicken, turkey, fish, and seafood. \n\n• Noncitrus fruits, including apples, bananas, and melons. \n\n• Healthy fats, such as avocados, walnuts, and olive oil.", sourceName: "Healthline", sourceURL: "https://www.healthline.com/health/gerd/diet-nutrition#helpful-foods", sponsorLogo: "", sponsorURL: "")
let dinnerAfter9PM15 = Tip(header: "🍣", title: "Sleep better tonight: Eat a high-fat dinner. Avoiding a high carb dinner", body: "Even though a high-carb diet can get you to fall asleep faster, it will not be restful sleep. Instead, high-fat meals could promote a deeper and more restful sleep. \n\nSeveral studies found that a high-carb/low-fat diet significantly decreased the quality of sleep compared to a low-carb/high-fat diet with the same amount of calories for both diets.", sourceName: "Healthline", sourceURL: "https://www.healthline.com/nutrition/ways-to-fall-asleep#section8", sponsorLogo: "", sponsorURL: "")
let dinnerAfter9PM16 = Tip(header: "🍽", title: "Stop eating 1.5 to 2 hours before going to bed to allow for digestion", body: "Eating, especially a large meal, late at night also increases your risk of heartburn. \n\nIf you must eat, reach for a healthy protein-packed snack: almonds, low-fat cottage cheese, Greek yogurt, or vegetables dipped in hummus or guacamole.", sourceName: "U.S. News", sourceURL: "https://health.usnews.com/health-news/health-wellness/articles/2015/06/26/will-eating-at-night-really-make-you-gain-weight", sponsorLogo: "", sponsorURL: "")

//4
let dinnerAfter9PM17 = Tip(header: "", title: "Drink water during or after a meal to aid digestion", body: "Water helps break down food so that your body can absorb the nutrients. Water also softens stool, which helps prevent constipation." , sourceName: "Mayo Clinic", sourceURL: "https://www.mayoclinic.org/healthy-lifestyle/nutrition-and-healthy-eating/expert-answers/digestion/faq-20058348", sponsorLogo: "", sponsorURL: "")
let dinnerAfter9PM18 = Tip(header: "", title: "Prevent weight gain: Don't watch TV or videos while eating dinner", body: "Study: People who never watched TV during meals had 37% lower odds of being obese than those who always watched TV or videos during family meals.", sourceName: "Reuters", sourceURL: "https://www.reuters.com/article/us-health-obesity-meals-tv/home-cooked-meals-hold-the-tv-linked-to-less-obesity-idUSKBN16928E", sponsorLogo: "", sponsorURL: "")
let dinnerAfter9PM19 = Tip(header: "", title: "The Worst and Best Foods for Acid Reflux", body: "Foods that cause acid reflux: \nFried & Spicy Foods \nBeef & Eggs \nDairy Products \nTomatoes \nPeanut Butter \nJam & Jelly \nChocolate & Sugar \nAlcohol, Carbonated Drinks, and Coffee \n\nFoods that prevent acid reflux: \nKale & Raw Spinach \nBroccoli & Celery \nLentils \nBone Broth \nGinger \nPineapple & Watermelon \nOatmeal \nAlmond Butter", sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/foods-and-acid-reflux/", sponsorLogo: "", sponsorURL: "")
let dinnerAfter9PM20 = Tip(header: "", title: "Eat slowly. Study: Fast eaters are up to 115% more likely to be obese", body: "Another study: People who ate \"very fast\" tended to be heavier and had gained the most body weight since age 20. \n\nPut simply, overweight people chew less than normal-weight people, because when you chew more, you tend to eat less - 15% less, in one study." , sourceName: "Own The Day, Own Your Life", sourceURL: "https://www.amazon.com/dp/B072HLS5QJ/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//5
let dinnerAfter9PM21 = Tip(header: "", title: "Prevent Weight Gain: Choosing plate colors that contrast the color of your food helps you eat 18% less", body: "Study: If you're plate's the same color as your food, you'll put 18% more food on your plate. \n\n• Use darker plates for rice, potatoes, and pasta with Alfredo sause. \n\nUse lighter plates for meat and pasta with marinara sauce.", sourceName: "Slim By Design", sourceURL: "https://www.slimbydesign.com/", sponsorLogo: "", sponsorURL: "")
let dinnerAfter9PM22 = Tip(header: "", title: "Prevent Weight Gain: Slim people chew each bite an average of 15 times - 3 chews more than heavy people", body: "Study: On average, the number of times people chewed for each bite: \n\n• Slim people: 15 chews \n• Heavy people: 12 chews", sourceName: "Slim By Design", sourceURL: "https://www.slimbydesign.com/", sponsorLogo: "", sponsorURL: "")


//0
let dinnerAfter9PMTipArray0 = [dinnerAfter9PM1, dinnerAfter9PM2, dinnerAfter9PM3, dinnerAfter9PM4]
let dinnerAfter9PMTopic0 = Topic(title: dinnerTitle, icon: dinnerIcon, tip: dinnerAfter9PMTipArray0)
//1
let dinnerAfter9PMTipArray1 = [dinnerAfter9PM5, dinnerAfter9PM6, dinnerAfter9PM7, dinnerAfter9PM8]
let dinnerAfter9PMTopic1 = Topic(title: dinnerTitle, icon: dinnerIcon, tip: dinnerAfter9PMTipArray1)
//2
let dinnerAfter9PMTipArray2 = [dinnerAfter9PM9, dinnerAfter9PM10, dinnerAfter9PM11, dinnerAfter9PM12]
let dinnerAfter9PMTopic2 = Topic(title: dinnerTitle, icon: dinnerIcon, tip: dinnerAfter9PMTipArray2)
//3
let dinnerAfter9PMTipArray3 = [dinnerAfter9PM13, dinnerAfter9PM14, dinnerAfter9PM15, dinnerAfter9PM16]
let dinnerAfter9PMTopic3 = Topic(title: dinnerTitle, icon: dinnerIcon, tip: dinnerAfter9PMTipArray3)
//4
let dinnerAfter9PMTipArray4 = [dinnerAfter9PM17, dinnerAfter9PM18, dinnerAfter9PM19, dinnerAfter9PM20]
let dinnerAfter9PMTopic4 = Topic(title: dinnerTitle, icon: dinnerIcon, tip: dinnerAfter9PMTipArray4)

//5
let dinnerAfter9PMTipArray5 = [dinnerAfter9PM21, dinnerAfter9PM22, dinnerAfter9PM7, dinnerAfter9PM8]
let dinnerAfter9PMTopic5 = Topic(title: dinnerTitle, icon: dinnerIcon, tip: dinnerAfter9PMTipArray5)
//6
let dinnerAfter9PMTipArray6 = [dinnerAfter9PM9, dinnerAfter9PM10, dinnerAfter9PM11, dinnerAfter9PM12]
let dinnerAfter9PMTopic6 = Topic(title: dinnerTitle, icon: dinnerIcon, tip: dinnerAfter9PMTipArray6)


// MARK: - Morning Snack

let morningSnackTitle = "Morning Snack"
let morningSnackIcon = Constants.Icon.snack

//0
let morningSnackTip1 = Tip(header: "🚰", title: "Being thirsty can sometimes be confused with hunger", body: "The body’s thirst signal is similar to the hunger signal, meaning you could reach for a snack when you should be reaching for a drink. Drink water or tea. If you’re still hungry five minutes later, it’s probably actual hunger." , sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/health/healthy-eating/eating-when-not-hungry/", sponsorLogo: "", sponsorURL: "")
let morningSnackTip2 = Tip(header: "🧠", title: "Missed Breakfast? Improve memory and reduce anxiety by eating a cereal bar", body: "Study: When participants ate a cereal bar as a midmorning snack, especially if they hadn’t eaten breakfast, they became much more alert and less anxious than those who didn’t snack. \n\nCheck the label, because most prepackaged cereal bars — even fiber and protein-packed ones — contain more sugar than your dietician would recommend." , sourceName: "", sourceURL: "", sponsorLogo: "", sponsorURL: "")
let morningSnackTip3 = Tip(header: "🥜", title: "People who regularly ate almonds as a mid-morning snack reported feeling less hungry at lunch and at dinner and ate fewer calories daily than non-almond eaters", body: "While the amount, frequency, and types of snacks consumed throughout the world continues to contribute to the obesity epidemic, some snacks, such as almonds, nuts, and other high-fiber snacks, may limit overall daily food consumption." , sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2013/07/130716115723.htm", sponsorLogo: "", sponsorURL: "")
let morningSnackTip4 = Tip(header: "💻", title: "Don't eat your snack while doing something else — like surfing the Internet, watching TV, or working at your desk", body: "Oftentimes we find ourselves mindlessly snacking because of certain emotions or situations (boredom, loneliness, stress). Start to notice when your emotions are fueling your eating and try to find a different outlet for those emotions." , sourceName: "Eating Bird Food", sourceURL: "https://www.eatingbirdfood.com/how-to-stop-mindless-snacking/", sponsorLogo: "", sponsorURL: "")

//1
let morningSnackTip5 = Tip(header: "🤔", title: "Don't eat a mid-morning snack. Dieters who did not eat a mid-morning snack lost more weight (11% of their body weight) than those who ate a mid-morning snack (7% of their body weight)", body: "Because there's usually a shorter interval between breakfast and lunch, researchers believe that mid-morning snacking may be a reflection of mindless eating habits rather than eating because of true hunger. They recommend that those looking to lose weight listen to their hunger and have a snack if they go a long time — like 5 hours — between meals." , sourceName: "Shape", sourceURL: "https://www.shape.com/blogs/shape-your-life/want-lose-weight-when-you-eat-your-snack-food-matters-study-finds", sponsorLogo: "", sponsorURL: "")
let morningSnackTip6 = Tip(header: "🥗", title: "Reduce premature skin aging: Avoid eating highly processed or sugary foods. Eat more whole grains, fruits, and vegetables", body: "Avoid eating highly processed or sugary foods because they cause inflammation at the cellular level which can speed up skin aging. \n\nEat more antioxidant-rich fruits and vegetables – such as berries, citrus fruits, kiwi, pineapple, broccoli and red and green peppers – because antioxidants can help reduce the signs of aging (sagging and wrinkling of the skin)." , sourceName: "U.S. News & World Report", sourceURL: "https://health.usnews.com/wellness/aging-well/articles/2017-01-09/6-surprising-factors-that-can-accelerate-the-aging-of-your-skin", sponsorLogo: "", sponsorURL: "")
let morningSnackTip7 = Tip(header: "", title: "Live longer: Eat 2 ounces of nuts every day", body: "Study: person who ate nuts at least 5 times per week, 2 ounces per serving, lived on average about 2 years longer than those who didn't eat nuts. \n\nThe best nuts are almonds, peanuts, pecans, pistachios, hazelnuts, walnuts, and pine nuts.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")
let morningSnackTip8 = Tip(header: "", title: "Don't drink diet soda because it gives you belly fat. Drink black tea instead, for a caffeine buzz without the weight gain", body: "While switching from regular soda to diet soda saves you calories, a 10-year study found that people who drank diet soda saw a 70% increase in waist circumference compared with those who didn’t drink any soda. And people who drank more than 2 diet sodas a day suffered a 500% waist expansion. \n\nThe researchers believe it might be the aspartame that causes the weight gain. Aspartame raises blood glucose levels to a point where the liver cannot handle it all, so the excess glucose is converted into fat.", sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/bad-habits-that-give-you-belly-fat/", sponsorLogo: "", sponsorURL: "")


//2
let morningSnackTip9 = Tip(header: "", title: "Lose belly fat: Don't eat a mid-morning snack. Wait until the afternoon to have a snack", body: "Study: Mid-morning snackers tended to consume more throughout the day than afternoon snackers. Afternoon snackers, on the other hand, tend to choose good snacks. Afternoon snacking was associated with a slightly higher intake of filling fiber and fruits and vegetables.", sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/things-making-you-fatter/", sponsorLogo: "", sponsorURL: "")
let morningSnackTip10 = Tip(header: "", title: "Study: People who drank 3.3+ extra ounces of fruit juice and other sugary drinks per day increased their risk of cancer by 18%, compared to those who drank less", body: "Sugary drinks that appear to be linked to cancer include: \n• Carbonated sodas \n • 100% fruit juices \n• Sugar-sweetened beverages \n• Milk-based sweetened beverages \n• Sports drinks, \n• Energy drinks \n\nWhile fruit juices contain some vitamins, a little bit of dietary fibers, they also contain lots of sugar.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/drinking-juice-and-soda-linked-to-cancer-study-2019-7", sponsorLogo: "", sponsorURL: "")
let morningSnackTip11 = Tip(header: "", title: "Snacks that reduce anxiety", body: "Oatmeal, milk, blueberries, oranges, avocado, almonds, and almond butter.", sourceName: "Men's Journal", sourceURL: "https://www.mensjournal.com/food-drink/eat-to-beat-stress-10-foods-that-reduce-anxiety/8-spinach-2/", sponsorLogo: "", sponsorURL: "")

//

//WEEK 1
//0
let morningSnackTipArray0 = [morningSnackTip1, morningSnackTip2, morningSnackTip3, morningSnackTip4]
let morningSnackTopic0 = Topic(title: morningSnackTitle, icon: morningSnackIcon, tip: morningSnackTipArray0)

//1
let morningSnackTipArray1 = [morningSnackTip5, morningSnackTip6, morningSnackTip7, morningSnackTip8]
let morningSnackTopic1 = Topic(title: morningSnackTitle, icon: morningSnackIcon, tip: morningSnackTipArray1)

//2
let morningSnackTipArray2 = [morningSnackTip9, morningSnackTip10, morningSnackTip11, morningSnackTip4]//WIP
let morningSnackTopic2 = Topic(title: morningSnackTitle, icon: morningSnackIcon, tip: morningSnackTipArray2)

//3
let morningSnackTipArray3 = [morningSnackTip1, morningSnackTip2, morningSnackTip3, morningSnackTip4]
let morningSnackTopic3 = Topic(title: morningSnackTitle, icon: morningSnackIcon, tip: morningSnackTipArray3)

//4
let morningSnackTipArray4 = [morningSnackTip5, morningSnackTip6, morningSnackTip7, morningSnackTip8]
let morningSnackTopic4 = Topic(title: morningSnackTitle, icon: morningSnackIcon, tip: morningSnackTipArray4)

//5
let morningSnackTipArray5 = [morningSnackTip9, morningSnackTip10, morningSnackTip11, morningSnackTip4]
let morningSnackTopic5 = Topic(title: morningSnackTitle, icon: morningSnackIcon, tip: morningSnackTipArray5)
//6
let morningSnackTipArray6 = [morningSnackTip5, morningSnackTip6, morningSnackTip7, morningSnackTip8]
let morningSnackTopic6 = Topic(title: morningSnackTitle, icon: morningSnackIcon, tip: morningSnackTipArray6)

// MARK: - AfternoonSnack

let afternoonSnackTitle = "Afternoon Snack"
let afternoonSnackIcon = Constants.Icon.snack

//0
let afternoonSnackTip1 = Tip(header: "🚰", title: "Being thirsty can sometimes be confused with hunger", body: "The body’s thirst signal is similar to the hunger signal, meaning you could reach for a snack when you should be reaching for a drink. Drink water or tea. If you’re still hungry five minutes later, it’s probably actual hunger." , sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/health/healthy-eating/eating-when-not-hungry/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let afternoonSnackTip2 = Tip(header: "🕒", title: "It's perfectly normal to feel hungry at 3 p.m, just choose the right snacks: protein, healthy fats and veggies", body: "Later in the day our energy levels tend to slump due to a drop in our blood sugar levels. What we're craving is something to bring our sugar levels back up to normal. Instead of chips or a chocolate bar, have yogurt (protein) with fruit (fiber) or a handful of nuts (healthy fat)." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com.au/2016/08/02/this-is-why-you-crave-junk-food-later-in-the-day_a_21443885/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let afternoonSnackTip3 = Tip(header: "🥜", title: "If you have your healthy afternoon snack all ready to go, you're less likely to choose chips and chocolate.", body: "Have your afternoon snack prepared. Crackers and cheese, nuts, or peanut butter on wholegrain toast are great mid-afternoon snacks. They can curb a craving without added sugar and saturated fats." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com.au/2016/08/02/this-is-why-you-crave-junk-food-later-in-the-day_a_21443885/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let afternoonSnackTip4 = Tip(header: "💻", title: "Don't eat your snack while doing something else — like surfing the Internet, watching TV, or working at your desk", body: "Oftentimes we find ourselves mindlessly snacking because of certain emotions or situations (boredom, loneliness, stress). Start to notice when your emotions are fueling your eating and try to find a different outlet for those emotions." , sourceName: "Eating Bird Food", sourceURL: "https://www.eatingbirdfood.com/how-to-stop-mindless-snacking/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
//1
let afternoonSnackTip5 = Tip(header: "🚰", title: "Drink water. The longevity and well-being of your brain are critically dependent upon consuming water", body: "80% of the brain’s content is water. The brain is so sensitive to dehydration that even a minimal loss of water can cause symptoms like brain fog, fatigue, dizziness, confusion and, more importantly, brain shrinkage." , sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/jesscording/2018/03/12/top-brain-foods/#60668db63a9d", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let afternoonSnackTip6 = Tip(header: "🙅‍♀️", title: "Avoid sugary foods for a quick energy boost because the effects will be short-lived", body: "A candy bar or can of cola rapidly boost blood sugar levels to give you a quick energy boost. But, your blood sugar levels will drop just as rapidly, leaving you right back where you started." , sourceName: "Weight Loss Resources", sourceURL: "https://www.weightlossresources.co.uk/diet/healthy_eating/beat-afternoon-energy-slump.htm", sponsorLogo: "", sponsorURL: "")
let afternoonSnackTip7 = Tip(header: "🥜", title: "Eating too few nuts and seeds is associated with an increased risk of dying from cardiovascular disease or diabetes", body: "Eating less than five 1.5-ounce servings per week — was associated with 8% of deaths. And a 30-year Harvard study found that nut eaters were less likely to die of cancer, heart disease, and respiratory disease than those who didn't eat nuts. So, skip the chips or cookie and grab a handful of nuts." , sourceName: "Harvard Health Publishing", sourceURL: "https://www.health.harvard.edu/nutrition/why-nutritionists-are-crazy-about-nuts", sponsorLogo: "", sponsorURL: "")
let afternoonSnackTip8 = Tip(header: "🥕", title: "Eat 8 portions of fruit and vegetables each day to increase happiness", body: "Researchers found that happiness increased incrementally for each extra daily portion of fruit and vegetables up to eight portions per day. The well-being improvements occurred within 24 months." , sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2016/07/160710094239.htm", sponsorLogo: "", sponsorURL: "")

//2
let afternoonSnackTip9 = Tip(header: "🍎", title: "Study finds afternoon snackers ate more fruits and vegetables in a day compared to those who didn't snack between lunch and dinner", body: "Adding a snack might help people deal better with hunger and ultimately help them to make healthier choices at their next meal. \n\nHealthy snacks include fresh fruits; non-starchy vegetables; proteins such as low-fat yogurt, string cheese, or a small handful of nuts; whole-grain crackers; and no-calorie beverages such as water, coffee, and tea. \n\nUnhealthy snacks include empty-calorie items that contribute fat, salt, sugar and little nutritional value, such as potato chips and sugar-sweetened beverages." , sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2011/11/111128132716.htm", sponsorLogo: "", sponsorURL: "")
let afternoonSnackTip10 = Tip(header: "", title: "Live longer: eat nuts daily", body: "Study: People who consumed at least 3 servings of nuts per week had a 39% lower risk of premature death. Nuts are rich in protein, fiber, and  antioxidants." , sourceName: "Healthline", sourceURL: "https://www.healthline.com/nutrition/13-habits-linked-to-a-long-life", sponsorLogo: "", sponsorURL: "")
let afternoonSnackTip11 = Tip(header: "", title: "Snacks that reduce anxiety", body: "Turkey, milk, blueberries, oranges, avocado, almonds, almond butter, and oatmeal.", sourceName: "Men's Journal", sourceURL: "https://www.mensjournal.com/food-drink/eat-to-beat-stress-10-foods-that-reduce-anxiety/8-spinach-2/", sponsorLogo: "", sponsorURL: "")
let afternoonSnackTip12 = Tip(header: "", title: "Prevent Weight Gain: You only need a fourth of a snack to be satisfied", body: "Study: Researchers gave one group regular-size portions of a snack or dessert, and gave another group just a couple of bites of the same snack or dessert. \n\n15 minutes later both groups were equally happy. Almost nobody wanted anything else to eat. \n\nSecret: Once you take 2 or 3 bites, put the rest of it away and distract yourself for 15 minutes - return phone calls, clean your room, or get a drink of water. \n\nIn 15 minutes all you'll remember is that you had a tasty snack.", sourceName: "Slim By Design", sourceURL: "https://www.slimbydesign.com/", sponsorLogo: "", sponsorURL: "")

//3
let afternoonSnackTip13 = Tip(header: "", title: "Healthy Habit: You can only have an indulgent afternoon snack if you first eat a piece of fruit", body: "Since finding a piece of fruit (and perhaps cutting it) is a hassle, and since eating it might fill you up, you'll probably also snack less - and certainly less on the indulgent snacks.", sourceName: "Slim By Design", sourceURL: "https://www.slimbydesign.com/", sponsorLogo: "", sponsorURL: "")

//0
let afternoonSnackTipArray0 = [afternoonSnackTip1, afternoonSnackTip2, afternoonSnackTip3, afternoonSnackTip4]
let afternoonSnackTopic0 = Topic(title: afternoonSnackTitle, icon: afternoonSnackIcon, tip: afternoonSnackTipArray0)
//1
let afternoonSnackTipArray1 = [afternoonSnackTip5, afternoonSnackTip6, afternoonSnackTip7, afternoonSnackTip8]
let afternoonSnackTopic1 = Topic(title: afternoonSnackTitle, icon: afternoonSnackIcon, tip: afternoonSnackTipArray1)
//2
let afternoonSnackTipArray2 = [afternoonSnackTip9, afternoonSnackTip10, afternoonSnackTip11, afternoonSnackTip12]
let afternoonSnackTopic2 = Topic(title: afternoonSnackTitle, icon: afternoonSnackIcon, tip: afternoonSnackTipArray2)

//3
let afternoonSnackTipArray3 = [afternoonSnackTip13, afternoonSnackTip2, afternoonSnackTip3, afternoonSnackTip4]
let afternoonSnackTopic3 = Topic(title: afternoonSnackTitle, icon: afternoonSnackIcon, tip: afternoonSnackTipArray3)
//4
let afternoonSnackTipArray4 = [afternoonSnackTip5, afternoonSnackTip6, afternoonSnackTip7, afternoonSnackTip8]
let afternoonSnackTopic4 = Topic(title: afternoonSnackTitle, icon: afternoonSnackIcon, tip: afternoonSnackTipArray4)
//5
let afternoonSnackTipArray5 = [afternoonSnackTip9, afternoonSnackTip10, afternoonSnackTip11, afternoonSnackTip12]
let afternoonSnackTopic5 = Topic(title: afternoonSnackTitle, icon: afternoonSnackIcon, tip: afternoonSnackTipArray5)

//6
let afternoonSnackTipArray6 = [afternoonSnackTip13, afternoonSnackTip6, afternoonSnackTip7, afternoonSnackTip8]
let afternoonSnackTopic6 = Topic(title: afternoonSnackTitle, icon: afternoonSnackIcon, tip: afternoonSnackTipArray6)

// MARK: - LateNightSnack

let lateNightSnackTitle = "Evening Snack"
let lateNightSnackIcon = Constants.Icon.snack

//0
let lateNightSnackTip1 = Tip(header: "💪", title: "Drink a protein shake before bed and gain muscle while you sleep", body: "A study found that a protein shake before sleep can increase muscle growth by 22%. A 12-week study found that weightlifters who drank a protein shake before bed had more muscle and were significantly (3%) stronger." , sourceName: "Men's Journal", sourceURL: "https://www.mensjournal.com/food-drink/best-late-night-snack-according-science/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let lateNightSnackTip2 = Tip(header: "🙅‍♀️", title: "If you’re trying to lose weight, avoid drinking and eating simple carbs at night", body: "Since you won’t be burning off any carbs while you’re sleeping, your body is more likely to store these as fat. Avoid beer, chips, cookies, juice, soda, and wine." , sourceName: "12 Minute Athlete", sourceURL: "https://www.12minuteathlete.com/bedtime-snack-ideas/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let lateNightSnackTip3 = Tip(header: "🏃‍♀️", title: "If you’re working out tomorrow morning, eating carbs will help give you energy for your workout", body: "That’s where the idea of carb loading before an endurance race of some sort comes in—carbs give you fuel, but since you’re waking up early you have to give them to your body the night before rather than the morning of." , sourceName: "12 Minute Athlete", sourceURL: "https://www.12minuteathlete.com/bedtime-snack-ideas/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let lateNightSnackTip4 = Tip(header: "🥑", title: "Eating healthy fats at night is a great way to feel satisfied and not wake up in the middle of the night starving", body: "Healthy fat foods include: avocados, nuts, almond butter, full-fat yogurt, cheese, eggs, fish, extra virgin olive oil, and coconut oil." , sourceName: "Healthline", sourceURL: "https://www.healthline.com/nutrition/10-super-healthy-high-fat-foods", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//1
let lateNightSnackTip5 = Tip(header: "🍽", title: "Late-night eating is associated with a higher risk of diabetes", body: "Glucose tolerance is how well your body can take sugar from your bloodstream into your tissues. \n\nResearchers found that our glucose tolerance becomes relatively impaired in the evening compared to the morning. Impaired glucose tolerance is a risk factor for diabetes." , sourceName: "Vox", sourceURL: "https://www.vox.com/2016/2/17/11034546/eating-late-night-bad-diet", sponsorLogo: "", sponsorURL: "")
let lateNightSnackTip6 = Tip(header: "🍽", title: "To prevent weight gain, try not to eat after 11 p.m.", body: "In one study, participants who ate between 11 p.m. and 5 a.m. gained more weight than those who did not eat during those hours. \n\nIf you need to eat, reach for a healthy protein-packed snack: almonds, low-fat cottage cheese, Greek yogurt, or vegetables dipped in hummus or guacamole." , sourceName: "U.S. News", sourceURL: "https://health.usnews.com/health-news/health-wellness/articles/2015/06/26/will-eating-at-night-really-make-you-gain-weight", sponsorLogo: "", sponsorURL: "")
let lateNightSnackTip7 = Tip(header: "", title: "The Worst and Best Foods for Acid Reflux", body: "Foods that cause acid reflux: \nFried & Spicy Foods \nBeef & Eggs \nDairy Products \nTomatoes \nPeanut Butter \nJam & Jelly \nChocolate & Sugar \nAlcohol, Carbonated Drinks, and Coffee \n\nFoods that prevent acid reflux: \nKale & Raw Spinach \nBroccoli & Celery \nLentils \nBone Broth \nGinger \nPineapple & Watermelon \nOatmeal \nAlmond Butter", sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/foods-and-acid-reflux/", sponsorLogo: "", sponsorURL: "")
let lateNightSnackTip8 = Tip(header: "", title: "Bedtime snacks that reduce anxiety", body: "Turkey, milk, blueberries, oranges, almonds, and almond butter.", sourceName: "Men's Journal", sourceURL: "https://www.mensjournal.com/food-drink/eat-to-beat-stress-10-foods-that-reduce-anxiety/8-spinach-2/", sponsorLogo: "", sponsorURL: "")

//2
let lateNightSnackTip9 = Tip(header: "", title: "Healthy Snack: Popcorn. It contains 15 grams of insoluble fiber and important minerals (magnesium, iron, and zinc)", body: "Insoluble fiber is good for your digestion and preventing weight gain. \n\nTo do it right, pop it yourself and add your own greas-fed butter and sea salt. \n\nMost store-bought popcorn contains the unhealthy vegetable oils.", sourceName: "Own The Day, Own Your Life", sourceURL: "https://www.amazon.com/dp/B072HLS5QJ/", sponsorLogo: "", sponsorURL: "")
let lateNightSnackTip10 = Tip(header: "", title: "Prevent Weight Gain: You only need a fourth of a snack to be satisfied", body: "Study: Researchers gave one group regular-size portions of a snack or dessert, and gave another group just a couple of bites of the same snack or dessert. \n\n15 minutes later both groups were equally happy. Almost nobody wanted anything else to eat. \n\nSecret: Once you take 2 or 3 bites, put the rest of it away and distract yourself for 15 minutes - return phone calls, clean your room, or get a drink of water. \n\nIn 15 minutes all you'll remember is that you had a tasty snack.", sourceName: "Slim By Design", sourceURL: "https://www.slimbydesign.com/", sponsorLogo: "", sponsorURL: "")
let lateNightSnackTip11 = Tip(header: "", title: "Prevent Weight Gain: \nDON'T: Eat desserts high in fat and sugar \nDO: Eat Greek yogurt", body: "Your metabolism naturally slows down at night. \n\nEating high fat and high sugar desserts right before bed can hurt your metabolism in the long run. \n\nHowever, eating Greek yogurt replenishes your gut microbiome with healthy bacteria and can reduce cravings and prevent overeating.", sourceName: "SheFinds", sourceURL: "https://www.shefinds.com/collections/the-one-nighttime-mistake-you-should-stop-making-because-it-slows-down-your-metabolism/#slide-2", sponsorLogo: "", sponsorURL: "")

//WEEK 1
let lateNightSnackTipArray0 = [lateNightSnackTip1, lateNightSnackTip2, lateNightSnackTip3, lateNightSnackTip4]
let lateNightSnackTopic0 = Topic(title: lateNightSnackTitle, icon: lateNightSnackIcon, tip: lateNightSnackTipArray0)

let lateNightSnackTipArray1 = [lateNightSnackTip5, lateNightSnackTip6, lateNightSnackTip7, lateNightSnackTip8]
let lateNightSnackTopic1 = Topic(title: lateNightSnackTitle, icon: lateNightSnackIcon, tip: lateNightSnackTipArray1)

let lateNightSnackTipArray2 = [lateNightSnackTip9, lateNightSnackTip10, lateNightSnackTip11, lateNightSnackTip6]
let lateNightSnackTopic2 = Topic(title: lateNightSnackTitle, icon: lateNightSnackIcon, tip: lateNightSnackTipArray2)

let lateNightSnackTipArray3 = [lateNightSnackTip1, lateNightSnackTip2, lateNightSnackTip3, lateNightSnackTip4]
let lateNightSnackTopic3 = Topic(title: lateNightSnackTitle, icon: lateNightSnackIcon, tip: lateNightSnackTipArray3)

let lateNightSnackTipArray4 = [lateNightSnackTip5, lateNightSnackTip6, lateNightSnackTip7, lateNightSnackTip8]
let lateNightSnackTopic4 = Topic(title: lateNightSnackTitle, icon: lateNightSnackIcon, tip: lateNightSnackTipArray4)

let lateNightSnackTipArray5 = [lateNightSnackTip9, lateNightSnackTip10, lateNightSnackTip11, lateNightSnackTip7]
let lateNightSnackTopic5 = Topic(title: lateNightSnackTitle, icon: lateNightSnackIcon, tip: lateNightSnackTipArray5)

let lateNightSnackTipArray6 = [lateNightSnackTip8, lateNightSnackTip7, lateNightSnackTip6, lateNightSnackTip5]
let lateNightSnackTopic6 = Topic(title: lateNightSnackTitle, icon: lateNightSnackIcon, tip: lateNightSnackTipArray6)


// MARK: - Restaurant

let restaurantTitle = "Restaurant"
let restaurantIcon = Constants.Icon.restaurant

//0
let restaurantTip1 = Tip(header: "", title: "Study: People ordered heavier food and ordered more of it if they sat at a dark table or booth", body: "Healthy people sit: \n\n• Near windows \n• Well-lighted area \n• Elevated tables \n• Not in booths \n• Far from bar or kitchen \n• Far from TV sets", sourceName: "Slim By Design", sourceURL: "https://www.slimbydesign.com/", sponsorLogo: "", sponsorURL: "")
let restaurantTip2 = Tip(header: "🥗", title: "Scientists found that people who ate a large vegetable salad before their main dish ate fewer calories than those who didn’t", body: "Keep it simple by foregoing creamy (read: fattening) dressings for simple oil and vinegar. And skip the cheese and croutons, too." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/how-to-eat-healthy-at-restaurants/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let restaurantTip3 = Tip(header: "🍹", title: "Avoid empty calorie alcoholic drinks", body: "Stay away from sugary margaritas and pina coladas because they’ll just add hundreds—or even thousands—of extra calories. \n\nInstead, get a glass of red wine (for the antioxidant benefits) or a vodka with a splash of club soda and a lime." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/healthy-eating-weight-loss-tips-not-calories-2018-7", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let restaurantTip4 = Tip(header: "🍽", title: "Reduce weight gain by putting half of your meal home in a to-go box", body: "Study: Many restaurants serve portions that are triple (or even quadruple!) that of a recommended portion size." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/how-to-eat-healthy-at-restaurants/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//1
let restaurantTip5 = Tip(header: "🚪", title: "Make kindness a habit: Hold the door for people behind you, especially if the person behind is carrying bags or kids", body: "The opportunity to do a good deed pops up every day. The thing that will surprise you the most is how good you'll feel about it." , sourceName: "Canadian Living", sourceURL: "https://www.canadianliving.com/health/mind-and-spirit/article/50-good-deeds-for-50-days", sponsorLogo: "", sponsorURL: "")

let restaurantTip6 = Tip(header: "", title: "Prevent weight gain: Sit by a window or in a well-lit part of the restaurant", body: "Study: People ordered healthier foods if they sat by a window or in a well-lit part of the restaurant, but they ate heavier food and ordered more of it if they sat at a dark table or booth. \n\nPeople sitting farthest from the front door ate the fewest salads and were 73% more likely to order dessert." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/things-making-you-fatter/", sponsorLogo: "", sponsorURL: "")

let restaurantTip7 = Tip(header: "🍲", title: "Look for these healthy buzzwords", body: "Roasted, baked, braised, broiled, poached, rubbed, seared, grilled, steamed, sautéed, spiced, seasoned indicate that the food was cooked in the healthiest way possible." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/how-to-eat-healthy-at-restaurants/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let restaurantTip8 = Tip(header: "🚶‍♂️", title: "Plan to do some light exercise after dinner", body: "A nice stroll after dinner will not only help you digest, it’ll keep you from ordering something heavy while out. \n\nWhy? You simply won’t want to feel weighed down and sluggish for a walk." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/how-to-eat-healthy-at-restaurants/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//2
let restaurantTip9 = Tip(header: "🍕", title: "Diners leave 17% of their meals uneaten and 55% of edible leftovers are left at the restaurant", body: "Portion sizes have increased significantly over the past 30 years. \n\nThe average pizza slice has grown 70% in calories, the average chicken caesar salad doubled in calories, and the average chocolate chip cookie has quadrupled. \n\nToday, portion sizes can be 2 to 8 times larger than USDA or FDA standard serving sizes." , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2015/04/22/americas-165-billion-food-waste-problem.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let restaurantTip10 = Tip(header: "🤔", title: "Be alert. Diners seated in darker rooms order dishes with 39% more calories than diners in brighter rooms", body: "Research: People eating in well-lit spaces are 16%-24% more likely to order healthy dishes than those in dimly lit rooms, due to a higher level of alertness." , sourceName: "Food & Wine", sourceURL: "https://www.foodandwine.com/blogs/dim-lighting-makes-you-eat-more-restaurants", sponsorLogo: "", sponsorURL: "")
let restaurantTip11 = Tip(header: "🥘", title: "Fat and calories hide in these buzzwords", body: "Anything that’s described as creamy, buttery, breaded, fried, stuffed or smothered is likely loaded with fat and calories. \n\nFancy-sounding terms like sauteed, parmesan, or scalloped is a giveaway that there are plenty of calories stuffed inside the meal." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/how-to-eat-healthy-at-restaurants/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let restaurantTip12 = Tip(header: "🚪", title: "Make kindness a habit: Leave your server a generous tip", body: "The opportunity to help otheres pops up every day. \n\nThe thing that will surprise you the most is how good you'll feel about it." , sourceName: "Canadian Living", sourceURL: "https://www.canadianliving.com/health/mind-and-spirit/article/50-good-deeds-for-50-days", sponsorLogo: "", sponsorURL: "")

//3
let restaurantTip13 = Tip(header: "", title: "Prevent weight gain: Where you sit affects what you order", body: "• People sitting farthest from the front door ate the fewest salads and were 73% more likely to order dessert. \n\n• People sitting at high-top bar tables ordered more salads and fewer desserts. \n\n• People sitting 1-2 tables of the bar drank an average of 3 more beers or mixed drinks (per table of 4) than those sitting 3+ tables of the bar. \n\n• The closer a table was to a TV screen, the more fried food a person bought." , sourceName: "Today", sourceURL: "https://www.today.com/health/where-fat-tables-are-restaurants-2D80195912", sponsorLogo: "", sponsorURL: "")

let restaurantTip14 = Tip(header: "", title: "Prevent weight gain: Ordering a salad appetizer can reduce total calorie intake over the course of the meal by up to 20%", body: "For a 600-calorie meal, that would mean a savings of about 120 calories—more than a mile on the treadmill." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/how-to-eat-healthy-at-restaurants/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let restaurantTip15 =  Tip(header: "", title: "Prevent weight gain: Order your dressing on the side", body: "If you order a creamy dressing like Caesar, that would run you about 400 calories. \n\nAsking for dressing on the side, however, could cut their calorie intake by 50%. \n\nFor that Caesar salad, that translates to 200 fewer calories on your plate that would eventually end up on your love handles and thighs." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/things-making-you-fatter/", sponsorLogo: "", sponsorURL: "")

let restaurantTip16 = Tip(header: "👀", title: "Mindful eating: Look at the colors on the walls", body: "Restaurants with bold, bright colors—think reds and oranges—are stimulating, so you’re more likely to order more. \n\nHowever, softer colors like blues, peaches, grays and pinks encourage a more relaxed, eat-slowly atmosphere." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/how-to-eat-healthy-at-restaurants/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//4
let restaurantTip17 = Tip(header: "", title: "Prevent weight gain: Eat a small snack before going to a restaurant", body: "A series of studies found that eating an apple or a broth-based soup prior to sitting down to a restaurant meal can reduce total calorie intake by 20%. With the average restaurant meal weighing in at 1,128 calories, saving 20% once a day could help you lose up to 23 pounds this year.", sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/bad-habits-that-give-you-belly-fat/", sponsorLogo: "", sponsorURL: "")
let restaurantTip18 = Tip(header: "", title: "Study: People sitting farthest from the front door ate the fewest salads and were 73% more likely to order dessert", body: "Healthy people sit: \n\n• Near windows \n• Well-lighted area \n• Elevated tables \n• Not in booths \n• Far from bar or kitchen \n• Far from TV sets", sourceName: "Slim By Design", sourceURL: "https://www.slimbydesign.com/", sponsorLogo: "", sponsorURL: "")
let restaurantTip19 = Tip(header: "", title: "Prevent weight gain: Ask for a veggie appetizer instead of the breadbasket", body: "While bread basket can be delicious, it's also void of any major nutritional benefits - and just two slices of the French variety has 376 calories (not including the butter)." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/things-making-you-fatter/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let restaurantTip20 = Tip(header: "", title: "Study: 3 of the most popular cuisines in the U.S. - American, Chinese and Italian - had the highest calorie counts with an average of 1,495 calories per meal", body: "In 100+ U.S. restaurants, researcher found that a single meal serving - even before adding beverages, appetizers or desserts - sometimes exceeded the caloric requirements for an entire day. \n\nPrevent Weight Gain: If you want an appetizer, skip dessert, and vice versa. Consider making 1 or 2 appetizers your entrée. \n\nAvoid sugar-sweetened beverages and remember that alcoholic beverages contain calories, too. Ask for half of your meal to be boxed before it arrives at the table." , sourceName: "Tufts University Health & Nutrition Letter", sourceURL: "https://www.nutritionletter.tufts.edu/issues/12_6/current-articles/92-of-Restaurant-Meals-Too-High-in-Calories_1959-1.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//5
let restaurantTip21 = Tip(header: "", title: "Study: People sitting 1-2 tables from the bar drank an average of 3 more alcoholic drinks (per table of four) than those sitting 1 table farther way", body: "Healthy people sit: \n\n• Near windows \n• Well-lighted area \n• Elevated tables \n• Not in booths \n• Far from bar or kitchen \n• Far from TV sets", sourceName: "Slim By Design", sourceURL: "https://www.slimbydesign.com/", sponsorLogo: "", sponsorURL: "")
let restaurantTip22 = Tip(header: "", title: "Study: People who used their smartphones while out for dinner with friends and family enjoyed themselves less than those who did not", body: "When smartphones were present during the meal, participants reported feeling more bored and distracted, which reduced how much they enjoyed spending time with their friends and family. \n\n• Put your phone away during the meal. \n• Don't keep your phone on the table.", sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2018/02/180226122506.htm", sponsorLogo: "", sponsorURL: "")
let restaurantTip23 = Tip(header: "", title: "Take 1/3 of your meal home in a to-go box", body: "The average size of US meals has grown by 138% since the 1970s.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/daily-routine-science-schedule-best-time-workout-eat-drink-coffee-2018-2", sponsorLogo: "", sponsorURL: "")
let restaurantTip24 = Tip(header: "", title: "Study: A meal consisting of beef that yielded 30 grams of protein elicited significant increases in muscle protein synthesis. However, a meal yielding 90 grams of protein did not elicit any greater responses in muscle protein synthesis", body: "30 grams is only 4-5 ounces of beef, or about the size of the palm of your hand. An 8-ounce steak is 50 grams of protein by itself, and that's usually the smallest option on most restaurant menus. \n\nSo if you're trying looking for gains, try hitting that 30-gram mark, because more is likely just going to be unnecessary extra work for your organs, and your wallet.", sourceName: "Own the Day, Own Your Life", sourceURL: "https://www.amazon.com/Own-Day-Your-Life-Optimized-ebook/dp/B072HLS5QJ", sponsorLogo: "", sponsorURL: "")

//6
let restaurantTip25 = Tip(header: "", title: "Study: People who were reminded of to-go boxes before they order are 40% more likely to say they'll take home leftovers than those who were asked afterward", body: "It's best to commit to the to-go box before you start eating. \n\nAsk the server to box half of it before the meal arrives.", sourceName: "Slim By Design", sourceURL: "https://www.slimbydesign.com/", sponsorLogo: "", sponsorURL: "")
let restaurantTip26 = Tip(header: "", title: "Study: People ordered healthier foods if they sat by a window or in a well-lit part of the restaurant", body: "Healthy people sit: \n\n• Near windows \n• Well-lighted area \n• Elevated tables \n• Not in booths \n• Far from bar or kitchen \n• Far from TV sets", sourceName: "Slim By Design", sourceURL: "https://www.slimbydesign.com/", sponsorLogo: "", sponsorURL: "")
let restaurantTip27 = Tip(header: "", title: "The Waiter Rule: How you treat the wait staff shows how you often feel about, and treat, those who are perceived to be of a lower status. People who are kind and appreciative of their wait staff are often happier and more successful in their lives", body: "Make a little effort to make eye contact with the person serving you. Smile. Ask how they are doing. \n\nBe compassionate if your food doesn't come out as quickly as you'd like. Sometimes that's because they are short-staffed or the cooks are backed up in the kitchen." , sourceName: "The Random Acts of Kindness Foundation", sourceURL: "https://www.randomactsofkindness.org/kindness-ideas/882-be-kind-to-your-server", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let restaurantTip28 = Tip(header: "🎶", title: "Mindful eating: Pay attention to the music being played", body: "Eateries with loud, energic music—create a hectic atmosphere that makes people overeat. \n\nOpt for establishments with softer sounds like jazz. Researchers found that people who dined in restaurants with lighter music ate less food." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/how-to-eat-healthy-at-restaurants/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//7
let restaurantTip29 = Tip(header: "", title: "Study: People sitting at high-top bar tabls ordered more salads and fewer desserts", body: "Healthy people sit: \n\n• Near windows \n• Well-lighted area \n• Elevated tables \n• Not in booths \n• Far from bar or kitchen \n• Far from TV sets", sourceName: "Slim By Design", sourceURL: "https://www.slimbydesign.com/", sponsorLogo: "", sponsorURL: "")
let restaurantTip30 = Tip(header: "", title: "Research: Eating less meat and more vegetables can help fight climate change", body: "58% of all food emissions come from animal products. Eating meat contributes to global warming through the methane gas the animals produce, but also via deforestation to expand pastures. \n\nRising temperatures, increased rain and more extreme weather events will all have a negative impact on crops and livestock.", sourceName: "BBC News", sourceURL: "https://www.bbc.com/news/science-environment-49238749", sponsorLogo: "", sponsorURL: "")
let restaurantTip31 = Tip(header: "", title: "Preliminary research on the most and least caloric words on the menu", body: "Low-calorie words: \n• Seasoned \n• Roasted \n• Light \n• Fat-free \n• Reduced \n• Marinated \n• Fresh \n• Broiled \n\nHigh-calorie words: \n• Buttery \n• Creamed \n• Crispy/crunchy \n• Smothered \n• Alfredo or white sauce \n• Fried/deep-fried/pan-fried \n• Loaded \n• Scampi", sourceName: "Slim By Design", sourceURL: "https://www.slimbydesign.com/", sponsorLogo: "", sponsorURL: "")
let restaurantTip32 = Tip(header: "", title: "Bread Basket: Butter or Olive Oil", body: "Study: Olive oil users dunked each piece of their bread into 19% more calories of fat than those given butter. \n\nBut they got tired of olive oil faster than they do butter, so they end up eating fewer pieces of bread. \n\nDiners served olive oil ate 264 calories's worth of bread, compared to 319 calories for those served butter. \n\nIf you're going to eat: \n• 1-2 pieces of bread, butter's better. \n• 3+ pieces of bread, olive oil will get you to eat less bread. \n\nThe best slim-by-design solution is to tell the server to hold the bread and drink water.", sourceName: "Slim By Design", sourceURL: "https://www.slimbydesign.com/", sponsorLogo: "", sponsorURL: "")

//8
let restaurantTip33 = Tip(header: "", title: "High-calorie menu words", body: "According to preliminary research, on average, menu items with the words: \n\n• \"Buttery\" have 102+ calories in it \n\n• \"Crispy\" have 131 calories more than their non-\"crispy\" counterpart.", sourceName: "Slim By Design", sourceURL: "https://www.slimbydesign.com/", sponsorLogo: "", sponsorURL: "")
let restaurantTip34 = Tip(header: "", title: "Increase Happiness: Be the first to pick up the check at meals or overtip", body: "Researchers found that when they gave people $100, people were happier when they gave it away than when they spent it on themselves. \n\nMost of us will die with money, so share it now.", sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")


//WEEK 1
//0
let restaurantTipArray0 = [restaurantTip1, restaurantTip2, restaurantTip3, restaurantTip4]
let restaurantTopic0 = Topic(title: restaurantTitle, icon: restaurantIcon, tip: restaurantTipArray0)
//1
let restaurantTipArray1 = [restaurantTip5, restaurantTip6, restaurantTip7, restaurantTip8]
let restaurantTopic1 = Topic(title: restaurantTitle, icon: restaurantIcon, tip: restaurantTipArray1)
//2
let restaurantTipArray2 = [restaurantTip9, restaurantTip10, restaurantTip11, restaurantTip12]
let restaurantTopic2 = Topic(title: restaurantTitle, icon: restaurantIcon, tip: restaurantTipArray2)
//3
let restaurantTipArray3 = [restaurantTip13, restaurantTip14, restaurantTip15, restaurantTip16]
let restaurantTopic3 = Topic(title: restaurantTitle, icon: restaurantIcon, tip: restaurantTipArray3)
//4
let restaurantTipArray4 = [restaurantTip17, restaurantTip18, restaurantTip19, restaurantTip20]
let restaurantTopic4 = Topic(title: restaurantTitle, icon: restaurantIcon, tip: restaurantTipArray4)

//5
let restaurantTipArray5 = [restaurantTip21, restaurantTip22, restaurantTip23, restaurantTip24]
let restaurantTopic5 = Topic(title: restaurantTitle, icon: restaurantIcon, tip: restaurantTipArray5)

//6
let restaurantTipArray6 = [restaurantTip25, restaurantTip26, restaurantTip27, restaurantTip28]
let restaurantTopic6 = Topic(title: restaurantTitle, icon: restaurantIcon, tip: restaurantTipArray6)

//WEEK 2
//7
let restaurantTipArray7 = [restaurantTip29, restaurantTip30, restaurantTip31, restaurantTip32]
let restaurantTopic7 = Topic(title: restaurantTitle, icon: restaurantIcon, tip: restaurantTipArray7)
//8 WIP
let restaurantTipArray8 = [restaurantTip33, restaurantTip34, restaurantTip7, restaurantTip8]
let restaurantTopic8 = Topic(title: restaurantTitle, icon: restaurantIcon, tip: restaurantTipArray8)
//9 WIP
let restaurantTipArray9 = [restaurantTip9, restaurantTip10, restaurantTip11, restaurantTip12]
let restaurantTopic9 = Topic(title: restaurantTitle, icon: restaurantIcon, tip: restaurantTipArray9)
//10 WIP
let restaurantTipArray10 = [restaurantTip13, restaurantTip14, restaurantTip15, restaurantTip16]
let restaurantTopic10 = Topic(title: restaurantTitle, icon: restaurantIcon, tip: restaurantTipArray10)
//11 WIP
let restaurantTipArray11 = [restaurantTip17, restaurantTip18, restaurantTip19, restaurantTip20]
let restaurantTopic11 = Topic(title: restaurantTitle, icon: restaurantIcon, tip: restaurantTipArray11)

//12 WIP
let restaurantTipArray12 = [restaurantTip21, restaurantTip22, restaurantTip23, restaurantTip24]
let restaurantTopic12 = Topic(title: restaurantTitle, icon: restaurantIcon, tip: restaurantTipArray12)

//13 WIP
let restaurantTipArray13 = [restaurantTip25, restaurantTip26, restaurantTip27, restaurantTip28]
let restaurantTopic13 = Topic(title: restaurantTitle, icon: restaurantIcon, tip: restaurantTipArray13)





// MARK: - Journaling

let journalTitle = "Journal"
let journalIcon = Constants.Icon.journal


// MARK: - Meditate

let meditationTitle = "Meditate"
let meditationIcon = Constants.Icon.meditate


// MARK: - Gym

let gymTitle = "Gym"
let gymIcon = Constants.Icon.gym

//WEEK 1
// 0
let gymTip1 = Tip(header: "🚰", title: "Improve performance: Drink 20 ounces of water 2 hours before exercise and drink throughout your workout", body: "During exercise, drink water early, and drink at regular intervals to prevent muscle fatigue by replacing water lost by sweating." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/diet/features/6-reasons-to-drink-water#3", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let gymTip2 = Tip(header: "🎵", title: "Study: Runners who listened to music during a cardiac stress test ran 50 seconds longer and burned more calories than runners who ran in silence", body: "This provides evidence that music: \n• helps to motivate you \n• helps you exercise longer \n• helps you burn more calories", sourceName: "American College of Cardiology", sourceURL: "https://www.acc.org/about-acc/press-releases/2018/02/27/12/01/music-boosts-exercise-time-during-cardiac-stress-testing", sponsorLogo: "", sponsorURL: "")
let gymTip3 = Tip(header: "🏋️‍♀️", title: "Navy SEAL Advice: When your mind is telling you you're done, you're only 40% done", body: "The 40% Rule: \n\n• When you're exercising and you think you need to stop, don't. You’re only actually 40% done. \n\n• Next time you think you've reached your limit, do 1 more." , sourceName: "Inc.", sourceURL: "https://www.inc.com/jeff-haden/develop-tremendous-mental-toughness-a-navy-seal-explains-the-40-percent-rule.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let gymTip4 = Tip(header: "💪", title: "Research: People who practiced positive self-talk were able to push harder for longer", body: "You can go a lot harder than you think you can. When you're tired, tell yourself empowering phrases like: \n• \"I got this!\" \n• \"I am strong!\"" , sourceName: "Time", sourceURL: "https://time.com/4606637/exercise-motivational-skills-training/", sponsorLogo: "TBD", sponsorURL: "www.test.com")


// 1
let gymTip5 = Tip(header: "🌬", title: "Former Navy SEAL recommends box breathing before each workout", body: "With your nose: \n• Inhale for a count of 5 \n• Hold for a count of 5 \n• Exhale for a count of 5 \n• Hold for a count of 5 \n\nRepeat for at least 5 minutes. This leads to a calm, steady mindstate.", sourceName: "SEALFIT", sourceURL: "https://sealfit.com/box-breathing/", sponsorLogo: "ABC", sponsorURL: "URL")
let gymTip6 = Tip(header: "💪", title: "Navy SEAL Advice: Positive internal dialogue improves perforance", body: "Override negative thoughts with positive ones. Repeat a power statement to yourself like: \n\n• Let's go! \n\n• I got this! \n\n• Feeling good, looking good, oughta be in Hollywood! \n\n• Day by day, in every way, I am getting better and better.", sourceName: "8 Weeks to SEALFIT", sourceURL: "https://www.amazon.com/Weeks-SEALFIT-Unconventional-Training-Toughness/dp/125004054X", sponsorLogo: "ABC", sponsorURL: "URL")
let gymTip7 = Tip(header: "💪", title: "Train like Muhammad Ali", body: "\"I hated every minute of training, but I said, 'Don't quit. Suffer now and live the rest of your life as a champion.\"", sourceName: "Inc.", sourceURL: "https://www.inc.com/gordon-tredgold/muhammad-ali-50-inspiring-thoughts-from-the-greatest-of-all-time.html", sponsorLogo: "", sponsorURL: "")
let gymTip8 = Tip(header: "🏃‍♀️", title: "Enjoy cardio? Skip the hours on the treadmill or bike and do high-intensity interval training (HIIT) workouts", body: "They're the most effective type of cardio proven to target belly fat. It not only works, but it saves you time at the gym.", sourceName: "POPSUGAR", sourceURL: "https://www.popsugar.com/fitness/photo-gallery/45270438/image/45345719/Do-Add-Exercise", sponsorLogo: "", sponsorURL: "")


// 2
let gymTip9 = Tip(header: "🚴‍♂️", title: "Pre-workout: Warmup 5-15 minutes to raise your heart rate and body temperature", body: "Make sure you break a sweat. \n\nGood warmups: Yoga poses, walking slowing and then gradually building into a jog, or cycling at a low intensity and building up to a moderate effort over a few minutes.", sourceName: "Quick And Dirty Tips", sourceURL: "https://www.quickanddirtytips.com/health-fitness/exercise/why-pre-workout-static-stretching-is-actually-dangerous?utm_source=sciam&utm_campaign=sciam", sponsorLogo: "", sponsorURL: "")
let gymTip10 = Tip(header: "🙆‍♀️", title: "Post-workout - Step 1: Stretch to prevent injury", body: "Stretch before your muscles have time to cool down, which takes 30-40 minutes. \n\nFor proper recovery, do 5 minutes of stretching followed by 5 minutes of ironing out the kinks with a foam roller.", sourceName: "Shape", sourceURL: "https://www.shape.com/fitness/tips/3-things-you-need-do-immediately-after-workout", sponsorLogo: "", sponsorURL: "")
let gymTip11 = Tip(header: "🚿", title: "Post-workout - Step 2: Shower or change your clothes", body: "Don't wait longer than 30 minutes to shower or change your clothes. \n\nWet clothes trap moisture that encourages the growth of germs, bacteria, fungus and yeast, which could invite a skin infection or cause breakouts.", sourceName: "Shape", sourceURL: "https://www.shape.com/fitness/tips/3-things-you-need-do-immediately-after-workout", sponsorLogo: "", sponsorURL: "")
let gymTip12 = Tip(header: "🥛", title: "Post-workout - Step 3: Eat carbs and protein", body: "Eating within 30-minutes after a workout: \n\n• Optimizes recovery; \n• Reduces soreness; and \n• Helps you perform better during your next workout.", sourceName: "Shape", sourceURL: "https://www.shape.com/fitness/tips/3-things-you-need-do-immediately-after-workout", sponsorLogo: "", sponsorURL: "")

// 3
let gymTip13 = Tip(header: "🙆‍♂️", title: "Warm Up: DON'T do static stretching, DO dynamic stretching", body: "Static stretching, in which you hold a stretch for 5-10 seconds, reduces performance and does not protect you against injury. \n\nIn contrast, dynamic stretching can improve performance, power, and strength. \n\nGood pre-workout dynamic stretches: \n\n• Arm circles \n• Hip circles \n• Leg swings \n• Walking lunges \n• Bodyweight squats", sourceName: "Quick And Dirty Tips", sourceURL: "https://www.quickanddirtytips.com/health-fitness/exercise/what-is-the-best-way-to-warm-up", sponsorLogo: "", sponsorURL: "")
let gymTip14 = Tip(header: "💪", title: "Train like Arnold Schwarzenegger", body: "The last three or four reps is what makes the muscle grow. This area of pain divides the champion from someone else who is not a champion. \n\nThat’s what most people lack, having the guts to go on and just say they’ll go through the pain no matter what happens. \n\n- Arnold Schwarzenegger", sourceName: "Motivation Grid", sourceURL: "https://motivationgrid.com/arnold-schwarzenegger-quotes/", sponsorLogo: "", sponsorURL: "")
let gymTip15 = Tip(header: "🤔", title: "Get pumped up by reminding yourself why you are working out", body: "When you’re feeling lazy or like you want to quit, remind yourself why you are working out. \n\nIf you have a powerful reason why, you can get through anything.", sourceName: "Men's Journal", sourceURL: "https://www.mensjournal.com/health-fitness/mental-toughness-training/", sponsorLogo: "", sponsorURL: "")
let gymTip16 = Tip(header: "🌬", title: "Controlling your breath is a great tool for exercise (and life)", body: "It's a secret practice of ancient yogis and martial artists use to develop more power, presence, and mental control. \n\nBefore your workout, perform the box breathing exercise for 5 minutes.", sourceName: "8 Weeks to SEALFIT", sourceURL: "https://www.amazon.com/Weeks-SEALFIT-Unconventional-Training-Toughness/dp/125004054X", sponsorLogo: "ABC", sponsorURL: "URL")
// 4
let gymTip17 = Tip(header: "👫", title: "Choosing a partner who you perceive to be a better performer than you could increase your workout time and intensity by as much as 200%", body: "When you're performing with someone who you perceive as a little better than you, you tend to give more effort than you normally would [when exercising] alone. \n\nThis motivation gain is even greater when individuals are put in a team setting and the outcome of the performance is dependent on the weaker individual. ", sourceName: "American Council on Exercise", sourceURL: "https://www.acefitness.org/education-and-resources/lifestyle/blog/3014/does-working-out-with-a-partner-affect-performance", sponsorLogo: "", sponsorURL: "")
let gymTip18 = Tip(header: "💪", title: "Train like Bruce Lee", body: "I fear not the man who has practiced 10,000 kicks once, but I fear the man who has practiced one kick 10,000 times. \n\n- Bruce Lee", sourceName: "Inc.", sourceURL: "https://www.inc.com/ilan-mochari/bruce-lee-learning.html", sponsorLogo: "", sponsorURL: "")

let gymTip19 = Tip(header: "👃", title: "Perform better during high-intensity training by breathing through your nose", body: "It allows for more deeper breaths into your diaphragm. \n\nIf you feel you're not getting air, use your mouth to take a few extra gulps of air and then go back to nostril breathing.", sourceName: "8 Weeks to SEALFIT", sourceURL: "https://www.amazon.com/Weeks-SEALFIT-Unconventional-Training-Toughness/dp/125004054X", sponsorLogo: "ABC", sponsorURL: "URL")
let gymTip20 = Tip(header: "🥛", title: "Consuming 20 grams of protein after your workout is the best amount to maximize muscle growth", body: "Compared to the 0-gram and 10-gram doses, the 20-gram and 40-gram doses more effectively stimulated muscle protein synthesis—the process that helps promote the muscle repair and growth after exercise. \n\nHowever, the 40-gram dose didn’t produce any added benefit compared to the 20-gram dose. \n\nGood post-workout options are: \n• Whey protein powder \n• Milk \n• Yogurt", sourceName: "Men's Health", sourceURL: "https://www.menshealth.com/fitness/a19520629/how-much-post-workout-protein-do-you-really-need/", sponsorLogo: "", sponsorURL: "")

//5
let gymTip21 = Tip(header: "🏃‍♀️", title: "Research: For better results, shorter but more intensive exercise is more effective than longer drawn-out exercise", body: "Most of the growth actually comes during the recovery process. \n\nHowever, the only way to truly recover is by actually pushing yourself to exhaustion during the workout." , sourceName: "ACSM", sourceURL: "https://www.acsm.org/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let gymTip22 = Tip(header: "💪", title: "Train like Arnold Schwarzenegger", body: "There are no shortcuts—everything is reps, reps, reps. \n\nIf you don’t find the time, if you don’t do the work, you don’t get the results. \n\n- Arnold Schwarzenegger", sourceName: "Motivation Grid", sourceURL: "https://motivationgrid.com/arnold-schwarzenegger-quotes/", sponsorLogo: "", sponsorURL: "")
let gymTip23 = Tip(header: "👇", title: "Decrease belly fat by strength training 3 times a week", body: "Many experts agree that cardio shouldn't be your main focus. \n\nIncorporate strength training to increase your muscle mass to burn more calories and speed up your metabolism.", sourceName: "POPSUGAR", sourceURL: "https://www.popsugar.com/fitness/photo-gallery/45405356/image/45407154/You-Dont-Strength-Train", sponsorLogo: "", sponsorURL: "")
let gymTip24 = Tip(header: "👍", title: "Framing exercise as \"fun\" instead of \"exercise\" reduces the number of unhealthy foods consumed afterward", body: "Study: When we view exercise as something we do for fun, we’re better at resisting unhealthy foods afterward. \n\nBut when the same physical activity is perceived as a chore, we have a much harder time saying no to fattening foods.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2014/10/regular-exercise-is-part-of-your-job", sponsorLogo: "", sponsorURL: "")

//6
let gymTip25 = Tip(header: "💪", title: "Train like Muhammad Ali", body: "I don't count the sit-ups. I only start counting when it starts hurting because they're the only ones that count. That's what makes you a champion. \n\n- Muhammad Ali", sourceName: "Inc.", sourceURL: "https://www.inc.com/gordon-tredgold/muhammad-ali-50-inspiring-thoughts-from-the-greatest-of-all-time.html", sponsorLogo: "", sponsorURL: "")
let gymTip26 = Tip(header: "💪", title: "Don't just \"workout.\" Develop a disciplined habit of training", body: "Training is is lifelong growth of your physical, mental, emotional, and spiritual skills to become a better person. \n\nDon't skip a training session without serious thought. When its cold, you train. When it rains, you train. If you must, make it up.", sourceName: "8 Weeks to SEALFIT", sourceURL: "https://www.amazon.com/Weeks-SEALFIT-Unconventional-Training-Toughness/dp/125004054X", sponsorLogo: "ABC", sponsorURL: "URL")
let gymTip27 = Tip(header: "🏋️‍♀️", title: "Work out with weights first and cardio last", body: "Your body is better able to handle weight training early in the workout because you're fresh and have the energy you need. \n\nCardio exercise should be last because it helps your body recover by increasing blood flow to the muscles, and flushing out lactic acid that was built up from weight lifting. \n\nThe lactic acid is what makes your muscles feel stiff and sore.", sourceName: "Health24", sourceURL: "https://www.health24.com/Medical/Flu/Health-tips/45-best-health-tips-ever-20120721", sponsorLogo: "", sponsorURL: "")
let gymTip28 = Tip(header: "", title: "Exercise to music. Study: Athletes' endurance increased by 20% when running in sync with the rhythms of the music, compared with trials when they exercised in silence", body: "Exercising in sync to a musical rhythm helps us produce more efficient movements, with less energy. \n\nMoving in sync to music can increase the release of endorphins, which helps increase your pain threshold.", sourceName: "BBC News", sourceURL: "http://www.bbc.com/culture/story/20190729-what-songs-make-you-work-out-harder", sponsorLogo: "", sponsorURL: "")



//WEEK 2
//7
let gymTip29 = Tip(header: "🤔", title: "Navy Seal Advice: Visualize your workout before you start", body: "True warriors through the ages have discovered this secret: you first need to win in your mind; only then can you win in the battleground. \n\nVisualize the whole workout with perfect form. Navy SEALs do this before each mission.", sourceName: "8 Weeks to Sealfit", sourceURL: "https://www.amazon.com/Weeks-SEALFIT-Unconventional-Training-Toughness/dp/125004054X", sponsorLogo: "ABC", sponsorURL: "URL")
let gymTip30 = Tip(header: "🔥", title: "Develop grit by starting each workout with intensity", body: "Grit is earned. The more you lean into the hard things, the grittier your character becomes. \n\nIf you slack off, you lose it. If you don't possess passion for your training, fake it 'til you make it.", sourceName: "8 Weeks to SEALFIT", sourceURL: "https://www.amazon.com/Weeks-SEALFIT-Unconventional-Training-Toughness/dp/125004054X", sponsorLogo: "", sponsorURL: "")
let gymTip31 = Tip(header: "🤔", title: "What is your favorite place to think big?", body: "Facebook COO Sheryl Sandberg said she did her best thinking on the treadmill.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/mark-zuckerberg-bill-gates-best-place-to-think-2018-11", sponsorLogo: "", sponsorURL: "")
let gymTip32 = Tip(header: "🌬", title: "During your entire workout keep your breathing deep and diaphragmatic, even when winded", body: "Press air deep into your lungs at the end of each inhale by pressing your belly out. \n\nIn through your nose and out through your nose. You can exhale through the mouth if you need to speed up the rate of breathing.", sourceName: "8 Weeks to SEALFIT", sourceURL: "https://www.amazon.com/Weeks-SEALFIT-Unconventional-Training-Toughness/dp/125004054X", sponsorLogo: "", sponsorURL: "")

//8
let gymTip33 = Tip(header: "", title: "Exercise to music. Study: When listening to music, people tend to underestimate their exertion by about 10%, meaning the whole workout ends up feeling much less difficult than it would have without the music", body: "Music helps to direct your attention outwards rather than inwards, and drowns out the feelings of fatigue in our bodies. \n\nThis should increase your overall endurance, helping you to exercise harder for longer.", sourceName: "BBC News", sourceURL: "http://www.bbc.com/culture/story/20190729-what-songs-make-you-work-out-harder", sponsorLogo: "", sponsorURL: "")
let gymTip34 = Tip(header: "🚰", title: "Drink fresh water before, during, and after a workout. Eat a protein-laden snack within 30 minutes of a workout", body: "Dehydration and undernourishment will lead to a declining performance, low motivation, and possible injury. \n\nHydrating and refueling must become a discipline.", sourceName: "8 Weeks to SEALFIT", sourceURL: "https://www.amazon.com/Weeks-SEALFIT-Unconventional-Training-Toughness/dp/125004054X", sponsorLogo: "", sponsorURL: "")
let gymTip35 = Tip(header: "🌬", title: "During high-intensity training try to not inhale through your mouth", body: "Unlike breathing through your mouth, breathing through your nose stimulates the arousal control response. \n\nIt cleanses and warms the air and also allows deeper, more penetrating breaths into your diaphragm.", sourceName: "8 Weeks to SEALFIT", sourceURL: "https://www.amazon.com/Weeks-SEALFIT-Unconventional-Training-Toughness/dp/125004054X", sponsorLogo: "", sponsorURL: "")
let gymTip36 = Tip(header: "🌬", title: "When resting between sets, commit to 5 deep breaths", body: "As you breathe, bring total relaxation awareness into your body. \n\nTurn your attention inward, not worrying about anyone else, and just visualize slowing your heart rate and regulating your systems.", sourceName: "8 Weeks to SEALFIT", sourceURL: "https://www.amazon.com/Weeks-SEALFIT-Unconventional-Training-Toughness/dp/125004054X", sponsorLogo: "", sponsorURL: "")

//9
let gymTip37 = Tip(header: "🔥", title: "Prepare for your workout with the same warrior mindset techniques that Navy SEALs use before a dangerous mission", body: "You must first win the battle-in your mind-to win every other battle in life. \n\n1. Find a quiet place where you won't be distracted. Clear your mind. Eliminate distractions and develop a deep, positive concentration of the task ahead of you. \n\n2. Review your workout. Understand all exercises before beginning. Have your towel, water bottle, journal, and pencil ready. \n\n3. Know your \"why\" and remind yourself why you're committed to training. \n\n4. Visualize yourself performing the workout. See success in your mind. Rehearse the whole thing with perfect form. \n\n5. Activate deep breathing and charge your body with positive energy and emotions for optimal performance. \n\n6. Begin a positive internal dialogue, which you will maintain throughout your workout.", sourceName: "8 Weeks to SEALFIT", sourceURL: "https://www.amazon.com/Weeks-SEALFIT-Unconventional-Training-Toughness/dp/125004054X", sponsorLogo: "", sponsorURL: "")
let gymTip38 = Tip(header: "🌬", title: "Elite athletes and Navy SEALs utilize breath control to prepare for missions and events, and you should too", body: "The breathing doesn't need to be fancy or esoteric - simple, long inhale holds followed by powerful forced exhale and short exhale hold will do the trick. \n\nRepeat it 20x while visualizing your ideal performance and repeating positive affirmations and mantras to psych yourself up physically and mentally.", sourceName: "8 Weeks to SEALFIT", sourceURL: "https://www.amazon.com/Weeks-SEALFIT-Unconventional-Training-Toughness/dp/125004054X", sponsorLogo: "", sponsorURL: "")
let gymTip39 = Tip(header: "💪", title: "Train like Conor Mcgregor", body: "There’s no talent here, this is hard work. This is an obsession. \n\nTalent does not exist, we are all human beings. You could be anyone if you put in the time. \n\nYou will reach the top, and that’s that. \n\nI am not talented, I am obsessed. \n\n- Conor Mcgregor", sourceName: "Motivation Grid", sourceURL: "https://motivationgrid.com/conor-mcgregor-quotes-to-make-you-a-champion/", sponsorLogo: "", sponsorURL: "")
let gymTip40 = Tip(header: "😀", title: "One technique for embracing the suck of a difficult workout is to change your state of mind by focusing on something else that is positive... and then smiling or even laughing", body: "Former Navy SEAL, Mark Divine, explains: \n\n\"This worked wonders during SEAL training. Some of my funniest and fondest memories are of the most difficult events. Because I put on a happy face and found humor in some oddity of the moment, the pain disappeared, replaced by growing confidence and courage.\"", sourceName: "The WAY OF THE SEAL", sourceURL: "https://www.amazon.com/dp/B00IUP7CC6", sponsorLogo: "", sponsorURL: "")

//10
let gymTip41 = Tip(header: "🔶", title: "What Color to Wear for a Work Out: Orange", body: "Orange is a color of stimulation and enthusiasm. \n\nResearch: Orange increases oxygen supply to the brain, produces an energizing effect, and stimulates brain activity.", sourceName: "Science of People", sourceURL: "", sponsorLogo: "", sponsorURL: "")
let gymTip42 = Tip(header: "🧠", title: "90% of Olympic athletes use visualization, and 97% of them claim it helped their performance", body: "Visualize your personal victory. See yourself performing; sense your movement, emotions; hear the sounds of success; feel the actual air, water, handshake, etc. \n\nVisualized events, if vivid and empowered with positive thoughts and emotion, stimulate and program your nervous and muscular system as if you are actually practicing.", sourceName: "8 Weeks to SEALFIT", sourceURL: "https://www.amazon.com/Weeks-SEALFIT-Unconventional-Training-Toughness/dp/125004054X", sponsorLogo: "", sponsorURL: "")
let gymTip43 = Tip(header: "🚰", title: "Drink 16 ounces of extra water before you exercise", body: "The American College of Sports Medicine recommends to drink 16 ounces of extra water before you exercise, and to sip on 4-8 ounces during exercise, and another 16 ounces after exercise. \n\nJust a 2% dehydration in the body can negatively impact athletic performance.", sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/drink-water-lose-weight/", sponsorLogo: "", sponsorURL: "")
let gymTip44 = Tip(header: "", title: "Lose Weight: Drink 16 ounces of water before every meal", body: "Study: Over the course of 12 weeks, dieters who drank 16 ounces of water before meals, 3 times per day, lost about 5 pounds more than dieters who did not increase their water intake. \n\nWater promotes weight loss because it fills up the stomach with a substance that has zero calories. \n\nPeople feel fuller as a result, and eat less calorie-containing food during the meal.", sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/drink-water-lose-weight/", sponsorLogo: "", sponsorURL: "")

//11
let gymTip45 = Tip(header: "", title: "Lose Belly Fat: Don't eat before your workout", body: "Though fasted cardio isn’t suitable for everyone, a study found that exercising in a fasted state can burn almost 20% more fat compared with exercising with fuel in your belly. \n\nIf you must eat before a workout, make sure it’s a light snack.", sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/weight-loss-lifestyle/", sponsorLogo: "", sponsorURL: "")
let gymTip46 = Tip(header: "", title: "Lose weight: Don't bring bottled water to the gym. Instead, bring a reusable, BPA-free water bottle", body: "Not only does bottled water drain your wallet, it may also slow your weight loss progress, due to the BPA in the plastic. \n\nBPA is a chemical that’s been linked to obesity and belly fat, according to a Harvard study. \n\nTrade in your throw-away bottle for the reusable, BPA-free variety.", sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/weight-loss-lifestyle/", sponsorLogo: "", sponsorURL: "")
let gymTip47 = Tip(header: "", title: "Exercise to fast tempo music. Study: Fast tempo music causes our heart’s rhythm to increase by 5-15 beats per minute", body: "It also triggers the release of adrenaline that helps prime the body for greater physical effort. \n\nCombined with motivational lyrics, the physiological response could put you in the perfect physical and mental state to exercise harder and get into a state of flow.", sourceName: "BBC News", sourceURL: "http://www.bbc.com/culture/story/20190729-what-songs-make-you-work-out-harder", sponsorLogo: "", sponsorURL: "")
let gymTip48 = Tip(header: "", title: "Burn more fat: Don't only do cardio. Weight training helps you get and maintain a lean physique", body: "The more muscle mass you have the faster your metabolism. \n\nWeight training causes you to burn more calories per workout than cardio sessions, and you continue to burn them post workout.", sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/things-you-did-today-to-slow-your-metabolism/", sponsorLogo: "", sponsorURL: "")

//12
let gymTip49 = Tip(header: "", title: "I hated every minute of training, but I said, 'Don't quit. Suffer now and live the rest of your life as a champion.'", body: "- Muhammad Ali" , sourceName: "Wonderful Quote", sourceURL: "https://www.wonderfulquote.com/a/muhammad-ali-quotes", sponsorLogo: "", sponsorURL: "")
let gymTip50 = Tip(header: "🤔", title: "Research: Practicing visualization helps you perform better", body: "Scientists found that weight lifters who visualized their workouts were nearly 2 times stronger than those who did nothing at all. Basically, you're helping your brain establish patterns for success. \n\nClose your eyes and quickly run through your workout in your head beforehand.", sourceName: "The Thirty", sourceURL: "https://thethirty.byrdie.com/mindfulness-tips-ideas", sponsorLogo: "LOGO", sponsorURL: "URL")
let gymTip51 = Tip(header: "💪", title: "Train like a Navy SEAL: \"You’re capable of 20 times more than you think you are.\"", body: "Everyone - whether a SEAL recruit or a civilian - is capable of accomplishing at least 20 times what they perceive themselves capable of accomplishing. Have a strong “Why” or purpose for your training and never give up.", sourceName: "8 Weeks to SEALFIT", sourceURL: "https://www.amazon.com/Weeks-SEALFIT-Unconventional-Training-Toughness/dp/125004054X", sponsorLogo: "", sponsorURL: "")
let gymTip52 = Tip(header: "", title: "Burn more fat: Do a 20 minute high-intensity interval training (HIIT) workout instead of a 40 minute steady pace workout", body: "Study: When women performed a 20-minute HIIT workout 3 times per week, they shed nearly 6 pounds more than those who exercised for 40 minutes 3 times a week at a steady pace. \n\nWhile HIIT is of shorter duration than a regular cardio workout, it results in greater post-exercise oxygen consumption, meaning that you continue burning calories for a period of time afterward.", sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/things-you-did-today-to-slow-your-metabolism/", sponsorLogo: "", sponsorURL: "")

//13
let gymTip53 = Tip(header: "", title: "To be a great champion you must believe you are the best. If you're not, pretend you are.", body: "- Muhammad Ali" , sourceName: "Wonderful Quote", sourceURL: "https://www.wonderfulquote.com/a/muhammad-ali-quotes", sponsorLogo: "", sponsorURL: "")
let gymTip54 = Tip(header: "", title: "Weight Loss: Drink water, not sports drinks. Sports drinks have high amounts of sugar, which can cause weight gain rather than weight loss.", body: "Nutritionist, Lisa Richards, recommends cutting sports drinks out of your diet in order to lose weight because they have very high sugar content. \n\nUnless you are doing intense exercise where you are losing significant amounts of electrolytes, it may be more beneficial to stick with water for hydration.", sourceName: "SheFinds", sourceURL: "https://www.shefinds.com/collections/the-one-drink-you-shouldnt-have-for-weight-loss-according-to-a-nutritionist/#slide-1", sponsorLogo: "", sponsorURL: "")
let gymTip55 = Tip(header: "", title: "Study: Listening to music during exercise increases enjoyment 28% more than silence and 13% more than a podcast", body: "Music rearranges the brain's electrical frequency and causes a drop in focus but enhances enjoyment. If you're not motivated to exercise then make sure to listen to music.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/listening-to-music-while-working-out-might-help-you-burn-more-calories-2018-3", sponsorLogo: "", sponsorURL: "")
let gymTip56 = Tip(header: "", title: "Unless you’re challenging your muscles with heavy enough weights, you won’t see any physical changes", body: "“If you’re doing more than 10 reps with ease, your weight probably isn’t heavy enough,” warns personal trainer Dustin Hassard. \n\n“Vary your reps and consistently increase the amount you’re lifting to see results.” \n\nAnd after your workout, replenish your tired muscles with a protein shake.", sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/weight-loss-lifestyle/", sponsorLogo: "", sponsorURL: "")

//WEEK 13
//14
let gymTip57 = Tip(header: "", title: "Improve Performance: Listen to music with heavy bass", body: "Study: After listening to music with heavy bass, participants said they felt more powerful, dominant and determined.", sourceName: "Entrepreneur", sourceURL: "https://www.entrepreneur.com/slideshow/317242", sponsorLogo: "", sponsorURL: "")
let gymTip58 = Tip(header: "", title: "Navy SEAL Advice: Use positive self-talk to workout harder and longer", body: "Stop negative thoughts by standing tall and shouting power statements used in the Navy like, “Hooyah!” “Easy day,” “Piece of cake,” or “Could be worse.” \n\nTough workouts can become effortless with mantras like: \n\n“Day by day, in every way, I’m getting better and better.” \n\n“Feed your courage. You can do this. It’s easy.” \n\n“Quit now and you’ll quit everything for the rest of your life.”", sourceName: "SEALFIT", sourceURL: "https://sealfit.com/navy-seal-commanders-advice-developing-mental-toughness/", sponsorLogo: "", sponsorURL: "")
let gymTip59 = Tip(header: "😴", title: "Increase Testosterone: Lift heavyweight or run sprints", body: "Lifting heavy weights sends signals to the body that you need to produce testosterone to flourish. \n\nLarger muscles contribute to higher testosterone.", sourceName: "Own The Day, Own Your Life", sourceURL: "https://www.amazon.com/dp/B072HLS5QJ/", sponsorLogo: "", sponsorURL: "")
let gymTip60 = Tip(header: "", title: "Eat healthier: Think of exericse as \"toning\" and not as \"burning calories.\" You'll eat less later on", body: "Survey: The majority of gym-goers who reframed exercise as \"getting tone\" said that it made them less likely to reward themselves with extra calories afterward.", sourceName: "Own the Day, Own Your Life", sourceURL: "https://www.amazon.com/Own-Day-Your-Life-Optimized-ebook/dp/B072HLS5QJ", sponsorLogo: "", sponsorURL: "")

//15
let gymTip61 = Tip(header: "", title: "Do kettlebell exercises. Study: After 8 weeks of kettlebell training, the male and female subjects' core strength increased 70% and their aerobic capacity increased 13%", body: "Kettlebell training better simulates the constantly shifting center of gravity you encounter on the field, mat, or court than most convential lifting does.", sourceName: "Own the Day, Own Your Life", sourceURL: "https://www.amazon.com/Own-Day-Your-Life-Optimized-ebook/dp/B072HLS5QJ", sponsorLogo: "", sponsorURL: "")




//https://www.businessinsider.com/listening-to-music-while-working-out-might-help-you-burn-more-calories-2018-3
//WEEK 1
let gymTipArray0 = [gymTip1, gymTip2, gymTip3, gymTip4]
let gymTipArray1 = [gymTip5, gymTip6, gymTip7, gymTip8]
let gymTipArray2 = [gymTip9, gymTip10, gymTip11, gymTip12]
let gymTipArray3 = [gymTip13, gymTip14, gymTip15, gymTip16]
let gymTipArray4 = [gymTip17, gymTip18, gymTip19, gymTip20]
let gymTipArray5 = [gymTip21, gymTip22, gymTip23, gymTip24]
let gymTipArray6 = [gymTip25, gymTip26, gymTip27, gymTip28]
//WEEK 2
let gymTipArray7 = [gymTip29, gymTip30, gymTip31, gymTip32]
let gymTipArray8 = [gymTip33, gymTip34, gymTip35, gymTip36]
let gymTipArray9 = [gymTip37, gymTip38, gymTip39, gymTip40]
let gymTipArray10 = [gymTip41, gymTip42, gymTip43, gymTip44]
let gymTipArray11 = [gymTip45, gymTip46, gymTip47, gymTip48]
let gymTipArray12 = [gymTip49, gymTip50, gymTip51, gymTip52]
let gymTipArray13 = [gymTip53, gymTip54, gymTip55, gymTip56]
//WEEK 3
let gymTipArray14 = [gymTip57, gymTip58, gymTip59, gymTip60]
//WIP:
let gymTipArray15 = [gymTip61, gymTip22, gymTip23, gymTip24]
let gymTipArray16 = [gymTip25, gymTip26, gymTip27, gymTip28]
let gymTipArray17 = [gymTip29, gymTip30, gymTip31, gymTip32]
let gymTipArray18 = [gymTip33, gymTip34, gymTip35, gymTip36]
let gymTipArray19 = [gymTip37, gymTip38, gymTip39, gymTip40]
let gymTipArray20 = [gymTip41, gymTip42, gymTip43, gymTip44]



let gymTopic0 = Topic(title: gymTitle, icon: gymIcon, tip: gymTipArray0)
let gymTopic1 = Topic(title: gymTitle, icon: gymIcon, tip: gymTipArray1)
let gymTopic2 = Topic(title: gymTitle, icon: gymIcon, tip: gymTipArray2)
let gymTopic3 = Topic(title: gymTitle, icon: gymIcon, tip: gymTipArray3)
let gymTopic4 = Topic(title: gymTitle, icon: gymIcon, tip: gymTipArray4)
let gymTopic5 = Topic(title: gymTitle, icon: gymIcon, tip: gymTipArray5)
let gymTopic6 = Topic(title: gymTitle, icon: gymIcon, tip: gymTipArray6)
//WEEK 2
let gymTopic7 = Topic(title: gymTitle, icon: gymIcon, tip: gymTipArray7)
let gymTopic8 = Topic(title: gymTitle, icon: gymIcon, tip: gymTipArray8)
let gymTopic9 = Topic(title: gymTitle, icon: gymIcon, tip: gymTipArray9)
let gymTopic10 = Topic(title: gymTitle, icon: gymIcon, tip: gymTipArray10)
let gymTopic11 = Topic(title: gymTitle, icon: gymIcon, tip: gymTipArray11)
let gymTopic12 = Topic(title: gymTitle, icon: gymIcon, tip: gymTipArray12)
let gymTopic13 = Topic(title: gymTitle, icon: gymIcon, tip: gymTipArray13)
//WEEK 3
let gymTopic14 = Topic(title: gymTitle, icon: gymIcon, tip: gymTipArray14)
let gymTopic15 = Topic(title: gymTitle, icon: gymIcon, tip: gymTipArray15)
let gymTopic16 = Topic(title: gymTitle, icon: gymIcon, tip: gymTipArray16)
let gymTopic17 = Topic(title: gymTitle, icon: gymIcon, tip: gymTipArray17)
let gymTopic18 = Topic(title: gymTitle, icon: gymIcon, tip: gymTipArray18)
let gymTopic19 = Topic(title: gymTitle, icon: gymIcon, tip: gymTipArray19)
let gymTopic20 = Topic(title: gymTitle, icon: gymIcon, tip: gymTipArray20)

// . \"Do today what others won’t so you can do tomorrow what others can’t.\" - Smoke Jumper Creed



//Morning
let gymAMTip1 = Tip(header: "☕️", title: "Complete your workout in the morning before you consume caffeine", body: "In an ideal circadian rhythm, cortisol rises in the morning and remains level throughout the day to support alertness and energy. Because cortisol is like caffeine and is ideally rising in the morning, you may not need both. In fact, caffeine could suppress cortisol, making it tough to feel awake without caffeine. Even if you still need or want caffeine later, you’ve given your body a natural chance at producing its own state of wakefulness.", sourceName: "American Council on Exercise", sourceURL: "http://www.aimspress.com/article/10.3934/publichealth.2017.2.189/fulltext.html", sponsorLogo: "", sponsorURL: "")

let gymAMTipArray0 = [gymAMTip1, gymTip58, gymTip59, gymTip60]
let gymAMTopic0 = Topic(title: gymTitle, icon: gymIcon, tip: gymAMTipArray0)

//Workweek, Mid-day
let gymWorkWeekDayTip1 = Tip(header: "🤷‍♂️", title: "Working out during the workday may be less effective than after-work workouts", body: "Researchers found that compared the performance of in-work participants to after-work participants. In-work participants attended only 26% of the group sessions, while after-work participants attended 70% of the group sessions. In-work participants exercised fewer minutes per week, exercised less vigorously, and, as a result, lost less weight than after-work participants.", sourceName: "American Institute of Mathematics Sciences (AIMS) Press", sourceURL: "http://www.aimspress.com/article/10.3934/publichealth.2017.2.189/fulltext.html", sponsorLogo: "", sponsorURL: "")

let gymWorkWeekDayTipArray0 = [gymWorkWeekDayTip1, gymTip54, gymTip55, gymTip56]
let gymWorkWeekDayTopic0 = Topic(title: gymTitle, icon: gymIcon, tip: gymWorkWeekDayTipArray0)


// After work
//1
let gymAfternoonTip0 = Tip(header: "🌅", title: "Burn 20% more fat by exercising in the morning, before breakfast", body: "When we first wake up, having not eaten for at least 8 hours, our blood sugar is low. Since we need blood sugar to fuel a run, morning exercise will use the fat stored in our tissues to supply the energy we need. (When we exercise after eating, we use the energy from the food we've just consumed.) In many cases, morning exercise may burn 20% more fat than later, post-food workouts.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/", sponsorLogo: "", sponsorURL: "")
let gymAfternoonTip1 = Tip(header: "☀️", title: "Some studies suggest that we're more likely to stick to our workout routine when we do it in the morning", body: "So if you find yourself struggling to stick with an exercise plan, morning exercise, especially if you enlist a regular partner, can help you form a habit.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/", sponsorLogo: "", sponsorURL: "")
let gymAfternoonTip2 = Tip(header: "🏃‍♀️", title: "Afternoon/early evening workouts help you sprint faster and lift more weight", body: "Lung function is highest this time of the day, so your circulation system can distribute more oxygen and nutrients. This is also the time of day when strength peaks, reaction time quickens, hand-eye coordination sharpens, and heart rate and blood pressure drop. These factors make it a great time to put on your best athletic performance. \n\nIn fact, a disproportionate number of Olympic records, especially in running and swimming, are set in the late afternoon and early evening.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/", sponsorLogo: "", sponsorURL: "")
let gymAfternoonTip3 = Tip(header: "🤕", title: "Working out in the late afternoon and early evening helps to prevent injuries", body: "Our body temperature is low when we first wake up, rises steadily throughout the day, and peaks in the late afternoon. \n\nThat means that in later-in-the-day workouts our muscles are warmer and injuries are less common.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/", sponsorLogo: "", sponsorURL: "")


//2
let gymAfternoonTip4 = Tip(header: "", title: "Study: People who exercised before noon lost more weight, on average than those who completed the same workouts after 3 p.m.", body: "While both groups lost weight after the 10 month study: \n• The early-exercise group tended to be slightly more active throughout the day, taking more steps in total than those who worked out later. \n• They also ate a bit less, although the difference amounted to barely 100 calories per day on average." , sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/2019/07/31/well/move/morning-exercise-may-offer-the-most-weight-loss-benefits.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let gymAfternoonTipArray0 = [gymAfternoonTip0, gymAfternoonTip1, gymAfternoonTip2, gymAfternoonTip3]
let gymAfternoonTipArray1 = [gymAfternoonTip4, gymTip26, gymTip27, gymTip28]

let gymAfternoonTopic0 = Topic(title: gymTitle, icon: gymIcon, tip: gymAfternoonTipArray0)
let gymAfternoonTopic1 = Topic(title: gymTitle, icon: gymIcon, tip: gymAfternoonTipArray1)

//Evening Workout
let gymPMTip0 = Tip(header: "🤔", title: "Exercising before bed may be keeping you from getting the good night’s sleep", body: "Revving up your energy and heart rate late at night may prevent you from falling asleep easily. \n\nThe best time to exercise is three to four hours prior to going to sleep. The increase in core body temperature followed by a decrease in core body temperature mimics the natural drop in body temperature needed to fall asleep and maintain sleep.", sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/health/wellness/why-cant-i-sleep/", sponsorLogo: "", sponsorURL: "")


let gymPMTip4 = Tip(header: "🙅‍♀️", title: "Sleep better: Don’t schedule a strenuous gym session within 3 hours of your bedtime", body: "Your core body temperature falls when we’re ready to go to sleep. But, an intense workout raises your body temperature, making it more difficult for you to fall asleep afterward.", sourceName: "SUCCESS Magazine", sourceURL: "https://www.success.com/the-new-secrets-of-perfect-sleep/", sponsorLogo: "", sponsorURL: "")

let gymPMTipArray0 = [gymPMTip0, gymTip6, gymTip7, gymTip8]
let gymPMTipArray1 = [gymPMTip4, gymTip10, gymTip11, gymTip12]

let gymPMTopic0 = Topic(title: gymTitle, icon: gymIcon, tip: gymPMTipArray0)
let gymPMTopic1 = Topic(title: gymTitle, icon: gymIcon, tip: gymPMTipArray1)


//MEN
let gymMenTip1 = Tip(header: "💪", title: "Testosterone levels are typically highest in the morning and lowest in the afternoon", body: "Testosterone helps build muscle, so if you're doing weight training, schedule your workout for those early-morning hours.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
let gymMenTip2 = Tip(header: "💪", title: "Men's bodies tend to be less flexible than women's, but this can be fixed", body: "This has less to do with the nature of men's bodies and more to do with the fact that men are less likely to include stretching in their workouts.", sourceName: "WedMD", sourceURL: "https://www.webmd.com/fitness-exercise/features/his-hers-fitness#1", sponsorLogo: "", sponsorURL: "")

//WOMEN
let gymWomanTip1 = Tip(header: "🏋️‍♀️", title: "Squating: Women's pelvises tilt more than men, so they may need to do a slightly different type of squat to protect their lower backs", body: "This might mean turning the feet outward a bit, standing with the legs slightly wider apart, and not going down so low. ", sourceName: "WebMD", sourceURL: "https://www.webmd.com/fitness-exercise/features/his-hers-fitness#1", sponsorLogo: "", sponsorURL: "")











// MARK: - Running

let runningTitle = "Running"
let runningIcon = Constants.Icon.running

let runningTip1 = Tip(header: "🚰", title: "Drink 17 ounces of fluid 2 hours before exercise", body: "During exercise, researchers recommend that people start drinking fluids early, and drink them at regular intervals to prevent muscle fatigue and replace fluids lost by sweating." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/diet/features/6-reasons-to-drink-water#3", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let runningTip2 = Tip(header: "🏃‍♀️", title: "Run faster by adding short sprints into your endurance training on a regular basis", body: "You won’t make performance gains if you always run at the same speed. \n\nWork short speedwork into one of your long-distance runs to vary the pace. \n\nSteadily increase your running speed from a recovery pace to a sprint over a distance of 80-100 meters." , sourceName: "Runtastic", sourceURL: "https://www.runtastic.com/blog/en/5-effective-tips-for-improving-your-running-performance/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let runningTip3 = Tip(header: "👣", title: "Run with better form by landing on the midsole of your foot", body: "Landing on your forefoot (instead of your heels) allows your muscles to catch the weight of your body in flight, reducing the effects of impact on the joints and bones. \n\nAvoid running with a heel landing first because it can contribute to back and knee pain.", sourceName: "Shape", sourceURL: "https://www.shape.com/fitness/cardio/10-ways-improve-your-running-technique", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let runningTip4 = Tip(header: "🏃‍♂️", title: "Take short effective strides to conserve energy and reduce joint pain", body: "Stand tall and lean forward, and when you feel like you are going to fall, step forward just enough to catch yourself. \n\nThis should be the length of your stride. \n\nTaking long strides while you run is inefficient and an energy drain." , sourceName: "Shape", sourceURL: "https://www.shape.com/fitness/cardio/10-ways-improve-your-running-technique", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//2
let runningTip5 = Tip(header: "🙅‍♀️", title: "Avoid stress fractures by taking rest days and running slow on recovery days", body: "Running is great for your bones—the impact increases cell turnover and forces the bone to remodel with stronger structures. \n\nBut, if you don't take rest days then you're bones never have time to fully repair. \n\nThe key to a recovery run is to do it at a recovery pace—the more you push the speed, the more shock your bones absorb, and the weaker they’ll be when you try to go fast again.", sourceName: "Runner's World", sourceURL: "https://www.runnersworld.com/health-injuries/a20864022/why-rest-days-are-important/", sponsorLogo: "", sponsorURL: "")
let runningTip6 = Tip(header: "👟", title: "If you’re training for and running half/full marathons, don’t do it in cheap shoes. Invest in a custom-fit pair of running shoes", body: "When you're training for half/full marathons, the difference with custom-fit shoes and cheap shoes will be noticeable. \n\nCustom-fit shoes will reduce callouses and help reduce soreness in your feet and knees.", sourceName: "Medium", sourceURL: "https://medium.com/runners-life/should-i-buy-expensive-running-shoes-9bb60af20df5", sponsorLogo: "", sponsorURL: "")
let runningTip7 = Tip(header: "😀", title: "Having fun during a race makes you more likely to eat a healthier snack afterward", body: "Runners who perceive themselves as having fun during a race are less likely to compensate from their physical exertion by choosing to eat an unhealthy snack after the race. \n\nStudy: Framing exercise as fun makes people feel more energized and therefore reduces compensation through unhealthy food consumption.", sourceName: "Springer, a research database", sourceURL: "https://link.springer.com/article/10.1007%2Fs11002-014-9301-6#page-1", sponsorLogo: "", sponsorURL: "")
let runningTip8 = Tip(header: "💪", title: "Depending on the length and intensity of your workout, the body needs a minimum of 36 to 48 hours to recover and rebuild", body: "When you run, you create microscopic tears in your muscle fibers. \n\nYour body responds by rebuilding your muscles stronger, in preparation for the next session. \n\nBut, if you don't rest then you're body has no opportunity to rebuild and strengthen muscles.", sourceName: "Runner's World", sourceURL: "https://www.runnersworld.com/health-injuries/a20864022/why-rest-days-are-important/", sponsorLogo: "", sponsorURL: "")

//3
let runningTip9 = Tip(header: "🎵", title: "Study: Runners who listened to music during a cardiac stress test ran 50 seconds longer and burned more calories than runners who ran in silence", body: "This provides evidence that music: \n\n• Helps to motivate you \n• Helps you exercise longer \n• Helps you burn more calories", sourceName: "American College of Cardiology", sourceURL: "https://www.acc.org/about-acc/press-releases/2018/02/27/12/01/music-boosts-exercise-time-during-cardiac-stress-testing", sponsorLogo: "", sponsorURL: "")
let runningTip10 = Tip(header: "", title: "Study: Caffeine and coffee improves running performance", body: "In a 1,500-meter run, regular coffee drinkers were 4.2 seconds faster than those drinking decaf. \n\nAnother study found that runners who consumed caffeine were able to run 1.3-2 miles more than the non-caffeine runners.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/listening-to-music-while-working-out-might-help-you-burn-more-calories-2018-3", sponsorLogo: "", sponsorURL: "")

let runningTipArray0 = [runningTip1, runningTip2, runningTip3, runningTip4]
let runningTipArray1 = [runningTip5, runningTip6, runningTip7, runningTip8]
let runningTipArray2 = [runningTip9, runningTip10, runningTip4, runningTip8]
let runningTipArray3 = [runningTip1, runningTip2, runningTip3, runningTip4]
let runningTipArray4 = [runningTip5, runningTip6, runningTip7, runningTip8]
let runningTipArray5 = [runningTip9, runningTip10, runningTip4, runningTip8]
let runningTipArray6 = [runningTip6, runningTip3, runningTip2, runningTip4]


let runningTopic0 = Topic(title: runningTitle, icon: runningIcon, tip: runningTipArray0)
let runningTopic1 = Topic(title: runningTitle, icon: runningIcon, tip: runningTipArray1)
let runningTopic2 = Topic(title: runningTitle, icon: runningIcon, tip: runningTipArray2)
let runningTopic3 = Topic(title: runningTitle, icon: runningIcon, tip: runningTipArray3)
let runningTopic4 = Topic(title: runningTitle, icon: runningIcon, tip: runningTipArray4)
let runningTopic5 = Topic(title: runningTitle, icon: runningIcon, tip: runningTipArray5)
let runningTopic6 = Topic(title: runningTitle, icon: runningIcon, tip: runningTipArray6)



// MARK: - Yoga

let yogaTitle = "Yoga"
let yogaIcon = Constants.Icon.yoga

//0
let yogaTip1 = Tip(header: "🌅", title: "Ideally, yoga is practiced in the early morning at sunrise when the mind is clearest and the world is quiet", body: "Practicing first thing in the morning allows you to avoid distraction and start the day off with health and intentionality, thus setting the tone for the rest of the day." , sourceName: "Art of Living", sourceURL: "https://www.artofliving.org/us-en/yoga/yoga-for-beginners/get-started-with-yoga", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let yogaTip2 = Tip(header: "🍽", title: "It's best to practice yoga on an empty stomach or at least 2-3 hours after your last meal", body: "When practicing yoga, you are much more in tune to your body’s subtle feelings than at any other point, and practicing with food in your stomach inevitably leads to discomfort and can disrupt the digestion process." , sourceName: "Art of Living", sourceURL: "https://www.artofliving.org/us-en/yoga/yoga-for-beginners/get-started-with-yoga", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let yogaTip3 = Tip(header: "🤔", title: "Before starting your practice, create an intention that sets the tone for your practice and prepares your mind", body: "Centering your mind around one thought will help bring you into the present moment before beginning. \n\nAs you continue to focus on your intention, you uplift your energy and increase your vibration, thereby acting as an example to inspire the lives of those you encounter." , sourceName: "Mind Body Green", sourceURL: "https://www.mindbodygreen.com/0-18626/the-power-behind-setting-an-intention-in-yoga.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let yogaTip4 = Tip(header: "🧘‍♀️", title: "Yoga can benefit those living with depression, sleep problems, and mental disorders", body: "Practicing with other people stimulates the production of oxytocin, the love and bonding hormone. \n\nPracticing mindfulness through yoga results in higher serotonin levels (the happiness hormone), and long-term practitioners have shown more mass in the areas of the brain associated with happiness." , sourceName: "Everyday Health", sourceURL: "https://www.everydayhealth.com/fitness-pictures/10-surprising-health-perks-of-yoga.aspx#02", sponsorLogo: "TBD", sponsorURL: "www.test.com")
//1


let yogaTipArray0 = [yogaTip1, yogaTip2, yogaTip3, yogaTip4]
let yogaTopic0 = Topic(title: yogaTitle, icon: yogaIcon, tip: yogaTipArray0)
//(WIP 3)
let yogaTipArray1 = [yogaTip4, yogaTip3, yogaTip2, yogaTip1]
let yogaTopic1 = Topic(title: yogaTitle, icon: yogaIcon, tip: yogaTipArray1)

let yogaTipArray2 = [yogaTip2, yogaTip1, yogaTip3, yogaTip4]
let yogaTopic2 = Topic(title: yogaTitle, icon: yogaIcon, tip: yogaTipArray2)

let yogaTipArray3 = [yogaTip4, yogaTip3, yogaTip2, yogaTip1]
let yogaTopic3 = Topic(title: yogaTitle, icon: yogaIcon, tip: yogaTipArray3)

let yogaTipArray4 = [yogaTip3, yogaTip2, yogaTip1, yogaTip4]
let yogaTopic4 = Topic(title: yogaTitle, icon: yogaIcon, tip: yogaTipArray4)

let yogaTipArray5 = [yogaTip4, yogaTip3, yogaTip2, yogaTip1]
let yogaTopic5 = Topic(title: yogaTitle, icon: yogaIcon, tip: yogaTipArray5)

let yogaTipArray6 = [yogaTip2, yogaTip3, yogaTip1, yogaTip4]
let yogaTopic6 = Topic(title: yogaTitle, icon: yogaIcon, tip: yogaTipArray6)



// MARK: - Social Media

//TODO: create a section that provides mental training/mindfulness for dealing with social media. Goal is to reduce anger and depression




// MARK: - Morning Routine, AM

let AMRoutineTitle = "Morning Routine"
let AMRoutineIcon = Constants.Icon.routineAM


//0
// Tony Robbins
let AMRoutine0 = Tip(header: "🌬", title: "Tony Robbins' 10 Minute Morning Routine \n\n1. Breathing exercise (1 minute):", body: "• Sit straight. Close your eyes. \n\n• Inhale deeply through your nose while lifting your arms up towards the sky. \n\n• Exhale quickly through your nose while lowering your arms back down to your body. \n\n• Do 3 sets of 30 reps each." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/tony-robbins-morning-routine-meditation-and-workout-2017-10", sponsorLogo: "", sponsorURL: "")
let AMRoutine1 = Tip(header: "🙏", title: "2. Practice gratitude to eliminate anger and fear (3 minutes):", body: "Think of 3 things you're grateful for. Make sure that 1 of them is very simple. \n\n• I'm thankful for my family. \n• I'm thankful for my friends. \n• I'm thankful for the sun. \n\nThis process eliminates anger and fear because, \"You can't be fearful and grateful simultaneously,\" Robbins said.", sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2017/01/26/tony-robbins-shares-the-10-minute-routine-that-sets-him-up-for-success.html", sponsorLogo: "", sponsorURL: "")
let AMRoutine2 = Tip(header: "🌎", title: "3. Visualize positive energy flowing through you and sending well wishes out to others (3 minutes):", body: "1. Imagine a light flowing into your head and body, energizing and healing you. \n\n2. Visualize the light flowing outward, healing loved ones and strangers.", sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2017/01/26/tony-robbins-shares-the-10-minute-routine-that-sets-him-up-for-success.html", sponsorLogo: "", sponsorURL: "")
let AMRoutine3 = Tip(header: "🤔", title: "4. Visualizes 3 things that you're going to accomplish today (3 minutes)", body: "Spend one minute each imagining what it would feel and look like to complete 3 of your goals. \n\nVisualize how they will: \n• Benefit you \n• Benefit others", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/tony-robbins-morning-routine-meditation-and-workout-2017-10", sponsorLogo: "", sponsorURL: "")

//1
// Jocko Willink
let AMRoutine4 = Tip(header: "🌄", title: "Retired US Navy SEAL Jocko Willink wakes up a 4:30 a.m. and exercises", body: "He grabs his workout clothes, laid out the night before, and heads to the gym for a one hour strength workout. The exercises can either be lower weight with high reps and little rest or heavy weight with low reps and lots of rest.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/retired-navy-seal-jocko-willinks-morning-routine-2015-11", sponsorLogo: "", sponsorURL: "")
let AMRoutine5 = Tip(header: "💪", title: "Jocko Willink warms up to get his blood flowing and muscles loosened up", body: "Repeat this cycle: \n\n• Hang on a pull-up bar for 10 to 15 seconds. \n• Hold a push-up position for 10 to 15 seconds. \n• Get on the ground, face down, arch your head to the ceiling to stretch abs. \n• Raise hips to the sky and stretch your back (aka the downward dog pose in yoga). \n\n• Do a slow squat and hold at the bottom for 10 to 15 seconds. \n• Do a burpee. \n• Do a pull-up. \n• Do a push-up. \n• Do a few jumping jacks.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/retired-navy-seal-jocko-willink-workout-philosophy-2017-11", sponsorLogo: "", sponsorURL: "")
let AMRoutine6 = Tip(header: "🏋️‍♂️", title: "Jocko Willink does strength training exercises to get stronger", body: "His exercises include: \n\n• Deadlifts. \n• Cleans. \n• Jerks. \n• Snatches. \n• Dips. \n\n• Maxing out to dead hang pull-ups. \n• Overhead squats, back squats, and front squats. \n• Core exercises like crunches and hanging leg raises.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/retired-navy-seal-jocko-willink-workout-philosophy-2017-11", sponsorLogo: "", sponsorURL: "")
let AMRoutine7 = Tip(header: "🏃‍♂️", title: "Jocko Willink then spends a few minutes (intense bursts) to 30 minutes (steady) on cardio training", body: "He pushes himself after his main exercises with either: \n\n• A few sprints. \n• A hard 1-2 mile run. \n• A stationary bike. \n• A rowing machine.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/retired-navy-seal-jocko-willink-workout-philosophy-2017-11", sponsorLogo: "", sponsorURL: "")

//2
// Mark Devine
let AMRoutine8 = Tip(header: "🚰", title: "Start Your Day Like Former Navy SEAL, Mark Devine \n\nEach morning: \n• Drink a large glass of water \n• Go to a calm place where you can be alone and settle into a space of sacred silence", body: "This space can be any place where you have privacy. \n\nWith your journal, ask yourself these 4 empowering questions: \n\n• What and whom am I grateful for today? \n\n• What is my purpose and do my plans for today connect me to it? \n\n• What can I do to make progress toward my purpose today? \n\n• Who can I serve or thank today?", sourceName: "8 Weeks to SEALFIT", sourceURL: "https://www.amazon.com/dp/B00DFFGMPO/", sponsorLogo: "", sponsorURL: "")
let AMRoutine9 = Tip(header: "🌬", title: "5 minutes of box breathing. It's used by yogis and martial artists to develop more power, presence, and mental control", body: "Start by exhaling all the air from your lungs, then breathing slowly into your belly to a count of 4. Hold your breath to a count of 4. Then exhale to a count of 4, expelling all the air at the end. Finally, hold your lungs empty for a count of 4. The 4-4-4-4 count is a box.", sourceName: "8 Weeks to SEALFIT", sourceURL: "https://www.amazon.com/dp/B00DFFGMPO/", sponsorLogo: "", sponsorURL: "")
let AMRoutine10 = Tip(header: "🙆‍♀️", title: "5 minutes of mindfully moving your body", body: "Strech and bend your body with yoga poses, moving with deep, diaphragmatic breathing. \n\nOr do a light workout or take a brisk walk.", sourceName: "8 Weeks to SEALFIT", sourceURL: "https://www.amazon.com/dp/B00DFFGMPO/", sponsorLogo: "", sponsorURL: "")
let AMRoutine11 = Tip(header: "💭", title: "5 minutes of visualization to prepare your mind for winning", body: "Review your plan for the day, make any final adjustments, and then visualize yourself going through all the major, important actions planned for the day and dominating each. \n\nPicture an ideal “future version” of yourself.", sourceName: "8 Weeks to SEALFIT", sourceURL: "https://www.amazon.com/dp/B00DFFGMPO/", sponsorLogo: "", sponsorURL: "")

//3
//Tim Ferriss
let AMRoutine12 = Tip(header: "🛏", title: "Make your bed (1 minute): \n\n\"If you want to change the world, start off by making your bed.\"", body: "William H. McRaven, retired US Navy Admiral: \n\nIf you make your bed every morning, you will have accomplished the first task of the day. It will give you a small sense of pride, and it will encourage you to do another task. \n\nMaking your bed will also reinforce the fact that little things in life matter. If you can't do the little things right, you'll never be able to do the big things right.", sourceName: "The Tim Ferriss Show", sourceURL: "https://fhww.files.wordpress.com/2018/09/tim-ferriss-5-morning-rituals.pdf", sponsorLogo: "", sponsorURL: "")
let AMRoutine13 = Tip(header: "💪", title: "Do 5-10 reps of something (1 minute)", body: "5-10 reps is not a workout. The goal is to: \n• Help you wake up \n• Boost your mood \n• Reduce any negative mental chatter", sourceName: "The Tim Ferriss Show", sourceURL: "https://fhww.files.wordpress.com/2018/09/tim-ferriss-5-morning-rituals.pdf", sponsorLogo: "", sponsorURL: "")
let AMRoutine14 = Tip(header: "🧘‍♀️", title: "Meditate (10-20 minutes): \n\n90% of the high-performers interviewed by Tim Ferriss have a daily mindfulness or meditation practice", body: "Meditation lowers your stress levels and improves your emotional control. \n\nTry a free guided meditation on apps like: \n• Calm \n• Headspace", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/tim-ferriss-meditation-mindfulness-2017-11", sponsorLogo: "", sponsorURL: "")
let AMRoutine15 = Tip(header: "📝", title: "Journaling (5-10 minutes)", body: "Answer these 3 questions: \n\n• I am grateful for ___ \n\n• What would make today great? ___  \n\n• Daily affirmations: I am ___", sourceName: "The Tim Ferriss Show", sourceURL: "https://fhww.files.wordpress.com/2018/09/tim-ferriss-5-morning-rituals.pdf", sponsorLogo: "", sponsorURL: "")

//4
let AMRoutine16 = Tip(header: "", title: "How you wake up sets the tone for your day", body: "1. Hydrate immediately (not with coffee!) \n2. Get sunlight \n3. Move your body to reset your internal clock \n\nThat's 3 things to do within 20 minutes of waking-and your day will be primed for perfection." , sourceName: "Own the Day, Own Your Life", sourceURL: "https://www.amazon.com/Own-Day-Your-Life-Optimized-ebook/dp/B072HLS5QJ", sponsorLogo: "", sponsorURL: "")
let AMRoutine17 = Tip(header: "", title: "Study: People who meditated 20 minutes a day showed an average gain in IQ of 23%", body: "Researchers suggest you must meditate for a minimum of 12-15 minutes at a time to get the health benefits of it. \n\nPopular meditation apps: \n• Calm \n• Headspace", sourceName: "Inc.", sourceURL: "https://www.inc.com/melanie-curtin/want-to-raise-your-iq-by-23-percent-neuroscience-says-to-take-up-this-simple-hab.html", sponsorLogo: "", sponsorURL: "")
let AMRoutine18 = Tip(header: "", title: "Denzel Washington: I try to give myself a goal every day", body: "Dreams, without goals, are just dreams. \n\nSo have dreams, but have goals, life goals, yearly goals, monthly goals, daily goals. \n\nTo achieve these goals you must apply discipline and consistency. You have to work at it every day. You have to plan every day.", sourceName: "Fearless Motivation", sourceURL: "https://www.fearlessmotivation.com/2018/09/23/denzel-washington-speech/", sponsorLogo: "", sponsorURL: "")
let AMRoutine19 = Tip(header: "", title: "Prevent Weight Gain: Pack a lunch", body: "We're feeling a lot less indulgent when we're packing a lunch at home than when we're seeing sugary snacks and smelling burgers and fries in the cafeteria at noon.", sourceName: "Slim By Design", sourceURL: "https://www.slimbydesign.com/", sponsorLogo: "", sponsorURL: "")


//5
let AMRoutine20 = Tip(header: "", title: "I wake up every morning at 5 a.m., and the very first thing I do is hydrate and exercise", body: "\"I drink a large glass of water with Himalayan salt and lemon juice to replace the electrolytes, minerals, and vitamins I've lost overnight. I then head straight to the gym. I have around 45 minutes to work out, so I can be home before my son wakes up.\" \n\n\"My workouts are largely a combination of rowing and weights. These morning workouts are non-negotiable for me. They reduce my stress, make me feel more alert for the day, and help me get to sleep at night.\" \n\n- Matt Schiffman, VP of brand management at RSP Nutrition", sourceName: "Inc.", sourceURL: "https://www.inc.com/christina-desmarais/31-simple-daily-habits-that-separate-high-achievers-from-everyone-else.html", sponsorLogo: "", sponsorURL: "")
let AMRoutine21 = Tip(header: "✍️", title: "Benjamin Franklin, a founding father of America, stared his day with writing in his journal", body: "His morning routine included setting a plan for the rest of his day and asking himself, \"What good shall I do today?\"" , sourceName: "FastCompany", sourceURL: "https://www.fastcompany.com/3033652/the-morning-routines-of-the-most-successful-people", sponsorLogo: "", sponsorURL: "")
let AMRoutine22 = Tip(header: "", title: "Journaling improves wellbeing", body: "Practice gratitude because it's strongly associated with greater happiness and health. Thank someone, count your blessings, pray, keep a gratitude journal. \n\nStudy: People who wrote about gratitude were more optimistic and felt better about their lives.", sourceName: "Harvard Health Publishing", sourceURL: "https://www.health.harvard.edu/healthbeat/giving-thanks-can-make-you-happier", sponsorLogo: "", sponsorURL: "")
let AMRoutine23 = Tip(header: "🧘‍♀️", title: "Oprah practices sitting still for 20 minutes - twice a day", body: "The weekends can often be busier than weekdays with attempting to cram in chores, exercise, family commitments, social engagements and more into a 48-hour period. \n\nThe most successful people take daily time outs for stillness." , sourceName: "LifeHack.org", sourceURL: "https://www.lifehack.org/articles/productivity/12-weekend-habits-highly-successful-people.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//6
let AMRoutine24 = Tip(header: "🌄", title: "Apple CEO Tim Cook wakes up at 4 a.m. to exercise", body: "Cook's morning routine includes a 1-hour workout at the gym, which he says: \n\n• Helps reduce stress \n• Prepares him for the day" , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/apple-ceo-tim-cooks-daily-routine-2018-11", sponsorLogo: "", sponsorURL: "")
let AMRoutine25 = Tip(header: "🙏", title: "Gratitude journaling has a strong positive impact on psychological well-being, self-esteem, and depression", body: "Study: participants who practiced gratitude journaling experienced a 35% reduction in depressive symptoms for as long as the journaling continued. \n\n• Think of at least one thing that you are greatful for today." , sourceName: "Positive Psychology Program", sourceURL: "https://positivepsychologyprogram.com/benefits-gratitude-research-questions/m", sponsorLogo: "TBD", sponsorURL: "")
let AMRoutine26 = Tip(header: "😰", title: "Set aside 15 mindful minutes to reduce stress", body: "Spending 10 to 15 minutes each morning with some mindfulness or meditation practice. \n\nIt grounds us to an intention for how we want to show up during the day before we start worrying about what we need to get done." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/health/how-effectively-manage-stress-so-it-doesn-t-hurt-your-ncna815626", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let AMRoutine27 = Tip(header: "🧘‍♂️", title: "80%+ of the world-class performers interviewed by Tim Ferris have some form of daily meditation or mindfulness practice", body: "The goal is to cultivate a present-state awareness when it doesn't matter (sitting on the couch for 10 minutes) so that you can be nonreactive and focus better later when it does matter (time-sensitive project at work, conversation with a loved one, etc.)." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/quora/the-most-successful-peopl_b_13607676.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")


//7
let AMRoutine28 = Tip(header: "", title: "Study: People who meditated 20 minutes a day showed an average gain in IQ of 23%", body: "Researchers suggest you must meditate for a minimum of 12-15 minutes at a time to get the health benefits of it. \n\nTwo popular meditation apps are Calm and Headspace.", sourceName: "Inc.", sourceURL: "https://www.inc.com/melanie-curtin/want-to-raise-your-iq-by-23-percent-neuroscience-says-to-take-up-this-simple-hab.html", sponsorLogo: "", sponsorURL: "")
let AMRoutine29 = Tip(header: "📓", title: "If you want to become the voice of your generation, write a journal entry every day and then gift it to your local library at the end of your life", body: "David McCullough, the Pulitzer Prize-winning author, said: \n\nA journal is one of the most precious gifts you can give to those you leave behind.", sourceName: "Greg McKeown, author of Essentialism: The Disciplined Pursuit of Less", sourceURL: "https://gregmckeown.com/blog/one-thing-productive-people-reaching-phones/", sponsorLogo: "", sponsorURL: "")

//8



//WEEK 1
let AMRoutineTipArray0 = [AMRoutine0, AMRoutine1, AMRoutine2, AMRoutine3]
let AMRoutineTipArray1 = [AMRoutine4, AMRoutine5, AMRoutine6, AMRoutine7]
let AMRoutineTipArray2 = [AMRoutine8, AMRoutine9, AMRoutine10, AMRoutine11]
let AMRoutineTipArray3 = [AMRoutine12, AMRoutine13, AMRoutine14, AMRoutine15]
let AMRoutineTipArray4 = [AMRoutine16, AMRoutine17, AMRoutine18, AMRoutine19]
let AMRoutineTipArray5 = [AMRoutine20, AMRoutine21, AMRoutine22, AMRoutine23]
let AMRoutineTipArray6 = [AMRoutine24, AMRoutine25, AMRoutine26, AMRoutine27]
//WEEK 2
let AMRoutineTipArray7 = [AMRoutine28, AMRoutine29, AMRoutine16, AMRoutine19]
let AMRoutineTipArray8 = [AMRoutine0, AMRoutine1, AMRoutine2, AMRoutine3]
let AMRoutineTipArray9 = [AMRoutine4, AMRoutine5, AMRoutine6, AMRoutine7]
let AMRoutineTipArray10 = [AMRoutine8, AMRoutine9, AMRoutine10, AMRoutine11]
let AMRoutineTipArray11 = [AMRoutine12, AMRoutine13, AMRoutine14, AMRoutine15]
let AMRoutineTipArray12 = [AMRoutine16, AMRoutine17, AMRoutine18, AMRoutine19]
let AMRoutineTipArray13 = [AMRoutine20, AMRoutine21, AMRoutine22, AMRoutine23]

//WEEK 1
let AMRoutineTopic0 = Topic(title: AMRoutineTitle, icon: AMRoutineIcon, tip: AMRoutineTipArray0)
let AMRoutineTopic1 = Topic(title: AMRoutineTitle, icon: AMRoutineIcon, tip: AMRoutineTipArray1)
let AMRoutineTopic2 = Topic(title: AMRoutineTitle, icon: AMRoutineIcon, tip: AMRoutineTipArray2)
let AMRoutineTopic3 = Topic(title: AMRoutineTitle, icon: AMRoutineIcon, tip: AMRoutineTipArray3)
let AMRoutineTopic4 = Topic(title: AMRoutineTitle, icon: AMRoutineIcon, tip: AMRoutineTipArray4)
let AMRoutineTopic5 = Topic(title: AMRoutineTitle, icon: AMRoutineIcon, tip: AMRoutineTipArray5)
let AMRoutineTopic6 = Topic(title: AMRoutineTitle, icon: AMRoutineIcon, tip: AMRoutineTipArray6)
//WEEK 2
let AMRoutineTopic7 = Topic(title: AMRoutineTitle, icon: AMRoutineIcon, tip: AMRoutineTipArray7)
let AMRoutineTopic8 = Topic(title: AMRoutineTitle, icon: AMRoutineIcon, tip: AMRoutineTipArray8)
let AMRoutineTopic9 = Topic(title: AMRoutineTitle, icon: AMRoutineIcon, tip: AMRoutineTipArray9)
let AMRoutineTopic10 = Topic(title: AMRoutineTitle, icon: AMRoutineIcon, tip: AMRoutineTipArray10)
let AMRoutineTopic11 = Topic(title: AMRoutineTitle, icon: AMRoutineIcon, tip: AMRoutineTipArray11)
let AMRoutineTopic12 = Topic(title: AMRoutineTitle, icon: AMRoutineIcon, tip: AMRoutineTipArray12)
let AMRoutineTopic13 = Topic(title: AMRoutineTitle, icon: AMRoutineIcon, tip: AMRoutineTipArray13)



// MARK: - Getting Ready AM

let AMGetReadyTitle = "Getting \nReady"
let AMGetReadyIcon = Constants.Icon.gettingReady

//0
let getReadyAM0 = Tip(header: "🚰", title: "Drink a glass of water to rehydrate", body: "Every night, your body goes through a fast while you’re asleep, leaving you dehydrated when you wake up. \n\nDrink eight ounces of water as soon as you’re up to hydrate.", sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/health/wellness/happy-morning-routine/", sponsorLogo: "", sponsorURL: "")
let getReadyAM1 = Tip(header: "🚿", title: "Showering or bathing in water that’s too hot will dry out your skin and cause it to age prematurely", body: "Warm water is much better. Apply moisturiser while your skin is still damp – it’ll be absorbed more easily." , sourceName: "Health24", sourceURL: "https://www.health24.com/Medical/Flu/Health-tips/45-best-health-tips-ever-20120721", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let getReadyAM2 = Tip(header: "👔", title: "The colors of our clothes do affect our moods and productivity", body: "Wear these colors: \n• Blue = Stability \n• Red = Passion \n• Yellow = Happiness \n• Orange = Energy \n• Green = Success \n• Purple = Luxury \n• Black = Power \n• White = Cleanliness \n\nAvoid this color: \n• Grey = Quiet", sourceName: "Science of People", sourceURL: "https://www.scienceofpeople.com/color-psychology/", sponsorLogo: "", sponsorURL: "")
let getReadyAM3 = Tip(header: "👅", title: "Avoid morning breath: Brush your tongue", body: "More than 300 types of bacteria accumulate in your mouth while you sleep, and a speedy tooth-brushing job isn’t going to eliminate your morning breath fully. \n\nTake an extra minute to brush your tongue to enjoy a fresher feeling.", sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/health/wellness/happy-morning-routine/", sponsorLogo: "", sponsorURL: "")

//1
let getReadyAM4 = Tip(header: "👋", title: "Say goodbye to everyone before you leave home", body: "Before you head out the door, kiss everyone you love in your house. \n\nPhysically connecting with your loved ones will frame your day with positivity, along with reducing stress. \n\nIf you live with roommates, then wish them a great day.", sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/health/wellness/happy-morning-routine/", sponsorLogo: "", sponsorURL: "")
let getReadyAM5 = Tip(header: "👖", title: "Study: Avoid wearing jeans and baggy clothes because they are associated with being in a depressed mood. DO: Put on clothes that you associate with happiness, even when feeling low", body: "Women were asked what they wore when feeling depressed. The most common answers were: \n• Jeans \n• Baggy top \n\nPeople who are depressed often lose interest in how they look and don't wish to stand out, so the correlation between depression and wearing jeans is understandable. \n\nWomen also revealed they would be 10X more likely to put on a favorite dress when happy (62%) than when depressed (6%). \n\nThe study found that 'happy' clothes - ones that made women feel good - were well-cut, figure-enhancing, and made from bright and beautiful fabrics.", sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2012/03/120308062537.htm", sponsorLogo: "", sponsorURL: "")
let getReadyAM6 = Tip(header: "😁", title: "Feel immediately happier by smiling in the mirror", body: "Seeing your own smile reduces stress and ‘tricks’ your brain into feeling happy even if you’re not feeling it.", sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/health/wellness/how-to-be-happy/", sponsorLogo: "", sponsorURL: "")
let getReadyAM7 = Tip(header: "☀️", title: "Wear sunscreen every day (not just in the summer and not just on sunny days)", body: "Ultraviolet rays that are the cause of sun damage, wrinkles, and skin cancer are always present. They are independent of cold or hot weather and are not blocked by clouds. \n\nWear broad-spectrum sunscreen shield against UVA and UVB rays. A minimum of SPF 15 or 30 is recommended for everyday wear. When in the sun, it’s important to reapply sunscreen to exposed areas every 2 hours.", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/katiechang/2017/05/24/why-you-need-to-wear-sunscreen-every-day-not-just-in-the-summer/#6e92a9e87c06", sponsorLogo: "", sponsorURL: "")

//2
let getReadyAM8 = Tip(header: "📰", title: "Don't consume negative news in the morning because it makes you feel unhappy throughout the day. Instead, listen to uplifting, positive news (or audio) in morning", body: "Study: People who watched 3 minutes of negative news in the morning were 27% more likely to report their day as unhappy 6-8 hours later compared to the people who watched 3 minutes of solutions-focused news in the morning. \n\nThe solution-focused newsgroup watched stories of resilience to build the belief that our behavior matters.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2015/09/consuming-negative-news-can-make-you-less-effective-at-work", sponsorLogo: "", sponsorURL: "")
let getReadyAM9 = Tip(header: "👕", title: "Free up your brainpower: Wear the same type of clothes each day", body: "Steve Jobs, Mark Zuckerberg, and Barack Obama have all applied this idea to their lives. Wearing the same thing each day frees up the brainpower you would have put into picking out an outfit to make other, more important decisions." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/barack-obama-mark-zuckerberg-wear-the-same-outfit-2015-4", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let getReadyAM10 = Tip(header: "👔", title: "Don't wear grey clothes to work", body: "Colors do affect our moods and productivity. Grey inspires people to be passive, uninvolved and have a lack of energy. \n\nIf you like wearing grey, pairing it with a brighter color will help offset the effect.", sourceName: "Science of People", sourceURL: "", sponsorLogo: "", sponsorURL: "")
let getReadyAM11 = Tip(header: "👖", title: "Reduce belly fat: Dress casually to work", body: "Researchers found that people who wore denim to work took almost 500 more steps (about a quarter-mile) throughout the day than they did on days when they wore more formal attire. Over time, those additional step can help you maintain your lean physique.", sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/things-making-you-fatter/", sponsorLogo: "", sponsorURL: "")

//3
let getReadyAM12 = Tip(header: "", title: "Opening your shades in the morning helps with weight loss", body: "Study: People who get direct exposure to sunlight in the mornings between 8 am and noon reduce their risk of weight gain—regardless of how much they eat. \n\nResearchers theorize that the morning sun helps to synchronize metabolism so we burn fat more efficiently.", sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/weight-loss-lifestyle/", sponsorLogo: "", sponsorURL: "")
let getReadyAM13 = Tip(header: "", title: "The most attractive physical features fall under ‘self-care’—things like good grooming, clean hair, nice fitting and quality clothing, good posture, and healthy weight", body: "These self-care features are attractive because they indicate how we are managing our health and well-being, which demonstrates our potential value as a partner and mate.", sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/advice/relationships/how-to-be-more-attractive/", sponsorLogo: "", sponsorURL: "")
let getReadyAM14 = Tip(header: "", title: "Drinking water promotes shiny, smooth, and healthy hair", body: "Water makes up almost ¼ of the weight of a hair strand. Dehydration can cause brittle hair and thin hair strands.", sourceName: "LifeHack", sourceURL: "https://www.lifehack.org/449117/when-you-drink-water-on-an-empty-stomach-after-waking-up-these-8-amazing-things-will-happen", sponsorLogo: "", sponsorURL: "")
let getReadyAM15 = Tip(header: "", title: "Anti-Aging Tip: Rain or shine, in every season, wearing sunscreen should be an automatic part of your daily routine", body: "\n• Wear 30+ SPF sunscreen that says \"broad-spectrum\" on the label. \n• Don’t forget your neck, hands, and arms. \n• Reapply it every 1-3 hours, depending on the amount of sweating or direct sun exposure you get.", sourceName: "WebMD", sourceURL: "https://www.webmd.com/beauty/features/wrinkles-skin#1", sponsorLogo: "", sponsorURL: "")

//4
let getReadyAM16 = Tip(header: "", title: "Increase Confidence: Dress for success", body: "One study divided men into three groups, one dressed in suits, another in sweatpants and the other in casual attire, and then asked them to roleplay a negotiation scene. \n\nIn the end, the men dressed in suits showed higher levels of dominance, job performance and confidence, resulting in better negotiation deals.", sourceName: "Entrepreneur", sourceURL: "https://www.entrepreneur.com/slideshow/317242", sponsorLogo: "", sponsorURL: "")
let getReadyAM17 = Tip(header: "", title: "Wear black. Study: The color black makes people appear more attractive, intelligent and confident", body: "Overall the color black was voted as the most attractive, compared to every other color. \n\n66% of women thought black was the most attractive color on a man, and 46% of men thought that about women.", sourceName: "Entrepreneur", sourceURL: "https://www.entrepreneur.com/slideshow/317242", sponsorLogo: "", sponsorURL: "")

//WEEK 1
let getReadyAMTipArray0 = [getReadyAM0, getReadyAM1, getReadyAM2, getReadyAM3]
let getReadyAMTipArray1 = [getReadyAM4, getReadyAM5, getReadyAM6, getReadyAM7]
let getReadyAMTipArray2 = [getReadyAM8, getReadyAM9, getReadyAM10, getReadyAM11]
let getReadyAMTipArray3 = [getReadyAM12, getReadyAM13, getReadyAM14, getReadyAM15]
let getReadyAMTipArray4 = [getReadyAM16, getReadyAM17, getReadyAM2, getReadyAM3]
let getReadyAMTipArray5 = [getReadyAM8, getReadyAM9, getReadyAM10, getReadyAM11]
let getReadyAMTipArray6 = [getReadyAM12, getReadyAM13, getReadyAM14, getReadyAM15]

//WEEK 1
let getReadyAMTopic0 = Topic(title: AMGetReadyTitle, icon: AMGetReadyIcon, tip: getReadyAMTipArray0)
let getReadyAMTopic1 = Topic(title: AMGetReadyTitle, icon: AMGetReadyIcon, tip: getReadyAMTipArray1)
let getReadyAMTopic2 = Topic(title: AMGetReadyTitle, icon: AMGetReadyIcon, tip: getReadyAMTipArray2)
let getReadyAMTopic3 = Topic(title: AMGetReadyTitle, icon: AMGetReadyIcon, tip: getReadyAMTipArray3)
let getReadyAMTopic4 = Topic(title: AMGetReadyTitle, icon: AMGetReadyIcon, tip: getReadyAMTipArray4)
let getReadyAMTopic5 = Topic(title: AMGetReadyTitle, icon: AMGetReadyIcon, tip: getReadyAMTipArray5)
let getReadyAMTopic6 = Topic(title: AMGetReadyTitle, icon: AMGetReadyIcon, tip: getReadyAMTipArray6)


// MARK: - Going Out, PM

let goingOutTitle = "Going \nOut"
let goingOutIcon = Constants.Icon.goingOut

//0
let goingOutTip1 = Tip(header: "📱", title: "Cell phone - make sure it's fully charged before you leave home - and bring a backup battery just in case", body: "Before travelling, always be sure that your phone is well charged so that you can easily contact family, friends, or 911 in case of an emergency." , sourceName: "Elite Daily", sourceURL: "https://www.elitedaily.com/women/going-out-safety-tips/1195263", sponsorLogo: "", sponsorURL: "")
let goingOutTip2 = Tip(header: "👗", title: "Clothing - dress for style and safety", body: "Try to wear reflective or bright clothing to not only make yourself more visible to drivers but to also help someone spot you faster in case of an assault." , sourceName: "Protection One, a division of ADT", sourceURL: "https://www.protection1.com/campus-safety/night-safety-tips/", sponsorLogo: "", sponsorURL: "")
let goingOutTip3 = Tip(header: "👫", title: "Be Prepared - Let someone know your travel plans", body: "Always let someone know where you are going, your expected travel time, and how long you plan on being in that location." , sourceName: "Protection One, a division of ADT", sourceURL: "https://www.protection1.com/campus-safety/night-safety-tips/", sponsorLogo: "", sponsorURL: "")
let goingOutTip4 = Tip(header: "🔦", title: "Be Prepared - Carry pepper spray and a small flashlight", body: "Invest in pepper spray and carry it with you at all times. Also add a small flashlight to your keychain to use in case of an emergency. While they may not be the most stylish key chains to have, they can definitely help keep you safe." , sourceName: "Protection One, a division of ADT", sourceURL: "https://www.protection1.com/campus-safety/night-safety-tips/", sponsorLogo: "", sponsorURL: "")//female only?

//1
let goingOutTip5 = Tip(header: "👠", title: "Wearing heels? Be safe by packing roll-up flats in your night-out clutch", body: "Wearing heels compromises your safety if you ever need to run from someone or something. Wear heels at the bar, but wear roll-up flats for your commute to and from the bar." , sourceName: "Elite Daily", sourceURL: "https://www.elitedaily.com/women/going-out-safety-tips/1195263", sponsorLogo: "", sponsorURL: "")//female only?
let goingOutTip6 = Tip(header: "👫", title: "Before you leave home, let someone know where you are going and when you expect to be back", body: "ou might also want to send them a quick text when you arrive at your destination. If they don’t receive your text, or you don’t arrive home when expected, they can check to make sure everything is OK." , sourceName: "wikiHow", sourceURL: "https://www.wikihow.com/Stay-Safe-at-Night", sponsorLogo: "", sponsorURL: "")
let goingOutTip7 = Tip(header: "🔦", title: "Before you leave home, carry a whistle and a small flashlight", body: "A whistle is often the easiest way to scare off troublemakers. Keep a small flashlight on your keychain to provide light in dark areas and give you more confidence. Or use the built-in light on your phone." , sourceName: "wikiHow", sourceURL: "https://www.wikihow.com/Stay-Safe-at-Night", sponsorLogo: "", sponsorURL: "")
let goingOutTip8 = Tip(header: "🚘", title: "Safety tip: Park in well-lit areas", body: "If it is still light when you park, visualize what the area will look like in the dark when you return. Look for overhead lights and park there. Always take note of where you park so that you can easily find your car." , sourceName: "wikiHow", sourceURL: "https://www.wikihow.com/Stay-Safe-at-Night", sponsorLogo: "", sponsorURL: "")

//2
let goingOutTip9 = Tip(header: "🔴", title: "Wearing the color red can actually make you feel more attractive", body: "In one experiment, a group of individuals who wore red were rated as more attractive by another group of individuals — despite the fact that the clothing of the individuals were not visible to the group do the rating." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/business/can-wearing-work-uniform-help-you-get-ahead-ncna788136?cid=eml_better_20180716", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let goingOutTip10 = Tip(header: "🍽", title: "The best foods to eat before going out: protein, healthy fats, fruits, and vegetables", body: "Meals with protein and healthy fat are even more effective at slowing alcohol absorption. \n\nFruits and vegetables provide antioxidants and vitamins you need to stay healthy while providing a large dose of water as well. \n\nEat: salmon, avocado, nuts, cucumbers, celery, and watermelon \n\nDon't eat: chocolate, tomatoes, and spices \n\nDon't drink: caffeine" , sourceName: "Health.com", sourceURL: "https://www.health.com/nutrition/what-to-eat-before-drinking?", sponsorLogo: "", sponsorURL: "")
let goingOutTip11 = Tip(header: "🚘", title: "Stay safe when parking in a parking lot tonight", body: "Don’t just pull into the first available spot you see. Choose to park in a spot that’s well lit, highly visible (where there are no structures such as dumpsters hiding you from view) and that has a clear path to the exit. When leaving and returning to your car, be alert and walk with keys in hand." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.ca/2012/07/16/street-smart-safety_n_1669136.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let goingOutTip12 = Tip(header: "🚶‍♂️", title: "Walk in well-lit, highly visible areas", body: "Even if it takes you longer, stay on a well-lit route rather than taking shortcuts down dark roads or paths. Stick to streets populated with houses and shops rather than empty lots or vacant stores." , sourceName: "wikiHow", sourceURL: "https://www.wikihow.com/Stay-Safe-at-Night", sponsorLogo: "", sponsorURL: "")

//3
let goingOutTip13 = Tip(header: "", title: "Improve your appearance: Drink a glass of water", body: "Dehydration will make your skin look and feel dryer because when you're dehydrated, your body takes moisture from your skin to hydrate your organs. \n\nThis ends up making your wrinkles look deeper — and it can even make your eyes look sunken in." , sourceName: "Bustle", sourceURL: "https://www.bustle.com/articles/121825-5-ways-drinking-enough-water-changes-your-body", sponsorLogo: "", sponsorURL: "")
let goingOutTip14 = Tip(header: "", title: "Increase Confidence: Dress for success", body: "One study divided men into three groups, one dressed in suits, another in sweatpants and the other in casual attire, and then asked them to roleplay a negotiation scene. \n\nIn the end, the men dressed in suits showed higher levels of dominance, confidence and job performance, resulting in better negotiation deals.", sourceName: "Entrepreneur", sourceURL: "https://www.entrepreneur.com/slideshow/317242", sponsorLogo: "", sponsorURL: "")
let goingOutTip15 = Tip(header: "", title: "Wear red. Red represents passion, power and sensuality", body: "Study: Wearing red can make women more attractive to men. \n\nMen were more likely in the study to ask out a woman wearing a red shirt than one in green." , sourceName: "Insider", sourceURL: "https://www.insider.com/ways-to-look-feel-more-attractive-confident-2017-8#rock-some-red-10", sponsorLogo: "", sponsorURL: "")
let goingOutTip16 = Tip(header: "", title: "Be more attractive: Wear perfume or cologne", body: "Study: Men who used cologne showed an increase in self-confidence and were rated as more attractive by a female panel.", sourceName: "Entrepreneur", sourceURL: "https://www.entrepreneur.com/slideshow/317242", sponsorLogo: "", sponsorURL: "")

//4
let goingOutTip17 = Tip(header: "", title: "Wear black. Study: The color black makes people appear more attractive, intelligent and confident", body: "Overall the color black was voted as the most attractive, compared to every other color. \n\n66% of women thought black was the most attractive color on a man, and 46% of men thought that about women.", sourceName: "Entrepreneur", sourceURL: "https://www.entrepreneur.com/slideshow/317242", sponsorLogo: "", sponsorURL: "")
let goingOutTip18 = Tip(header: "", title: "Increase Confidence: Listen to music with heavy bass while you're getting ready", body: "Study: After listening to music with heavy bass, participants said they felt more powerful, dominant and determined.", sourceName: "Entrepreneur", sourceURL: "https://www.entrepreneur.com/slideshow/317242", sponsorLogo: "", sponsorURL: "")
let goingOutTip19 = Tip(header: "", title: "Survey: The average person exceeds their weekly entertainment budget goal by +29%", body: "On average, the weekly amount that people spend — not including bills like housing and utilities — is $340, or $143 more than the average $197 budgeted. \n\nThat extra spending equals roughly $7,400 each year of overspending. \n\nAlign your spending with your values and cut back in areas that don’t reflect them." , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2019/12/26/consumers-overspend-by-7400-a-year-here-are-weekly-trouble-spots.html", sponsorLogo: "", sponsorURL: "")



//WEEK 1
let goingOutTipArray0 = [goingOutTip1, goingOutTip2, goingOutTip3, goingOutTip4]
let goingOutTipArray1 = [goingOutTip5, goingOutTip6, goingOutTip7, goingOutTip8]
let goingOutTipArray2 = [goingOutTip9, goingOutTip10, goingOutTip11, goingOutTip12]
let goingOutTipArray3 = [goingOutTip13, goingOutTip14, goingOutTip15, goingOutTip16]
let goingOutTipArray4 = [goingOutTip17, goingOutTip18, goingOutTip19, goingOutTip12]//WIP
let goingOutTipArray5 = [goingOutTip9, goingOutTip10, goingOutTip3, goingOutTip4]
let goingOutTipArray6 = [goingOutTip5, goingOutTip6, goingOutTip7, goingOutTip8]
//WEEK 2
let goingOutTopic0 = Topic(title: goingOutTitle, icon: goingOutIcon, tip: goingOutTipArray0)
let goingOutTopic1 = Topic(title: goingOutTitle, icon: goingOutIcon, tip: goingOutTipArray1)
let goingOutTopic2 = Topic(title: goingOutTitle, icon: goingOutIcon, tip: goingOutTipArray2)
let goingOutTopic3 = Topic(title: goingOutTitle, icon: goingOutIcon, tip: goingOutTipArray3)
let goingOutTopic4 = Topic(title: goingOutTitle, icon: goingOutIcon, tip: goingOutTipArray4)
let goingOutTopic5 = Topic(title: goingOutTitle, icon: goingOutIcon, tip: goingOutTipArray5)
let goingOutTopic6 = Topic(title: goingOutTitle, icon: goingOutIcon, tip: goingOutTipArray6)

//MEN
let goingOutMenTip1 = Tip(header: "🔴", title: "Simply wearing the color red makes a man more attractive and sexually desirable to women", body: "Researchers found that women view men in red as higher in status, more likely to make money and more likely to climb the social ladder. And it's this high-status judgment that leads to the attraction." , sourceName: "University of Rochester", sourceURL: "http://www.rochester.edu/news/show.php?id=3663", sponsorLogo: "", sponsorURL: "")//Men
//WOMEN
let goingOutWomenTip12 = Tip(header: "🔴", title: "Simply wearing the color red makes a woman more attractive and sexually desirable to men", body: "Researchers found that women shown framed by or wearing red were rated significantly more attractive and sexually desirable by men than the exact same women shown with other colors. When wearing red, the woman was also more likely to be treated to a more expensive outing." , sourceName: "University of Rochester", sourceURL: "http://www.rochester.edu/news/show.php?id=3663", sponsorLogo: "", sponsorURL: "")//Women



// MARK: - Safety
let safetyTitle = "Safety"
let safetyIcon = Constants.Icon.safety

//1
let safetyTip1 = Tip(header: "🚶‍♂️", title: "Carry yourself with confidence. Attackers target those that appear weak", body: "Plan your travel route ahead of time before you leave. \n\nBy knowing exactly where you are going you will reduce your travel time and will appear more confident which ultimately lowers your chances of becoming a crime victim." , sourceName: "Protection One, a division of ADT", sourceURL: "https://www.protection1.com/campus-safety/night-safety-tips/", sponsorLogo: "", sponsorURL: "")
let safetyTip2 = Tip(header: "👫", title: "Walking - always have someone, or a group of people you trust", body: "Criminals are less likely to attack a group than an individual. \n\nAlways walk in well-lit, highly visible areas. Stay in familiar areas and avoid shortcuts when possible." , sourceName: "Protection One, a division of ADT", sourceURL: "https://www.protection1.com/campus-safety/night-safety-tips/", sponsorLogo: "", sponsorURL: "")
let safetyTip3 = Tip(header: "🚘", title: "Cars - park in well-lit areas", body: "Look for overhead lights and park there. \n\nIt’s easy to forget to park in unsafe areas during the day, but always try to see if the area will be safe for you to return to at night. \n\nNever leave valuable items in open view." , sourceName: "wikiHow", sourceURL: "https://www.wikihow.com/Stay-Safe-at-Night", sponsorLogo: "", sponsorURL: "")
let safetyTip4 = Tip(header: "📱", title: "Cell Phones - always be aware of your surroundings and avoid using your cell phone", body: "Using your cell phone diminishes awareness, making you more vulnerable. They also attract thieves due to their popularity and valuable nature. \n\nIf you must use a cell phone, try to keep it out of sight and keep your hands as free as possible." , sourceName: "Protection One, a division of ADT", sourceURL: "https://www.protection1.com/campus-safety/night-safety-tips/", sponsorLogo: "", sponsorURL: "")

//2
let safetyTip5 = Tip(header: "🎧", title: "Avoid wearing headphones", body: "Sure, listening to music on your way to the bar may get you in the mood, but it will also keep you from hearing an incoming car — or someone approaching you from behind. \n\nIf still desire to walk with headphones, then only put in one earbud and keep the volume low enough to hear any off-putting sounds." , sourceName: "Elite Daily", sourceURL: "https://www.elitedaily.com/women/going-out-safety-tips/1195263", sponsorLogo: "", sponsorURL: "")
let safetyTip6 = Tip(header: "🚶‍♂️", title: "Always walk like you're on a mission with confidence", body: "Have good posture, walk with your feet planted firmly to the ground, and look straight ahead. \n\nThis notion can help deter possible attackers from targetting you." , sourceName: "Elite Daily", sourceURL: "https://www.elitedaily.com/women/going-out-safety-tips/1195263", sponsorLogo: "", sponsorURL: "")
let safetyTip7 = Tip(header: "🚕", title: "Uber/Lyft: Always double-check the license plate before getting in", body: "Be careful of people posing as Uber/Lyft drivers." , sourceName: "Elite Daily", sourceURL: "https://www.elitedaily.com/women/going-out-safety-tips/1195263", sponsorLogo: "", sponsorURL: "")
let safetyTip8 = Tip(header: "🔑", title: "When walking up to your home or apartment, carry your house keys in your hand", body: "Don’t stand in a doorway and fumble in your purse or pocket for your keys. \n\nHave them ready to open the door." , sourceName: "Security Today", sourceURL: "https://securitytoday.com/articles/2010/04/15/tips-street-smart.aspx?m=1", sponsorLogo: "", sponsorURL: "")

//3
let safetyTip9 = Tip(header: "🔑", title: "Carry keys in your hand", body: "When walking home or going back to your car at the end of the night, have your keys in your hand to allow quick entry into your home or car." , sourceName: "wikiHow", sourceURL: "https://www.wikihow.com/Stay-Safe-at-Night", sponsorLogo: "", sponsorURL: "")
let safetyTip10 = Tip(header: "🗺", title: "Know where you're going and project confidence as you walk", body: "If you are going somewhere in a city with which you aren't familiar, check a map, know where you are going. Looking lost increases vulnerability." , sourceName: "Security Today", sourceURL: "https://securitytoday.com/articles/2010/04/15/tips-street-smart.aspx?m=1", sponsorLogo: "", sponsorURL: "")
let safetyTip11 = Tip(header: "🚋", title: "While waiting for public transportation, keep your back against a wall", body: "This position reduces a potential attacker from being able to surprise you from behind." , sourceName: "Security Today", sourceURL: "https://securitytoday.com/articles/2010/04/15/tips-street-smart.aspx?m=1", sponsorLogo: "", sponsorURL: "")
let safetyTip12 = Tip(header: "🚶‍♂️", title: "Carry yourself with confidence", body: "Walk with your head up. \n\nNot only will it help you see what is happening around you, but it will give you an air of confidence that will prevent assailants from approaching you as a weak and easy target." , sourceName: "wikiHow", sourceURL: "https://www.wikihow.com/Stay-Safe-at-Night", sponsorLogo: "", sponsorURL: "")
//4
let safetyTip13 = Tip(header: "🚶‍♂️", title: "Avoid walking alone at night because it makes you more vulnerable", body: "If you are being followed or you see a person or group down the street who makes you feel uncomfortable: \n\n• Cross the street \n• Walk in another direction \n• Stay away from deserted blocks \n• Head for an area where people are \n• Head for the nearest open store \n• Ask other people walking if you may walk a short distance with them" , sourceName: "wikiHow", sourceURL: "https://www.wikihow.com/Stay-Safe-at-Night", sponsorLogo: "", sponsorURL: "")
let safetyTip14 = Tip(header: "🚋", title: "Public transit: Scan the area and sit near the back with a good view of the entire scene", body: "• Keep your smartphone off until you are certain there is no threat. \n\n• Each time the bus/train/whatever stops to pick up a passenger, turn off your smartphone and re-scan the area." , sourceName: "NavySEALs.com", sourceURL: "https://navyseals.com/3454/sealfit-rules-engagement-sheepdog/", sponsorLogo: "", sponsorURL: "")
let safetyTip15 = Tip(header: "👀", title: "Walk with your head upright. Make eye contact.", body: "Thieves often target victims who are not paying attention to their surroundings or who are looking down. \n\n• Minimize the amount of time you talk on your cell phone in public places. \n\n• Don't walk and text." , sourceName: "Columbia University", sourceURL: "https://publicsafety.columbia.edu/content/crime-prevention-tips", sponsorLogo: "", sponsorURL: "")
let safetyTip16 = Tip(header: "📱", title: "Keep your smartphone in your pocket, coat, or jacket, don't display when not in use, especially while using mass transit", body: "\n• Don't display electronics when not in use. \n• Use a hands free device." , sourceName: "Columbia University", sourceURL: "https://publicsafety.columbia.edu/content/crime-prevention-tips", sponsorLogo: "", sponsorURL: "")

//5
let safetyTip17 = Tip(header: "🚈", title: "Common locations where thieves target victims - public transportation", body: "By the subway turnstiles – bumping into you from behind, removing your property (cell phone, wallet, etc). \n\nIn a crowded train – removing your wallet from your backpack front compartment. \n\nGoing up or down the stairs of the subway – removing your property from your backpack front compartment." , sourceName: "Columbia University", sourceURL: "https://publicsafety.columbia.edu/content/crime-prevention-tips", sponsorLogo: "", sponsorURL: "")
let safetyTip18 = Tip(header: "🎒", title: "Always carry your wallet in your front pocket and carry your bag (purse, book bag) in front of you to avoid being a victim of a pickpocket", body: "Don't display your cash or any other inviting targets like cell phones, hand-held electronic games, or expensive jewelry and clothing." , sourceName: "Columbia University", sourceURL: "https://publicsafety.columbia.edu/content/crime-prevention-tips", sponsorLogo: "", sponsorURL: "")
let safetyTip19 = Tip(header: "🚎", title: "Public transportation: Watch who gets off your stop with you", body: "If you feel uneasy, walk directly to a place where there are other people. Move quickly toward an open store or restaurant or well-lighted area. Don't be afraid to yell for help." , sourceName: "Columbia University", sourceURL: "https://publicsafety.columbia.edu/content/crime-prevention-tips", sponsorLogo: "", sponsorURL: "")
let safetyTip20 = Tip(header: "🚉", title: "When you are on the subway platform, the safest place to wait is behind the yellow line, away from the platform edge", body: "When you are getting on a subway late at night, it's recommended to stay in the first or middle subway car where the conductor or the motor person has a radio to alert the police if necessary. Remain alert and avoid falling asleep; thefts from sleeping passengers make up one-quarter of all major subway crime." , sourceName: "New York City Police Department", sourceURL: "https://www1.nyc.gov/site/nypd/bureaus/transit-housing/subway-crime-prevention-tips.page", sponsorLogo: "", sponsorURL: "")
//6
let safetyTip21 = Tip(header: "💍", title: "Hide expensive items and blend in", body: "Avoid showing off flashy jewelry, large purses, expensive clothing and attention-grabbing behavior that can make you a target." , sourceName: "wikiHow", sourceURL: "https://www.wikihow.com/Stay-Safe-at-Night", sponsorLogo: "", sponsorURL: "")
let safetyTip22 = Tip(header: "👫", title: "Travel with a friend or in a group", body: "There truly is safety in numbers, as criminals are less likely to attack a group than an individual. \n\nMany cities and universities provide free shuttles around town to popular restaurants and clubs." , sourceName: "wikiHow", sourceURL: "https://www.wikihow.com/Stay-Safe-at-Night", sponsorLogo: "", sponsorURL: "")
let safetyTip23 = Tip(header: "🎧", title: "Avoid wearing earphones and any article of clothing, such as a hoodie, that might interfere with your hearing or vision", body: "Look around while you walk and pay attention to what is going on around you. It will give you an early warning if someone is looking to make trouble." , sourceName: "wikiHow", sourceURL: "https://www.wikihow.com/Stay-Safe-at-Night", sponsorLogo: "", sponsorURL: "")
let safetyTip24 = Tip(header: "🗣", title: "If confronted, yell for help to attract attention", body: "Telling people what to do is more effective than yelling something like, “Fire.” Instead, yell, “I’m being attacked – call 911!” \n\nOr yell directly at the attacker: “Get your hand off me!” or even just “Stop!”" , sourceName: "wikiHow", sourceURL: "https://www.wikihow.com/Stay-Safe-at-Night", sponsorLogo: "", sponsorURL: "")


let safetyTipArray0 = [safetyTip1, safetyTip2, safetyTip3, safetyTip4]
let safetyTipArray1 = [safetyTip5, safetyTip6, safetyTip7, safetyTip8]
let safetyTipArray2 = [safetyTip9, safetyTip10, safetyTip11, safetyTip12]
let safetyTipArray3 = [safetyTip13, safetyTip14, safetyTip15, safetyTip16]
let safetyTipArray4 = [safetyTip17, safetyTip18, safetyTip19, safetyTip20]
let safetyTipArray5 = [safetyTip21, safetyTip22, safetyTip23, safetyTip24]
let safetyTipArray6 = [safetyTip16, safetyTip15, safetyTip14, safetyTip13]

let safetyTopic0 = Topic(title: safetyTitle, icon: safetyIcon, tip: safetyTipArray0)
let safetyTopic1 = Topic(title: safetyTitle, icon: safetyIcon, tip: safetyTipArray1)
let safetyTopic2 = Topic(title: safetyTitle, icon: safetyIcon, tip: safetyTipArray2)
let safetyTopic3 = Topic(title: safetyTitle, icon: safetyIcon, tip: safetyTipArray3)
let safetyTopic4 = Topic(title: safetyTitle, icon: safetyIcon, tip: safetyTipArray4)
let safetyTopic5 = Topic(title: safetyTitle, icon: safetyIcon, tip: safetyTipArray5)
let safetyTopic6 = Topic(title: safetyTitle, icon: safetyIcon, tip: safetyTipArray6)


// MARK: - Bar

let barTitle = "Bar"
let barIcon = Constants.Icon.bar

//0
let barTip1 = Tip(header: "😀", title: "First Impressions: People know within one second whether someone’s physically attractive or not", body: "Both males and females find people with available body language the most attractive. Available body language is smiling, uncrossed arms, uncrossed legs and upward gazing (not looking down at shoes or phones).", sourceName: "Science of People", sourceURL: "https://www.scienceofpeople.com/body-language-attraction/", sponsorLogo: "", sponsorURL: "")
let barTip2 = Tip(header: "💤", title: "Alcohol will help you fall asleep, but it will reduce the quality of your sleep", body: "Drinking within 3 hours of bedtime helps you fall asleep — alcohol is a depressant. But once the alcohol is metabolized hours later, you’re more likely to wake up or start tossing and turning." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/2014/12/14/bedtime-rituals_n_6309564.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let barTip3 = Tip(header: "🍸", title: "Drinking once a day or 5 to 10 alcoholic drinks a week is likely to shorten your life by up to 6 months", body: "While non-fatal heart attacks are less likely in people who drink alcohol, scientists say this benefit is swamped by the increase of other forms of heart disease including fatal heart attacks and stroke. \n\nIf you already drink, drinking less may help you live longer and lower your risk of several cardiovascular conditions." , sourceName: "BBC News", sourceURL: "https://www.bbc.com/news/health-43738644", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let barTip4 = Tip(header: "☕️", title: "After a night of drinking, drink coffee in the morning because it can protect your liver from damage caused by too much alcohol", body: "Studies show that drinking 2 to 3 cups a day can protect your liver from damage caused by too much alcohol or an unhealthy diet. Some research suggests it may lower your risk of liver cancer." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/hepatitis/ss/slideshow-best-and-worst-foods-for-your-liver?ecd=wnl_spr_120616_REMAIL&ctr=wnl-spr-120616-REMAIL_nsl-ld-stry_1&mb=aT%2fNo%2fMfdXIeXdniBtn11BXFE73IOX1chB5LGA9kRyM%3d", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//1
let barTip5 = Tip(header: "🍋", title: "Avoid lemon and lime slices and other garnishes added to your drink", body: "A study of 76 lemons at 21 different restaurants in The Journal of Environmental Health found that 70% of them contained microbial growth. Of the positive culture results, 13% were E. coli.", sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/menu-items-never-order/", sponsorLogo: "", sponsorURL: "")
let barTip6 = Tip(header: "🍹", title: "The sweet-and-fancy drinks have more calories and increases your food cravings", body: "If you're going to drink, have something straight up and simple like wine or beer." , sourceName: "CNN", sourceURL: "https://www.cnn.com/2013/04/03/health/wine-waistline/index.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let barTip7 = Tip(header: "🍻", title: "Drinking 3-4 drinks on one night is worse for your body than drinking one drink a day", body: "In addition, to the hundreds of extra calories from alcohol, all those drinks increase your blood sugar. This makes you hungrier and because you're tipsy, you have less self-control when it comes overeating unhealthy foods." , sourceName: "CNN", sourceURL: "https://www.cnn.com/2013/04/03/health/wine-waistline/index.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let barTip8 = Tip(header: "😂", title: "When trying to talk with someone you don't know, start with playful banter", body: "It helps you to get the other person to have fun, laugh, and relax. Compare this to more serious conversation starters like \"What do you do for a living\" and \"Where do you live\" which can create stress by demanding personal information from a total stranger.", sourceName: "The Art of Charm", sourceURL: "https://theartofcharm.com/building-a-connection/what-to-say-to-a-girl-you-meet-at-a-bar/", sponsorLogo: "", sponsorURL: "")

//2
let barTip9 = Tip(header: "👠", title: "Body language cues for attraction: Their feet are pointed at you", body: "When the feet are pointed directly toward another person, this is a sign of attraction, or at the very least, genuine interest. \n\nIf, on the other hand, the feet are pointed away, or toward the exit, that is a sign that attraction probably is not there.", sourceName: "Science of People", sourceURL: "https://www.scienceofpeople.com/body-language-attraction/", sponsorLogo: "", sponsorURL: "")
let barTip10 = Tip(header: "🍺", title: "Study: No amount of alcohol is good for your overall health", body: "The chemical in beer, wine, and hard liquor is associated with nearly 1 in 10 deaths in people ages 15 to 49 around the world. \n\nAny health benefits of drinking are outweighed by the combined health risks.", sourceName: "Bloomberg", sourceURL: "https://www.bloomberg.com/news/articles/2018-08-23/no-amount-of-alcohol-use-is-safe-analysis-of-studies-finds", sponsorLogo: "", sponsorURL: "")
let barTip11 = Tip(header: "🍸", title: "Limit alcohol and soda to avoid belly fat because they offer no nutrition", body: "Excessive alcohol will cause the liver to stop metabolizing fat and carbohydrates in order to get the alcohol metabolized first. \n\nThis leads to the storage of more fat in your body (and your belly).", sourceName: "POPSUGAR", sourceURL: "https://www.popsugar.com/fitness/photo-gallery/45405356/image/45407022/You-Drink-Your-Calories", sponsorLogo: "", sponsorURL: "")
let barTip12 = Tip(header: "🛌", title: "Reduce your nighttime heartburn risk: Avoid drinking alcohol 2-3 hours before bed", body: "Lying flat immediately after drinking can increase the risk that you’ll experience acid reflux at night. \n\nThis is because alcohol can relax the lower part of the esophagus, making it easier for your stomach acid to back up.", sourceName: "Healthline", sourceURL: "https://www.healthline.com/health/gerd/alcohol#diet", sponsorLogo: "", sponsorURL: "")

//3
let barTip13 = Tip(header: "👋", title: "Safety: Holding your drink deters and makes it harder for someone to drop anything in it", body: "If you have to go to the bathroom, leave your drink and order another later, or ask a trusted friend to hold it. \n\nDon't leave your drink at the bar and come back for it (even if you asked the bartender to keep an eye on it).", sourceName: "Elite Daily", sourceURL: "https://www.elitedaily.com/women/going-out-safety-tips/1195263", sponsorLogo: "", sponsorURL: "")
let barTip14 = Tip(header: "🚨", title: "Alcohol reduces glucose throughout your brain and body, lowering your self-control", body: "Low levels of glucose: \n• reduces your ability to regulate emotions \n• increases aggression and impulsivity \n\nPoor self-control is one of the leading causes of criminal behavior.", sourceName: "Society for Personality and Social Psychology", sourceURL: "https://journals.sagepub.com/doi/10.1177/1088868307303030", sponsorLogo: "", sponsorURL: "")
let barTip15 = Tip(header: "🧠", title: "Reduce your chances of getting a migraine by drinking beer in a bottle instead of on tap", body: "Beer on tap has about 25 times the migraine-inducing tyramine as beer in bottles. \n\nOr order a bourbon. It doesn’t have any of the stuff." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/migraines-headaches/ss/slideshow-food-migraines?ecd=wnl_din_121716&ctr=wnl-din-121716_nsl-ld-stry_1&mb=aT%2fNo%2fMfdXIeXdniBtn11BXFE73IOX1chB5LGA9kRyM%3d", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let barTip16 = Tip(header: "🍺", title: "Beer has more calories than wine and hard alcohol", body: "A standard 12-ounce beer contains about 150 calories; a light beer, about 110 calories. \n\nFor comparison, a glass of wine or a shot of hard liquor, with the same amount of alcohol, contain about 100 calories.", sourceName: "Harvard Health Publishing", sourceURL: "https://www.health.harvard.edu/healthbeat/giving-thanks-can-make-you-happier", sponsorLogo: "", sponsorURL: "")

//4
let barTip17 = Tip(header: "🍸", title: "Never let a stranger or someone you are not entirely familiar with make your drink", body: "No matter how friendly someone may seem when offering you a drink, it’s just not worth the risk", sourceName: "Her Campus", sourceURL: "https://www.hercampus.com/school/wisconsin/7-helpful-tips-going-out", sponsorLogo: "", sponsorURL: "")
let barTip18 = Tip(header: "🍺", title: "Be mindful of where you place your drinks", body: "If you leave your drink in a busy area for even a second, you should get a new one. You never know if anyone will drop something in your drink when you’re not looking.", sourceName: "Her Campus", sourceURL: "https://www.hercampus.com/school/wisconsin/7-helpful-tips-going-out", sponsorLogo: "", sponsorURL: "")
let barTip19 = Tip(header: "😐", title: "Drinking too much may cause depression", body: "A study of 1,055 participants found that people who routinely drink too much become more depressed, showing that the alcohol is causing the mood shift. Participants who had alcohol problems were 1.9 times more likely to also suffer from major depression. Alcohol may affect genetic processes that increase the risk of depression.", sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2009/03/090302183002.htm", sponsorLogo: "", sponsorURL: "")
let barTip20 = Tip(header: "🍺", title: "The U.S. government defines \"moderate drinking\" as one drink for women per day and two for men", body: "Drinking too much alcohol can add to your waistline and increase the risk of several cancers (i.e., breast, colon, esophagus).", sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2019/04/09/harvard-study-says-these-5-habits-may-help-you-live-10-years-longer.html", sponsorLogo: "", sponsorURL: "")

//5
let barTip21 = Tip(header: "", title: "Live longer: Drink wine instead of beer or spirits", body: "A 29-year study showed that men who preferred wine were 34% less likely to die early than those who preferred beer or spirits.", sourceName: "Healthline", sourceURL: "https://www.healthline.com/nutrition/13-habits-linked-to-a-long-life", sponsorLogo: "", sponsorURL: "")
let barTip22 = Tip(header: "", title: "Live longer: Drinking 1-2 glasses of alcohol a day is the most you need to take advantage of its health benefits", body: "Studies show that people who have 1 serving of beer, wine, or spirits per day may accrue some health benefits. Red wine offers an extra bonus in that it contains artery-scrubbing polyphenols that may help fight arteriosclerosis. \n\nBeware, however, of the toxic effects of alcohol on the liver and brain - along with increased risk of accidents - when daily consumption exceeds 1-2 glasses. In that case, the risks of drinking can outweigh any health benefits.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")
let barTip23 = Tip(header: "", title: "Alcohol increases your risk of acid reflux", body: "Because alcohol has been shown to slow the rate at which your food flows through your digestive system. This means your food is not being broken down as rapidly as it should, and it sits in your stomach, which increases your risk of acid reflux. ", sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/foods-and-acid-reflux/", sponsorLogo: "", sponsorURL: "")
let barTip24 = Tip(header: "", title: "Anti-Aging Tip: Avoid too much alcohol", body: "Having a drink with a friend or savoring a glass of wine with dinner is fine. But drinking too much alcohol dehydrates your skin and dilates your blood vessels. \n\nIf you drink too much, you could develop broken blood vessels and rosacea, a skin disorder marked by redness and tiny pimples.", sourceName: "WebMD", sourceURL: "https://www.webmd.com/beauty/features/wrinkles-skin#1", sponsorLogo: "", sponsorURL: "")
//6
let barTip25 = Tip(header: "", title: "Avoid pickup lines. Focus on making the other person laugh. Study: The more times two strangers laughed together, the higher level of attraction they reported.", body: "Study: When two strangers meet, the more times a man tries to be funny and the more a woman laughs at those attempts, the more likely it is for the woman to be interested in dating. \n\nIf you meet someone who you can laugh with, it might mean your future relationship is going to be fun and filled with good cheer.", sourceName: "The University of Kansas", sourceURL: "https://news.ku.edu/2015/08/27/first-comes-laughter-then-love-study-finds-out-why-humor-important-romantic-attraction", sponsorLogo: "", sponsorURL: "")



//WOMEN
let barWomenTip1 = Tip(header: "🍸", title: "Women accumulate more alcohol in their bloodstreams than men do", body: "Women have lower levels of the stomach enzyme that neutralizes alcohol before it moves into the bloodstream. Women tend to have a higher proportion of body fat, which does not absorb alcohol; this increases alcohol levels in the blood. Women also tend to weigh less than men, so drink for drink, there is more alcohol in a woman's bloodstream.", sourceName: "Harvard Medical Publishing", sourceURL: "https://www.health.harvard.edu/addiction/alcohols-effects-on-the-body", sponsorLogo: "", sponsorURL: "")
let barWomenTip2 = Tip(header: "👩", title: "Body language that men find attractive in women", body: "For a woman, keeping your hair down, tilting your head to expose pheromones and keeping hands and wrists visible to display the soft skin of the wrists are highly attractive for men.", sourceName: "Science of People", sourceURL: "https://www.scienceofpeople.com/body-language-attraction/", sponsorLogo: "", sponsorURL: "")


//MEN
let barMenTip1 = Tip(header: "🙋‍♀️", title: "Body language cues for attraction: Observe how the woman you're talking to is holding her purse", body: "If a woman is feeling uncomfortable or not attracted to someone, she either will clutch her bag tightly or place it in front of or covering her body. When a woman is attracted to a man, she literally and figuratively wants nothing to stand in the way between her and the guy. If she loosely holds her purse and it is not blocking her front, this shows she is at ease and feels more attraction. \n\n[Please note context here, if you are in a very public or potentially dangerous location, she could be gripping her purse for safety concerns, but in a casual place or on a date this can be a good indicator.]", sourceName: "Science of People", sourceURL: "https://www.scienceofpeople.com/body-language-attraction/", sponsorLogo: "", sponsorURL: "")
let barMenTip2 = Tip(header: "🚶‍♂️", title: "Body language that men find attractive in women", body: "From an evolutionary perspective, women are tuned into body language cues that signal confidence and fertility. For men, standing up straight, squaring the shoulders, planting feet slightly more than shoulder-width apart and displaying hands all are signs of fertility.", sourceName: "Science of People", sourceURL: "https://www.scienceofpeople.com/body-language-attraction/", sponsorLogo: "", sponsorURL: "")

//HANGOVER
let barHangover1 = Tip(header: "", title: "Hangover Cure: Drink a liter of water with the addition of a total of 5 grams of Himalayan salt with the first 2 hours of waking up", body: "Keep drinking water heavily until you pee at least twice.", sourceName: "Own The Day, Own Your Life", sourceURL: "https://www.amazon.com/dp/B072HLS5QJ/", sponsorLogo: "", sponsorURL: "")


let barTipArray0 = [barTip1, barTip2, barTip3, barTip4]
let barTopic0 = Topic(title: barTitle, icon: barIcon, tip: barTipArray0)

let barTipArray1 = [barTip5, barTip6, barTip7, barTip8]
let barTopic1 = Topic(title: barTitle, icon: barIcon, tip: barTipArray1)

let barTipArray2 = [barTip9, barTip10, barTip11, barTip12]
let barTopic2 = Topic(title: barTitle, icon: barIcon, tip: barTipArray2)

let barTipArray3 = [barTip13, barTip14, barTip15, barTip16]
let barTopic3 = Topic(title: barTitle, icon: barIcon, tip: barTipArray3)

let barTipArray4 = [barTip17, barTip18, barTip19, barTip20]
let barTopic4 = Topic(title: barTitle, icon: barIcon, tip: barTipArray4)

let barTipArray5 = [barTip21, barTip22, barTip23, barTip24]
let barTopic5 = Topic(title: barTitle, icon: barIcon, tip: barTipArray5)

let barTipArray6 = [barTip25, barTip16, barTip15, barTip14]
let barTopic6 = Topic(title: barTitle, icon: barIcon, tip: barTipArray6)

// MARK: - Happy Hour

let happyHourTitle = "Happy Hour"
let happyHourIcon = Constants.Icon.bar

//1
let happyHourTip1 = Tip(header: Constants.Image.yogurt, title: "Before happy hour, eat protein, fiber, and healthy fat to reduce your chances of a hangover and weight-gain", body: "Try greek yogurt with berries, almond butter with fruit, or a protein shake. These foods stabilize your blood-sugar levels and slow down the alcohol from being absorded into your bloodstream, reducing the diet-damaging effects." , sourceName: "CNN", sourceURL: "https://www.cnn.com/2013/04/03/health/wine-waistline/index.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let happyHourTip2 = Tip(header: Constants.Image.alcohol, title: "Alcohol reduces your ability to have self-control, which leads to overeating and weight gain", body: "Drinking lowers your inhibitions and sense of awareness, causing you to mindlessly eat when you have a buzz. It's harder to for your brain to read those fullness signals when you've had a few drinks." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/hepatitis/ss/slideshow-best-and-worst-foods-for-your-liver?ecd=wnl_spr_120616_REMAIL&ctr=wnl-spr-120616-REMAIL_nsl-ld-stry_1&mb=aT%2fNo%2fMfdXIeXdniBtn11BXFE73IOX1chB5LGA9kRyM%3d", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let happyHourTip3 = Tip(header: "🍹", title: "Alcohol adds hundreds of calories to your diet and decreases fat burn in the belly", body: "Your body can't store calories from alcohol for later, the way it does with food calories. When you drink, your metabolism stops what it's doing (like, say, burning off food calories) to focus on the alcohol. The result, whatever you recently ate gets stored as fat." , sourceName: "CNN", sourceURL: "https://www.cnn.com/2013/04/03/health/wine-waistline/index.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let happyHourTip4 = Tip(header: "🍺", title: "People who drink heavily when they’re younger have a higher risk of becoming overweight or obese when they’re older because of the calories in alcohol", body: "People who were heavy drinkers (having four or more drinks on any day or eight or more drinks per week for women) had a 41% higher risk of going from a normal weight BMI to an overweight BMI when compared with people who weren’t heavy drinkers, and a 36% higher risk of going from an overweight BMI to an obese BMI by the time they hit their mid-twenties." , sourceName: "Women's Health", sourceURL: "https://www.womenshealthmag.com/weight-loss/a19918843/will-drinking-make-me-gain-weight/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//2
let happyHourTip5 = Tip(header: "💤", title: "'Happy Hour' drinks can affect sleep too", body: "Studies have found that alcohol consumed even 6 hours before bedtime can increase wakefulness during the second half of sleep, even though the alcohol consumed has already been eliminated from the body.", sourceName: "Very Well Mind", sourceURL: "https://www.verywellmind.com/alcohol-and-sleep-66571", sponsorLogo: "", sponsorURL: "")
let happyHourTip6 = Tip(header: "", title: "Anti-Aging Tip: Avoid too much alcohol", body: "Having a drink with a friend or savoring a glass of wine with dinner is fine. But drinking too much alcohol dehydrates your skin and dilates your blood vessels. \n\nIf you drink too much, you could develop broken blood vessels and rosacea, a skin disorder marked by redness and tiny pimples.", sourceName: "WebMD", sourceURL: "https://www.webmd.com/beauty/features/wrinkles-skin#1", sponsorLogo: "", sponsorURL: "")

let happyHourTipArray0 = [happyHourTip1, happyHourTip2, happyHourTip3, happyHourTip4]
let happyHourTipArray1 = [happyHourTip5, happyHourTip6, happyHourTip3, happyHourTip2]
let happyHourTipArray2 = [happyHourTip1, happyHourTip2, happyHourTip3, happyHourTip4]
let happyHourTipArray3 = [happyHourTip5, happyHourTip6, happyHourTip3, happyHourTip2]
let happyHourTipArray4 = [happyHourTip1, happyHourTip2, happyHourTip3, happyHourTip4]
let happyHourTipArray5 = [happyHourTip5, happyHourTip6, happyHourTip3, happyHourTip2]
let happyHourTipArray6 = [happyHourTip3, happyHourTip2, happyHourTip6, happyHourTip5]


let happyHourTopic0 = Topic(title: happyHourTitle, icon: happyHourIcon, tip: happyHourTipArray0)
let happyHourTopic1 = Topic(title: happyHourTitle, icon: happyHourIcon, tip: happyHourTipArray0)
let happyHourTopic2 = Topic(title: happyHourTitle, icon: happyHourIcon, tip: happyHourTipArray2)
let happyHourTopic3 = Topic(title: happyHourTitle, icon: happyHourIcon, tip: happyHourTipArray3)
let happyHourTopic4 = Topic(title: happyHourTitle, icon: happyHourIcon, tip: happyHourTipArray4)
let happyHourTopic5 = Topic(title: happyHourTitle, icon: happyHourIcon, tip: happyHourTipArray5)
let happyHourTopic6 = Topic(title: happyHourTitle, icon: happyHourIcon, tip: happyHourTipArray6)





// MARK: - Cafe

let cafeTitle = "Coffee"
let cafeIcon = Constants.Icon.cafe

//0
let cafeTip1 = Tip(header: "", title: "While you're standing in line: Do a quick mindfulness practice", body: "Studies show that mindfulness helps you stay calm and improves your outlook on life. \n\n1. Take a few deep breaths to center yourself in the moment. \n\n2. Notice your thoughts without reacting or judging. \n\n3. Acknowledge the presence of others and wish them well." , sourceName: "DeStress Monday", sourceURL: "https://www.destressmonday.org/mindful-boost-waiting-line/", sponsorLogo: "", sponsorURL: "")

let cafeTip2 = Tip(header: "☕️", title: "Study: Caffeine (in moderation) may help you live longer", body: "If you take your coffee daily, and abstain from smoking, you’re likely to live longer than the average adult." , sourceName: "New England Journal of Medicine", sourceURL: "https://www.nejm.org/doi/full/10.1056/NEJMoa1112010", sponsorLogo: "", sponsorURL: "")
let cafeTip3 = Tip(header: "☕️", title: "Coffee can help you lose weight as long as your don't add sugar or cream", body: "Coffee stimulates your metabolism which can help you lose weight, but only a little. \n\nDon't count on this for weight loss, especially if you add calories with toppings." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/diet/ss/slideshow-fat-fighting-foods", sponsorLogo: "", sponsorURL: "")
let cafeTip4 = Tip(header: "🍵", title: "Green tea increases metabolism to help you burn fat and helps to decrease cancer risk", body: "To get higher levels of cancer-fighting antioxidants, it's best to brew tea yourself and drink it hot. \n\nIced tea and ready-to-drink green teas have less antioxidants." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/hepatitis/ss/slideshow-best-and-worst-foods-for-your-liver", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//1
let cafeTip5 = Tip(header: "😀", title: "Make kindness a habit: Smile and ask your barista how their day is going", body: "We can all take little steps to ensure we are being kind every single day. \n\nAnd studies have found that being kind to others also makes you happier." , sourceName: "Inc.", sourceURL: "https://www.inc.com/peter-economy/7-remarkably-effective-ways-to-make-kindness-a-habit.html", sponsorLogo: "", sponsorURL: "")

let cafeTip6 = Tip(header: "", title: "“I wouldn’t buy a cup of coffee anywhere, ever because I would not insult myself by wasting money that way.“ - Suze Orman", body: "For example, if you spend $100 a month on coffee ($3.33 per day) and put that money into an IRA instead, that would grow to about $1 million after 40 years given a 12% rate of return. \n\nEven with a 7% percent rate of return, you’d still have around $250,000. \n\nAdvice: Make coffee at home and invest the $3.33 per day habit towards paying off any debt or into a retirement account." , sourceName: "Yahoo! Finance", sourceURL: "https://finance.yahoo.com/news/suze-orman-top-25-tips-211454833.html", sponsorLogo: "", sponsorURL: "")
let cafeTip7 = Tip(header: "🔥", title: "Drinking coffee, tea and other beverages at temperatures hotter than 149 degrees Fahrenheit may lead to esophagus cancer", body: "Beverages that are too hot can injure cells in the esophagus and lead to the formation of cancer cells. \n\nBut, scientists said coffee at cooler temperatures is safe to drink and may decrease the risk of liver cancer by 15%." , sourceName: "USA Today", sourceURL: "https://www.usatoday.com/story/news/2016/06/15/who-drinking-extremely-hot-coffee-tea-probably-causes-cancer/85923476/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let cafeTip8 = Tip(header: "☕️", title: "Coffee may help prevent diseases like stroke and certain cancers, lower risk of Parkinson's and dementia, and boost concentration and memory", body: "But, remember: caffeine is a drug and can become an addiction. \n\nExperts say 400 milligrams of caffeine a day is a safe amount — about the amount in four 8-ounce cups of coffee." , sourceName: "Mayo Clinic", sourceURL: "https://www.mayoclinic.org/healthy-lifestyle/nutrition-and-healthy-eating/in-depth/caffeine/art-20045678", sponsorLogo: "", sponsorURL: "")

// 2
let cafeTip9 = Tip(header: "😀", title: "Study: Smiling and talking to your barista will make you happier", body: "People left Starbucks feeling more cheerful when they: \n• Smiled at the barista \n• Talked with the cashier" , sourceName: "The Week", sourceURL: "https://theweek.com/articles/601111/5-daily-rituals-that-make-happy", sponsorLogo: "", sponsorURL: "")
let cafeTip10 = Tip(header: "☕️", title: "Every time you add syrup to a coffee beverage, you're adding a whole lot of calories", body: "Skip syrup altogether and simply sprinkle a little cinnamon, nutmeg, vanilla or chocolate powder for added flavor. \n\nAnother idea is to order your beverage with soy milk instead of regular milk; it tastes sweeter." , sourceName: "U.S. News & World Report", sourceURL: "https://health.usnews.com/health-news/blogs/eat-run/2014/02/26/how-to-order-a-healthy-cup-of-coffee", sponsorLogo: "", sponsorURL: "")
let cafeTip11 = Tip(header: "🤔", title: "What is your favorite place to think big?", body: "LinkedIn cofounder Reid Hoffman said he does his best thinking in places that are brand new to him, like a cafe he's never been to before." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/mark-zuckerberg-bill-gates-best-place-to-think-2018-11", sponsorLogo: "", sponsorURL: "")
let cafeTip12 = Tip(header: "☕️", title: "Drinking coffee is associated with a lower risk of death", body: "A study of 400,000+ people found that drinking coffee (decaf, ground, and instant) reduced the risk of death from cardiovascular disease and some cancers." , sourceName: "The Journal of the American Medical Association", sourceURL: "https://jamanetwork.com/journals/jamainternalmedicine/article-abstract/2686145", sponsorLogo: "", sponsorURL: "")

// 3
let cafeTip13 = Tip(header: "🚪", title: "Make kindness a habit: Hold the door for people behind you when you enter and exit", body: "The opportunity to do a good deed pops up every day. The thing that will surprise you the most is how good you'll feel about it." , sourceName: "Canadian Living", sourceURL: "https://www.canadianliving.com/health/mind-and-spirit/article/50-good-deeds-for-50-days", sponsorLogo: "", sponsorURL: "")
let cafeTip14 = Tip(header: "", title: "Green tea boosts your metabolism and helps burn belly fat", body: "12-week study: Participants who combined a daily habit of 4-5 cups of green tea with a 25-minute workout lost an average of 2 more pounds and more belly fat than the non tea-drinking exercisers. /n/nGreen tea contains catechins, a type of antioxidant that triggers the release of fat from fat cells and helps speed the liver’s capacity for turning fat into energy." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/things-you-did-today-to-slow-your-metabolism/", sponsorLogo: "", sponsorURL: "")
let cafeTip15 = Tip(header: "🥛", title: "Unless you specify your milk preference, Starbucks will automatically give you 2% milk, and most other cafes will give you whole milk", body: "When ordering a \"fancy\" coffee, consider nonfat milk. For example, a tall nonfat latte at Starbucks is 100 calories, whereas the same drink with 2% milk is 150 calories. 50 calories adds up over time." , sourceName: "U.S. News & World Report", sourceURL: "https://health.usnews.com/health-news/blogs/eat-run/2014/02/26/how-to-order-a-healthy-cup-of-coffee", sponsorLogo: "", sponsorURL: "")
let cafeTip16 = Tip(header: "🔥", title: "Wait until very hot beverages cool down before drinking. Drinking very hot beverages increases the risk of esophageal cancer", body: "Esophageal cancer is the eighth most common cancer and is often fatal. It is possible that the trauma from drinking very hot beverages leads to cell changes and hence to cancer." , sourceName: "CNN", sourceURL: "https://www.cnn.com/2019/03/20/health/hot-tea-linked-to-higher-cancer-risk-study-intl/index.html", sponsorLogo: "", sponsorURL: "")

//4
let cafeTip17 = Tip(header: "", title: "Study: People who made small talk with their barista felt happier than those who stayed silent", body: "Humans are designed to have social interaction. These small interactions are incredibly important for our overall well-being. \n\nSmile, make eye contact, and have brief but genuine conversation." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/how-to-make-sure-get-happier-as-you-get-older-2019-8", sponsorLogo: "", sponsorURL: "")
let cafeTip18 = Tip(header: "", title: "Study suggests that dark roasted coffee — whether regular or decaf — has the strongest protective effect on the brain", body: "The darker the roast, the more brain-protecting compounds get released from the coffee bean. \n\nThese compounds are what gives the coffee its bitter flavor and slow down the buildup of toxic proteins in the brain to help reduce your risk of Alzheimer's and Parkinson's disease." , sourceName: "Medical News Today", sourceURL: "https://www.medicalnewstoday.com/articles/323594.php", sponsorLogo: "", sponsorURL: "")
let cafeTip19 = Tip(header: "☕️", title: "For the least amount of calories, order a cup of plain, black coffee", body: "Researchers found that one cup of certain kinds of specialty coffee drinks contain up to half your daily requirement of calories, plus all of your sugar and fat for the day. If you like sweetness or a little milk, add it yourself so that you know exactly what's going in your cup of coffee." , sourceName: "Shape", sourceURL: "https://www.shape.com/healthy-eating/healthy-drinks/3-tips-lighten-your-coffee-order", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let cafeTip20 = Tip(header: "☕️", title: "Survey: The average person exceeds their weekly coffee budget goal by +32%", body: "On average, the weekly amount that people spend — not including bills like housing and utilities — is $340, or $143 more than the average $197 budgeted. \n\nThat extra spending equals roughly $7,400 each year of overspending. \n\nAlign your spending with your values and cut back in areas that don’t reflect them." , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2019/12/26/consumers-overspend-by-7400-a-year-here-are-weekly-trouble-spots.html", sponsorLogo: "", sponsorURL: "")



let cafeTipArray0 = [cafeTip1, cafeTip2, cafeTip3, cafeTip4]
let cafeTipArray1 = [cafeTip5, cafeTip6, cafeTip7, cafeTip8]
let cafeTipArray2 = [cafeTip9, cafeTip10, cafeTip11, cafeTip12]
let cafeTipArray3 = [cafeTip13, cafeTip14, cafeTip15, cafeTip16]
let cafeTipArray4 = [cafeTip17, cafeTip18, cafeTip19, cafeTip20]
let cafeTipArray5 = [cafeTip1, cafeTip2, cafeTip3, cafeTip4]
let cafeTipArray6 = [cafeTip13, cafeTip14, cafeTip15, cafeTip16]

let cafeTopic0 = Topic(title: cafeTitle, icon: cafeIcon, tip: cafeTipArray0)
let cafeTopic1 = Topic(title: cafeTitle, icon: cafeIcon, tip: cafeTipArray1)
let cafeTopic2 = Topic(title: cafeTitle, icon: cafeIcon, tip: cafeTipArray2)
let cafeTopic3 = Topic(title: cafeTitle, icon: cafeIcon, tip: cafeTipArray3)
let cafeTopic4 = Topic(title: cafeTitle, icon: cafeIcon, tip: cafeTipArray4)
let cafeTopic5 = Topic(title: cafeTitle, icon: cafeIcon, tip: cafeTipArray5)
let cafeTopic6 = Topic(title: cafeTitle, icon: cafeIcon, tip: cafeTipArray6)

// MARK: - PM Cafe

//0
let cafePMTip1 = Tip(header: "🛌", title: "Avoid caffeine after 2 p.m. to prevent sleep disruption", body: "Caffeine after 2 p.m. can cause problems for your sleep, even if you aren’t aware of it. One study found that caffeine consumed 0, 3, and 6 hours before bedtime significantly reduced sleep amounts by more than 1 hour." , sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/sleep-newzzz/201312/new-details-caffeine-s-sleep-disrupting-effects", sponsorLogo: "GM_logo", sponsorURL: "https://gm.com")

let cafePMTip2 = Tip(header: "☕️", title: "Decaf coffee has a little caffeine. USDA regulations require decaf coffee to be 97% caffeine-free", body: "While a 3% dose of caffeine may seem relatively small, it might be enough to keep you awake at night. If you’re drinking decaf coffee to avoid caffeine then you might be better off playing it safe with green tea, instead." , sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/food/fun/how-much-caffeine-is-in-decaf-coffee/", sponsorLogo: "", sponsorURL: "")

let cafePMTip3 = Tip(header: "👩‍⚕️", title: "The Mayo Clinic advises adults to limit their caffeine intake to 400 mg per day, or the equivalent of about 2 to 3 coffees", body: "Caffeine levels can differ based on the type of coffee. For example, 1.5 cups of Starbucks gives you 400 mg of caffeine. Too much caffeine comes with risks, including migraine headaches, irritability, upset stomach, and insomnia." , sourceName: "Inc.", sourceURL: "https://www.inc.com/business-insider/healthy-daily-routine-habits-according-to-science.html", sponsorLogo: "GM_logo", sponsorURL: "https://gm.com")

let cafePMTip4 = Tip(header: "☕️", title: "If you need an \"afternoon coffee break\", drink between 1:30 pm and 5:00 pm for best results", body: "You body releases cortisol, a hormone which makes us feel alert and awake. The time of peak cortisol levels in the afternoon for most people are between 12:00-1:00 pm and 5:30-6:30 pm. Therefore, time your \"afternoon coffee break\" between 1:30 pm and 5:00 pm to take advantage of the dips in your cortisol levels when you need a boost the most." , sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/sleep-newzzz/201312/new-details-caffeine-s-sleep-disrupting-effects", sponsorLogo: "GM_logo", sponsorURL: "https://gm.com")

//1
let cafePMTip5 = Tip(header: "🚪", title: "Make kindness a habit: Leave the door open for the person behind you.", body: "We can all take little steps to ensure we are being kind every single day. Study: when people were assigned to do 5 random acts of kindness per week for a period of 6 weeks, their levels of happiness increased by 40%." , sourceName: "Inc.", sourceURL: "https://www.inc.com/peter-economy/7-remarkably-effective-ways-to-make-kindness-a-habit.html", sponsorLogo: "", sponsorURL: "")
let cafePMTip6 = Tip(header: "🕛", title: "Avoid caffeine use past noon each day to sleep well tonight", body: "Our sleep is closely tied to our body's natural circadian rhythm. Caffeine can throw off your circadian rhythm by delaying the release of melatonin, a hormone in your body that helps you fall asleep, by approximately 40 minutes." , sourceName: "Bustle", sourceURL: "https://www.bustle.com/articles/145170-7-tips-for-maintaining-a-regular-sleep-schedule-because-consistency-is-important", sponsorLogo: "", sponsorURL: "")
let cafePMTip7 = Tip(header: "☕️", title: "Caffeine consumed 6 hours before bed lowers sleep quality", body: "Researchers found that sleep quality was diminished for people who consumed caffeine 6 hours before bed. While participants might not have felt the caffeine in their body, it still affected their sleep amounts by over an hour." , sourceName: "Medium", sourceURL: "https://medium.com/the-mission/the-latest-time-you-should-drink-coffee-according-to-science-8c1db17bca21", sponsorLogo: "", sponsorURL: "")
let cafePMTip8 = Tip(header: "🔥", title: "Caffeine in coffee, tea, and chocolate may increase the risk of acid reflux", body: "Switching to decaffeinated versions of these drinks can help minimize the symptoms. Chocolate contains both caffeine and cocoa, and both of these increase the symptoms of acid reflux. Alternatively, ginger tea or fat-free milk can help reduce the production of stomach acid." , sourceName: "Medical News Daily", sourceURL: "https://www.medicalnewstoday.com/articles/314886.php", sponsorLogo: "", sponsorURL: "")

//2
let cafePMTip9 = Tip(header: "", title: "Don’t consume caffeine 6 hours before bedtime", body: "According to the American Academy of Sleep Medicine, caffeine takes 10 hours to get out of your system. Avoid these foods and drinks within 6 hours of your bedtime: \n• coffee and espresso drinks \n• black and green tea \n• chocolate \n• energy drinks \n• soft drinks" , sourceName: "Healthline", sourceURL: "https://www.healthline.com/health/how-long-does-caffeine-last#how-long-symptoms-last", sponsorLogo: "", sponsorURL: "")

//4
let cafePMTip13 = Tip(header: "🙅‍♀️", title: "Cut down on caffeine in tea, coffee, energy drinks or colas, especially in the evening", body: "Caffeine interferes with the process of falling asleep, and also prevents deep sleep. Instead, have a warm, milky drink or herbal tea." , sourceName: "NHS", sourceURL: "https://www.nhs.uk/live-well/sleep-and-tiredness/10-tips-to-beat-insomnia/", sponsorLogo: "", sponsorURL: "")


let cafePMTipArray0 = [cafePMTip1, cafePMTip2, cafePMTip3, cafePMTip4]
let cafePMTipArray1 = [cafePMTip5, cafePMTip6, cafePMTip7, cafePMTip8]
let cafePMTipArray2 = [cafePMTip9, cafePMTip2, cafePMTip3, cafePMTip4]
let cafePMTipArray3 = [cafePMTip13, cafePMTip6, cafePMTip7, cafePMTip8]
let cafePMTipArray4 = [cafePMTip1, cafePMTip2, cafePMTip3, cafePMTip4]
let cafePMTipArray5 = [cafePMTip5, cafePMTip6, cafePMTip7, cafePMTip8]
let cafePMTipArray6 = [cafePMTip13, cafePMTip4, cafePMTip7, cafePMTip8]

let cafePMTopic0 = Topic(title: cafeTitle, icon: cafeIcon, tip: cafeTipArray0)
let cafePMTopic1 = Topic(title: cafeTitle, icon: cafeIcon, tip: cafeTipArray1)
let cafePMTopic2 = Topic(title: cafeTitle, icon: cafeIcon, tip: cafeTipArray2)
let cafePMTopic3 = Topic(title: cafeTitle, icon: cafeIcon, tip: cafeTipArray3)
let cafePMTopic4 = Topic(title: cafeTitle, icon: cafeIcon, tip: cafeTipArray4)
let cafePMTopic5 = Topic(title: cafeTitle, icon: cafeIcon, tip: cafeTipArray5)
let cafePMTopic6 = Topic(title: cafeTitle, icon: cafeIcon, tip: cafeTipArray6)

// MARK: - CAFE, NIGHT


// MARK: - BREAKS

let breakTitle = "Work Break"
let breakIcon = Constants.Icon.relax

// AM Break
// 0
let breakAMTip1 = Tip(header: "🧠", title: "Top performers take a 17-minute break every 52 minutes", body: "Study: The top 10% of productive people all worked an average of 52 minutes before taking a 17-minute break. \n\nWorking for any longer can cause cognitive boredom. \n\nBy knowing you have a break coming up, you’re more likely to stay focused and work with purpose. \n\nAnd taking regular breaks will improve your health." , sourceName: "Fast Company", sourceURL: "https://www.fastcompany.com/40475204/youre-taking-breaks-the-wrong-way-heres-how-to-fix-that", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let breakAMTip2 = Tip(header: "🌲", title: "High-efficiency breaks = walking outside, especially in green spaces. Low-efficiency breaks = Scrolling through the news or social media", body: "Research: Just 10 minutes of exercise is enough to boost memory and attention performance throughout the day. \n\nAdditionally, workers with more sunlight exposure during the day improved their sleep and slept an average of 46 minutes more per night." , sourceName: "Fast Company", sourceURL: "https://www.fastcompany.com/40475204/youre-taking-breaks-the-wrong-way-heres-how-to-fix-that", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let breakAMTip3 = Tip(header: "🏞", title: "Increase meditative state by walking in green spaces, not in busy streets", body: "Compared to city shopping streets and busy business areas, feelings of a meditative state were the highest when the participants walked through green spaces, as well as less frustration. \n\nThe findings don’t mean the green space triggered a meditative state — rather, the energy required to walk through a green space is more \"effortless.\"" , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/2013/03/29/green-space-meditation-brain-walk-park_n_2964199.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let breakAMTip4 = Tip(header: "👀", title: "Take vision breaks from looking at digital devices because your eyes will strain in as little as 2 hours", body: "The 20-20-20 exercise to reduce your eye fatigue: Every 20 minutes look away from your computer screen and focus on an item at least 20 feet away for at least 20 seconds." , sourceName: "Medium", sourceURL: "https://medium.com/the-mission/digital-eye-strain-is-destroying-your-eyes-4ac7f8e87b24", sponsorLogo: "TBD", sponsorURL: "www.test.com")

// 1
let breakAMTip5 = Tip(header: "🚶‍♂️", title: "Longer breaks are good, but it’s beneficial to take frequent short breaks", body: "Research: More short breaks were associated with higher levels of: \n• Energy \n• Concentration \n• Motivation. \n\nThis suggests that employees should be encouraged to take more frequent short breaks to facilitate recovery." , sourceName: "Baylor University", sourceURL: "https://www.baylor.edu/mediacommunications/news.php?action=story&story=159785", sponsorLogo: "", sponsorURL: "")
let breakAMTip6 = Tip(header: "🚶‍♀️", title: "Take breaks by doing things you like to do", body: "A common belief exists that doing things that are non-work-related are more beneficial. One study found there was no evidence to prove that non-work-related activities were more beneficial. \n\nFinding something on your break that you prefer to do – something that’s not given to you or assigned to you – are the kinds of activities that are going to make your breaks much more restful and help you come back to work stronger." , sourceName: "Baylor University", sourceURL: "https://www.baylor.edu/mediacommunications/news.php?action=story&story=159785", sponsorLogo: "", sponsorURL: "")
let breakAMTip7 = Tip(header: "👫", title: "Social breaks (talking with coworkers) are more effective at reducing stress and improving your mood than checking the news or eating a snack", body: "Social breaks cut down on errors and reduce turnover; workers who take social breaks are more likely to stay at their jobs." , sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/", sponsorLogo: "", sponsorURL: "")
let breakAMTip8 = Tip(header: "🌲", title: "Nature breaks are better for increasing happiness than indoor breaks", body: "People who take short walks outdoors return with better moods than people who walk indoors. Looking out a window into nature is a better micro-break than looking at a wall. Even taking a break indoors surrounded by plants is better than an area with no plants." , sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/", sponsorLogo: "", sponsorURL: "")

// 2
let breakAMTip9 = Tip(header: "", title: "Study: Spending time in forests and areas with tree shade is better for your mental health than spending time in open grassy areas", body: "Exposure to 30% or more tree shade, compared with 0%-9% tree shade, was associated with 31% decrease experiencing mental distress. Meanwhile, exposure to 30% or more grass was associated with 71% higher odds of mental distress. \n\nResearchers suggest that without the shade of trees: \n• Sidewalk temperatures are hotter \n• Sidewalks can seem noisier \n• Walkers themselves are exposed to more air pollution. \n\nStudies also show that people are happier in green spaces that contain more stimuli — because trees are more complex than grass, it’s likely that we enjoy being around them more.", sourceName: "Journal of the American Medical Association", sourceURL: "https://jamanetwork.com/journals/jamanetworkopen/fullarticle/2739050", sponsorLogo: "", sponsorURL: "")

// AM Break
let breakTipArray0 = [breakAMTip1, breakAMTip2, breakAMTip3, breakAMTip4]
let breakTipArray1 = [breakAMTip5, breakAMTip6, breakAMTip7, breakAMTip8]
let breakTipArray2 = [breakAMTip9, breakAMTip2, breakAMTip3, breakAMTip4]
let breakTipArray3 = [breakAMTip1, breakAMTip2, breakAMTip3, breakAMTip4]
let breakTipArray4 = [breakAMTip5, breakAMTip6, breakAMTip7, breakAMTip8]
let breakTipArray5 = [breakAMTip9, breakAMTip8, breakAMTip7, breakAMTip6]
let breakTipArray6 = [breakAMTip8, breakAMTip7, breakAMTip6, breakAMTip5]

let breakTopic0 = Topic(title: breakTitle, icon: breakIcon, tip: breakTipArray0)
let breakTopic1 = Topic(title: breakTitle, icon: breakIcon, tip: breakTipArray1)
let breakTopic2 = Topic(title: breakTitle, icon: breakIcon, tip: breakTipArray2)
let breakTopic3 = Topic(title: breakTitle, icon: breakIcon, tip: breakTipArray3)
let breakTopic4 = Topic(title: breakTitle, icon: breakIcon, tip: breakTipArray4)
let breakTopic5 = Topic(title: breakTitle, icon: breakIcon, tip: breakTipArray5)
let breakTopic6 = Topic(title: breakTitle, icon: breakIcon, tip: breakTipArray6)



// PM BREAKS
// 0
let breakPMTip1 = Tip(header: "😴", title: "An afternoon nap increases the brain's capacity to learn", body: "Napping increases short-term memory, mood, alertness, and cognitive performance. Researchers found that nappers were twice as likely to solve a complex problem than non-nappers." , sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")// PM
let breakPMTip2 = Tip(header: "💤", title: "The ideal naps are between 10 and 20 minutes", body: "A study found that 5 minute naps did little to reduce fatigue, increase health, or sharpen thinking. But 10-20 minute naps improved alertness and mood that lasted nearly 3 hours. But naps longer than 20 minutes cause our brains to enter the deeper stages of sleep, making you feel groggy when you wake up." , sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")// PM
let breakPMTip3 = Tip(header: "☕️", title: "Perform better by consuming caffeine and then taking a nap", body: "Caffeine takes about 25 minutes to enter the bloodstream. Researchers have found that caffeine, usually in the form of coffee, followed by a nap of 10-20 minutes, is the ideal technique for reducing sleepiness and increasing performance. \n\nThe study found that the group that ingested caffeine and then had a nap performed better than the caffeine-only group." , sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
let breakPMTip4 = Tip(header: "🚶‍♂️", title: "Take a 10-minute walk when tiredness hits, preferably outside", body: "The fresh air will help you feel more alert. Plus, a quick brisk walk will improve your circulation and help you breathe more deeply so you take in more oxygen – an essential ingredient for the brain." , sourceName: "Weight Loss Resources", sourceURL: "https://www.weightlossresources.co.uk/diet/healthy_eating/beat-afternoon-energy-slump.htm", sponsorLogo: "", sponsorURL: "")
// 1
let breakPMTip5 = Tip(header: "😴", title: "A brief nap can speed up cognitive processing, decrease errors, and increase stamina this afternoon", body: "One study found that as little as 8 minutes of sleep during the day was enough to significantly improve memory. \n\nOrganizations such as Google and PriceWaterhouseCoopers have nap pods for employees, understanding that 20 minutes of naptime can make people more productive in the afternoon." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/09/sleep-well-lead-better", sponsorLogo: "", sponsorURL: "")
let breakPMTip6 = Tip(header: "💤", title: "People who nap are 37% less likely to die from heart disease", body: "Napping strengthens our immune system and overall health. Healthy adults should ideally nap for 10-20 minutes." , sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
let breakPMTip7 = Tip(header: "🚶‍♂️", title: "A person's creative output increased by 60% when they were walking, study finds", body: "The study showed that it doesn't matter if you're outside or inside. It's the actual walking that matters, not the environment. \n\nA person who walked indoors, on a treadmill facing a blank wall, or outside all produced twice as many creative responses compared to someone sitting down. \n\nAnd creativity continued even after a person sat back down after his/her walk." , sourceName: "Inc.", sourceURL: "https://www.inc.com/laura-garnett/this-is-scientific-reason-steve-jobs-went-for-walks.html", sponsorLogo: "", sponsorURL: "")
let breakPMTip8 = Tip(header: "🤔", title: "What is your favorite place to think big?", body: "Microsoft founder Bill Gates said he thinks big while on walks. \n\nEvan Williams, the founder of Blogger and Medium, said he thinks big whenever he's moving: \"Walking anywhere.\"" , sourceName: "Inc.", sourceURL: "https://www.inc.com/laura-garnett/this-is-scientific-reason-steve-jobs-went-for-walks.html", sponsorLogo: "", sponsorURL: "")


// PM BREAK
let breakPMTipArray0 = [breakPMTip1, breakPMTip2, breakPMTip3, breakPMTip4]
let breakPMTipArray1 = [breakPMTip5, breakPMTip6, breakPMTip7, breakPMTip8]
let breakPMTipArray2 = [breakPMTip1, breakPMTip2, breakPMTip3, breakPMTip4]
let breakPMTipArray3 = [breakPMTip5, breakPMTip6, breakPMTip7, breakPMTip8]
let breakPMTipArray4 = [breakPMTip1, breakPMTip2, breakPMTip3, breakPMTip4]
let breakPMTipArray5 = [breakPMTip5, breakPMTip6, breakPMTip7, breakPMTip8]
let breakPMTipArray6 = [breakPMTip8, breakPMTip7, breakPMTip4, breakPMTip3]

let breakPMTopic0 = Topic(title: breakTitle, icon: breakIcon, tip: breakTipArray0)
let breakPMTopic1 = Topic(title: breakTitle, icon: breakIcon, tip: breakTipArray1)
let breakPMTopic2 = Topic(title: breakTitle, icon: breakIcon, tip: breakTipArray2)
let breakPMTopic3 = Topic(title: breakTitle, icon: breakIcon, tip: breakTipArray3)
let breakPMTopic4 = Topic(title: breakTitle, icon: breakIcon, tip: breakTipArray4)
let breakPMTopic5 = Topic(title: breakTitle, icon: breakIcon, tip: breakTipArray4)
let breakPMTopic6 = Topic(title: breakTitle, icon: breakIcon, tip: breakTipArray5)





// MARK: - Socializing

//1
let networking1 = Tip(header: "", title: "Kind words can be short and easy to speak but their echoes are truly endless.", body: "- Mother Teresa \n\nRoman Catholic nun and missionary." , sourceName: "Wonderful Quote", sourceURL: "https://www.wonderfulquote.com/a/mother-teresa-quotes", sponsorLogo: "", sponsorURL: "")

let networking2 = Tip(header: "🤔", title: "Be curious about what the other person is telling you", body: "You can respond to what somebody is saying by expressing if you're feeling sympathy or empathy, and explaining why.", sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/2018/11/17/style/self-care/terry-gross-conversation-advice.html", sponsorLogo: "", sponsorURL: "")
let networking3 = Tip(header: "😀", title: "A good conversationalist is somebody who is fun to talk to", body: "If you can’t be funny, being mentally organized, reasonably concise and energetic will go a long way in impressing people.", sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/2018/11/17/style/self-care/terry-gross-conversation-advice.html", sponsorLogo: "", sponsorURL: "")
let networking4 = Tip(header: "💭", title: "Organize your thoughts beforehand by thinking about the things you expect you’ll be asked and then reflecting on how you might answer", body: "Being prepared can help you avoid getting caught off guard, or help you to more easily pivot the conversation to a subject that you’ve prepared yourself to talk about in a way that plays to your strengths.", sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/2018/11/17/style/self-care/terry-gross-conversation-advice.html", sponsorLogo: "", sponsorURL: "")
//2
let networking5 = Tip(header: "", title: "Let us always meet each other with smile, for the smile is the beginning of love.", body: "-Mother Teresa \n\nMother Teresa was an Albanian-Indian Roman Catholic nun and missionary.", sourceName: "Good News Network", sourceURL: "https://www.goodnewsnetwork.org/let-us-always-meet-smile-smile-beginning-love-mother-teresa/", sponsorLogo: "", sponsorURL: "")

let networking6 = Tip(header: "🍷", title: "Always hold your drink or food plate in your left hand", body: "This leaves your right hand dry and free to shake hands or accept a business card.", sourceName: "Inc.", sourceURL: "https://www.inc.com/rene-siegel/sixteen-cocktail-party-tips-for-wallflowers.html", sponsorLogo: "", sponsorURL: "")
let networking7 = Tip(header: "👔", title: "When you get to the event, place your name badge on your right", body: "This facilitates reading from left to right, when shaking hands. \n\nThe left side is reserved for a boutonniere, a corsage, medals and your professional alliance.", sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.ca/julie-blais-comeau/cocktail-networking_b_7469156.html", sponsorLogo: "", sponsorURL: "")
let networking8 = Tip(header: "👫", title: "Listen 60% of the time and speak the other 40%", body: "Ask open-ended questions. Learn from the other; their daily routine, their ideal client and their needs. \n\n\"What do you do when you're not working?\" Is a great question to ask.", sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.ca/julie-blais-comeau/cocktail-networking_b_7469156.html", sponsorLogo: "", sponsorURL: "")

//3
let networking9 = Tip(header: "🚶‍♂️", title: "Project Confidence: \n• Stand up straight \n• Pull your shoulders back \n• Widen your stance \n• Hold your head high", body: "If you are confident and upbeat you tend to hold yourself upright and expand your chest. \n\nIf you are feeling insecure or depressed, you tend to round your shoulders, slump, and look down. ", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/carolkinseygoman/2014/05/06/5-ways-to-project-confidence/#18b503744e34", sponsorLogo: "", sponsorURL: "")
let networking10 = Tip(header: "🚪", title: "Make an entrance. First impressions count", body: "Your body language and posture should be: \n• confident \n• happy \n• approachable \n\nBreathe in and scan the horizon of the event to search for familiar faces or inviting eye contact from a group member looking for someone to connect with.", sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.ca/julie-blais-comeau/cocktail-networking_b_7469156.html", sponsorLogo: "", sponsorURL: "")
let networking11 = Tip(header: "🙌", title: "Develop grit because it was found to be more important than IQ when you're trying to become successful", body: "Having grit means you that push yourself to attend a networking event after a long day of work, even when you have no energy.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/important-trait-of-success-2013-11", sponsorLogo: "", sponsorURL: "")
let networking12 = Tip(header: "🤝", title: "LinkedIn Co-founder, Reid Hoffman, believes networking is critical for success because when it comes to knowledge, the most valuable information is often in other people's heads", body: "\"There are more smart people in the world who do not work at your company than the total number of smart people who work at your company. So look beyond your office. If you do, your team becomes a whole lot bigger.\" \n\n- Reid Hoffman said." , sourceName: "Inc.", sourceURL: "https://www.inc.com/marcel-schwantes/3-winning-habits-youll-find-in-most-successful-people-this-year.html", sponsorLogo: "", sponsorURL: "")

//4
let networking13 = Tip(header: "", title: "I've learned that people will forget what you said, people will forget what you did, but people will never forget how you made them feel.", body: "Maya Angelou \n\nMaya Angelou was an American poet, singer, and civil rights activist. ", sourceName: "Wonderful Quote", sourceURL: "https://www.wonderfulquote.com/l/relationships-quotes", sponsorLogo: "", sponsorURL: "")
let networking14 = Tip(header: "🗣", title: "Always try to use people's names in conversation", body: "Drop their names casually and regularly without overdoing it. This is a simple subconscious hack that will make others like you more.", sourceName: "Inc.", sourceURL: "https://www.inc.com/quora/10-simple-habits-that-will-make-you-more-likable-right-away.html", sponsorLogo: "", sponsorURL: "")
let networking15 = Tip(header: "", title: "Key to being more likable: Ask the other person follow-up questions", body: "Research: Those who were asked more meaningful follow-up questions (a.k.a. questions that aren’t “how are you?” or “what do you do?”), found the other person much more likable. \n\nDon't start a conversation off with “How are you?” because the person asking doesn’t really want to know, and the person responding doesn’t tell the truth.", sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2019/03/07/stop-asking-how-are-you-harvard-researchers-say-this-is-how-successful-people-make-small-talk.html", sponsorLogo: "", sponsorURL: "")
let networking16 = Tip(header: "", title: "Put your phone away. Study: People who used their smartphones during in-person social interactions enjoyed themselves less than those who did not", body: "Face-to-face interactions are incredibly important for our day-to-day wellbeing. \n\nThis study tells us that there is a real and detectable benefit from putting your phone away when you're spending time with people.", sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2018/02/180226122506.htm", sponsorLogo: "", sponsorURL: "")

//5
let networking17 =  Tip(header: "🤔", title: "To remember a person's name, repeat the name of the person you just met", body: "When first introduced to someone new, repeat the person's name during the conversation and then use it over and over again. \n\nIn order to remember someone's name, you must focus on it for at least 1-2 seconds.", sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2016/09/21/11-memory-hacks-to-remember-the-names-of-everyone-you-meet.html", sponsorLogo: "", sponsorURL: "")
let networking18 = Tip(header: "👫", title: "\"Tell me about yourself\" is the only ice breaker you'll ever need", body: "The beauty in opening with \"tell me about yourself\" is that it allows you to start a conversation without the fear that you’re going to inadvertently make someone uncomfortable or self-conscious. \n\nPosing a broad question lets people lead you to who they are. \n\nAvoid asking more pointed questions (for example, “What do you do for work?”) that presume information to be true.", sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/2018/11/17/style/self-care/terry-gross-conversation-advice.html", sponsorLogo: "", sponsorURL: "")
let networking19 = Tip(header: "❓", title: "Increase your likability: Ask more questions, particularly follow-up questions", body: "Study: People who ask more questions, particularly follow-up questions, are better liked by their conversation partners. \n\nAsking follow-up questions increases how much we are liked because they show that we are listening sincerely and trying to show we care.", sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/2018/09/23/smarter-living/how-to-be-more-likeable.html", sponsorLogo: "", sponsorURL: "")
let networking20 = Tip(header: "", title: "Increase your happiness: Each happy friend a person has increased that person's probability of being happy by 9%", body: "Each unhappy friend decreases it by 7%. So if you were simply playing the averages, and you didn't know anything about the emotional state of a new person you just met, you probably want to be friends with them. \n\nThis helps to explain why past researchers have found an association between happiness and the number of friends and family.", sourceName: "Connected", sourceURL: "https://www.amazon.com/Connected-Surprising-Power-Social-Networks-ebook/dp/B002OFVO5Y", sponsorLogo: "", sponsorURL: "")

//6
let networking21 = Tip(header: "", title: "Skip the small talk", body: "Study: Strangers were paired for 45 minutes. The people who asked deeper questions felt more connected.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/how-to-become-more-attractive-2015-11", sponsorLogo: "", sponsorURL: "")
let networking22 = Tip(header: "🤔", title: "Be More Interesting: Stop Asking About Uninteresting Things", body: "Uninteresting people bring out the uninteresting side in other people. They: \n• Ask boring questions like ‘What do you do?’ \n• Ask ‘How are you?’ and don’t really mean it \n• Talk about the weather \n• Ask what TV shows people are watching \n\nHere’s how you can be more interesting with every person you meet: \n• Ask someone about the weirdest thing they have ever eaten. \n• Ask someone what’s on their bucket list and if you can help them accomplish any of it. \n• Ask someone about the movie that most changed their life. \n• Ask someone about a new skill they are learning. \n• Ask someone about their personal passion project.", sourceName: "Science Of People", sourceURL: "https://www.scienceofpeople.com/interesting/", sponsorLogo: "", sponsorURL: "")



let networkingTitle = "Socializing"
let networkingIcon = Constants.Icon.event

//WEEK 1
//0
let networkingTipArray0 = [networking1, networking2, networking3, networking4]
let networkingTopic0 = Topic(title: networkingTitle, icon: networkingIcon, tip: networkingTipArray0)
//1
let networkingTipArray1 = [networking5, networking6, networking7, networking8]
let networkingTopic1 = Topic(title: networkingTitle, icon: networkingIcon, tip: networkingTipArray1)
//2
let networkingTipArray2 = [networking9, networking10, networking11, networking12]
let networkingTopic2 = Topic(title: networkingTitle, icon: networkingIcon, tip: networkingTipArray2)
//3
let networkingTipArray3 = [networking13, networking14, networking15, networking16]
let networkingTopic3 = Topic(title: networkingTitle, icon: networkingIcon, tip: networkingTipArray3)
//4
let networkingTipArray4 = [networking17, networking18, networking19, networking20]
let networkingTopic4 = Topic(title: networkingTitle, icon: networkingIcon, tip: networkingTipArray4)
//5 (WIP 2)
let networkingTipArray5 = [networking21, networking22, networking12, networking16]
let networkingTopic5 = Topic(title: networkingTitle, icon: networkingIcon, tip: networkingTipArray5)
//6
let networkingTipArray6 = [networking13, networking14, networking15, networking11]
let networkingTopic6 = Topic(title: networkingTitle, icon: networkingIcon, tip: networkingTipArray6)

// MARK: - Date

let dateTitle = "Date"
let dateIcon = Constants.Icon.date

//0
let dateTip1 = Tip(header: "📵", title: "Put your phone away. Study: The mere presence of a cell phone during a conversation lowers relationship development", body: "Cell phones, even when not being used, can intrude into awareness when you see a cell phone. \n\nYou find yourself thinking about all the things you could be doing with your cell phone. Once those thoughts enter awareness, you may devote less attention to the person you're with." , sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/mental-mishaps/201407/date-you-and-our-cell-phones", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let dateTip2 = Tip(header: "😂", title: "If you keep conversation fun, your date is more likely to come away in a good mood and feeling more positive towards you", body: "Ask them about their family, favorite trips and find out what they are passionate about. Showing interest in someone and letting them feel heard is very attracting. \n\nConversly, if you complain or ask something associated with a negative topic, they'll think the same of you." , sourceName: "The Independent", sourceURL: "https://www.independent.co.uk/life-style/love-sex/first-date-rules-for-men-women-conversation-negative-topics-politics-james-preece-a8288116.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let dateTip3 = Tip(header: "😀", title: "Body language signs that show your date is into you", body: "Signs that your date is interested: Good eye contact, smiling, leaning in when you speak, laughing at your jokes, blushing, open posture, mirroring your actions, angling their body towards you, and physical contact." , sourceName: "Ask Men", sourceURL: "https://www.askmen.com/top_10/dating/10-first-date-success-signs.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let dateTip4 = Tip(header: "🌶", title: "Eat these aphrodisiac foods to increase romance", body: "Eat: Oysters, chili peppers, dark chocolate, whipped cream, coffee, chai tea, watermelon, bananas, strawberries, cherries, figs, nuts, olive oil, avocado, arugula, asparagus, and artichokes." , sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/food/fun/aphrodisiac-foods/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//1
let dateTip5 = Tip(header: "🚶‍♀️", title: "Easy ways to burn calories while on a date", body: "Instead of always opting for sedentary plans, like going to the movies, schedule more adventurous activities like walking dates, park dates, bike rides, or easy day-hikes.", sourceName: "The Active Times", sourceURL: "https://www.theactivetimes.com/20-easy-ways-build-exercise-your-daily-routine", sponsorLogo: "", sponsorURL: "")
let dateTip6 = Tip(header: "❓", title: "Research: People who asked a lot of questions on their first dates, were much more likely to get asked out on second dates", body: "Self-disclosure feels good. By asking your date questions, they attribute that enjoyment to you, the question asker, which causes your date to like you more. \n\nSo asking more questions during a date makes you more likable and more likely to get a second date.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/ideacast/2016/06/asking-for-advice-makes-people-think-youre-smarter.html", sponsorLogo: "", sponsorURL: "")
let dateTip7 = Tip(header: "👫", title: "Mimicking - occasionally copying the verbal and nonverbal behaviors of a date or partner - makes them more attracted to you", body: "Researchers found that when any individual mimics the behavior of another, they become more liked by that other person. \n\nSo, copy your partner’s gestures on occasion. Repeat a word or phrase now and again. You may find it makes them like you more, increases their comfort around you, and improves your romance, too.", sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/the-attraction-doctor/201706/mimicry-and-attraction-in-romantic-relationships", sponsorLogo: "", sponsorURL: "")
let dateTip8 = Tip(header: "❓", title: "Increase your likability: Ask more questions, particularly follow-up questions", body: "A speed-dating study found that people who ask more questions, particularly follow-up questions, are better liked by their conversation partners. It even led to an increase in second dates among the speed-daters. \n\nAsking follow-up questions increases how much we are liked because they show that we are listening sincerely and trying to show we care.", sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/2018/09/23/smarter-living/how-to-be-more-likeable.html", sponsorLogo: "", sponsorURL: "")

//2
let dateTip9 = Tip(header: "😀", title: "Smiling and making more eye contact with your date or partner lets them know you are interested", body: "Make more frequent and longer eye contact to convey greater interest as well. Selectively copy your partner’s verbal and non-verbal behavior to increase their comfort and build more rapport too.", sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/the-attraction-doctor/201806/behaviors-build-trust-and-attraction", sponsorLogo: "", sponsorURL: "")
let dateTip10 = Tip(header: "📵", title: "Build a stronger connection with your date by putting your phone away", body: "Studies show that when two people are talking, the mere presence of a phone on a table between them or in the periphery of their vision changes both what they talk about and the degree of connection they feel. \n\nPeople keep the conversation on topics where they won’t mind being interrupted. They don’t feel as invested in each other.", sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/2015/09/27/opinion/sunday/stop-googling-lets-talk.html?_r=0", sponsorLogo: "", sponsorURL: "")
let dateTip11 = Tip(header: "😊", title: "When someone is attracted to you, blood will flow to their face, causing their cheeks to get red", body: "It is an evolutionary way the body tries to attract the opposite sex. This happens with lips and eyes. \n\nThe redder the lips and the whiter the eyes, the more fertile and attractive someone is.", sourceName: "Science of People", sourceURL: "https://www.scienceofpeople.com/body-language-attraction/", sponsorLogo: "", sponsorURL: "")
let dateTip12 = Tip(header: "👫", title: "Speed-dating study: Daters with expansive body language were more likely to be picked. \n• be expansive \n• be open \n• take up space", body: "In fact, for every unit of increase in expansiveness noted by the researchers, the participant was 76% more likely to be chosen for a date. \n\nThis effect was true for both men and women — and the increase in romantic attractiveness was partially due to increased perceptions of the individual’s dominance (and potential status and resources as a mate).", sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/the-attraction-doctor/201709/how-our-body-language-can-make-us-attractive", sponsorLogo: "", sponsorURL: "")

//3
let dateTip13 = Tip(header: "", title: "Wear black. Study: The color black makes people appear more attractive, intelligent and confident", body: "Overall the color black was voted as the most attractive, compared to every other color. \n\n66% of women thought black was the most attractive color on a man, and 46% of men thought that about women.", sourceName: "Entrepreneur", sourceURL: "https://www.entrepreneur.com/slideshow/317242", sponsorLogo: "", sponsorURL: "")
let dateTip14 = Tip(header: "", title: "Making your date feel good about themself increases your attractiveness", body: "Talking up good traits about others will help you seem more appealing in their eyes. \n\nPeople put effort into getting ready for a date so take the time to compliment the other person and mean it!", sourceName: "Insider", sourceURL: "https://www.insider.com/ways-to-look-feel-more-attractive-confident-2017-8#give-some-compliments-2", sponsorLogo: "", sponsorURL: "")
let dateTip15 = Tip(header: "", title: "Getting dessert increases attraction", body: "Study: Participants were given a description of a potential mate. Then, half of the participants drank a sweet beverage, while the others had water. The sugar-tasting group was more interested in going out with the potential date and expected their relationship to be more intimate. \n\nThe researchers suggest that your brain associates sweet flavors with the concept of romance, so when you activate one of those parts of your mind, it lights up the other.", sourceName: "Men's Health", sourceURL: "https://www.menshealth.com/sex-women/a19533673/foods-that-turn-a-woman-on/", sponsorLogo: "", sponsorURL: "")
let dateTip16 = Tip(header: "", title: "Be more attractive: Speak in a higher-pitched voice for women, lower for men", body: "Study: A higher-pitched voice in women is more attractive to men—and vice versa, that a lower-pitched voice in men is more attractive to women. Past research suggests this is based on evolutionary reasons.", sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/advice/relationships/how-to-be-more-attractive/", sponsorLogo: "", sponsorURL: "")

//4
let dateTip17 = Tip(header: "", title: "Be more attractive: Wear perfume or cologne", body: "Study: Men who used cologne showed an increase in self-confidence and were rated as more attractive by a female panel.", sourceName: "Entrepreneur", sourceURL: "https://www.entrepreneur.com/slideshow/317242", sponsorLogo: "", sponsorURL: "")
let dateTip18 = Tip(header: "", title: "Natural Aphrodisiac Foods That Could Spark Romance", body: "• Avocado \n• Arugula \n• Bananas \n• Beets \n• Cherries \n• Dark chocolate \n• Honey \n• Olive oil \n• Pumpkin seeds \n• Red wine \n• Strawberries \n• Watermelon", sourceName: "The Healthy", sourceURL: "https://www.thehealthy.com/sex/aphrodisiac-foods/", sponsorLogo: "", sponsorURL: "")
let dateTip19 = Tip(header: "", title: "Movie Night: Laughing and watching funny movies increases blood flow which increases romantic performance in men and women", body: "In contrast, watching stressful or scary movies caused a restriction in blood flow. So if you're planning on romance after the movie then a comedy will be your best option.", sourceName: "Own The Day, Own Your Life", sourceURL: "https://www.amazon.com/dp/B072HLS5QJ/", sponsorLogo: "", sponsorURL: "")
let dateTip20 = Tip(header: "🤔", title: "Be More Interesting: Stop Asking About Uninteresting Things", body: "Uninteresting people bring out the uninteresting side in other people. They: \n• Ask boring questions like ‘What do you do?’ \n• Ask ‘How are you?’ and don’t really mean it \n• Talk about the weather \n• Ask what TV shows people are watching \n\nHere’s how you can be more interesting with every person you meet: \n• Ask someone about the weirdest thing they have ever eaten. \n• Ask someone what’s on their bucket list and if you can help them accomplish any of it. \n• Ask someone about the movie that most changed their life. \n• Ask someone about a new skill they are learning. \n• Ask someone about their personal passion project.", sourceName: "Science Of People", sourceURL: "https://www.scienceofpeople.com/interesting/", sponsorLogo: "", sponsorURL: "")




//WOMEN
let dateWomenTip1 = Tip(header: "🌹", title: "What Color to Wear on a Date (if you’re a woman): Red", body: "Red is the color of passion and gets blood pumping. Women can wear this to get their date’s heart racing.", sourceName: "Science of People", sourceURL: "https://www.scienceofpeople.com/color-psychology/", sponsorLogo: "", sponsorURL: "")

//MEN
let dateMenTip1 = Tip(header: "👕", title: "What Color to Wear on a Date (if you’re a man): Blue", body: "Blue is the most stable color. Women love seeing stable men. It is also calming and can help relax both you and your date’s nerves.", sourceName: "Science of People", sourceURL: "https://www.scienceofpeople.com/color-psychology/", sponsorLogo: "", sponsorURL: "")
let dateMenTip2 = Tip(header: "🔥", title: "On dates, both genders reported feeling a spark when the conversations were mainly about the women, and when men demonstrated alignment with the women", body: "Women are typically more selective about who they are willing to go out with. So talking about the woman is a good strategy toward building a connection. Women reported a sense of connection to men who used appreciative language (\"That's awesome\" or \"Good for you\") and sympathy (\"That must be tough on you\").", sourceName: "Stanford University", sourceURL: "https://news.stanford.edu/news/2013/may/jurafsky-mcfarland-dating-050613.html", sponsorLogo: "", sponsorURL: "")


let dateTipArray0 = [dateTip1, dateTip2, dateTip3, dateTip4]
let dateTipArray1 = [dateTip5, dateTip6, dateTip7, dateTip8]
let dateTipArray2 = [dateTip9, dateTip10, dateTip11, dateTip12]
let dateTipArray3 = [dateTip13, dateTip14, dateTip15, dateTip16]
let dateTipArray4 = [dateTip17, dateTip18, dateTip19, dateTip20]
let dateTipArray5 = [dateTip5, dateTip6, dateTip7, dateTip8]
let dateTipArray6 = [dateTip9, dateTip10, dateTip11, dateTip12]

let dateTopic0 = Topic(title: dateTitle, icon: dateIcon, tip: dateTipArray0)
let dateTopic1 = Topic(title: dateTitle, icon: dateIcon, tip: dateTipArray1)
let dateTopic2 = Topic(title: dateTitle, icon: dateIcon, tip: dateTipArray2)
let dateTopic3 = Topic(title: dateTitle, icon: dateIcon, tip: dateTipArray3)
let dateTopic4 = Topic(title: dateTitle, icon: dateIcon, tip: dateTipArray4)
let dateTopic5 = Topic(title: dateTitle, icon: dateIcon, tip: dateTipArray5)
let dateTopic6 = Topic(title: dateTitle, icon: dateIcon, tip: dateTipArray6)



// MARK: - Grocery Store

let groceryStoreTitle = "Groceries"
let groceryStoreIcon = Constants.Icon.groceries

//0
let groceryStoreTip1 = Tip(header: "🍎", title: "Eat healthy before you shop and you're less likely to buy junk food", body: "Research: Shoppers who ate a small healthy snack before shopping filled their carts with 25% more fruits and veggies than if they didn't eat a healthy snack. \n\nHealthy eating before buying food primes your brain for the decisions you'll make inside the supermarket." , sourceName: "Cornell University", sourceURL: "https://foodpsychology.cornell.edu/discoveries/apple-day-brings-more-apples-your-way", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let groceryStoreTip2 = Tip(header: "😀", title: "Practice kindness: Buy a bag of good groceries and donate it to your local food bank or shelter", body: "Most good deeds don't require the amount of time and organization you think they do. \n\nThe thing that will surprise you the most is how good you'll feel about it." , sourceName: "Canadian Living", sourceURL: "https://www.canadianliving.com/health/mind-and-spirit/article/50-good-deeds-for-50-days", sponsorLogo: "", sponsorURL: "")

let groceryStoreTip3 = Tip(header: "🍳", title: "Eating more protein is a great way to lose weight and belly fat", body: "Protein has been shown to reduce food cravings, boost metabolism, and help you eat fewer calories per day. \n\nBuy these foods: \n• Eggs \n• Seafood \n• Legumes \n• Nuts \n• Meat \n• Dairy products \n• Whole grains" , sourceName: "HealthLine", sourceURL: "https://www.healthline.com/nutrition/how-protein-can-help-you-lose-weight", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let groceryStoreTip4 = Tip(header: "🛒", title: "There's a lot of germs in a supermarket. Use the hand sanitizer when you walk out of the store or wash your hands when you get home", body: "The germiest things include: \n• Shopping carts \n• The produce, meat, and seafood aisles \n• Credit card and self-checkout touch screens \n• Your reusable bag" , sourceName: "Today", sourceURL: "https://www.today.com/food/10-germiest-things-grocery-store-how-stay-safe-t109564", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//1
let groceryStoreTip5 = Tip(header: "💐", title: "It is no coincidence that most supermarkets place the bakery, flower and produce departments at the entrance: the scent of fresh bread or fruit makes you hungry and entices you to buy more", body: "The part of our brain that is responsible for cognitive thinking is bypassed so before we are even aware of a scent’s existence, an emotional reaction has already been ignited.", sourceName: "American Marketing Association", sourceURL: "https://www.ama.org/publications/eNewsletters/Pages/good-smells-good-marketing-how-use-scent-advantage.aspx", sponsorLogo: "", sponsorURL: "")

let groceryStoreTip6 = Tip(header: "🤔", title: "Think healthy before you shop and you'll buy healthier foods", body: "Research found that priming your brain with healthy food cues (like reading a health-focused magazine or aritcle) before you shop may subconsciously influence what you buy.  " , sourceName: "International Journal of Obesity", sourceURL: "https://www.nature.com/articles/ijo2013136", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let groceryStoreTip7 = Tip(header: "🍊", title: "The most important consideration when buying produce is the amount of time it spends away from the plant. Once it's harvested it starts losing vitamin C and other nutrients", body: "If you can’t buy organic (or if flavor matters more than anything else), go for locally grown instead.", sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/2018/07/03/smarter-living/the-terms-on-a-food-label-to-ignore-and-the-ones-to-watch-for.html", sponsorLogo: "", sponsorURL: "")

let groceryStoreTip8 = Tip(header: "💰", title: "Buy what you and your family is realistically going to eat. Buying in bulk only saves money if you actually eat it", body: "In the United States, food waste consumes between 30% to 40% of the food supply. That doesn’t just hurt your wallet, but the planet, too.", sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/2018/07/03/smarter-living/the-terms-on-a-food-label-to-ignore-and-the-ones-to-watch-for.html", sponsorLogo: "", sponsorURL: "")

//2
let groceryStoreTip9 = Tip(header: "💰", title: "The average household wastes 20% of their groceries, costing them $2,000 per year", body: "That's because people impulse-buy at the supermarkets, giving in to the psychological tactics stores use to encourage consumers to shop more. Plan ahead by making a shopping list.", sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2015/04/22/americas-165-billion-food-waste-problem.html", sponsorLogo: "", sponsorURL: "")

let groceryStoreTip10 = Tip(header: "🥫", title: "Look for foods with less than 20% daily value of sodium and saturated fat, less than 10 grams of added sugar, and a nice amount of fiber", body: "The FDA requires that labels of nutrition facts include added sugars and serving size. Even supposed \"single-serving\" packages can contain multiples.", sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/2018/07/03/smarter-living/the-terms-on-a-food-label-to-ignore-and-the-ones-to-watch-for.html?rref=collection%2Fsectioncollection%2Fsmarter-living&action=click&contentCollection=smarter-living&region=stream&module=stream_unit&version=latest&contentPlacement=3&pgtype=sectionfront", sponsorLogo: "", sponsorURL: "")

let groceryStoreTip11 = Tip(header: "☝️", title: "Ads like ten for $10 sound like a great deal. However, you'll get the same savings even if you only buy one item", body: "A survey found that people bought way more items when they saw 10 for $10 deals vs. five for $5 and one for $1 sales. Even if you aren't buying 10 items, your mind will trick you into thinking that the item is such a great deal that you end up buying more of it.", sourceName: "Pop Sugar", sourceURL: "https://www.popsugar.com/smart-living/Supermarket-Psychology-Tricks-18344600?stream_view=1#photo-18474488", sponsorLogo: "", sponsorURL: "")

let groceryStoreTip12 = Tip(header: "👀", title: "Supermarkets place the higher priced items at eye level", body: "Anything a store wants customers to buy is placed at eye level so it's easy to find. Look above and below for similar items with lower prices and fewer markups.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/tricks-stores-use-to-make-you-spend-more-money-2015-10#-9", sponsorLogo: "", sponsorURL: "")

//3
let groceryStoreTip13 = Tip(header: "🍩", title: "Supermarkets place the bakery and flower departments at the entrance because the bright colors and appealing smells are used to get you to buy more", body: "Their appealing smell activates your salivary glands, making you more likely to purchase on impulse.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/tricks-stores-use-to-make-you-spend-more-money-2015-10#-5", sponsorLogo: "", sponsorURL: "")

let groceryStoreTip14 = Tip(header: "🥛", title: "Supermarkets place dairy products and other essentials on the back wall to get you to buy more", body: "This forces you to walk through the whole store to reach them, increasing your odds of throwing some items into your cart along the way.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/tricks-stores-use-to-make-you-spend-more-money-2015-10#-6", sponsorLogo: "", sponsorURL: "")

let groceryStoreTip15 = Tip(header: "💰", title: "Check the unit prices on items that you are comparing", body: "This will help you to see that the cost-per-unit on one item may be less than the cost-per-unit on a comparable item, which would mean a better deal for you.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/tricks-stores-use-to-make-you-spend-more-money-2015-10#-6", sponsorLogo: "", sponsorURL: "")

let groceryStoreTip16 = Tip(header: "💐", title: "Make someone happy today by surprising them with flowers", body: "In one study, 100% of the participants who received flowers responded with a true smile indicating happiness. \n\nWhile only 90% and 77% of the participants who received a fruit basket and candle, respectively, responded with a true smile. \n\nIn addition, only the participants who received the flowers reported a longer term increase in positive mood.", sourceName: "SAGE Journals", sourceURL: "https://journals.sagepub.com/doi/full/10.1177/147470490500300109", sponsorLogo: "", sponsorURL: "")

//4
let groceryStoreTip17 = Tip(header: "🛒", title: "Shopping carts were invented to make it easy for consumers to buy more", body: "The larger the cart, the more prone you are to spending more, so opt for the handbasket — or even the old-school armful of purchases — if you can.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/tricks-stores-use-to-make-you-spend-more-money-2015-10#-3", sponsorLogo: "", sponsorURL: "")

let groceryStoreTip18 = Tip(header: "🍕", title: "Consuming too much sodium may contribute to high blood pressure, which is a risk factor for heart disease, the number 1 killer worldwide", body: "Read food labels and avoid products that have more than 140 milligrams of sodium per serving \n\n• Choose fresh or frozen vegetables rather than canned. \n\n• Avoid frozen convenience foods like frozen dinners, pizzas, and snack foods.\n\n• Avoid lunch meats and sausages.", sourceName: "VeryWell", sourceURL: "https://www.verywellfit.com/why-and-how-to-cut-sodium-from-your-diet-2506570", sponsorLogo: "", sponsorURL: "")

let groceryStoreTip19 = Tip(header: "🎶", title: "Supermarkets play music with a slower beat so you move through the aisles more slowly, increasing the likelihood you'll stop to pick up items", body: "Study: People said pleasurable music in the background increased the likelihood they'd spend more time and money in the store — and thwarted their negative emotions.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/yes-grocery-stores-are-tricking-you-into-spending-more-money-2017-2", sponsorLogo: "", sponsorURL: "")
let groceryStoreTip20 = Tip(header: "😀", title: "Practice kindness: Let the person in line behind you go first", body: "People who practice kindness as a habit have 23% less cortisol (the stress hormone). \n\nAnd studies have shown that developing a habit of kindness reduces pain, anxiety, and depression." , sourceName: "Inc.", sourceURL: "https://www.inc.com/scott-mautz/want-to-spread-joy-at-work-this-month-try-these-31-random-acts-of-christmas-kind.html", sponsorLogo: "", sponsorURL: "")

// 5
let groceryStoreTip21 = Tip(header: "🍤", title: "The point of those bite-sized free samples of food are not to get you to buy a particular product. It’s to trick your body into thinking it’s hungry", body: "If they can tantalize your taste buds but not satisfy your hunger, you become a less disciplined shopper and buy more. \n\nAs much as 50% of purchases are unplanned.", sourceName: "Bon Appétit", sourceURL: "https://www.bonappetit.com/test-kitchen/how-to/article/supermarket-psychology", sponsorLogo: "", sponsorURL: "")

let groceryStoreTip22 = Tip(header: "🥜", title: "45% of all U.S. deaths from heart disease, stroke, and diabetes were based on eating too much or too little of 10 foods", body: "Buy More: \n• Nuts/seeds \n• Seafood omega-3 fat \n• Vegetables \n• Fruits \n• Whole grains \n• Polyunsaturated fat \n\nBuy Less: \n• High-sodium foods \n• Processed red meats \n• Sugar-sweetened beverages \n• Unprocessed red meat" , sourceName: "Tufts University", sourceURL: "https://www.nutritionletter.tufts.edu/issues/13_7/current-articles/Diet-Causing_2181-1.html", sponsorLogo: "", sponsorURL: "")// display picture of what foods to eat

let groceryStoreTip23 = Tip(header: "🥣", title: "Tips for buying healthy cereal", body: "• Look for whole-grain cereals such as those made with corn, whole wheat, oats, or brown rice. \n\n• Choose a cereal that has at least 5 grams of fiber per serving. \n\n• Avoid cereals that contain more than 5 grams of sugar per serving.", sourceName: "Harvard Health Publishing", sourceURL: "https://www.health.harvard.edu/nutrition/breakfast-and-beyond-the-case-for-a-healthy-morning-meal", sponsorLogo: "", sponsorURL: "")

let groceryStoreTip24 = Tip(header: "🍫", title: "Warning: A supermarket's most profitable section of the store tends to be checkout", body: "The person who does the most shopping at checkout is the 3rd person in line. \n\nThat’s the person who isn’t paying for groceries, or placing items on the conveyer belt, but who has nothing to do but wait.", sourceName: "Bon Appétit", sourceURL: "https://www.bonappetit.com/test-kitchen/how-to/article/supermarket-101", sponsorLogo: "", sponsorURL: "")

//6
let groceryStoreTip25 = Tip(header: "🛒", title: "Use a basket to avoid overspending", body: "Shopping carts were designed to influence larger purchases. \n\nWith a large shopping cart, consumers are LESS likely to realize the quantity of goods they're actually buying." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/build-these-10-shopping-habits-to-save-big-2012-3", sponsorLogo: "", sponsorURL: "")

let groceryStoreTip26 = Tip(header: "🙅‍♀️", title: "Eat healthly: Avoid the center aisles - that's where the stores try to get consumers to buy the highly profitable junk foods", body: "To eat healhty, focus on the foods at the outer edge of the store: \n\n• Fruit \n• Vegetables \n• Meat \n• Fish \n• Dairy", sourceName: "UC Berkeley News", sourceURL: "https://www.berkeley.edu/news/berkeleyan/2006/04/13_nestle.shtml", sponsorLogo: "", sponsorURL: "")

let groceryStoreTip27 = Tip(header: "⏱", title: "Reduce impulse purchases by shopping for less than 23 minutes", body: "Brain scans reveal that consumers only act rationally for the first 23 minutes of shopping. \n\nAfterwards, the emotional part of the brain becomes more active which is not good at making money-based decisions.", sourceName: "BBC News", sourceURL: "https://www.bbc.com/news/uk-wales-north-west-wales-24995031", sponsorLogo: "", sponsorURL: "")

let groceryStoreTip28 = Tip(header: "😀", title: "Practice Kindness: If you're in line with a full cart, let the person behind you who only has 5-10 items go in front of you", body: "Most good deeds don't require the amount of time and organization you think they do. \n\nThe thing that will surprise you the most is how good you'll feel about it." , sourceName: "Canadian Living", sourceURL: "https://www.canadianliving.com/health/mind-and-spirit/article/50-good-deeds-for-50-days", sponsorLogo: "", sponsorURL: "")


//7
let groceryStoreTip29 = Tip(header: "😀", title: "Study: Consumers who shop with a list are less likely to make impulse purchases", body: "The keys to following this rule: \n\n• Bring the list with you to the store \n• Commit yourself to sticking to the list" , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/build-these-10-shopping-habits-to-save-big-2012-3", sponsorLogo: "", sponsorURL: "")
let groceryStoreTip30 = Tip(header: "💐", title: "Boost your mood by buying flowers for your home", body: "Research: The presence of plants in the home makes people feel less stressed and more compassionate toward others. \n\nResults from the study suggests that placing a few flowers in your home can make you more relaxed and improve your mood." , sourceName: "The Harvard Crimson", sourceURL: "https://www.thecrimson.com/article/2006/10/26/a-bouquet-a-day-a-new/", sponsorLogo: "", sponsorURL: "")
let groceryStoreTip31 = Tip(header: "🤔", title: "It's counter-intuitive, but to checkout faster you should get in line behind the cart loaded up the most", body: "The science behind it states that if you choose a line with lots of people each carrying a few items, your wait time is increased by each interaction between the customer and checkout clerk.", sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/business/7-tricks-saving-time-money-grocery-store-ncna775791", sponsorLogo: "", sponsorURL: "")

let groceryStoreTip32 = Tip(header: "🛒", title: "Safety Tip: After checkout, use a grocery cart when you have many grocery bags", body: "You make for an easy victim of robbery when when your arms are full." , sourceName: "Security Today", sourceURL: "https://securitytoday.com/articles/2010/04/15/tips-street-smart.aspx?m=1", sponsorLogo: "", sponsorURL: "")//PM Tip

//8
let groceryStoreTip33 = Tip(header: "", title: "Live longer: Buy smaller packages and you'll consume less calories", body: "Study: When given large packages of food, participants consumed 23% more (about 150 calories) than when they were given medium packages.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")
let groceryStoreTip34 = Tip(header: "", title: "Live longer: Buy vegetables that are dark green or red because they tend to have more nutrients than lighter varieties", body: "Leafy greens are low in sodium and calories, and they are completely cholesterol-free. \n\nA healthy plant-based diet has been associated with: \n• an extra decade of life expectancy \n• a reduced risk of diabetes and heart disease.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")
let groceryStoreTip35 = Tip(header: "", title: "Live longer: Goat's milk has more nutritional value than cow's milk", body: "One glass of goat's milk contains 13% more calcium, 25% more vitamin B6, 47% vitamin A, 134% more potassium, and 3 times more vitamin B3. \n\nStudy: Compared to cow's milk, goat's milk may be better at preventing mineral losses in bones and iron deficiencies.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")
let groceryStoreTip36 = Tip(header: "", title: "Standing in line - Reduce stress, decrease anxiety, and feel kinder towards the people around you with a quick mindfulness practice", body: "1. Take a few deep breaths to center yourself in the moment. \n2. Notice your thoughts and surroundings without reacting or judging. \n3. Acknowledge the presence of others and wish them well. \n\nStudies show that mindfulness helps you stay calm and improves your outlook on life." , sourceName: "DeStress Monday", sourceURL: "https://www.destressmonday.org/mindful-boost-waiting-line/", sponsorLogo: "", sponsorURL: "")

//9
let groceryStoreTip37 = Tip(header: "", title: "Live Longer: Buy goat's milk", body: "Goat milk is a great source of calcium, potassium, and the stress-relieving hormone tryptophan. It's unlikely to cause an allergic reaction and can usually be tolerated by people who are lactose intolerant. It's also easily digestible for older people.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")
let groceryStoreTip38 = Tip(header: "", title: "Live Longer: Buy darker honey", body: "Study: Darker honey was found to have more antioxidants and less water than lighter honey. \n\nHoney may help control blood sugar levels and slow the oxidation of \"bad\" cholesterol levels in the blood, which is a good thing.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")
let groceryStoreTip39 = Tip(header: "", title: "Prevent Weight Gain: Use the self-checkout kiosks", body: "Study: Impulse purchases dropped 32.1% for women—and 16.7% for men—when they were the ones to scan their items and swipe their credit card. \n\nAlthough not all impulse buys are bad for your belly, 80% of candy and 61% of salty snack purchases are unplanned.", sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/things-making-you-fatter/", sponsorLogo: "", sponsorURL: "")
let groceryStoreTip40 = Tip(header: "", title: "Research: Eating less meat and more vegetables can help fight climate change", body: "58% of all food emissions come from animal products. Eating meat contributes to global warming through the methane gas the animals produce, but also via deforestation to expand pastures. \n\nRising temperatures, increased rain and more extreme weather events will all have a negative impact on crops and livestock.", sourceName: "BBC News", sourceURL: "https://www.bbc.com/news/science-environment-49238749", sponsorLogo: "", sponsorURL: "")

//10
let groceryStoreTip41 = Tip(header: "", title: "Start At The Produce Aisles: You're more likely to buy healthy foods when your cart is empty", body: "Even if it's fast and furious, simply seeing more fruits and vegetables while your cart is empty makes them more tempting. \n\nNext, hit the other healthier aisles - like those with canned and frozen fruits and vegetables - before you go to the Crunch & Munch sections.", sourceName: "Slim By Design", sourceURL: "https://www.slimbydesign.com/", sponsorLogo: "", sponsorURL: "")
let groceryStoreTip42 = Tip(header: "", title: "Warning: If you're buying in bulk, you'll eat it faster and in greater quantities than you otherwise would", body: "Study: People who filled their kitchens with chips, juice boxes, cookies, and ramen noodles ate half of everything they bought within the first week of buying it. \n\nSolution: Store bulk packages as far away from reach as possible - in the basement or a distant cupboard.", sourceName: "Slim By Design", sourceURL: "https://www.slimbydesign.com/", sponsorLogo: "", sponsorURL: "")
let groceryStoreTip43 = Tip(header: "", title: "Eat before you shop or chew gum while shopping", body: "When we're hungry, we buy more unhealthy foods that are conveinent enough to eat right away. \n\nStudy: People who chewed gum while shopping bought 7% LESS junk food than those who weren't chewing gum.", sourceName: "Slim By Design", sourceURL: "https://www.slimbydesign.com/", sponsorLogo: "", sponsorURL: "")
let groceryStoreTip44 = Tip(header: "", title: "Keep the Half-Plate Rule in mind when you shop", body: "Half of your plate should be fruits and veggies, or salad. \n\nBut in order for that to happen, you have to be well stocked with these foods. \n\nShop the healthy aisles first: produce, lean dairy, and the whole grain aisle.", sourceName: "Slim By Design", sourceURL: "https://www.slimbydesign.com/", sponsorLogo: "", sponsorURL: "")

//11
let groceryStoreTip45 = Tip(header: "", title: "Survey: The average person exceeds their weekly grocery budget goal by +39%", body: "On average, the weekly amount that people spend — not including bills like housing and utilities — is $340, or $143 more than the average $197 budgeted. \n\nThat extra spending equals roughly $7,400 each year of overspending. \n\nAlign your spending with your values and cut back in areas that don’t reflect them." , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2019/12/26/consumers-overspend-by-7400-a-year-here-are-weekly-trouble-spots.html", sponsorLogo: "", sponsorURL: "")

//
// Morning
let groceryStoreAMTip1 = Tip(header: "🌅", title: "Shop in the morning if you want the best selection", body: "Early to mid-morning is the best time of day for the finest selection. \n\nThat’s when dairy, bakery goods, produce, meat and seafood are newly stocked and freshest.", sourceName: "Today", sourceURL: "https://www.today.com/food/best-time-go-grocery-store-worst-t108655", sponsorLogo: "", sponsorURL: "")

// Weekend
let groceryStoreWeekendTip1 = Tip(header: "🛒", title: "Weekends are the busiest days to grocery shop", body: "Midday on Saturday and Sunday is the most crowded time to go grocery shoping.", sourceName: "Today", sourceURL: "https://www.today.com/food/best-time-go-grocery-store-worst-t108655", sponsorLogo: "", sponsorURL: "")

// Weekdays, PM
let groceryStoreWeekdayTip1 = Tip(header: "🌇", title: "The most crowded times to shop during the week are between 4 p.m. and 6 p.m.", body: "Shop after dinner time if you want to avoid the crowds. Mondays and Tuesdays are the least busy days but stores may be out of a lot of items.", sourceName: "Today", sourceURL: "https://www.today.com/food/best-time-go-grocery-store-worst-t108655", sponsorLogo: "", sponsorURL: "")

//WEEK 1 Tips
let groceryStoreTipArray0 = [groceryStoreTip1, groceryStoreTip2, groceryStoreTip3, groceryStoreTip4]
let groceryStoreTipArray1 = [groceryStoreTip5, groceryStoreTip6, groceryStoreTip7, groceryStoreTip8]
let groceryStoreTipArray2 = [groceryStoreTip9, groceryStoreTip10, groceryStoreTip11, groceryStoreTip12]
let groceryStoreTipArray3 = [groceryStoreTip13, groceryStoreTip14, groceryStoreTip15, groceryStoreTip16]
let groceryStoreTipArray4 = [groceryStoreTip17, groceryStoreTip18, groceryStoreTip19, groceryStoreTip20]
let groceryStoreTipArray5 = [groceryStoreTip21, groceryStoreTip22, groceryStoreTip23, groceryStoreTip24]
let groceryStoreTipArray6 = [groceryStoreTip25, groceryStoreTip26, groceryStoreTip27, groceryStoreTip28]

//WEEK 2 Tips
let groceryStoreTipArray7 = [groceryStoreTip29, groceryStoreTip30, groceryStoreTip31, groceryStoreTip32]
let groceryStoreTipArray8 = [groceryStoreTip33, groceryStoreTip34, groceryStoreTip35, groceryStoreTip36]
let groceryStoreTipArray9 = [groceryStoreTip37, groceryStoreTip38, groceryStoreTip39, groceryStoreTip40]
let groceryStoreTipArray10 = [groceryStoreTip41, groceryStoreTip42, groceryStoreTip43, groceryStoreTip44]
let groceryStoreTipArray11 = [groceryStoreTip45, groceryStoreTip18, groceryStoreTip19, groceryStoreTip20]//WIP
let groceryStoreTipArray12 = [groceryStoreTip21, groceryStoreTip22, groceryStoreTip23, groceryStoreTip24]
let groceryStoreTipArray13 = [groceryStoreTip25, groceryStoreTip26, groceryStoreTip27, groceryStoreTip28]



//WEEK 1
let groceryStoreTopic0 = Topic(title: groceryStoreTitle, icon: groceryStoreIcon, tip: groceryStoreTipArray0)
let groceryStoreTopic1 = Topic(title: groceryStoreTitle, icon: groceryStoreIcon, tip: groceryStoreTipArray1)
let groceryStoreTopic2 = Topic(title: groceryStoreTitle, icon: groceryStoreIcon, tip: groceryStoreTipArray2)
let groceryStoreTopic3 = Topic(title: groceryStoreTitle, icon: groceryStoreIcon, tip: groceryStoreTipArray3)
let groceryStoreTopic4 = Topic(title: groceryStoreTitle, icon: groceryStoreIcon, tip: groceryStoreTipArray4)
let groceryStoreTopic5 = Topic(title: groceryStoreTitle, icon: groceryStoreIcon, tip: groceryStoreTipArray5)
let groceryStoreTopic6 = Topic(title: groceryStoreTitle, icon: groceryStoreIcon, tip: groceryStoreTipArray6)

//WEEK 2
let groceryStoreTopic7 = Topic(title: groceryStoreTitle, icon: groceryStoreIcon, tip: groceryStoreTipArray7)
let groceryStoreTopic8 = Topic(title: groceryStoreTitle, icon: groceryStoreIcon, tip: groceryStoreTipArray8)
let groceryStoreTopic9 = Topic(title: groceryStoreTitle, icon: groceryStoreIcon, tip: groceryStoreTipArray9)
let groceryStoreTopic10 = Topic(title: groceryStoreTitle, icon: groceryStoreIcon, tip: groceryStoreTipArray10)
let groceryStoreTopic11 = Topic(title: groceryStoreTitle, icon: groceryStoreIcon, tip: groceryStoreTipArray11)
let groceryStoreTopic12 = Topic(title: groceryStoreTitle, icon: groceryStoreIcon, tip: groceryStoreTipArray12)
let groceryStoreTopic13 = Topic(title: groceryStoreTitle, icon: groceryStoreIcon, tip: groceryStoreTipArray13)


//Morning
let groceryStoreAMTipArray0 = [groceryStoreAMTip1, groceryStoreTip21, groceryStoreTip22, groceryStoreTip23]
let groceryStoreAMDTopic0 = Topic(title: groceryStoreTitle, icon: groceryStoreIcon, tip: groceryStoreAMTipArray0)

// Weekend
let groceryStoreWENDTipArray0 = [groceryStoreWeekendTip1, groceryStoreTip21, groceryStoreTip22, groceryStoreTip23]
let groceryStoreWENDTopic0 = Topic(title: groceryStoreTitle, icon: groceryStoreIcon, tip: groceryStoreWENDTipArray0)
// Weekday
let groceryStoreWDAYTipArray0 = [groceryStoreWeekdayTip1, groceryStoreTip5, groceryStoreTip10, groceryStoreTip15] // WIP
let groceryStoreWDAYTopic0 = Topic(title: groceryStoreTitle, icon: groceryStoreIcon, tip: groceryStoreWDAYTipArray0)




// MARK: - SHOPPING, Clothes

let shoppingClothesTitle = "Shopping"
let shoppingClothesIcon = Constants.Icon.shopping

//0
let shoppingClothesTip1 = Tip(header: "🚶‍♂️", title: "Shop healthier by getting exercise", body: "Park far away from the entrance and build a few extra, calorie-burning steps into your day. Visit stores on different levels and take the stairs, not the escalator. " , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/2012/08/11/healthy-weekend_n_1760981.html?slideshow=true#gallery/243861/2", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let shoppingClothesTip2 = Tip(header: "🧠", title: "Harvard professor says 95% of purchasing decisions are subconscious", body: "Emotion is what really drives the purchasing behaviors. \n\nTo achieve the highest emotional response, marketers target you through many different senses, including colors and scents in stores." , sourceName: "Inc.", sourceURL: "https://www.inc.com/logan-chierotti/harvard-professor-says-95-of-purchasing-decisions-are-subconscious.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let shoppingClothesTip3 = Tip(header: "👃", title: "People stay 40% longer in businesses that smell good, resulting in more purchases", body: "Scents evoke an emotional response and people spend more time in places when they feel good. Scent’s main role is to make the customer feel comfortable, happy and put them at ease so they will spend more time in the store, spend more money and ultimately make them more likely to return." , sourceName: "American Marketing Association", sourceURL: "https://www.ama.org/publications/eNewsletters/Pages/good-smells-good-marketing-how-use-scent-advantage.aspx", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let shoppingClothesTip4 = Tip(header: "🎶", title: "Slow music and cool colors like blues and greens encourage them to spend more", body: "Studies show that slow music makes people shop leisurely and spend more. \n\nClassical music encourages more expensive purchases." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/tricks-stores-use-to-make-you-spend-more-money-2015-10#-12", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//1
let shoppingClothesTip5 = Tip(header: "🔥", title: "Easy ways to burn calories while you're shopping", body: "• Walk or ride your bike to your destination. \n• If you're driving, park your car as far away from the door as possible when running errands. \n• If you use public transportation, ride standing up and get off a stop early and walk the extra distance. \n• At the mall: take the stairs and skip escalators and elevators.", sourceName: "The Active Times", sourceURL: "https://www.theactivetimes.com/20-easy-ways-build-exercise-your-daily-routine", sponsorLogo: "", sponsorURL: "")
let shoppingClothesTip6 = Tip(header: "", title: "Survey: The average person exceeds their weekly technology products budget goal by +36%", body: "On average, the weekly amount that people spend — not including bills like housing and utilities — is $340, or $143 more than the average $197 budgeted. \n\nThat extra spending equals roughly $7,400 each year of overspending. \n\nAlign your spending with your values and cut back in areas that don’t reflect them." , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2019/12/26/consumers-overspend-by-7400-a-year-here-are-weekly-trouble-spots.html", sponsorLogo: "", sponsorURL: "")
let shoppingClothesTip7 = Tip(header: "🤓", title: "Forget luxury goods — rich people are investing more in education and health", body: "In the US, the top 1% have been spending less on material goods since 2007. Showing off wealth is no longer the way to signify having wealth because the rich and middle class can now own the same luxary brand. \n\nInstead, the rich are investing in education and health to advance their social status and wealth." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/discreet-wealth-new-status-symbol-rich-people-2018-11", sponsorLogo: "", sponsorURL: "")
let shoppingClothesTip8 = Tip(header: "😀", title: "Study: People feel happier when they buy something for someone else than when they buy something for themselves", body: "This happiness boost was the same regardless of whether the gift cost $20 or $100. \n\nDoing good deeds for others makes people happier, and makes them more likely to do more good deeds in the future." , sourceName: "The Greater Good Science Center at UC Berkeley", sourceURL: "https://greatergood.berkeley.edu/article/item/kindness_makes_you_happy_and_happiness_makes_you_kind", sponsorLogo: "", sponsorURL: "")

//2
let shoppingClothesTip9 = Tip(header: "💸", title: "Research: Most material possessions don’t make us happier, they make less happy", body: "We think the things we buy will bring us happiness, but then we get them and we wonder ‘what’s next? \n\nInstead, it’s things like experiences and having more time to do things we love - and spend time with people we love - that drive happiness. \n\nThe deepest pleasures are derived from interpersonal love, warm relationships, giving, appreciation, and gratitude.", sourceName: "MarketWatch", sourceURL: "https://www.marketwatch.com/story/the-dark-reasons-so-many-rich-people-are-miserable-human-beings-2018-02-22", sponsorLogo: "", sponsorURL: "")
let shoppingClothesTip10 = Tip(header: "🚪", title: "Make kindness a habit: Hold the door for people behind you, especially if the person behind is carrying packages, bags or kids", body: "The opportunity to do a good deed pops up every day. \n\nThe thing that will surprise you the most is how good you'll feel about it." , sourceName: "Canadian Living", sourceURL: "https://www.canadianliving.com/health/mind-and-spirit/article/50-good-deeds-for-50-days", sponsorLogo: "", sponsorURL: "")
let shoppingClothesTip11 = Tip(header: "🚶‍♂️", title: "Reduce impulse shopping. Walk away for 10 minutes", body: "When you feel the urge to buy a product that falls short of your shopping list: Walk away. \n\nGive yourself at least 10 minutes to contemplate the purchase. \n\nMost consumers will either forget about the merchandise or recognize their impulsive behavior." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/build-these-10-shopping-habits-to-save-big-2012-3", sponsorLogo: "", sponsorURL: "")
let shoppingClothesTip12 = Tip(header: "", title: "Standing in line - Reduce stress, decrease anxiety, and feel kinder towards the people around you with a quick mindfulness practice", body: "1. Take a few deep breaths to center yourself in the moment. \n2. Notice your thoughts and surroundings without reacting or judging. \n3. Acknowledge the presence of others and wish them well. \n\nStudies show that mindfulness helps you stay calm and improves your outlook on life." , sourceName: "DeStress Monday", sourceURL: "https://www.destressmonday.org/mindful-boost-waiting-line/", sponsorLogo: "", sponsorURL: "")

//3
let shoppingClothesTip13 = Tip(header: "💵", title: "Millionaire Haibt: Be frugal with you money", body: "Study of 200+ millionaires: \n\n• 67% said they were frugal with their money. \n• 87% said they never purchased a new luxury car in their lives. \n• 30% clipped coupons." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/common-myths-about-rich-people-2015-6", sponsorLogo: "", sponsorURL: "")

let shoppingClothesTip14 = Tip(header: "", title: "The average self-made millionaire saves money by not buying luxary brands. 61% of people who earn $250,000+ a year aren't buying luxury cars at all. They're buying the same Toyotas, Hondas and Fords as the rest of us.", body: "The reason? They’re not willing to spend the money on a premium vehicle that is going to drop up to 70% in value within the first four years. \n\nIt’s also why they avoid leasing cars because it ultimately costs more money. Instead, they invest in items that increase in value." , sourceName: "Entrepreneur", sourceURL: "https://www.entrepreneur.com/article/304219", sponsorLogo: "", sponsorURL: "")
let shoppingClothesTip15 = Tip(header: "💵", title: "Millionaire Haibt: Saving money is critical to financial success. Follow the 80/20 rule: Save 20% of your income while living on 80%.", body: "Research of self-made millionaires: Most didn't become wealthy because they made a lot, but because they saved a lot, and accumulated wealth. \n\n\"Saving money is critical to financial success?\" \n• 88% of rich people agree \n• 52% of poor people agree" , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/common-myths-about-rich-people-2015-6", sponsorLogo: "", sponsorURL: "")

let shoppingClothesTip16 = Tip(header: "", title: "You can score big savings by marking your calendar for the best months to buy the following items", body: "January: linens and bedding, exercise equipment, winter clothing \n\n• February: TVs, tax-filing software, cookware and small kitchen appliances \n\n• March: skis and snowboards, high-end fashion, luggage \n\n• April: tires, cruise vacations, hotel discounts on tax day \n\n• May: mattresses, smart-home hubs, office furniture \n\n• June: gardening tools, gym memberships, camping gear \n\n• July: swimwear, air conditioners \n\n• August: laptops, school supplies, shoes \n\n• September: older iPhone models, grills, summer clothing \n\n• October: outgoing models of sedans and SUVs, Halloween costumes, patio furniture \n\n• November: gaming systems, tablets, large appliances \n\n• December: jewelry, toys, wedding dresses" , sourceName: "Kiplinger", sourceURL: "https://www.kiplinger.com/slideshow/spending/T050-S000-ways-to-stop-wasting-money/index.html", sponsorLogo: "", sponsorURL: "")

//4
let shoppingClothesTip17 = Tip(header: "🤔", title: "The more we value things, the less we value ourselves.", body: "- Bruce Lee \n\nActor, martial artist, philosopher, and founder of the martial art Jeet Kune Do", sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/search?utf8=%E2%9C%93&q=bruce+lee&search_type=quotes", sponsorLogo: "", sponsorURL: "")
let shoppingClothesTip18 = Tip(header: "", title: "67% of millionaires in a 5-year study said they were frugal (aka spending their money wisely)", body: "Being frugal will not make you rich, but it does mean you will keep more of your money as your purchases are driven by quality and price." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/self-made-millionaires-habits-build-wealth-2017-9#2-they-are-frugal-2", sponsorLogo: "", sponsorURL: "")
let shoppingClothesTip19 = Tip(header: "", title: "Increase Happiness: Avoid luxury malls, websites, mailing lists, and any other places where you're subtly reminded of material goods that you're \"missing\"", body: "Don't linger on Facebook or Instagram where temptation to compare yourself with idealized profiles abounds. \n\nConsider volunteering your time to help people who have less than you. \n\nYou'll feel better about your own lot in life." , sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")
let shoppingClothesTip20 = Tip(header: "", title: "Studies show that those who spend money on experiences, have a greater well-being than those who purchase material possessions", body: "New things glisten, but the thrill of their of their novelty fades, while experiences become part of our identity.", sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")

//5
let shoppingClothesTip21 = Tip(header: "👕", title: "Simplify your day and reduce decision fatigue: buy a work uniform", body: "Steve Jobs, Mark Zuckerberg, and Dr. Dre all use work uniforms. \n\nHaving a regular uniform makes it quick and easy to get dressed. \n\nYou can conserve all that decision-making power directly towards more important decisions. \n\nA go-to work uniform saves you time shopping. \n\nYou know what you're looking for and can get right to your favorite store. \n\nOr, if you know your size, style, and color, you can order everything online." , sourceName: "Inc.", sourceURL: "https://www.inc.com/craig-bloem/this-1-unusual-habit-helped-make-mark-zuckerberg-steve-jobs-dr-dre-successful.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let shoppingClothesTip22 = Tip(header: "", title: "Survey: The average person exceeds their weekly shopping budget goal by +40% because of online shopping", body: "If online shopping is a weakness, one trick is to leave the item in your cart for at least 24 hours. \n\nChances are it’s an impulse purchase. \n\nBy delaying it a day or longer, you give time for that impulse to cool off." , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2019/12/26/consumers-overspend-by-7400-a-year-here-are-weekly-trouble-spots.html", sponsorLogo: "", sponsorURL: "")
let shoppingClothesTip23 = Tip(header: "", title: "Increase Happiness: Gift experiences, not things", body: "Rethink your definition of gifts - both those given to loved ones and those you provide yourself. \n\nConsider offering experiences instead of physical objects, for example: \n\n• Cooking classes \n• A weekend vacation \n• Concert tickets \n• A dinner out on the town", sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")

//WEEK 1
//0
let shoppingClothesTipArray0 = [shoppingClothesTip1, shoppingClothesTip2, shoppingClothesTip3, shoppingClothesTip4]
let shoppingClothesTopic0 = Topic(title: shoppingClothesTitle, icon: shoppingClothesIcon, tip: shoppingClothesTipArray0)
//1
let shoppingClothesTipArray1 = [shoppingClothesTip5, shoppingClothesTip6, shoppingClothesTip7, shoppingClothesTip8]
let shoppingClothesTopic1 = Topic(title: shoppingClothesTitle, icon: shoppingClothesIcon, tip: shoppingClothesTipArray1)
//2
let shoppingClothesTipArray2 = [shoppingClothesTip9, shoppingClothesTip10, shoppingClothesTip11, shoppingClothesTip12]
let shoppingClothesTopic2 = Topic(title: shoppingClothesTitle, icon: shoppingClothesIcon, tip: shoppingClothesTipArray2)
//3
let shoppingClothesTipArray3 = [shoppingClothesTip13, shoppingClothesTip14, shoppingClothesTip15, shoppingClothesTip16]
let shoppingClothesTopic3 = Topic(title: shoppingClothesTitle, icon: shoppingClothesIcon, tip: shoppingClothesTipArray3)
//4
let shoppingClothesTipArray4 = [shoppingClothesTip17, shoppingClothesTip18, shoppingClothesTip19, shoppingClothesTip20]
let shoppingClothesTopic4 = Topic(title: shoppingClothesTitle, icon: shoppingClothesIcon, tip: shoppingClothesTipArray4)
//5
//WIP
let shoppingClothesTipArray5 = [shoppingClothesTip21, shoppingClothesTip22, shoppingClothesTip23, shoppingClothesTip8]
let shoppingClothesTopic5 = Topic(title: shoppingClothesTitle, icon: shoppingClothesIcon, tip: shoppingClothesTipArray5)
//6
let shoppingClothesTipArray6 = [shoppingClothesTip9, shoppingClothesTip10, shoppingClothesTip11, shoppingClothesTip12]
let shoppingClothesTopic6 = Topic(title: shoppingClothesTitle, icon: shoppingClothesIcon, tip: shoppingClothesTipArray6)

//WEEK 2

// MARK: - Commute, AM

let commuteAMTitle = "Commute"
let commuteAMIcon = Constants.Icon.commute

///// WEEK 1
//// MON
let commuteAMTip1 = Tip(header: "📖", title: "Be productive on your commute", body: "• Read a book \n• Listen to a podcast or audiobook \n• Use a meditation app \n• Learn a new language" , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/what-to-do-on-your-commute-2015-12#5-listen-to-music-or-audio-books-5", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let commuteAMTip2 = Tip(header: "🚘", title: "Study: Long commutes are bad for your health and productivity", body: "Longer-commuting workers were more likely to suffer from depression, have financial worries, and report multiple aspects of work-related stress. \n\nThey were also more likely to get less than the recommended seven hours of sleep each night and more likely to be obese." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/long-commutes-have-an-impact-on-health-and-productivity-2017-5", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let commuteAMTip3 = Tip(header: "🌬", title: "Practice calming your mind or enjoy the environment around you", body: "If you spend a majority of your commute doing some deep breathing through your nose and being mindful, it can be an excellent way to relax before you start the workday.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/what-to-do-on-your-commute-2015-12#8-relax-8", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let commuteAMTip4 = Tip(header: "📝", title: "Use this time to check in on your goals", body: "Think about what makes you happy and what areas of your life could be improved. \n\nIt's a great way to stay on track and make adjustments with your goals." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/what-to-do-on-your-commute-2015-12#3-reflect-3", sponsorLogo: "TBD", sponsorURL: "www.test.com")

// TUE
let commuteTuesdayAMTip0 = Tip(header: "🚘", title: "The safest day to drive to work is Tuesday", body: "Analysis of US Car Crash-Related Fatalities in 2016: Tuesday was the safest day of the week to drive. \n\nAnd morning rush-hour was found to be safer (less deadly accidents) than afternoon rush-hour (more deadly accidents)." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/rachael-yahne/mantras_b_6919316.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let commuteAMTip5 = Tip(header: "🗣", title: "Reclaim your commute time by repeating a mantra", body: "The more you repeat a phrase, the more it becomes a part of you. Repeat a phrase internally or out loud for 5-20 minutes a day. Try: \"I have everything I need,\" \"I choose to be happy\", or \"I am a voice for peace\"." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/rachael-yahne/mantras_b_6919316.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let commuteAMTip6 = Tip(header: "🤔", title: "Spend 5-10 minutes thinking and planing out your day", body: "Think hour by hour. \n\nWhat will make this day a success? \n\nWith whom are you meeting? \n\nWhat are you trying to accomplish? \n\nWhat might throw you off? \n• How will you handle it? \n\nDo you expect to have any difficult conversations? \n• How will you approach them? \n\nAny risks you want to take? \n• How will you initiate them? ", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2015/01/get-more-done-during-your-commute", sponsorLogo: "Sponsor", sponsorURL: "sponsorURL")
let commuteAMTip7 = Tip(header: "🚗", title: "Economists found that for every hour you spend commuting, one way, you will have to make 40% more in salary to have the same level of well-being in life as non-commuters", body: "People overestimate the value of the things they'll obtain by commuting -- more money, more material goods, more prestige -- and underestimate the benefit of what they are losing: social connections, hobbies, sleep, and health.", sourceName: "The New Yorker", sourceURL: "https://www.newyorker.com/magazine/2007/04/16/there-and-back-again", sponsorLogo: "Sponsor", sponsorURL: "sponsorURL")
/// WED
let commuteAMTip8 = Tip(header: "😐", title: "Every 20 minute increase in commute time has the same effect as a 19% pay cut for job satisfaction", body: "Long journeys by bus were associated with the biggest reduction in job satisfaction. \n\nJob satisfaction can be improved if workers have opportunities to reduce the time spent commuting, to work from home, and/or to walk or cycle to work.", sourceName: "The Telegraph", sourceURL: "https://www.telegraph.co.uk/news/2017/10/23/20-minute-increase-commute-time-bad-taking-pay-cut-study-finds/", sponsorLogo: "Sponsor", sponsorURL: "sponsorURL")
let commuteAMTip9 = Tip(header: "🤔", title: "\"What is your favorite place to think big?\"", body: "Microsoft founder Bill Gates said he thinks big while driving. \n\nSara Blakely, CEO of Spanx, said she does her best thinking in her car on the commute to work. She even wakes up an hour early to get more commuting time." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/mark-zuckerberg-bill-gates-best-place-to-think-2018-11", sponsorLogo: "", sponsorURL: "")
let commuteAMTip10 = Tip(header: "🙌", title: "Use this time to do something that improves your life", body: "If you drive you can use the time to think, listen to music, or listen to a book on CD. If you take the bus or train, you could use the time to read, write, or meditate. \n\nBIf you walk or bike, you can use the time to get in your daily exercise. If you carpool, you can use the time to socialize and network.", sourceName: "Fast Company", sourceURL: "https://www.fastcompany.com/3028274/two-surprising-ways-to-improve-your-commute", sponsorLogo: "", sponsorURL: "")
let commuteAMTip11 = Tip(header: "🚴‍♂️", title: "The morning commute was ranked as the worst thing you’ll do all day but you'll be happiest if you walk, bike, or take the train", body: "Survey of 900 women: Their LEAST happy activity was morning commute followed by working and evening commute. \n\nAnother study found that people who walk, bike, or take the train are happier than people who drive, take the bus, or take the subway.", sourceName: "The Cut", sourceURL: "https://www.thecut.com/2015/03/11-facts-about-your-soul-sucking-commute.html", sponsorLogo: "", sponsorURL: "")

///// THU
let commuteAMTip12 = Tip(header: "😀", title: "Getting into a good mood now may improve your job performance by 10%", body: "Employees who were in a positive mood provided higher-quality service: they were more articulate on the phone with fewer \"ums\" and used more proper grammar. \n\nEmployees who were in a negative mood tended to take more frequent breaks from their duties to cope with the stress. These small breaks piled up, leading to a 10% loss of productivity.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2016/07/how-your-morning-mood-affects-your-whole-workday", sponsorLogo: "", sponsorURL: "")
let commuteAMTip13 = Tip(header: "🚘", title: "Breathe in cleaner air by driving with the windows up and the A/C on", body: "In cases where the A/C was used, the indoor cabin air had 20%-34% fewer pollutants. And keeping the windows closed offered a protective boost between 8%-44%. \n\nIt’s important to note that the fan doesn’t offer the same protection as the A/C. \n\nWhen the A/C is on, you have a cold evaporator that is cooling the air as it passes. This cold surface attracts the pollutant particles, and they deposit there, as opposed to being diffused into the air you’re breathing.", sourceName: "Readers Digest", sourceURL: "https://www.rd.com/health/wellness/banish-pollution-during-commute/", sponsorLogo: "", sponsorURL: "")
let commuteAMTip14 = Tip(header: "🤧", title: "Decrease your risk of getting sick during your commute", body: "Carry these items with with you: \n\n• Antibacterial hand sanitizer or wipes \n\n• Sunscreen \n\n• A relaxing playlist, podcast, or book to reduce stress \n\n• A helmet, and other protective gear, if you bike or ride a scooter", sourceName: "Readers Digest", sourceURL: "https://www.rd.com/health/conditions/commute-making-you-sick/", sponsorLogo: "", sponsorURL: "")
let commuteAMTip15 = Tip(header: "🚘", title: "If you are sitting in a car, train, or bus for long periods of time every workday, you are putting yourself at risk for heart disease, diabetes, and premature death", body: "Sitting for long periods can increase the risk of blood clots. \n\nGet off of the bus or train a stop or two early to get blood flowing, park your car farther away from the office, or remind yourself to take a walk at lunch.", sourceName: "Readers Digest", sourceURL: "https://www.rd.com/health/conditions/commute-making-you-sick/", sponsorLogo: "", sponsorURL: "")

///// FRI
let commuteAMTip16 = Tip(header: "🤧", title: "Reduce your chances of getting sick: Avoid touching your face, use hand sanitizer after touching a public service, and wash your hands as soon as you get to work", body: "Just touching something does nothing. \n\nYou get sick when you introduce germs to your mouth, eyes, or nose. \n\nIt’s OK to get germs on your hands if you wash them or use antibacterial gel and don’t touch your face.", sourceName: "Readers Digest", sourceURL: "https://www.rd.com/health/conditions/commute-making-you-sick/", sponsorLogo: "", sponsorURL: "")
let commuteAMTip17 = Tip(header: "🚗", title: "Commuting long distances is associated with decreased cardio fitness, increased weight, and high blood pressure", body: "The more time spent commuting means less time to exercise. \n\n1. Park away from your office to get extra steps in, take the stairs instead of the elevator, and try to move as much as possible. \n\n2. Wake up 20 minutes earlier to take a walk or exercise before you get in the car or on the bus, train or plane.", sourceName: "Shape", sourceURL: "https://www.shape.com/blogs/shape-your-life/your-long-commute-causing-you-gain-weight", sponsorLogo: "", sponsorURL: "")
let commuteAMTip18 = Tip(header: "🚶‍♂️", title: "Taking a side street route when walking and cycling [to work] through a city cuts a person’s air pollution exposure by half", body: "The average reduction in overall pollution exposure for those taking the side street routes was 53%, with the cuts ranging from 30-60%. \n\nAir pollution is the world’s largest environmental health risk, according to the World Health Organisation.", sourceName: "The Guardian", sourceURL: "https://www.theguardian.com/environment/2017/jun/14/side-street-routes-avoid-city-pollution-cut-exposure-by-half", sponsorLogo: "", sponsorURL: "")
let commuteAMTip19 = Tip(header: "🎧", title: "A 5-year study of rich and poor people found that rich people listen to audiobooks during the commute to work", body: "63% of rich people vs. 5% of poor people listen to audiobooks during the commute to work. \n\nYou can borrow audiobooks for free from your local public library." , sourceName: "Entrepreneur", sourceURL: "https://www.entrepreneur.com/article/235228", sponsorLogo: "", sponsorURL: "")

//WEEK 2
// MON
let commuteAMTip20 = Tip(header: "🌻", title: "Improve your mood by taking the scenic route for your morning commute", body: "Research finds that simply seeing beautiful flowers increases happiness. \n\nThe happiness boost is greatest for night owls who have a hard time getting going in the morning, the researchers found." , sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/health/wellness/how-to-be-happy/", sponsorLogo: "", sponsorURL: "")
let commuteAMTip21 = Tip(header: "", title: "Long-Distance Commuters: Improve health, happiness, and relationships by commuting before or after rush-hour (and try to work from home at least 1 day a week)", body: "Commuting puts stress on the human mind and body and on family relationships. \n\nEach added travel minute correlates with an increase in health problems. \n\nPeople with longer commutes experience more headaches, backaches, digestive problems, higher blood pressure, sleep disturbances, and concentration problems compared to those with shorter commutes.", sourceName: "Thrive Global", sourceURL: "https://www.scientificamerican.com/article/commuting-takes-its-toll/", sponsorLogo: "", sponsorURL: "")
let commuteAMTip22 = Tip(header: "", title: "Use the stairs instead of the elevator, and you’ll burn twice as many calories as you do walking", body: "Study: A 150-pound person could lose about 6 pounds per year just by climbing up 2 flights of stairs every day. \n\nIncrease that up to 6 flights, and you could lose 18 pounds without ever hitting the gym.", sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/easy-ways-to-burn-calories/", sponsorLogo: "", sponsorURL: "")
let commuteAMTip23 = Tip(header: "", title: "Study: Elevator buttons in public spaces like office buildings could be harboring more germs than toilet seats", body: "Clean it: Maybe you don’t want to stand around your office building and wipe down the elevator buttons. \n\nBut you’ll probably want to wash, or at least sanitize, your hands once you’ve reached your floor.", sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/home/cleaning-organizing/germs-toilet-seat/", sponsorLogo: "", sponsorURL: "")

//TUE
let commuteAMTip24 = Tip(header: "", title: "Speeding, rapid acceleration and braking can lower your gas mileage by 33% at highway speeds and by 5% around town", body: "Anticipate traffic situations and maintain adequate spacing between vehicles to avoid unnecessary braking and acceleration. \n\nWhen you do accelerate, accelerate smoothly at a moderate rate. \n\nFuel Economy Benefit: 5–33% \nFuel Cost Savings: $0.18–$1.18/gallon", sourceName: "U.S. Department of Energy", sourceURL: "https://afdc.energy.gov/files/u/publication/10_G00888_savings_WEB.pdf", sponsorLogo: "", sponsorURL: "")
let commuteAMTip25 = Tip(header: "", title: "Avoid keeping unnecessary items in your vehicle, especially heavy ones. An extra 100 pounds in your vehicle could reduce your miles per gallon by up to 2%", body: "Extra weight affects smaller vehicles more than larger ones. \n\nFuel Economy Benefit: 1–2%/100 lbs \nFuel Cost Savings: $0.04–$0.07/gallon", sourceName: "U.S. Department of Energy", sourceURL: "https://afdc.energy.gov/files/u/publication/10_G00888_savings_WEB.pdf", sponsorLogo: "", sponsorURL: "")

let commuteAMTip26 = Tip(header: "", title: "Turn off your engine when your vehicle is parked. Idling can use a ¼ to a ½ gallon of fuel per hour, depending on engine size and air conditioner use.", body: "It only takes a few seconds worth of fuel to restart your vehicle. \n\nTurning your engine on and off excessively, however, may increase starter wear. \n\nFuel Cost Savings: $0.01–0.03/minute", sourceName: "U.S. Department of Energy", sourceURL: "https://afdc.energy.gov/files/u/publication/10_G00888_savings_WEB.pdf", sponsorLogo: "", sponsorURL: "")

let commuteAMTip27 = Tip(header: "", title: "Observe the speed limit: On average, gas mileage usually decreases rapidly as speeds climb above 50 mph.", body: "You can assume that each 5 mph you drive over 50 mph is the same as paying an additional $0.25 per gallon for gas. \n\nFuel Economy Benefit: 7–14% \nFuel Cost Savings: $0.25–$0.50/gallon", sourceName: "U.S. Department of Energy", sourceURL: "https://afdc.energy.gov/files/u/publication/10_G00888_savings_WEB.pdf", sponsorLogo: "", sponsorURL: "")

//WED
let commuteAMTip28 = Tip(header: "", title: "Anti-Aging Tip: Wear sunglasses", body: "Sunglasses protect your eyes from the sun and also the delicate skin surrounding them. \n\nPlus, you won’t be creating more wrinkles by squinting all the time.", sourceName: "WebMD", sourceURL: "https://www.webmd.com/beauty/features/wrinkles-skin#1", sponsorLogo: "", sponsorURL: "")
let commuteAMTip29 = Tip(header: "", title: "DON'T: Listen to the news or talk radio \n\nDO: Listen to an educational podcast or audiobook", body: "The 24/7 news cycle of endless rage and conflict is designed to provoke and distract you. \n\nInstead, listen to an educational podcast or audiobook. \n\nIt was Jim Rohn who said, \"Formal education will make you a living; self-education will make you a fortune.\"", sourceName: "Own Day Your Life", sourceURL: "https://www.amazon.com/Own-Day-Your-Life-Optimized-ebook/dp/B072HLS5QJ", sponsorLogo: "", sponsorURL: "")
let commuteAMTip30 = Tip(header: "", title: "Center yourself during your commute: Take 6 deep breaths. Expand your lungs as much as possible, and focus your breath into your belly", body: "Study: Taking 6 deep breaths over 30 seconds lowers your blood pressure.", sourceName: "Own Day Your Life", sourceURL: "https://www.amazon.com/Own-Day-Your-Life-Optimized-ebook/dp/B072HLS5QJ", sponsorLogo: "", sponsorURL: "")
let commuteAMTip31 = Tip(header: "", title: "\"In the mornings on my drive to work, I listen either to music that I enjoy or to uplifting, motivational podcasts.\"", body: "\"I strive to fuel my 'mental factory'--a.k.a., my brain--with nothing but positivity.\" \n\n\"I've found that maintaining positive vibes throughout the day when I'm not focused on work translates to keeping my spirits up when I am met with workplace challenges.\" \n\n- Shannon Hudson, world champion kickboxer and founder/CEO of 9Round" , sourceName: "Inc.", sourceURL: "https://www.inc.com/christina-desmarais/31-simple-daily-habits-that-separate-high-achievers-from-everyone-else.html", sponsorLogo: "", sponsorURL: "")

//THUR


//WEEK 1
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
let commuteAMTipArray4 = [commuteAMTip16, commuteAMTip17, commuteAMTip18, commuteAMTip19]
let commuteAMTopic4 = Topic(title: commuteAMTitle, icon: commuteAMIcon, tip: commuteAMTipArray4)

//WEEK 2
//MON
let commuteAMTipArray5 = [commuteAMTip20, commuteAMTip21, commuteAMTip22, commuteAMTip23]
let commuteAMTopic5 = Topic(title: commuteAMTitle, icon: commuteAMIcon, tip: commuteAMTipArray5)

//TUE
let commuteAMTipArray6 = [commuteAMTip24, commuteAMTip25, commuteAMTip26, commuteAMTip27]
let commuteAMTopic6 = Topic(title: commuteAMTitle, icon: commuteAMIcon, tip: commuteAMTipArray6)

//WED (1 WIP)
let commuteAMTipArray7 = [commuteAMTip28, commuteAMTip29, commuteAMTip30, commuteAMTip17]
let commuteAMTopic7 = Topic(title: commuteAMTitle, icon: commuteAMIcon, tip: commuteAMTipArray7)

// THURS (4 WIP)
let commuteAMTipArray8 = [commuteAMTip12, commuteAMTip13, commuteAMTip14, commuteAMTip15]
let commuteAMTopic8 = Topic(title: commuteAMTitle, icon: commuteAMIcon, tip: commuteAMTipArray8)

// FRI (4 WIP)
let commuteAMTipArray9 = [commuteAMTip16, commuteAMTip17, commuteAMTip18, commuteAMTip19]
let commuteAMTopic9 = Topic(title: commuteAMTitle, icon: commuteAMIcon, tip: commuteAMTipArray9)



// MARK: - Commute, PM

let commutePMTitle = "Commute"
let commutePMIcon = Constants.Icon.commute

//WEEK 1
// MON
let commutePMTip1 = Tip(header: "🚦", title: "Pollution at intersections is 29x higher than on the open road", body: "To reduce the amount of pollution exposure while waiting in traffic jams and at traffic lights, drivers should keep a distance from the car in front, close car windows, and switch off the fan. \n\nThis can reduce the chance of breathing in hazardous levels of air pollution by 76%. \n\nAlso, set the fan so that the air circulates internally and prevents pollution from entering from outside." , sourceName: "Medical News Today", sourceURL: "https://www.medicalnewstoday.com/articles/312570.php", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let commutePMTip2 = Tip(header: "🚗", title: "Research: Spending a single hour in traffic to higher odds of having a heart attack", body: "High noise levels - like the kind you hear on a freeway - are also linked to heart disease. \n\nIf you can’t avoid traveling during rush hour, reduce stress by listening to relaxing music. \n\nOr share the ride and chat with your fellow passenger." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/heart/ss/slideshow-surprising-hurt-heart?ecd=wnl_spr_091316_AM&ctr=wnl-spr-091316-AM_nsl-ld-stry_1&mb=aT%2fNo%2fMfdXIeXdniBtn11BXFE73IOX1chB5LGA9kRyM%3d", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let commutePMTip3 = Tip(header: "👍", title: "Use your commuting time to bring yourself closer to the life you want to live", body: "Think back through your day hour by hour: \n\n• How did the day go? \n• What worked? \n• What didn’t? \n• What do you want to do the same – or differently – tomorrow? \n• With whom can you share feedback? \n• Who should you thank? \n• What happened today for which you can feel grateful? \n\nThese questions will help you learn, grow, and connect." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2015/01/get-more-done-during-your-commute", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let commutePMTip4 = Tip(header: "🤔", title: "Identify an area in your life that you want to improve and use your commute to fix it", body: "EXERCISE: Bike or walk to work, even if it’s just partway. Or park far away from your office and walk an extra minute. \n\nRELAX: Do nothing, or read a fun book, or take a quick walk around your office before you leave for home. \n\nLEARN: Read about it or, if you have internet access, watch a video or participate in an online course. \n\nRELATIONSHIPS: Call, text, or email people you cherish." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2015/01/get-more-done-during-your-commute", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//TUE
let commutePMTip5 = Tip(header: "🙅‍♀️", title: "Don’t grocery shop right after work in order to reduce your chances of buying unhealthy foods", body: "After a long day of work, you're likely to be both hungry and tired. When you're hungry or tired, your brain craves fatty, sugary foods. \n\nDuring the week, the best time to go to grocery shopping is after dinner when you're well-fed and it's less crowded." , sourceName: "LifeHacker", sourceURL: "https://lifehacker.com/avoid-grocery-shopping-right-after-work-to-save-money-1616069034", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let commutePMTip6 = Tip(header: "🧘‍♂️", title: "The commute is a great time for people who say \"I'm too busy to meditate\"", body: "De-stress and let go of the busy day. \n\n• Put your hand on your belly. \n• Then deeply, slowly breathe in, feeling your belly rise. \n• Then feel it gently recede as you breathe out. \n\nThis quickly activates the parasympathetic nervous system, which leads to relaxation." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com.au/2016/04/12/quick-mindfulness-exercises_n_9657876.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let commutePMTip7 = Tip(header: "🥘", title: "People who frequently cook meals at home consume fewer carbohydrates, less sugar, and less fat than those who cook less or not at all – even if they are not trying to lose weight", body: "People who cook at home more frequently rely less on frozen foods and are less likely to choose fast foods on the occasions when they eat out. \n\nThe research also found that individuals who work more than 35 hours a week outside the home cook less." , sourceName: "Johns Hopkins University", sourceURL: "https://www.jhsph.edu/research/centers-and-institutes/johns-hopkins-center-for-a-livable-future/news-room/News-Releases/2014/Study-Suggests-Home-Cooking-Main-Ingredient-in-Healthier-Diet.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let commutePMTip8 = Tip(header: "🏡", title: "Bringing your work problems, stress, and low energy into your life after work can be disruptive to your relationships and to your mental health", body: "Research suggests that spending some time outside before you go home can help with reducing stress and being more productive once you get home. \n\nTake a stroll around your block or skip public transportation and walk home." , sourceName: "Bustle", sourceURL: "https://www.bustle.com/articles/159080-11-healthy-after-work-habits-to-try-instead-of-sitting-on-the-couch-all-night", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//WED
let commutePMTip9 = Tip(header: "👫", title: "Slow down. Being in a rush reduces your empathy towards other people", body: "Researchers tested students' willingness to help a man in distress based on whether the student was in a hurry or not. \n\nThe researchers found that only 10% of students in the hurried condition stopped to help the man. \n\nIn comparison, 63% of the participants in the unhurried condition stopped. \n\nReducing time pressure will likely help you pay attention to your surroundings and respond more readily to others in need.", sourceName: "Stanford University", sourceURL: "https://sparq.stanford.edu/solutions/take-time-be-good-samaritan", sponsorLogo: "", sponsorURL: "")

let commutePMTip10 = Tip(header: "💏", title: "Couples in which one partner commutes for longer than 45 minutes are 40% likelier to divorce", body: "If you are commuting, you are not spending quality time with your loved ones. \n\nHowever, not all commuter relationships were doomed; the study found that people who had a long commute for more than 5 years were only 1% more likely to divorce than non-commuter couples. \n\nAnd breakups were less common for those who had already been commuting long distances before the relationship began.", sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/2013/08/13/divorce-study_n_3751641.html", sponsorLogo: "", sponsorURL: "")
let commutePMTip11 = Tip(header: "🏃‍♀️", title: "The more time we spend commuting, the less time we spend exercising or preparing meals at home", body: "Each minute you commute is associated with a 0.0257 minute exercise time reduction, a 0.0387 minute food preparation time reduction, and a 0.2205 minute sleep time reduction. \n\nThese amounts add up over time. \n\nLong commutes make us more likely to spend more money eating out, forego exercise, sleep less, experience body aches, and gain weight.", sourceName: "Personal Capital", sourceURL: "https://www.personalcapital.com/blog/financial-planning-2/surprising-costs-commute/", sponsorLogo: "", sponsorURL: "")
let commutePMTip12 = Tip(header: "🚰", title: "Drink water before you drive. Being dehydrated can cause as many driving errors as drunk driving", body: "Researchers set up an experiment in which normally hydrated and dehydrated people drove in a simulator for 2 hours. \n\nThe normally hydrated drivers made an average of 47 errors; the dehydrated drivers 101 errors. \n\nThus the dehydrated drivers made more than twice the number of errors of normally hydrated drivers – a failure rate similar to drunk drivers.", sourceName: "The Guardian", sourceURL: "https://www.theguardian.com/uk-news/shortcuts/2015/apr/20/want-to-be-safe-driver-drink-water-before-you-drive", sponsorLogo: "", sponsorURL: "")

//THUR
let commutePMTip13 = Tip(header: "😕", title: "Every 10 minutes of commuting results in 10% fewer social connections", body: "Over the past 25 years, Americans have experienced a 58% attendance drop in club meetings, a 43% decrease in family dinners, and a 35% decline in having friends over. Commuting reduces social connections, which causes unhappiness.", sourceName: "Personal Capital", sourceURL: "https://www.personalcapital.com/blog/financial-planning-2/surprising-costs-commute/", sponsorLogo: "Sponsor", sponsorURL: "sponsorURL")
let commutePMTip14 = Tip(header: "🚘", title: "Be kind to others. Allow someone into your lane. They're probably in a rush - just like you.", body: "Engaging in kindness can actually make you healthier. \n\nStudy: 50% of participants reported feeling stronger and having more energy after helping others, with reports of greater feelings of calmness and enhanced self-esteem.", sourceName: "Inc.", sourceURL: "https://www.inc.com/scott-mautz/science-says-random-acts-of-kindness-week-has-astonishing-health-benefits.html", sponsorLogo: "", sponsorURL: "")
let commutePMTip15 = Tip(header: "🍕", title: "A long commute after work reduces your willpower to exercise or eat right", body: "People who spend more time commuting spend less time exercising, sleeping, and making food at home. And are more likely to buy \"non-grocery food purchases\" (i.e., fast food or takeout). As a result, they are more likely to be obese." , sourceName: "Vox", sourceURL: "https://www.vox.com/2015/5/20/8629881/commuting-health-happiness", sponsorLogo: "", sponsorURL: "")
let commutePMTip16 = Tip(header: "⚠️", title: "Warning. The highest amount of road rage occurs from 4:00 p.m. to 7:00 p.m. each day", body: "Analysis of Instagram Posts Hashtagged #RoadRage: Drivers felt the most aggravated during the evening commute. \n\nAllow for extra time in case you run into delays, adjust your schedule to avoid driving through the worst traffic, and listen to music while you drive. If you start to feel angry, it’s vital to relax, breathe deeply, and consider taking a break to stretch your legs or sip some water." , sourceName: "Auto Insurance Center", sourceURL: "https://www.autoinsurancecenter.com/roadrage-instagram-posts.htm", sponsorLogo: "", sponsorURL: "")

//FRI
let commuteFridayPMTip0 = Tip(header: "⚠️", title: "Warning. Friday from 4:00 p.m. to 8:00 p.m. is the most dangerous day and time to drive during the workweek", body: "An analysis of US car crash-related fatalities in 2016 found that Friday during rush-hour had the most fatal car crashes compared to any other day and time during the workweek. \n\nBe aware of what other drivers around you are doing, and expect the unexpected tonight." , sourceName: "Avvo", sourceURL: "https://www.avvo.com/fatal-car-accidents", sponsorLogo: "", sponsorURL: "")
let commuteFridayPMTip1 = Tip(header: "", title: "Reduce stress: Listen to classical and pop music", body: "According to a survey of 2,000 drivers, those who listen to classical and pop music are more relaxed drivers, whereas those who listen to rock and metal are more prone to road rage.", sourceName: "Huffington Post", sourceURL: "https://www.huffpost.com/entry/commuting-stress_n_3530124", sponsorLogo: "", sponsorURL: "")
let commuteFridayPMTip2 = Tip(header: "", title: "63% of millionaires listen to audiobooks during their commute", body: "By increasing your knowledge, you are able to see more opportunities and separate from the competition, which translates into more money. \n\nMillionaires read current events, educational career-related material, personal development, biographies of successful people, and history. Only 11% of them read purely for entertainment purposes.", sourceName: "SUCCESS Magazine", sourceURL: "https://www.success.com/16-rich-habits/", sponsorLogo: "", sponsorURL: "")
let commuteFridayPMTip3 = Tip(header: "", title: "Calm down before you get home. Extreme traffic increases the likelihood of domestic violence by 6%", body: "This is because extreme traffic leads to negative mental health outcomes, including stress and aggression. \n\nAnd domestic violence has been shown to be sensitive to these negative emotions caused by extreme traffic. \n\nCalm down by taking a couple of deep breaths, thinking of one thing you're grateful for, listening to relaxing music, or walking a few blocks before you get home.", sourceName: "The Conversation", sourceURL: "https://theconversation.com/the-stress-of-sitting-in-traffic-can-lead-to-more-crime-72323", sponsorLogo: "", sponsorURL: "")

//WEEK 2
//MON
let commutePMTip17 = Tip(header: "", title: "Lose weight: Singing in your car helps you burn calories", body: "Turning up the radio and singing along to your favorite tunes will help you burn calories during your commute. If you spend 40 minutes singing, you’ll burn about 100 calories." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/easy-ways-to-burn-calories/", sponsorLogo: "", sponsorURL: "")
let commutePMTip18 = Tip(header: "", title: "Increase happiness: Live closer to work or commute less often", body: "Researches found that every extra minute you spend commuting reduces job satisfaction and worsens your mental health. In fact, adding 20 minutes to your commute per day has the same effect on your job satisfaction as receiving a 19% pay cut." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/how-to-make-sure-get-happier-as-you-get-older-2019-8", sponsorLogo: "", sponsorURL: "")


//FRI
let commuteFridayPMTip4 = Tip(header: "⚠️", title: "Warning. Friday from 4:00 p.m. to 7:00 p.m. is the day and time when the most road rage occurs during the week", body: "An analysis of Instagram posts hashtagged #RoadRage found that road rage mentions peak on Friday from 4:00 p.m to 7:00 p.m. \n\nNever challenge fellow motorists. Try to use your horn only when necessary as it can anger other drivers. If you’re concerned about an aggressive driver, immediately report the situation to law enforcement." , sourceName: "Auto Insurance Center", sourceURL: "https://www.autoinsurancecenter.com/roadrage-instagram-posts.htm", sponsorLogo: "", sponsorURL: "")

//???
let commuteTip999 = Tip(header: "", title: "Live longer: Minimize stress caused by traffic by planning to arrive 15 minutes early to every appointment", body: "This allows you to slow down and focus before meetings, as well as account for unexpected delays. \n\nStress caused by feeling rushed causes inflammation in the body. Over time, inflammation caused by stress increases your risk of Alzheimer's disease, diabetes, and cardiovascular disease.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")

//WEEK 1
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
let commutePMTipArray3 = [commutePMTip13, commutePMTip14, commutePMTip15, commutePMTip16]
let commutePMTopic3 = Topic(title: commutePMTitle, icon: commutePMIcon, tip: commutePMTipArray3)

//FRI
let commuteFridayPMTipArray0 = [commuteFridayPMTip0, commuteFridayPMTip1, commuteFridayPMTip2, commuteFridayPMTip3]
let commuteFridayPMTopic0 = Topic(title: commutePMTitle, icon: commutePMIcon, tip: commuteFridayPMTipArray0)

//WEEK 2
// MON
let commutePMTipArray4 = [commutePMTip17, commutePMTip18, commutePMTip3, commutePMTip4]
let commutePMTopic4 = Topic(title: commutePMTitle, icon: commutePMIcon, tip: commutePMTipArray4)

//TUE
let commutePMTipArray5 = [commutePMTip5, commutePMTip6, commutePMTip7, commutePMTip8]
let commutePMTopic5 = Topic(title: commutePMTitle, icon: commutePMIcon, tip: commutePMTipArray5)
//WED
let commutePMTipArray6 = [commutePMTip9, commutePMTip10, commutePMTip11, commutePMTip12]
let commutePMTopic6 = Topic(title: commutePMTitle, icon: commutePMIcon, tip: commutePMTipArray6)

//THU
let commutePMTipArray7 = [commutePMTip13, commutePMTip14, commutePMTip15, commutePMTip16]
let commutePMTopic7 = Topic(title: commutePMTitle, icon: commutePMIcon, tip: commutePMTipArray7)

//FRI
let commuteFridayPMTipArray1 = [commuteFridayPMTip4, commuteFridayPMTip1, commuteFridayPMTip2, commuteFridayPMTip3]
let commuteFridayPMTopic1 = Topic(title: commutePMTitle, icon: commutePMIcon, tip: commuteFridayPMTipArray1)




// MARK: - Work, AM
let workTitle = "At Work"
let workAMTitle = workTitle
let workAMIcon = Constants.Icon.work

// WEEK 1
// MON
let workAMTip1 = Tip(header: "☝️", title: "Produce at a peak level: Work for extended periods with full concentration on a single task free from distraction", body: "Stop constantly checking your email, phone, and multitasking. \n\nA percentage of your brain's attention remains stuck thinking about the previous task when beginning your next task. \n\nThis results in lower performance.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/wharton-adam-grant-uses-deep-work-for-maximum-productivity-2016-2", sponsorLogo: "", sponsorURL: "")
let workAMTip2 = Tip(header: "🙅‍♀️", title: "Don't schedule your meetings in the morning. Instead, schedule them for the afternoon, after lunch", body: "Our brains are more focused in the morning. \n\nSo spend this time doing difficult tasks, not sitting in a meeting. \n\nFor team meetings, schedule it at 3:30 or 4 p.m. and use it to plan for the next day." , sourceName: "Fast Company", sourceURL: "https://www.fastcompany.com/3032498/why-you-should-rethink-that-morning-meeting", sponsorLogo: "", sponsorURL: "")
let workAMTip3 = Tip(header: "📵", title: "Be more productive at work by placing your cell phone out of sight or face-down", body: "Study: People were more likely to make errors and not pay attention to their main task if they were interrupted by notifications from their phone - such as a text or a call.", sourceName: "WIRED", sourceURL: "https://www.wired.co.uk/article/what-is-productivity-be-more-productive-how-to-work", sponsorLogo: "", sponsorURL: "")
let workAMTip4 = Tip(header: "👫", title: "Be a leader / Get into a top MBA program: Show respect for others at work", body: "Stanford's MBA application includes the rating of your leadership. \n\nHigh Performers: \"Uses understanding of others and self to resolve conflicts and foster mutual respect.\" \n\nLow Performers: \"Generally treats others with respect; usually shares praise and credit\" and \"Is sometimes self-absorbed or overly self-interested.\"" , sourceName: "Stanford Graduate School of Business", sourceURL: "https://www.gsb.stanford.edu/sites/gsb/files/gsb-mba_leadership_form_v4.pdf", sponsorLogo: "", sponsorURL: "")


/////// TUES
let workAMTip5 = Tip(header: "🙅‍♀️", title: "Try to avoid meetings because they are the biggest office time-sucks", body: "The average office worker spends over 31 hours each month in unproductive meetings. Before booking your next meeting, ask yourself whether you can accomplish the same goals or tasks via email, phone, or Web-based meeting.", sourceName: "Inc", sourceURL: "https://www.inc.com/john-rampton/15-ways-to-increase-productivity-at-work.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let workAMTip6 = Tip(header: "☀️", title: "Lower your body mass index (BMI) by getting at least 20 to 30 minutes of sunlight light before noon", body: "Not getting enough light before noon disturbs your internal body clock, which is known to alter metabolism and lead to weight gain (increased BMI). In one study, morning light exposure accounted for about 20% of a person’s BMI.", sourceName: "Northwestern University", sourceURL: "https://news.northwestern.edu/stories/2014/04/morning-rays-keep-off-the-pounds", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let workAMTip7 = Tip(header: "📵", title: "Having your smartphone in reach, even if it’s silenced or turned off lowers your ability to think", body: "Researchers found that people who kept their phones in another room significantly outperformed the ones who kept them nearby in concentration tests. Having your phone within reach makes it harder to focus because a percentage of the brain has to actively work to not pick up or use the device.", sourceName: "Inc.", sourceURL: "https://www.inc.com/christina-desmarais/heres-why-you-need-to-put-your-phone-away-according-to-science.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let workAMTip8 = Tip(header: "🤝", title: "Be a leader / Get into a top MBA program: Change leadership at work", body: "Stanford's MBA application includes the rating of your leadership. \n\nHigh Performers: \" Builds a coalition of supporters and coordinates change across multiple individuals; may create champions who will mobilize others to change.\" \n\nLow Performers: \"Accepts status quo; does not see the need for change.\"" , sourceName: "Stanford Graduate School of Business", sourceURL: "https://www.gsb.stanford.edu/sites/gsb/files/gsb-mba_leadership_form_v4.pdf", sponsorLogo: "", sponsorURL: "")

//////// WED
let workAMTip9 = Tip(header: "🙃", title: "Research: Most professionals only spend an average of one minute and fifteen seconds on a task before some kind of interruption", body: "After an interruption, it can take our brains up to 25 minutes to resume the task. Multitasking leads to decreased efficiency and more errors.", sourceName: "Inc.", sourceURL: "https://www.inc.com/laura-montini/infographic/the-high-cost-of-multitasking.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let workAMTip10 = Tip(header: "📞", title: "People are most likely to multitask during phone conference calls (57%), web conference calls (23%), and in-person meetings (16%)", body: "People are least likely to multitask during video conferences (4%). This leads to more productive meetings.", sourceName: "Inc.", sourceURL: "https://www.inc.com/laura-montini/infographic/the-high-cost-of-multitasking.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let workAMTip11 = Tip(header: "👫", title: "Have regular weekly meetings with direct reports. This not only empowers them, it also results in you being interrupted less often.", body: "If your direct reports feel empowered to make decisions on their own, and they understand how far their responsibilities extend and what they need your help for, they will then be more likely to hold their questions and issues to discuss at your weekly meeting.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/07/4-ways-leaders-can-protect-their-time-and-empower-their-teams", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let workAMTip12 = Tip(header: "👫", title: "Be a leader / Get into a top MBA program: Develop others at work", body: "Stanford's MBA application includes the rating of your leadership. \n\nHigh Performers: \"Inspires and motivates others to develop by providing feedback and identifying new growth opportunities as well as supporting their efforts to change.\" \n\nLow Performers: \"Points out mistakes to support the development of others\" and \" focuses primarily on own abilities.\"" , sourceName: "Stanford Graduate School of Business", sourceURL: "https://www.gsb.stanford.edu/sites/gsb/files/gsb-mba_leadership_form_v4.pdf", sponsorLogo: "", sponsorURL: "")


/////// THURS
let workAMTip13 = Tip(header: "🗣", title: "Lowering the pitch of your voice makes you feel more powerful", body: "Research: People who spoke in a lower pitch perceived themselves more as possessing more powerful traits compared to participants who spoke in a higher pitch." , sourceName: "ResearchGate", sourceURL: "https://www.researchgate.net/publication/235771738_Lowering_the_Pitch_of_Your_Voice_Makes_You_Feel_More_Powerful_and_Think_More_Abstractly", sponsorLogo: "GM_logo", sponsorURL: "https://www.gm.com/")
let workAMTip14 = Tip(header: "👀", title: "Sitting all day causes sore muscles, strained eyes, poor circulation, and weight gain", body: "For proper posture, sit at the end of your chair and let yourself slouch. Now, try to sit up straight, accentuating the curve of your back as much as possible. Hold this position for a few seconds. Next, release the position a little bit — no more than about 10 degrees. This is your proper sitting position." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/daily-routine-according-to-science-2017-12", sponsorLogo: "GM_logo", sponsorURL: "https://www.gm.com/")
let workAMTip15 = Tip(header: "💸", title: "Low self-esteem at work results in thousands of dollars of lost income", body: "Individuals who are from blue-collar families and possess self-confidence earn roughly $7,000 more per year than their peers who have low self-esteem. Individuals who are from white-collar families, the gap is even larger. Those with high self-esteem earn approximately $28,000 more annually than those who lack confidence. Over a 40-year career, that adds up to $280,000 to $1.12 million in lost earnings." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/business/why-low-self-esteem-may-be-hurting-your-career-ncna814156", sponsorLogo: "", sponsorURL: "")
let workAMTip16 = Tip(header: "🤔", title: "Be a leader / Get into a top MBA program: Seek information at work", body: "Stanford's MBA application includes the rating of your leadership. \n\nHigh Performers: \"Involves others who would not normally be involved including experts or outside organizations; may get them to seek out information.\" \n\nLow Performers: \" Asks direct questions about problem at hand to those individuals immediately available.\"" , sourceName: "Stanford Graduate School of Business", sourceURL: "https://www.gsb.stanford.edu/sites/gsb/files/gsb-mba_leadership_form_v4.pdf", sponsorLogo: "", sponsorURL: "")

///////////// FRI
let workAMTip17 = Tip(header: "🤕", title: "Poor posture can lead to neck pain, back problems, and slowed digestion", body: "To attain a neutral, upright spine position, put your shoulders down and back, pull your head back, and engage your core muscles. Bring your belly button in toward your spine, as if you're zipping up a snug pair of jeans. This will help to engage the transverse abdominis muscle, which acts like a corset around the spine." , sourceName: "Harvard Health Publishing", sourceURL: "https://www.health.harvard.edu/staying-healthy/3-surprising-risks-of-poor-posture", sponsorLogo: "", sponsorURL: "")
let workAMTip18 = Tip(header: "🤔", title: "Ask yourself these questions to determine if you should stay at your current job", body: "Is this work meaningful to me? Will I have an opportunity for recognition and achievement? Am I going to learn new things? These motivators are stable across professions and over time-giving us a sense of \"true north\" against which we can recalibrate the trajectories of our careers. \n\nWe should always remember that beyond a certain point, money, status, compensation, and job security are much more a by-product of being happy with a job rather than the cause of it. Realizing this frees us to focus on the things that really matter." , sourceName: "How Will You Measure Your Life?", sourceURL: "https://www.amazon.com/dp/B006ID0CH4/ref=dp-kindle-redirect?_encoding=UTF8&btkr=1", sponsorLogo: "", sponsorURL: "")
let workAMTip19 = Tip(header: "🗣", title: "Increase your influence at work by speaking in a lower tone than you normally do", body: "People relate a low tone voice to both leadership and dominance. Speaking in a lower tone counteracts the effect of nervousness, which tends to push your tone higher.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/02/how-to-increase-your-influence-at-work?utm_medium=email&utm_source=newsletter_daily&utm_campaign=mtod&referral=00203", sponsorLogo: "", sponsorURL: "")
let workAMTip20 = Tip(header: "🗣", title: "Be a leader / Get into a top MBA program: Communicate better at work", body: "Stanford's MBA application includes the rating of your leadership. \n\nHigh Performers: \"Presents views clearly; solicits opinions and concerns; discusses them openly.\" \n\nLow Performers: \"Is generally to the point and organized\" and \"Sometimes rambles or is occasionally unfocused.\"" , sourceName: "Stanford Graduate School of Business", sourceURL: "https://www.gsb.stanford.edu/sites/gsb/files/gsb-mba_leadership_form_v4.pdf", sponsorLogo: "", sponsorURL: "")

// WEEK 2
// MON
let workAMTip21 = Tip(header: "☀️", title: "Be more productive at work by matching your daily tasks with your circadian rhythm", body: "Humans have an internal clock that shapes our energy levels throughout the day: our circadian rhythm. \n\nOn average, you should work on important tasks that require deep cognitive processing in the morning hours when your body is at or near its first peak in alertness (around noon). \n\nThen, early afternoon is a good time to do administrative work like responding to emails because not long after lunch, your energy levels begin to decline, hitting a low at around 3pm." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2015/01/the-ideal-work-schedule-as-determined-by-circadian-rhythms", sponsorLogo: "", sponsorURL: "")
let workAMTip22 = Tip(header: "🏝", title: "Taking vacations improve your productivity at work", body: "Ernst & Young conducted an internal study of its employees and found that for each additional 10 hours of vacation time employees took, their year-end performance ratings improved 8%. \n\nWhen you're more productive, you're happier, and when you're happier, you excel at what you do." , sourceName: "Inc.", sourceURL: "https://www.inc.com/lolly-daskal/4-scientific-reasons-why-vacation-is-awesome-for-you.html", sponsorLogo: "", sponsorURL: "")
let workAMTip23 = Tip(header: "✈️", title: "Taking vacations could help you live longer", body: "In one study, men at risk for heart disease who skipped vacations for 5 consecutive years were 30% more likely to suffer heart attacks than those who took at least a week off each year. \n\nIn another study, women who only took a vacation once every 6 years or less were almost 8 times more likely to develop heart disease, have a heart attack, or die of a coronary-related cause than those who took at least 2 vacations a year." , sourceName: "Inc.", sourceURL: "https://www.inc.com/lolly-daskal/4-scientific-reasons-why-vacation-is-awesome-for-you.html", sponsorLogo: "", sponsorURL: "")
let workAMTip24 = Tip(header: "👍", title: "Be a leader / Get into a top MBA program: Be results orientated at work", body: "Stanford's MBA application includes the rating of your leadership. \n\nHigh Performers: \"Invents new approaches with measurably better results; works to deliver best-in-class performance improvements.\" \n\nLow Performers: \"Focuses on fulfilling activities at hand; unsure how work relates to goals.\"" , sourceName: "Stanford Graduate School of Business", sourceURL: "https://www.gsb.stanford.edu/sites/gsb/files/gsb-mba_leadership_form_v4.pdf", sponsorLogo: "", sponsorURL: "")

// TUES
let workAMTip25 = Tip(header: "🤔", title: "Devote the first few minutes of each day to strategizing a plan. Then execute it", body: "Typically, the first 3 hours of the day is when we're most focused and can think and speak our best. But most of us waste those first 3 hours reacting to other people’s priorities for us, like answering emails. Save the emails for the mid-afternoon slump, when your energy levels are low, and use the next 3 hours to do your best work." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/ideacast/2015/03/your-brains-ideal-schedule.html", sponsorLogo: "", sponsorURL: "")
let workAMTip26 = Tip(header: "📞", title: "Communications with customers, investors, and other managerial decisions and negotiations, should be conducted in the morning", body: "A study of 26,000 public company earnings calls found that afternoon calls were more negative, irritable, and combative than morning calls. Calls held the first thing in the morning turned out to be reasonably upbeat and positive." , sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/dp/B072Q985YX/ref=dp-kindle-redirect?_encoding=UTF8&btkr=1", sponsorLogo: "", sponsorURL: "")
let workAMTip27 = Tip(header: "🤔", title: "Amazon CEO Jeff Bezos schedules his most challenging meetings for 10 a.m. and avoids afternoon meetings whenever discussing major issues", body: "Research supports Bezos' logic as it can be harder to think clearly in the afternoon. The 10 a.m. slot gives everyone the optimal chance to fully wake up and tackle the most challenging project of the day." , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2018/11/20/why-jeff-bezos-schedules-challenging-meetings-at-10-am.html?recirc=taboolainternal", sponsorLogo: "", sponsorURL: "")
let workAMTip28 = Tip(header: "", title: "Prevent Weight Gain: Put covers on the office candy bowls and place them away from your desk", body: "Study: People ate an average of 2.2 more candies each day when they were visible, and 1.8 candies more when they were proximately placed on their desk vs 2 m away \n\nThese results show that the proximity and visibility of a candy or snack can consistently increase an adult's consumption of it." , sourceName: "US National Library of Medicine National Institutes of Health", sourceURL: "https://www.ncbi.nlm.nih.gov/pubmed/16418755", sponsorLogo: "TBD", sponsorURL: "www.test.com")

// WED
let workAMTip29 = Tip(header: "👩‍💻", title: "The best time to send an email is on a weekday from 10 a.m. to 2 p.m.", body: "This answer is based on data analyzed by MailChimp, an email marketing company. \n\nSo think about the time zone of your recipient and avoid sending emails over the weekend." , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2017/09/28/this-is-the-best-time-to-send-an-email.html", sponsorLogo: "", sponsorURL: "")
let workAMTip30 = Tip(header: "🏢", title: "Improve your life by sitting next to a window at work", body: "Compared to workers in offices without windows, those with windows in the workplace slept an average of 46 minutes more per night. \n\nWorkers without windows reported lower scores than their counterparts on quality of life measures related to physical problems and vitality. \n\nThey also had poorer outcomes in measures of overall sleep quality, sleep efficiency, sleep disturbances and daytime dysfunction." , sourceName: "", sourceURL: "", sponsorLogo: "", sponsorURL: "")
let workAMTip31 = Tip(header: "🤕", title: "Prevent back pain when sitting by altering your position every 15 minutes", body: "Sitting without interruption for as little as 4 hours can cause compression of certain disks in your lower back. \n\nThis pressure may lead to lower back pain. But there’s an easy fix for this: Get up and move. \n\nWhen participants altered their positions every 15 minutes, researchers didn’t notice any changes in their disks." , sourceName: "Men's Health", sourceURL: "https://www.menshealth.com/health/a19526472/surprising-health-effects-of-sitting/", sponsorLogo: "", sponsorURL: "")
let workAMTip32 = Tip(header: "🏝", title: "If your organization's culture does not encourage time off then it may be time to look for a new job", body: "Upon returning from vacation, employees who said their organization’s culture encourages time off were more likely to report having more motivation (71%) compared to employees who said their organization doesn’t encourage time off (45%). \n\nThey were also more likely to say they are satisfied with their job (88% vs. 50%) and that the organization treats them fairly (88% vs. 47%)." , sourceName: "American Psychology Association", sourceURL: "http://www.apa.org/news/press/releases/2018/06/vacation-recharges-workers.aspx", sponsorLogo: "", sponsorURL: "")

// THU
let workAMTip33 = Tip(header: "🤝", title: "Be a leader / Get into a top MBA program: Be a team leader at work", body: "Stanford's MBA application includes the rating of your leadership. \n\nHigh Performers: \"Recruits others into duties or roles based on insight into individual abilities; rewards those who exceed expectations\" \n\nLow Performers: \" Avoids leadership responsibilities; does not provide direction to team\"" , sourceName: "Stanford Graduate School of Business", sourceURL: "https://www.gsb.stanford.edu/sites/gsb/files/gsb-mba_leadership_form_v4.pdf", sponsorLogo: "", sponsorURL: "")
let workAMTip34 = Tip(header: "🤔", title: "A 5 year study of rich and poor people found that rich people go above and beyond at work", body: "81% of rich people vs. 17% of poor people said \"yes\" to doing more work than their job requires. On average, rich people work more hours than poor people, but only 6% of the rich people found themselves unhappy because of work." , sourceName: "Entrepreneur", sourceURL: "https://www.entrepreneur.com/article/235228", sponsorLogo: "", sponsorURL: "")
let workAMTip35 = Tip(header: "🤝", title: "Saying \"thank you\" can help you build your network", body: "A study found that thanking a new acquaintance makes them more likely to seek an ongoing relationship. So whether you thank a potential customer for meeting with you or you send a quick thank-you note to that co-worker who helped you with a project, acknowledging other people’s contributions can lead to new opportunities." , sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/amymorin/2014/11/23/7-scientifically-proven-benefits-of-gratitude-that-will-motivate-you-to-give-thanks-year-round/#7b386744183c", sponsorLogo: "", sponsorURL: "")
let workAMTip36 = Tip(header: "💵", title: "Increase your self-esteem because it will increase your earnings", body: "Study: Individuals who are from blue-collar families and possess self-confidence earn roughly $7,000 more per year than their peers who have low self-esteem. In white-collar classes, the gap is even larger. Those with high self-esteem earn approximately $28,000 more annually than those who lack confidence. Over a 40-year career, that adds up to $280,000 to $1.12 million in lost earnings." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/know-your-value/feature/why-low-self-esteem-may-be-hurting-you-work-ncna829461", sponsorLogo: "", sponsorURL: "")

//FRI
let workAMTip37 = Tip(header: "🙌", title: "Be a leader / Get into a top MBA program: Take initiative at work", body: "Stanford's MBA application includes the rating of your leadership. \n\nHigh Performers: \"Proactively seeks high-impact projects; steps up to challenges even when things are not going well.\" \n\nLow Performers: \"Reluctant to take on new tasks; waits to be told what to do; defers to others.\"" , sourceName: "Stanford Graduate School of Business", sourceURL: "https://www.gsb.stanford.edu/sites/gsb/files/gsb-mba_leadership_form_v4.pdf", sponsorLogo: "", sponsorURL: "")
let workAMTip38 = Tip(header: "☀️", title: "Exposure to light, during the day --particularly in the morning -- improves your mood, alertness and metabolism", body: "Employees with windows in the workplace received slept an average of 46 minutes more per night than employees who did not have the natural light exposure in the workplace. People who get more light during the day sleep better at night, which can help improve health. Workers without windows reported poorer scores than their counterparts on quality of life measures related to health." , sourceName: "Northwestern University", sourceURL: "https://news.northwestern.edu/stories/2014/08/natural-light-in-the-office-boosts-health", sponsorLogo: "", sponsorURL: "")
let workAMTip39 = Tip(header: "👍", title: "Sitting up straight in your chair isn't just good for your posture -- it also gives you more confidence in your own thoughts, study finds", body: "Researchers found that people who were told to sit up straight, in a confident position, were more confident with their own thoughts. However, people who were told to sit in a slouched, less confident posture, were less confident with their own thoughts. People don't realize their posture is affecting how much they believe in what they're thinking. So, sit up straight and think positive thoughts about yourself." , sourceName: "ScienceDaily", sourceURL: "https://www.sciencedaily.com/releases/2009/10/091005111627.htm", sponsorLogo: "", sponsorURL: "")
let workAMTip40 = Tip(header: "☀️", title: "Natural light in an office significantly improves health and wellness among workers", body: "Researchers found that workers in daylight office environments reported a 51% drop in the incidence of eyestrain, a 63% drop in the incidence of headaches and a 56% reduction in drowsiness. If you don't sit next to a window, take a walk outside during your next break." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/09/the-1-office-perk-natural-light", sponsorLogo: "", sponsorURL: "")

// WEEK 3
// MON
let workAMTip41 = Tip(header: "", title: "Prevent Weight Gain: \n• Put healthy snacks and bottled water at eye level. \n• Put soda drinks down in the bottom row. \n• Put fruit bowls in plain sight. \n• Put candy in non-clear bins and out of plain sight.", body: "Results from one study found: \n• Water intake increased by 47% \n• Soda calories decreased by 7% \n• Candy eating decreased by 9%", sourceName: "Slim By Design", sourceURL: "https://www.slimbydesign.com/", sponsorLogo: "", sponsorURL: "")

let workAMTip42 = Tip(header: "☀️", title: "The best time to take a break from work is midmorning", body: "Your mental resources are generally at their highest soon after you wake up, and they gradually diminish throughout the day. It's easier to restore those resources when you take a midmorning break.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/the-best-time-of-day-to-do-everything-2016-5#-5", sponsorLogo: "sponsor", sponsorURL: "sponsorURL")
let workAMTip43 = Tip(header: "🤔", title: "Mentor in hindsight. Employees learn much less when advice is given on the front end than they do when they have the opportunity to experience their own successes and failures and discuss them with their boss later.", body: "Mentoring helps to groom employees to advance within the organization. Ask your staff, \"What problems or challenges did you face this week, and how did you deal with them? And how well did that work out for you?\"", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/07/4-ways-leaders-can-protect-their-time-and-empower-their-teams", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let workAMTip44 = Tip(header: "", title: "Prevent Weight Gain: Putting a lid on an office's candy dish cut down on how many Hershey's Kisses people by about 1/3", body: "When food is out of sight, it's out of mind." , sourceName: "Slim By Design", sourceURL: "https://www.slimbydesign.com/", sponsorLogo: "TBD", sponsorURL: "www.test.com")



//TUES
let workAMTip45 = Tip(header: "", title: "People felt less stressed when they checked their email less often, study finds", body: "Check your email in chunks several times a day, rather than constantly responding to messages as they come in.", sourceName: "The University of British Columbia", sourceURL: "https://news.ubc.ca/2014/12/03/check-less-to-reduce-email-stress/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let workAMTip46 = Tip(header: "", title: "The best time to schedule a meeting is Tuesday at 3 p.m.", body: "Tuesday afternoons were found to be best because that is the furthest you can get from the deadlines at the end of the week without bumping into the missed deadlines from the week before. \n\nIn contrast, if you have a meeting at 9 a.m., employees will need to prepare the day before, or turn up underprepared.", sourceName: "Fast Company", sourceURL: "https://www.fastcompany.com/3047586/the-best-time-of-day-to-do-everything-at-work", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let workAMTip47 = Tip(header: "", title: "Being a sharing, giving person not only increases your productivity, it also increases your company's profitability", body: "Higher rates of giving were predictive of higher unit profitability, productivity, efficiency, and customer satisfaction, along with lower costs and turnover rates. \n\nWhen employees act like givers, they facilitate efficient problem solving and coordination and build cohesive, supportive cultures that appeal to customers, suppliers, and top talent alike.", sourceName: "Inc", sourceURL: "https://www.inc.com/alison-davis/be-nice-why-courtesy-and-kindness-give-you-a-compe.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let workAMTip48 = Tip(header: "", title: "Study: Disagreeable men earned 18% more—or $9,772 more annually than agreeable men. Disagreeable women earned 5% more-or $1,828 more than agreeable women", body: "Being rude or overly aggressive in the office is bad news. But being overly agreeable and never speaking up is also a no-no. \n\nStrike the perfect balance: \n\n1. Speak Up Intelligently \nIf you are in a meeting, try to make a couple of interesting comments or suggestions and ask a question. This allows your voice to be heard so people actually know you are alive and paying attention to the conversation. If this task seems daunting, start small with one question and work your way up. \n\n2. Challenge Your Boss (Not Start A Fight) \nIf you are given a task and you can think of another way to do that task that may save time or money, speak up. Do not be arrogant, but show that you have good problem-solving and analytical skills by thinking of a new way to do a task. Do not make things up just to say something; only do this if you have something intelligent to say. \n\n3. Negotiate Your Salary and Raises \nUnless your company has made it clear that no one will be receiving promotions or raises because of the economy or budget reasons, do not think that you cannot ask about it. Don’t get stuck in the habit of thinking you are lucky to have a job unless everyone around you has been laid off and you happen to be the last one standing (and will continue standing for a while.) \n\nOne way to bring up salary is by asking for a review. By talking about your performance and future with the company, it makes it much easier to bring up money (assuming your performance has been up to standards). \n\nBe clear and concise when asking for a raise or promotion. Your boss will appreciate your honesty. The worst thing that can happen is that you are told “no.” Unless you start displaying diva behavior, you will not be penalized for asking. \n\nIf you never ask about a raise, five years could go by without one. Then how would you feel?", sourceName: "New York University", sourceURL: "https://nyu.igrad.com/articles/agreeableness-study-speak-up-at-work-raise", sponsorLogo: "TBD", sponsorURL: "www.test.com")//WIP

//WED
let workAMTip49 =  Tip(header: "", title: "Research on how smells affect the accuracy of typists: 54% made fewer errors when they could smell lemon, 33% fewer errors with jasmine, and 20% fewer with lavender", body: "Try a lemon-scented candle or an oil diffuser. \n\nRub lemongrass on your palms and smell, or put a fresh cut lemon at your desk (that you squeeze into your water).", sourceName: "Own the Day, Own Your Life", sourceURL: "https://www.amazon.com/Own-Day-Your-Life-Optimized-ebook/dp/B072HLS5QJ", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let workAMTip50 = Tip(header: "", title: "Send emails in the morning to the best response", body: "Study: Emails sent in the morning, between 6 a.m. and 7 a.m. had the highest response rate - about 45%. \n\nThe study also found all weekdays to be equal. So don't worry about the day; focus on the morning, instead.", sourceName: "Fast Company", sourceURL: "https://www.fastcompany.com/3047586/the-best-time-of-day-to-do-everything-at-work", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let workAMTip51 = Tip(header: "", title: "The best time of day to ask for a raise is in the morning", body: "Research: People are more likely to operate at a higher level of moral awareness and self-control in the morning. This could work in your favor when asking for a raise. \n\nAs the day goes on, he or she will get mentally tired and tend to be less fair.", sourceName: "Fast Company", sourceURL: "https://www.fastcompany.com/3047586/the-best-time-of-day-to-do-everything-at-work", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let workAMTip52 = Tip(header: "", title: "Study: Learning new things is a more effective way to reduce stress than doing relaxing activities", body: "In the face of stress, employees experienced fewer negative emotions (e.g., anxiety, distress) and engaged in less unethical behavior (e.g., taking company property, being mean to coworkers) on days when they engaged in more learning activities at work (e.g., doing things to broaden their horizons, seeking out intellectual challenges, or learning something new) compared to other days. \n\nIn contrast, relaxing activities (e.g., taking some time to kick back, take a walk, or surf the web) did not lower the detrimental consequences of stress — employees experienced the same levels of negative emotions and engaged in just as much unethical behavior on days when they took on more relaxing activities at work, compared to other days. \n\nRelaxation thus did not appear to be as useful a stress reducer as learning was.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/09/to-cope-with-stress-try-learning-something-new", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//THUR
let workAMTip53 = Tip(header: "", title: "Productivity Hack: If something comes across your desk that will take less than 60 seconds to complete, do it immediately", body: "The buildup of multiple one-minute assignments throughout the day can create a constant state of catching up.", sourceName: "Inc.", sourceURL: "https://www.inc.com/christina-desmarais/31-simple-daily-habits-that-separate-high-achievers-from-everyone-else.html", sponsorLogo: "", sponsorURL: "")
let workAMTip54 = Tip(header: "", title: "Prevent Weight Gain: Remove snacks or candy from on the desk to in your desk", body: "Study: When candy dishes were removed from on the desk to in the desk, the average person ate 74 fewer calories every day than he or she would otherwise have - that's the equivalent of not gaining 5-6 pounds per year. \n\nWhen food's out of sight, it's out of mind.", sourceName: "Inc.", sourceURL: "https://www.inc.com/christina-desmarais/31-simple-daily-habits-that-separate-high-achievers-from-everyone-else.html", sponsorLogo: "", sponsorURL: "")
let workAMTip55 = Tip(header: "👫", title: "Be a leader / Get into a top MBA program: Be an influencer and collaborator at work", body: "Stanford's MBA application includes the rating of your leadership.  \n\nHigh Performers: \"Builds enduring partnerships within and outside of organization to improve effectiveness, even at short-term personal cost.\" \n\nLow Performers: \"Accepts input from others; engages other in problem solving.\"" , sourceName: "Stanford Graduate School of Business", sourceURL: "https://www.gsb.stanford.edu/sites/gsb/files/gsb-mba_leadership_form_v4.pdf", sponsorLogo: "", sponsorURL: "")
let workAMTip56 = Tip(header: "🤷‍♀️", title: "Feeling shame about work you have not completed is likely to make you less productive", body: "If you're behind on your work, forgiving yourself reduces the negative effects of shame. Focusing on your accomplishments instead of the work you have not completed gives you a sense of pride in what you have done.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/07/youre-never-going-to-be-caught-up-at-work-stop-feeling-guilty-about-it", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//FRI
let workAMTip57 = Tip(header: "", title: "Prevent Weight Gain: Don't have candy in or on your desk", body: "Study: People who had candy in or on their desk reported weighing 15.4 pounds more than those who didn't. \n\nMoving a candy dish 6 feet away from a desk led workers to eat 125 fewer calories per day - half of what they would have otherwise eaten.", sourceName: "Slim By Design", sourceURL: "https://www.slimbydesign.com/", sponsorLogo: "", sponsorURL: "")
let workAMTip58 = Tip(header: "☘️", title: "Reduce stress and increase motivation by surrounding yourself with plants, water, or animals", body: "Researchers noted that simply staring at an image of natural scenery for 40 seconds was enough to trigger the brain into a more relaxed state. \n\nPeople looking at plants also made fewer mistakes and were less distracted all around." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/health/why-natural-scenery-improves-your-mood-makes-you-more-productive-ncna860806", sponsorLogo: "TBD", sponsorURL: "www.test.com")


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

let workAMTipArray6 = [workAMTip25, workAMTip26, workAMTip27, workAMTip28]
let workAMTopic6 = Topic(title: workAMTitle, icon: workAMIcon, tip: workAMTipArray6)

let workAMTipArray7 = [workAMTip29, workAMTip30, workAMTip31, workAMTip32]
let workAMTopic7 = Topic(title: workAMTitle, icon: workAMIcon, tip: workAMTipArray7)

let workAMTipArray8 = [workAMTip33, workAMTip34, workAMTip35, workAMTip36]
let workAMTopic8 = Topic(title: workAMTitle, icon: workAMIcon, tip: workAMTipArray8)

let workAMTipArray9 = [workAMTip37, workAMTip38, workAMTip39, workAMTip40]
let workAMTopic9 = Topic(title: workAMTitle, icon: workAMIcon, tip: workAMTipArray9)

// WEEK 3
let workAMTipArray10 = [workAMTip41, workAMTip42, workAMTip43, workAMTip44]
let workAMTopic10 = Topic(title: workAMTitle, icon: workAMIcon, tip: workAMTipArray10)

let workAMTipArray11 = [workAMTip45, workAMTip46, workAMTip47, workAMTip48]
let workAMTopic11 = Topic(title: workAMTitle, icon: workAMIcon, tip: workAMTipArray11)

let workAMTipArray12 = [workAMTip49, workAMTip50, workAMTip51, workAMTip52]
let workAMTopic12 = Topic(title: workAMTitle, icon: workAMIcon, tip: workAMTipArray12)

let workAMTipArray13 = [workAMTip53, workAMTip54, workAMTip55, workAMTip56]
let workAMTopic13 = Topic(title: workAMTitle, icon: workAMIcon, tip: workAMTipArray13)

let workAMTipArray14 = [workAMTip57, workAMTip58, workAMTip39, workAMTip40]
let workAMTopic14 = Topic(title: workAMTitle, icon: workAMIcon, tip: workAMTipArray14)//WIP


// MARK: - Work, PM

let workPMTitle = workTitle
let workPMIcon = Constants.Icon.work

// WEEK 1
///// MON
let workPMTip1 = Tip(header: "👀", title: "Avoid computer eye strain by keeping your monitor arm's length away, blinking frequently, taking a break every 20 minutes", body: "When staring at screens, the number of times you blink decreases to a half or third your normal rate. That can lead to dry, irritated, and tired eyes. Every 20 minutes spent using a screen, you should try to look away at something that is 20 feet away from you for a total of 20 seconds." , sourceName: "Healthline", sourceURL: "https://www.healthline.com/health/eye-health/20-20-20-rule#prevention", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let workPMTip2 = Tip(header: "🤔", title: "Your best work — which for most people is thinking — will actually happen while you’re away from your work", body: "Your most creative ideas aren’t going to come while sitting in front of your monitor. When you’re working directly on a task, your mind is tightly focused on the problem at hand (i.e., direct reflection). Conversely, when you’re not working, your mind loosely wanders (i.e., indirect reflection)." , sourceName: "Benjamin P. Hardy, author of Willpower Doesn't Work", sourceURL: "https://medium.com/@benjaminhardy/this-morning-routine-will-save-you-20-hours-per-week-409f8acbde1", sponsorLogo: "logo", sponsorURL: "https://www.test.com/")

let workPMTip3 = Tip(header: "💵", title: "Get a mentor. Executives who have a mentor averaged higher percentage gains in salary, bonus, and total compensation than executives who did not have a mentor, survey finds", body: "Executives who have had a mentor earn more money at a younger age, are better educated, and are more likely to follow a career plan than executives who have not had a mentor. The majority of executives’ mentors were immediate supervisors, department or division heads, and presidents and CEOs.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/1979/01/much-ado-about-mentors", sponsorLogo: "", sponsorURL: "")

let workPMTip4 = Tip(header: "🤔", title: "Be a leader / Get into a top MBA program: Be trustworthy at work", body: "Stanford's MBA application includes the rating of your leadership. \n\nHigh Performers: \"Is reliable and authentic even at some personal cost; works to ensure all members of the organization operate with integrity\" and \"Acts as a role model for the values of the organization.\" \n\nLow Performers: \"Generally acts consistently with stated intentions\" and \"Shows occasional lapses in trustworthy behavior.\"" , sourceName: "Stanford Graduate School of Business", sourceURL: "https://www.gsb.stanford.edu/sites/gsb/files/gsb-mba_leadership_form_v4.pdf", sponsorLogo: "", sponsorURL: "")

//////////// TUES
let workPMTip5 = Tip(header: "🕒", title: "A study found that 3 p.m. on a Tuesday is the best time for a team meeting", body: "That's when everyone is most likely to be available. By contrast, the worst time to suggest a meeting is at the beginning of the workday. \n\nIt's important to leave people time to prepare — and if you have a meeting at 9 a.m., they'll either scramble to prep the day before or show up unprepared." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/the-best-time-of-day-to-do-everything-2016-5#-7", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let workPMTip6 = Tip(header: "👫", title: "Your brain can only focus for 90 to 120 minutes before it needs a break", body: "Humans are organisms. And organisms run in cycles. During the day, we move from higher to lower alertness–the ultradian rhythm. Studies of top performers found that they follow the same pattern: focus then rest, focus then rest.", sourceName: "Fast Company", sourceURL: "https://www.fastcompany.com/3013188/why-you-need-to-unplug-every-90-minutes", sponsorLogo: "", sponsorURL: "")

let workPMTip7 = Tip(header: "😀", title: "People perform best when they’re feeling positive energy and perform worst when they're feeling negative energy. Take breaks during the day", body: "We’re not physiologically capable of sustaining highly positive emotions for long periods. Confronted with the daily demands and challenges, people slip into negative emotions—the fight-or-flight mode, making it impossible to think clearly or logically. Take walking breaks, do deep breathing (exhaling slowly for 6 seconds), and express appreciation to others.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2007/10/manage-your-energy-not-your-time", sponsorLogo: "", sponsorURL: "")

let workPMTip8 = Tip(header: "👩‍💻", title: "Distractions are costly: A temporary shift in attention from one task to another—stopping to answer an e-mail, for instance—increases the amount of time necessary to finish the primary task by 25%", body: "It’s far more efficient to fully focus for 90 to 120 minutes, take a true break, and then fully focus on the next activity. ", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2007/10/manage-your-energy-not-your-time", sponsorLogo: "", sponsorURL: "")

///////////// WED
let workPMTip9 = Tip(header: "👫", title: "Advance your career by creating an advocacy team. A graceful way to approach a potential advocate is to ask for advice", body: "Rather than showing inadequacy, asking for advice makes you appear more competent. This is because being asked for advice is flattering, it feels good. When people provide advice they become invested in it, and therefore in you.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/07/how-to-advance-in-your-career-when-your-boss-wont-help", sponsorLogo: "", sponsorURL: "")

let workPMTip10 = Tip(header: "🌇", title: "At the end of the workday, identify the most important challenge for the next day and make it your very first priority when you arrive in the morning", body: "Concentrate the first hour of every day on the most important topic. By 10 am you'll feel like you've already had a productive day.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2007/10/manage-your-energy-not-your-time", sponsorLogo: "", sponsorURL: "")

let workPMTip11 = Tip(header: "👩‍💻", title: "Reduce constant distractions from emails", body: "Create a ritual of checking your e-mail twice a day—at 10:15 am and 2:30 pm. To make this work, notify people that you communicate with in advance that you're doing this and let me know they can call your phone number if it's an emergency.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2007/10/manage-your-energy-not-your-time", sponsorLogo: "", sponsorURL: "")

let workPMTip12 = Tip(header: "🙌", title: "Advance your career by finding your own platform and putting yourself in front of stakeholders", body: "Look for cross-functional or internal projects that will involve or be debriefed to stakeholders. If one doesn’t exist, propose a project that aligns with the corporate values or vision or that solves a stated need.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/07/how-to-advance-in-your-career-when-your-boss-wont-help", sponsorLogo: "", sponsorURL: "")

//////////// THUR
let workPMTip13 = Tip(header: "👫", title: "Employees can succeed without a formal mentor by developing productive relationships with key opinion leaders", body: "In every organization there are centers of influence. Draw maps of how people are connected to show spheres of influence in the organization, paying special attention to those with large numbers of connections. When you determine who the influencers are in your work, make yourself helpful to them. Look at what you can offer them rather than just what they can give you.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/07/how-to-advance-in-your-career-when-your-boss-wont-help", sponsorLogo: "", sponsorURL: "")
let workPMTip14 = Tip(header: "🤔", title: "Building your status outside the organization can often gain you visibility inside it", body: "Corporate leaders notice who is visible to customers, stakeholders, and the broader industry. Choose a way to do this that is genuinely interesting to you. You might decide to join an industry association and work toward holding a leadership position there. You can build a following on social media by demonstrating expertise and engaging with known thinkers in your field.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/07/how-to-advance-in-your-career-when-your-boss-wont-help", sponsorLogo: "", sponsorURL: "")
let workPMTip15 = Tip(header: "🚶‍♂️", title: "Increase your influence at work through body language", body: "Standing up straight with your shoulders back helps you come across as confident and commanding; slouching and looking down at your feet has the opposite effect. When you adopt a certain [slumping] posture, you think and talk in subordinate terms, and it increases the likelihood that you’ll be seen as less confident. Also, speaking in a lower tone lower than you normally do suggests power. This is useful to work on because it counteracts the effect of nervousness, which tends to push your tone higher.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/07/how-to-advance-in-your-career-when-your-boss-wont-help", sponsorLogo: "", sponsorURL: "")
let workPMTip16 = Tip(header: "💵", title: "Staying employed at the same company for over two years on average is going to make you earn less over your lifetime by 50% or more", body: "The problem with staying at a company forever is you start with a base salary and usually annual raises are based on a percentage of your current salary. There is often a limit to how high your manager can bump you up since it's based on a percentage of your current salary. However, if you move to another company, you start fresh and can usually command a higher base salary to hire you.", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/cameronkeng/2014/06/22/employees-that-stay-in-companies-longer-than-2-years-get-paid-50-less/#2501fb00e07f", sponsorLogo: "", sponsorURL: "")

//// FRI
let workPMTip17 = Tip(header: "🧐", title: "Having influence in the workplace helps you get noticed, get promoted, and receive raises", body: "Having a good relationship with your coworkers helps you get your project or budget approved because they like and trust you. The best way to get coworkers to back you and your agenda is to make them feel heard. Give them your undivided attention - turn your body toward the other person, freeze in place, and listen.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/02/how-to-increase-your-influence-at-work?utm_medium=email&utm_source=newsletter_daily&utm_campaign=mtod&referral=00203", sponsorLogo: "", sponsorURL: "")
let workPMTip18 = Tip(header: "👫", title: "Increase your influence on a particular issue by framing it as a benefit to the people you want to persuade", body: "If your proposal is fundamentally self-interested, people won’t line up. Don't use “I” too much. Instead, talk about how an idea will “benefit the organization” as a whole. “Use the word ‘we,’ as in ‘We’ll see value'. ", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/02/how-to-increase-your-influence-at-work?utm_medium=email&utm_source=newsletter_daily&utm_campaign=mtod&referral=00203", sponsorLogo: "", sponsorURL: "")
let workPMTip19 = Tip(header: "💵", title: "Switching jobs will probably give you a bigger pay increase than staying with your current employer", body: "Employees who changed jobs earned about 1% more year-over-year than those who stayed with the same employer. That might not make a huge difference for one year, but it could add up to hundreds of thousands of dollars of lost wages over the course of your career. \n\nIf your job doesn’t offer much in terms of professional or financial growth, then maybe it’s time to look for new opportunities.", sourceName: "LinkedIn", sourceURL: "https://www.linkedin.com/pulse/employees-who-stay-companies-more-than-2-years-get-paid-preitam-jape/", sponsorLogo: "", sponsorURL: "")
let workPMTip20 = Tip(header: "👩‍💻", title: "You should always be passively job searching while you have a job because it puts you in control of your career", body: "Passive job searching puts you in a position of strength because you have leverage of being employed. You’re able to negotiate for better pay and a better position than you have now. \n\nWhen you don’t have a job or want to leave a job that you dislike, on the other hand, you may appear and act more desperate. \n\nPassive job searching either helps you be grateful for the job you have and therefore more committed to your choice, or it makes you realize that you would feel more fulfilled (and therefore more committed) in another position or company.", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/forbeshumanresourcescouncil/2018/04/25/four-reasons-you-should-be-always-passively-job-hunting/#6cd852ab49ff", sponsorLogo: "", sponsorURL: "")

//// WEEK 2
//// MON
let workPMTip21 = Tip(header: "☀️", title: "Be more productive at work by matching your daily tasks with your circadian rhythm (internal clock)", body: "On average, early afternoon is a good time to do less important work like responding to emails because, after lunch, your energy levels begin to decline, hitting a low at around 3 pm. We often blame this on lunch, but in reality, this is just a natural part of our circadian rhythm. \n\nThen, use the late afternoon, early evening to work on important tasks that require deep cognitive processing because, after the 3 pm dip, alertness tends to increase again until hitting a second peak at approximately 6 pm." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2015/01/the-ideal-work-schedule-as-determined-by-circadian-rhythms", sponsorLogo: "", sponsorURL: "")
let workPMTip22 = Tip(header: "🧠", title: "Humans naturally move from full focus and energy to physiological fatigue every 90 minutes", body: "Our cognitive capacity declines throughout the day; you must build in frequent mental breaks to recharge and maintain productivity. \n\nTake short breaks every 90 minutes throughout the day to: \n• Drink water \n• Power walk \n• Eat healthy snacks. \n\nPower walking breaks get your blood pumping and feed the brain with oxygen that boosts your energy levels." , sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/kevinkruse/2017/02/06/want-to-get-more-done-try-taking-more-breaks/#36a8909a6db4", sponsorLogo: "", sponsorURL: "")
let workPMTip23 = Tip(header: "☀️", title: "Natural light and outdoor views in an office significantly improves health and wellness among workers", body: "Research: Access to natural light and outdoor views improved employee wellbeing by 78% and improved work performance by 70%. \n\nIn addition, workers in daylight office environments reported a 51% drop in the incidence of eyestrain, a 63% drop in the incidence of headaches and a 56% reduction in drowsiness." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/09/the-1-office-perk-natural-light", sponsorLogo: "", sponsorURL: "")
let workPMTip24 = Tip(header: "👫", title: "Study: To be a good leader, start out as a follower", body: "Being a good follower means caring more about getting things done than getting your way. To exert influence over others, you need to first show them that you share their values, experiences, and concerns so that when you make decisions, they believe you are acting in the interest of the group, and not just yourself." , sourceName: "The Ladders", sourceURL: "https://www.theladders.com/career-advice/to-be-a-good-leader-start-out-as-a-follower-study-finds", sponsorLogo: "", sponsorURL: "")

// TUES
let workPMTip25 = Tip(header: "🏝", title: "Study: Taking 11+ vacation days increases your chances of receiving a raise or bonus by 30%", body: "People who took 10 or fewer vacation days per year had only a 35% likelihood of receiving a raise or bonus in a 3-year period of time. \n\nPeople who took 11+ vacation days had a 65% chance of receiving a raise or bonus." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2016/07/the-data-driven-case-for-vacation", sponsorLogo: "", sponsorURL: "")
let workPMTip26 = Tip(header: "🤓", title: "Study: Prevent burnout by focusing on learning", body: "Workers who engaged in more learning activities (e.g. picking up a new skill, gathering new information, or seeking out intellectual challenges) reported significantly lower levels of negative emotions, unethical behavior, and burnout. \n\nLearning reduces stress because knowledge can be useful for solving near-term stressful problems and helps us see ourselves as constantly improving, rather than being stuck with fixed capabilities." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/09/to-cope-with-stress-try-learning-something-new", sponsorLogo: "", sponsorURL: "")
let workPMTip27 = Tip(header: "🤔", title: "Taking brief mental breaks improves performance when working on a long task", body: "The brain is built to detect and respond to change, and prolonged attention to a single task actually decreases performance. When faced with long tasks, it is best to impose brief breaks on yourself. Brief mental breaks will actually help you stay focused on your task. " , sourceName: "The University of Illinois", sourceURL: "https://news.illinois.edu/view/6367/205427", sponsorLogo: "", sponsorURL: "")
let workPMTip28 = Tip(header: "🙃", title: "Do you want to be in this job on your next work anniversary?", body: "People are likely to leave a job around the time of a work anniversary. If you dread the thought of being at your job on your next work anniversary, start looking now. You'll be better prepared when the time comes." , sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")

// WED
let workPMTip29 = Tip(header: "😀", title: "The most fulfilling jobs allow us to (1) work at our highest level and (2) be in control", body: "Jobs that are demanding but don't offer autonomy burn us out. Jobs that offer autonomy but little challenge bore us. If your job doesn't meet these 2 factors then consider finding a new job." , sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
let workPMTip30 = Tip(header: "👍", title: "If your boss has your back, takes responsibility instead of blaming others, encourages your efforts but also gets out of your way, and displays a sense of humor rather than a raging temper, you're probably in a good place", body: "But, if you is the opposite, watch out-and maybe find a new job." , sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
let workPMTip31 = Tip(header: "💸", title: "One of the best ways to boost your salary is to switch companies after 3 to 5 years", body: "Research found that 3 to 5 years represents the sweet spot for pay increases. Fewer than 3 years might be too little time to develop the most marketable skills. More than 5 years is when employees start becoming tied to their company and moving up its leadership ranks, which makes it more difficult to start somewhere else." , sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
let workPMTip32 = Tip(header: "📝", title: "One easy way to increase your wealth is to learn how to write and speak clearly", body: "Legendary investor and billionaire Warren Buffett said, \"Invest in yourself. And one easy way to become worth 50% more than you are now — at least — is to hone your communication skills — both written and verbal. You can have all the brainpower in the world, but you have to be able to transmit it. And the transmission is communication.\"" , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2018/12/05/warren-buffett-how-to-increase-your-worth-by-50-percent.html", sponsorLogo: "", sponsorURL: "")
// THUR
let workPMTip33 = Tip(header: "🙌", title: "Highly confident executives are 2.5 times more likely to be promoted to C-suite jobs", body: "Research: on 113 strong performers who were finalists for C-suite roles but got turned down in the final decision round concluded that 36% had poor executive presence. Executive presence is an ill-defined catchall for a multitude of issues from the seemingly trivial but career-damaging body odor, to deeper challenges, such as when someone doesn't carry herself/himself in a way consistent with company culture. Often executives who fail to appear confident get comments about lackluster executive presence." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/11/what-to-do-if-your-career-is-stalled-and-you-dont-know-why", sponsorLogo: "", sponsorURL: "")
let workPMTip34 = Tip(header: "🗣", title: "Successful executives use familiar vocabulary and down-to-earth storytelling to communicate", body: "Research: For executive jobs, candidates who used more complex, esoteric, or intellectual vocabulary were, 8 times less likely to be hired compared to candidates who used more familiar language. Down-to-earth storytelling, drawing on memorable results, is vastly more powerful than a intellectual, academic style." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/11/what-to-do-if-your-career-is-stalled-and-you-dont-know-why", sponsorLogo: "", sponsorURL: "")
let workPMTip35 = Tip(header: "👫", title: "Sucessful executives say \"we\" and \"team\" more than \"I\"", body: "Research on 113 strong performers who were finalists for C-suite jobs concluded that the weakest candidates used “I” at twice the rate of the rest of the sample. Candidates who go on and on with their own accomplishments impress decision-makers less than the ones who say, \"My proudest achievement was the moment the team began to knock it out of the park\" — and then clearly explain their role in the group’s achievement." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/11/what-to-do-if-your-career-is-stalled-and-you-dont-know-why", sponsorLogo: "", sponsorURL: "")
let workPMTip36 = Tip(header: "🤝", title: "Successful executives build strong peer-level relationships", body: "Research: People who prioritize their own advancement or department at the expense of other departments often do extremely well in the middle management ranks but stall out on the path to the C-suite, because they seem unable or unwilling to think beyond their own division or function." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/11/what-to-do-if-your-career-is-stalled-and-you-dont-know-why", sponsorLogo: "", sponsorURL: "")
//FRI
let workPMTip37 = Tip(header: "👩‍💻", title: "Do less taxing work, like respond to emails, during the afternoon slump", body: "Our energy levels fluctuate over the course of the day and the reality is, at 2 or 3 o’clock, we tire. Take those fluctuations of energy into account and plan some of the less taxing work, the work that requires less will power, less concentration, focus on doing those types of tasks at 2 or 3 o’clock in the afternoon. Or take a meeting that maybe is a lower level priority meeting." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/ideacast/2015/03/your-brains-ideal-schedule.html", sponsorLogo: "", sponsorURL: "")
let workPMTip38 = Tip(header: "👫", title: "Stronger candidates for leadership positions are more effective at persuading others, including their peers", body: "Research on 2,000+ CEOs found that high-performing CEOs are more likely than lower performers to treat others with respect (73% of the high-performing versus 59% of low-performing). They may act tough sometimes but over the longer term they build strong followership and the reputation for doing what’s right for the business." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/11/what-to-do-if-your-career-is-stalled-and-you-dont-know-why", sponsorLogo: "", sponsorURL: "")
let workPMTip39 = Tip(header: "🗣", title: "Sadly, research found that CEO candidates for US-based companies who had a significant accent were 12 times less likely to be hired", body: "While in-group bias is a deep and persistent issue in hiring, researchers found that at least for some of these CEO candidates their insufficient language fluency lead them to be perceived as less competent than they were and that as this bias was brought to light and they worked to improve fluency and reduce the accent, their career trajectory improved." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/11/what-to-do-if-your-career-is-stalled-and-you-dont-know-why", sponsorLogo: "", sponsorURL: "")
let workPMTip40 = Tip(header: "🧠", title: "Afternoon Slump Tip: We’re actually better at being creative when we’re fatigued", body: "Your fatigued brain isn’t very good at filtering out weird ideas, something that can lead to creative insights. So scheduling a creative task for the time in your day when you know you’re a little bit tired can actually be beneficial." , sourceName: "The Cut", sourceURL: "https://www.thecut.com/2015/03/sometimes-tired-people-are-creative-people.html", sponsorLogo: "", sponsorURL: "")
///////
// WEEK 3
//MON
let workPMTip41 = Tip(header: "", title: "Don't obsessively check their phone calls, emails and text messages because it lowers your IQ", body: "Employees who obsessively check their phone calls, emails and text messages throughout the day suffer an IQ drop of 10 points." , sourceName: "The Institute for Ethics and Emerging Technologies", sourceURL: "https://ieet.org/index.php/IEET2/more/pellissier20120109", sponsorLogo: "", sponsorURL: "")
let workPMTip42 = Tip(header: "🚶‍♂️", title: "Health experts say people should begin to stand, move and take breaks for at least 2 out of 8 hours at work -- and work your way toward 4 out of your 8-hour workday", body: "Prolonged sitting is dangerous, associated with a significantly higher risk of heart disease, diabetes, obesity, cancer, and depression. \n\nGet a standing desk. Take your calls standing. Walk or pace around. Hold standing or walking meetings. Walk over to a colleague’s desk instead of sending an e-mail. Use the stairs instead of the elevator. Take a lunch break." , sourceName: "The Washington Post", sourceURL: "https://www.washingtonpost.com/news/wonk/wp/2015/06/02/medical-researchers-have-figured-out-how-much-time-is-okay-to-spend-sitting-each-day/?utm_term=.b8239440b685", sponsorLogo: "", sponsorURL: "")
let workPMTip43 =  Tip(header: "💸", title: "Psychotherapy helps improve your mental health and future income, 13-year study finds", body: "Men who reported having had stress and mental problems, and consulting a psychotherapist, experienced a 13% income increase in the subsequent year. Women experienced an 8% income increase. The study found gender discrimination to partially explain the difference in income increase. However, consulting a psychotherapist helps women nearly twice as much as men in terms of mental health." , sourceName: "The Conversation", sourceURL: "https://theconversation.com/psychotherapy-can-make-you-richer-especially-if-you-are-a-man-107628", sponsorLogo: "", sponsorURL: "")
let workPMTip44 = Tip(header: "💵", title: "Clean up your desk before you leave work. People who test high in conscientiousness, such as staying organized, earn higher salaries", body: "A study found that conscientiousness is linked to higher income and job satisfaction. Conscientious people tend to be super organized, responsible, and plan ahead. For example, a disorganized, un-conscientious person might lose 20 or 30 minutes looking through their files to find the right document, while a conscientious person prevents these problems by staying organized." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/conscientiousness-predicts-job-performance-2014-12", sponsorLogo: "", sponsorURL: "")


//TUES
let workPMTip45 = Tip(header: "", title: "Getting a higher degree will increase your lifetime earnings, study finds", body: "Men with bachelor's degrees earn approximately $900,000 more in median lifetime earnings than high school graduates. Men with graduate degrees earn $1.5 million more in median lifetime earnings than high school graduates. \n\nWomen with bachelor's degrees earn $630,000 more in median lifetime earnings than high school graduates. Women with graduate degrees earn $1.1 million more than high school graduates." , sourceName: "US Social Security Administration", sourceURL: "https://www.ssa.gov/policy/docs/research-summaries/education-earnings.html", sponsorLogo: "", sponsorURL: "")
let workPMTip46 = Tip(header: "😴", title: "Increase productivity at work by taking a nap. Many tech companies have nap rooms for this very reason", body: "Sleepiness tends to peak around 2 p.m. making it a good time for a nap. Some of the greatest creative minds, most notably Thomas Edison, were or are huge fans of naps. Napping for 15 minutes you could be doing yourself (and your employer) a huge favor." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/successful-people-do-during-afternoon-lull-2014-4", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let workPMTip47 = Tip(header: "💵", title: "Job switchers are earning 48% higher annual pay increases in 2018 than those who stay in their jobs", body: "The pay raise gap between job seekers and job stayers in 2018 hasn't been this big since 2000. More workers are quitting their jobs and taking advantage of a labor market that's prioritizing employees over employers." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/how-to-get-a-raise-quit-your-job-2018-7", sponsorLogo: "", sponsorURL: "")
let workPMTip48 = Tip(header: "💵", title: "Millionaire Habit: Go above and beyond in work and business", body: "Unsuccessful people have “it’s not in my job description” syndrome. Consequently, they are never given more responsibility, and their wages grow very little from year to year—if they keep their jobs at all. \n\nWealthy individuals, on the other hand, make themselves invaluable to their employers or customers, writing articles related to their industry, speaking at industry events and networking." , sourceName: "SUCCESS Magazine", sourceURL: "https://www.success.com/16-rich-habits/", sponsorLogo: "", sponsorURL: "")

//WED
let workPMTip49 = Tip(header: "", title: "Researchers swabbed 33 keyboards in an office and found that they harbored up to 5 times the germs of a toilet seat", body: "Why? The survey found that most users cleaned their keyboards infrequently (if at all). Clean it: Use a soft, damp microfiber cloth to wipe the screen and keyboard at least once every other week." , sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/home/cleaning-organizing/germs-toilet-seat/", sponsorLogo: "", sponsorURL: "")
let workPMTip50 = Tip(header: "", title: "Using all of your paid time off (PTO) makes you more likley to get a promotion, a raise, or a bonus", body: "Study: Only 23% of people who didn't use all of their PTO were promoted in the last year, compared to 27% of people who used all of their PTO. \n\n78% of people who didn't use all of their PTO received a raise or bonus in the past 3 years, compared to 84% of people who used all of their PTO. \n\nTaking PTO allows workers to recharge and maintain peak productivity levels." , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2017/05/24/people-who-take-vacations-are-more-likely-to-get-a-raise.html", sponsorLogo: "", sponsorURL: "")
let workPMTip51 = Tip(header: "", title: "When you’re searching for a new job, you may be tempted to pull back on going for that promotion or raise. But this is the wrong strategy; it's the perfect opportunity for you to ramp up your game on negotiating, speaking up on your own behalf, and pushing back on difficult coworkers", body: "Job search coach Suzanne O'Brien says, \"When you’re planning to leave, you can afford to be bold. You’d be amazed how many of my clients get offered promotions once they stop trying to be liked and take the 'go big or go home' approach!", sourceName: "Bustle", sourceURL: "https://www.bustle.com/p/when-to-look-for-a-new-job-according-to-experts-18169407", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let workPMTip52 = Tip(header: "", title: "When to look for a new job, according to experts", body: "There are 3 elements to an ideal job: \n• The people you work with \n• The work you do (your job function) \n• The reason you’re doing it (the company’s purpose) \n\nIf you like 2 out of 3 of these areas, and you see opportunity for growth and promotion, it may be worth staying. If you only feel happy in 1 out of 3 of these areas, it’s time to make a move, there’s something better out there for you.", sourceName: "Bustle", sourceURL: "https://www.bustle.com/p/when-to-look-for-a-new-job-according-to-experts-18169407", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//THURS
let workPMTip53 = Tip(header: "", title: "When to look for a new job, according to experts", body: "If you find yourself dreading going to work in the morning more than usual, or you have low motivation and you procrastinate more than you used to, these are all signs that your body is telling you to look at what's going on in your day-to-day.", sourceName: "Bustle", sourceURL: "https://www.bustle.com/p/when-to-look-for-a-new-job-according-to-experts-18169407", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let workPMTip54 = Tip(header: "", title: "Self-made millionaire advice from Tyra Banks: When it comes to asking for a raise, \"You need to sit there and talk about your value.\"", body: "\"Talk about what you have done that has increased revenues, increased engagement, or how you've been working from nine to nine, even though you are only supposed to be working from nine to six. And that you are a salaried employee, so it's not like you're getting more money.\" \n\nShe added: \"And based on your input, into that company, and based on the metrics and the things that have happened because of the things that you were doing, that's why you deserve the raise. You don't need a raise, deserve a raise.\"", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/best-money-advice-from-self-made-millionaires-2018-12", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let workPMTip55 = Tip(header: "", title: "Don't multi-task: Just spotting an email mid-task is enough to reduce your IQ by 10 points as your mind wanders", body: "Multitasking prevents deep, creative thought as we switch back and forth, backtracking, constantly starting from scratch each time. \n\nOur limited cognitive capacity to multi-task means we are never fully focussed on either task. ", sourceName: "The Telegraph", sourceURL: "https://www.telegraph.co.uk/health-fitness/mind/7-everyday-ways-you-are-ruining-your-iq/", sponsorLogo: "", sponsorURL: "")
let workPMTip56 = Tip(header: "", title: "Work as hard as you can. Even though who you work with and what you work on are more important than how hard you work.", body: "- Naval Ravikant \n\nCEO and a co-founder of AngelList." , sourceName: "Wonderful Quote", sourceURL: "https://www.wonderfulquote.com/a/naval-ravikant-quotes", sponsorLogo: "", sponsorURL: "")

//FRI
let workPMTip57 = Tip(header: "", title: "You're not going to get rich renting out your time. You must own equity - a piece of a business - to gain your financial freedom.", body: "- Naval Ravikant \n\nCEO and a co-founder of AngelList." , sourceName: "Wonderful Quote", sourceURL: "https://www.wonderfulquote.com/a/naval-ravikant-quotes", sponsorLogo: "", sponsorURL: "")
let workPMTip58 = Tip(header: "", title: "Sign it's time to quit your job: You've started doing bad work because you're angry or frustrated", body: "You always want to leave your job on a high note. You never know when you'll need to tap an old boss or coworker for a reference or some career advice." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/top-sign-its-time-to-quit-your-job-2017-7", sponsorLogo: "", sponsorURL: "")
let workPMTip59 = Tip(header: "", title: "In looking for people to hire, look for three qualities: integrity, intelligence, and energy. And if they don’t have the first, the other two will kill you.", body: "- Warren Buffett \n\nInvestor and CEO of Berkshire Hathaway." , sourceName: "Goalcast", sourceURL: "https://www.goalcast.com/2018/05/17/21-integrity-quotes/", sponsorLogo: "", sponsorURL: "")
let workPMTip60 = Tip(header: "", title: "Increase Happiness: Use all your vacation time and negotiate for more until you're getting about 6 weeks off", body: "After 6 weeks of vacation, you'll actually feel more satisfied to get back to work. \n\nDon't be lured by the notion that you'll take your dream vacation later in life." , sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")

//WEEK 4
//MON
let workPMTip61 = Tip(header: "", title: "Increase Happiness: Having a best friend at work is one of the most powerful contributors to work satisfaction and productivity", body: "Studies suggest: Friends work better together than acquaintances, both in collaborative decision-making and unskilled labor. \n\nIf you have someone at work with whom you sometimes collaborate, for example, escalate the friendship by going out together after work, by inviting that person to your home, and by sharing more of your personal life. \n\nIf you don't have someone like this already, see if you can recruit a friend to your workplace - or join a friend by being recruited to theirs." , sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")



// Male CEOs with lower-pitched voices tended to manage large companies, make $187,000 a year more than their higher-pitched peers, and last in political office on average five months longer.

// uptalk, ending our sentences on a higher note so that they sound like a question
// seem more direct and confident

//WEEK 1
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

//WEEK 2
// MON
let workPMTipArray5 = [workPMTip21, workPMTip22, workPMTip23, workPMTip24]
let workPMTopic5 = Topic(title: workPMTitle, icon: workPMIcon, tip: workPMTipArray5)

//TUE
let workPMTipArray6 = [workPMTip25, workPMTip26, workPMTip27, workPMTip28]
let workPMTopic6 = Topic(title: workPMTitle, icon: workPMIcon, tip: workPMTipArray6)

//WED
let workPMTipArray7 = [workPMTip29, workPMTip30, workPMTip31, workPMTip32]
let workPMTopic7 = Topic(title: workPMTitle, icon: workPMIcon, tip: workPMTipArray7)

//THURS
let workPMTipArray8 = [workPMTip33, workPMTip34, workPMTip35, workPMTip36]
let workPMTopic8 = Topic(title: workPMTitle, icon: workPMIcon, tip: workPMTipArray8)

//FRI
let workPMTipArray9 = [workPMTip37, workPMTip38, workPMTip39, workPMTip40]
let workPMTopic9 = Topic(title: workPMTitle, icon: workPMIcon, tip: workPMTipArray9)

// WEEK 3
// MON
let workPMTipArray10 = [workPMTip41, workPMTip42, workPMTip43, workPMTip44]
let workPMTopic10 = Topic(title: workPMTitle, icon: workPMIcon, tip: workPMTipArray10)

//TUE
let workPMTipArray11 = [workPMTip45, workPMTip46, workPMTip47, workPMTip48]
let workPMTopic11 = Topic(title: workPMTitle, icon: workPMIcon, tip: workPMTipArray11)

//WED
let workPMTipArray12 = [workPMTip49, workPMTip50, workPMTip51, workPMTip52]
let workPMTopic12 = Topic(title: workPMTitle, icon: workPMIcon, tip: workPMTipArray12)

//THURS
let workPMTipArray13 = [workPMTip53, workPMTip54, workPMTip55, workPMTip56]
let workPMTopic13 = Topic(title: workPMTitle, icon: workPMIcon, tip: workPMTipArray13)

//FRI
let workPMTipArray14 = [workPMTip57, workPMTip58, workPMTip59, workPMTip60]
let workPMTopic14 = Topic(title: workPMTitle, icon: workPMIcon, tip: workPMTipArray14)

//WEEK 4
// MON
let workPMTipArray15 = [workPMTip61, workPMTip22, workPMTip23, workPMTip24]
let workPMTopic15 = Topic(title: workPMTitle, icon: workPMIcon, tip: workPMTipArray15)

//TUE
let workPMTipArray16 = [workPMTip25, workPMTip26, workPMTip27, workPMTip28]
let workPMTopic16 = Topic(title: workPMTitle, icon: workPMIcon, tip: workPMTipArray16)

//WED
let workPMTipArray17 = [workPMTip29, workPMTip30, workPMTip31, workPMTip32]
let workPMTopic17 = Topic(title: workPMTitle, icon: workPMIcon, tip: workPMTipArray17)

//THURS
let workPMTipArray18 = [workPMTip33, workPMTip34, workPMTip35, workPMTip36]
let workPMTopic18 = Topic(title: workPMTitle, icon: workPMIcon, tip: workPMTipArray18)

//FRI
let workPMTipArray19 = [workPMTip37, workPMTip38, workPMTip39, workPMTip40]
let workPMTopic19 = Topic(title: workPMTitle, icon: workPMIcon, tip: workPMTipArray19)

// WEEK 5
// MON
let workPMTipArray20 = [workPMTip41, workPMTip42, workPMTip43, workPMTip44]
let workPMTopic20 = Topic(title: workPMTitle, icon: workPMIcon, tip: workPMTipArray20)

//TUE
let workPMTipArray21 = [workPMTip45, workPMTip46, workPMTip47, workPMTip48]
let workPMTopic21 = Topic(title: workPMTitle, icon: workPMIcon, tip: workPMTipArray21)

//WED
let workPMTipArray22 = [workPMTip49, workPMTip50, workPMTip51, workPMTip52]
let workPMTopic22 = Topic(title: workPMTitle, icon: workPMIcon, tip: workPMTipArray22)

//THURS
let workPMTipArray23 = [workPMTip53, workPMTip54, workPMTip55, workPMTip56]
let workPMTopic23 = Topic(title: workPMTitle, icon: workPMIcon, tip: workPMTipArray23)

//FRI
let workPMTipArray24 = [workPMTip57, workPMTip58, workPMTip59, workPMTip60]
let workPMTopic24 = Topic(title: workPMTitle, icon: workPMIcon, tip: workPMTipArray24)



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

let workLateTitle = workTitle
let workLateIcon = Constants.Icon.work

//WEEK 1
//1
let workLateTip1 = Tip(header: "🤷‍♀️", title: "The research is clear: Long hours backfire for people and for companies", body: "Research: Overworking and stress leads to all sorts of health problems, including impaired sleep, depression, heavy drinking diabetes, impaired memory, and heart disease. \n\nThis also hurts a company's bottom line, showing up as absenteeism, turnover, and rising health insurance costs." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2015/08/the-research-is-clear-long-hours-backfire-for-people-and-for-companies", sponsorLogo: "GM_logo", sponsorURL: "https://www.gm.com/")

let workLateTip2 = Tip(header: "🙃", title: "Working long hours makes you less productive", body: "When we work too hard, we lose sight of the bigger picture. Even if you work long hour voluntarily, you're more likely to make mistakes when you're tired - and most of us tire more easily than we think we do." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2015/08/the-research-is-clear-long-hours-backfire-for-people-and-for-companies", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let workLateTip3 = Tip(header: "🥗", title: "If you have to stay late, take a break and eat a healthy dinner", body: "Give yourself a much-deserved break before jumping in for work round two. At the very least, take a five-minute walk outside and get some fresh air. \n\nBut if you can, grab a quick dinner away from your desk (and maybe a coffee or two). Ideally, you’d sit down and have a healthy, protein-packed meal." , sourceName: "The Muse", sourceURL: "https://www.themuse.com/advice/stuck-working-after-hours-heres-how-to-make-it-bearable", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let workLateTip4 = Tip(header: "🙅‍♀️", title: "Working more than 45 hours a week increases a person’s risk for heart-related health problems, like heart attacks", body: "The risk for heart disease progressively increases the more hours a person works. Regularly working late can increase the risk for stroke and affect focus and mood. \n\nNeed more convincing? Working more could actually make you less productive. One mind-blowing study found that someone who spends 70 hours working produces nothing more than they would have at 55 hours. That’s 15 hours entirely wasted.", sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/entry/work-stress-late-hours-heart-disease_us_56e85252e4b0860f99da951a", sponsorLogo: "sponsor", sponsorURL: "sponsorURL")

//2
let workLateTip5 = Tip(header: "📉", title: "Your output falls sharply after working 50 hours in a week", body: "Employee output falls sharply after a 50-hour work-week, and falls off a cliff after 55 hours—so much so that someone who puts in 70 hours produces nothing more with those extra 15 hours. \n\nWork, both mental and physical, results in fatigue that limits the cognitive and bodily resources people have to put towards their work. When you're not thinking clearly or moving as quickly or precisely you must work more slowly to maintain quality and safety requirements." , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2015/01/26/working-more-than-50-hours-makes-you-less-productive.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let workLateTip6 = Tip(header: "🌅", title: "Morning people are better positioned for career success, because they’re more proactive than evening people", body: "A number of studies have linked this trait, proactivity, with better job performance, greater career success, and higher wages. Though evening people do have some advantages-they tend to be smarter and more creative than morning people-they’re out of sync with the typical corporate schedule. An evening person can shift their circadian clock towards becoming a morning person by going to bed earlier and getting outside into the daylight early in the morning." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2010/07/defend-your-research-the-early-bird-really-does-get-the-worm", sponsorLogo: "", sponsorURL: "")
let workLateTip7 = Tip(header: "☀️", title: "For early birds, late afternoon/early evening is the best time to do tasks involving brainstorming and creativity", body: "Scientists characterize late afternoon/early evening as best for \"insight thinking,\" when energy levels go back up, resulting in a better mood and more open to creativity and out-of-the-box ideas. (The exact time depends on how early you wake up in the morning.)" , sourceName: "Unstuck", sourceURL: "https://www.unstuck.com/advice/time-to-get-things-done/", sponsorLogo: "", sponsorURL: "")
let workLateTip8 = Tip(header: "🙃", title: "In the long-run, working 60+ hour weeks results in the same productivity levels as working 40 hour weeks, study finds", body: "By working 60 hour weeks you can get a lot done. But, when you work that hard for too long, your productivity drops off. After 2 months of 60 hours a week you'll actually accomplish less than if you had only been working 40 hours a week." , sourceName: "The Week", sourceURL: "https://theweek.com/articles/601111/5-daily-rituals-that-make-happy", sponsorLogo: "", sponsorURL: "")

//3 WIP
let workLateTip9 = Tip(header: "💸", title: "If you’re given the choice between overtime and free time, unless you absolutely need the money, you’ll be happier choosing the free time", body: "Researchers found that after you have enough money to cover the basic necessities of life then an increase in salary provided little to no additional happiness. But having more time to do a hobby or be with loved ones made people much happier." , sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/health/wellness/how-to-be-happy/", sponsorLogo: "", sponsorURL: "")
let workLateTip10 = Tip(header: "", title: "Burnout is a medical condition caused by recurring workplace stress that has not been properly managed", body: "Signs of burnout include: \n• Feelings of energy depletion or exhaustion. \n• Reduced professional efficacy. \n• Increased mental distance from one's job, or feelings of negativism or cynicism related to one's job. \n\nDoctors and people working in other high-stress professions are burning out twice as fast as the average American worker." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/burnout-is-now-a-clinical-syndrome-2019-5", sponsorLogo: "", sponsorURL: "")
let workLateTip11 = Tip(header: "", title: "Don't work too late. \"I wish I hadn't worked so hard\" is a common deathbed regret", body: "Bronnie Ware, a palliative care nurse, wrote a book about the top 5 deathbed regrets. These are people who lived an entire life, accumulated wisdom, and had a chance to look back and say what they would have done differently. \n\n\"I wish I hadn't worked so hard\" came from every single male patient she cared for. Every single one.", sourceName: "Own The Day, Own Your Life", sourceURL: "https://www.amazon.com/dp/B072HLS5QJ/", sponsorLogo: "", sponsorURL: "")


/*
 https://www.economist.com/business/2018/11/24/americans-need-to-take-a-break
 A study of munitions workers in the first world war found that their output per hour tended to decline once they spent over 50 hours a week toiling.
 The Institute for Employment Studies in Britain reviewed academic research on the subject and concluded that “long hours working [more than 48 hours a week] was associated with (but was not proved to cause) various negative effects, such as decreased productivity, poor performance, health problems, and lower employee motivation.

 long hours simply lead to wasted effort. work expands to fill the time available.

 The modern world is supposedly moving in a direction where routine tasks are automated, leaving the more creative processes to the humans

 */

//MON
let workLateTipArray0 = [workLateTip1, workLateTip2, workLateTip3, workLateTip4]
let workLateTopic0 = Topic(title: workLateTitle, icon: workLateIcon, tip: workLateTipArray0)
//TUES
let workLateTipArray1 = [workLateTip5, workLateTip6, workLateTip7, workLateTip8]
let workLateTopic1 = Topic(title: workLateTitle, icon: workLateIcon, tip: workLateTipArray1)
//WED
let workLateTipArray2 = [workLateTip9, workLateTip10, workLateTip11, workLateTip8]
let workLateTopic2 = Topic(title: workLateTitle, icon: workLateIcon, tip: workLateTipArray1)
//THUR
let workLateTipArray3 = [workLateTip8, workLateTip7, workLateTip6, workLateTip5]
let workLateTopic3 = Topic(title: workLateTitle, icon: workLateIcon, tip: workLateTipArray3)




// MARK: - Work: Night Shift
let nightShiftWorkersTip1 = Tip(header: "🍽", title: "Night-shift workers has an increased risk of obesity as well as cardiovascular, cerebrovascular and gastrointestinal disorders", body: "Human circadian rhythms in sleep and metabolism are synchronized to the daily rotation of the earth, so that when the sun goes down you are supposed to be sleeping, not eating. When sleep and eating are not aligned with the body’s internal clock, it can lead to changes in appetite and metabolism, which could lead to weight gain." , sourceName: "Northwestern University", sourceURL: "https://www.northwestern.edu/newscenter/stories/2011/05/night-owls-weight-gain.html", sponsorLogo: "", sponsorURL: "")
let nightShiftWorkersTip2 = Tip(header: "", title: "People burn fewer calories when they work after the sun’s gone down and sleep during the day", body: "Study: When participants slept during the day, researchers found that they burned 52 to 59 fewer calories than they did while sleeping in the evening—likely because the schedule messed with their circadian rhythm, the body’s internal clock that plays a major role in metabolism function." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/things-you-did-today-to-slow-your-metabolism/", sponsorLogo: "", sponsorURL: "")
let nightShiftWorkersTip3 = Tip(header: "", title: "Avoid caffeine as your shift comes to an end", body: "Consuming caffeine toward the end of your shift might leave you sleepless once you get home. \n\nAvoid alcohol, too, as a way to fall asleep. As alcohol metabolizes, it actually has a rebound effect and wakes you up." , sourceName: "U.S. News", sourceURL: "https://health.usnews.com/health-news/health-wellness/articles/2014/02/11/healthy-tips-for-night-shift-workers", sponsorLogo: "", sponsorURL: "")





// https://www.eatthis.com/night-shift-weight-loss/

// MARK: - Work by Quarter (WIP)
// Display in Q4
let workQ41 = Tip(header: "🏝", title: "Make sure to take all of your vacation days before they expire", body: "Around half of all US workers do not take their full allotment of days off. In effect, many Americans spend part of the year working for nothing, donating the equivalent of $561 on average to their firms. A study by the Harvard Business Review in 2016 found that those who took 11 or more days off a year were almost twice as likely to get a raise or a bonus as those who took ten days off or fewer (although the causation could be the other way around; star workers may feel they can afford to take a break)." , sourceName: "The Econmist", sourceURL: "https://www.economist.com/business/2018/11/24/americans-need-to-take-a-break", sponsorLogo: "", sponsorURL: "")



// MARK: - MBA Leadership


// How top MBA programs grade their candidates

let leadershipAMTip1 = Tip(header: "👫", title: "Harvard Business School encourages its students to see success as making a positive difference in the lives of their colleagues, their organizations, their families, and society as a whole", body: "As you take on greater leadership responsibilities, the key is to stay grounded and authentic, face new challenges with humility, and balance professional success with more important but less easily quantified measures of personal success. The practice of mindful leadership gives you tools to measure and manage your life as you’re living it. It teaches you to pay attention to the present moment, recognizing your feelings and emotions and keeping them under control, especially when faced with highly stressful situations. When you are mindful, you’re aware of your presence and the ways you impact other people. In order to gain awareness and clarity about the present moment, you must be able to quiet your mind. You must have practices that you engage in every day. When I started meditating, I was able to stay calmer and more focused in my leadership. Meditation enabled me to cast off the many trivial worries that once possessed me and gain clarity about what was really important. I gradually became more self-aware and more sensitive to the impact I was having on others. The important thing is to have a set time each day to pull back from the intense pressures of leadership to reflect on what is happening. In addition to meditation, I know leaders who take time for daily journaling, prayer, and reflecting while walking, hiking or jogging. Mindfulness will help you clear away the trivia and needless worries about unimportant things, nurture passion for your work and compassion for others, and develop the ability to empower the people in your organization." , sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2012/10/mindfulness-helps-you-become-a", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let leadershipAMTip2 = Tip(header: "🤔", title: "The only way to think like a leader is to first act: to plunge yourself into new projects and activities, interact with very different kinds of people, and experiment with unfamiliar ways of getting things done", body: "Leaders ought to seek out new knowledge, experiences and networks in order to both grow as a leader and act as a better, more effective type of leader. Effective leaders create and use networks to tap new ideas, connect to people in different worlds, and access people for radically different perspectives. Network outside the organization, often an untapped source not only of contacts and people but of potential innovations and creative solutions to business problems." , sourceName: "????????????????????", sourceURL: "?????????????????????", sponsorLogo: "", sponsorURL: "")//WIP
let leadershipPMTip1 = Tip(header: "🤝", title: "Volunteer to help others", body: "Successful people agree with Anne Frank: \"No one has ever become poor from giving.\" Author Tom Corley studied the rich for five years and found that 73% of wealthy people volunteer for five or more hours per month. Nothing helps put things in perspective and reduce stress more than helping those less fortunate. Weekends are a great time to get involved in local and community volunteer events." , sourceName: "LifeHack.org", sourceURL: "https://www.lifehack.org/articles/productivity/12-weekend-habits-highly-successful-people.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")





// MARK: - New Job
let newJob1 = Tip(header: "👫", title: "Many individuals assert themselves too quickly and too soon. Let your results do the talking", body: "Research: Over time extroverts lose status in groups. So, at the outset, concentrate on accomplishing a few meaningful achievements, and once you've gained status by demonstrating excellence, feel free to be more assertive.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")

//MARK: - Unemployed
let unemployed1 = Tip(header: "", title: "", body: "Research: Nearly half of unemployed working-age men are addicted to opiate painkillers.", sourceName: "Own The Day, Own Your Life", sourceURL: "https://www.amazon.com/dp/B072HLS5QJ/", sponsorLogo: "", sponsorURL: "")




// MARK: - Home, AM

let homeAMTitle = "At Home"
let homeAMIcon = Constants.Icon.home
//WEEK 1
// 0
let homeAMTip1 = Tip(header: "🤧", title: "90% of Americans spend close to 22 hours inside every day", body: "Spending so much time inside is not good for your health: \n\n • Indoor air can be up to 5 times as polluted as outdoor air. \n\n • Poor air quality can increase eye, nose and throat irritation as well as headaches. \n\n• Living in damp and moldy homes increases risk of asthma by as much as 40%." , sourceName: "USA Today", sourceURL: "https://www.usatoday.com/story/sponsor-story/velux/2018/05/15/indoor-generation-and-health-risks-spending-more-time-inside/610289002/", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let homeAMTip2 = Tip(header: "🚶‍♂️", title: "Display confidence: Every time you walk through a doorway, remember to stand up, put your chin up, put your shoulders back, and smile", body: "This will create a first impression that causes other people to view you as confident, open, positive, and friendly. That will change the way that we think about ourselves." , sourceName: "The Unbeatable Mind Podcast", sourceURL: "https://unbeatablemind.com/jordan-harbinger/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let homeAMTip3 = Tip(header: "", title: "Live longer: Add more activity to your day", body: "Use as many of these as possible: \n• Stairs \n• Bicycle \n• Walking shoes \n• Rake \n• Broom \n• Snow shovel \n\nGet rid of as many of these as possible: \n• TV remote control \n• Garage door opener \n• Electric can opener \n• Electric blender \n• Snow blower \n• Power lawn mower", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")
let homeAMTip4 = Tip(header: "", title: "Live longer: Put tempting foods in hard to reach places", body: "Put candy bowls, cookie jars, and other temptations out of sight. Hide them in the cupboard or pantry. \n\nOtherwise, throw tempting foods in the garbage.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")

// 1
let homeAMTip5 = Tip(header: "☀️", title: "Get outside. Spending too much time indoors disrupts your natural sleep cycle", body: "Human sleep cycles have evolved to respond to natural daylight. \n\nNot getting enough sunlight affects the resetting of your circadian clock and, as a result, reduces your sleep quality." , sourceName: "USA Today", sourceURL: "https://www.usatoday.com/story/sponsor-story/velux/2018/05/15/indoor-generation-and-health-risks-spending-more-time-inside/610289002/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let homeAMTip6 = Tip(header: "", title: "Live longer: Showcase fruits and vegetables to increase your chances of eating them instead of unhealthy foods", body: "Put a beautiful fruit bowl in the middle of your kitchen table. At the bottom of it, leave a note that reads \"Fill Me.\" \n\nInstead of hiding vegetables in the refrigerator compartment that says \"Produce,\" put them front and center on shelves where you can see them.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")
let homeAMTip7 = Tip(header: "🍟", title: "Study: People living near fast-food restaurants were significantly less able to enjoy pleasurable activities that require savoring", body: "The study's authors propose that's because fast food can incite people to feel more impatient, diminishing their ability to slow down and savor life's simpler joys. \n\nBe more mindful about the cues you're exposed to in your everyday environments and how they can affect your psychology." , sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2014/06/140602155905.htm", sponsorLogo: "", sponsorURL: "")
let homeAMTip8 = Tip(header: "🍌", title: "Keep bananas from ripening too fast: Wrap each banana stem separately with a small piece of plastic. If needed, tie a rubber band on the outside of the plastic wrap", body: "Bananas release a gas called ethylene through their stems when ripening. \n\nOnce your bananas reach the perfect level of ripeness, put them into the fridge. The bananas will keep at the same level of ripeness while in the refrigerator, giving you more time to enjoy your bananas without wasting them. \n\nWarning: If you put the bananas in the refrigerator when they are green, they will never ripen. And if you take them out after being in the fridge, they will turn black.", sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/keep-bananas-fresh/", sponsorLogo: "", sponsorURL: "")

//2
let homeAMTip9 = Tip(header: "", title: "Prevent Weight Gain: Clear your kitchen counter, except for the fruit", body: "Study: On average, people who had fruit on their counter weighed 7 lbs LESS than people who didn't have fruit on the counter. \n\nPeople who had the following items on their kitchen counter weighed MORE than people who didn't: \n\n• Soda: +29 lbs \n• Diet Soda: +24 lbs \n• Breakfast cereal: +21 lbs \n• Cookies: +9 lbs \n• Crackers or chips: +8 lbs \n\nAdd: Fruit \n\nRemove: Soda, diet soda, breakfast cereal, cookies, crackers, and chips", sourceName: "Slim By Design", sourceURL: "https://www.slimbydesign.com/", sponsorLogo: "", sponsorURL: "")
let homeAMTip10 = Tip(header: "", title: "Prevent Weight Gain: Make your kitchen less \"loungeable\"", body: "The more you hang out in your kitchen, the more you'll eat. \n\nPeople who removed TVs, iPads, and comfy seating from the kitchen reported spending 18 fewer minutes in the kitchen each day. \n\nThat's less munching of cereal, chips, and cookies", sourceName: "Slim By Design", sourceURL: "https://www.slimbydesign.com/", sponsorLogo: "", sponsorURL: "")
let homeAMTip11 = Tip(header: "", title: "Prevent Weight Gain: Rearrange your cupboard, pantry, and refrigerator so the foods you see are the healthiest for you", body: "Study: You're 3-times more likely to eat the 1st food you see in the cupboard than the 5th one.", sourceName: "Slim By Design", sourceURL: "https://www.slimbydesign.com/", sponsorLogo: "", sponsorURL: "")
let homeAMTip12 = Tip(header: "", title: "Prevent Weight Gain: Rearrange your refrigerator by moving all your fruits and vegetables from the crisper bin to the top shelf of your refrigerator and move your less healthy foods down into teh crisper bin", body: "Study: After one week, the people who followed this recommended switch reported eating nearly 3-times as many fruits and vegetables as the week before.", sourceName: "Slim By Design", sourceURL: "https://www.slimbydesign.com/", sponsorLogo: "", sponsorURL: "")

//3
let homeAMTip13 = Tip(header: "", title: "Put fruit in a fruit bowl and place it within a 2-foot reach of where everyone walks when they go to the kitchen", body: "Study: The average time fruit lasted in a fruit bowl was 8 days. The average time it lasted in the refrigerator was 17 days.", sourceName: "Slim By Design", sourceURL: "https://www.slimbydesign.com/", sponsorLogo: "", sponsorURL: "")
let homeAMTip14 = Tip(header: "", title: "Do a 15-minute kitchen makeover", body: "\n• Clear the counters of any food other than a fruit bowl \n• Put the healthiest food out front and center in your cupboards and pantry \n• Put cut fruit and veggies in plastic bags on the eye-level shelf of your fridge \n• Wrap less healthy leftovers in aluminum foil or put in non-clear containers \n• Have a seperate, hard-to-reach snack cupboard and consider a child's lock for it", sourceName: "Slim By Design", sourceURL: "https://www.slimbydesign.com/", sponsorLogo: "", sponsorURL: "")
let homeAMTip15 = Tip(header: "", title: "Fat-proof your dinner table", body: "\n• Use dinner plates that are 9-10 inches in diameter \n• Sever food onto plates from the counter or stove \n• Use either tall or small glasses for anything that isn't water \n• Use smaller serving bowls and teaspoons as serviing spoons \n• Use the Half Plate Rule - Fill half the plate with fruit or veggies and fill the other half with anything you want", sourceName: "Slim By Design", sourceURL: "https://www.slimbydesign.com/", sponsorLogo: "", sponsorURL: "")
let homeAMTip16 = Tip(header: "", title: "Increase Happiness: Create one electronics-free room in your house where your family can sit together, pursue hobbies, play games, read, play an instrument, or study", body: "Create one cozy room: •\n\nRemove TVs, electronic games, and clocks. •\n\nLine the room with books or shelves holding pictures and objects that inspire you to pursue your passions. •\n\nPut a table in the middle that will accommodate your entire family.", sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")

//4
let homeAMTip17 = Tip(header: "", title: "Declutter your home. Clutter increases stress and lowers your mood and self-esteem", body: "Marie Kondo, author of The Life-Changing Magic of Tidying Up, recommends that you organize your home by categories rather than room - surveying all books, for example, so they don't just get stockpiled in a different space. \n\nAs you tidy up, hold each object in your hands and ask if it sparks joy. \n\nIf it doesn't, get rid of it.", sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")
let homeAMTip18 = Tip(header: "", title: "Study: Putting indoor plants in your home can increase productivity, lower blood pressure, and improve well-being", body: "Pick out a few low-maintenance plants, and spread them throughout your home. \n\nEasy to maintain plants include: \n• Golden pothos \n• Spider plants", sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")
let homeAMTip19 = Tip(header: "", title: "Increase Happiness: Designate a quiet corner in your house for regular meditation", body: "Research: Regular meditation lowers anxiety and stress. \n\n• Make sure you have a cushion to sit on. \n\n• Add things that help you unwind - candles, plants, or religious statues.", sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")
let homeAMTip20 = Tip(header: "", title: "Increase Happiness: Create a \"pride shrine\" to celebrate family history and accomplishments", body: "A place where pictures, objects, and other items remind everyone of good times with loved ones and things they share and can be proud of.", sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")


//WEEK 1
let homeAMTipArray0 = [homeAMTip1, homeAMTip2, homeAMTip3, homeAMTip4]
let homeAMTopic0 = Topic(title: homeAMTitle, icon: homeAMIcon, tip: homeAMTipArray0)

let homeAMTipArray1 = [homeAMTip5, homeAMTip6, homeAMTip7, homeAMTip8]
let homeAMTopic1 = Topic(title: homeAMTitle, icon: homeAMIcon, tip: homeAMTipArray1)

let homeAMTipArray2 = [homeAMTip9, homeAMTip10, homeAMTip11, homeAMTip12]
let homeAMTopic2 = Topic(title: homeAMTitle, icon: homeAMIcon, tip: homeAMTipArray2)

let homeAMTipArray3 = [homeAMTip13, homeAMTip14, homeAMTip15, homeAMTip16]
let homeAMTopic3 = Topic(title: homeAMTitle, icon: homeAMIcon, tip: homeAMTipArray3)

let homeAMTipArray4 = [homeAMTip17, homeAMTip18, homeAMTip19, homeAMTip20]
let homeAMTopic4 = Topic(title: homeAMTitle, icon: homeAMIcon, tip: homeAMTipArray4)

let homeAMTipArray5 = [homeAMTip5, homeAMTip6, homeAMTip7, homeAMTip8]
let homeAMTopic5 = Topic(title: homeAMTitle, icon: homeAMIcon, tip: homeAMTipArray5)

let homeAMTipArray6 = [homeAMTip9, homeAMTip10, homeAMTip11, homeAMTip12]
let homeAMTopic6 = Topic(title: homeAMTitle, icon: homeAMIcon, tip: homeAMTipArray6)

// MARK: - Home, PM

let homePMTitle = homeAMTitle
let homePMIcon = Constants.Icon.home

// 0
let homePMTip1 = Tip(header: "😴", title: "Sleep better by only using your room for sleep", body: "You know how Pavlov trained his dogs to associate a ringing bell with eating? That’s what you want to do with your bedroom and feeling sleepy. \n\nDon't use your bedroom for anything but sleep (and romance) to create a mental association between the bed and feeling sleepy." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/2014/12/14/bedtime-rituals_n_6309564.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let homePMTip2 = Tip(header: "🍽", title: "Sleep better by not eating 3 hours before bed", body: "Finish dinner no later than 3 hours before bedtime, so you give your stomach time to digest, and you won’t be kept awake by heartburn, gas or a sugar- or caffeine-fueled energy surge." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/2014/12/14/bedtime-rituals_n_6309564.html", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let homePMTip3 = Tip(header: "🤔", title: "Clean for 5+ minutes. Being in a clean room may promote healthy eating", body: "Study: Participants filled out a questionnaire either in a clean or messy room. \n\nAfterward, the participants were allowed to take a snack of chocolate or an apple on their way out. \n\nCompared with people in the messy room, the people in the clean room were more likely to choose the apple over the candy bar." , sourceName: "Association for Psychological Science", sourceURL: "https://www.psychologicalscience.org/news/releases/tidy-desk-or-messy-desk-each-has-its-benefits.html", sponsorLogo: "", sponsorURL: "")
let homePMTip4 = Tip(header: "🛏", title: "Change your bedsheets once a week - or a minimum of every 2 weeks", body:  "Though most bacteria on sheets is mostly harmless, the bacteria and fungi, along with the dirt and oils sloughed off during sleep, can cling to sheets and your skin, contributing to acne and dandruff. \n\nWash sheets in hot water." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/pop-culture/how-often-you-should-wash-everything-your-home-according-science-ncna826271", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//1
let homePMTip5 = Tip(header: "🤔", title: "Scientists recommend vacuuming rugs and washing floors every 1-2 weeks", body: "Rugs should be vacuumed weekly (more often if you have pets) to keep dust, dirt, and allergens at bay. \n\nHard floors should be washed or steamed once every couple of weeks." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/pop-culture/how-often-you-should-wash-everything-your-home-according-science-ncna826271", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let homePMTip6 = Tip(header: "📖", title: "Reading is beneficial, whether it’s on a tablet or paper. But if you have the choice, opt for a paper book", body: "1. Paper books provide higher memory retention than e-books since they give readers a sense of progression while they flip through the pages. \n\n2. E-books emit light, which interferes with the ability to fall asleep (same goes for computers and TV). \n\n3. Reading on a screen can be more tiring and stressful than reading the same material on paper." , sourceName: "Medium", sourceURL: "https://betterhumans.coach.me/how-to-fall-asleep-quickly-and-wake-up-ready-to-be-productive-cd7eadad010d", sponsorLogo: "", sponsorURL: "")
let homePMTip7 = Tip(header: "🌲", title: "Get outside: Getting some green can help reduce symptoms of depression, up your energy, and improve your overall well-being", body: "People who walked, ran, or biked in nature had a lower risk of poor mental health than people who exercised at the gym or at home." , sourceName: "Health", sourceURL: "https://www.health.com/depression/bad-to-stay-inside", sponsorLogo: "", sponsorURL: "")
let homePMTip8 = Tip(header: "", title: "Have debt? Make a loan or bill payment to improve your health", body: "Research: Having debt hanging over your head is one of the greatest stressors and contributes to chronic depression. \n\nBut paying off that debt, even a little bit, can bring an overwhelming sense of relief and happiness." , sourceName: "", sourceURL: "", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//2
let homePMTip9 = Tip(header: "🏡", title: "People make healthier choices when their home is neat, but people with a cluttered home have more stress and do less physical activity", body: "To reduce clutter, think of areas in your home in terms of \"zones.\" \n\nItems that are used or accessed frequently should claim prime real estate, while lesser-used items should be stored in closets and bottom shelves." , sourceName: "Prevention", sourceURL: "https://www.prevention.com/life/a20510511/how-to-organize-your-home/", sponsorLogo: "", sponsorURL: "")
let homePMTip10 = Tip(header: "📖", title: "Warren Buffett and Mark Cuban agree that reading is the key to success and winning against competitors", body: "Cuban: \"I read more than 3 hours almost every day. Most people won't put in the time to get a knowledge advantage.\" \n\nBuffett: \"I still probably spend 5 or 6 hours a day reading... All of you can do it, but I guarantee not many of you will do it.\"" , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2017/11/15/warren-buffett-and-mark-cuban-agree-reading-is-key-to-success.html", sponsorLogo: "", sponsorURL: "")
let homePMTip11 = Tip(header: "📚", title: "To read 200 books a year, read for 70 minutes a day", body: "In comparison to the estimated time it takes the average American to read 200 books (417 hours a year), the average American spends 608 hours on social media and 1,642 hours on TV each year. \n\nIf you want to read: \n\n1. Remove all distractions from your environment. \n2. Make books as easy to access as possible." , sourceName: "Quartz", sourceURL: "https://qz.com/895101/in-the-time-you-spend-on-social-media-each-year-you-could-read-200-books/", sponsorLogo: "", sponsorURL: "")
let homePMTip12 = Tip(header: "🛋", title: "Sitting on the couch watching TV does not make you happy", body: "Heavy TV viewers, and in particular those with a significant opportunity cost of time, report lower life satisfaction. \n\nLong TV hours are also linked to higher anxiety and material aspirations." , sourceName: "Social Science Research Network", sourceURL: "https://papers.ssrn.com/sol3/papers.cfm?abstract_id=774684", sponsorLogo: "", sponsorURL: "")

//3
let homePMTip13 = Tip(header: "⛹️‍♀️", title: "Increase Happiness: \n• Do a hobby or play a sport \n• Don't watch TV", body: "Study: Compared to watching TV, teenagers are 2.5 times more likely to experience happiness when doing a hobby and 3.0 times more likely to experience happiness when playing a sport." , sourceName: "The Week", sourceURL: "https://theweek.com/articles/601111/5-daily-rituals-that-make-happy", sponsorLogo: "", sponsorURL: "")
let homePMTip14 = Tip(header: "📺", title: "People who binge-watch TV tend to be among the most depressed and lonely", body: "Binge-watching is classified as viewing 2+ episodes of the same TV show in one sitting. In addition, watching television is a sedentary activity that frequently goes hand-in-hand with eating, which means it can put a person at risk for obesity, diabetes, heart disease, and other chronic health conditions." , sourceName: "CBS News", sourceURL: "https://www.cbsnews.com/news/depression-loneliness-linked-to-binge-watching-television/", sponsorLogo: "", sponsorURL: "")
let homePMTip15 = Tip(header: "💰", title: "A 5 year study of rich and poor people found that rich people don't watch TV, they read", body: "67% of rich people vs. 23% of poor people watch TV one hour or less per day. And only 6% of rich people watch reality shows, compared to 78% of the poor.\n\n86% of rich people vs. 25% of poor people love reading. Further, rich people tend to read non-fiction — in particular, self-improvement books. 88% of them read for self-improvement for 30 minutes each day, compared to 2% of poor people." , sourceName: "Entrepreneur", sourceURL: "https://www.entrepreneur.com/article/235228", sponsorLogo: "", sponsorURL: "")
let homePMTip16 = Tip(header: "😳", title: "Scientists recommend washing your sinks daily", body: "Even if they look clean, sinks can get really gross. \n\nBathroom sink: accumulates fecal matter from washing your hands after you use the bathroom. \n\nKitchen sink:  bacteria from food, like E.Coli and Salmonella, can contaminate the kitchen sink." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/pop-culture/how-often-you-should-wash-everything-your-home-according-science-ncna826271", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//4
let homePMTip17 = Tip(header: "🗑", title: "Reduce clutter: Sort new mail near a recycle bin", body: "Don't drop mail on the counter with the rest of the mail for the month. Much of the mail you receive is junk. Mail can be sorted into: \n\n• Recycle bin: junk mail you don’t need. \n\n• To-do pile: event invitations or bills (if you still use manual payment methods). \n\n• To-review pile: magazines, periodicals, personal letters." , sourceName: "Stanford BeWell", sourceURL: "https://bewell.stanford.edu/a-clean-well-lighted-place/", sponsorLogo: "", sponsorURL: "")
let homePMTip18 = Tip(header: "🛋", title: "Each hour spent sitting in front of the TV per day raised a person’s risk of death from cardiovascular disease by 18% and the risk of cancer death by 9%", body: "Even with a healthy body weight, prolonged periods of sitting have an unhealthy influence on blood sugar and blood fat levels. \n\nCompared with those watching less than 2 hours of TV, people who watched TV for 4+ hours a day were 80% more likely to die from heart and artery diseases." , sourceName: "The Guardian", sourceURL: "https://www.theguardian.com/science/2010/jan/11/watching-television-increases-death-heart-disease", sponsorLogo: "", sponsorURL: "")
let homePMTip19 = Tip(header: "💪", title: "If you watch TV for 3 hours tonight and do a mini workout during each commercial break, your exercise time will total over 45 minutes", body: "A 150-pound person can burn 300 calories doing bodyweight exercises in that time. Do one exercise for the duration of each commercial: \n\n• Step forward into a lunge. Step back and switch legs. \n• Do pushups or crunches. \n• Do dips off the couch. \n• Hold a plank position with your hands or elbows." , sourceName: "Verywell", sourceURL: "https://www.verywellfit.com/how-to-burn-300-calories-while-you-watch-tv-3495599", sponsorLogo: "", sponsorURL: "")
let homePMTip20 = Tip(header: "😰", title: "Clutter in your home makes you more stressed and lowers your ability to process information", body: "Researchers found that when your environment is cluttered, the chaos restricts your ability to focus. Clutter makes you distracted and unable to process information as well as you do in an uncluttered and organized environment. \n\nIf you want to have less stress and process information as effectively as possible, you need to clear the clutter from your home and work." , sourceName: "Stanford BeWell", sourceURL: "https://bewell.stanford.edu/a-clean-well-lighted-place/", sponsorLogo: "", sponsorURL: "")

//5
let homePMTip21 = Tip(header: "📺", title: "People who binge-watch TV tend to have problems with self-control", body: "Binge-watching is classified as viewing 2+ episodes of the same TV show in one sitting. Research is showing that the habit of binge-watching is driven by the same impulse as other addictions, such as drugs and alcohol, which involve firing up the dopamine receptors, the reward center of the brain." , sourceName: "CBS News", sourceURL: "https://www.cbsnews.com/news/depression-loneliness-linked-to-binge-watching-television/", sponsorLogo: "", sponsorURL: "")
let homePMTip22 = Tip(header: "🚶‍♂️", title: "Going for a walk outside reduces blood pressure, while increasing brain activity responsible for relaxation", body: "Research shows that going for a deliberate stroll helped reduce the effects of depression. Known as \"forest bathing,\" is the Japanese practice of simply being in nature. \n\nPro tip: Leave your earbuds at home and just take in the sounds of your neighborhood." , sourceName: "The Thirty", sourceURL: "https://thethirty.byrdie.com/mindfulness-tips-ideas", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let homePMTip23 = Tip(header: "😳", title: "Clean your kitchen sponges every fews days because they collect billions of bacteria", body: "Best ways to clean sponges: drop them into boiling water for 2 minutes, put them in the microwave for 2 minutes while damp, and replace them when they deteriorate." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/pop-culture/how-often-you-should-wash-everything-your-home-according-science-ncna826271", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let homePMTip24 = Tip(header: "", title: "Live longer: Put family first. Establish one room where family members gather daily", body: "Larger homes make it easier for family members to isolate themselves from the group. Smaller homes make it easier for families to bond and spend time together. \n\nSuccessful families make a point of eating at least one meal a day together, spending family time, and taking annual vacations.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")

//6
let homePMTip25 = Tip(header: "", title: "Live Longer: Make family a priority. Create a family shrine", body: "People in Okinawa, Japan, live longer than almost anyone on earth. In Okinawan homes, the ancestor shrine is always displayed in the best room of the house. \n\nIt serves as a constant reminder that we're not islands in time but connected to something bigger. \n\n• Pick a wall to display pictures of your parents and children.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")
let homePMTip26 = Tip(header: "", title: "Millionaire Habit: Read a book. Survey: Those who read 7+ books per year are 122% more likely to be millionaires as opposed to those who never read or only read 1-3 books per year", body: "Reading dramatically correlates with income and higher education, as well as overall happiness. \n\nFor example, Bill Gates reads 50 books a year and Warren Buffett spends as much as 80% of his day reading." , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2017/04/07/7-rich-habits-of-highly-successful-people.html", sponsorLogo: "", sponsorURL: "")
let homePMTip27 = Tip(header: "", title: "Prevent weight gain: Keep your TV, laptop, and cell phone out of the bedroom", body: "Research: Kids with access to 1 electronic device were 1.47 times as likely to be overweight as kids with no devices in the bedroom. \n\nThat increased to 2.57 times for kids with 3 devices. \n\nKeep your electronic devices in the living room." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/healthy-home/", sponsorLogo: "", sponsorURL: "")
let homePMTip28 = Tip(header: "", title: "Volunteering 2+ hours a week reduces loneliness and helps you develop good relationships, which is correlated to living a happier and healthier life", body: "A study of 10,000 people: 68% said volunteering \"helped them feel less isolated.\" \n\nBy volunteering for social causes that are important to us, we gain a sense of purpose, which may shield us from negative health outcomes." , sourceName: "Inc.", sourceURL: "https://www.inc.com/bill-murphy-jr/harvard-spent-80-years-studying-happiness-we-now-know-1-key-habit-that-makes-people-happier-the-problem-most-people-never-even-try.html", sponsorLogo: "", sponsorURL: "")

//WEEK 2
//7
let homePMTip29 = Tip(header: "", title: "Change your pillowcase and sheets once a week. One study found that your pillowcase has more bacteria than your toilet seat", body: "The longer you wait between washes, the more acne you will have from oil that gets transferred from your body to your sheets. \n\nIn addition, dust mites live and reproduce in your sheets. Dust mites cause red and itchy eyes, runny noses, and other cold-like symptoms in people who are allergic. \n\nExperts Recommend: \n• Wash your sheets once a week with the hottest water possible." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com.au/bed-how-often-should-wash-sheets-dust-mites-fungi-bacteria-2019-5", sponsorLogo: "", sponsorURL: "")
let homePMTip30 = Tip(header: "", title: "Each square inch of carpet has nearly 700 times more bacteria than on your toilet seat", body: "• Vacuum your carpets. \n\nAnd since your vacuum cleaner can’t reach to the bottom of the carpet, hire a company to deep clean at least once a year." , sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/home/cleaning-organizing/germs-toilet-seat/", sponsorLogo: "", sponsorURL: "")
let homePMTip31 = Tip(header: "", title: "30-year study: Unhappy people watched 20% more TV in their spare time than very happy people", body: "The researchers believe that TV may provide viewers with short-run pleasure but at the expense of long-term unhappiness. \n\nThe researchers found that happy people: \n\n• Socialize more \n• Read more newspapers \n• Attend more religious services" , sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2008/11/081113080006.htm", sponsorLogo: "", sponsorURL: "")
let homePMTip32 = Tip(header: "", title: "Wipe down doorknobs once a week (in some rooms)", body: "Doorknobs in the bathroom and the kitchen are bound to catch a lot more bacteria, so disinfecting them at least once a week might be a good idea, especially if there’s an illness in the house." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/pop-culture/how-often-you-should-wash-everything-your-home-according-science-ncna826271#anchor-Disinfectthesinks", sponsorLogo: "", sponsorURL: "")

//8
let homePMTip33 = Tip(header: "", title: "Save the environment: Limit your washing machine usage. Every time we wash our clothes an average of 9 million [plastic] microfibres are released into the environment", body: "If your clothes have a stain, try spot-cleaning them with water rather than washing the whole garment. \n\nWhen you do wash: \n• Set the machine to a lower temperature \n• Use liquid detergent: Powder detergent creates more friction between the clothes [during washing], so more fibers are released, whereas liquid is smoother. The less friction there is, the fewer fibers are released. \n• Avoid overloading washing machines - fewer clothes in the drum means there's less friction." , sourceName: "BBC News", sourceURL: "https://www.bbc.com/news/world-48908413", sponsorLogo: "", sponsorURL: "")
let homePMTip34 = Tip(header: "", title: "Unplug inactive devices. On average, inactive devices account for $165 of your annual electricity bill", body: "Study: The 10 most energy-draining always-on devices, with the cost of their annual energy use, were as follows: \n\n• Water recirculation pump, up to $93 \n• Desktop computer, up to $49 \n• TV, up to $38 \n• Cable set-top box, up to $30 \n• Audio receiver/stereo, up to $22 \n• Printer, up to $11 \n• Furnace, up to $8 \n• Coffee maker, up to $6 \n• Dryer, up to $4 \n• Ground fault circuit interrupter outlets, $1 each" , sourceName: "CBS News", sourceURL: "https://www.cbsnews.com/news/always-on-devices-are-using-huge-amounts-of-energy/", sponsorLogo: "", sponsorURL: "")
let homePMTip35 = Tip(header: "", title: "Save time: Use the dishwasher to clean more than just dishes", body: "Dishwasher friendly items include: rubber flip-flops, canvas sneakers, and baseball caps, makeup brushes, non-electrical plastic and rubber kids’ toys, contacts cases, mouth guards, hairbrushes and combs, showerheads, refrigerator shelves and plastic and metal garden tools. \n\nHowever, don't combine them with dishes to reduce the chance of any lingering food bits getting stuck in the items." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/lifestyle/25-time-saving-hacks-will-add-hours-back-your-week-ncna1041011", sponsorLogo: "", sponsorURL: "")
let homePMTip36 = Tip(header: "", title: "Research: 85% of self-made millionaires read two or more books per month", body: "Millionaires read books that encourage self-improvement. This includes topics like: \n• career \n• health \n• how-tos \n• biographies \n• self-help \n• leadership \n•  current events \n\nReading every day puts you in the top 5% of the crowd." , sourceName: "Entrepreneur", sourceURL: "https://www.entrepreneur.com/article/304219", sponsorLogo: "", sponsorURL: "")

//9
let homePMTip37 = Tip(header: "", title: "Prevent Weight Gain: Clear your kitchen counter, except for the fruit", body: "Study: On average, people who had fruit on their counter weighed 7 lbs LESS than people who didn't have fruit on the counter. \n\nPeople who had the following items on their kitchen counter weighed MORE than people who didn't: \n\n• Soda: +29 lbs \n• Diet Soda: +24 lbs \n• Breakfast cereal: +21 lbs \n• Cookies: +9 lbs \n• Crackers or chips: +8 lbs \n\nAdd: Fruit \n\nRemove: Soda, diet soda, breakfast cereal, cookies, crackers, and chips", sourceName: "Slim By Design", sourceURL: "https://www.slimbydesign.com/", sponsorLogo: "", sponsorURL: "")
let homePMTip38 = Tip(header: "", title: "Millionaire Habit: 65% of self-made millionaires had at 3+ streams of income that they created prior to making their first million dollars", body: "One sign that you'll never be rich is that you have only one source of income. The rich do not rely on one source of income. \n\nAdditional streams could be: \n• real-estate rentals \n• a side hustle \n• a part-time job" , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2017/05/16/signs-youll-never-be-rich.html", sponsorLogo: "", sponsorURL: "")
let homePMTip39 = Tip(header: "", title: "Learning to play a musical instrument can raise your IQ by 7+ points", body: "Participants who practiced an instrument for as little as a few hours a week showed significant increases in brain functioning and memory capacity after just 4 months." , sourceName: "Inc.", sourceURL: "https://www.inc.com/melanie-curtin/want-to-raise-your-iq-neuroscience-says-to-take-up-this-easy-habit.html", sponsorLogo: "", sponsorURL: "")
let homePMTip40 = Tip(header: "", title: "Self-made billionaires read. Warren Buffett reads 500 pages a day and says reading is the most valuable source of knowledge", body: "Many prefer the likes of The Economist, Financial Times, Fortune, or The Wall Street Journal. \n\nOthers go for biographies of iconic business leaders or books about finance, business, self-help, science, history, or technology." , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2019/06/21/self-made-billionaires-the-6-habits-of-massive-wealth-and-success.html", sponsorLogo: "", sponsorURL: "")

//10
let homePMTip41 = Tip(header: "", title: "Prevent Weight Gain: Make your kitchen less \"loungeable\"", body: "The more you hang out in your kitchen, the more you'll eat. \n\nPeople who removed TVs, iPads, and comfy seating from the kitchen reported spending 18 fewer minutes in the kitchen each day. \n\nThat's less munching of cereal, chips, and cookies", sourceName: "Slim By Design", sourceURL: "https://www.slimbydesign.com/", sponsorLogo: "", sponsorURL: "")
let homePMTip42 = Tip(header: "", title: "Prevent Weight Gain: Rearrange your refrigerator by moving all your fruits and vegetables from the crisper bin to the top shelf of your refrigerator and move your less healthy foods down into teh crisper bin", body: "Study: After one week, the people who followed this recommended switch reported eating nearly 3-times as many fruits and vegetables as the week before.", sourceName: "Slim By Design", sourceURL: "https://www.slimbydesign.com/", sponsorLogo: "", sponsorURL: "")
let homePMTip43 = Tip(header: "", title: "Increase Happiness: Buy a home-wide music system (or wireless speakers) and keep music on in the background", body: "• Soft instrumental music can help us relax. \n\n• Upbeat music can help us get going in the morning.", sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")
let homePMTip44 = Tip(header: "", title: "Survey: The happiest people watched less than an hour of TV per day. The least happy people watched 8+ hours of TV daily", body: "On average, Americans watch 5+ hours of TV daily. \n\n• Make TV screens less convenient to view in your house. \n\n• Get down to one TV in your house. \n\n• Put it in an out-of-the-way place, ideally in a cabinet you can shut when you're not watching.", sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")


//WEEK 1
let homePMTipArray0 = [homePMTip1, homePMTip2, homePMTip3, homePMTip4]
let homePMTopic0 = Topic(title: homePMTitle, icon: homePMIcon, tip: homePMTipArray0)

let homePMTipArray1 = [homePMTip5, homePMTip6, homePMTip7, homePMTip8]
let homePMTopic1 = Topic(title: homePMTitle, icon: homePMIcon, tip: homePMTipArray1)

let homePMTipArray2 = [homePMTip9, homePMTip10, homePMTip11, homePMTip12]
let homePMTopic2 = Topic(title: homePMTitle, icon: homePMIcon, tip: homePMTipArray2)

let homePMTipArray3 = [homePMTip13, homePMTip14, homePMTip15, homePMTip16]
let homePMTopic3 = Topic(title: homePMTitle, icon: homePMIcon, tip: homePMTipArray3)

let homePMTipArray4 = [homePMTip17, homePMTip18, homePMTip19, homePMTip20]
let homePMTopic4 = Topic(title: homePMTitle, icon: homePMIcon, tip: homePMTipArray4)

let homePMTipArray5 = [homePMTip21, homePMTip22, homePMTip23, homePMTip24]
let homePMTopic5 = Topic(title: homePMTitle, icon: homePMIcon, tip: homePMTipArray5)

let homePMTipArray6 = [homePMTip25, homePMTip26, homePMTip27, homePMTip28]
let homePMTopic6 = Topic(title: homePMTitle, icon: homePMIcon, tip: homePMTipArray6)
//WEEK 2
let homePMTipArray7 = [homePMTip29, homePMTip30, homePMTip31, homePMTip32]
let homePMTopic7 = Topic(title: homePMTitle, icon: homePMIcon, tip: homePMTipArray7)

let homePMTipArray8 = [homePMTip33, homePMTip34, homePMTip35, homePMTip36]
let homePMTopic8 = Topic(title: homePMTitle, icon: homePMIcon, tip: homePMTipArray8)

let homePMTipArray9 = [homePMTip37, homePMTip38, homePMTip39, homePMTip40]
let homePMTopic9 = Topic(title: homePMTitle, icon: homePMIcon, tip: homePMTipArray9)

let homePMTipArray10 = [homePMTip41, homePMTip42, homePMTip43, homePMTip44]
let homePMTopic10 = Topic(title: homePMTitle, icon: homePMIcon, tip: homePMTipArray10)

let homePMTipArray11 = [homePMTip9, homePMTip10, homePMTip11, homePMTip12]
let homePMTopic11 = Topic(title: homePMTitle, icon: homePMIcon, tip: homePMTipArray11)

let homePMTipArray12 = [homePMTip13, homePMTip14, homePMTip15, homePMTip16]
let homePMTopic12 = Topic(title: homePMTitle, icon: homePMIcon, tip: homePMTipArray12)

let homePMTipArray13 = [homePMTip25, homePMTip26, homePMTip27, homePMTip28]
let homePMTopic13 = Topic(title: homePMTitle, icon: homePMIcon, tip: homePMTipArray13)


// MARK: - Bathroom AM

let bathroomTitle = "Bathroom"
let bathroomIcon = Constants.Icon.bathroom

//0
let bathroomTip1 = Tip(header: "🚽", title: "Are you hydrated when you go to the bathroom? Staying hydrated reduces your risk for kidney stones.", body: "When you're getting enough water, urine flows freely, is light in color and free of odor. When your body is not getting enough fluids, urine concentration, color, and odor increases because the kidneys trap extra fluid for bodily functions. \n\nIf you chronically drink too little, you may be at higher risk for kidney stones, especially in warm climates." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/diet/features/6-reasons-to-drink-water#1", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let bathroomTip2 = Tip(header: "😁", title: "Millionaire Habit: Floss every day", body: "Study of what rich people and poor people do every day: \"I floss every day.\" \n• Rich people who agree: 62% \n• Poor people who agree: 16%", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/rich-people-daily-habits-2014-6", sponsorLogo: "", sponsorURL: "")

let bathroomTip3 = Tip(header: "🏡", title: "Scientists recommend cleaning your bathroom door knobs once a week", body: "Disinfect bathroom doorknobs at least once a week, especially if there’s an illness in the house." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/pop-culture/how-often-you-should-wash-everything-your-home-according-science-ncna826271", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let bathroomTip4 = Tip(header: "", title: "Live longer: Weighing yourself daily helps you to reduce your weight and keep it off in the long run", body: "One study followed women who were trying to lose weight. After two years, women who weighed themselves daily lost an average of 12 pounds. Women who never weighed themselves actually gained an average of 5 pounds. \n\nIn other words, at the end of 2 years, women who weighed themselves every day were (on average) about 17 pounds lighter than the women who never weighed themselves.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")

//1
let bathroomTip5 = Tip(header: "", title: "Live longer by weighing yourself often — not in an obsessive way, of course", body: "Study: Those who monitored their weight more frequently were less likely to gain weight. \n\nA healthy weight reduces your risk of: \n• High blood pressure \n• High cholesterol \n• Diabetes \n• Cancer" , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2019/04/09/harvard-study-says-these-5-habits-may-help-you-live-10-years-longer.html", sponsorLogo: "", sponsorURL: "")
let bathroomTip6 = Tip(header: "", title: "Colon and rectal cancer is on the rise for people as young as 20 years old", body: "Talk to your doctor if any of the following symptoms don't go away: \n\n• Rectal Bleeding: This includes blood coming from the rectum, or blood in the stool or in the toilet after a bowel movement. \n\n• Dark Or Black Stools: This may indicate bleeding from a tumor. \n\n• Narrow, Thin Or Ribbon-Like Stool: This may signal that a tumor is obstructing your bowels or rectum. \n\n• Diarrhea Or Constipation (Less Than 3 Bowel Movements A Week): See a doctor if the changes in bowel movements last 2 weeks or more. \n\nDon’t be afraid of the tests. A colonoscopy is the gold standard for diagnosing colorectal cancers, and it saves lives.", sourceName: "Yale Medicine", sourceURL: "https://www.yalemedicine.org/stories/colorectal-cancer-in-young-people/", sponsorLogo: "", sponsorURL: "")
let bathroomTip7 = Tip(header: "🚰", title: "Drinking water reduces your chances of getting constipation", body: "When you don't get enough liquid, your colon pulls water from stools to maintain hydration -- and the result is constipation. \n\nAdequate liquid and fiber is the perfect combination, because the liquid pumps up the fiber and acts like a broom to keep your bowel functioning properly." , sourceName: "WebMD", sourceURL: "https://www.webmd.com/diet/features/6-reasons-to-drink-water#3", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let bathroomTip8 = Tip(header: "", title: "Avoid bacteria: Wash your hands and dry them with paper towels, not jet air dryers", body: "Not drying your hands after washing them helps bacteria to survive on your hands. \n\nA study found that paper towels are the most hygienic way to dry your hands. \n\nAvoid jet air dryers, which have also been associated with the spread of germs in bathrooms.", sourceName: "Harvard Health Publishing", sourceURL: "https://www.health.harvard.edu/blog/the-bacterial-horror-of-the-hot-air-hand-dryer-2018051113823", sponsorLogo: "", sponsorURL: "")

//3
let bathroomTip9 = Tip(header: "", title: "Study: Smartphones are more than 6 times dirtier than toilet seats", body: "“A smartphone which is brought into a washroom will invariably end up with invisible traces of feces and urine on it,” hygiene expert Lisa Ackerley said. “These will then transfer to the owner’s hands.” \n\nClean it: Reduce your exposure to germs by cleaning your electronic screens with screen wipes or a damp, soft cloth—and leaving them out of the bathroom in the first place.", sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/home/cleaning-organizing/germs-toilet-seat/", sponsorLogo: "", sponsorURL: "")

let bathroomTip10 = Tip(header: "", title: "Your bathroom faucet handle can have 21 times the bacteria of your toilet seat", body: "One study found that drug-resistant bacteria like E. coli can spread from the pipes to your sink and hands. \n\nClean it: Disinfect and clean regularly along with the rest of your sink to make sure washing your hands isn’t making you dirtier.", sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/home/cleaning-organizing/germs-toilet-seat/", sponsorLogo: "", sponsorURL: "")
let bathroomTip11 = Tip(header: "😁", title: "Take care of your smile like supermodel Christie Brinkley", body: "\"I brush my teeth morning and night, alternating toothpaste brands. In addition to flossing I use a Water Pik to massage my gums and remove food particles. I love the toothpicks with a bottle-brush-like cleaner on one end and carry them with me.\" \n\n- Christie Brinkley \n\nModel, actress and entrepreneur.", sourceName: "Los Angeles Times", sourceURL: "https://www.latimes.com/health/la-he-christie-brinkley-interview-20151226-story.html", sponsorLogo: "", sponsorURL: "")
let bathroomTip12 = Tip(header: "🚽", title: "Scientists recommend wiping down your bathroom at least once a week", body: "Your bathroom is the ultimate bacteria host; E.coli can be found within 6 feet of the toilet and in the sink. Disinfect the toilet and sink at least once weekly, and the bathtub every 2 weeks. \n\nYour shower curtains should be disinfected weekly to avoid mildew, which can cause skin, eye and throat irritation in some people." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/pop-culture/how-often-you-should-wash-everything-your-home-according-science-ncna826271", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//4
let bathroomTip13 = Tip(header: "", title: "Research: To remove harmful germs, wash your hands for at least 20 seconds in cold or warm water", body: "Rub your hands together \"vigorously\", and covering all surfaces: the back of the hands, wrists, between the fingers, and under fingernails where grime gets stuck. \n\nAvoid using hot water to wash your hands because it can dry them out and potentially damage the skin." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/how-long-should-you-wash-your-hands", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let bathroomTip14 = Tip(header: "", title: "Bowel Inspection: If you see pieces of food in your bowels, it means you didn't digest it, which usually means you ate too fast", body: "Slow down your eating to allow for proper digestion. \n\nStudy: fast eaters are up to 115% more likely to be obese." , sourceName: "Own The Day, Own Your Life", sourceURL: "https://www.amazon.com/dp/B072HLS5QJ/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let bathroomTip15 = Tip(header: "", title: "Ginger has the ability to speed up the time it takes your stomach to pass food to your digestive tract by up to 50%", body: "Add ginger to your meal or tea whenever you need to speed up digestion." , sourceName: "Own The Day, Own Your Life", sourceURL: "https://www.amazon.com/dp/B072HLS5QJ/", sponsorLogo: "TBD", sponsorURL: "www.test.com")


let bathroomTipArray0 = [bathroomTip1, bathroomTip2, bathroomTip3, bathroomTip4]
let bathroomTopic0 = Topic(title: bathroomTitle, icon: bathroomIcon, tip: bathroomTipArray0)

let bathroomTipArray1 = [bathroomTip5, bathroomTip6, bathroomTip7, bathroomTip8]
let bathroomTopic1 = Topic(title: bathroomTitle, icon: bathroomIcon, tip: bathroomTipArray1)

let bathroomTipArray2 = [bathroomTip9, bathroomTip10, bathroomTip11, bathroomTip12]
let bathroomTopic2 = Topic(title: bathroomTitle, icon: bathroomIcon, tip: bathroomTipArray2)

let bathroomTipArray3 = [bathroomTip1, bathroomTip2, bathroomTip3, bathroomTip4]
let bathroomTopic3 = Topic(title: bathroomTitle, icon: bathroomIcon, tip: bathroomTipArray3)

let bathroomTipArray4 = [bathroomTip5, bathroomTip6, bathroomTip7, bathroomTip8]
let bathroomTopic4 = Topic(title: bathroomTitle, icon: bathroomIcon, tip: bathroomTipArray4)

let bathroomTipArray5 = [bathroomTip9, bathroomTip10, bathroomTip11, bathroomTip12]
let bathroomTopic5 = Topic(title: bathroomTitle, icon: bathroomIcon, tip: bathroomTipArray5)

let bathroomTipArray6 = [bathroomTip8, bathroomTip8, bathroomTip6, bathroomTip5]
let bathroomTopic6 = Topic(title: bathroomTitle, icon: bathroomIcon, tip: bathroomTipArray6)


// MARK: - Bathroom PM

let bathroomPMTitle = "Bathroom"
let bathroomPMIcon = Constants.Icon.bathroom

// 0
let bathroomPMTip1 = Tip(header: "😛", title: "Cleaning your tongue is one of the best ways to prevent bad breath", body: "Brush your tongue with a toothbrush or tongue scraper after brushing your teeth. You'll know your tongue is clean when it looks like a fleshy pink color. \n\nIf it looks like any other color besides pink, you probably have debris buildup to clean off." , sourceName: "SELF", sourceURL: "https://www.self.com/story/how-to-clean-your-tongue", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let bathroomPMTip2 = Tip(header: "😳", title: "Scientist recommend changing your bathroom towels every other day", body: "Bath towels become loaded with bacteria (including staph and fecal) and if your towel doesn’t fully dry, that bacteria can grow. \n\nPlus, dandruff-causing fungi can also grow in them." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/pop-culture/how-often-you-should-wash-everything-your-home-according-science-ncna826271", sponsorLogo: "TBD", sponsorURL: "www.test.com")

let bathroomPMTip3 = Tip(header: "🛀", title: "Tonight, trade your shower for a bath to reduce stress, sleep better, and lose weight", body: "When you take a hot bath your body temperature rises, and then quickly cools down, which relaxes your body, burns calories, and primes it for sleep." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/health/5-science-backed-ways-have-healthier-weekend-ncna782761", sponsorLogo: "", sponsorURL: "")

let bathroomPMTip4 = Tip(header: "😳", title: "Scientist recommend wiping down your bathroom at least once a week", body: "Your bathroom is the ultimate bacteria host; E.coli can be found within 6 feet of the toilet and in the sink. \n\nTo keep it at bay, disinfect the toilet and sink at least once weekly, and the bathtub every 2 weeks." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/pop-culture/how-often-you-should-wash-everything-your-home-according-science-ncna826271", sponsorLogo: "TBD", sponsorURL: "www.test.com")

// 1

let bathroomPMTip5 = Tip(header: "🗑", title: "Throw contacts away in the trash. NOT down the toilet or sink. ", body: "Contacts don’t decompose, and as a result, nearly 50 tons of contacts could end up in American water supplies each year. \n\nTiny bits of plastic from many sources have also been spotted in the oceans and other bodies of water, where they may be ingested by fish, corals and other animals." , sourceName: "The Atlantic", sourceURL: "https://www.theatlantic.com/health/archive/2018/08/contacts-down-the-drain/567850/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let bathroomPMTip6 = Tip(header: "", title: "Improve your balance by standing on one foot when brushing your teeth", body: "Balance is important since falls are common cause of injuries and death among seniors (in the US, about 1/3 adults over age 65 falls each year.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")
let bathroomPMTip7 = Tip(header: "😁", title: "Take care of your smile like supermodel Christie Brinkley", body: "\"Caring for your lips and gums is important. I brush my teeth morning and night, alternating toothpaste brands. In addition to flossing, I use a Water Pik to massage my gums and remove food particles. I love the toothpicks with a bottle-brush-like cleaner on one end and carry them with me.\" \n\nChristie Brinkley is an American model, actress and entrepreneur.", sourceName: "Los Angeles Times", sourceURL: "https://www.latimes.com/health/la-he-christie-brinkley-interview-20151226-story.html", sponsorLogo: "", sponsorURL: "")
let bathroomPMTip8 = Tip(header: "😁", title: "Millionaire Habit: Floss every day", body: "Study of what rich people and poor people every day: \"I floss every day.\" \n• Rich people who agree: 62% \n• Poor people who agree: 16%", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/rich-people-daily-habits-2014-6", sponsorLogo: "", sponsorURL: "")






let bathroomPMTipArray0 = [bathroomPMTip1, bathroomPMTip2, bathroomPMTip3, bathroomPMTip4]
let bathroomPMTopic0 = Topic(title: bathroomPMTitle, icon: bathroomPMIcon, tip: bathroomPMTipArray0)

let bathroomPMTipArray1 = [bathroomPMTip5, bathroomPMTip6, bathroomPMTip7, bathroomPMTip8]
let bathroomPMTopic1 = Topic(title: bathroomPMTitle, icon: bathroomPMIcon, tip: bathroomPMTipArray1)

let bathroomPMTipArray2 = [bathroomPMTip1, bathroomPMTip2, bathroomPMTip3, bathroomPMTip4]
let bathroomPMTopic2 = Topic(title: bathroomPMTitle, icon: bathroomPMIcon, tip: bathroomPMTipArray2)

let bathroomPMTipArray3 = [bathroomPMTip5, bathroomPMTip6, bathroomPMTip7, bathroomPMTip8]
let bathroomPMTopic3 = Topic(title: bathroomPMTitle, icon: bathroomPMIcon, tip: bathroomPMTipArray3)

let bathroomPMTipArray4 = [bathroomPMTip1, bathroomPMTip2, bathroomPMTip3, bathroomPMTip4]
let bathroomPMTopic4 = Topic(title: bathroomPMTitle, icon: bathroomPMIcon, tip: bathroomPMTipArray4)

let bathroomPMTipArray5 = [bathroomPMTip5, bathroomPMTip6, bathroomPMTip7, bathroomPMTip8]
let bathroomPMTopic5 = Topic(title: bathroomPMTitle, icon: bathroomPMIcon, tip: bathroomPMTipArray5)

let bathroomPMTipArray6 = [bathroomPMTip8, bathroomPMTip7, bathroomPMTip6, bathroomPMTip5]
let bathroomPMTopic6 = Topic(title: bathroomPMTitle, icon: bathroomPMIcon, tip: bathroomPMTipArray6)


// MARK: - Bedtime

let bedtimeTitle = "Bedtime"
let bedtimeIcon = Constants.Icon.bedtime

//WEEK 1
// SUN
let bedtimeTip1 = Tip(header: "😁", title: "Brush your teeth before bed because it's easier to get a cavity while you sleep", body: "While you sleep, your mouth salivates less, which can lead to cavities. This is why it is important to brush your teeth before bed. \n\nThe American Dental Association recommends you brush twice a day for two minutes." , sourceName: "Greatist", sourceURL: "https://greatist.com/live/brushing-teeth-before-bed", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let bedtimeTip2 = Tip(header: "💪", title: "Wake up early tomorrow and exercise. Don't think. Just execute the plan.", body: "One of the most common ways to sabotage your morning is to get a slow start by gradually waking up and doing tasks that require thinking. \n\nInstead, wake up early, jump out of bed, and puts on the workout clothes you prepared the night before. \n\nBy the time you've finished your workout, most people are just waking up." , sourceName: "Jocko Willink, retired Navy SEAL commander", sourceURL: "https://www.businessinsider.com/jocko-willink-how-to-wake-up-earlier-2017-11", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let bedtimeTip3 = Tip(header: "💤", title: "Nighttime rituals help you to reduce stress and fall asleep faster", body: "Prime the brain to sleep well: \n\n• Take a hot bath \n• Read a book \n• Journal \n• Go for a walk \n• Listen to calming music" , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/health/how-effectively-manage-stress-so-it-doesn-t-hurt-your-ncna815626", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let bedtimeTip4 = Tip(header: "📝", title: "Reduce decision fatigue tomorrow by making a plan tonight", body: "• List the major tasks you want to accomplish tomorrow. \n\n• List how you want to spend the first few hours of the day. \n\n• Lay out the clothes you’ll wear. \n\n• Have ingredients ready to make a healthy breakfast. \n\nMaking fewer decisions tomorrow morning helps you have more willpower later in the day." , sourceName: "NBC News", sourceURL: "https://www.nbcnews.com/better/health/9-things-do-morning-make-your-whole-day-more-productive-ncna772446", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//MON
let bedtimeTip5 = Tip(header: "😴", title: "Set your room temperature between 60 and 70 degrees Fahrenheit (16 to 21 degrees Celsius)", body: "Your core body temperature drops during the night to help you fall asleep and maintain sleep. \n\nA lower room temperature allows for people to cover up with blankets without getting too hot.", sourceName: "Health", sourceURL: "https://www.health.com/mind-body/20-things-you-shouldn-t-do-before-bed#alter-your-routine", sponsorLogo: "", sponsorURL: "")
let bedtimeTip6 = Tip(header: "🥛", title: "Drink a glass of warm milk before bed to reduce insomnia and fidgetiness", body: "Milk is high in antioxidants, vitamin B2 and B12, as well as protein and calcium. \n\nThe protein lactium has a calming effect by lowering blood pressure, which the potassium in milk can help relieve muscle spasms triggered by feeling tense.", sourceName: "Men's Journal", sourceURL: "https://www.mensjournal.com/food-drink/eat-to-beat-stress-10-foods-that-reduce-anxiety/4-milk/", sponsorLogo: "", sponsorURL: "")
let bedtimeTip7 = Tip(header: "🛌", title: "Having a bedtime routine sends a signal to your brain that it's time for bed—especially if you do them in the same order, at the same time every night", body: "Without a consistent bedtime routine, your brain doesn't go into sleep mode until you crawl into bed and turn out the light. \n\nTry brushing your teeth, washing your face, and laying out your clothes for the morning in the same order each night.", sourceName: "Health", sourceURL: "https://www.health.com/mind-body/20-things-you-shouldn-t-do-before-bed#alter-your-routine", sponsorLogo: "", sponsorURL: "")
let bedtimeTip8 = Tip(header: "😁", title: "Increase your confidence. Before you even get out of bed tomorrow, stretch your body as wide as possible in an 'X' or 'Y' position.", body: "Sleeping in the fetal position sends a subtle signal to your brain that your body is under attack. \n\nBut if you do a power pose when you wake up, you’ll see an improvement in your daily confidence levels and happiness.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/amy-cuddy-advice-waking-up-right-2016-1", sponsorLogo: "sponsor", sponsorURL: "sponsorURL")

// TUE
let bedtimeTip9 = Tip(header: "😛", title: "Use mouthwash before bed to give your mouth an extra layer of protection from cavity-causing acids", body: "Saliva prevents cavity-causing acids from building up. But we produce less saliva when we sleep. That can dry out your mouth, leaving teeth and gums vulnerable to things like tooth decay and gingivitis.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/amy-cuddy-advice-waking-up-right-2016-1", sponsorLogo: "sponsor", sponsorURL: "sponsorURL")
let bedtimeTip10 = Tip(header: "📵", title: "Put your phone in another room or somewhere across the bedroom, far away from your arms' reach, so you're not tempted to check it first thing in the morning", body: "Immediately checking your phone when you wake up is more likely to increase stress and leave you feeling overwhelmed. The information overload that hits you before you're fully awake also interferes with your ability to priority tasks during the day.", sourceName: "Elite Daily", sourceURL: "https://www.elitedaily.com/p/is-it-bad-to-look-at-your-phone-right-when-you-wake-up-it-might-be-sabotaging-your-day-8437383", sponsorLogo: "", sponsorURL: "")
let bedtimeTip11 = Tip(header: "😴", title: "Sleep more - you’ll be less sensitive to negative emotions", body: "In one experiment, sleep-deprived college students tried to memorize a list of words. They could remember 81% of the words with a negative connotation, like \"cancer.\" But they could remember only 31% of the words with a positive or neutral connotation, like \"sunshine\" or \"basket.\"", sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/belle-beth-cooper/10-simple-things-to-be-happy_b_4241824.html", sponsorLogo: "", sponsorURL: "")
let bedtimeTip12 = Tip(header: "🌅", title: "Serial entrepreneur Gary Vaynerchuk wakes up at 6 AM every day and follows the same morning routine", body: "Consistency and routine are helpful for starting the day in a proactive mode. He reads the news, checks his social media, exercises for 45 minutes, spends times with his kids before they go to school, calls a friend or family member while he commutes to work, and then gets into the office at 9 AM.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/gary-vaynerchuks-morning-routine-2015-3", sponsorLogo: "", sponsorURL: "")

// WED
let bedtimeTip13 = Tip(header: "🕔", title: "Virgin Group founder Richard Branson wakes up at 5 AM every day and exercises", body: "You can’t be productive if you’re not healthy. \"I definitely can achieve twice as much by keeping fit,\" Branson said. \"It keeps the brain functioning well.\"", sourceName: "Fast Company", sourceURL: "https://www.fastcompany.com/3066982/why-the-most-productive-people-do-these-six-things-every-day", sponsorLogo: "", sponsorURL: "")
let bedtimeTip14 = Tip(header: "😴", title: "Getting 7 to 8 hours of sleep each night is associated with the lowest risk of missing work because of sickness", body: "People sleeping 5 hours or less, or 10 hours or more, reported 5 to 9 more sick days each year, as compared to those who slept between 7 and 8 hours per night. \n\nSleep deficiency causes sickness, decline in cognitive functioning, and accidents while commuting.", sourceName: "Reuters", sourceURL: "https://www.reuters.com/article/us-sleep-disturbance-workers-absence/sleeping-seven-to-eight-hours-a-night-linked-to-taking-fewer-sick-days-idUSKBN0H62BM20140911", sponsorLogo: "", sponsorURL: "")
let bedtimeTip15 = Tip(header: "📝", title: "Reflect on or write down one positive moment that happened today", body: "Celebrate the successes, even if they were few and far between, because the last thing you do before bed tends to impact your mood the next day. \n\nBenjamin Franklin famously asked himself the same question every night: \"What good have I done today?\"" , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/what-successful-people-do-before-bed-2016-6#7-they-reflect-on-the-good-things-from-the-day-7", sponsorLogo: "", sponsorURL: "")
let bedtimeTip16 = Tip(header: "☀️", title: "Lose weight by waking up earlier tomorrow and making time to get sunlight between 8am-noon", body: "Research: 20-30 minutes of early morning sun exposure is enough for you to lower your Body Mass Index (BMI) and lower your waistline. \n\nNot getting sufficient sunlight in the morning could de-synchronize your internal body clock, which can affect your metabolism and can lead to weight gain." , sourceName: "Pop Sugar", sourceURL: "https://www.popsugar.com.au/fitness/Sunlight-Helps-Weight-Loss-34543871?stream_view=1#photo-34543872", sponsorLogo: "", sponsorURL: "")

// THUR
let bedtimeTip17 = Tip(header: "📵", title: "Fall asleep faster by not using electronics an hour before bed", body: "Cell phones, TVs, and tablets give off what’s known as blue light—a type that studies suggest can inhibit the production of the sleep-inducing hormone melatonin and disrupt your circadian rhythm. \n\nThis may be because blue light emits wavelengths similar to daylight, which can make your body think it’s daytime while you're trying to fall asleep." , sourceName: "ABC News", sourceURL: "https://abcnews.go.com/Health/reasons-sleep-phone-bed/story?id=24839804", sponsorLogo: "", sponsorURL: "")
let bedtimeTip18 = Tip(header: "🎽", title: "Prepare your gym clothes tonight so that you can throw it on as soon as you slide out of bed", body: "Former Navy SEAL Jocko Willink says, \"Don't think in the morning. That's a big mistake that people make. \n\nThey wake up in the morning and they start thinking. Don't think. Just execute the plan. \n\nThe plan is the alarm clock goes off, you get up, you go work out." , sourceName: "Thrive Global", sourceURL: "https://medium.com/thrive-global/this-10-minute-night-routine-guarantees-success-your-next-morning-af47fa7a00d5", sponsorLogo: "", sponsorURL: "")
let bedtimeTip19 = Tip(header: "📝", title: "Tonight, decide what you’re going to do the next morning because design is stronger than willpower.", body: "Write down when you’re going to wake up and set the alarm for that time (but put your phone or alarm clock in a different room so you physically have to get out of bed to turn it off). \n\nWrite down the top 1–3 things you intend to accomplish with your morning." , sourceName: "Thrive Global", sourceURL: "https://medium.com/thrive-global/this-10-minute-night-routine-guarantees-success-your-next-morning-af47fa7a00d5", sponsorLogo: "", sponsorURL: "")
let bedtimeTip20 = Tip(header: "🛀", title: "Taking a bath or shower helps you fall asleep", body: "Taking a bath or shower artificially raises your body temperature, but when you climb out of the tub or shower, your body temperature abruptly drops and sends a signal to your body that you are ready for sleep." , sourceName: "The Guardian", sourceURL: "https://www.theguardian.com/lifeandstyle/2016/jan/31/12-rules-good-nights-sleep", sponsorLogo: "", sponsorURL: "")

//FRI
let bedtimeFridayTip1 = Tip(header: "🛀", title: "Sleep better: Take a warm bath or shower an hour before bed", body: "Our body temperature lowers around 4 a.m. to preserve our energy while we sleep. Taking a warm bath or shower and hour before bed lowers your body temperature, which helps you fall asleep." , sourceName: "Verywell", sourceURL: "https://www.verywellhealth.com/the-importance-of-your-sleep-environment-3014944", sponsorLogo: "", sponsorURL: "")//FRI
let bedtimeFridayTip2 = Tip(header: "🌅", title: "Successful people wake up early on the weekend too", body: "Former Navy SEAL Jocko Willink noticed the highest performers he served with were the ones who woke up earliest, beginning their days while others were sleeping. \"Don't sleep in on the weekends or else you'll ruin any progress you've made optimizing your schedule.\"" , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/former-navy-seal-jocko-willink-daily-routines-to-change-your-life-2017-11", sponsorLogo: "", sponsorURL: "")
let bedtimeTip23 = Tip(header: "🍺", title: "Don’t drink alcohol 2 hours before bed", body: "Although a small amount of alcohol might help you get to sleep more quickly, it also gives you a more disturbed night, increases the chances of snoring and disrupts dreaming." , sourceName: "The Guardian", sourceURL: "https://www.theguardian.com/lifeandstyle/2016/jan/31/12-rules-good-nights-sleep", sponsorLogo: "", sponsorURL: "")
let bedtimeTip24 = Tip(header: "🤫", title: "Sleep in a quiet place and reduce external noise", body: "When you hear a noise while sleeping, you may not become fully conscious, but you do come out of the deeper stages of sleep. To prevent external noises from waking you up, try using: \n\n• Fan \n\n• White noise machine \n\n• Earplugs \n\n• Or, keep a radio or television on low volume to drown out street noises" , sourceName: "Verywell", sourceURL: "https://www.verywellhealth.com/the-importance-of-your-sleep-environment-3014944", sponsorLogo: "", sponsorURL: "")

//SAT
let bedtimeTip25 = Tip(header: "🌄", title: "Keep your blinds half-open to sync your biological clock to the sun", body: "When the natural light from the sunrise creeps into your room, it signals your brain to slow its melatonin production and boost your adrenaline, both of which tell your body to wake up." , sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/health/wellness/happy-morning-routine/", sponsorLogo: "", sponsorURL: "")
let bedtimeTip26 = Tip(header: "💪", title: "Set your alarm so that you can get 30 minutes of exercise tomorrow AM", body: "A 30-minute workout will flood you with mood-boosting endorphins that will last most of the day. \n\nPlus, scheduling your exercise for first thing in the morning will make you more likely to stick with your workout program, studies have shown, probably because your schedule won’t have the chance to clog up with excuses." , sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/health/wellness/happy-morning-routine/", sponsorLogo: "", sponsorURL: "")
let bedtimeTip27 = Tip(header: "⌚️", title: "Many people find that setting a sleep schedule helps them fall asleep easier", body: "Waking up and going to bed at the same times each day can help your internal clock keep a regular schedule. Once your body adjusts to this schedule, it will be easier to fall asleep and wake up around the same time every day." , sourceName: "HealthLine", sourceURL: "https://www.healthline.com/nutrition/ways-to-fall-asleep#section3", sponsorLogo: "", sponsorURL: "")
let bedtimeTip28 = Tip(header: "⏱", title: "Give yourself 30-60 minutes to wind down in the evening before getting in bed", body: "This allows your body and mind to relax and prepare for sleep. Dimming lights and turning off electronic screens increases melatonin, a hormone that regulates sleep-wake cycles, and promotes feelings of sleepiness." , sourceName: "HealthLine", sourceURL: "https://www.healthline.com/nutrition/ways-to-fall-asleep#section3", sponsorLogo: "", sponsorURL: "")

//WEEK 2
//SUN
let bedtimeTip29 = Tip(header: "🏋️‍♂️", title: "To promote better quality sleep, working out early in the morning appears to be better than working out later in the day", body: "Moderate-to-vigorous exercise in the morning could significantly improve the quality and quantity of your sleep. \n\nExercise can increase the duration and quality of sleep by boosting the production of serotonin in the brain and decreasing levels of cortisol, the stress hormone." , sourceName: "HealthLine", sourceURL: "https://www.healthline.com/nutrition/ways-to-fall-asleep#section10", sponsorLogo: "", sponsorURL: "")
let bedtimeTip30 = Tip(header: "🛌", title: "Having a comfortable mattress and bedding can have a remarkable effect on the quality of sleep", body: "A medium-firm mattress has been shown to positively affect sleep quality and prevent sleep disturbances and muscular discomfort. \n\nA study determined that orthopedic pillows may be better than feather or memory foam pillows. \n\nAdditionally, the use of an a weighted blanket could reduce body stress and help improve your sleep." , sourceName: "HealthLine", sourceURL: "https://www.healthline.com/nutrition/ways-to-fall-asleep#section11", sponsorLogo: "", sponsorURL: "")
let bedtimeTip31 = Tip(header: "", title: "Turn off all electronics", body: "Watching TV, playing video games, using a mobile phone and social networking can make it significantly harder for you to fall and stay asleep. \n\nIt is recommended that you disconnect all electronics and put away computers and mobile phones so you can ensure a quiet place, free of distractions." , sourceName: "HealthLine", sourceURL: "https://www.healthline.com/nutrition/ways-to-fall-asleep#section11", sponsorLogo: "", sponsorURL: "")
let bedtimeTip32 = Tip(header: "✍️", title: "Former Navy SEAL Mark Divine suggests finding a quiet place to perform a review of your day with a journal", body: "Were on and in the zone today or off and unbalanced. If you were \"off,\" then ask yourself: Why? \n\nList the top 3 positive things you accomplished or that happened to you today? \n\nAre there any unresolved issues or questions? \n\nAlso, review your major goals." , sourceName: "8 Weeks to SEALFIT", sourceURL: "https://www.amazon.com/dp/B00DFFGMPO/ref=dp-kindle-redirect?_encoding=UTF8&btkr=1", sponsorLogo: "", sponsorURL: "")

//MON
let bedtimeTip33 = Tip(header: "😴", title: "Get 7+ hours of sleep to reduce your chances of future weight gain and risk of obesity", body: "A 16-year study found that women sleeping 5 hours or less gained 2.5 pounds more than did those sleeping 7 hours over 16 years, and women sleeping 6 hours gained 1.5 pounds more than did those sleeping 7 hours over 16 years. \n\nRisk of obesity was also higher for those sleeping less than 7 hours over 16 years.", sourceName: "National Center for Biotechnology Information, U.S. National Library of Medicine", sourceURL: "https://www.ncbi.nlm.nih.gov/pubmed/16914506", sponsorLogo: "", sponsorURL: "")
let bedtimeTip34 = Tip(header: "🛌", title: "Going to bed and waking up at the same time every day improves performance", body: "Irregular patterns of sleep and wakefulness correlated with lower GPA, more difficulty falling asleep/waking up, and delayed release of the sleep-promoting hormone melatonin. \n\nThe results indicate that going to sleep and waking up at approximately the same time each day is as important as the number of hours you sleep." , sourceName: "Harvard Medical School", sourceURL: "https://sleep.med.harvard.edu/news/584/Irregular+Sleeping+Patterns+Linked+to+Poorer+Academic+Performance+in+College+Stu", sponsorLogo: "", sponsorURL: "")
let bedtimeTip35 = Tip(header: "🛌", title: "Self-made millionaires sleep an average of 7.5 hours each night", body: "For a better night sleep: \n\n• Set a relaxing mood before bedtime by lowering the lights, taking a shower or listening to soft music. \n\n• Layout your next day’s clothes to set your mind at ease. \n\n• Make your bedroom as dark as possible. \n\n• Ensure you have a quality mattress and pillow. \n\n• Stick to a constant sleep scheudule" , sourceName: "ThinkRichThinkPoor.com", sourceURL: "https://thinkrichthinkpoor.com/money-management/11-habits-self-made-millionaires/", sponsorLogo: "", sponsorURL: "")
let bedtimeTip36 = Tip(header: "😴", title: "Prevent unnecessary wrinkles by sleeping on your back or at least alternating sides", body: "If you constantly sleep on the same side of your face, your facial skin will age more rapidly. Constantly sleeping on the same side mechanically wrinkles the skin by deforming the skin's collagen and impeding circulation to the skin, which makes the creases permanent." , sourceName: "U.S. News & World Report", sourceURL: "https://health.usnews.com/wellness/aging-well/articles/2017-01-09/6-surprising-factors-that-can-accelerate-the-aging-of-your-skin", sponsorLogo: "", sponsorURL: "")

//TUES
let bedtimeTip37 = Tip(header: "🌡", title: "Your bedroom should be should be cool (60-67 degrees) and free from any light or noise that can disturb your sleep", body: "Consider using blackout curtains, eye shades, earplugs, \"white noise\" machines, humidifiers, fans and other devices." , sourceName: "National Sleep Foundation", sourceURL: "https://www.sleepfoundation.org/articles/healthy-sleep-tips", sponsorLogo: "", sponsorURL: "")
let bedtimeTip38 = Tip(header: "📵", title: "Cellphone or computer use in bed before bedtime increases your risk of insomnia", body: "A study found that a mean usage of 46.6 minutes per night of cellphone and computer before bed were both positively associated with insomnia." , sourceName: "The Ohio State University", sourceURL: "https://u.osu.edu/emotionalfitness/2015/06/17/cell-phone-use-before-bedtime-might-impact-sleep-and-daytime-tiredness/", sponsorLogo: "", sponsorURL: "")
let bedtimeTip39 = Tip(header: "", title: "Turn your computer off overnight. It helps the planet and your bank account", body: "You can save an average of $14/year. It may not sound like a lot but it’s better off in your pocket than someone else’s." , sourceName: "The Random Acts of Kindness Foundation", sourceURL: "https://www.randomactsofkindness.org/kindness-ideas/942-turn-your-computer-off-overnight", sponsorLogo: "", sponsorURL: "")
let bedtimeTip40 = Tip(header: "", title: "Study: Participants who slept in the darkest rooms were 21% less likely to be obese than those sleeping in the lightest rooms", body: "That connection is tied to the main sleep hormone produced by our bodies, melatonin. Too little melatonin means that we don’t properly get into a sleep mode that you can also think of as belly-fat-blasting mode. \n\nDon't sleep with a night light and look into getting some blackout curtains." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/healthy-home/", sponsorLogo: "", sponsorURL: "")

//WED
let bedtimeTip41 = Tip(header: "", title: "Lose belly fat while you sleep: Lower your bedroom's temperature", body: "Colder temperatures subtly enhance the effectiveness of our stores of brown fat, a special kind of fat that keeps you warm by helping you burn through the fat stored in your belly. \n\nParticipants spent a few weeks sleeping in bedrooms with varying temperatures: A neutral 75 degrees, a cool 66 degrees, and a balmy 81 degrees. Sleeping at 66 degrees doubled the subjects' volumes of brown fat, which helped them lose belly fat." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/healthy-home/", sponsorLogo: "", sponsorURL: "")
let bedtimeTip42 = Tip(header: "", title: "Study: Don't drink alcohol before bed because it increases your risk of sleep apnoea by 25%", body: "Sleep apnea is a potentially serious sleep disorder in which breathing repeatedly stops and starts. If you snore loudly and feel tired even after a full night's sleep, you might have sleep apnea.", sourceName: "National Center for Biotechnology Information, U.S. National Library of Medicine", sourceURL: "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5840512/", sponsorLogo: "", sponsorURL: "")
let bedtimeTip43 = Tip(header: "", title: "Prevent Wrinkles: Sleep on your back", body: "Sleeping with your face pressed against the pillow can cause sleep lines, which can turn into wrinkles. \n\nSatin pillowcases can also help in the anti-wrinkle fight.", sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.ca/2013/04/04/get-rid-of-wrinkles-_n_3014430.html", sponsorLogo: "", sponsorURL: "")
let bedtimeTip44 = Tip(header: "Fall asleep using an Army tactic developed to help soldiers fall asleep in 2 minutes", title: "How to tell if you slept well last night: Does everything feel better during the day?", body: "1. Sit on the edge of your bed with no distractions and only a bedside light on. \n2. Relax your facial muscles. \n3. Let gravity pull your shoulders toward the ground and let your arms dangle. \n4. Breathe in and out, listening to your breath, and relaxing your legs. \n5. Clear your mind for 10 seconds. If thoughts come, let them pass. \n6. For 10 seconds, visualize yourself lying in a canoe in a calm lake with clear blue skies above you or in a velvet hammock, gently swaying in a pitch-black room. \n7. Lie down, turn off the light, and you should fall asleep in a couple of minutes. \n\nThe above method was proven to work for 96% of soldiers. It may not work for you immediately, but try it for a few days in a row and it likely will." , sourceName: "Medium", sourceURL: "https://medium.com/an-idea-for-you/how-to-tell-if-you-slept-well-last-night-and-what-to-do-if-you-didnt-e338553af778", sponsorLogo: "", sponsorURL: "")

//THUR
let bedtimeTip45 = Tip(header: "😴", title: "Look your best: No matter how tired you are, don't forget to wash your face", body: "You want to remove all of the dirt, oil, and makeup from your skin so that you don't end up with clogged pores and bumpy skin.", sourceName: "Allure", sourceURL: "https://www.allure.com/story/sleep-and-skin-what-happens", sponsorLogo: "", sponsorURL: "")
let bedtimeTip46 = Tip(header: "😴", title: "If you snore loudly and you suffer from fatigue or sleepiness during the day, those symptoms together could mean you have sleep apnea, a disorder in which an individual can actually stop breathing while asleep", body: "Individuals with other health conditions including being overweight or obese, having high blood pressure, or being a smoker increase the risk of sleep apnea.", sourceName: "The Ladders", sourceURL: "https://www.theladders.com/career-advice/top-8-sleep-myths-that-can-harm-your-health", sponsorLogo: "", sponsorURL: "")
let bedtimeTip47 = Tip(header: "😴", title: "The last hour before bed is time to wind down with yourself or with someone you love", body: "It's time for reading, journaling, or watching your favorite TV show. \n\nGive your body some love with the personal care it needs, and get ready for sleep.", sourceName: "Own The Day, Own Your Life", sourceURL: "https://www.amazon.com/dp/B072HLS5QJ/", sponsorLogo: "", sponsorURL: "")
let bedtimeTip48 = Tip(header: "😴", title: "Sleeping on your side is generally the best position for breathing", body: "Sleeping on your back is more likely to lead to snoring and sleep apnea, and sleeping on your stomach is going to cause shallower breathing, not to mention low back issues. \n\nThere are exceptions, of course, particularly for those who have structural alignment issues.", sourceName: "Own The Day, Own Your Life", sourceURL: "https://www.amazon.com/dp/B072HLS5QJ/", sponsorLogo: "", sponsorURL: "")


//FRI
let bedtimeTip49 = Tip(header: "", title: "Prevent Wrinkles: Sleep on your back", body: "Sleeping on either side can cause unwanted wrinkles on the side being slept on. \n\nHowever, back sleepers are more prone to snoring and sleep apnoea", sourceName: "Bustle", sourceURL: "https://www.bustle.com/p/is-sleeping-on-your-side-bad-for-you-heres-how-to-tell-if-youre-snoozing-in-the-right-position-11467813", sponsorLogo: "", sponsorURL: "")
let bedtimeTip50 = Tip(header: "😴", title: "Sleep Better: Air quality matters! Add a few plants to your bedroom", body: "Plants purify the air and release fresh oxygen to help you sleep better. \n\nRecommended plants: English ivy or snake plant", sourceName: "Own The Day, Own Your Life", sourceURL: "https://www.amazon.com/dp/B072HLS5QJ/", sponsorLogo: "", sponsorURL: "")
let bedtimeTip51 = Tip(header: "", title: "Research: A good night's sleep improves mental well-being, while a consistent lack of sleep has been linked to obesity, memory impairment, and depression", body: "After you turn of the lights, take a look around your bedroom. \n\nDo you see glowing clocks, blinking lights, cable box displays? \n\n• Make your bedroom a no-electronic zone (no TV, computer, or cell phone). \n\n• Put up light-blocking window shades or drapes to make the room dark for sleeping. \n\n• Turn down the thermostat to about 65℉ to make it cool.", sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")
let bedtimeTip52 = Tip(header: "", title: "Warning: If you often charge your phone overnight or keep it plugged in for hours after it's reached 100%, you're accelerating the aging process of lithium-ion smartphone batteries", body: "While all smartphone batteries have a limited life, for best performance, unplug your phone once it's at 100% power.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/best-way-to-charge-your-phone-for-longer-lasting-battery-2019-4", sponsorLogo: "", sponsorURL: "")





//WEEK 1
//SUN
let bedtimeTipArray0 = [ bedtimeTip1,  bedtimeTip2,  bedtimeTip3,  bedtimeTip4]
let bedtimeTopic0 = Topic(title: bedtimeTitle, icon: bedtimeIcon, tip: bedtimeTipArray0)
//MON
let bedtimeTipArray1 = [ bedtimeTip5,  bedtimeTip6,  bedtimeTip7,  bedtimeTip8]
let bedtimeTopic1 = Topic(title: bedtimeTitle, icon: bedtimeIcon, tip: bedtimeTipArray1)
//TUE
let bedtimeTipArray2 = [ bedtimeTip9,  bedtimeTip10,  bedtimeTip11,  bedtimeTip12]
let bedtimeTopic2 = Topic(title: bedtimeTitle, icon: bedtimeIcon, tip: bedtimeTipArray2)
//WED
let bedtimeTipArray3 = [ bedtimeTip13,  bedtimeTip14,  bedtimeTip15,  bedtimeTip16]
let bedtimeTopic3 = Topic(title: bedtimeTitle, icon: bedtimeIcon, tip: bedtimeTipArray3)
//THUR
let bedtimeTipArray4 = [ bedtimeTip17,  bedtimeTip18,  bedtimeTip19,  bedtimeTip20]
let bedtimeTopic4 = Topic(title: bedtimeTitle, icon: bedtimeIcon, tip: bedtimeTipArray4)
//FRI PM (see AM below)
let bedtimeTipArray5 = [ bedtimeFridayTip1,  bedtimeFridayTip2,  bedtimeTip23,  bedtimeTip24]
let bedtimeFriPMTopic5 = Topic(title: bedtimeTitle, icon: bedtimeIcon, tip: bedtimeTipArray5)
//SAT
let bedtimeTipArray6 = [ bedtimeTip25, bedtimeTip26, bedtimeTip27, bedtimeTip28]
let bedtimeTopic6 = Topic(title: bedtimeTitle, icon: bedtimeIcon, tip: bedtimeTipArray6)


//WEEK 2
//SUN
let bedtimeTipArray7 = [bedtimeTip29, bedtimeTip30, bedtimeTip31, bedtimeTip32]
let bedtimeTopic7 = Topic(title: bedtimeTitle, icon: bedtimeIcon, tip: bedtimeTipArray7)
//MON
let bedtimeTipArray8 = [bedtimeTip33, bedtimeTip34, bedtimeTip35, bedtimeTip36]
let bedtimeTopic8 = Topic(title: bedtimeTitle, icon: bedtimeIcon, tip: bedtimeTipArray8)
//TUE
let bedtimeTipArray9 = [bedtimeTip37, bedtimeTip38, bedtimeTip39, bedtimeTip40]
let bedtimeTopic9 = Topic(title: bedtimeTitle, icon: bedtimeIcon, tip: bedtimeTipArray9)

//WED
let bedtimeTipArray10 = [bedtimeTip41, bedtimeTip42, bedtimeTip43, bedtimeTip44]
let bedtimeTopic10 = Topic(title: bedtimeTitle, icon: bedtimeIcon, tip: bedtimeTipArray10)

//THUR
let bedtimeTipArray11 = [bedtimeTip45, bedtimeTip46, bedtimeTip47, bedtimeTip48]
let bedtimeTopic11 = Topic(title: bedtimeTitle, icon: bedtimeIcon, tip: bedtimeTipArray11)

//FRI AM (see PM above)
let bedtimeTipArray12 = [bedtimeTip49, bedtimeTip50, bedtimeTip51, bedtimeTip52]
let bedtimeFriAMTopic12 = Topic(title: bedtimeTitle, icon: bedtimeIcon, tip: bedtimeTipArray12)

//SAT (WIP)
let bedtimeTipArray13 = [bedtimeTip28, bedtimeTip27, bedtimeTip26, bedtimeTip25]
let bedtimeTopic13 = Topic(title: bedtimeTitle, icon: bedtimeIcon, tip: bedtimeTipArray13)




// MARK: - Evening Routine, PM

/*
Plan your day
 Journal
 Visualize
 Pick your clothes
 Go to bed at the same time
 */
let eveningRoutineTitle = "Evening Routine"
let eveningRoutineIcon = Constants.Icon.routinePM

//0
let eveningRoutine0 = Tip(header: "", title: "Composer Ludwig van Beethoven went to bed at 10 p.m. at the latest", body: "He was able to optimize his early-morning routine because he got his recommended 7 to 9 hours of sleep the night before. \n\nTo get into the habit of going to bed early, set an alarm in the evening to remind you to go to sleep", sourceName: "Fast Company", sourceURL: "https://www.fastcompany.com/3042968/the-evening-routines-of-the-most-successful-people", sponsorLogo: "", sponsorURL: "")
let eveningRoutine1 = Tip(header: "🚶‍♂️", title: "Each night before bed, Buffer CEO, Joel Gascoigne, takes a 20-minute walk.", body: "\"This is a wind-down period and allows me to evaluate the day's work, think about the greater challenges, gradually stop thinking about work, and reach a state of tiredness,\" he writes. \n\nStudies find that walking—especially in nature—reduces stress and anxiety.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/what-successful-people-do-right-before-bed-2016-1", sponsorLogo: "", sponsorURL: "")
let eveningRoutine2 = Tip(header: "💤", title: "Study: Gratitude journaling can improve your sleep", body: "If you’re having trouble sleeping or just waking up feeling fatigued, try a quick gratitude journaling exercise before bed by writing down what you're thankful for. Participants of a 2-week study who kept a gratitude journal had increased sleep quality and reduced blood pressure." , sourceName: "Positive Psychology Program", sourceURL: "https://positivepsychologyprogram.com/benefits-gratitude-research-questions/", sponsorLogo: "TBD", sponsorURL: "")
let eveningRoutine3 = Tip(header: "", title: "Stretching, sauna, massage, a hot bath or shower, foam rolling, yoga – those are all things that help your body to release tension and will support your body to relax and support a deep sleep.", body: "Try out different practices and find something that helps you relax.", sourceName: "Thrive Global", sourceURL: "https://thriveglobal.com/stories/the-real-power-of-morning-and-evening-rituals/", sponsorLogo: "", sponsorURL: "")

//1
let eveningRoutine4 = Tip(header: "📖", title: "Each night before bed, Microsoft billionaire Bill Gates spends an hour reading a book, ranging on topics from politics to current events.", body: "Aside from gaining new knowledge, reading daily: \n• Reduces stress \n• Improves memory \n\nStudy: Reading for as little as 6 minutes a day can reduce stress levels by up to 68%. \n\nStudy: People who stimulated their minds through activities like reading, reduced cognitive decline by an average of 32% as they got older in age.", sourceName: "Lifehack", sourceURL: "https://www.lifehack.org/articles/productivity/6-habits-highly-successful-people-before-bedtime.html", sponsorLogo: "", sponsorURL: "")
let eveningRoutine5 = Tip(header: "", title: "Each night before bed, Benjamin Franklin asked himself the same self-improvement question: \"What good have I done today?\"", body: "Regardless of how badly the day went, successful people typically manage to avoid that pessimistic spiral of negative self-talk because they know it will only create more stress. \n\nTaking a few moments to think about what went right over the course of the day can put you in a positive, grateful mood.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/what-successful-people-do-right-before-bed-2016-1", sponsorLogo: "", sponsorURL: "")
let eveningRoutine6 = Tip(header: "😀", title: "Journaling is most effective when you don't worry about spelling, grammar, or rules", body: "Write quickly, as this frees your brain from \"shoulds\" and other blocks to successful journaling. \n\nYou’ll discover that your journal is an all-accepting, nonjudgmental friend. And it may provide the cheapest therapy you will ever get." , sourceName: "Psych Central", sourceURL: "https://psychcentral.com/lib/the-health-benefits-of-journaling/", sponsorLogo: "", sponsorURL: "")
let eveningRoutine7 =  Tip(header: "", title: "\"To wind down at night after a long day, I read acclaimed self-help books written by successful business leaders and life coaches.\"", body: "\"When I'm not working, I strive to fuel my 'mental factory'--a.k.a., my brain--with nothing but positivity.\" \n\n\"I've found that maintaining positive vibes throughout the day when I'm not focused on work translates to keeping my spirits up when I am met with workplace challenges.\" \n\n- Shannon Hudson, world champion kickboxer and founder/CEO of 9Round" , sourceName: "Inc.", sourceURL: "https://www.inc.com/christina-desmarais/31-simple-daily-habits-that-separate-high-achievers-from-everyone-else.html", sponsorLogo: "", sponsorURL: "")

//2
let eveningRoutine8 = Tip(header: "", title: "Arianna Huffington's tips for a night routine that ensures better sleep:", body: "• No electronic devices 30 minutes before bedtime (or remove all devices from your bedroom) \n• No working on the bed \n• Do some light stretching and deep breathing \n• Wear pajamas to send a sleep-friendly message to your body \n• Read physical books or use an e-reader that does not emit blue light \n• Drink chamomile or lavender tea \n• Write a list of things you are grateful for", sourceName: "The Mindful Company", sourceURL: "https://www.mindful-company.com/blogs/notebook/the-night-routines-of-notable-people", sponsorLogo: "", sponsorURL: "")
let eveningRoutine9 = Tip(header: "", title: "Study: People who meditated 20 minutes a day showed an average gain in IQ of 23%", body: "Researchers suggest you must meditate for a minimum of 12-15 minutes at a time to get the health benefits of it. \n\nTwo popular meditation apps are Calm and Headspace.", sourceName: "Inc.", sourceURL: "https://www.inc.com/melanie-curtin/want-to-raise-your-iq-by-23-percent-neuroscience-says-to-take-up-this-simple-hab.html", sponsorLogo: "", sponsorURL: "")
let eveningRoutine10 =  Tip(header: "🤓", title: "Journaling helps you solve problems more effectively", body: "Typically we problem solve from a left-brained, analytical perspective. But sometimes the answer can only be found by engaging right-brained creativity and intuition. Writing unlocks these other capabilities, and affords the opportunity for unexpected solutions to seemingly unsolvable problems.", sourceName: "Psych Central", sourceURL: "https://psychcentral.com/lib/the-health-benefits-of-journaling/", sponsorLogo: "", sponsorURL: "")
let eveningRoutine11 = Tip(header: "", title: "Aubrey Marcus, CEO of Onnit, journals every night", body: "I start by writing down my mission and writing 3 main objectives for the following day. \n\nYour mission could be as simple as \"Own the day\" or \"Make everyone around me happier.\" \n\nWriting it down gets it out of your mind and makes it real. \n\nKnowing that you won't forget anything, because it's written down right there for you, relaxes you as you transition to sleep." , sourceName: "Own The Day, Own Your Life", sourceURL: "https://www.amazon.com/dp/B072HLS5QJ/", sponsorLogo: "", sponsorURL: "")

//3
let eveningRoutine12 = Tip(header: "", title: "Each night before bed, Arianna Huffington puts her phone in another room so she’s not distracted by it before bed", body: "The bright lights produced by our cell phone screens disrupt our bodies natural sleep rhythm causing us to have a much harder time falling asleep. \n\nAs she details in her book, \"Thrive,\" she also has banned all electronics from the bedroom, including: \n• iPads \n• Kindles \n• laptops", sourceName: "Lifehack", sourceURL: "https://www.lifehack.org/articles/productivity/6-habits-highly-successful-people-before-bedtime.html", sponsorLogo: "", sponsorURL: "")
let eveningRoutine13 = Tip(header: "", title: "Plan out when you're going to wake up, count back however many hours you need to sleep, and then set an alarm to remind yourself to get ready for bed", body: "Going to bed at a consistent time each evening is a key habit all sleep experts recommend. \n\nThe worst thing you can do is stay up late then hit snooze in the morning.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/what-successful-people-do-right-before-bed-2016-1", sponsorLogo: "", sponsorURL: "")
let eveningRoutine14 = Tip(header: "📓", title: "Journaling helps you clarify your thoughts and feelings", body: "Do you ever seem all jumbled up inside, unsure of what you want or feel? \n\nTaking a few minutes to jot down your thoughts and emotions (no editing!) will quickly get you in touch with your internal world." , sourceName: "Psych Central", sourceURL: "https://psychcentral.com/lib/the-health-benefits-of-journaling/", sponsorLogo: "TBD", sponsorURL: "")
let eveningRoutine15 = Tip(header: "✍️", title: "To create a new journaling habit, write less than you feel like writing", body: "When people start journaling they write pages the first day. \n\nThen by the second day the thought of writing a page is daunting, and they procrastinate or abandon the exercise. \n\nSo even if you feel like writing more, force yourself to write no more than one sentence a day." , sourceName: "Essentialism: The Disciplined Pursuit of Less", sourceURL: "https://gregmckeown.com/blog/one-thing-productive-people-reaching-phones/", sponsorLogo: "TBD", sponsorURL: "")

//4
let eveningRoutine16 = Tip(header: "⏳", title: "Keeping a journal allows you to track patterns, trends and improvement and growth over time", body: "When current circumstances appear insurmountable, you will be able to look back on previous dilemmas that you have since resolved.", sourceName: "Psych Central", sourceURL: "https://psychcentral.com/lib/the-health-benefits-of-journaling/", sponsorLogo: "", sponsorURL: "")
let eveningRoutine17 = Tip(header: "", title: "JOURNALING - If regular invasion of privacy is a possibility in your relationship or household, use a secure password-protected file system on your smartphone or computer", body: "Create a separate email address on Gmail, and use the Google Drive feature for your journaling." , sourceName: "Own The Day, Own Your Life", sourceURL: "https://www.amazon.com/dp/B072HLS5QJ/", sponsorLogo: "", sponsorURL: "")
let eveningRoutine18 = Tip(header: "🧠", title: "Meditation is associated with increased thickness of the cortex—the exact opposite of an effect found in tech addiction", body: "Meditation quiets the brain, reduces stress and stimulation, improves blood flow, and even balances our hormones." , sourceName: "Medium", sourceURL: "https://betterhumans.coach.me/better-than-meditation-12532d29f6cd", sponsorLogo: "", sponsorURL: "")
let eveningRoutine19 = Tip(header: "🤔", title: "Meditation helps you become aware of all the voices in your head and recognize the difference between \"you\" and all the noise", body: "If you've never tried it before you may be so used to the different voices that you don't notice them, their thoughts are considered to be your thoughts. \n\nBut, it’s possible to listen to the voices without identifying with them directly. When you meditate you'll develop the ability to hear, and observe, the inner conversation that's always going on in your head." , sourceName: "Medium", sourceURL: "https://betterhumans.coach.me/better-than-meditation-12532d29f6cd", sponsorLogo: "TBD", sponsorURL: "www.test.com")

//5
let eveningRoutine20 = Tip(header: "", title: "Kenneth Chenault, CEO of American Express, writes down 3 things he wants to accomplish the next day", body: "This helps him prioritize first thing the next morning. \n\nClearing the mind for a good night sleep is critical for a lot of successful people.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/what-successful-people-do-right-before-bed-2016-1", sponsorLogo: "", sponsorURL: "")
let eveningRoutine21 = Tip(header: "", title: "Increase Happiness: Learn meditation. Once you've learned, you never forget how to do it", body: "Try Vipassana once in your life (Google Vipassana to learn more). Or, download recording from Jack Kornfield, Jon Kabat-Zinn, or Tara Brach to start, or check out a local class or session open to the public. \n\nEach instructor has his or her own style, so keep switching it up until you find someone you like." , sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")



//WEEK 1
let eveningRoutineTipArray0 = [eveningRoutine0, eveningRoutine1, eveningRoutine2, eveningRoutine3]
let eveningRoutineTopic0 = Topic(title: eveningRoutineTitle, icon: eveningRoutineIcon, tip: eveningRoutineTipArray0)

let eveningRoutineTipArray1 = [eveningRoutine4, eveningRoutine5, eveningRoutine6, eveningRoutine7]
let eveningRoutineTopic1 = Topic(title: eveningRoutineTitle, icon: eveningRoutineIcon, tip: eveningRoutineTipArray1)

let eveningRoutineTipArray2 = [eveningRoutine8, eveningRoutine9, eveningRoutine10, eveningRoutine11]
let eveningRoutineTopic2 = Topic(title: eveningRoutineTitle, icon: eveningRoutineIcon, tip: eveningRoutineTipArray2)

let eveningRoutineTipArray3 = [eveningRoutine12, eveningRoutine13, eveningRoutine14, eveningRoutine15]
let eveningRoutineTopic3 = Topic(title: eveningRoutineTitle, icon: eveningRoutineIcon, tip: eveningRoutineTipArray3)

let eveningRoutineTipArray4 = [eveningRoutine16,  eveningRoutine17, eveningRoutine18, eveningRoutine19]
let eveningRoutineTopic4 = Topic(title: eveningRoutineTitle, icon: eveningRoutineIcon, tip: eveningRoutineTipArray4)

let eveningRoutineTipArray5 = [eveningRoutine20,  eveningRoutine21, eveningRoutine10, eveningRoutine11]
let eveningRoutineTopic5 = Topic(title: eveningRoutineTitle, icon: eveningRoutineIcon, tip: eveningRoutineTipArray5)

let eveningRoutineTipArray6 = [eveningRoutine12, eveningRoutine13, eveningRoutine14, eveningRoutine15]
let eveningRoutineTopic6 = Topic(title: eveningRoutineTitle, icon: eveningRoutineIcon, tip: eveningRoutineTipArray6)


// MARK: - Can't Sleep
let cantSleepTitle = "Can't Sleep"
let cantSleepIcon = Constants.Icon.cantSleep

//WEEK 1
//0
let cantSleepTip1 = Tip(header: "🙅‍♀️", title: "Do not look at your clock because it can cause anxiety about sleeplessness", body: "People who wake up in the middle of the night often tend to watch the clock and obsess about the fact that they cannot fall back asleep. \n\nIf possible, it is best to remove the clock from your room. If you need an alarm in the room, you can turn your clock and avoid watching it when you wake up in the middle of the night." , sourceName: "HealthLine", sourceURL: "https://www.healthline.com/nutrition/ways-to-fall-asleep#section1", sponsorLogo: "", sponsorURL: "")
let cantSleepTip2 = Tip(header: "🌡", title: "Set your thermostat to a cool temperature between 60–75°F (15–23°C)", body: "Every day, your body temperature decreases as you fall asleep. If your room is too warm, you might have a hard time falling asleep." , sourceName: "HealthLine", sourceURL: "https://www.healthline.com/nutrition/ways-to-fall-asleep#section1", sponsorLogo: "", sponsorURL: "")
let cantSleepTip3 = Tip(header: "🚿", title: "Taking a warm bath or shower could help", body: "Your body temperature decreases as you fall asleep. Taking a warm bath or shower could also help speed up the body's temperature changes. \n\nAs your body cools down afterwards, this can help send a signal to your brain to go to sleep." , sourceName: "HealthLine", sourceURL: "https://www.healthline.com/nutrition/ways-to-fall-asleep#section1", sponsorLogo: "", sponsorURL: "")
let cantSleepTip4 = Tip(header: "🌬", title: "The \"4-7-8\" breathing method relaxes you to help you fall asleep", body: "Here are the steps: \n\n1. Place the tip of your tongue behind your upper front teeth. \n\n2. Exhale completely through your mouth and make a whoosh sound. \n\n3. Close your mouth and inhale through your nose while mentally counting to 4. \n\n4. Hold your breath and mentally count to 7. \n\n5. Open your mouth and exhale completely, making a whoosh sound and mentally counting to 8. \n\n6. Repeat this cycle at least 3 more times." , sourceName: "HealthLine", sourceURL: "https://www.healthline.com/nutrition/ways-to-fall-asleep#section1", sponsorLogo: "", sponsorURL: "")

//1
let cantSleepTip5 = Tip(header: "🎶", title: "Listening to relaxing music promotes better sleep", body: "Study: participants who were exposed to soothing music for 45 minutes at bedtime had a more restful and deeper sleep than those who did not listen to music." , sourceName: "HealthLine", sourceURL: "https://www.healthline.com/nutrition/ways-to-fall-asleep#section9", sponsorLogo: "", sponsorURL: "")
let cantSleepTip6 = Tip(header: "📓", title: "Journaling and focusing on positive thoughts can calm the mind and help you sleep better", body: "A study of college students found that journaling resulted in reduced bedtime worry and stress, increased sleep time and improved sleep quality. Writing down the positive events that happened during the day can create a state of gratitude and happiness, downgrade stressful events and promote more relaxation at bedtime." , sourceName: "HealthLine", sourceURL: "https://www.healthline.com/nutrition/ways-to-fall-asleep#section13", sponsorLogo: "", sponsorURL: "")
let cantSleepTip7 = Tip(header: "🧘‍♀️", title: "Practice yoga, meditation and mindfulness", body: "When people are stressed, they tend to have difficulty falling asleep. Yoga, meditation and mindfulness are tools to calm the mind and relax the body. Moreover, they have been shown to improve sleep. \n\nYoga encourages the practice of breathing patterns and body movements that release stress and tension accumulated in your body. \n\nMeditation can enhance melatonin levels and assist the brain in achieving a specific state where sleep is easily achieved. \n\nMindfulness may help you maintain focus on the present and worry less while falling asleep." , sourceName: "HealthLine", sourceURL: "https://www.healthline.com/nutrition/ways-to-fall-asleep#section1", sponsorLogo: "", sponsorURL: "")
let cantSleepTip8 = Tip(header: "😳", title: "If you’ve had trouble sleeping for 3+ nights a week, for 3+ months, you officially suffer from insomnia", body: "At this point, your insomnia may be a behavioral pattern (for example, your nighttime routines do not cue your body for sleep, or your sleep schedule is out of sync with your biological clock), or it could be linked to another medical or psychiatric issue that needs to be addressed. Talk to your doctor about treatment." , sourceName: "National Sleep Foundation", sourceURL: "https://www.sleepfoundation.org/insomnia/sleep-disorders-problems/insomnia/symptoms", sponsorLogo: "", sponsorURL: "")

//2
let cantSleepTip9 = Tip(header: "🎵", title: "DO: Listen to relaxing classical music. DON'T: Listen to an audiobook or nothing at all", body: "Researchers found that listening to classical music statistically significantly improved sleep quality. Sleep quality did not improve statistically significantly for participants listening to an audiobook or no music at all." , sourceName: "National Center for Biotechnology Information, U.S. National Library of Medicine", sourceURL: "https://www.ncbi.nlm.nih.gov/pubmed/18426457", sponsorLogo: "", sponsorURL: "")
let cantSleepTip10 = Tip(header: "📝", title: "Write down your thoughts. Keep a pen and paper next to your bed", body: "Thinking about something you have to do the next day can keep you from falling asleep. Writing it all down helps to physically \"dump out\" your thoughts onto paper so you don’t have to keep thinking about them over and over." , sourceName: "Medium", sourceURL: "https://betterhumans.coach.me/how-to-fall-asleep-quickly-and-wake-up-ready-to-be-productive-cd7eadad010d", sponsorLogo: "", sponsorURL: "")
let cantSleepTip11 = Tip(header: "🤔", title: "Go into another room and do something relaxing until you feel tired", body: "It is best to take work materials, computers and televisions out of the sleeping environment. Use your bed only for sleep and romance to strengthen the association between bed and sleep." , sourceName: "National Sleep Foundation", sourceURL: "https://www.sleepfoundation.org/articles/healthy-sleep-tips", sponsorLogo: "", sponsorURL: "")
let cantSleepTip12 = Tip(header: "Fall asleep using an Army tactic developed to help soldiers fall asleep in 2 minutes", title: "How to tell if you slept well last night: Does everything feel better during the day?", body: "1. Sit on the edge of your bed with no distractions and only a bedside light on. \n2. Relax your facial muscles. \n3. Let gravity pull your shoulders toward the ground and let your arms dangle. \n4. Breathe in and out, listening to your breath, and relaxing your legs. \n5. Clear your mind for 10 seconds. If thoughts come, let them pass. \n6. For 10 seconds, visualize yourself lying in a canoe in a calm lake with clear blue skies above you or in a velvet hammock, gently swaying in a pitch-black room. \n7. Lie down, turn off the light, and you should fall asleep in a couple of minutes. \n\nThe above method was proven to work for 96% of soldiers. It may not work for you immediately, but try it for a few days in a row and it likely will." , sourceName: "Medium", sourceURL: "https://medium.com/an-idea-for-you/how-to-tell-if-you-slept-well-last-night-and-what-to-do-if-you-didnt-e338553af778", sponsorLogo: "", sponsorURL: "")

//3
let cantSleepTip13 = Tip(header: "💤", title: "Study: Gratitude journaling can improve your sleep", body: "If you’re having trouble sleeping or just waking up feeling fatigued, try a quick gratitude journaling exercise before bed by writing down what you're thankful for. Participants of a 2-week study who kept a gratitude journal had increased sleep quality and reduced blood pressure." , sourceName: "Positive Psychology Program", sourceURL: "https://positivepsychologyprogram.com/benefits-gratitude-research-questions/", sponsorLogo: "TBD", sponsorURL: "")



let cantSleepTipArray0 = [cantSleepTip1,  cantSleepTip2,  cantSleepTip3,  cantSleepTip4]
let cantSleepTopic0 = Topic(title: cantSleepTitle, icon: cantSleepIcon, tip: cantSleepTipArray0)

let cantSleepTipArray1 = [ cantSleepTip5,  cantSleepTip6,  cantSleepTip7,  cantSleepTip8]
let cantSleepTopic1 = Topic(title: cantSleepTitle, icon: cantSleepIcon, tip: cantSleepTipArray1)

let cantSleepTipArray2 = [ cantSleepTip9,  cantSleepTip10,  cantSleepTip11,  cantSleepTip12]
let cantSleepTopic2 = Topic(title: cantSleepTitle, icon: cantSleepIcon, tip: cantSleepTipArray2)

let cantSleepTipArray3 = [cantSleepTip1,  cantSleepTip2,  cantSleepTip3,  cantSleepTip4]
let cantSleepTopic3 = Topic(title: cantSleepTitle, icon: cantSleepIcon, tip: cantSleepTipArray3)

let cantSleepTipArray4 = [cantSleepTip5,  cantSleepTip6,  cantSleepTip7,  cantSleepTip8]
let cantSleepTopic4 = Topic(title: cantSleepTitle, icon: cantSleepIcon, tip: cantSleepTipArray4)

let cantSleepTipArray5 = [cantSleepTip9, cantSleepTip10, cantSleepTip11, cantSleepTip12]
let cantSleepTopic5 = Topic(title: cantSleepTitle, icon: cantSleepIcon, tip: cantSleepTipArray5)

let cantSleepTipArray6 = [cantSleepTip8, cantSleepTip7, cantSleepTip6, cantSleepTip5]
let cantSleepTopic6 = Topic(title: cantSleepTitle, icon: cantSleepIcon, tip: cantSleepTipArray6)





// MARK: - SCHOOL

let schoolTitle = "School"
let schoolIcon = Constants.Icon.school

//AM
let schoolAMTip1 = Tip(header: "☀️", title: "Students who get more sunlight before going to school perform better in tests", body: "Researchers followed students who moved to school districts with later start times and found that their standardized test scores improved. The results found that students going through puberty benefited the most from later start times. So, girls are negatively impacted by late start times starting around age 11, and boys at age 13.", sourceName: "The Atlantic", sourceURL: "https://www.theatlantic.com/education/archive/2017/05/sunshine-boosts-test-scores/526503/", sponsorLogo: "", sponsorURL: "")
let schoolAMTip2 = Tip(header: "🌅", title: "Improve your grades by taking tests in the morning", body: "Researchers found students scored higher in the mornings than in the afternoons. For every hour later in the day, the tests were given, scores feel a little more.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
let schoolAMTip3 = Tip(header: "🚰", title: "Being even 1% dehydrated can cause deficits in visual and working memory", body: "The good news is that the adverse effects of mild dehydration can be reversed by drinking water to replenish your fluids. Symptoms of mild dehydration include feeling dizzy, lightheaded or tired, dry mouth, and having urine that is more yellow than is normal for you." , sourceName: "Bustle", sourceURL: "https://www.bustle.com/p/being-mildly-dehydrated-could-affect-your-concentration-according-to-a-new-study-9934705", sponsorLogo: "", sponsorURL: "")
let schoolAMTip4 = Tip(header: "👩‍🏫", title: "Getting to know your teachers will make school easier and increase your GPA", body: "You don’t have to be a teacher's pet, but do your best to be kind and friendly to everybody you take a class from. If possible, spend a few minutes before or after class talking with your teachers about things related to their subject. \n\nIt will make it easier to ask for things like: \n\n• Homework extensions \n\n• Extra credit opportunities \n\n• Letters of recommendation" , sourceName: "wikiHow", sourceURL: "https://www.sciencedaily.com/releases/2009/10/091005111627.htm", sponsorLogo: "", sponsorURL: "")
//2
let schoolAMTip5 = Tip(header: "🚰", title: "Drink water. Being even mildly dehydrated can reduce your mental performance", body: "Study: mild dehydration can impair cognitive performance, particularly when completing tasks involving attention and regulating emotions. To maintain your mood at optimal levels, you need to drink water throughout the day." , sourceName: "Bustle", sourceURL: "https://www.bustle.com/p/being-mildly-dehydrated-could-affect-your-concentration-according-to-a-new-study-9934705", sponsorLogo: "", sponsorURL: "")
let schoolAMTip6 = Tip(header: "🤔", title: "Sitting up straight in your chair isn't just good for your posture -- it also gives you more confidence", body: "Researchers found that students who were told to sit up straight, in a confident position, were more confident with their own thoughts. However, students who were told to sit in a slouched, less confident posture, were less confident with their own thoughts. \n\nPeople don't realize their posture is affecting how much they believe in what they're thinking. So, sit up straight and think positive thoughts about yourself." , sourceName: "ScienceDaily", sourceURL: "https://www.sciencedaily.com/releases/2009/10/091005111627.htm", sponsorLogo: "", sponsorURL: "")
let schoolAMTip7 = Tip(header: "🚶‍♂️", title: "Walking around for just 5 minutes every hour can help you be more productive", body: "Studies have found that movement-based activities during the school day can improve students' focus and standardized test scores. Moving your body improves learning because it stimulates more blood cells in the brain.", sourceName: "Inc.", sourceURL: "https://www.inc.com/betsy-mikel/science-says-kids-learn-better-when-their-teachers-do-this.html", sponsorLogo: "", sponsorURL: "")
let schoolAMTip8 = Tip(header: "⚽️", title: "Students who take recess often earn better grades than those with fewer recesses", body: "Students who have recess work harder, fidget less, and focus better. They even develop better social skills, show greater empathy, and eat healthier food.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")

//3
let schoolAMTip9 = Tip(header: "👫", title: "Improve your success by being kind and helpful towards other students", body: "Researchers have found that students who show this kind of behavior: 1) achieve greater academic success, 2) have more friends, and 3) develop better relationships with teachers.", sourceName: "University of California, Berkeley", sourceURL: "https://greatergood.berkeley.edu/article/item/4_ways_to_encourage_kindness_in_students", sponsorLogo: "", sponsorURL: "")
let schoolAMTip10 = Tip(header: "", title: "Study: A one-point increase in high school GPA raises annual earnings in adulthood by around 12% for men and 14% for women", body: "In addition, a one-point increase in GPA doubles the probability of completing college -- from 21% to 42% -- for both genders.", sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2014/05/140519092835.htm", sponsorLogo: "", sponsorURL: "")
let schoolAMTip11 = Tip(header: "", title: "Study: Having a positive attitude improves your ability to answer math problems, increases your memory, and enhances your problem-solving abilities", body: "Based on the data, a positive attitude contributes to a similar level of achievement in math as a student's IQ. \n\nWhen students are positive about math, they tend to have more interest in math and are more likely to practice, resulting in more success.", sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2018/02/05/stanford-university-study-positivity-makes-kids-smarter.html", sponsorLogo: "", sponsorURL: "")
let schoolAMTip12 = Tip(header: "", title: "Conscientious people are more likely to have higher GPAs", body: "Here are a few suggestions to be more conscientious: \n\n• show gratitude for others \n• be on time \n• organize your desk \n• use reminders \n• make daily plans—and work on sticking to them", sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2013/03/130319124310.htm", sponsorLogo: "", sponsorURL: "")

//4
let schoolAMTip13 = Tip(header: "", title: "Study: Students who eat a healthy breakfast show improved memory and test grades", body: "Good Breakfast: \n• Solid fruit \n• Solid vegetables \n• Omelet \n• Oatmeal \n• Whole grain toast \n• Whole grain cold cereal \n• Peanut butter \n• Walnuts \n\nBad Breakfast: \n• Fruit juice \n• Sugar cereal \n• Donut \n• Pastry \n• Pancakes \n• Waffles \n• Soda" , sourceName: "NBC News", sourceURL: "http://www.nbcnews.com/id/15201937/ns/health-diet_and_nutrition/t/what-you-eat-breakfast-sets-tone-day/#.XeKtgTJKjGI", sponsorLogo: "", sponsorURL: "")

let schoolAMTipArray0 = [schoolAMTip1, schoolAMTip2, schoolAMTip3, schoolAMTip4]
let schoolAMTipArray1 = [schoolAMTip5, schoolAMTip6, schoolAMTip7, schoolAMTip8]
let schoolAMTipArray2 = [schoolAMTip9, schoolAMTip10, schoolAMTip11, schoolAMTip12]
let schoolAMTipArray3 = [schoolAMTip13, schoolAMTip2, schoolAMTip3, schoolAMTip4]
let schoolAMTipArray4 = [schoolAMTip5, schoolAMTip6, schoolAMTip7, schoolAMTip8]
let schoolAMTipArray5 = [schoolAMTip9, schoolAMTip10, schoolAMTip11, schoolAMTip12]
let schoolAMTipArray6 = [schoolAMTip13, schoolAMTip6, schoolAMTip7, schoolAMTip8]

let schoolAMTopic0 = Topic(title: schoolTitle, icon: schoolIcon, tip: schoolAMTipArray0)
let schoolAMTopic1 = Topic(title: schoolTitle, icon: schoolIcon, tip: schoolAMTipArray1)
let schoolAMTopic2 = Topic(title: schoolTitle, icon: schoolIcon, tip: schoolAMTipArray2)
let schoolAMTopic3 = Topic(title: schoolTitle, icon: schoolIcon, tip: schoolAMTipArray3)
let schoolAMTopic4 = Topic(title: schoolTitle, icon: schoolIcon, tip: schoolAMTipArray4)
let schoolAMTopic5 = Topic(title: schoolTitle, icon: schoolIcon, tip: schoolAMTipArray5)
let schoolAMTopic6 = Topic(title: schoolTitle, icon: schoolIcon, tip: schoolAMTipArray6)



//PM
//0
let schoolPMTip1 = Tip(header: "🤝", title: "When searching for friends, look for people who make you feel good about yourself and do their best to support you", body: "Even if it consists of only 1 or 2 people, having a group of friends you can trust and rely on will make your life far easier. If a friend starts making you feel worthless, don’t be afraid to cut them out of your life. It may be difficult, but it will make you far happier in the long-run." , sourceName: "wikiHow", sourceURL: "https://www.wikihow.com/Survive-High-School", sponsorLogo: "", sponsorURL: "")
let schoolPMTip2 = Tip(header: "😐", title: "Talk to your school counselor if you’re dealing with mental health issues", body: "If you’re experiencing any emotions that you don’t know how to deal with, make an appointment with your school’s mental health counselor or a private therapist. These paid professionals can help you better understand how you’re feeling and help you cope with your emotions. \n\nSome issues many students suffer from include: \n\n• Anxiety \n• Depression \n• Low self esteem \n• Eating disorders like Anorexia and Bulimia" , sourceName: "wikiHow", sourceURL: "https://www.wikihow.com/Survive-High-School", sponsorLogo: "", sponsorURL: "")
let schoolPMTip3 = Tip(header: "👫", title: "Become friends with a variety of different people", body: "Everybody has something to contribute to your growth as a person, so try to interact with a lot of different people. Be nice to all the students you meet whether they are older or younger than you, that way you can slowly gain the respect of the entire school." , sourceName: "wikiHow", sourceURL: "https://www.wikihow.com/Survive-High-School", sponsorLogo: "", sponsorURL: "")
let schoolPMTip4 = Tip(header: "👨‍👩‍👧‍👦", title: "Teens who eat with their families 5 or more times a week are more likely to get better grades in school", body: "According to a Columbia University survey, found teens having family dinners 5 or more times a week were 40% more likely to get A's and B's. The survey suggests that family time may be more important to a student's academic success than many people realize." , sourceName: "ABC News", sourceURL: "https://abcnews.go.com/WNT/Health/story?id=1123055&page=1", sponsorLogo: "", sponsorURL: "")
//1
let schoolPMTip5 = Tip(header: "🙏", title: "Students who practice religion on a regular basis do better in school than students who do not practice religion", body: "A study found that students who attend religious services, pray on a regular basis, feel close to God, and emphasize the role of faith in their daily lives had an average GPA of 3.22. However, students who believe that a God exists but avoid religious involvement and broader issues of the relevance of religion for their life had an average GPA of 2.93." , sourceName: "Stanford University", sourceURL: "https://ed.stanford.edu/news/religiously-engaged-adolescents-demonstrate-habits-help-them-get-better-grades-stanford-scholar", sponsorLogo: "", sponsorURL: "")
let schoolPMTip6 = Tip(header: "⚽️", title: "Join a school club or sports team to meet people with similar interests and increase your chances of success going forward", body: "Extra-curricular activities are a great way to meet like-minded people and make long-lasting friendships. In addition to the social aspects, club involvement will make you a stronger candidate when it comes time to apply to the next level of schooling or a job." , sourceName: "wikiHow", sourceURL: "https://www.wikihow.com/Survive-High-School", sponsorLogo: "", sponsorURL: "")
let schoolPMTip7 = Tip(header: "📚", title: "Start studying at least 1 week in advance for upcoming quizzes and tests", body: "This will give you plenty of time to refresh yourself on the material and study up on things you don’t understand. If you find yourself struggling with any of the material, ask your teacher for help before or after class or create a study group with fellow classmates." , sourceName: "wikiHow", sourceURL: "https://www.wikihow.com/Survive-High-School", sponsorLogo: "", sponsorURL: "")
let schoolPMTip8 = Tip(header: "😴", title: "Get 8 hours of sleep tonight", body: "Teenagers who get less sleep than they need are at a higher risk for depression, suicide, substance abuse, and car crashes. Evidence also links short sleep duration with obesity and a weakened immune system.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
//2
let schoolPMTip9 = Tip(header: "💪", title: "Going to a gym / exercising after classes tonight can increase your GPA", body: "A study of college students found that students who belonged to the gym had higher GPAs than those who didn’t. The gym-going students' cumulative GPAs were 0.13 points higher.", sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/2014/07/11/gym-higher-gpa-msu-study_n_5575054.html", sponsorLogo: "", sponsorURL: "")
let schoolPMTip10 = Tip(header: "😴", title: "Increase your GPA by getting enough sleep each day", body: "A study of 55,000 college students found that for every extra day a student experienced sleep problems, their GPA dropped by 0.02. Getting a good night's sleep is an essential part of encoding memories and learning. Adolescents need 9 hours of sleep per night.", sourceName: "Big Think", sourceURL: "https://bigthink.com/matt-davis/study-to-boost-your-gpa-get-some-sleep", sponsorLogo: "", sponsorURL: "")
let schoolPMTip11 = Tip(header: "", title: "Study: Students who spend 2+ years in extracurriculars are more likely to have higher self-esteem, graduate from college, have a job (as opposed to being unemployed as a young adult), and earn more money. But this is only true for students who participant in activities for 2+ years rather than 1 year.", body: "That longer-term commitment gives students the chance to learn their strengths, and where they need to improve. And it gives them time to see the significant progress they can make as a direct result of their consistent hard work and effort.", sourceName: "Inc.", sourceURL: "https://www.inc.com/sonia-thompson/research-shows-kids-who-do-this-earn-better-grades.html", sponsorLogo: "", sponsorURL: "")
let schoolPMTip12 = Tip(header: "", title: "Study of 4th-6th graders ages 10-12 revealed that children who napped 3+ times per week benefit from a 7.6% increase in academic performance in Grade 6", body: "Midday napping correlated with greater happiness, self-control, and grit; fewer behavioral problems; and higher IQ. \n\nThe more students sleep during the day, the greater the benefit of naps on many of these measures." , sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2019/05/190531135828.htm", sponsorLogo: "", sponsorURL: "")



let schoolPMTipArray0 = [schoolPMTip1, schoolPMTip2, schoolPMTip3, schoolPMTip4]
let schoolPMTipArray1 = [schoolPMTip5, schoolPMTip6, schoolPMTip7, schoolPMTip8]
let schoolPMTipArray2 = [schoolPMTip9, schoolPMTip10, schoolPMTip11, schoolPMTip12]
let schoolPMTipArray3 = [schoolPMTip1, schoolPMTip2, schoolPMTip3, schoolPMTip4]
let schoolPMTipArray4 = [schoolPMTip5, schoolPMTip6, schoolPMTip7, schoolPMTip8]
let schoolPMTipArray5 = [schoolPMTip9, schoolPMTip10, schoolPMTip11, schoolPMTip12]
let schoolPMTipArray6 = [schoolPMTip8, schoolPMTip7, schoolPMTip6, schoolPMTip5]

let schoolPMTopic0 = Topic(title: schoolTitle, icon: schoolIcon, tip: schoolPMTipArray0)
let schoolPMTopic1 = Topic(title: schoolTitle, icon: schoolIcon, tip: schoolPMTipArray1)
let schoolPMTopic2 = Topic(title: schoolTitle, icon: schoolIcon, tip: schoolPMTipArray2)
let schoolPMTopic3 = Topic(title: schoolTitle, icon: schoolIcon, tip: schoolPMTipArray3)
let schoolPMTopic4 = Topic(title: schoolTitle, icon: schoolIcon, tip: schoolPMTipArray4)
let schoolPMTopic5 = Topic(title: schoolTitle, icon: schoolIcon, tip: schoolPMTipArray5)
let schoolPMTopic6 = Topic(title: schoolTitle, icon: schoolIcon, tip: schoolPMTipArray6)


// I've found conflicting studies with early start times and math test scores
let school2 = Tip(header: "🌅", title: "Get better at math by scheduling your math class in the morning", body: "Researchers found that students are more productive earlier in the school day, especially in math. Having math in the first two periods of the school day instead of the last two periods increases the math GPA of students as well as their scores in statewide tests.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
let school3 = Tip(header: "🍽", title: "Students test scores increased when they had a 20-30 minute break to eat, play, and chat before a test", body: "Students who take the tests in the afternoon score significantly worse than those who take th eexams earlier in the day. But when students had a 20-30 minute breat to eat, play, and chat before a test, their scores did not decline. In fact, they increased. A break causes an improvement that is larger than the hourly deterioration. That is, scores go down after noon. But scores go up by a higher amount after breaks. Taking a test in the afternoon without a break produces scores that are equivalent to spending less time in school each year and having parents with lower incomes and less education. But taking the same test after a 20-30 minute break leads to scores that are equivalent to students spending 3 additional weeks in the classroom and having somewhat wealthier and better-educated parents. And the benefits were the greatest for the lowest-performing students. If there were a break after every hour, test scores would actually improve over the course of the day.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "") // WIP

// 2



// MARK: - Recent Graduate
let recentGrad1 = Tip(header: "🎓", title: "Graduating from college in a bad economy has a long-run, negative impact on wages", body: "Those who entered the job market in weak economies earned less at the beginning of their careers than those who started in strong economies. The disadvantage persisted for as long as 20 years. On average, even after 15 years of work, people who'd graduated in high unemployment years were still earning 2.5% less than those who'd graduated in low unemployment years. In some cases, the wage difference between graduating in an especially strong year versus an especially weak one was 20%-not just immediately after college but even when these people had reached their late 30's. The total cost, in inflation-adjusted terms, of graduating in a bad year rather than a good year averaged about $100,000. ", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
let recentGrad2 = Tip(header: "💰", title: "A large portion of one's lifetime wage growth occurs in the first 10 years of a career", body: "Starting with a higher salary puts people on a higher initial trajectory.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
let recentGrad3 = Tip(header: "💵", title: "One of the fastest routes to higher pay early in a career is to switch jobs fairly often", body: "", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")// WIP
let recentGrad4 = Tip(header: "", title: "", body: "", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")


let student1 = Tip(header: "💰", title: "Confidence during teenage years strongly correlates with higher earnings in adulthood", body: "", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/ashleystahl/2016/05/11/how-self-worth-affects-your-salary/#4c97d0e677fa", sponsorLogo: "", sponsorURL: "") //WIP

// Female Student
let fStudent1 = Tip(header: "⛹️‍♀️", title: "Girls who play team sports are more likely to graduate from college, find a job, and be employed in male-dominated industries", body: "There’s even a direct link between playing sports in high school and earning a bigger salary as an adult. Learning to own victory and survive defeat in sports is apparently good training for owning triumphs and surviving setbacks at work.", sourceName: "The Atlantic", sourceURL: "https://www.theatlantic.com/magazine/archive/2014/05/the-confidence-gap/359815/", sponsorLogo: "", sponsorURL: "")
// Male Student





// MARK: - TRAVEL

let travelTitle = "Traveling"
let travelIcon = Constants.Icon.travel

//0
let travelTip0 = Tip(header: "😴", title: "Reduce jet lag by changing your bedtime to better match the local time of your destination", body: "Jet lag occurs when we cross three or more time zone changes, because it throws off our circadian rhythm -- the biological clock that helps control when we wake and fall asleep. Try to sleep on the plane if it’s nighttime where you’re going or stay awake if it’s daytime -- but don’t force it.", sourceName: "The Washington Post", sourceURL: "https://www.washingtonpost.com/lifestyle/travel/want-to-minimize-jet-lag-heres-what-the-doctors-order/2018/08/29/23c14836-a7d8-11e8-97ce-cc9042272f07_story.html", sponsorLogo: "", sponsorURL: "")
let travelTip1 = Tip(header: "😰", title: "Study: Poorly planned and stressful vacations eliminate the benefits of time away", body: "If you plan ahead, create social connections on the trip, go far from your work, and feel safe, 94% of vacations have a good ROI in terms of your energy and outlook upon returning to work. \n\nJust make sure you plan the trip at least a month in advance, as one of the key predictors of vacation ROI is the amount of stress caused by not planning ahead.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2016/07/the-data-driven-case-for-vacation", sponsorLogo: "", sponsorURL: "")
let travelTip2 = Tip(header: "🙌", title: "Make sure to end the trip on a high note because our brains place more weight on things that happened last in a series", body: "This so-called \"recency effect\" means the end of a vacation is more easily recalled than the beginning. If you’re only going to upgrade once, splurge on the business class seat on the way home, not the way there. \n\nPlan your big dinner at the Michelin-starred restaurant for your final night, not your first.", sourceName: "Fast Company", sourceURL: "https://www.fastcompany.com/3048975/the-scientifically-proven-way-to-have-the-best-vacation-ever", sponsorLogo: "", sponsorURL: "")
let travelTip3 = Tip(header: "🏝", title: "Study: Vacations further away from home leads to greater levels of happiness", body: "• An average vacation (or \"staycation\") was found to create no positive effect on happiness. \n\n• 84% of the best trips recorded by participants were to locations outside of country.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2014/02/when-a-vacation-reduces-stress-and-when-it-doesnt", sponsorLogo: "", sponsorURL: "")

//1
let travelTip4 = Tip(header: "😰", title: "Vacations with medium to high levels of stress showed no increase in happiness after a vacation", body: "• Plan ahead. 74% find the most stressful part of travel to be figuring out the details: transportation, wasting time figure things out on the trip, and being unfamiliar with the location. \n\n• Meet with someone knowledgeable at the location. On the best trips, 77% met with a local host or had a knowledgeable friend.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2014/02/when-a-vacation-reduces-stress-and-when-it-doesnt", sponsorLogo: "", sponsorURL: "")
let travelTip5 = Tip(header: "🏝", title: "Study: The health and wellness benefits of a vacation peaked at about 8 days in", body: "Research finds that we return to previous happiness levels fairly quickly after a vacation, and so shorter vacations experienced frequently contribute more to overall well-being than longer but less infrequent multi-week vacations.", sourceName: "Fast Company", sourceURL: "https://www.fastcompany.com/3048975/the-scientifically-proven-way-to-have-the-best-vacation-ever", sponsorLogo: "", sponsorURL: "")
let travelTip6 = Tip(header: "📸", title: "Under some conditions taking a photo of something actually makes it harder to remember the event fully", body: "Taking pictures rather than concentrating fully on the events in front of us prevents memories from taking hold. \n\nHowever, taking a photo of a specific detail on the object by zooming in on it with the camera seemed to preserve memory for the object, not just for the part that was zoomed in on but also for the part that was out of frame.", sourceName: "The Telegraph", sourceURL: "https://www.telegraph.co.uk/news/science/science-news/10507146/Taking-photographs-ruins-the-memory-research-finds.html", sponsorLogo: "", sponsorURL: "")
let travelTip7 = Tip(header: "😀", title: "Destinations that are compatible with your personality and also fascinate or inspire you are best for your mental health", body: "• The destination should have enough variation of interest and activities for you to be engaged with. \n\n• Travel to a place that makes you feel at ease so you don't waste energy on feeling anxious. \n\n• A place that lets you disconnect from everyday life (e.g. technology) or is physically different from where you live will likely make you feel more rejuvenated when you return.", sourceName: "Travel + Leisure", sourceURL: "https://www.travelandleisure.com/travel-news/beach-vacation-not-good-for-mental-health-study", sponsorLogo: "", sponsorURL: "")

//2
let travelTip8 = Tip(header: "", title: "Healthy skin while flying: Bring a moisturizer with SPF on the plane, avoid alcohol and salty foods, drink lots of water, and pull the shade down during the flight", body: "When you're flying, your skin has to contend with dehydration from the plane's dry air and sun damage because UV rays penetrate the plane's windows. \n\nThe more frequently you fly, the more UV exposure when you're on an airplane, which may explain why flight attendants have an increased risk of melanoma.", sourceName: "U.S. News & World Report", sourceURL: "https://health.usnews.com/wellness/aging-well/articles/2017-01-09/6-surprising-factors-that-can-accelerate-the-aging-of-your-skin", sponsorLogo: "", sponsorURL: "")
let travelTip9 = Tip(header: "", title: "I have found out that there ain't no surer way to find out whether you like people or hate them than to travel with them.", body: "- Mark Twain \n\nAmerican writer, humorist, and entrepreneur.", sourceName: "Wonderful Quote", sourceURL: "https://www.wonderfulquote.com/l/relationships-quotes", sponsorLogo: "", sponsorURL: "")



//WEEK 1
let travelTipArray0 = [travelTip0, travelTip1, travelTip2, travelTip3]
let travelTipArray1 = [travelTip4, travelTip5, travelTip6, travelTip7]
let travelTipArray2 = [travelTip8, travelTip9, travelTip7, travelTip6]
let travelTipArray3 = [travelTip0, travelTip1, travelTip2, travelTip3]
let travelTipArray4 = [travelTip4, travelTip5, travelTip6, travelTip7]
let travelTipArray5 = [travelTip8, travelTip9, travelTip7, travelTip6]
let travelTipArray6 = [travelTip7, travelTip6, travelTip5, travelTip4]

let travelTopic0 = Topic(title: travelTitle, icon: travelIcon, tip: travelTipArray0)
let travelTopic1 = Topic(title: travelTitle, icon: travelIcon, tip: travelTipArray1)
let travelTopic2 = Topic(title: travelTitle, icon: travelIcon, tip: travelTipArray2)
let travelTopic3 = Topic(title: travelTitle, icon: travelIcon, tip: travelTipArray3)
let travelTopic4 = Topic(title: travelTitle, icon: travelIcon, tip: travelTipArray4)
let travelTopic5 = Topic(title: travelTitle, icon: travelIcon, tip: travelTipArray5)
let travelTopic6 = Topic(title: travelTitle, icon: travelIcon, tip: travelTipArray6)



//MARK: - AIRPORT



// MARK: - Movie Theater
let movieTheaterTip1 = Tip(header: "", title: "Prevent weight gain: Don't buy the theater popcorn", body: "A medium bag of popcorn at Regal Cinemas carries a whopping 1,200 calories, according to an independent lab analysis by Center for Science in the Public. That’s 60% of the day’s calories." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/things-making-you-fatter/", sponsorLogo: "TBD", sponsorURL: "www.test.com")
let movieTheaterTip2 = Tip(header: "", title: "Want popcorn? Buy the medlarge popcorn, not the extra-large popcorn", body: "Study: Moviegoers ate 45% more popcorn from extra-large containers than large ones." , sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/things-making-you-fatter/", sponsorLogo: "TBD", sponsorURL: "www.test.com")


// MARK: - Sex

let sex0 = Tip(header: "👩", title: "Females should always pee after sex to prevent UTIs", body: "Females are 10 times more likely to get a UTI. Peeing flushes out bacteria in your urethra naturally caused by having sex. It's recommended to pee within 30 minutes after sex.", sourceName: "Bustle", sourceURL: "https://www.bustle.com/articles/144605-why-pee-after-sex-exactly-why-when-you-should-go-after-every-romp", sponsorLogo: "", sponsorURL: "")
let sex1 = Tip(header: "👫", title: "The happiest couples have sex at least once a week", body: "Couples who had sex once a week reported being happier than couples who had less sex. And couples who had sex more frequently weren’t any happier than those who had sex once a week. It’s important to maintain an intimate connection with your partner, but you don’t need to have sex everyday as long as you’re maintaining that connection.", sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/health/wellness/how-to-be-happy/", sponsorLogo: "", sponsorURL: "")
let sex2 = Tip(header: "👫", title: "Sex helps you burn calories", body: "Research: Women burn off 69 calories during the average sex sesh, while men burn off 100.", sourceName: "Reader's DigesEat This, Not That!", sourceURL: "https://www.eatthis.com/easy-ways-to-burn-calories/", sponsorLogo: "", sponsorURL: "")


// BODY HEALTH
let body1 = Tip(header: "🍺", title: "Whether it's called a beer belly, a spare tire, or the middle-age spread - abdominal obesity is the shape of health risk", body: "Abdominal obesity increases the risk of heart attack, stroke, diabetes, erectile dysfunction, and other woes. Risk begins to mount at a waist size above 37 inches for men, and a measurement above 40 inches would put you in the danger zone. For women, the corresponding waist sizes are 31½ and 35 inches, respectively.", sourceName: "Harvard Health Publishing", sourceURL: "https://www.health.harvard.edu/healthbeat/giving-thanks-can-make-you-happier", sponsorLogo: "", sponsorURL: "") // - seperate this by male and female tips





// MARK: - HAIR

let hair1 = Tip(header: "👴", title: "Research: People view bald men as more dominate than men with hair", body: "A study found that men with shaved heads were rated as more dominant than similar men with full heads of hair, and that men whose hair was digitally removed were perceived as more dominant, taller, and stronger than their authentic selves. So if it’s starting to go, shave it off.", sourceName: "", sourceURL: "", sponsorLogo: "", sponsorURL: "")




//while daily self-care habits like exercise and getting enough sleep are a great way to manage our stress loads and help us live longer, healthier lives overall, research shows that there’s

// In our study, men with shorter vacations worked more and slept less than those who took longer vacations. This stressful lifestyle may have overruled any benefit of the intervention.
// stress reduction is an essential part of programmes aimed at reducing the risk of cardiovascular disease
// men with shorter vacations worked more and slept less than those who took longer vacations. This stressful lifestyle may have overruled any benefit of the intervention
// Shorter vacations were associated with excess deaths in the intervention group. In the intervention group, men who took three weeks or less annual vacation had a 37% greater chance of dying in 1974 to 2004 than those who took more than three weeks.





// MARK: - BIRTHDAY
let fallWinter1 = Tip(header: "🍂", title: "People born in the fall and winter are more likely to be larks", body: "Research shows morning people to be pleasant, productive, introverted, conscientious, agreeable, persistent, and emotionally stable. They take initiative, suppress ugly impulses, and plan for the future. Morning types also tend to be high in positive affect-that is, many are happy to be morning people.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
let springSummer1 = Tip(header: "🌱", title: "People born in the spring and summer are more likely to be owls", body: "Night owls display some darker tendencies. They're more open and extroverted than morning people. They're also more neurotic-and are often impulsive, sensation-seeking, live-for-the-moment hedonists. They're more likley than morning people to use nicotine, alcohol, cafeine, marijuana, ecstasy, and cocaine. They're also more prone to addiction, eating disorders, diabetes, depression, and infidelity. But, they also tend to display greater creativity, show superior working memory, have a better sense of humor, and post high scores on intelligence tests such as the GMAT.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")



// MARK: - Doctor
let doctor1 = Tip(header: "🙅‍♀️", title: "Never accept an appointment that wasn't before noon", body: "Adverse events were significantly more frequent for cases starting during the 3 p.m. and 4 p.m hours. The probability of a problem at 9 a.m. was about 1%. At 4 p.m., 4.2%. In other words, the chance of something going wrong while someone is delivering drugs to knock you unconscious was 4-times greater during the afternoon than during the morning. On actual harm (not only a slipup but also something that hurts the patient), the probability at 8 a.m. was 0.3%. But at 3 p.m., the probabilty was 1%-one in every one hundred cases, a threefold increase. Afternoon circadian lows, the researchers concluded, impair physician vigilance and \"affect human performance of complex tasks such as those required in anesthesia care.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
// WIP
let doctor2 = Tip(header: "💊", title: "XXXXXXXXXXXXXXXXXXXXXXXXXXX", body: "Doctors are more likely to prescribe antibiotics, including unnecessary ones, for acute respiratory infections in the afternoons than in the mornings. As the cumulative effect of dealing with patient after patient reduces doctors' decision-making resolve, it's far easier just to write the perscription than investigate whether the patient's symptoms suggest a bacterial infection, for which antibiotics might be appropriate, or a virus, for which they have no effect.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
let doctor3 = Tip(header: "🗓", title: "Schedule your doctor's appointment for the morning because caregivers are less likely to wash their hands in the afternoon", body: "A study found that hospital workers washed their hands 38% less often at the end of a shift. That is, for every 10 times they washed their hands in the morning, they did so only 6 times in the afternoon.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/best-time-day-work-according-to-science-2018-5", sponsorLogo: "", sponsorURL: "")
let doctor4 = Tip(header: "🌅", title: "Schedule your doctor's appointment for the morning because this is when caregivers are more likely to diagnose more problem", body: "Studies suggest doctors are better at diagnosing colon problems in the morning and have more successful surgeries in the morning. Factors such as case load, fatigue, and effects of circadian rhythms may be influencing the quality of patient appointments that start in the late afternoon.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/best-time-day-work-according-to-science-2018-5", sponsorLogo: "", sponsorURL: "")

// MARK: - Age
// 30
let thirties1 = Tip(header: "📉", title: "Happiness begins to slide downward in the late 30's early 40's, dipping to a low in the 50's, but rises again from 55 onward and well-being later in life often exceeds that of our younger years", body: "If the midlife drop is inevitable, just knowing that eases some of the pain, as does knowing that the state is not permanent. If we're aware that our standards are likely to sink at the midpoint, that knowledge can help us temper the consequences. Even if we can't hold off biology and nature, we can prepare for the ramifications.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
// 19
let nineteen1 = Tip(header: "😔", title: "The suicide rate was higher among people with an age ending in 9 than among people whose ages ended in any other digit", body: "TODO", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
let nineteen2 = Tip(header: "👫", title: "The chance of cheating on your spouse was higher among people with an age ending in 9 than among people whose ages ended in any other digit", body: "On the extramarital-affair website Ashley Madison, nearly 1/8 men were 29, 39, 49, or 59, about 18% higher than chance would predict.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
// 60+
let sixty1 = Tip(header: "📉", title: "After age 60, your number of friendships and social network decreases", body: "As we get older, when we become conscious of the ultimate ending, we edit our friends. We choose to spend our remaining years with networks that are small and populated with those who satisfy higher needs.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
let sixty2 = Tip(header: "", title: "Live longer: Seniors who live with their families are healthier and stay sharper longer than those who live alone or in a nursing home", body: "Studies have shown that seniors who live with their children are less susceptible to disease, eat healthier diets, have lower levels of stress, and have a much lower incidence of serious accidents.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")
let sixty3 = Tip(header: "", title: "Live longer: Maintain social networks and have frequent visitors", body: "A study of successful 100+ year-olds found that they have a wonderful support group. They also tended to get frequent visits from neighbors and friends, which is both a physical and psychological safety net.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")

// MARK: Income Level
// $80K+

let highIncome1 = Tip(header: "💰", title: "Becoming wealthy makes us less friendly and less generous", body: "In one study, participants were paired to play a game of Monopoly. The game was rigged so that one of the participants quickly became far wealthier than the other. It turned out that the wealthier a participant grew, the meaner he/she progressively became. For example, the wealthier participants started assuming more dominant postures and began talking down to their \"poorer\" counterparts. They also consumed a greater share of a bowl of pretzels meant to be shared equally.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2016/06/why-rich-people-arent-as-happy-as-they-could-be", sponsorLogo: "", sponsorURL: "")
let highIncome2 = Tip(header: "🤑", title: "Becoming wealthy makes us less generous and more greedy", body: "In one study, participants were given $10 and told that they could contribute any or all of it to another participant, the richer participants contributed, on average, 44% less. Other researchers have found that wealthier people tend to give a smaller percentage of their income to charity.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2016/06/why-rich-people-arent-as-happy-as-they-could-be", sponsorLogo: "", sponsorURL: "")
let highIncome3 = Tip(header: "👫", title: "Giving and helping others increases your happiness", body: "Results from a massive study of over 200,000 respondents revealed that being generous had a positive effect on one’s happiness in a whopping 93% of (120 of 136) countries. Notre Dame researchers looked at generosity indicators such as giving money, volunteering, and even being emotionally available to friends and found that the more generous people were, the happier they reported feeling.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2016/06/why-rich-people-arent-as-happy-as-they-could-be", sponsorLogo: "", sponsorURL: "")
let highIncome4 = Tip(header: "💸", title: "Researchers have theorized that wealth makes us less generous because it makes us more isolated – and isolation makes us less happy", body: "Psychologically, the acquisition of wealth—and more generally, possessions that signal high status—makes us want to distance ourselves from others. This may be due to a feeling of competition and selfishness that sets in with the acquisition of wealth or status. It may also be because, quite simply, we don’t need other people to survive the way we did when we were poorer. \n\nAs for the physical element, it’s quite straightforward: the wealthier we become, the more likely we are to erect boundaries between ourselves and others—for example, by living in a bigger house with a fence around it.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2016/06/why-rich-people-arent-as-happy-as-they-could-be", sponsorLogo: "", sponsorURL: "")
//
let highIncome5 = Tip(header: "💸", title: "Research finds that the ideal income point is $95,000 for life evaluation and $60,000-$75,000 for emotional well-being", body: "The research is based on data from the Gallup World Poll, which is a representative survey sample of more than 1.7 million individuals from 164 countries. For reporting this study, the amounts are reported in U.S. dollars, and the data is per individual, not family. \n\nThe study also found once the threshold was reached, further increases in income tended to be associated with reduced life satisfaction and a lower level of well-being. This may be because money is important for meeting basic needs, purchasing conveniences, and maybe even loan repayments, but to a point. After the optimal point of needs is met, people may be driven by desires such as pursuing more material gains and engaging in social comparisons, which could, ironically, lower well-being. \n\nMoney is only a part of what really makes us happy, and we’re learning more about the limits of money.", sourceName: "Purdue University", sourceURL: "https://www.purdue.edu/newsroom/releases/2018/Q1/money-only-buys-happiness-for-a-certain-amount.html", sponsorLogo: "", sponsorURL: "")

// MARK: - SMOKING

let smokingTip1 = Tip(header: "🚬", title: "Smokers with depression who successfully quit smoking using stop smoking services may see an improvement in their mental health", body: "66% of those who had moderate or severe depression when smoking described no or minimal symptoms during a one-year follow up. The researchers also found that all those who received the specialist behavioural support and medication provided by the clinic, were more likely to remain smoke free for a year if they went back for repeat visits. But they noted that people with depression were still less likely to quit successfully than those without. This suggests that people with mental health problems need extra help. Smoking rates among people with mental health conditions are more than double those of the general population (approximately 40% vs. 20%). Smoking is the single biggest factor contributing to a lower life expectancy associated with a mental health condition -- a decrease of about 10-20 years compared to the general population.", sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/health/wellness/how-to-be-happy/", sponsorLogo: "", sponsorURL: "")

let smokingTip2 = Tip(header: "🚬", title: "Don't smoke. Smoking prematurely ages the skin and makes you look older", body: "Studies have shown that a smoker's skin displays more wrinkles and other signs of premature aging, compared to non-smokers. \n\nIn addition, The most preventable causes of death and disease in the US are caused by smoking tobacco.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")

let smokingTip3 = Tip(header: "", title: "Live longer: _______", body: "The most preventable causes of death and disease in the USA are caused by smoking. In addition to damage done to internal organs, smoking also prematurely ages the skin and makes people look older. Recent studies have shown that a smoker's skin has more wrinkles and other signs of premature aging.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")

//Cigarettes steal an average of 13 years from your life.

//Don't smoke cigarettes. Independent of the specific health risks, cigarette smokers are also less attractive to potential partners, have a tougher time finding a job, and even when they do, end up earning less money.
//Own the Day, Own Your Life
//https://www.amazon.com/Own-Day-Your-Life-Optimized-ebook/dp/B072HLS5QJ




