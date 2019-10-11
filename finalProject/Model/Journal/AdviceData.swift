//
//  FamousPersonData.swift
//  finalProject
//
//  Created by Andrew Jenson on 5/28/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//
// Sugar Ray Lenard, Robin Willians, George Carlin, Evander Holyfield, and Tony Robbins
// * Helen doesn't like the word "Vision"
// * Helen likes "Fears" instead of "Vision"

import Foundation

let filmmakingTitle = "Filmmaking"
let filmmakingIcon = Constants.Icon.filmmaking

let screenwritingTitle = "Screenwriting"
let screenwritingIcon = Constants.Icon.screenwriting


let jeffBezosPassion1 = Tip(header: "Passion", title: "PASSION - Jeff Bezos", body: "Jeff Bezos on leaving a high-paying finance job to start Amazon: \n\n\"After much consideration, I took the less safe path to follow my passion... Whatever it is that you want to do, you'll find in life that if you're not passionate about what it is you're working on, you won't be able to stick with it.\"" , sourceName: "Grit: The Power of Passion and Perseverance", sourceURL: "https://www.amazon.com/Grit-Passion-Perseverance-Angela-Duckworth-ebook/dp/B010MH9V3W", sponsorLogo: "", sponsorURL: "")

let markDivinePurpose1 = Tip(header: "Purpose", title: "PURPOSE - Mark Divine, retired Navy SEAL Commander", body: "• What is it that you are really supposed to do with your life? \n\n• What one thing would you focus on if you had nothing holding you back? \n\n• What makes you feel as if your hair is on fire? \n\nThis informs your purpose when intersected with your skills and talents." , sourceName: "8 Weeks to SEALFIT", sourceURL: "https://www.amazon.com/dp/B00DFFGMPO/ref=dp-kindle-redirect?_encoding=UTF8&btkr=1", sponsorLogo: "", sponsorURL: "")

let warrenBuffettGoals1 = Tip(header: "GOAL", title: "GOALS - Warren Buffett", body: "STEP 1: Write down your top 25 goals. \nSTEP 2: Circle your top 5 goals. \nSTEP 3: The 20 you didn't circle became your ‘avoid at all cost list.’ No matter what, these things get no attention from you until you’ve succeeded with your top 5. \n\n\"The difference between successful people and really successful people is that really successful people say ‘no’ to almost everything.\" \n\n- Warren Buffett", sourceName: "Thrive Global", sourceURL: "https://thriveglobal.com/stories/say-no-more-often-warren-buffett/", sponsorLogo: "", sponsorURL: "")

let bruceLeeVision1 = Tip(header: "Vision", title: "VISION - Bruce Lee", body: "At age 29, Bruce Lee wrote a letter to himself: \n\nMy Definite Chief Aim \n\n\"I, Bruce Lee, will be the first highest paid Oriental super star in the United States. In return I will give the most exciting performances and render the best of quality in the capacity of an actor. Starting 1970 I will achieve world fame and from then onward till the end of 1980 I will have in my possession $10,000,000. I will live the way I please and achieve inner harmony and happiness.\" \n\nBruce Lee \nJan. 1969" , sourceName: "QZ", sourceURL: "https://qz.com/932799/bruce-lee-achieved-all-his-life-goals-by-32-by-committing-to-one-personality-trait/", sponsorLogo: "", sponsorURL: "")



let adviceTitle = ""
let adviceIcon = ""

let adviceTipArray0 = [jeffBezosPassion1, markDivinePurpose1, warrenBuffettGoals1, bruceLeeVision1]
let adviceTopic0 = Topic(title: adviceTitle, icon: adviceIcon, tip: adviceTipArray0)

// MARK: - Will Shortz
let willShortzQuote = Quote(quote: "\"Figure out what you enjoy doing most in life, and then try to do it full-time. Life is short. Follow your passion.\"", source: "Will Shortz", bio: "Long-time editor of the New York Times crossword puzzle")

// MARK: - Jeff Bezos
let jeffBezosQuote = Hint(title: "", body: "", sourceName: "", sourceURL: "")


// MARK: - Bruce Lee

let bruceLeeTitle = "Bruce Lee"

let bruceLeeQuote1 = Quote(quote: "\"Do not pray for an easy life, pray for the strength to endure a difficult one.\"", source: "Bruce Lee", bio: "Actor, martial artist, philosopher, and founder of the martial art Jeet Kune Do")

