//
//  HeaderData.swift
//  finalProject
//
//  Created by Andrew Jenson on 12/19/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import Foundation

// Moods
// + Confidence, Gratitude, Happiness

// CRISIS
let crisisTitle = "Crisis"
let crisisTip1 = Hint(title: "Crisis Text Line serves anyone, in any type of crisis, providing access to free, 24/7 support at your fingertips", body: "Every texter is connected with a Crisis Counselor, a real-life human being trained to bring texters from a hot moment to a cool calm through active listening and collaborative problem solving. \n\n• USA: Text HOME to 741741 \n• CAN: Text HOME to 686868 \n• UK: Text HOME to 85258", sourceName: "Crisis Text Line", sourceURL: "https://www.crisistextline.org/")
let crisisTip2 = Hint(title: "Veterans Crisis Line \n1-800-273-8255 \nText 838255", body: "Veterans in crisis and their families and friends can be connected with qualified Department of Veterans Affairs responders through a confidential toll-free hotline, online chat, or text by calling 1-800-273-TALK (8255) and pressing 1.", sourceName: "The National Suicide Prevention Lifeline", sourceURL: "https://suicidepreventionlifeline.org/talk-to-someone-now/")
let crisisTip3 = Hint(title: "Disaster Distress Helpline \n1-800-985-5990 \nText TalkWithUs to 66746", body: "National, US-based crisis counseling and support phone line for people experiencing emotional distress related to natural or human-caused disasters. Some who may benefit include people affected by disaster, friends and family of those affected by disaster, and disaster recovery workers.", sourceName: "The National Suicide Prevention Lifeline", sourceURL: "https://suicidepreventionlifeline.org/talk-to-someone-now/")

let crisisQuote1 = Quote(quote: "\"The struggle you’re in today is developing the strength you need tomorrow.\"", source: "Robert Tew", bio: "")
let crisisQuote2 = Quote(quote: "\"It is during our darkest moments that we must focus to see the light.\"", source: "Aristotle", bio: "")


let crisisHintArray1 = [crisisTip1, crisisTip2, crisisTip3]
let crisisHeader1 = Header(title: crisisTitle, icon: Constants.Icon.good, quote: crisisQuote1, hints: crisisHintArray1)

// SUICIDAL
let suicideTitle = "Suicidal Thoughts"

let suicideTip1 = Hint(title: "The National Suicide Prevention Lifeline is free and confidential \n• Call 1-800-273-8255", body: "If you’re thinking about suicide, are worried about a friend or loved one, or would like emotional support, the National Suicide Prevention Lifeline a free network and is available 24/7 across the United States.", sourceName: "The National Suicide Prevention Lifeline", sourceURL: "https://suicidepreventionlifeline.org/")
let suicideTip2 = Hint(title: "Nacional de Prevención del Suicidio \n• Call 1-888-628-9454", body: "Lifeline ofrece 24/7, gratuito servicios en español, no es necesario hablar ingles si usted necesita ayuda.", sourceName: "The National Suicide Prevention Lifeline", sourceURL: "https://suicidepreventionlifeline.org/")



let suicideQuote1 = Quote(quote: "\"Never never never give up.\"", source: "Winston Churchill", bio: "")

let suicideHintArray1 = [suicideTip1, suicideTip2]
let suicideHeader1 = Header(title: suicideTitle, icon: Constants.Icon.good, quote: suicideQuote1, hints: suicideHintArray1)



// MARK: - SAD
let sadTitle = "Sad"

// Quotes
let sadQuote1 = Quote(quote: "\"Things that I feel really sad about, I talk about. That way, if it's funny, it doesn't hurt anymore.\"", source: "Pete Davidson", bio: "Comedian")

