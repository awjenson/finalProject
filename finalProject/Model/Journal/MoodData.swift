//
//  MoodData.swift
//  finalProject
//
//  Created by Andrew Jenson on 9/4/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import Foundation

/*

struct MoodData {



    // MARK: - BASED ON MOOD

    // Lazy
    // Self-doubt

    // Button0 = " Sad "
    // Tip:
    static let sadQuote0 = Quote(quote: "\"Things that I feel really sad about, I talk about. That way, if it's funny, it doesn't hurt anymore.\"", source: "Pete Davidson")
    static let sadTip1 = Hint(title: "Advice to reduce sadness", body: "Remember, it will get better. Talk to someone. Get out in nature. Listen to upbeat music. Watch a funny TV show. Cry. Focus on the good and move on.", sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/maria-rodale/21-ways-to-deal-with-sadn_b_5803672.html")
    static let sadTip2 = Hint(title: Constants.Header.watch, body: "PROBLEMS - Watch This When You Feel Down (Powerful Motivation!)", sourceName: "YouTube", sourceURL: "https://www.youtube.com/watch?v=p4F5UXN_AVk")

    //////
    static let sadTip3 = Hint(title: "The best ways to improve your mood", body: "Researchers who asked people to report their moods through the day found that they were happiest when relaxing, socializing, exercising, eating, doing spiritual activities, and engaging in intimate relations. So make time to do these activities more often in your day.", sourceName: "Fast Company", sourceURL: "https://www.fastcompany.com/3048975/the-scientifically-proven-way-to-have-the-best-vacation-ever")


    static let sad0Tips1 = [sadTip1, sadTip2]


    // Button1 = "Depressed"
    //
    static let depressedQuote0 = Quote(quote: "\"I found that with depression, one of the most important things you could realize is that you're not alone.\"", source: "Dwayne Johnson")

    static let depressedTip1 = Hint(title: "Advice to reduce depression", body: "Follow a daily routine to get back on track. Exercise will release feel-good chemicals. Challenge your negative thoughts with logical questioning. Help others. Eat healthy foods. Do something that you enjoy (watch a movie, walk in nature, or spend time with friends). Go to bed and get up at the same time every day.", sourceName: "WebMD", sourceURL: "https://www.webmd.com/depression/features/natural-treatments")
    static let depressedTip2 = Hint(title: Constants.Header.watch, body: "Depression Motivation - Broken heart, Anxiety and Hard Times", sourceName: "YouTube", sourceURL: "https://www.youtube.com/watch?v=VFX2Nqwwm44")
    static let depressedTip3 = Hint(title: "Foods that boost your mood naturally", body: "Breakfast: fresh fruit (apples, bananas, and blueberries), citrus (oranges and lemons), dairy, eggs, flax seed, and whole grains. \n\nLunch: veggies (spinach, onions), avocados, nuts, foods with probiotics, and dark chocolate. \n\nDinner: fish (salmon and tuna), lean red meats, turkey, sweet potatoes, and olive oil. \n\nAvoid Eating: sweets, refined cereals, fried food, processed meats, and sugary drinks.", sourceName: "Health", sourceURL: "https://www.health.com/depression/best-foods-depression#mediterranean-diet-depression")

    ////////
    static let depressedTip4 = Hint(title: "People who report using 7 to 11 social media platforms had more than 3 times the risk of depression and anxiety than their peers who use no more than 2 platforms", body: "This association is strong enough that clinicians could consider asking their patients with depression and anxiety about multiple platform use and counseling them that this use may be related to their symptoms.", sourceName: "University of Pittsburgh", sourceURL: "http://www.braininstitute.pitt.edu/using-lots-social-media-sites-raises-depression-risk")
    static let depressedTip5 = Hint(title: "Exercise reduces depression symptoms and also helps keep depression from coming back once you're feeling better", body: "Exercise releases feel-good endorphins, natural cannabis-like brain chemicals (endogenous cannabinoids) and other natural brain chemicals that can enhance your sense of well-being. Broaden how you think of exercise and find ways to add small amounts of physical activity throughout your day. For example, take the stairs instead of the elevator. Park a little farther away from work to fit in a short walk.", sourceName: "Mayo Clinic", sourceURL: "https://www.mayoclinic.org/diseases-conditions/depression/in-depth/depression-and-exercise/art-20046495")
    
    static let depressedTip7 = Hint(title: "Exercise helps for overcoming depression", body: "In a study, three groups of patients treated their depression with either medication, exercise, or a combination of the two. All three groups experienced similar improvements in their happiness levels. But the groups were then tested six months later to assess their relapse rate. Of those who had taken the medication alone, 38% had slipped back into depression. Of those in the combination group, 31% had slipped back into depression. The biggest shock, though, came from the exercise group: Their relapse rate was only 9%.", sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/belle-beth-cooper/10-simple-things-to-be-happy_b_4241824.html")
    // PM
    static let depressedPMTip8 = Hint(title: "Keeping your body clock in sync with the solar day may help reduce depression", body: "Every cell in our bodies runs on a 24-hour clock. A study found that the brains of people with depression were not synchronized to the usual solar day in terms of gene activity inside their brain cells. It’s as if they were living in a different time zone. Try to maintain a sleep cylce during normal nighttime hours.", sourceName: "University of Michigan", sourceURL: "https://www.uofmhealth.org/news/archive/201305/out-sync-world-brain-study-shows-body-clocks-depressed")
    static let depressedPMTip9 = Hint(title: "Screen time leads to unhappiness, several studies conclude", body: "Teens who spent more time on the internet, playing computer games, on social media, texting, using video chat or watching TV were less happy. However, teens who spent more time seeing their friends in person, exercising, playing sports, attending religious services, reading or even doing homework were happier.", sourceName: "Quartz", sourceURL: "https://qz.com/1190151/why-am-i-unhappy-a-new-study-explains-americas-unhappiness-epidemic/")
    static let depressedPMTip10 = Hint(title: "Teens who spent 5+ hours a day online were twice as likely to be unhappy as those who spent less than an hour a day", body: "In one experiment, people who were randomly assigned to give up Facebook for a week ended that time happier, less lonely and less depressed than those who continued to use Facebook.", sourceName: "Quartz", sourceURL: "https://qz.com/1190151/why-am-i-unhappy-a-new-study-explains-americas-unhappiness-epidemic/")
    static let depressedPMTip11 = Hint(title: "Teen's happiness levels have been decreasing since 2012 (the year when the majority of Americans owned smartphones)", body: "These declines in well-being mirror other studies finding sharp increases in mental health issues among iGen, including in depressive symptoms, major depression, self-harm and suicide. A study found the happiest teens were those who used digital media, but for a limited amount of time.", sourceName: "Quartz", sourceURL: "https://qz.com/1190151/why-am-i-unhappy-a-new-study-explains-americas-unhappiness-epidemic/")

    // During the day
    static let depressedDayTip1 = Hint(title: "Taking walks in nature lowers depression while boosting mood and well-being", body: "", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2017/06/why-you-should-tell-your-team-to-take-a-break-and-go-outside")

    static let depressedDayTip2 = Hint(title: "Exposure to sunlight boosts Vitamin D levels that are known to increase mood", body: "Moderate sunlight exposure helps improve your mood by boosting the serotonin levels in your body. Also known as the 'happiness hormone', it put you in a calm mood. Also, sunlight decreases the risk of depression in those at risk of seasonal affective disorder (SAD) during the winter months.", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/nomanazish/2018/02/28/why-sunlight-is-actually-good-for-you/#5944743c5cd9")

    static let depressed0Tips1 = [depressedTip1, depressedTip2, depressedTip3]




    // Button2 = "Bored"
    static let boredQuote0 = Quote(quote: "\"Bored with life? Throw yourself into some work you believe in with all your heart, live for it, die for it, and you will find happiness that you had thought could never be yours.\"", source: "Dale Carnegie")

    static let boredTip1 = Hint(title: "Advice to reduce boredom", body: "Chances are you feel trapped and imprisoned by your inability to grab onto anything that interests you. Tasks that are too easy are boring. See boredom as a \"call to action\". Enter a state of flow by doing activities that are both challenging and enjoyable.", sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/making-change/201507/how-beat-boredom")
    static let boredTip2 = Hint(title: Constants.Header.watch, body: "WHEN YOU FEEL STUCK IN LIFE - NEW Motivational Video", sourceName: "YouTube", sourceURL: "https://www.youtube.com/watch?v=u6I-5B-80f4")

    static let bored0Tips1 = [boredTip1, boredTip2]

    // Button3 = "Good"
    //
    static let goodQuote0 = Quote(quote: "\"The more you praise and celebrate your life, the more there is in life to celebrate.\"", source: "Oprah Winfrey")

    static let goodTip1 = Hint(title: "Advice to improve wellbeing", body: "Practice gratitude because it's strongly associated with greater happiness and health. Thank someone, count your blessings, pray, keep a gratitude journal. One study found that people who wrote about gratitude were more optimistic and felt better about their lives.", sourceName: "Harvard Health Publishing", sourceURL: "https://www.health.harvard.edu/healthbeat/giving-thanks-can-make-you-happier")
    static let goodTip2 = Hint(title: Constants.Header.watch, body: "WINNING PSYCHOLOGY - New Motivational Videos Compilation", sourceName: "YouTube", sourceURL: "https://www.youtube.com/watch?v=ZNmdEau_JNM&t=1s")

    static let good0Tips1 = [goodTip1, goodTip2]

    // Button4 = "Great"
    //
    static let greatQuote0 = Quote(quote: "\"It's not possible to experience constant euphoria, but if you're grateful, you can find happiness in everything.\"", source: "Pharrell Williams")

    static let greatTip1 = Hint(title: "Advice to improve wellbeing", body: "Research finds that practicing gratitude has many benefits: leads to more relationships, improves physical and psychological health, increases empathy and self-esteem, and reduces aggression and stress. What are you thankful for?", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/amymorin/2014/11/23/7-scientifically-proven-benefits-of-gratitude-that-will-motivate-you-to-give-thanks-year-round/#16c4850f183c")
    static let greatTip2 = Hint(title: Constants.Header.watch, body: "BEST MOTIVATIONAL VIDEO EVER - BE PHENOMENAL", sourceName: "YouTube", sourceURL: "https://www.youtube.com/watch?v=wzhzkKccBi8")

    static let great0Tips1 = [greatTip1, greatTip2]

    // Button5 = " Mad "
    // •
    static let madQuote0 = Quote(quote: "\"Holding on to anger is like grasping a hot coal with the intent of throwing it at someone else; you are the one who gets burned.\"", source: "Buddha")
    static let madTip0 = Hint(title: "Advice to reduce anger", body: "Anger can be simple to manage, once you know the basics of how and why the brain reacts to triggers. Scientific ways to calm down: \n\n• Take deep breaths \n\n• take a walk and get some fresh air \n\n• Write down why you're mad \n\n• Play loud or heavy music \n\n• Even doing nothing for two minutes was found to diminish feeling of anger", sourceName: "Bustle", sourceURL: "https://www.bustle.com/articles/134593-6-ways-to-calm-down-when-youre-angry")
    static let madTip1 = Hint(title: "Daily Stoic: How To Not Be Angry", body: "Let every thought be the thought of a dying man, the Stoics say, over and over again. A dying man doesn’t have twenty four hours to be angry. A person who realizes how fragile life is doesn’t take chances in saying things they’ll have to apologize for—because they know they might not get to. Don’t hang onto anger you know you’re going to let go of later—let go of it right this second.", sourceName: "Daily Stoic", sourceURL: "https://dailystoic.com/how-to-not-be-angry/")
    static let madTip2 = Hint(title: Constants.Header.watch, body: "WHEN IT HURTS - 2016 MOTIVATION", sourceName: "YouTube", sourceURL: "https://www.youtube.com/watch?v=XNj_KDPp_iM")

    static let mad0Tips1 = [madTip0, madTip1, madTip2]

    // Button6 = "Stressed"
    static let stressedQuote0 = Quote(quote: "\"Remember that stress doesn't come from what's going on in your life. It comes from your thoughts about what's going on in your life.\"", source: "Andrew Bernstein", bio: "Philosopher")

    static let stressedTip1 = Hint(title: "Reduce stress right now", body: "• Breathe deeply, \n\n • Go for a walk, \n\n • Visualize a peaceful forest or beach, \n\n • List to classical music, \n\n • watch a funny video, \n\n • call a friend, \n\n • turn off your phone.", sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/2015/09/06/stress-relief-that-works_n_3842511.html")

    static let stressedTip2 = Hint(title: "Viewing stress as a helpful part of life, rather than as harmful, is associated with better health, emotional well-being and productivity at work – even during periods of high stress", body: "Three ways to best handle stress are: 1) to view your body's stress response as helpful, not debilitating – for example, to view stress as energy you can use; 2) to view yourself as able to handle, and even grow from, the stress in your life; and 3) to view stress as something that everyone deals with, and not something that proves how uniquely screwed up you or your life is.", sourceName: "Stanford University", sourceURL: "https://news.stanford.edu/pr/2015/pr-stress-embrace-mcgonigal-050715.html")

    static let stressedTip3 = Hint(title: "Reading for six minutes reduces stress by 68%", body: "Psychologists believe this is because the human mind has to concentrate on reading and the distraction of being taken into a literary world eases the tension in your body. \n\nAnd it works better and faster than other methods to calm frazzled nerves such as listening to music (61%), having a cup of coffee or tea (54%), or going for a walk (42%).", sourceName: "The Telegraph", sourceURL: "https://www.telegraph.co.uk/news/health/news/5070874/Reading-can-help-reduce-stress.html")

    static let stressedTip4 = Hint(title: "Lower stress by breathing deeply through your nose", body: "Most of us simply don’t breathe deeply enough. Breathing using all four stages: inhaling, full pause, exhaling, and empty pause helps increase oxygen in the blood. The more oxygen in your blood, the less fatigued and more mentally alert you are. \n\nShallow breathing does not exercise the diaphragm and lungs enough and most people only use a small portion of their lung capacity. When inhaling fully, you should relax your belly so that it can move outward on the in-breath and your diaphragm can expand and move through more of its full range of motion. When exhaling fully, you should allow your belly to retract toward your spine, which supports the diaphragm’s upward movement to help empty the lungs.", sourceName: "Sealfit", sourceURL: "https://sealfit.com/breathing-lessons-2/")

////////
    static let stressedTip5 = Hint(title: Constants.Header.watch, body: "WHEN YOU FEEL STRESSED - Motivational Video", sourceName: "YouTube", sourceURL: "https://www.youtube.com/watch?v=5QbtU8daKc8")

    static let stressedTip6 = Hint(title: "Focusing on learning helps to reduce stress", body: "Learning brings us new information and knowledge that can be useful for solving near-term stressful problems; it also equips us with new skills to address or even prevent future stressors. Psychologically, taking time to reflect on what we know and learn new things helps us develop feelings of competence and confidence. Learning also helps connect us to an underlying purpose of growth and development. This way, we can see ourselves as constantly improving and developing, rather than being stuck with fixed capabilities. These psychological resources enable us to build resilience in the face of stressors.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/09/to-cope-with-stress-try-learning-something-new")

    static let stressedTip7 = Hint(title: "Lower stress by re-reframing the stressful event in your mind.", body: "When stress emerges, change the message you tell yourself from \"this is a stressful situation/task\" to \"this is a challenging but rewarding opportunity to learn.\" Reframing stressful tasks as learning possibilities shifts your mindset and better prepares you to approach the task with an orientation toward growth and longer-term gains.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/09/to-cope-with-stress-try-learning-something-new")

    static let stressedTip8 = Hint(title: "Learning new things is a more effective way to reduce stress than doing relaxing activities, study finds", body: "In the face of stress, employees experienced fewer negative emotions (e.g., anxiety, distress) and engaged in less unethical behavior (e.g., taking company property, being mean to coworkers) on days when they engaged in more learning activities at work (e.g., doing things to broaden their horizons, seeking out intellectual challenges, or learning something new) compared to other days. In contrast, relaxing activities (e.g., taking some time to kick back, take a walk, or surf the web) did not lower the detrimental consequences of stress — employees experienced the same levels of negative emotions and engaged in just as much unethical behavior on days when they took on more relaxing activities at work, compared to other days. Relaxation thus did not appear to be as useful a stress reducer as learning was.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/09/to-cope-with-stress-try-learning-something-new")
    static let stressedTip9 = Hint(title: "People felt less stressed when they checked their email less often, study finds", body: "Check your email in chunks several times a day, rather than constantly responding to messages as they come in.", sourceName: "The University of British Columbia", sourceURL: "https://news.ubc.ca/2014/12/03/check-less-to-reduce-email-stress/")

static let stressedTip10 = Tip(header: "", title: "Psychotherapy helps improve your mental health and future income, 13-year study finds", body: "Men who reported having had stress and mental problems, and consulting a psychotherapist, experienced a 13% income increase in the subsequent year. Women experienced an 8% income increase. The study found gender discrimination to partially explain the difference in income increase. However, consulting a psychotherapist helps women nearly twice as much as men in terms of mental health." , sourceName: "The Conversation", sourceURL: "https://theconversation.com/psychotherapy-can-make-you-richer-especially-if-you-are-a-man-107628", sponsorLogo: "", sponsorURL: "")




    static let stressed0Tips1 = [stressedTip1, stressedTip2, stressedTip3, stressedTip4]

    // Button7 = "Anxious"
    //
    static let anxietyQuote0 = Quote(quote: "\"Nothing diminishes anxiety faster than action.\"", source: "Walter Anderson")

    static let anxietyTip0 = Hint(title: "Common anxiety signs include", body: "• Feeling nervous, restless or tense \n\n• Having a sense of impending danger, panic or doom \n\n• Increased heart rate, breathing rapidly (hyperventilation), and sweating \n\n• Trouble concentrating or thinking about anything other than the present worry", sourceName: "Mayo Clinic", sourceURL: "https://www.mayoclinic.org/diseases-conditions/anxiety/symptoms-causes/syc-20350961")
    static let anxietyTip1 = Hint(title: "Taking action reduces anxiety", body: "• Breathe deeply and exhale slowly: Slow breathing helps slow your heart rate, and naturally calms all of the body systems involved in your body's fight-or-flight response \n\n• Think of one thing you're grateful: Research shows that it reduces stress and increases your well-being \n\n• Know that your feelings are not facts and challenge negative beliefs", sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/anxiety-zen/201405/22-quick-tips-change-your-anxiety-forever")
    // \n\n• Stay away from sugar, caffeine, and processed foods \n\n• Get rid of the clutter around you \n\n \n\n• Go to bed early: Sleep deprivation is a huge cause of anxiety
    static let anxietyTip2 = Hint(title: "Moving your body reduces anxiety", body: "• Go for a 10-minute walk in nature: Exposure to nature has been shown repeatedly to reduce stress and boost well-being. \n\n• Go workout: Exercise releases endorphins which create a positive feeling in the body", sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/anxiety-zen/201405/22-quick-tips-change-your-anxiety-forever")
    static let anxietyTipZ = Hint(title: Constants.Header.watch, body: "STOP WORRYING | Anxiety Relief Speech feat Les Brown, Alan Watts and Tom O'bedlam", sourceName: "YouTube", sourceURL: "https://www.youtube.com/watch?v=oYadJQq0cHQ")
    static let anxietyTip3 = Hint(title: "10 foods that reduce anxiety", body: "Breakfast: Oatmeal, Oranges, and Blueberries \n\nLunch: Almonds, Avocado, and Spinach, \n\nDinner: Asparagus, Salmon, and Turkey \n\nBedtime: Milk and Almond Butter", sourceName: "Men's Journal", sourceURL: "https://www.mensjournal.com/food-drink/eat-to-beat-stress-10-foods-that-reduce-anxiety/8-spinach-2/")
    //  anxietyTip4: The ability to self-monitor and change your interior dialogue is one of the most critical faculties that distinguishes a mature, adult human.
    static let anxietyTip4 = Hint(title: "Mastering anxiety is about recognizing your inner dialogue and using positive self-talk to change the conversation in your head", body: "Far too often, we focus on our fears, and by focusing on it, we magnify it in our heads. \n\nRedirect your thoughts by focusing on what you can do right and take positive steps forward instead of becoming overwhelmed by what might go wrong.", sourceName: "Medium", sourceURL: "https://medium.com/s/story/how-to-master-your-fear-like-a-navy-seal-ffde5fe8d11")

    static let anxietyTip5 = Hint(title: "Learning new things reduces anxiety, study finds", body: "In stressful situations at work, employees experienced less anxiety on days when they engaged in more learning activities (e.g., seeking out intellectual challenges or learning something new) compared to other days. Learning brings us new information that can be useful for solving near-term stressful problems; it also equips us with new skills to address or even prevent future stressors.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/09/to-cope-with-stress-try-learning-something-new")

    static let anxietyTip6 = Hint(title: "Actor Hugh Jackman said that meditation \"changed his life\" and that it helps him deal with his anxieties", body: "\"It (meditation) was important for my life, and my anxieties, and how I felt about myself. Slowly, bit by bit, it just chipped away at the bulls—.\"", sourceName: "The Wall Street Journal", sourceURL: "https://www.wsj.com/articles/ohm-for-all-1386299691")

    // AM

    // Day
    static let anxietyDayTip1 = Hint(title: "Taking walks in nature lowers anxiety while boosting mood and well-being", body: "Unlike city environments, exposure to forest environments lowers stress and helps to lower concentrations of the “stress hormone” cortisol, lower heart rate, and lower blood pressure. Even just the sounds of nature trigger a relaxation response in the brain.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2017/06/why-you-should-tell-your-team-to-take-a-break-and-go-outside")

    // PM
    static let anxietyTipPM1 = Hint(title: "Mastering anxiety is about recognizing your inner dialogue and using positive self-talk to change the conversation in your head", body: "Far too often, we focus on our fears, and by focusing on it, we magnify it in our heads. \n\nRedirect your thoughts by focusing on what you can do right and take positive steps forward instead of becoming overwhelmed by what might go wrong.", sourceName: "Medium", sourceURL: "https://medium.com/s/story/how-to-master-your-fear-like-a-navy-seal-ffde5fe8d11")
   static let anxietyTipPM2 = Hint(title: "Warming your body temperature helps to lower anxiety", body: "If you’re more relaxed after you get warm, you’re better able to focus on the big things that are causing your anxiety and to tackle them more calmly. \n\n• Eat and drink warm foods: soups, stews, and tea. And avoid foods that aggravate anxiety: sugar, caffeine, and alcohol. \n\n• Use a heating pad or get your whole body under a blanket. \n\n• Take warm or hot showers and baths. ", sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/entry/anxiety-warm-body-temperature_us_5baa7ad2e4b0f143d10e0ef1")

    static let anxiety0Tips1 = [anxietyTip1, anxietyTip2, anxietyTip3, anxietyTip4]

    // Button8 = "Hopeful"
    //
    static let hopefulQuote0 = Quote(quote: "\"May your choices reflect your hopes, not your fears.\"", source: "Nelson Mandela")

    static let hopefulTip1 = Hint(title: "Advice to become more optimistic", body: "Stop using negative phrases like \"I can't\" or \"It's impossible\" as these statement program your mind to look for negative results, stop complaining because it depresses you and everyone else, stop using profanity, and when asked \"How are you\" replace \"Ok\" and \"Good\" with \"Great\" or \"Terrific\".", sourceName: "Inc.", sourceURL: "https://www.inc.com/geoffrey-james/become-more-optimistic-6-tricks.html")
    static let hopefulTip2 = Hint(title: Constants.Header.watch, body: "HOPE - Motivational Video For 2018", sourceName: "YouTube", sourceURL: "https://www.youtube.com/watch?v=UBk0MllCsDY")

    static let hopeful0Tips1 = [hopefulTip1, hopefulTip2]

    // Button9 = "Proud" // cookie jar
    //
    static let proudQuote0 = Quote(quote: "\"Whether you're tall or short, or a little bigger, more curves, skinny - you just have to be proud of what you have, and everyone is beautiful.\"", source: "Caroline Wozniacki")
    static let proudTip1 = Hint(title: "Try a practice used by a former Navy SEAL, David Goggins, called the \"cookie jar\" when you're feeling proud", body: "Your cookie jar contains all your proudest moments and failures in your life that you came back from. Then, whenever you face a challenge, you pull out a cookie — a memory that reminds you of a time that you did make it through that tough situation.", sourceName: "Big Think", sourceURL: "https://bigthink.com/videos/david-goggins-to-win-in-life-win-the-war-in-your-mind-navy-seal")
    static let proudTip2 = Hint(title: Constants.Header.watch, body: "The art of being yourself | Caroline McHugh | TEDxMiltonKeynesWomen", sourceName: "YouTube", sourceURL: "https://www.youtube.com/watch?v=veEQQ-N9xWU")

    static let proud0Tips1 = [proudTip1, proudTip2]

    // Button10 = "Lonely"
    //
    static let lonelyQuote0 = Quote(quote: "\"It’s important to remember that loneliness is an epidemic shaped by many forces; the proliferation of social media, the scattered nature of American life, the transience of jobs, divorce, rise in single-parent homes, and the popularity of living alone. Acknowledging these forces takes some of the burdens off yourself.", source: "Gina Ryder")

    static let lonelyTip1 = Hint(title: "Remember we all feel lonely sometimes (1 in 5 Americans suffer from loneliness)", body: "Accept your need for social connection (humans are social beings), listen to music, do something creative, work in a social setting (cafe or co-working space), call, text, or meetup with a friend, avoid using social media (scrolling mindlessly makes us lonelier), make eye contact with people, and be kind to strangers.", sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/health/conditions/how-to-not-feel-lonely/")
    static let lonelyTip2 = Hint(title: Constants.Header.watch, body: "The Simple Cure for Loneliness | Baya Voce | TEDxSaltLakeCity", sourceName: "YouTube", sourceURL: "https://www.youtube.com/watch?v=KSXh1YfNyVA")

    /////////
    static let lonelyTip4 = Hint(title: "You're not alone. 40% of U.S. adults report feeling lonely", body: "As a society, we have used technology to build stronger online connections, but our offline connections have deteriorated. We evolved to be social creatures and thousands of years ago if you were connected to other people you were more likely to have a stable food supply and to be protected from predators. So when you're disconnected, you're in a stress state. Loneliness is associated with a reduction in your lifespan that is as severe as the lifespan you see with smoking 15 cigarettes a day.", sourceName: "CBS News", sourceURL: "https://www.cbsnews.com/news/loneliness-epidemic-former-surgeon-general-dr-vivek-murthy/")

    static let lonelyTip5 = Hint(title: "Reduce feelings of loneliness by spending less time on social media and more time with friends face-to-face", body: "Researchers found that people who reported spending the most time on social media had twice the odds of perceived social isolation than those who said they spent less on those sites. Replacing your real-world relationships with social media use is detrimental to your well-being. However, face-to-face social connectedness is strongly associated with well-being.", sourceName: "NPR", sourceURL: "https://www.npr.org/sections/health-shots/2017/03/06/518362255/feeling-lonely-too-much-time-on-social-media-may-be-why")


    static let lonely0Tips1 = [lonelyTip1, lonelyTip2]

    // Button11 = "Envy"
    static let envyQuote1 = Quote(quote: "\"Envy blinds men and makes it impossible for them to think clearly\"", source: "Malcolm X", bio: "Minister and human rights activist")

    static let envyTip0 = Hint(title: "Too much social media increases envy", body: "Research found that when Facebook evoked envy, it increased symptoms of depression. If you tend to compare yourself with others or get envious easily, you might consider limiting your time spent on social networking sites or make a conscious effort to use them in active ways (commenting and posting) rather than passive ways (browsing news feeds).", sourceName: "Scientific American", sourceURL: "https://www.scientificamerican.com/article/green-with-facebook-envy-red-with-twitter-rage/")
    static let envyTip1 = Hint(title: "Daily Stoic: Envy", body: "If we’re not careful, we can waste enormous chunks of today being miserable over the fact that so-and-so is doing well or how badly we feel we deserve what so-and-so is enjoying? Because jealousy is a blinding passion. \n\nSo if you want to know what envy is, here’s your answer: It’s insanity. It’s death. It’s a thing to be avoided at all costs.", sourceName: "Daily Stoic", sourceURL: "https://dailystoic.com/do-you-know-what-envy-is/")
    static let envyTip2 = Hint(title: Constants.Header.watch, body: "How To Overcome Envy | Think Out Loud With Jay Shetty", sourceName: "YouTube", sourceURL: "https://www.youtube.com/watch?v=ImJRLrNdDtE")

    static let envy0Tips1 = [envyTip0, envyTip1, envyTip2]

    // Button12 = "Insecure"
    //
    static let insecureQuote0 = Quote(quote: "\"Because one believes in oneself, one doesn't try to convince others. Because one is content with oneself, one doesn't need others' approval. Because one accepts oneself, the whole world accepts him or her.\"", source: "Lao Tzu")

    static let insecureTip1 = Hint(title: "Boost confidence right now", body: "• Sit up straight \n\n• Smile (the movement of the muscles in your face causes your brain to release endorphins which causess you to feel happy) \n\n• Nod your head up-and-down (the movement signals positive thoughts in your brain) \n\n• Visualize yourself scoring the winning goal or going through a tough workout (you first need to win in your head; only then can you win in the battleground) \n\n• Stand for two minutes in a wide stance with your hands in the air \n\n• Listen to heavy-bass songs \n\n• Exercise regularly \n\n• Spray on our favorite fragrance (a study found that it will make you feel more confident)", sourceName: "Greatist", sourceURL: "https://greatist.com/grow/easy-confidence-boosters")
    static let insecureTip2 = Hint(title: Constants.Header.watch, body: "Tony Robbins - How to Be More Confident and overcome shyness", sourceName: "YouTube", sourceURL: "https://www.youtube.com/watch?v=ikpvdDQWmXI")

    static let insecure0Tips1 = [insecureTip1, insecureTip2]

    // Button13 = "Restless"
    // TODO: add tip for when you're feeling restless at night
    //
    static let restlessQuote0 = Quote(quote: "\"If you don't like something, change it. If you can't change it, change your attitude.\"", source: "Maya Angelou")

    static let restlessTip1 = Hint(title: "Advice when you feel restless", body: "Talk to your family, friends, and work colleagues (don't bottle up your emotions), cry if you need to, eat a balance diet and get enough sleep, practice mindfullness by listing what is causing you to feel restless, exercise, and do something you enjoy.", sourceName: "Healthdirect Australia", sourceURL: "https://www.healthdirect.gov.au/feeling-restless")
    static let restlessTip2 = Hint(title: Constants.Header.watch, body: "Learning to embrace restlessness | Simon Parker | TEDxLeamingtonSpa", sourceName: "YouTube", sourceURL: "https://www.youtube.com/watch?v=u315ygbixkM")

    static let restless0Tips1 = [restlessTip1, restlessTip2]

    // Button14 = "Calm"
    static let calmQuote0 = Quote(quote: "\"Let us always meet each other with smile, for the smile is the beginning of love.\"", source: "Mother Teresa")

    static let calmTip1 = Hint(title: "Advice to stay calm in any situation", body: "Navy SEALs face some of the most difficult situations any human could encounter. To stay calm they practice box-breathing: Breathe in for four seconds. Hold air in your lungs for four seconds. Exhale for four seconds. Hold your breath, lungs emptied, for four seconds.", sourceName: "Inc.", sourceURL: "https://www.inc.com/melody-wilding/beat-stress-like-a-navy-seal-with-this-ridiculousl.html")
    static let calmTip2 = Hint(title: Constants.Header.watch, body: "How to love and be loved | Billy Ward | TEDxFoggyBottom", sourceName: "YouTube", sourceURL: "https://www.youtube.com/watch?v=vMeEKBaiPbg")

    static let calm0Tips1 = [calmTip1, calmTip2]
    
}

 */