let bruceLeeHint1 = Hint(title: "PASSION: Real living is living for others", body: "Bruce Lee became a cultural icon because he actively lived his philosophy of self-actualization. His energy captivated audiences and motivated people to lead their best lives.", sourceName: "Fast Company", sourceURL: "https://www.fastcompany.com/3065979/my-dad-was-bruce-lee-heres-how-he-still-inspires-me-and-others-to-innovate")
let bruceLeeHint2 = Hint(title: "PURPOSE: Become your true self", body: "\"Always be yourself; express yourself; have faith in yourself. Do not go out and look for a successful personality and duplicate it. Start from the very root of your being, which is \"how can I be me?\"", sourceName: "Bruce Lee", sourceURL: "https://www.brucelee.com/philosophies/")
let bruceLeeHint3 = Hint(title: "GOALS: Set big goals", body: "\"A goal is not always meant to be reached, it often serves simply as something to aim at.\"", sourceName: "Bruce Lee", sourceURL: "hhttps://www.brucelee.com/podcast")
let bruceLeeHint4 = Hint(title: "VISION: At age 29, he wrote...", body: "\"My Definite Chief Aim: I, Bruce Lee, will be the first highest-paid oriental superstar in the United States. In return I will give the most exciting performances and render the best quality in the capacity of an actor. Starting 1970 I will achieve for fame and from then onward till the end of 1980 I will have in my possession $10,000,000. I will live the way I please and achieve inner harmony and happiness.\"", sourceName: "QZ", sourceURL: "https://qz.com/932799/bruce-lee-achieved-all-his-life-goals-by-32-by-committing-to-one-personality-trait/")

let bruceLeeHintArray1 = [bruceLeeHint1, bruceLeeHint2, bruceLeeHint3, bruceLeeHint4]
let bruceLeeHeader1 = Header(title: bruceLeeTitle, icon: "", quote: bruceLeeQuote1, hints: bruceLeeHintArray1)

struct AdviceData {

    static let bruceLeePassion = ProfileDataModel(category: "PASSION", title: "Real living is living for others...", body: "Bruce Lee became a cultural icon because he actively lived his philosophy of self-actualization. His energy captivated audiences and motivated people to lead their best lives.", url: "https://www.fastcompany.com/3065979/my-dad-was-bruce-lee-heres-how-he-still-inspires-me-and-others-to-innovate", headerUserTextLabel: "Your passion:")

    static let bruceLeePurpose = ProfileDataModel(category: "PURPOSE", title: "Your main purpose is to become your true self...", body: "\"Always be yourself; express yourself; have faith in yourself. Do not go out and look for a successful personality and duplicate it. Start from the very root of your being, which is \"how can I be me?\"", url: "https://www.brucelee.com/philosophies/", headerUserTextLabel: "Your purpose:")

    static let bruceLeeTop5Goals = ProfileDataModel(category: "GOALS", title: "He believed in setting big goals...", body: "\"A goal is not always meant to be reached, it often serves simply as something to aim at.\"", url: "https://www.brucelee.com/podcast", headerUserTextLabel: "Your top 5 goals:")

    static let bruceLeeVision = ProfileDataModel(category: "VISION", title: "At age 29, he wrote...", body: "\"My Definite Chief Aim: I, Bruce Lee, will be the first highest-paid oriental superstar in the United States. In return I will give the most exciting performances and render the best quality in the capacity of an actor. Starting 1970 I will achieve for fame and from then onward till the end of 1980 I will have in my possession $10,000,000. I will live the way I please and achieve inner harmony and happiness.\"", url: "https://qz.com/932799/bruce-lee-achieved-all-his-life-goals-by-32-by-committing-to-one-personality-trait/", headerUserTextLabel: "Your vision statement:")

    // Headers

    static let bruceLee = ProfileSelectedPerson(name: "Bruce Lee", bio: "Actor, martial artist, philosopher, and founder of the martial art Jeet Kune Do", advice: "\"Do not pray for an easy life, pray for the strength to endure a difficult one.\"", description: "Bruce Lee's Top 10 Rules For Success", time: "9 min", url: "https://www.youtube.com/watch?v=u7tL8fK6tjA")

    static let markDivine = ProfileSelectedPerson(name: "Mark Divine", bio: "Former Navy SEAL, and founder of SEALFIT and Unbeatable Mind podcast", advice: "\"To live an uncommon life, one needs learn uncommon disciplines.\"", description: "Win Before Battle - Mark Divine | Inside Quest #38", time: "52 min", url: "https://www.youtube.com/watch?v=rvDO_1GUnAo")