// Hints
let sadTip1 = Hint(title: "Advice to reduce sadness", body: "• Remember, it will get better. • Talk to someone. • Get out in nature. • Listen to upbeat music. • Watch a funny TV show. • Cry. • Focus on the good and move on.", sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/maria-rodale/21-ways-to-deal-with-sadn_b_5803672.html")
let sadTip2 = Hint(title: "Ways to improve your mood", body: "Researchers found that people reported being happiest when they were: relaxing, socializing, exercising, eating, doing spiritual activities, and engaging in intimate relations. So make time to do these activities more often in your day.", sourceName: "Fast Company", sourceURL: "https://www.fastcompany.com/3048975/the-scientifically-proven-way-to-have-the-best-vacation-ever")

let sadHintArray1 = [sadTip1, sadTip2]
let sadHeader1 = Header(title: sadTitle, icon: Constants.Icon.good, quote: sadQuote1, hints: sadHintArray1)

// MARK: - DEPRESSED
let depressedTitle = "Depressed"

// Quotes
let depressedQuote1 = Quote(quote: "\"I found that with depression, one of the most important things you could realize is that you're not alone.\"", source: "Dwayne Johnson", bio: "Actor")

// Hints
let depressedHint1 = Hint(title: "Advice to reduce depression", body: "Follow a daily routine to get back on track. Exercise will release feel-good chemicals. Challenge your negative thoughts with logical questioning. Help others. Eat healthy foods. Do something that you enjoy (watch a movie, walk in nature, or spend time with friends). Go to bed and get up at the same time every day.", sourceName: "WebMD", sourceURL: "https://www.webmd.com/depression/features/natural-treatments")

// Foods
let depressedHint2 = Hint(title: "Foods that boost your mood naturally", body: "Breakfast: fresh fruit (apples, bananas, and blueberries), citrus (oranges and lemons), dairy, eggs, flax seed, and whole grains. \n\nLunch: veggies (spinach, onions), avocados, nuts, foods with probiotics, and dark chocolate. \n\nDinner: fish (salmon and tuna), lean red meats, turkey, sweet potatoes, and olive oil. \n\nAvoid Eating: sweets, refined cereals, fried food, processed meats, and sugary drinks.", sourceName: "Health", sourceURL: "https://www.health.com/depression/best-foods-depression#mediterranean-diet-depression")

let depressedHint3 = Hint(title: "People who report using 7 to 11 social media platforms had more than 3 times the risk of depression and anxiety than their peers who use no more than 2 platforms", body: "This association is strong enough that clinicians could consider asking their patients with depression and anxiety about multiple platform use and counseling them that this use may be related to their symptoms.", sourceName: "University of Pittsburgh", sourceURL: "http://www.braininstitute.pitt.edu/using-lots-social-media-sites-raises-depression-risk")
let depressedHint4 = Hint(title: "Exercise reduces depression symptoms and also helps keep depression from coming back once you're feeling better", body: "Exercise releases feel-good endorphins, natural cannabis-like brain chemicals (endogenous cannabinoids) and other natural brain chemicals that can enhance your sense of well-being. Broaden how you think of exercise and find ways to add small amounts of physical activity throughout your day. For example, take the stairs instead of the elevator. Park a little farther away from work to fit in a short walk.", sourceName: "Mayo Clinic", sourceURL: "https://www.mayoclinic.org/diseases-conditions/depression/in-depth/depression-and-exercise/art-20046495")
let depressedHint5 = Hint(title: "Ways to improve your mood", body: "Researchers found that people reported being happiest when they were: relaxing, socializing, exercising, eating, doing spiritual activities, and engaging in intimate relations. So make time to do these activities more often in your day.", sourceName: "Fast Company", sourceURL: "https://www.fastcompany.com/3048975/the-scientifically-proven-way-to-have-the-best-vacation-ever")
let depressedHint6 = Hint(title: "Exercise helps for overcoming depression", body: "In a study, 3 groups of patients treated their depression with either medication, exercise, or a combination of the two. All three groups experienced similar improvements in their happiness levels. But the groups were then tested six months later to assess their relapse rate. Of those who had taken the medication alone, 38% had slipped back into depression. Of those in the combination group, 31% had slipped back into depression. The biggest shock, though, came from the exercise group: Their relapse rate was only 9%.", sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/belle-beth-cooper/10-simple-things-to-be-happy_b_4241824.html")

// PM
let depressedPMHint7 = Hint(title: "Keeping your body clock in sync with the solar day may help reduce depression", body: "Every cell in our bodies runs on a 24-hour clock. A study found that the brains of people with depression were not synchronized to the usual solar day in terms of gene activity inside their brain cells. It’s as if they were living in a different time zone. Try to maintain a sleey cylce during normal nighttime hours.", sourceName: "University of Michigan", sourceURL: "https://www.uofmhealth.org/news/archive/201305/out-sync-world-brain-study-shows-body-clocks-depressed")
let depressedPMHint8 = Hint(title: "Screen time leads to unhappiness, several studies conclude", body: "Teens who spent more time on the internet, playing computer games, on social media, texting, using video chat or watching TV were less happy. However, teens who spent more time seeing their friends in person, exercising, playing sports, attending religious services, reading or even doing homework were happier.", sourceName: "Quartz", sourceURL: "https://qz.com/1190151/why-am-i-unhappy-a-new-study-explains-americas-unhappiness-epidemic/")
let depressedPMHint9 = Hint(title: "Teens who spent 5+ hours a day online were twice as likely to be unhappy as those who spent less than an hour a day", body: "In one experiment, people who were randomly assigned to give up Facebook for a week ended that time happier, less lonely and less depressed than those who continued to use Facebook.", sourceName: "Quartz", sourceURL: "https://qz.com/1190151/why-am-i-unhappy-a-new-study-explains-americas-unhappiness-epidemic/")
let depressedPMHint10 = Hint(title: "Teen's happiness levels have been decreasing since 2012 (the year when the majority of Americans owned smartphones)", body: "These declines in well-being mirror other studies finding sharp increases in mental health issues among iGen, including in depressive symptoms, major depression, self-harm and suicide. A study found the happiest teens were those who used digital media, but for a limited amount of time.", sourceName: "Quartz", sourceURL: "https://qz.com/1190151/why-am-i-unhappy-a-new-study-explains-americas-unhappiness-epidemic/")

let depressedPMHint11 = Hint(title: "Anxiety and depression symptoms are strongly linked to poor physical health", body: "A study of older adults found that people with high levels of anxiety and depression were found to face 65% increased odds for a heart condition, 64% for stroke, 50% for high blood pressure and 87% for arthritis, compared to those without anxiety and depression. These increased odds are similar to those of participants who are smokers or are obese. Anxiety and depression may be leading predictors of conditions ranging from heart disease and high blood pressure to arthritis, headaches, back pain and stomach upset.", sourceName: "University of California San Francisco", sourceURL: "https://www.ucsf.edu/news/2018/12/412676/depression-anxiety-may-take-same-toll-health-smoking-and-obesity")

let depressedPMHint12 = Hint(title: "Listening to classical music reduces depressive symptoms when compared to listening to an audiobook", body: "Study: Depressive symptoms decreased statistically significantly in the relaxing classical music group, but not in the group listening to audiobooks.", sourceName: "National Center for Biotechnology Information, U.S. National Library of Medicine", sourceURL: "https://www.ncbi.nlm.nih.gov/pubmed/18426457")


// During the day
let depressedDayHint1 = Hint(title: "Taking walks in nature lowers depression while boosting mood and well-being", body: "", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2017/06/why-you-should-tell-your-team-to-take-a-break-and-go-outside")

let depressedDayHint2 = Hint(title: "Exposure to sunlight boosts Vitamin D levels that are known to increase mood", body: "Moderate sunlight exposure helps improve your mood by boosting the serotonin levels in your body. Also known as the 'happiness hormone', it put you in a calm mood. Also, sunlight decreases the risk of depression in those at risk of seasonal affective disorder (SAD) during the winter months.", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/nomanazish/2018/02/28/why-sunlight-is-actually-good-for-you/#5944743c5cd9")

let depressedHintArray1 = [depressedHint1, depressedHint2]
let depressedHeader1 = Header(title: depressedTitle, icon: Constants.Icon.good, quote: depressedQuote1, hints: depressedHintArray1)

// MARK: - BORED
let boredTitle = "Bored"

let boredQuote1 = Quote(quote: "\"Bored with life? Throw yourself into some work you believe in with all your heart, live for it, die for it, and you will find happiness that you had thought could never be yours.\"", source: "Dale Carnegie", bio: "American writer and lecturer")

let boredHint1 = Hint(title: "Advice to reduce boredom", body: "Chances are you feel trapped and imprisoned by your inability to grab onto anything that interests you. Tasks that are too easy are boring. See boredom as a \"call to action\". Enter a state of flow by doing activities that are both challenging and enjoyable.", sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/making-change/201507/how-beat-boredom")

let boredHintArray1 = [boredHint1]
let boredHeader1 = Header(title: boredTitle, icon: Constants.Icon.good, quote: boredQuote1, hints: boredHintArray1)

// MARK: - MAD / ANGRY

let madTitle = "Mad"

let madQuote1 = Quote(quote: "\"Holding on to anger is like grasping a hot coal with the intent of throwing it at someone else; you are the one who gets burned.\"", source: "Buddha", bio: "A monk whose teachings Buddhism was founded")
let madHint1 = Hint(title: "Advice to reduce anger", body: "Anger can be simple to manage, once you know the basics of how and why the brain reacts to triggers. Scientific ways to calm down: \n\n• Take deep breaths \n\n• take a walk and get some fresh air \n\n• Write down why you're mad \n\n• Play loud or heavy music \n\n• Even doing nothing for two minutes was found to diminish feeling of anger", sourceName: "Bustle", sourceURL: "https://www.bustle.com/articles/134593-6-ways-to-calm-down-when-youre-angry")
let madHint2 = Hint(title: "Daily Stoic: How To Not Be Angry", body: "Let every thought be the thought of a dying man, the Stoics say, over and over again. A dying man doesn’t have twenty four hours to be angry. A person who realizes how fragile life is doesn’t take chances in saying things they’ll have to apologize for—because they know they might not get to. Don’t hang onto anger you know you’re going to let go of later—let go of it right this second.", sourceName: "Daily Stoic", sourceURL: "https://dailystoic.com/how-to-not-be-angry/")

let madQuote2 = Quote(quote: "\"Where there is shouting, there is no true knowledge.\"", source: "Leonardo da Vinci", bio: "Leonardo da Vinci was an Italian polymath of the Renaissance and is widely considered one of the greatest painters of all time.")

let madQuote3 = Quote(quote: "\"Hatred paralyzes life; love releases it.  Hatred confuses life; love harmonizes it.  Hatred darkens life; love illumines it.\"", source: "Martin Luther King Jr.", bio: "Martin Luther King Jr. was an American minister and activist who became the most visible spokesperson and leader in the civil rights movement from 1955 until his assassination in 1968.")

let madQuote4 = Quote(quote: "\"Man must evolve for all human conflict a method which rejects revenge, aggression and retaliation. The foundation of such a method is love.\"", source: "Martin Luther King Jr.", bio: "Martin Luther King Jr. was an American minister and activist who became the most visible spokesperson and leader in the civil rights movement from 1955 until his assassination in 1968.")
let madQuote5 = Quote(quote: "\"Never succumb to the temptation of becoming bitter. As you press for justice, be sure to move with dignity and discipline, using only the instruments of love.\"", source: "Martin Luther King Jr.", bio: "Martin Luther King Jr. was an American minister and activist who became the most visible spokesperson and leader in the civil rights movement from 1955 until his assassination in 1968.")

let madQuote6 = Quote(quote: "\"When evil men plot, good men must plan. When evil men burn and bomb, good men must build and bind. When evil men shout ugly words of hatred, good men must commit themselves to the glories of love.\"", source: "Martin Luther King Jr.", bio: "Martin Luther King Jr. was an American minister and activist who became the most visible spokesperson and leader in the civil rights movement from 1955 until his assassination in 1968.")

let madQuote7 = Quote(quote: "\"We must develop and maintain the capacity to forgive. He who is devoid of the power to forgive is devoid of the power to love. There is some good in the worst of us and some evil in the best of us. When we discover this, we are less prone to hate our enemies.\"", source: "Martin Luther King Jr.", bio: "Martin Luther King Jr. was an American minister and activist who became the most visible spokesperson and leader in the civil rights movement from 1955 until his assassination in 1968.")


let madQuote8 = Tip(header: "", title: "I shall never permit myself to stoop so low as to hate any man.", body: "- Booker T. Washington \n\nBooker T. Washington was an educator, author, and the most influential spokesman for the African-American community between 1895 and 1915." , sourceName: "Wonderful Quote", sourceURL: "https://www.wonderfulquote.com/a/booker-t-washington-quotes", sponsorLogo: "", sponsorURL: "")


let madHintArray1 = [madHint1, madHint2]
let madHeader1 = Header(title: madTitle, icon: Constants.Icon.good, quote: madQuote1, hints: madHintArray1)

// MARK: - STRESSED

let stressedTitle = "Stressed"

let stressedQuote1 = Quote(quote: "\"Remember that stress doesn't come from what's going on in your life. It comes from your thoughts about what's going on in your life.\"", source: "Andrew Bernstein", bio: "Philosopher")

//1
let stressedHint1 = Hint(title: "Reduce stress right now", body: "• Breathe deeply, \n\n • Go for a walk, \n\n • Visualize a peaceful forest or beach, \n\n • List to classical music, \n\n • watch a funny video, \n\n • call a friend, \n\n • turn off your phone.", sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/2015/09/06/stress-relief-that-works_n_3842511.html")

let stressedHint2 = Hint(title: "Viewing stress as a helpful part of life, rather than as harmful, is associated with better health, emotional well-being and productivity at work – even during periods of high stress", body: "Three ways to best handle stress are: 1) to view your body's stress response as helpful, not debilitating – for example, to view stress as energy you can use; 2) to view yourself as able to handle, and even grow from, the stress in your life; and 3) to view stress as something that everyone deals with, and not something that proves how uniquely screwed up you or your life is.", sourceName: "Stanford University", sourceURL: "https://news.stanford.edu/pr/2015/pr-stress-embrace-mcgonigal-050715.html")

//2
let stressedHint3 = Hint(title: "Reading for six minutes reduces stress by 68%", body: "Psychologists believe this is because the human mind has to concentrate on reading and the distraction of being taken into a literary world eases the tension in your body. \n\nAnd it works better and faster than other methods to calm frazzled nerves such as listening to music (61%), having a cup of coffee or tea (54%), or going for a walk (42%).", sourceName: "The Telegraph", sourceURL: "https://www.telegraph.co.uk/news/health/news/5070874/Reading-can-help-reduce-stress.html")

let stressedHint4 = Hint(title: "Lower stress by breathing deeply through your nose", body: "Most of us simply don’t breathe deeply enough. Breathing using all four stages: inhaling, full pause, exhaling, and empty pause helps increase oxygen in the blood. The more oxygen in your blood, the less fatigued and more mentally alert you are. \n\nShallow breathing does not exercise the diaphragm and lungs enough and most people only use a small portion of their lung capacity. When inhaling fully, you should relax your belly so that it can move outward on the in-breath and your diaphragm can expand and move through more of its full range of motion. When exhaling fully, you should allow your belly to retract toward your spine, which supports the diaphragm’s upward movement to help empty the lungs.", sourceName: "Sealfit", sourceURL: "https://sealfit.com/breathing-lessons-2/")

let stressedHint6 = Hint(title: "Focusing on learning helps to reduce stress", body: "Learning brings us new information and knowledge that can be useful for solving near-term stressful problems; it also equips us with new skills to address or even prevent future stressors. Psychologically, taking time to reflect on what we know and learn new things helps us develop feelings of competence and confidence. Learning also helps connect us to an underlying purpose of growth and development. This way, we can see ourselves as constantly improving and developing, rather than being stuck with fixed capabilities. These psychological resources enable us to build resilience in the face of stressors.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/09/to-cope-with-stress-try-learning-something-new")

let stressedHint7 = Hint(title: "Lower stress by re-reframing the stressful event in your mind", body: "When stress emerges, change the message you tell yourself from \"this is a stressful situation/task\" to \"this is a challenging but rewarding opportunity to learn.\" Reframing stressful tasks as learning possibilities shifts your mindset and better prepares you to approach the task with an orientation toward growth and longer-term gains.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/09/to-cope-with-stress-try-learning-something-new")

let stressedHint8 = Hint(title: "Learning new things is a more effective way to reduce stress than doing relaxing activities, study finds", body: "In the face of stress, employees experienced fewer negative emotions (e.g., anxiety, distress) and engaged in less unethical behavior (e.g., taking company property, being mean to coworkers) on days when they engaged in more learning activities at work (e.g., doing things to broaden their horizons, seeking out intellectual challenges, or learning something new) compared to other days. In contrast, relaxing activities (e.g., taking some time to kick back, take a walk, or surf the web) did not lower the detrimental consequences of stress — employees experienced the same levels of negative emotions and engaged in just as much unethical behavior on days when they took on more relaxing activities at work, compared to other days. Relaxation thus did not appear to be as useful a stress reducer as learning was.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/09/to-cope-with-stress-try-learning-something-new")
let stressedHint9 = Hint(title: "People felt less stressed when they checked their email less often, study finds", body: "Check your email in chunks several times a day, rather than constantly responding to messages as they come in.", sourceName: "The University of British Columbia", sourceURL: "https://news.ubc.ca/2014/12/03/check-less-to-reduce-email-stress/")

let stressedHint10 = Hint(title: "Navy SEALs use box-breathing to slow down their breathing rate when their bodies are in fight-or-flight mode", body: "Breathe in for 4 seconds. Hold air in your lungs for 4 seconds. Exhale for 4 seconds. Hold your breath, lungs emptied, for 4 seconds.", sourceName: "Inc.", sourceURL: "https://www.inc.com/melody-wilding/beat-stress-like-a-navy-seal-with-this-ridiculousl.html")

let stressedHint11 = Hint(title: "Psychotherapy helps improve your mental health and future income, 13-year study finds", body: "Men who reported having had stress and mental problems, and consulting a psychotherapist, experienced a 13% income increase in the subsequent year. Women experienced an 8% income increase. The study found gender discrimination to partially explain the difference in income increase. However, consulting a psychotherapist helps women nearly twice as much as men in terms of mental health.", sourceName: "The Conversation", sourceURL: "https://theconversation.com/psychotherapy-can-make-you-richer-especially-if-you-are-a-man-107628")

let stressedHint12 = Hint(title: "Feeling stressed slows your metabolism, which slows your ability to burn fat. Stress also makes your crave fatty and sugar-laden foods", body: "Study: The types of food we crave when we’re stressed out tend to be fatty and sugar-laden. That means it will be far harder for you to say no to those unhealthy foods and snacks.", sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/things-making-you-fatter/")

let stressedHintArray1 = [stressedHint1, stressedHint2]
let stressedHeader1 = Header(title: stressedTitle, icon: Constants.Icon.good, quote: stressedQuote1, hints: stressedHintArray1)

// MARK: - ANXIOUS

let anxiousTitle = "Anxious"

let anxiousQuote1 = Quote(quote: "\"Nothing diminishes anxiety faster than action.\"", source: "Walter Anderson", bio: "Was an author, editor, and CEO")

let anxiousHint1 = Hint(title: "Common anxiety signs include", body: "• Feeling nervous, restless or tense \n\n• Having a sense of impending danger, panic or doom \n\n• Increased heart rate, breathing rapidly (hyperventilation), and sweating \n\n• Trouble concentrating or thinking about anything other than the present worry", sourceName: "Mayo Clinic", sourceURL: "https://www.mayoclinic.org/diseases-conditions/anxiety/symptoms-causes/syc-20350961")
let anxiousHint2 = Hint(title: "Taking action reduces anxiety", body: "• Breathe deeply and exhale slowly: Slow breathing helps slow your heart rate, and naturally calms all of the body systems involved in your body's fight-or-flight response \n\n• Think of one thing you're grateful: Research shows that it reduces stress and increases your well-being \n\n• Know that your feelings are not facts and challenge negative beliefs", sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/anxiety-zen/201405/22-quick-tips-change-your-anxiety-forever")
// \n\n• Stay away from sugar, caffeine, and processed foods \n\n• Get rid of the clutter around you \n\n \n\n• Go to bed early: Sleep deprivation is a huge cause of anxiety
let anxiousHint3 = Hint(title: "Moving your body reduces anxiety", body: "• Go for a 10-minute walk in nature: Exposure to nature has been shown repeatedly to reduce stress and boost well-being. \n\n• Go workout: Exercise releases endorphins which create a positive feeling in the body", sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/anxiety-zen/201405/22-quick-tips-change-your-anxiety-forever")
let anxiousHint4 = Hint(title: Constants.Header.watch, body: "STOP WORRYING | Anxiety Relief Speech feat Les Brown, Alan Watts and Tom O'bedlam", sourceName: "YouTube", sourceURL: "https://www.youtube.com/watch?v=oYadJQq0cHQ")
let anxiousHint5 = Hint(title: "10 foods that reduce anxiety", body: "Breakfast: Oatmeal, Oranges, and Blueberries \n\nLunch: Almonds, Avocado, and Spinach, \n\nDinner: Asparagus, Salmon, and Turkey \n\nBedtime: Milk and Almond Butter", sourceName: "Men's Journal", sourceURL: "https://www.mensjournal.com/food-drink/eat-to-beat-stress-10-foods-that-reduce-anxiety/8-spinach-2/")
//  anxietyTip4: The ability to self-monitor and change your interior dialogue is one of the most critical faculties that distinguishes a mature, adult human.
let anxiousHint6 = Hint(title: "Mastering anxiety is about recognizing your inner dialogue and using positive self-talk to change the conversation in your head", body: "Far too often, we focus on our fears, and by focusing on it, we magnify it in our heads. \n\nRedirect your thoughts by focusing on what you can do right and take positive steps forward instead of becoming overwhelmed by what might go wrong.", sourceName: "Medium", sourceURL: "https://medium.com/s/story/how-to-master-your-fear-like-a-navy-seal-ffde5fe8d11")

let anxiousHint7 = Hint(title: "Learning new things reduces anxiety, study finds", body: "In stressful situations at work, employees experienced less anxiety on days when they engaged in more learning activities (e.g., seeking out intellectual challenges or learning something new) compared to other days. Learning brings us new information that can be useful for solving near-term stressful problems; it also equips us with new skills to address or even prevent future stressors.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/09/to-cope-with-stress-try-learning-something-new")

let anxiousHint8 = Hint(title: "Actor Hugh Jackman said that meditation \"changed his life\" and that it helps him deal with his anxieties", body: "\"It (meditation) was important for my life, and my anxieties, and how I felt about myself. Slowly, bit by bit, it just chipped away at the bulls—.\"", sourceName: "The Wall Street Journal", sourceURL: "https://www.wsj.com/articles/ohm-for-all-1386299691")

let anxiousHint9 = Hint(title: "Anxiety and depression symptoms are strongly linked to poor physical health", body: "A study of older adults found that people with high levels of anxiety and depression were found to face 65% increased odds for a heart condition, 64% for stroke, 50% for high blood pressure and 87% for arthritis, compared to those without anxiety and depression. These increased odds are similar to those of participants who are smokers or are obese. Anxiety and depression may be leading predictors of conditions ranging from heart disease and high blood pressure to arthritis, headaches, back pain and stomach upset.", sourceName: "University of California San Francisco", sourceURL: "https://www.ucsf.edu/news/2018/12/412676/depression-anxiety-may-take-same-toll-health-smoking-and-obesity")

// AM

// Day
let anxiousDayHint1 = Hint(title: "Taking walks in nature lowers anxiety while boosting mood and well-being", body: "Unlike city environments, exposure to forest environments lowers stress and helps to lower concentrations of the “stress hormone” cortisol, lower heart rate, and lower blood pressure. Even just the sounds of nature trigger a relaxation response in the brain.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2017/06/why-you-should-tell-your-team-to-take-a-break-and-go-outside")

// PM
let anxiousHintPM1 = Hint(title: "Mastering anxiety is about recognizing your inner dialogue and using positive self-talk to change the conversation in your head", body: "Far too often, we focus on our fears, and by focusing on it, we magnify it in our heads. \n\nRedirect your thoughts by focusing on what you can do right and take positive steps forward instead of becoming overwhelmed by what might go wrong.", sourceName: "Medium", sourceURL: "https://medium.com/s/story/how-to-master-your-fear-like-a-navy-seal-ffde5fe8d11")
let anxiousHintPM2 = Hint(title: "Warming your body temperature helps to lower anxiety", body: "If you’re more relaxed after you get warm, you’re better able to focus on the big things that are causing your anxiety and to tackle them more calmly. \n\n• Eat and drink warm foods: soups, stews, and tea. And avoid foods that aggravate anxiety: sugar, caffeine, and alcohol. \n\n• Use a heating pad or get your whole body under a blanket. \n\n• Take warm or hot showers and baths. ", sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/entry/anxiety-warm-body-temperature_us_5baa7ad2e4b0f143d10e0ef1")

let anxiousHintArray1 = [anxiousHint1, anxiousHint2]
let anxiousHeader1 = Header(title: anxiousTitle, icon: Constants.Icon.good, quote: anxiousQuote1, hints: anxiousHintArray1)


// MARK: - LONELY

let lonelyTitle = "Lonely"

let lonelyQuote1 = Quote(quote: "\"The best remedy for those who are afraid, lonely or unhappy is to go outside, somewhere where they can be quiet, alone with the heavens, nature and God. Because only then dose one feel that all is as it should be.", source: "Anne Frank", bio: "Diarist")

let lonelyHint1 = Hint(title: "Remember we all feel lonely sometimes (1 in 5 Americans suffer from loneliness)", body: "Accept your need for social connection (humans are social beings), listen to music, do something creative, work in a social setting (cafe or co-working space), call, text, or meetup with a friend, avoid using social media (scrolling mindlessly makes us lonelier), make eye contact with people, and be kind to strangers.", sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/health/conditions/how-to-not-feel-lonely/")

let lonelyHint2 = Hint(title: "You're not alone. 40% of U.S. adults report feeling lonely", body: "As a society, we have used technology to build stronger online connections, but our offline connections have deteriorated. We evolved to be social creatures and thousands of years ago if you were connected to other people you were more likely to have a stable food supply and to be protected from predators. So when you're disconnected, you're in a stress state. Loneliness is associated with a reduction in your lifespan that is as severe as the lifespan you see with smoking 15 cigarettes a day.", sourceName: "CBS News", sourceURL: "https://www.cbsnews.com/news/loneliness-epidemic-former-surgeon-general-dr-vivek-murthy/")

let lonelyHint3 = Hint(title: "Reduce feelings of loneliness by spending less time on social media and more time with friends face-to-face", body: "Researchers found that people who reported spending the most time on social media had twice the odds of perceived social isolation than those who said they spent less on those sites. Replacing your real-world relationships with social media use is detrimental to your well-being. However, face-to-face social connectedness is strongly associated with well-being.", sourceName: "NPR", sourceURL: "https://www.npr.org/sections/health-shots/2017/03/06/518362255/feeling-lonely-too-much-time-on-social-media-may-be-why")

let lonelyHintArray1 = [lonelyHint1, lonelyHint2]
let lonelyHeader1 = Header(title: lonelyTitle, icon: Constants.Icon.good, quote: lonelyQuote1, hints: lonelyHintArray1)

// MARK: - ENVIOUS / JEALOUS

let jealousTitle = "Jealous"

let jealousQuote1 = Quote(quote: "\"Envy blinds men and makes it impossible for them to think clearly.\"", source: "Malcolm X", bio: "Minister and human rights activist")

let jealousHint1 = Hint(title: "Too much social media increases envy", body: "Research found that when Facebook evoked envy, it increased symptoms of depression. If you tend to compare yourself with others or get envious easily, you might consider limiting your time spent on social networking sites or make a conscious effort to use them in active ways (commenting and posting) rather than passive ways (browsing news feeds).", sourceName: "Scientific American", sourceURL: "https://www.scientificamerican.com/article/green-with-facebook-envy-red-with-twitter-rage/")
let jealousHint2 = Hint(title: "Daily Stoic: Envy", body: "If we’re not careful, we can waste enormous chunks of today being miserable over the fact that so-and-so is doing well or how badly we feel we deserve what so-and-so is enjoying? Because jealousy is a blinding passion. \n\nSo if you want to know what envy is, here’s your answer: It’s insanity. It’s death. It’s a thing to be avoided at all costs.", sourceName: "Daily Stoic", sourceURL: "https://dailystoic.com/do-you-know-what-envy-is/")

let jealousHintArray1 = [jealousHint1, jealousHint2]
let jealousHeader1 = Header(title: jealousTitle, icon: Constants.Icon.good, quote: jealousQuote1, hints: jealousHintArray1)

let jealousQuote2 = Quote(quote: "\"Capitalism is always in danger of inspiring men to be more concerned about making a living than making a life. We are prone to judge success by the index of our salaries or the size of our automobiles, rather than by the quality of our service and relationship to humanity.\"", source: "Martin Luther King Jr.", bio: "Martin Luther King Jr. was an American minister and activist who became the most visible spokesperson and leader in the civil rights movement from 1955 until his assassination in 1968.")

let jealousQuote3 = Quote(quote: "\"Of the seven deadly sins, envy is the silliest, because if you have it, you don't feel better. You feel worse. I've had some good times with gluttony. We won't get into lust.\"", source: "Warren Buffett", bio: "Warren Buffett is an investor and CEO of Berkshire Hathaway.")

let jealousQuote4 = Quote(quote: "\"We never look back. We just figure there is so much to look forward to that there is no sense thinking of what we might have done. It just doesn't make any difference. You can only live life forward.\"", source: "Warren Buffett", bio: "Warren Buffett is an investor and CEO of Berkshire Hathaway.")

let jealousQuote5 = Quote(quote: "\"The more we value things, the less we value ourselves.\"", source: "Bruce Lee", bio: "Bruce Lee was an actor, martial artist, philosopher, and founder of the martial art Jeet Kune Do.")

let jealousQuote6 = Quote(quote: "\"Do not indulge in dreams of having what you have not, but reckon up the chief of the blessings you do possess, and then thankfully remember how you would crave for them if they were not yours.\"", source: "Marcus Aurelius", bio: "Marcus Aurelius was Roman emperor from 161 to 180 and a Stoic philosopher.")


// MARK: - LOW CONFIDENCE

let confidenceTitle = "Low Self-Confidence"

let confidenceQuote1 = Quote(quote: "\"You gain strength, courage, and confidence by every experience in which you really stop to look fear in the face. You are able to say to yourself. 'I lived through this horror. I can take the next thing that comes along.'\"", source: "Eleanor Roosevelt", bio: "Diplomat and activist")



let confidenceHint1 = Hint(title: "Boost confidence now", body: "• Sit up straight \n\n• Smile (the movement of the muscles in your face causes your brain to release endorphins which causess you to feel happy) \n\n• Nod your head up-and-down (the movement signals positive thoughts in your brain) \n\n• Visualize yourself scoring the winning goal or going through a tough workout (you first need to win in your head; only then can you win in the battleground) \n\n• Stand for two minutes in a wide stance with your hands in the air \n\n• Listen to heavy-bass songs \n\n• Exercise regularly \n\n• Spray on our favorite fragrance (a study found that it will make you feel more confident)", sourceName: "Greatist", sourceURL: "https://greatist.com/grow/easy-confidence-boosters")

let confidenceHintArray1 = [confidenceHint1, confidenceHint1]
let confidenceHeader1 = Header(title: confidenceTitle, icon: Constants.Icon.good, quote: confidenceQuote1, hints: confidenceHintArray1)

let confidenceQuote2 = Quote(quote: "\"If you can't fly then run, if you can't run then walk, if you can't walk then crawl, but whatever you do you have to keep moving forward.\"", source: "Martin Luther King Jr.", bio: "Martin Luther King Jr. was an American minister and activist who became the most visible spokesperson and leader in the civil rights movement from 1955 until his assassination in 1968.")
let confidenceQuote3 = Quote(quote: "\"Courage is an inner resolution to go forward in spite of obstacles and frightening situations; cowardice is a submissive surrender to circumstance.\"", source: "Martin Luther King Jr.", bio: "Martin Luther King Jr. was an American minister and activist who became the most visible spokesperson and leader in the civil rights movement from 1955 until his assassination in 1968.")




// MARK: - GRATITUDE

let goodGreatTitle = "Good/Great"

// Quote
let goodGreatQuote1 = Quote(quote: "\"It's not possible to experience constant euphoria, but if you're grateful, you can find happiness in everything.\"", source: "Pharrell Williams", bio: "Rapper, singer, songwriter, record producer, entrepreneur, and fashion designer")

let goodGreatQuote2 = Quote(quote: "\"The more you praise and celebrate your life, the more there is in life to celebrate.\"", source: "Oprah Winfrey", bio: "Media executive, actress, talk show host, television producer and philanthropist")

// Hints
let goodGreatHint1 = Hint(title: "Advice to improve wellbeing", body: "Practice gratitude because it's strongly associated with greater happiness and health. Thank someone, count your blessings, pray, keep a gratitude journal. One study found that people who wrote about gratitude were more optimistic and felt better about their lives.", sourceName: "Harvard Health Publishing", sourceURL: "https://www.health.harvard.edu/healthbeat/giving-thanks-can-make-you-happier")
let goodGreatHint2 = Hint(title: "Gratitude improves wellbeing", body: "Research finds that practicing gratitude has many benefits: leads to more relationships, improves physical and psychological health, increases empathy and self-esteem, and reduces aggression and stress. What are you thankful for?", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/amymorin/2014/11/23/7-scientifically-proven-benefits-of-gratitude-that-will-motivate-you-to-give-thanks-year-round/#16c4850f183c")

let goodGreatHintArray1 = [goodGreatHint1, goodGreatHint2]
let goodGreatHeader1 = Header(title: goodGreatTitle, icon: Constants.Icon.good, quote: goodGreatQuote1, hints: goodGreatHintArray1)

// MARK: - RELATIONSHIP PROBLEM


// MARK: - LAZY TODO
let lazyTitle = "Lazy"

// Quote
let lazyQuote1 = Quote(quote: "\"It's not possible to experience constant euphoria, but if you're grateful, you can find happiness in everything.\"", source: "Pharrell Williams", bio: "Rapper, singer, songwriter, record producer, entrepreneur, and fashion designer")
let lazyHintArray1 = [goodGreatHint1]
let lazyHeader1 = Header(title: lazyTitle, icon: Constants.Icon.good, quote: lazyQuote1, hints: lazyHintArray1)



// MARK: - TIRED
let tiredTitle = "Tired"

// Quote
let tiredQuote1 = Quote(quote: "\"It's not possible to experience constant euphoria, but if you're grateful, you can find happiness in everything.\"", source: "Pharrell Williams", bio: "Rapper, singer, songwriter, record producer, entrepreneur, and fashion designer")

//AM
let tiredAMHint1 = Hint(title: "During the day, exposing your body to bright light tells it to stay alert", body: "Get out and expose your body to sunlight or artificial bright light throughout the day. Light influences your body’s internal clock, which boosts feelings of wakefulness.", sourceName: "HealthLine", sourceURL: "https://www.healthline.com/nutrition/ways-to-fall-asleep#section1")

//Afternoon

//PM

let tiredHintArray1 = [tiredAMHint1]
let tiredHeader1 = Header(title: tiredTitle, icon: Constants.Icon.good, quote: tiredQuote1, hints: tiredHintArray1)