    static let oprahWinfrey = ProfileSelectedPerson(name: "Oprah Winfrey", bio: "American television personality, actress, and entrepreneur", advice: "\"Turn your wounds into wisdom.\"", description: "\"You BECOME What You #BELIEVE!\" - Oprah Winfrey (@Oprah) - Top 10 Rules", time: "29 min", url: "https://www.youtube.com/watch?v=xe99QWlM_9A")

    static let martinLutherKingJr = ProfileSelectedPerson(name: "Martin Luther King Jr.", bio: "an American minister and civil rights activist", advice: "\"Take the first step in faith. You don't have to see the whole staircase, just take the first step.\"", description: "\"#BELIEVE In Your WORTHINESS!\" - Martin Luther King Jr. - Top 10 Rules", time: "24 min", url: "https://www.youtube.com/watch?v=t6lH7Z3_46A")

    static let sophiaAmoruso = ProfileSelectedPerson(name: "Sophia Amoruso", bio: "founder of Nasty Gal and Girlboss", advice: "\"There are secret opportunities hidden inside every failure.\"", description: "Sophia Amoruso's Top 10 Rules For Success (@sophiaamoruso)", time: "13 min", url: "https://www.youtube.com/watch?v=eWEqrEr0J68")

    // Cells

    // Bruce Lee



    // Mark Divine

    static let markDivinePassion = ProfileDataModel(category: "PASSION", title: "Drive provides a lifelong source of energy if focused on a passionate and worthy end.", body: "We can grow even stronger by driving passionately toward our targets and facing hard challenges, never quitting when the going gets unfathomable. \n\nWhat makes you feel as if your hair is on fire? This informs your purpose when intersected with your skills and talents.", url: "https://sealfit.com/", headerUserTextLabel: "Your passion:")

    static let markDivinePurpose = ProfileDataModel(category: "PURPOSE", title: "\"As a young man I felt lost...\"", body: "\"I had an MBA, a good job at a top-tier accounting firm, but was unhappy in spite of it. I stumbled into a matrial arts dojo, thinking it might help. Grinding my character down on the training floor was followed by polishing it in the meditation hall. \n\nSlowly and methodically I turned my body, mind, emotions, and intutition to a new vibration - one that allowed me to hear my inner voice. That voice told me I wasn't living my purpose, that my misery would endur until I could align with my purpose. \n\nWhat is it that you are really supposed to do with your life? What one thing would you focus on if you had nothing holding you back?\"", url: "https://sealfit.com/", headerUserTextLabel: "Your purpose:")

    static let markDivineTop5Goals = ProfileDataModel(category: "GOALS", title: "Set SMART Goals: Specific, Measurable, Achievable, Realistic (but Challenging), and Time-bound", body: "When facing a monster challenge like Navy SEAL's Hell Week, reduce it to micro-goals. You can bite-chuncks of of an elephant long before swallowing the whole thing at once.", url: "https://sealfit.com/", headerUserTextLabel: "Your top 5 goals:")

    static let markDivineVision = ProfileDataModel(category: "VISION", title: "A deeper awareness of what drives your behavior allow us to create a new vision and path that becomes our authentic destiny.", body: "Mark left behind the corporate world to pursue his vision to become an elite Navy SEAL officer. At 26 he graduated as honor-man (#1 ranked trainee) of his SEAL BUD/s class number 170. \n\n\"Hold a powerful vision of who you want to be at some time-certain future.  If you back the mental vision with massive action, do the work to root out negative blocks, and propel your vision with desire, belief and expectation, then surely you will become that person.\"", url: "https://sealfit.com/", headerUserTextLabel: "Your vision statement:")

    // Oprah Winfrey

    static let oprahWinfreyPassion = ProfileDataModel(category: "PASSION", title: "\"If you don't know what your passion is, realize that one reason for your existence on earth is to find it.\"", body: "The opportunities for a girl born black in Mississippi in 1954 were limited. I wanted to be a teacher. And to be known for inspiring my students to be more than they thought they could be. I never imagined it would be on TV.", url: "https://www.youtube.com/results?search_query=oprah+winfrey", headerUserTextLabel: "Your passion:")

    static let oprahWinfreyPurpose = ProfileDataModel(category: "PURPOSE", title: "Everyone has a purpose...", body: "\"I believe there's a calling for all of us. I know that every human being has value and purpose. The real work of our lives is to become aware. And awakened. To answer the call.\"", url: "https://www.youtube.com/results?search_query=oprah+winfrey", headerUserTextLabel: "Your purpose:")

    static let oprahWinfreyTop5Goals = ProfileDataModel(category: "GOALS", title: "Oprah established goals by defining what she didn’t want...", body: "\"If you are stuck on establishing your next goal, take a look at your current situation–what are some things you want out of your life?\"", url: "https://www.youtube.com/results?search_query=oprah+winfrey", headerUserTextLabel: "Your top 5 goals:")

    static let oprahWinfreyVision = ProfileDataModel(category: "VISION", title: "I had a vision of what living your best life could look like.", body: "\"Create the highest, grandest vision possible for your life, because you become what you believe.\"", url: "https://www.youtube.com/results?search_query=oprah+winfrey", headerUserTextLabel: "Your vision statement:")

    // Martin Luther King, Jr

    static let martinLutherKingJrPassion = ProfileDataModel(category: "PASSION", title: "Put your passion to work...", body: "Through his activism and inspirational speeches King played a pivotal role in ending the legal segregation of African-American citizens in the United States. \n\n\"Know your own passion. What ideas and what kinds of activism fill you with strong, energetic emotions? These emotions may be pointing you toward your life’s work.\"", url: "https://www.youtube.com/watch?v=Q9spMeeBPPY", headerUserTextLabel: "Your passion:")

    static let martinLutherKingJrPurpose = ProfileDataModel(category: "PURPOSE", title: "Everyone has a purpose...", body: "\"I believe there's a calling for all of us. I know that every human being has value and purpose. The real work of our lives is to become aware. And awakened. To answer the call.\"", url: "https://www.youtube.com/watch?v=Q9spMeeBPPY", headerUserTextLabel: "Your purpose:")

    static let martinLutherKingJrTop5Goals = ProfileDataModel(category: "GOALS", title: "One of King's last speeches...", body: "\"I want to ask you a question, and that is: What is your life’s blueprint? \n\nNumber one in your life’s blueprint, should be a deep belief in your own dignity, your worth and your own somebodiness. Don’t allow anybody to make you fell that you’re nobody. Always feel that you count. \n\nSecondly, you must have the determination to achieve excellence. When you discover what you will be in your life, set out to do it as if God Almighty called you at this particular moment in history to do it. Don’t just set out to do a good job.\"", url: "https://www.youtube.com/watch?v=Q9spMeeBPPY", headerUserTextLabel: "Your top 5 goals:")

    static let martinLutherKingJrVision = ProfileDataModel(category: "VISION", title: "I Have a Dream...", body: "In 1968 King shared what very well may be the most powerful and transformative Vision Statement ever made. The vision of \"I Have a Dream\" goes beyond the scope of the Civil Rights Movement—this speech can be applied toward many fights to end racism and inequality. \n\nWith a clear vision you too can transform your life, your community and even the world.", url: "https://www.youtube.com/watch?v=Q9spMeeBPPY", headerUserTextLabel: "Your vision statement:")

    // Sophia Amoruso

    static let sophiaAmorusoPassion = ProfileDataModel(category: "PASSION", title: "Passion project...", body: "While she struggled with formal education, she had a passion for vintage clothing. At age 22 while working as a security guard, Amoruso opened an online eBay store, which she called Nasty Gal Vintage. \n\nIt quickly grew to be named one of \"the fastest growing companies\" by Inc. Magazine. However, Nasty Gal later filed for bankruptcy, decimating her fortune. In 2017, Amoruso founded Girlboss.", url: "https://www.girlboss.com/", headerUserTextLabel: "Your passion:")

    static let sophiaAmorusoPurpose = ProfileDataModel(category: "PURPOSE", title: "Be more purposeful...", body: "Amoruso says starting Girlboss was the first time in her life where she felt her opportunity in business and her purpose have been aligned. \"It's a really exciting thing, waking up every day to do that.\"", url: "https://www.girlboss.com/", headerUserTextLabel: "Your purpose:")

    static let sophiaAmorusoTop5Goals = ProfileDataModel(category: "GOALS", title: "Do things that terrify you...", body: "Continuing to move into the places that make us uncomfortable is what expands us and our capabilities. I've taken some really big risks in my life and I've seen great loss, but I have also seen great, great reward. Without saying yes to the things that we're terrified of and continuing to step into what life asks of us or create those big opportunities for ourselves, I think we're asleep at the wheel.", url: "https://www.girlboss.com/", headerUserTextLabel: "Your top 5 goals:")

    static let sophiaAmorusoVision = ProfileDataModel(category: "VISION", title: "Girlboss' vision...", body: "I want to entertain, educate and inform women to have conversations with us and with one another about redefining success. \n\nYes, that means work, money and productivity, but it also means health, personal care, mental health, relationships, sex and other topics that maybe historically weren’t what the dudes who built the paradigm of success that we all live in talk about.", url: "https://www.girlboss.com/", headerUserTextLabel: "Your vision statement:")

}
