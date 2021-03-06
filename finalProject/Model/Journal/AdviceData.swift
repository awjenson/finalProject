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

/*

 //ROW 1: Motivation, Life Goals, Single, Relationship
 //ROW 2: Career Growth, Wealth, Friends, Family/Parenting
 //ROW 3: Studying, Stressed, Depressed, Mad

mental toughness, personal development, motivation, character, integrity, ambition, motivation (other than quotes)
 - Les Brown, David Goggins, Tony Robbins, Bruce Lee, Warrior Mindset, Pro Athlete Mindset, Kobe and Jordan
 - Give people a template to follow (study successful people)

- Believe in yourself, self love, self worth



Frinds
 Family
 Post-Break-Up

 Break-out Bad Mood: Anxious/Stress, Sad/Depressed, Mad, Lonely


 Life Goals / Personal Growth
Wealth
 Career Growth
 Studying

 Meditation/Journaling/Mindfulness

 Single
 Relationship
 Parenting




 Studying
 Startup advice
 Filmmaking
 Screenwriting

 Career advice/Growth)
 Bad Mood

 2-x

 ? See what topics I left out on the Google Drive
 ? Marriage
 ? Family/Friends ('How to deal with your parents'... oppositve of parenting advice)
? Investing

 ? Activist
? Philosophy
 ? Religion/Spiritual

 ? Journaling
 ? Meditation/mindfulness

 */


//MARK: Socialize OR Parenting


func familyParentAM() -> Topics {
    var selectedTopic: Topics!
    let family = Topics(title: familyTitle, icon: familyIcon, topics: [networkingTopic,])
    let familyParenting = Topics(title: familyTitle, icon: familyIcon, topics: [parentingAMTopic,])

    switch defaults.integer(forKey: parentKey)
    {
    case 0:
        //friend
        selectedTopic = family
    case 1:
        //parent
        selectedTopic = familyParenting
    default:
        selectedTopic = family
    }
    return selectedTopic
}

func familyParentDay() -> Topics {
    var selectedTopic: Topics!
    let family = Topics(title: familyTitle, icon: familyIcon, topics: [networkingTopic,])
    let familyParenting = Topics(title: familyTitle, icon: familyIcon, topics: [parentingDayTopic,])

    switch defaults.integer(forKey: parentKey)
    {
    case 0:
        //friend
        selectedTopic = family
    case 1:
        //parent
        selectedTopic = familyParenting
    default:
        selectedTopic = family
    }
    return selectedTopic
}

func familyParentPM() -> Topics {
    var selectedTopic: Topics!
    let family = Topics(title: familyTitle, icon: familyIcon, topics: [networkingTopic,])
    let familyParenting = Topics(title: familyTitle, icon: familyIcon, topics: [parentingPMTopic,])

    switch defaults.integer(forKey: parentKey)
    {
    case 0:
        //friend
        selectedTopic = family
    case 1:
        //parent
        selectedTopic = familyParenting
    default:
        selectedTopic = family
    }
    return selectedTopic
}

func familyParentNight() -> Topics {
    var selectedTopic: Topics!
    let family = Topics(title: familyTitle, icon: familyIcon, topics: [networkingTopic,])
    let familyParenting = Topics(title: familyTitle, icon: familyIcon, topics: [parentingBedtimeTopic,])

    switch defaults.integer(forKey: parentKey)
    {
    case 0:
        //friend
        selectedTopic = family
    case 1:
        //parent
        selectedTopic = familyParenting
    default:
        selectedTopic = family
    }
    return selectedTopic
}


//MARK: SIDE HUSTLE

let sideHustleKey = "SideHustle"

//func sideHustleAM() -> Topics {
//    var selectedTopic: Topics!
//    switch defaults.integer(forKey: sideHustleKey)
//    {
//      case 0:
//        //startup
//        selectedTopic = Topics(title: sideHustleTitle, icon: Constants.Icon.sideHustle, topics: [sideHustleTopic,])
//      case 1:
//        //film
//        selectedTopic = Topics(title: filmmakingTitle, icon: Constants.Icon.filmmaking, topics: [filmPreTopic,])
//      case 2:
//      //writing
//      selectedTopic = Topics(title: screenwritingTitle, icon: Constants.Icon.screenwriting, topics: [screenwritingTopic,])
//
//    default:
//        //startup
//        selectedTopic = Topics(title: sideHustleTitle, icon: Constants.Icon.sideHustle, topics: [sideHustleTopic,])
//    }
//    return selectedTopic
//}
//
//func sideHustleDay() -> Topics {
//    var selectedTopic: Topics!
//    switch defaults.integer(forKey: sideHustleKey)
//    {
//      case 0:
//        //startup
//        selectedTopic = Topics(title: sideHustleTitle, icon: Constants.Icon.sideHustle, topics: [sideHustleTopic,])
//      case 1:
//        //film
//        selectedTopic = Topics(title: filmmakingTitle, icon: Constants.Icon.filmmaking, topics: [filmProdTopic,])
//      case 2:
//      //writing
//      selectedTopic = Topics(title: screenwritingTitle, icon: Constants.Icon.screenwriting, topics: [screenwritingTopic,])
//
//    default:
//        //startup
//        selectedTopic = Topics(title: sideHustleTitle, icon: Constants.Icon.sideHustle, topics: [sideHustleTopic,])
//    }
//    return selectedTopic
//}
//
//func sideHustlePM() -> Topics {
//    var selectedTopic: Topics!
//    switch defaults.integer(forKey: sideHustleKey)
//    {
//      case 0:
//        //startup
//        selectedTopic = Topics(title: sideHustleTitle, icon: Constants.Icon.sideHustle, topics: [sideHustleTopic,])
//      case 1:
//        //film
//        selectedTopic = Topics(title: filmmakingTitle, icon: Constants.Icon.filmmaking, topics: [filmPostTopic,])
//      case 2:
//      //writing
//      selectedTopic = Topics(title: screenwritingTitle, icon: Constants.Icon.screenwriting, topics: [screenwritingTopic,])
//
//    default:
//        //startup
//        selectedTopic = Topics(title: sideHustleTitle, icon: Constants.Icon.sideHustle, topics: [sideHustleTopic,])
//    }
//    return selectedTopic
//}




//MARK: - Personal Growth
let personalTitle = "Advice"
let personalIcon = Constants.Icon.motivation

//0
let personalTip1 = Tip(header: "Be Successful", title: "Say \"I believe in myself\"", body: "How does it feel? If it feels awkward, then the real issue might not be what others believe about you; the real issue might be what you believe about yourself. \n\nUncover why you believe in yourself: \n• What are your talents? \n• What have you accomplished? \n• When have you acted in spite of fear? \n\nList all the wins you’ve experienced in the past, no matter how small, and keep celebrating your victories. You’ll begin to support and strengthen your self-belief.", sourceName: "Success", sourceURL: "https://www.success.com/how-to-believe-in-yourself-when-it-feels-like-no-one-else-does/", sponsorLogo: "", sponsorURL: "")

let personalTip2 = Tip(header: "Be A Leader", title: "Prioritize your problems and take care of them one at a time, the highest priority first.", body: "Don’t try to do everything at once or you won’t be successful. A leader who tries to take on too many problems simultaneously will likely fail at them all. \n\n- Jocko Willink", sourceName: "Extreme Ownership: How U.S. Navy SEALs Lead and Win", sourceURL: "https://www.amazon.com/Extreme-Ownership-U-S-Navy-SEALs/dp/1250067057", sponsorLogo: "", sponsorURL: "")

let personalTip3 = Tip(header: "Be A Leader", title: "Take Extreme Ownership: Leaders must own everything in their world. There is no one else to blame", body: "DON'T: Complain or put the blame on somebody else or an external circumstance. \n\nDO: Take full responsibility for what is happening or has happened. Actively look for how you could solve the problem and develop a plan to achieve success.", sourceName: "Extreme Ownership: How U.S. Navy SEALs Lead and Win", sourceURL: "https://www.amazon.com/Extreme-Ownership-U-S-Navy-SEALs/dp/1250067057", sponsorLogo: "", sponsorURL: "")

let personalTip4 = Tip(header: "Be A Leader", title: "You must explain not just what to do, but WHY. It's your responsibility to to reach out and ask if you or others do not understand", body: "If you ever get a task that you don’t understand or believe in... \n\nDON'T: Sit back and accept it. \n\nDO: Be a leader. Ask questions until you understand why so you can believe in what you are doing and you can pass that information down the chain to your team with confidence, so they can get out and execute the mission.", sourceName: "Extreme Ownership: How U.S. Navy SEALs Lead and Win", sourceURL: "https://www.amazon.com/Extreme-Ownership-U-S-Navy-SEALs/dp/1250067057", sponsorLogo: "", sponsorURL: "")

//1
let personalTip5 = Tip(header: "Be A Leader ", title: "Leading up the command: \n• DON'T: Ask your leader what you should do. \n• DO: Tell them what you are going to do", body: "If your boss isn’t making a decision in a timely manner or providing necessary support for you and your team... \n\nDON'T: Blame the boss. \n\nDO: First, blame yourself. Leaders must own everything in their world. \n\nSecond, examine what you can do to better convey the critical information for decisions to be made and support allocated.", sourceName: "Extreme Ownership: How U.S. Navy SEALs Lead and Win", sourceURL: "https://www.amazon.com/Extreme-Ownership-U-S-Navy-SEALs/dp/1250067057", sponsorLogo: "", sponsorURL: "")

let personalTip6 = Tip(header: "Millionaire Habit 💰", title: "• Not every thought needs to come out of your mouth. \n• Not every emotion needs to be expressed.", body: "Loose lips are a bad habit for 69% of those who struggle financially. \n\nOppositely, 94% of wealthy people filter their emotions. Wealthy people understand that letting emotions control them can destroy relationships at work and at home. \n\nWait to say what’s on your mind until you’re calm and have had time to look at the situation neutrally.", sourceName: "SUCCESS Magazine", sourceURL: "https://www.success.com/16-rich-habits/", sponsorLogo: "", sponsorURL: "")

let personalTip7 = Tip(header: "Millionaire Advice", title: "Stop doing what you're doing. In other words, take a break and assess what is working and what is not working.", body: "The definition of insanity is doing the same thing and expecting different a result. Stop doing what is not working and look for something new to do. \n\n- Robert Kiyosaki \nAuthor of Rich Dad, Poor Dad", sourceName: "Rich Dad, Poor Dad", sourceURL: "https://www.amazon.com/Rich-Dad-Poor-Teach-Middle-ebook/dp/B0175P82RA", sponsorLogo: "", sponsorURL: "")
let personalTip8 = Tip(header: "Harvard Professor - Integrity", title: "100% of the time is easier than 98% of the time. Decide What You Stand For. And Then Stand for it all the time.", body: "Many of us have convinced ourselves that we are able to break our own personal rules \"just this once.\" In our minds, we can justify these small choices. \n\nNone of those things, when they first happen, feels like a life-changing decision. These decision always seem insignificant. \n\nBut each of those decisions can roll up into a much bigger picture, turning you into the kind of person you never wanted to be. \n\nThe first step down that path is taken with a small decision. You justify all the small decisions that lead up to the big one and then you get to the big one and it doesn't seem so enormous anymore. \n\nYou don't realize the road you are on until you look up and see you've arrived at a destination you would have once considered unthinkable. \n\nResist the temptation of \"in this one minor circumstance, just this once, it's okay.\" Life is just one unending stream of minor circumstances. \n\nIf you cross the line once, it will be easier to do it over and over going forward. If you give in to \"just this once,\" you'll regret where you end up. \n\nIt's easier to hold to your principles 100% of the time. The boundary-your personal moral line- is powerful, because you don't cross it; if you have justified doing it once, there's nothing to stop you doing it again. \n\nThe only way to avoid the consequences of uncomfortable moral concessions in your life is to never start making them in the first place. When the first step down that path presents itself, turn around and walk the other way.", sourceName: "How Will You Measure Your Life? by Clayton Christensen", sourceURL: "https://www.amazon.com/dp/B006ID0CH4/", sponsorLogo: "", sponsorURL: "")


//2
let personalTip9 = Tip(header: "Billionaire Advice", title: "The greatest secret of winners is that failure inspires winning; thus they're not afriad of losing", body: "\"I always tried to turn every disaster into an opportunity.\" \n\n- John D. Rockefeller  \n\nHe is considered the wealthiest American of all time, and the richest person in modern history.", sourceName: "Rich Dad, Poor Dad", sourceURL: "https://www.amazon.com/Rich-Dad-Poor-Teach-Middle-ebook/dp/B0175P82RA", sponsorLogo: "", sponsorURL: "")
let personalTip10 = Tip(header: "Mental Toughness", title: "Navy SEAL technique when faced with a daunting task: \n\n• Visualize yourself succeeding", body: "Good visualizations have the following qualities: \n\n• Detailed. Imagine the specifics. Engage all the senses. Make it as real as possible. \n\n• Repetition. Run the play-by-play over and over in your head. Make it automatic. \n\n• Positive Imagery. Repeatedly envision yourself in a state of effortless success.", sourceName: "Observer", sourceURL: "https://observer.com/2016/11/bulletproof-mind-6-secrets-of-mental-toughness-from-the-navy-seals/", sponsorLogo: "", sponsorURL: "")

let personalTip11 = Tip(header: "Millionare Advice", title: "Whenever you feel \"short\" or in \"need\" of something, give what you want first and it will come back in buckets.", body: "That is true for money, a smile, love, friendship. I know it is often the last thing a person may want to do, but it has always worked for me. \n\nI want money, so I give money, and it comes back to me in multiples. All you need to be is generious with what you have, and the powers will be generous with you. \n\n- Robert Kiyosaki \nAuthor of Rich Dad, Poor Dad", sourceName: "Rich Dad, Poor Dad", sourceURL: "https://www.amazon.com/Rich-Dad-Poor-Teach-Middle-ebook/dp/B0175P82RA", sponsorLogo: "", sponsorURL: "")

let personalTip12 = Tip(header: "Harvard Professor - Integrity", title: "Doing something wrong \"just this once\" always seems to be insignificant, but the full cost will be much higher.", body: "Recent years have offered plenty of examples of people who were extremely well-respected by their colleagues and peers falling from grace because they made this mistake. \n\nThe political, business, and professional sports arenas are litered with examples of people at the top of their game getting caught doing something that would never have crossed their minds at the beginning of their careers. \n\nIn highsight, it all started with one small step: a relatively small error. The next step is always a small one, and given what you've already done, why stop now? \n\nThis is the danger of doing something just this once, of only applying your rules most of the time. You can't.", sourceName: "How Will You Measure Your Life? by Clayton Christensen", sourceURL: "https://www.amazon.com/dp/B006ID0CH4/", sponsorLogo: "", sponsorURL: "")

//3
let personalTip13 = Tip(header: "Millionaire Advice", title: "Most people never win because they're more afraid of losing. \n\nUnfortunately the main reason most people are not rich is because they are terrified of losing.", body: "Winners are not afraid of losing. But losers are. Failure is part of the process of success. People who avoid failure also avoid success. \n\n- Robert Kiyosaki \nAuthor of Rich Dad, Poor Dad", sourceName: "Rich Dad, Poor Dad", sourceURL: "https://www.amazon.com/Rich-Dad-Poor-Teach-Middle-ebook/dp/B0175P82RA", sponsorLogo: "", sponsorURL: "")
let personalTip14 = Tip(header: "Quote - Les Brown", title: "Imagine if you will being on your death bed – and standing around your bed – the ghosts of the ideas, the dreams, the talents given to you by life. \n\nAnd that you for whatever reason, you never acted on those ideas, you never pursued that dream, you never used those talents, we never saw your leadership, you never used your voice, you never wrote that book.", body: "And there they are standing around your bed looking at you with large angry eyes saying ‘we came to you, and only you could have given us life! Now we must die with you forever.’ \n\nThe question is – if you die today, what ideas, what dreams, what abilities, what talents, what gifts, would die with you?", sourceName: "Fearless Motivation", sourceURL: "https://www.fearlessmotivation.com/2018/01/11/les-brown-you-have-greatness-in-you/", sponsorLogo: "", sponsorURL: "")
let personalTip15 = Tip(header: "Les Brown", title: "Program your mind for good or your mind will be programmed for bad. \n\nPsychologists say that 86% of our self talk is negative and it goes undetected by the conscious mind.", body: "I encourage people to read at a minimum of 30 to 40 pages of something positive every day. \n\nGo on YouTube and find things that will begin to empower you and minimize the distractions in your life. \n\nThere’s an African proverb that says: \"If there’s no enemy within, the enemy outside can do us no harm.\"", sourceName: "Fearless Motivation", sourceURL: "https://www.fearlessmotivation.com/2018/01/11/les-brown-you-have-greatness-in-you/", sponsorLogo: "", sponsorURL: "")
let personalTip16 = Tip(header: "Mental Toughness", title: "Navy SEAL technique when faced with a daunting task: \"Eat the Elephant\" one bite at a time", body: "Break down any daunting ask into immediate, bite-sized objectives. Ideally, they should fit into a 24-hour window. \n\n• Focus only on completing one at a time \n\n• Avoid thinking of the whole task", sourceName: "Observer", sourceURL: "https://observer.com/2016/11/bulletproof-mind-6-secrets-of-mental-toughness-from-the-navy-seals/", sponsorLogo: "", sponsorURL: "")

//4
let personalTip17 =  Tip(header: "Make This Your Mantra", title: "\"Never give up. Never accept failure. There is a solution to everything.\"", body: "Succeeding through great adversity is a huge confidence booster. \n\nLow self-confidence is often caused by negative thoughts running through our minds. \n\nThe next time you hear that negativity in your head, switch it immediately to a positive affirmation.", sourceName: "Inc.", sourceURL: "https://www.inc.com/peter-economy/5-powerful-ways-to-boost-your-confidence.html", sponsorLogo: "", sponsorURL: "")
let personalTip18 = Tip(header: "Increase Confidence", title: "Talk to yourself positively in the second person (“you”)", body: "Study: People who spoke to themselves in the second person (“you”), rather than in the first person (“I”), reported higher levels of confidence and motivation. \n\nThis may be because the use of “you” reminds us of receiving advice and encouragement from other people.", sourceName: "Entrepreneur", sourceURL: "https://www.entrepreneur.com/slideshow/317242", sponsorLogo: "", sponsorURL: "")

let personalTip19 = Tip(header: "Millionaire Advice", title: "If you have little money and you want to be rich, you must first be \"focused,\" not \"balanced.\" \n\nIf you look at anyone successful, at the start they were not balanced. Balanced people go nowhere. They stay in one spot. \n\nTo make progress, you must first go unbalanced.", body: "Thomas Edison was not balanced. He was focused. Bill Gates was not balanced. He was focused. \n\nGeorge Patton did not take his tanks wide. He focused them and blew through the weak spots in the German line. \n\nIf you have any desire of being rich, you must focus. Put a lot of your eggs in a few baskets. \n\nDo not do what poor and middle class people do; put their few eggs in many baskets. \n\n- Robert Kiyosaki \nAuthor of Rich Dad, Poor Dad", sourceName: "Rich Dad, Poor Dad", sourceURL: "https://www.amazon.com/Rich-Dad-Poor-Teach-Middle-ebook/dp/B0175P82RA", sponsorLogo: "", sponsorURL: "")
let personalTip20 = Tip(header: "Mental Toughness", title: "See “bad” events as a challenge for you to go out there and improve yourself", body: "D.H. Xavier recalls his own Navy SEAL “Hell Week” experience: \n\n“They were kicking me while I was down. My belief could have been that they truly didn’t want me there; the consequence of that belief would have been me quitting.“ \n\n“Instead, my belief was that I didn’t care what they said. I believed I was capable of succeeding.”", sourceName: "Gear Patrol", sourceURL: "https://gearpatrol.com/2019/05/18/box-breathing-navy-seals/", sponsorLogo: "", sponsorURL: "")
//5
let personalTip21 = Tip(header: "Daily Habit", title: "Our rewards in life will always match our service. \n\nIf you're not satisfied with your income then you must rethink your service.", body: "To increase your service: \n1. Read books on your specialty. \n2. Read about what has worked well for others. \n3. Think of creative ways of increasing your service. Ways that are unique with the way you are. \n\nEach day, ask yourself, \"How can I increase my service?\" If you do this every day, you will start forming one of life's most valuable habits. \n\nConcern yourself only with increasing your service and your income and future will take care of themselves.", sourceName: "YouTube: Motivational Speeches for Success in Life", sourceURL: "https://www.youtube.com/watch?v=uDiMGHvZq5I", sponsorLogo: "", sponsorURL: "")
let personalTip22 = Tip(header: "Chief Task In Life", title: "The chief task in life is simply this: to identify and separate matters so that I can say clearly to myself which are externals not under my control, and which have to do with the choices I actually control. \n\nWhere then do I look for good and evil? Not to uncontrollable externals, but within myself to the choices that are my own…", body: "— Epictetus \n\nWhat you can control, as always, is how you respond. What matters is not what other people are doing or have done, but what you do.", sourceName: "Daily Stoic", sourceURL: "https://dailystoic.com/remember-you-dont-control-what-happens-you-control-how-you-respond/", sponsorLogo: "", sponsorURL: "")
let personalTip23 = Tip(header: "Daily Habit", title: "“Memento Mori” is Latin for “Remember death” \n\nTony Robbins has said:", body: "“There’s something coming for all of us. It’s called death. Rather than fearing it, it can become one of our greatest counselors.” \n\n”So, if this was the last week of your life, what would you cherish most? How would you live? How would you love? What truth would you tell today?”" , sourceName: "Daily Stoic", sourceURL: "https://dailystoic.com/history-of-memento-mori/", sponsorLogo: "", sponsorURL: "")
let personalTip24 = Tip(header: "Life Advice", title: "None of us are immune from life's tragic moments. It takes a team of good people to get you to your destination. You cannot do it alone.", body: "• Find someone to share your life with. \n\n• Make as many friends as possible. \n\n• Never forget that your success depends on others.", sourceName: "Make Your Bed: Little Things That Can Change Your Life...And Maybe the World, by Admiral William H. McRaven", sourceURL: "https://www.amazon.com/Make-Your-Bed-Little-Things/dp/1455570249", sponsorLogo: "", sponsorURL: "")

//6
let personalTip25 = Tip(header: "Life Advice - US Navy SEAL", title: "It is easy to blame your situation in life on some outside force, to stop trying because you believe fate is against you. \n\nIt is easy to think that where you were raised, how your parents treated you, or what school you went to is all that determines your future. \n\nNothing could be further from the truth.", body: "The common people of great men and women are all defined by how they deal with life's unfairness: Helen Keller, Nelson Mandela, Stephen Hawking, and Malala Yousafzai. \n\nSometimes no matter how hard you try, no mater how good you are, you still end up losing because life isn't fair. \n\nDon't blame it on your misfortune. Stand tall, look to the future, and drive on!", sourceName: "Make Your Bed: Little Things That Can Change Your Life...And Maybe the World, by Admiral William H. McRaven", sourceURL: "https://www.amazon.com/Make-Your-Bed-Little-Things/dp/1455570249", sponsorLogo: "", sponsorURL: "")
let personalTip26 = Tip(header: "Life Advice - US Navy SEAL", title: "True leaders learn from their failures, use the lessons to motivate themselves, and are not afraid to try again or make the next tough decision.", body: "Know that the pain and hardship from failure makes you stronger, faster, smarter, and more confident to handle future challenges. \n\nTrue leaders never give up and aren't afraid of failure.", sourceName: "Make Your Bed: Little Things That Can Change Your Life...And Maybe the World, by Admiral William H. McRaven", sourceURL: "https://www.amazon.com/Make-Your-Bed-Little-Things/dp/1455570249", sponsorLogo: "", sponsorURL: "")
let personalTip27 = Tip(header: "Life Advice - US Navy SEAL", title: "The British Special Air Service's motto is \"Who Dares Wins.\" \n\nThe motto is more than about how the British special forces operate as a unit; it is about how each of us should approach our lives.", body: "Life is a struggle and the potential for failure is ever present, but those who live in fear of failures, or hardship, or embarrassment will never achieve their potential. \n\nWithout pushing your limits, without occasionally taking a risk, without daring greatly, you will never know what is truly possible in your life.", sourceName: "Make Your Bed: Little Things That Can Change Your Life...And Maybe the World, by Admiral William H. McRaven", sourceURL: "https://www.amazon.com/Make-Your-Bed-Little-Things/dp/1455570249", sponsorLogo: "", sponsorURL: "")
let personalTip28 = Tip(header: "Daily Habit", title: "“Memento Mori” is Latin for “Remember death” — Mortality motivation is practiced today by successful entrepreneurs, artists, and athletes", body: "Steve Jobs famously said: \n\n“Remembering that I’ll be dead soon is the most important tool I’ve ever encountered to help me make the big choices in life.” \n\n”Almost everything — all external expectations, all pride, all fear of embarrassment or failure — these things just fall away in the face of death, leaving only what is truly important.” \n\n”Remembering that you are going to die is the best way I know to avoid the trap of thinking you have something to lose. You are already naked. There is no reason not to follow your heart.”" , sourceName: "Daily Stoic", sourceURL: "https://dailystoic.com/history-of-memento-mori/", sponsorLogo: "", sponsorURL: "")

//7
let personalTip29 = Tip(header: "Daily Habit", title: "“Remember death” — The point of this ancient practice isn’t to be morbid, but to inspire you to treat each day as a gift.", body: "How much time do we waste on things that don’t matter? And why? Because we think we can afford it. \n\nMarcus Aurelius wrote that “You could leave life right now. Let that determine what you do and say and think.” \n\nThat was a personal reminder to continue living a life of integrity, honor, and moral excellence NOW, and not wait." , sourceName: "Daily Stoic", sourceURL: "https://dailystoic.com/history-of-memento-mori/", sponsorLogo: "", sponsorURL: "")
let personalTip30 = Tip(header: "Navy SEAL - Courage", title: "Without courage: \n• Others will define your path forward. \n• You're at the mercy of life's temptation. \n• The bullies of the world rise up and people will be ruled by tyrants.", body: "With courage: \n• You can accomplish any goal. \n• You can defy and defeat evil. \n\nIn life, to achieve your goals, you will have to be men and women of great courage. That courage is within all of us. Dig deep, and you will find it in abundance.", sourceName: "Make Your Bed: Little Things That Can Change Your Life...And Maybe the World, by Admiral William H. McRaven", sourceURL: "https://www.amazon.com/Make-Your-Bed-Little-Things/dp/1455570249", sponsorLogo: "", sponsorURL: "")
let personalTip31 = Tip(header: "Quote", title: "The illiterate of the 21st century will not be those who cannot read and write, but those who cannot learn, unlearn, and relearn.", body: "- Alvin Toffler, a writer, futurist, and businessman \n\nThe ability to keep an open-mind, acquire better knowledge and apply it when necessary can significantly improve your life and career.", sourceName: "Medium", sourceURL: "https://medium.com/personal-growth/6-habits-of-super-learners-63d466a254fd", sponsorLogo: "", sponsorURL: "")
let personalTip32 = Tip(header: "Quote from a MLK 1967 speech", title: "What is in your life’s blueprint? \n\nYou’re going to be deciding as the days and the years unfold what you will do in life, what your life’s work will be. Once you discover what it will be, set out to do it and to do it well… Be a bush if you can’t be a tree. If you can’t be a highway, just be a trail. If you can’t be the sun, be a star, for it isn’t by size that you win or you fail. Be the best of whatever you are.", body: "- Dr. Martin Luther King Jr.", sourceName: "Medium", sourceURL: "https://medium.com/@lucaswonders/finding-your-lifes-blueprint-template-for-reflection-based-on-mlk-s-1967-speech-aec875ceacd9", sponsorLogo: "", sponsorURL: "")



//8
let personalTip33 = Tip(header: "Quote from a MLK 1967 speech", title: "What is in your life’s blueprint? \n\nNumber one in your life’s blueprint should be a deep belief in your own dignity, your own worth and your own somebodiness. Don’t allow anybody to make you feel that you are nobody. Always feel that you count. Always feel that you have worth, and always feel that your life has ultimate significance.", body: "- Dr. Martin Luther King Jr.", sourceName: "Medium", sourceURL: "https://medium.com/@lucaswonders/finding-your-lifes-blueprint-template-for-reflection-based-on-mlk-s-1967-speech-aec875ceacd9", sponsorLogo: "", sponsorURL: "")

  let personalTip34 = Tip(header: "Daily Habit", title: "“Memento Mori” is Latin for “Remember death” \n\nWhen Gary Vaynerchuk was asked to give three words of inspiration to someone, he said, “You’re gonna die.”", body: "Gary explains this by saying: \n\n“The reason I believe in it (death as motivation) is because it’s ultimately practical. It’s the guiding light and the fire and ambition that drives me toward legacy and living my best life.”" , sourceName: "Daily Stoic", sourceURL: "https://dailystoic.com/history-of-memento-mori/", sponsorLogo: "", sponsorURL: "")
let personalTip35 = Tip(header: "Get Out Of Your Comfort Zone", title: "Put yourself into slightly uncomfortable situations that push you to achieve goals you might never have expected", body: "Each of us has a \"comfort zone\" - a mental construct that helps us operate efficiently and minimize stress and risk. \n\nEmbrace failure. Taking risk, despite fear of failure, can push you to peak performance." , sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")

let personalTip36 = Tip(header: "Daily Habit", title: "Pulitzer prize winner, WH Auden: Routine, in an intelligent man [or woman], is a sign of ambition.", body: "“The surest way to discipline passion is to discipline time: decide what you want or ought to do during the day, then always do it at exactly the same moment every day, and passion will give you no trouble.“" , sourceName: "Medium: The Daily Routine of 20 Famous Writers", sourceURL: "https://medium.com/the-mission/the-daily-routine-of-20-famous-writers-and-how-you-can-use-them-to-succeed-1603f52fbb77", sponsorLogo: "", sponsorURL: "")
let personalTip37 = Tip(header: "Billionaire Warren Buffett 💰", title: "Take care of your body and mind — especially when you’re young.", body: "“If I gave you a car, and it’d be the only car you get the rest of your life, you would take care of it like you can’t believe. Any scratch, you’d fix that moment, you’d read the owner’s manual, you’d keep a garage and do all these things,” he said. \n\n“You get exactly one mind and one body in this world, and you can’t start taking care of it when you’re 50. By that time, you’ll rust it out if you haven’t done anything.”" , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2020/08/31/billionaire-warren-buffetts-best-life-and-investing-advice.html", sponsorLogo: "", sponsorURL: "")
let personalTip38 = Tip(header: "Billionaire Warren Buffett 💰", title: "Remember that love is more important than money", body: "“The incredible thing about love is that you can’t get rid of it. If you try to give it away, you end up with twice as much, but if you try to hold onto it, it disappears.“ \n\n“It is an extraordinary situation, where the people who just absolutely push it out, get it back tenfold.”" , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2020/08/31/billionaire-warren-buffetts-best-life-and-investing-advice.html", sponsorLogo: "", sponsorURL: "")

//
let personalTip39 = Tip(header: "Ray Dalio 💰", title: "Find Smart Friends and Get Expert Opinions", body: "Finding smart friends helped him achieve success in his career which helped him earn billions of dollars. \n\nThe billionaire advises people to “stress test” their opinions by seeking out “the smartest people who disagree with you the most to stress test your thinking.”", sourceName: "Bloomberg", sourceURL: "https://www.bloomberg.com/news/articles/2019-11-19/ray-dalio-says-smart-people-brought-him-to-success-money", sponsorLogo: "", sponsorURL: "")


let personalTipArray0 = [personalTip1, personalTip2, ]

let personalTipArray1 = [personalTip3, personalTip4]

let personalTipArray2 = [ personalTip5, personalTip6,]

let personalTipArray3 = [personalTip7, personalTip8]

let personalTipArray4 = [personalTip9, personalTip10,]

let personalTipArray5 = [personalTip11, personalTip12]

let personalTipArray6 = [personalTip13, personalTip14,]

let personalTipArray7 = [personalTip15, personalTip16]

let personalTipArray8 = [personalTip17, personalTip18,]

let personalTipArray9 = [personalTip19, personalTip20]

let personalTipArray10 = [personalTip21, personalTip22,]

let personalTipArray11 = [personalTip23, personalTip24]

let personalTipArray12 = [personalTip25, personalTip26,]

let personalTipArray13 = [personalTip27, personalTip28]

let personalTipArray14 = [personalTip29, personalTip30,]

let personalTipArray15 = [personalTip31, personalTip32]

let personalTipArray16 = [personalTip33, personalTip34,]

let personalTipArray17 = [personalTip35, personalTip36]

let personalTipArray18 = [personalTip37, personalTip38]
let personalTipArray19 = [personalTip39, personalTip24]

// RANDOM
let personalTipArrays = [personalTipArray0, personalTipArray1, personalTipArray2, personalTipArray3, personalTipArray4, personalTipArray5, personalTipArray6, personalTipArray7, personalTipArray8, personalTipArray9, personalTipArray10, personalTipArray11, personalTipArray12, personalTipArray13, personalTipArray14, personalTipArray15, personalTipArray16, personalTipArray17, personalTipArray18, personalTipArray19]
let personalTopic = Topic(title: personalTitle, icon: personalIcon, tip: personalTipArrays.random())
let personalTopics = Topics(title: personalTitle, icon: personalIcon, topics: [personalTopic,])

//MARK: - Family
let familyTitle = "Family"
let familyIcon = Constants.Icon.family


//MARK: - Friends

let friendsTitle = "Friends"
let friendsIcon = Constants.Icon.friends

let friendsTip1 = Tip(header: "Live Longer", title: "10-Year Study: People with a large network of friends outlived people with less friends by 22%", body: "Close friendships can help ward off depression and boost immunity as well.", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/amymorin/2014/10/17/5-scientific-reasons-you-should-choose-your-friends-carefully/#4f9cfb7c6181", sponsorLogo: "", sponsorURL: "")
let friendsTip2 = Tip(header: "Lonely", title: "40% of U.S. adults report feeling lonely", body: "As a society, we have used technology to build stronger online connections, but our offline connections have deteriorated. \n\nWe evolved to be social creatures and thousands of years ago if you were connected to other people you were more likely to be protected from predators. \n\nSo when you're disconnected, you're in a state of stress. \n\nLoneliness is associated with a reduction in your lifespan that is as severe as the lifespan you see with smoking 15 cigarettes a day.", sourceName: "CBS News", sourceURL: "https://www.cbsnews.com/news/loneliness-epidemic-former-surgeon-general-dr-vivek-murthy/", sponsorLogo: "", sponsorURL: "")
let friendsTip3 = Tip(header: "Lonely", title: "Reduce feelings of loneliness by spending less time on social media and more time with friends face-to-face", body: "Research: People who reported spending the most time on social media had twice the odds of perceived social isolation than those who said they spent less on those sites. \n\nReplacing your real-world relationships with social media use is detrimental to your well-being. \n\nHowever, face-to-face social connectedness is strongly associated with well-being.", sourceName: "NPR", sourceURL: "https://www.npr.org/sections/health-shots/2017/03/06/518362255/feeling-lonely-too-much-time-on-social-media-may-be-why", sponsorLogo: "", sponsorURL: "")
let friendsTip4 = Tip(header: "Lonely", title: "1 in 5 Americans suffer from loneliness", body: "• Accept your need for social connection (humans are social beings). \n\n• Call, text, or meetup with a friend. \n\n• Listen to music or do something creative. \n\n• Work in a social setting (cafe or co-working space). \n\n• Avoid using social media (scrolling mindlessly makes us lonelier). \n\n• Make eye contact with people. \n\n• Be kind to strangers.", sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/health/conditions/how-to-not-feel-lonely/", sponsorLogo: "", sponsorURL: "")

//1
let friendsTip5 = Tip(header: "Warren Buffett", title: "Associate yourself with ‘high-grade people’", body: "One of the best things you can do in life is to surround yourself with people who are better than you are. \n\nIf you’re around “high-grade people” you’ll start acting more like them. \n\nConversely, “If you hang around with people who behave worse than you, pretty soon you’ll start being pulled in that direction. That’s just the way it seems to work.", sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2019/08/31/billionaire-investor-warren-buffetts-best-advice.html", sponsorLogo: "", sponsorURL: "")
let friendsTip6 = Tip(header: "Healthy Friendships Require 3 Things", title: "1. Somebody to talk to (vulnerability) \n2. Someone to depend on (consistency) \n3. Someone to enjoy (positivity)", body: "Now that you have a definition you know what 3 actions can start, build, repair, or end any friendships in our lives.", sourceName: "Huffington Post", sourceURL: "https://www.huffpost.com/entry/the-3-requirements-of-all-healthy-friendships_b_58b6153fe4b0658fc20f9b64", sponsorLogo: "", sponsorURL: "")

let friendsTip7 = Tip(header: "Sign Of A Toxic Friend", title: "They're jealous of you", body: "A good friend will be happy for your successes, even if their own life isn't currently going well. \n\nConsider it a bad sign if you're constantly afraid to share good news. \n\nWhen you feel you have to watch every word you say with this friend, or you start withholding positive thoughts and situations because this friend has become excessively jealous of you, that is a sign the friendship has become, or is becoming, unhealthy.", sourceName: "Bustle", sourceURL: "https://www.bustle.com/articles/177766-11-subtle-signs-your-friendship-isnt-healthy-how-to-deal-with-it", sponsorLogo: "", sponsorURL: "")
let friendsTip8 = Tip(header: "Sign Of A Toxic Friend", title: "They can't keep a secret", body: "This is an obvious sign of a bad friend, so don't let yourself conveniently forget all the times your pal shared your deepest and darkest. \n\nKeeping in mind that human beings are imperfect and may slip up, if a friend does this more than once, or in a cruel fashion, you need to be honest about your hurt and disappointment and either end the friendship or shift it back to the superficial category. \n\n(AKA, the type of casual friendship where secrets definitely aren't shared.)", sourceName: "Bustle", sourceURL: "https://www.bustle.com/articles/177766-11-subtle-signs-your-friendship-isnt-healthy-how-to-deal-with-it", sponsorLogo: "", sponsorURL: "")

//3
let friendsTip9 = Tip(header: "Sign Of A Toxic Friend", title: "You kind of dread seeing them", body: "If your friendship isn't healthy, then you'll likely find yourself avoiding plans. \n\nYou'll find yourself putting off contacting this friend or, if they contact you, you don't feel the excitement and enthusiasm about talking or getting together that you used to.", sourceName: "Bustle", sourceURL: "https://www.bustle.com/articles/177766-11-subtle-signs-your-friendship-isnt-healthy-how-to-deal-with-it", sponsorLogo: "", sponsorURL: "")
let friendsTip10 = Tip(header: "Sign Of A Toxic Friend", title: "You don't feel well after hanging out", body: "Friendships can boost your mental and physical health, but bad friendships can do the opposite. \n\nSo if you feel sick after hanging out, or always get a headache when they call, it could mean that the friendship isn't the best.", sourceName: "Bustle", sourceURL: "https://www.bustle.com/articles/177766-11-subtle-signs-your-friendship-isnt-healthy-how-to-deal-with-it", sponsorLogo: "", sponsorURL: "")

let friendsTip11 = Tip(header: "Sign Of A Toxic Friend", title: "They let you down on the regular", body: "We all have that one friend who's constantly canceling plans. \n\nIt's up to you to decide if that's something you want to deal with. \n\nBut do recognize that it's unhealthy, as well as a pattern that's unlikely to change.", sourceName: "Bustle", sourceURL: "https://www.bustle.com/articles/177766-11-subtle-signs-your-friendship-isnt-healthy-how-to-deal-with-it", sponsorLogo: "", sponsorURL: "")
let friendsTip12 = Tip(header: "Sign Of A Toxic Friend", title: "They peer pressure you", body: "If there's one thing that's not cool — especially from a friend — it is peer pressure. \n\nA real friend doesn’t push you to act dangerously or unhealthfully. \n\nMaybe they push you to smoke when you’re trying to quit or to have that extra drink when they know you have to drive home. \n\nWhatever it is, it's definitely not OK.", sourceName: "Bustle", sourceURL: "https://www.bustle.com/articles/177766-11-subtle-signs-your-friendship-isnt-healthy-how-to-deal-with-it", sponsorLogo: "", sponsorURL: "")

//4
let friendsTip13 = Tip(header: "Be A Better Friend 👫", title: "Communicate expectations when life gets busy", body: "If there are certain days or weeks where you are going to be less available, giving your friend a heads up can go a long way toward minimizing misunderstandings or conflicts where somebody feels left out or like they’re being ignored. \n\nTell your friends how long you expect to be off the radar, how to communicate with you best during this time (“I’m drowning in emails; texts are better!”), and when your schedule is expected to go back to normal.", sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/2018/01/18/smarter-living/how-to-maintain-friends.html", sponsorLogo: "", sponsorURL: "")
let friendsTip14 = Tip(header: "Be A Better Friend 👫", title: "Never just say “I’m too busy.” It can make your friend feel like you're blowing them off", body: "Instead of offering vague statements about your busy schedule, qualify your busyness: “I’m busy for the rest of the month,” or “I’m tied up until the end of the year.” \n\nThen make a counter offer. If you can’t meet face-to-face anytime soon, suggest a phone date, Skype session, or other way to connect so your friend doesn’t feel abandoned.", sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/2018/01/18/smarter-living/how-to-maintain-friends.html", sponsorLogo: "", sponsorURL: "")
let friendsTip15 = Tip(header: "Be A Better Friend 👫", title: "Personalized, thoughtful text messages are a low-effort way to keep up connections when you’re short on time", body: "DO: Ask questions that invite reveals (“How was your vacation?“ or “How’s your new job going?”) \n\nDON'T: Text statements (“I hope you’re having a great day!” or “You’re in my thoughts”), which don’t tend to prompt meaningful back-and-forth exchanges.", sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/2018/01/18/smarter-living/how-to-maintain-friends.html", sponsorLogo: "", sponsorURL: "")
let friendsTip16 = Tip(header: "Choose Friends Carefully 💰", title: "Don't listen to poor or frightened people. When it comes to money, especially investments, they will always tell you why something won't work.", body: "You want to have rich friends who are close to the inside because that is where the money is made. It's made on information. \n\nYou want to hear about the next boom, get in and get out before the next bust. \n\nI'm not saying doing it illegally, but the sooner you know, the better your chances for profits with minimal risk. \n\nThat is what friends are for. And that is financial intelligence. \n\n- Robert Kiyosaki \nAuthor of Rich Dad, Poor Dad", sourceName: "Rich Dad, Poor Dad", sourceURL: "https://www.amazon.com/Rich-Dad-Poor-Teach-Middle-ebook/dp/B0175P82RA", sponsorLogo: "", sponsorURL: "")

//5
let friendsTip17 = Tip(header: "Be A Better Friend 👫", title: "Once in a while, do a big gesture for the friends you really care about because it will strengthen the friendship for a while, even if you’re too busy to see each other every week", body: "Being that person who comes through will make that person feel loved and taken care of even if you’re not in constant contact. \n\nThere aren’t too many chances to make an impact in someone’s life, but if you move mountains and carve out time for your friend’s event, it’ll sustain a friendship for a long time.", sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/2018/01/18/smarter-living/how-to-maintain-friends.html", sponsorLogo: "", sponsorURL: "")
let friendsTip18 = Tip(header: "Be A Better Friend 👫", title: "Be aware that a healthy friendship needs 3 things:", body: "1. Positivity: laughter, affirmation, gratitude and any acts of service. \n\n2. Consistency, or having interactions on a continual basis, which makes people feel safe and close to each other. \n\n3. Vulnerability, which is the revealing and the sharing of our lives. \n\nIf you’re noticing a cooling with a friend, usually one of these areas needs special consideration.", sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/2018/01/18/smarter-living/how-to-maintain-friends.html", sponsorLogo: "", sponsorURL: "")
let friendsTip19 = Tip(header: "Choose Friends Carefully", title: "I've noticed that my friends with money talk about money. And I do not mean brag. They're interested in the subject.", body: "So I learn from them, and they learn from me. My friends, whom I know are in dire straits financially, do not like talking about money, business, or investing. They often think it's rude or unintellectual. \n\nSo I also learn from my friends who struggle financially. I find out what not to do. \n\n- Robert Kiyosaki \nAuthor of Rich Dad, Poor Dad", sourceName: "Rich Dad, Poor Dad", sourceURL: "https://www.amazon.com/Rich-Dad-Poor-Teach-Middle-ebook/dp/B0175P82RA", sponsorLogo: "", sponsorURL: "")
let friendsTip20 = Tip(header: "Be A Better Friend 👫", title: "Set regular hangout routines with your friends. It takes the guesswork out of scheduling quality time", body: "Schedule a weekly meal or movie night. \n\nOr, ask a friend to come to your favorite exercise class, join your book club, or accompany you to a volunteer gig. \n\nThe more things you can do together, potentially the more often you’ll be able to see each other. These repeated interactions are so important for keeping a friendship going.", sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/2018/01/18/smarter-living/how-to-maintain-friends.html", sponsorLogo: "", sponsorURL: "")

//6
let friendsTip21 = Tip(header: "Harvard Professor", title: "Continue to invest in your relationships even when they are going well", body: "The relationships you have with family and close friends are going to be the most important sources of happiness in your life. But you have to be careful. \n\nWhen it seems like everything at home is going well, you will be lulled into believing that you can put your investments in these relationships onto the back burner. \n\nThat would be an enormous mistake. By the time serious problems arise in those relationships, it often is too late to repair them. \n\nThis means, almost paradoxically, that the time when it is most important to invest in building strong families and close friendships is when it appears, at the surface, as if it's not necessary." , sourceName: "How Will You Measure Your Life? by Clayton Christensen", sourceURL: "https://www.amazon.com/dp/B006ID0CH4/", sponsorLogo: "", sponsorURL: "")
let friendsTip22 = Tip(header: "Find Your Tribe 👫", title: "Humans are social creatures that crave meaning (in a world that sometimes seems all too meaningless)", body: "In his book, Tribe, Sebastian Junger writes: “Humans don’t mind hardship, in fact, they thrive on it; what they mind is not feeling necessary. Modern society has perfected the art of making people not feel necessary. It’s time for that to end.” \n\nThink about what brings meaning to your life. That’s the first step to finding your tribe — your group of people that share similar vision and values.", sourceName: "Observer", sourceURL: "https://observer.com/2016/11/bulletproof-mind-6-secrets-of-mental-toughness-from-the-navy-seals/", sponsorLogo: "", sponsorURL: "")
let friendsTip23 = Tip(header: "Eliminate Negative People From Your Life", title: "Les Brown: Upgrade your relationships. You earn within $2,000 to $3,000 of your closest friends. You got to look at the people in your life and ask, \"what is this relationship doing to me?\"", body: "There are many people, because of the toxic negative energy draining people in their lives they will never be successful, because those toxic relationships will compromise their power. \n\nNow some people might say Les, can we change them? No! It’s a full time job changing yourself.", sourceName: "Fearless Motivation", sourceURL: "https://www.fearlessmotivation.com/2018/01/11/les-brown-you-have-greatness-in-you/", sponsorLogo: "", sponsorURL: "")
let friendsTip24 = Tip(header: "Increase Happiness", title: "Study: Belonging to multiple group memberships that are important to you boosts your self-esteem much more than having friends alone", body: "The researcher believes that group memberships provide benefits that friends alone do not; namely, meaning, connection, support and a sense of control over our lives. \n\nFor example, religious groups or organizations striving toward a goal such as reducing poverty can provide a greater sense of purpose.", sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2015/06/150615162617.htm", sponsorLogo: "", sponsorURL: "")

//7
let friendsTip25 = Tip(header: "Live Longer", title: "The next time your friend asks to meet for lunch, do it.", body: "Loneliness increases risk of early death by 45%, increases chances of a heart attack or stroke, and decreases immune function. \n\nHaving good social relationships are linked to positive emotions and may even increase immune function.", sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/doctors-secrets-longer-life/", sponsorLogo: "", sponsorURL: "")
let friendsTip26 = Tip(header: "Increase Happiness 😄", title: "When searching for friends, look for people who make you feel good about yourself and do their best to support you", body: "Even if it consists of only 1 or 2 people, having a group of friends you can trust and rely on will make your life far easier. \n\nIf a friend starts making you feel worthless, don’t be afraid to cut them out of your life. \n\nIt may be difficult, but it will make you far happier in the long-run." , sourceName: "wikiHow", sourceURL: "https://www.wikihow.com/Survive-High-School", sponsorLogo: "", sponsorURL: "")
let friendsTip27 = Tip(header: "Increase Success 👫", title: "Become friends with a variety of different people", body: "Everybody has something to contribute to your growth as a person, so try to interact with a lot of different people. \n\nBe nice to all the students you meet whether they are older or younger than you, that way you can slowly gain the respect of the entire school." , sourceName: "wikiHow", sourceURL: "https://www.wikihow.com/Survive-High-School", sponsorLogo: "", sponsorURL: "")


let friendsTipArray0 = [friendsTip1, friendsTip2, friendsTip3, friendsTip4]
let friendsTopic0 = Topic(title: friendsTitle, icon: friendsIcon, tip: friendsTipArray0)

let friendsTipArray1 = [friendsTip5, friendsTip6, friendsTip7, friendsTip8]
let friendsTopic1 = Topic(title: friendsTitle, icon: friendsIcon, tip: friendsTipArray1)

let friendsTipArray2 = [friendsTip9, friendsTip10, friendsTip11, friendsTip12]
let friendsTopic2 = Topic(title: friendsTitle, icon: friendsIcon, tip: friendsTipArray2)

let friendsTipArray3 = [friendsTip13, friendsTip14, friendsTip15, friendsTip16]
let friendsTopic3 = Topic(title: friendsTitle, icon: friendsIcon, tip: friendsTipArray3)

let friendsTipArray4 = [friendsTip17, friendsTip18, friendsTip19, friendsTip20]
let friendsTopic4 = Topic(title: friendsTitle, icon: friendsIcon, tip: friendsTipArray4)

let friendsTipArray5 = [friendsTip21, friendsTip22, friendsTip23, friendsTip24]

let friendsTipArray6 = [friendsTip25, friendsTip26, friendsTip20, friendsTip24]


// RANDOM
let friendsTipArrays = [friendsTipArray0, friendsTipArray1, friendsTipArray2, friendsTipArray3, friendsTipArray4, friendsTipArray5, friendsTipArray6]
let friendsTopic = Topic(title: friendsTitle, icon: friendsIcon, tip: friendsTipArrays.random())
let friendTopics = Topics(title: friendsTitle, icon: friendsIcon, topics: [friendsTopic])






// MARK: - Motivate

/*

 “ - quotation

 */

let motivateAMTitle = "Motivation"
let motivateDayTitle = "Inspiration"
let motivateAfterTitle = "Wisdom"
let motivatePMTitle = "Relect"
let motivateIcon = Constants.Icon.quote



//AM
//1
let motivateAMTip1 = Tip(header: "Quote", title: "When you arise in the morning, think of what a precious privilege it is to be alive - to breathe, to think, to enjoy, to love.", body: "- Marcus Aurelius \n\nRoman emperor and a Stoic philosopher." , sourceName: "Brainy Quote", sourceURL: "https://www.brainyquote.com/topics/morning", sponsorLogo: "", sponsorURL: "")
let motivateAMTip2 = Tip(header: "Quote", title: "All our dreams can come true, if we have the courage to pursue them.", body: "- Walt Disney" , sourceName: "Inc.", sourceURL: "https://www.inc.com/lolly-daskal/24-empowering-quotes-to-start-your-day-right.html", sponsorLogo: "", sponsorURL: "")
let motivateAMTip3 = Tip(header: "Quote", title: "We all have the ability to come from nothing to something.", body: "- David Goggins \n\nRetired US Navy SEAL" , sourceName: "Fearless Motivation", sourceURL: "https://www.fearlessmotivation.com/2017/07/24/david-goggins-quotes/", sponsorLogo: "", sponsorURL: "")
let motivateAMTip4 = Tip(header: "Quote", title: "If you can't fly then run, if you can't run then walk, if you can't walk then crawl, but whatever you do you have to keep moving forward.", body: "- Martin Luther King Jr. \n\nAmerican minister who became the most visible spokesperson and leader in the civil rights movement from 1955 until his assassination in 1968." , sourceName: "Wisdom To Inspire", sourceURL: "https://wisdomtoinspire.com/t/martin-luther-king-jr/4ke9wU2P/if-you-cant-fly-then-run", sponsorLogo: "", sponsorURL: "")


//2
let motivateAMTip5 = Tip(header: "Quote", title: "Every morning, my dad would have me looking in the mirror and repeat, 'Today is going to be a great day; I can, and I will.'", body: "- Gina Rodriguez \n\nAmerican actress and director." , sourceName: "Brainy Quote", sourceURL: "https://www.brainyquote.com/topics/morning", sponsorLogo: "", sponsorURL: "")
let motivateAMTip6 = Tip(header: "Quote", title: "If you really want to do something, you'll find a way. If you don't, you'll find an excuse.", body: "- Jim Rohn \n\nAmerican entrepreneur, author and motivational speaker." , sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/quotes/297774-if-you-really-want-to-do-something-you-ll-find-a", sponsorLogo: "", sponsorURL: "")
let motivateAMTip7 = Tip(header: "Quote", title: "If you’re changing the world, you’re working on important things. You’re excited to get up in the morning.", body: "- Larry Page \n\nCo-founder of Google" , sourceName: "Parade", sourceURL: "https://parade.com/936820/parade/good-morning-quotes/", sponsorLogo: "", sponsorURL: "")
let motivateAMTip8 = Tip(header: "Quote", title: "Whether it's eight o'clock in the morning or eight o'clock at night, I always try to greet others before they have a chance to speak to me.", body: "- Zig Ziglar \n\nAmerican World War II veteran, author and motivational speaker." , sourceName: "Brainy Quote", sourceURL: "https://www.brainyquote.com/topics/morning", sponsorLogo: "", sponsorURL: "")


//3
let motivateAMTip9 = Tip(header: "Quote", title: "Morning is an important time of day, because how you spend your morning can often tell you what kind of day you are going to have.", body: "- Daniel Handler \n\nAmerican writer and musician." , sourceName: "AZ Quotes", sourceURL: "https://www.azquotes.com/quote/359453", sponsorLogo: "", sponsorURL: "")

let motivateAMTip10 = Tip(header: "Quote", title: "Don't think in the morning. That's a big mistake that people make. They wake up in the morning and they start thinking. Don't think. Just execute the plan. The plan is the alarm clock goes off, you get up, you go work out. Get some.\"", body: "- Jocko Willink \n\nRetired US Navy SEAL, podcaster, and author." , sourceName: "Brainy Quote", sourceURL: "https://www.brainyquote.com/topics/morning", sponsorLogo: "", sponsorURL: "")

let motivateAMTip11 =  Tip(header: "Quote", title: "An early-morning walk is a blessing for the whole day.", body: "- Henry David Thoreau \n\nAmerican author, poet, and philosopher." , sourceName: "Brainy Quote", sourceURL: "https://www.brainyquote.com/topics/morning", sponsorLogo: "", sponsorURL: "")
let motivateAMTip12 = Tip(header: "Quote", title: "Be pleasant until ten o'clock in the morning and the rest of the day will take care of itself.", body: "- Elbert Hubbard \n\nAmerican writer, artist, and philosopher." , sourceName: "Everyday Power", sourceURL: "https://everydaypower.com/morning-quotes/", sponsorLogo: "", sponsorURL: "")


//4
let motivateAMTip13 = Tip(header: "Quote", title: "Let today be the day you give up who you’ve been for who you can become.", body: "- Hal Elrod \n\nAmerican writer and bestselling author." , sourceName: "Wisdom Quotes", sourceURL: "https://wisdomquotes.com/good-morning-quotes/", sponsorLogo: "", sponsorURL: "")
let motivateAMTip14 = Tip(header: "Quote", title: "Start every day off with a smile and get it over with.", body: "-W. C. Fields \n\nAmerican comedian, actor, and writer." , sourceName: "Wisdom Quotes", sourceURL: "https://wisdomquotes.com/good-morning-quotes/", sponsorLogo: "", sponsorURL: "")
let motivateAMTip15 = Tip(header: "Quote", title: "Just one small positive thought in the morning can change your whole day.", body: "- Dalai Lama \n\nThe spiritual leader of the Tibetan people." , sourceName: "Wisdom Quotes", sourceURL: "https://wisdomquotes.com/good-morning-quotes/", sponsorLogo: "", sponsorURL: "")
let motivateAMTip16 = Tip(header: "Quote", title: "That nice, soft pillow and the warm blanket, and it's all comfortable, and no one wants to leave that comfort - but if you can wake up early in the morning, get a head start on everyone else that's still sleeping, get productive time doing things that you need to do - that's a huge piece to moving your life forward.", body: "- Jocko Willink \n\nRetired US Navy SEAL, podcaster, and author." , sourceName: "Brainy Quote", sourceURL: "https://www.brainyquote.com/topics/morning", sponsorLogo: "", sponsorURL: "")


//5
let motivateAMTip17 = Tip(header: "Quote", title: "Smile in the mirror. Do that every morning and you’ll start to see a big difference in your life.", body: "- Yoko Ono \n\nJapanese-American multimedia artist, singer, songwriter and peace activist." , sourceName: "Wisdom Quotes", sourceURL: "https://wisdomquotes.com/good-morning-quotes/", sponsorLogo: "", sponsorURL: "")
let motivateAMTip18 = Tip(header: "Quote", title: "Every morning, I wake up saying, I’m still alive, a miracle. And so I keep on pushing.", body: "- Jim Carrey \n\nCanadian-American actor, comedian, and artist." , sourceName: "Wisdom Quotes", sourceURL: "https://wisdomquotes.com/good-morning-quotes/", sponsorLogo: "", sponsorURL: "")
let motivateAMTip19 = Tip(header: "Quote", title: "I remind myself every morning: Nothing I say this day will teach me anything. So if I’m going to learn, I must do it by listening.", body: "- Larry King \n\nAmerican television and radio host." , sourceName: "Wisdom Quotes", sourceURL: "https://wisdomquotes.com/good-morning-quotes/", sponsorLogo: "", sponsorURL: "")
let motivateAMTip20 = Tip(header: "Quote", title: "I’ve learned that every day you should reach out and touch someone. People love a warm hug, or just a friendly pat on the back.", body: "- Maya Angelou \n\nAmerican poet, singer, and civil rights activist." , sourceName: "Wisdom Quotes", sourceURL: "https://wisdomquotes.com/good-morning-quotes/", sponsorLogo: "", sponsorURL: "")

//6
let motivateAMTip21 = Tip(header: "Quote", title: "Do not shorten the morning by getting up late; look upon it as the quintessence of life, as to a certain extent sacred.", body: "- Arthur Schopenhauer \n\nGerman philosopher." , sourceName: "Develop Good Habits", sourceURL: "https://www.developgoodhabits.com/good-morning-quotes/", sponsorLogo: "", sponsorURL: "")
let motivateAMTip22 = Tip(header: "Quote", title: "The people who get on in this world are the people who get up and look for the circumstances they want and if they can’t find them, make them.", body: "- George Bernard Shaw \n\nIrish playwright, critic, and political activist." , sourceName: "Wisdom Quotes", sourceURL: "https://wisdomquotes.com/good-morning-quotes/", sponsorLogo: "", sponsorURL: "")
let motivateAMTip23 = Tip(header: "Quote", title: "Your entire life changes the day that you decide you will no longer accept mediocrity for yourself.", body: "- Hal Elrod \n\nAmerican writer and bestselling author." , sourceName: "Wisdom Quotes", sourceURL: "https://wisdomquotes.com/good-morning-quotes/", sponsorLogo: "", sponsorURL: "")
let motivateAMTip24 = Tip(header: "Quote", title: "A life without a purpose is a languid, drifting thing. Every day we ought to renew our purpose, saying to ourselves: This day let us make a sound beginning.", body: "- Thomas A Kempis \n\nPriest, monk, and writer." , sourceName: "Develop Good Habits", sourceURL: "https://www.developgoodhabits.com/good-morning-quotes/", sponsorLogo: "", sponsorURL: "")

//7
let motivateAMTip25 = Tip(header: "Quote", title: "The sun is a daily reminder that we too can rise again from the darkness, that we too can shine our own light.", body: "- Sara Ajna \n\nArtist, writer and poet." , sourceName: "Develop Good Habits", sourceURL: "https://www.developgoodhabits.com/good-morning-quotes/", sponsorLogo: "", sponsorURL: "")
let motivateAMTip26 = Tip(header: "Quote", title: "It's the repetition of affirmations that leads to belief. And once that belief becomes a deep conviction, things begin to happen.", body: "- Muhammad Ali \n\nAmerican professional boxer and activist." , sourceName: "Wonderful Quote", sourceURL: "https://www.wonderfulquote.com/a/muhammad-ali-quotes", sponsorLogo: "", sponsorURL: "")
let motivateAMTip27 = Tip(header: "Quote", title: "Determine that the thing can and shall be done, and then we shall find the way.", body: "- Abraham Lincoln \n\nHe suffered a series of lost elections (along with some successes) before he went on to become one of the greatest US presidents." , sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/quotes/204719-determine-that-the-thing-can-and-shall-be-done-and", sponsorLogo: "", sponsorURL: "")
let motivateAMTip28 = Tip(header: "Quote", title: "There comes a time when you ought to start doing what you want. Take a job that you love. You will jump out of bed in the morning. \n\nI think you are out of your mind if you keep taking jobs that you don't like because you think that it will look good on your résumé. Isn't that a little like saving up sex for your old age?", body: "- Warren Buffett \n\nInvestor and CEO of Berkshire Hathaway" , sourceName: "Wonderful Quote", sourceURL: "https://www.wonderfulquote.com/a/warren-buffett-quotes", sponsorLogo: "", sponsorURL: "")

//8
let motivateAMTip29 = Tip(header: "Quote", title: "The way to own your life is to own your day. Today. Because that's all you have.", body: "- Aubrey Marcus \n\nFounder and CEO of Onnit" , sourceName: "Awaken The Greatness Within", sourceURL: "https://www.awakenthegreatnesswithin.com/34-inspirational-marcus-aurelius-quotes/", sponsorLogo: "", sponsorURL: "")

let motivateAMTip30 = Tip(header: "Quote", title: "Some people dream of success, while other people get up every morning and make it happen.", body: "- Wayne Huizenga \n\nFounder of the Fortune 500 companies Waste Management, AutoNation, and Blockbuster Video." , sourceName: "Brainy Quote", sourceURL: "", sponsorLogo: "", sponsorURL: "")

let motivateAMTip31 = Tip(header: "Quote", title: "Don’t expect to be motivated every day to get out there and make things happen. You won’t be. Don’t count on motivation. Count on Discipline.", body: "- Jocko Willink \n\nRetired US Navy SEAL, podcaster, and author." , sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/author/quotes/10803973.Jocko_Willink", sponsorLogo: "", sponsorURL: "")

let motivateAMTip32 = Tip(header: "Quote", title: "If you're bored with life - you don't get up every morning with a burning desire to do things - you don't have enough goals.", body: "- Lou Holtz \n\nFormer American football player, coach, and analyst." , sourceName: "Brainy Quote", sourceURL: "https://www.brainyquote.com/topics/morning", sponsorLogo: "", sponsorURL: "")


//9
let motivateAMTip33 = Tip(header: "Quote", title: "Why live an ordinary life, when you can live an extraordinary one.", body: "- Tony Robbins \n\nBest-selling author, life and business strategist, and entrepreneur." , sourceName: "Goalcast", sourceURL: "https://www.goalcast.com/2016/08/18/top-20-inspiring-tony-robbins-quotes/", sponsorLogo: "", sponsorURL: "")
let motivateAMTip34 = Tip(header: "Quote", title: "Don't settle for average. Bring your best to the moment. Then, whether it fails or succeeds, at least you know you gave all you had.", body: "- Angela Bassett \n\nAmerican actress and activist" , sourceName: "Inc.", sourceURL: "https://www.inc.com/lolly-daskal/24-empowering-quotes-to-start-your-day-right.html", sponsorLogo: "", sponsorURL: "")

let motivateAMTip35 = Tip(header: "Quote", title: "You have power over your mind – not outside events. Realize this, and you will find strength.", body: "-  Marcus Aurelius \n\nRoman emperor and a Stoic philosopher." , sourceName: "Own the Day, Own Your Life", sourceURL: "https://www.amazon.com/Own-Day-Your-Life-Optimized-ebook/dp/B072HLS5QJ", sponsorLogo: "", sponsorURL: "")

let motivateAMTip36 = Tip(header: "Quote", title: "You may be disappointed if you fail, but you are doomed if you don't try.", body: "- Beverly Sills \n\nAmerican opera singer." , sourceName: "Inc.", sourceURL: "https://www.inc.com/lolly-daskal/24-empowering-quotes-to-start-your-day-right.html", sponsorLogo: "", sponsorURL: "")


//10
let motivateAMTip37 = Tip(header: "Quote", title: "The journey of a thousand miles begins with one step.", body: "- Lao Tzu \n\nChinese philosopher" , sourceName: "Inc.", sourceURL: "https://www.inc.com/lolly-daskal/24-empowering-quotes-to-start-your-day-right.html", sponsorLogo: "", sponsorURL: "")
let motivateAMTip38 = Tip(header: "Quote", title: "There will be obstacles. There will be doubters. There will be mistakes. But with hard work, there are no limits.", body: "- Michael Phelps \n\nThe most successful and most decorated Olympian of all time, with a total of 28 medals." , sourceName: "Inc.", sourceURL: "https://www.inc.com/lolly-daskal/24-empowering-quotes-to-start-your-day-right.html", sponsorLogo: "", sponsorURL: "")
let motivateAMTip39 = Tip(header: "Quote", title: "Too many of us are not living our dreams because we are living our fears.", body: "- Les Brown \n\nBorn into poverty and abandoned as a child, he went on to become one of America’s best-known motivational speakers." , sourceName: "Inc.", sourceURL: "https://www.inc.com/lolly-daskal/24-empowering-quotes-to-start-your-day-right.html", sponsorLogo: "", sponsorURL: "")
let motivateAMTip40 = Tip(header: "Quote", title: "Create a vision and never let the environment, other people’s beliefs, or the limits of what has been done in the past shape your decisions.", body: "- Tony Robbins \n\nBest-selling author, life and business strategist, and entrepreneur." , sourceName: "Awaken The Greatness Within", sourceURL: "https://www.awakenthegreatnesswithin.com/68-inspirational-tony-robbins-quotes-to-awaken-the-giant-within/", sponsorLogo: "", sponsorURL: "")



//11
let motivateAMTip41 = Tip(header: "Quote", title: "The happiness of your life depends upon the quality of your thoughts; therefore guard accordingly.", body: "-  Marcus Aurelius \n\nRoman emperor and a Stoic philosopher." , sourceName: "Awaken The Greatness Within", sourceURL: "https://www.awakenthegreatnesswithin.com/34-inspirational-marcus-aurelius-quotes/", sponsorLogo: "", sponsorURL: "")
let motivateAMTip42 = Tip(header: "Quote", title: "If you get up in the morning and think the future is going to be better, it is a bright day. Otherwise, it's not.", body: "- Elon Musk \n\nEntrepreneur, investor, and engineer." , sourceName: "Brainy Quote", sourceURL: "https://www.brainyquote.com/topics/morning", sponsorLogo: "", sponsorURL: "")
let motivateAMTip43 = Tip(header: "Quote", title: "Always be a first-rate version of yourself, instead of a second-rate version of somebody else.", body: "- Judy Garland \n\nAmerican actress, singer, and dancer." , sourceName: "Inc.", sourceURL: "https://www.inc.com/lolly-daskal/24-empowering-quotes-to-start-your-day-right.html", sponsorLogo: "", sponsorURL: "")
let motivateAMTip44 = Tip(header: "Quote", title: "Every day stand guard at the door of your mind, and you alone decide what thoughts and beliefs you let into your life. For they will shape whether you feel rich or poor, cursed or blessed.", body: "- Tony Robbins \n\nBest-selling author, life and business strategist, and entrepreneur." , sourceName: "Awaken The Greatness Within", sourceURL: "https://www.awakenthegreatnesswithin.com/68-inspirational-tony-robbins-quotes-to-awaken-the-giant-within/", sponsorLogo: "", sponsorURL: "")

//12
let motivateAMTip45 = Tip(header: "Quote", title: "Challenge yourself everyday to do better and be better. Remember, growth starts with a decision to move beyond your present circumstances.", body: "- Robert Tew \n\nBritish former pro rugby league footballer.", sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/author/quotes/13848712.Robert_Tew?page=2", sponsorLogo: "", sponsorURL: "")
let motivateAMTip46 = Tip(header: "Quote", title: "Tough times never last, but tough people do.", body: "- Jack Canfield \n\nAmerican pastor, motivational speaker, and author." , sourceName: "Inc.", sourceURL: "https://www.inc.com/lolly-daskal/24-empowering-quotes-to-start-your-day-right.html", sponsorLogo: "", sponsorURL: "")
let motivateAMTip47 = Tip(header: "Quote", title: "A year from now you may wish you had started today.", body: "- Lao Tzu \n\nCanadian author" , sourceName: "Inc.", sourceURL: "https://www.inc.com/lolly-daskal/24-empowering-quotes-to-start-your-day-right.html", sponsorLogo: "", sponsorURL: "")
let motivateAMTip48 = Tip(header: "Quote", title: "Most people have no idea of the giant capacity we can immediately command when we focus all of our resources on mastering a single area of our lives.", body: "- Tony Robbins \n\nBest-selling author, life and business strategist, and entrepreneur." , sourceName: "Awaken The Greatness Within", sourceURL: "https://www.awakenthegreatnesswithin.com/68-inspirational-tony-robbins-quotes-to-awaken-the-giant-within/", sponsorLogo: "", sponsorURL: "")

//13
let motivateAMTip49 = Tip(header: "Quote", title: "Real living is living for others.", body: "- Bruce Lee \n\nActor, martial artist, philosopher, and founder of the martial art Jeet Kune Do", sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/search?utf8=%E2%9C%93&q=bruce+lee&search_type=quotes", sponsorLogo: "", sponsorURL: "")
let motivateAMTip50 = Tip(header: "Quote", title: "You can get everything in life you want if you will just help enough other people get what they want.", body: "- Zig Ziglar \n\nAmerican World War II veteran, author and motivational speaker." , sourceName: "Inc.", sourceURL: "https://www.inc.com/lolly-daskal/24-empowering-quotes-to-start-your-day-right.html", sponsorLogo: "", sponsorURL: "")
let motivateAMTip51 = Tip(header: "Quote", title: "I challenge you to make your life a masterpiece. \n\nI challenge you to join the ranks of those people who live what they teach, who walk their talk.", body: "- Tony Robbins \n\nTony Robbins is a best-selling author, life and business strategist, and entrepreneur." , sourceName: "Goalcast", sourceURL: "https://www.goalcast.com/2016/08/18/top-20-inspiring-tony-robbins-quotes/", sponsorLogo: "", sponsorURL: "")
let motivateAMTip52 = Tip(header: "Quote", title: "Imagine your mind like a garden and your thoughts are the seeds. You can plant seeds of positivity, love, and abundance. Or you can plant seeds of negativity, fear, and shame. \n\nYou can also spend time trying to take care of everyone else’s garden. Or you can work on making yours beautiful and attract other beautiful people to your garden.", body: "- Jake Woodard \n\nAuthor and speaker" , sourceName: "The Minds Journal", sourceURL: "https://themindsjournal.com/imagine-your-mind-like-a-garden-and-your-thoughts-are-the-seeds/", sponsorLogo: "", sponsorURL: "")


//14
let motivateAMTip53 = Tip(header: "Quote", title: "If there is no struggle, there is no progress.", body: "- Cicero \n\nRoman statesman and philosopher" , sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/quotes/6398-if-there-is-no-struggle-there-is-no-progress-those", sponsorLogo: "", sponsorURL: "")

 let motivateAMTip54 = Tip(header: "Quote", title: "Discipline starts every day when the first alarm clock goes off in the morning. The moment the alarm goes off is the first test; it sets the tone for the rest of the day.The test is not a complex one: when the alarm goes off, do you get up out of bed, or do you lie there in comfort and fall back to sleep? If you have the discipline to get out of bed, you win — you pass the test.", body: "If you are mentally weak for that moment and you let that weakness keep you in bed, you fail. Though it seems small, that weakness translates to more significant decisions. But if you exercise discipline, that too translates to more substantial elements of your life. \n\n- Jocko Willink \n\nRetired US Navy SEAL, podcaster, and author." , sourceName: "Extreme Ownership: How U.S. Navy SEALs Lead and Win", sourceURL: "https://www.amazon.com/Extreme-Ownership-U-S-Navy-SEALs/dp/1250067057", sponsorLogo: "", sponsorURL: "")

let motivateAMTip55 = Tip(header: "Quote", title: "Your time is limited, so don't waste it living someone else's life. Don't let the noise of other's opinions drown out your own inner voice. \n\nHave the courage to follow your heart and intuition. They somehow already know what you truly want to become.", body: "- Steve Jobs" , sourceName: "Inc.", sourceURL: "https://www.inc.com/lolly-daskal/24-empowering-quotes-to-start-your-day-right.html", sponsorLogo: "", sponsorURL: "")

let motivateAMTip56 = Tip(header: "Quote", title: "How am I going to live today in order to create the tomorrow I’m committed to?", body: "- Tony Robbins \n\nBest-selling author, life and business strategist, and entrepreneur." , sourceName: "Awaken The Greatness Within", sourceURL: "https://www.awakenthegreatnesswithin.com/68-inspirational-tony-robbins-quotes-to-awaken-the-giant-within/", sponsorLogo: "", sponsorURL: "")

//15
let motivateAMTip57 = Tip(header: "Quote", title: "No one changes the world who isn’t obsessed.", body: "- Billie Jean King \n\nAmerican former World No. 1 professional tennis player." , sourceName: "Brainy Quote", sourceURL: "https://www.brainyquote.com/quotes/billie_jean_king_378093", sponsorLogo: "", sponsorURL: "")
let motivateAMTip58 = Tip(header: "Quote", title: "Some people want it to happen, some wish it would happen, others make it happen.", body: "- Michael Jordan Regarded by most as the NBA's greatest all-time player" , sourceName: "Brainy Quote", sourceURL: "https://www.brainyquote.com/quotes/michael_jordan_167382", sponsorLogo: "", sponsorURL: "")

let motivateAMTip59 = Tip(header: "Quote", title: "If you don’t like the road you’re walking, start paving another one.", body: "- Dolly Parton \n\nAmerican singer, songwriter, and actress" , sourceName: "Brainy Quote", sourceURL: "https://www.brainyquote.com/quotes/dolly_parton_383701", sponsorLogo: "", sponsorURL: "")
let motivateAMTip60 = Tip(header: "Quote", title: "It’s your unlimited power to create and to love that can make the biggest difference in the quality of your life.", body: "- Tony Robbins \n\nBest-selling author, life and business strategist, and entrepreneur." , sourceName: "Awaken The Greatness Within", sourceURL: "https://www.awakenthegreatnesswithin.com/68-inspirational-tony-robbins-quotes-to-awaken-the-giant-within/", sponsorLogo: "", sponsorURL: "")

//16
let motivateAMTip61 = Tip(header: "Quote", title: "Courage is like a muscle. We strengthen it with use.", body: "- Ruth Gordon \n\nAmerican film, stage, and television actress" , sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/quotes/308166-courage-is-like-a-muscle-we-strengthen-it-with-use", sponsorLogo: "", sponsorURL: "")
let motivateAMTip62 = Tip(header: "Quote", title: "Too many of us are not living our dreams because we are living our fears.", body: "- Grandma Moses \n\nShe successfully began a painting career at the age of 78." , sourceName: "Inc.", sourceURL: "https://www.inc.com/lolly-daskal/24-empowering-quotes-to-start-your-day-right.html", sponsorLogo: "", sponsorURL: "")
let motivateAMTip63 = Tip(header: "Quote", title: "Don't worry about failures; worry about the chances you miss when you don't even try.", body: "- Jack Canfield \n\nAmerican author, motivational speaker, and entrepreneur" , sourceName: "Inc.", sourceURL: "https://www.inc.com/lolly-daskal/24-empowering-quotes-to-start-your-day-right.html", sponsorLogo: "", sponsorURL: "")
let motivateAMTip64 = Tip(header: "Quote", title: "More is lost by indecision than wrong decision.", body: "- Marcus Tullius Cicero \n\nRoman statesman and philosopher" , sourceName: "Brainy Quote", sourceURL: "https://www.brainyquote.com/quotes/dale_carnegie_130712", sponsorLogo: "", sponsorURL: "")

//17
let motivateAMTip65 = Tip(header: "Quote", title: "The most difficult thing is the decision to act, the rest is merely tenacity.", body: "- Amelia Earhart \n\nShe was the first female aviator to fly solo across the Atlantic Ocean." , sourceName: "Brainy Quote", sourceURL: "https://www.brainyquote.com/quotes/amelia_earhart_120929", sponsorLogo: "", sponsorURL: "")
let motivateAMTip66 = Tip(header: "Quote", title: "If it makes you nervous, you’re doing it right.", body: "- Donald Glover \n\nAmerican actor, comedian, writer, producer, director, musician, and DJ." , sourceName: "AZ Quotes", sourceURL: "https://www.azquotes.com/quote/869338", sponsorLogo: "", sponsorURL: "")
let motivateAMTip67 = Tip(header: "Quote", title: "Develop success from failures. Discouragement and failure are two of the surest stepping stones to success.", body: "- Dale Carnegie \n\nAmerican author and lecturer." , sourceName: "Brainy Quote", sourceURL: "https://www.brainyquote.com/quotes/dale_carnegie_130712", sponsorLogo: "", sponsorURL: "")
let motivateAMTip68 = Tip(header: "Quote", title: "Life can be much broader once you discover one simple fact: Everything around you that you call life was made up by people that were no smarter than you. And you can change it, you can influence it… Once you learn that, you'll never be the same again.", body: "- Steve Jobs" , sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/quotes/653020-when-you-grow-up-you-tend-to-get-told-that", sponsorLogo: "", sponsorURL: "")

//18
let motivateAMTip69 = Tip(header: "Quote", title: "You don’t have to be great to start, but you have to start to be great.", body: "- Zig Ziglar \n\nAmerican World War II veteran, author and motivational speaker." , sourceName: "Brainy Quote", sourceURL: "https://www.brainyquote.com/quotes/zig_ziglar_617778", sponsorLogo: "", sponsorURL: "")
let motivateAMTip70 = Tip(header: "Quote", title: "The way to get started is to quit talking and begin doing.", body: "- Walt Disney" , sourceName: "Inc.", sourceURL: "https://www.inc.com/jayson-demers/51-quotes-to-inspire-success-in-your-life-and-business.html", sponsorLogo: "", sponsorURL: "")
let motivateAMTip71 = Tip(header: "Quote", title: "There are no secrets to success. It is the result of preparation, hard work, and learning from failure.", body: "- Colin Powell \n\nRetired four-star general in the US Army" , sourceName: "Inc.", sourceURL: "https://www.inc.com/jayson-demers/51-quotes-to-inspire-success-in-your-life-and-business.html", sponsorLogo: "", sponsorURL: "")
let motivateAMTip72 = Tip(header: "Quote", title: "Would you like me to give you a formula for success? It's quite simple, really: Double your rate of failure. You are thinking of failure as the enemy of success. But it isn't at all. You can be discouraged by failure or you can learn from it, so go ahead and make mistakes. Make all you can. Because remember that's where you will find success.", body: "- Thomas J. Watson \n\nFormer CEO of IBM" , sourceName: "Inc.", sourceURL: "https://www.inc.com/jayson-demers/51-quotes-to-inspire-success-in-your-life-and-business.html", sponsorLogo: "", sponsorURL: "")

//19
let motivateAMTip73 = Tip(header: "Quote", title: "The secret to getting ahead is getting started.", body: "- Mark Twain \n\nAmerican writer and entrepreneur" , sourceName: "Wisdom Quotes", sourceURL: "https://wisdomquotes.com/good-morning-quotes/", sponsorLogo: "", sponsorURL: "")
let motivateAMTip74 = Tip(header: "Quote", title: "You gotta start your journey. It may suck, but eventually you will come out the other side on top.", body: "- David Goggins \n\nRetired US Navy SEAL" , sourceName: "Inc.", sourceURL: "https://www.inc.com/peter-economy/50-wise-quotes-that-will-inspire-you-to-success-in-life.html", sponsorLogo: "", sponsorURL: "")

let motivateAMTip75 = Tip(header: "Quote", title: "There is no passion to be found playing small--in settling for a life that is less than the one you are capable of living.", body: "- Nelson Mandela \n\nHe was a South African anti-apartheid revolutionary and political leader." , sourceName: "Inc.", sourceURL: "https://www.inc.com/peter-economy/50-wise-quotes-that-will-inspire-you-to-success-in-life.html", sponsorLogo: "", sponsorURL: "")
let motivateAMTip76 = Tip(header: "Quote", title: "Every morning in our lives, we have a choice to make. You have the choice to stay in bed and say ‘Forget it, I’m not going to work out today.’ or ‘Forget it, I’m not going to work hard today.’ \n\nThat’s your choice that you make every single day of your life. Make the right decision.", body: "- David Goggins \n\nRetired US Navy SEAL", sourceName: "Brilliant Read", sourceURL: "https://www.brilliantread.com/15-best-ever-david-goggins-quotes-on-success-and-failures/", sponsorLogo: "", sponsorURL: "")

//20
let motivateAMTip77 = Tip(header: "Quote", title: "You will get all you want in life, if you help enough other people get what they want.", body: "- Zig Ziglar \n\nWorld War II veteran, author and motivational speaker.", sourceName: "Brilliant Read", sourceURL: "https://www.brilliantread.com/15-best-ever-david-goggins-quotes-on-success-and-failures/", sponsorLogo: "", sponsorURL: "")
let motivateAMTip78 = Tip(header: "Quote", title: "People often say motivation doesn’t last. Neither does bathing—that’s why we recommend it daily.", body: "- Zig Ziglar \n\nWorld War II veteran, author and motivational speaker.", sourceName: "Brilliant Read", sourceURL: "https://www.brilliantread.com/15-best-ever-david-goggins-quotes-on-success-and-failures/", sponsorLogo: "", sponsorURL: "")
let motivateAMTip79 = Tip(header: "Quote", title: "I’m a big believer of doing something that sucks every single day of your life. I believe it’s a key component into strengthening your mind.", body: "- David Goggins \n\nRetired US Navy SEAL", sourceName: "Brilliant Read", sourceURL: "https://www.brilliantread.com/15-best-ever-david-goggins-quotes-on-success-and-failures/", sponsorLogo: "", sponsorURL: "")
let motivateAMTip80 = Tip(header: "Quote", title: "Life is full of difficult times. But someone out there always has it worse than you do. \n\nIf you fill your days with pity, sorrowful for the way you have been treated, blaming your circumstances on someone or something else, then life will be long and hard. \n\nIf, on the other hand, you refuse to give up on your dreams, stand tall and strong against the odds - then life will be what you make of it - and you can make it great. \n\nNever, ever, quit!", body: "- Admiral William H. McRaven", sourceName: "Make Your Bed: Little Things That Can Change Your Life...And Maybe the World, by Admiral William H. McRaven", sourceURL: "https://www.amazon.com/Make-Your-Bed-Little-Things/dp/1455570249", sponsorLogo: "", sponsorURL: "")

//21
let motivateAMTip81 = Tip(header: "Quote", title: "You are what you do every day", body: "- Jon Chu \n\nAmerican filmmaker", sourceName: "Medium", sourceURL: "https://medium.com/@twcurren/you-are-what-you-do-every-day-7938eab0419f", sponsorLogo: "", sponsorURL: "")

let motivateAMTip82 = Tip(header: "Quote", title: "Just believe in yourself. Even if you don’t, pretend that you do and, at some point, you will.", body: "Venus Williams \n\nAmerican professional tennis player", sourceName: "Goalcast", sourceURL: "https://www.goalcast.com/2018/07/16/confidence-quotes/", sponsorLogo: "", sponsorURL: "")

let motivateAMTip83 = Tip(header: "Quote", title: "If you can’t fly, run. If you can’t run, walk. If you can’t walk, crawl, but by all means, keep moving.", body: "- Dr. Martin Luther King Jr.", sourceName: "Medium", sourceURL: "https://medium.com/@lucaswonders/finding-your-lifes-blueprint-template-for-reflection-based-on-mlk-s-1967-speech-aec875ceacd9", sponsorLogo: "", sponsorURL: "")
let motivateAMTip84 = Tip(header: "Quote", title: "Every day is a battle because your mind wants to choose the path of least resistance, every day. But you don't become better by doing that. You become normal, and I don't want to be normal.", body: "- David Goggins", sourceName: "Success Chasers: David Goggins Motivation", sourceURL: "https://www.youtube.com/watch?v=Gx5r0ZsIlBs", sponsorLogo: "", sponsorURL: "")


//22
let motivateAMTip85 = Tip(header: "Quote - Morning Gratitude", title: "You can immediately increase your life by waking up every day and start being grateful.", body: "Don't check your phone. Don't check your text messages. \n\nWake up every morning just start saying thank you for your life, your kids, your job, your home, your food, your clothes, your money, your car, your partner... \n\nAnd then immediately after that you'll have a better day. \n\n- Steve Harvey", sourceName: "Daily Gratitude | The Offical Steve Harvey", sourceURL: "https://www.youtube.com/watch?v=vBS1aQ8uudI", sponsorLogo: "", sponsorURL: "")



//AM
//WEEK 1
let motivateAMTipArray0 = [motivateAMTip1, motivateAMTip2, motivateAMTip3, motivateAMTip4]
let motivateAMTopic0 = Topic(title: motivateAMTitle, icon: motivateIcon, tip: motivateAMTipArray0)

let motivateAMTipArray1 = [motivateAMTip5, motivateAMTip6, motivateAMTip7, motivateAMTip8]
let motivateAMTopic1 = Topic(title: motivateAMTitle, icon: motivateIcon, tip: motivateAMTipArray1)

let motivateAMTipArray2 = [motivateAMTip9, motivateAMTip10, motivateAMTip11, motivateAMTip12]
let motivateAMTopic2 = Topic(title: motivateAMTitle, icon: motivateIcon, tip: motivateAMTipArray2)

let motivateAMTipArray3 = [motivateAMTip13, motivateAMTip14, motivateAMTip15, motivateAMTip16]
let motivateAMTopic3 = Topic(title: motivateAMTitle, icon: motivateIcon, tip: motivateAMTipArray3)

let motivateAMTipArray4 = [motivateAMTip17, motivateAMTip18, motivateAMTip19, motivateAMTip20]
let motivateAMTopic4 = Topic(title: motivateAMTitle, icon: motivateIcon, tip: motivateAMTipArray4)

let motivateAMTipArray5 = [motivateAMTip21, motivateAMTip22, motivateAMTip23, motivateAMTip24]
let motivateAMTopic5 = Topic(title: motivateAMTitle, icon: motivateIcon, tip: motivateAMTipArray5)

let motivateAMTipArray6 = [motivateAMTip25, motivateAMTip26, motivateAMTip27, motivateAMTip28]
let motivateAMTopic6 = Topic(title: motivateAMTitle, icon: motivateIcon, tip: motivateAMTipArray6)


//WEEK 2
let motivateAMTipArray7 = [motivateAMTip29, motivateAMTip30, motivateAMTip31, motivateAMTip32]
let motivateAMTopic7 = Topic(title: motivateAMTitle, icon: motivateIcon, tip: motivateAMTipArray7)

let motivateAMTipArray8 = [motivateAMTip33, motivateAMTip34, motivateAMTip35, motivateAMTip36]
let motivateAMTopic8 = Topic(title: motivateAMTitle, icon: motivateIcon, tip: motivateAMTipArray8)

let motivateAMTipArray9 = [motivateAMTip37, motivateAMTip38, motivateAMTip39, motivateAMTip40]
let motivateAMTopic9 = Topic(title: motivateAMTitle, icon: motivateIcon, tip: motivateAMTipArray9)

let motivateAMTipArray10 = [motivateAMTip41, motivateAMTip42, motivateAMTip43, motivateAMTip44]
let motivateAMTopic10 = Topic(title: motivateAMTitle, icon: motivateIcon, tip: motivateAMTipArray10)

let motivateAMTipArray11 = [motivateAMTip45, motivateAMTip46, motivateAMTip47, motivateAMTip48]
let motivateAMTopic11 = Topic(title: motivateAMTitle, icon: motivateIcon, tip: motivateAMTipArray11)

let motivateAMTipArray12 = [motivateAMTip49, motivateAMTip50, motivateAMTip51, motivateAMTip52]
let motivateAMTopic12 = Topic(title: motivateAMTitle, icon: motivateIcon, tip: motivateAMTipArray12)

let motivateAMTipArray13 = [motivateAMTip53, motivateAMTip54, motivateAMTip55, motivateAMTip56]
let motivateAMTopic13 = Topic(title: motivateAMTitle, icon: motivateIcon, tip: motivateAMTipArray13)

let motivateAMTipArray14 = [motivateAMTip57, motivateAMTip58, motivateAMTip59, motivateAMTip60]
let motivateAMTipArray15 = [motivateAMTip61, motivateAMTip62, motivateAMTip63, motivateAMTip64]
let motivateAMTipArray16 = [motivateAMTip65, motivateAMTip66, motivateAMTip67, motivateAMTip68]
let motivateAMTipArray17 = [motivateAMTip69, motivateAMTip70, motivateAMTip71, motivateAMTip72]
let motivateAMTipArray18 = [motivateAMTip73, motivateAMTip74, motivateAMTip75, motivateAMTip76]
let motivateAMTipArray19 = [motivateAMTip77, motivateAMTip78, motivateAMTip79, motivateAMTip80]
let motivateAMTipArray20 = [motivateAMTip81, motivateAMTip82, motivateAMTip83, motivateAMTip84]

//WIP (3)
let motivateAMTipArray21 = [motivateAMTip85, motivateAMTip16, motivateAMTip17, motivateAMTip18]

// RANDOM
let motivateAMTipArrays = [motivateAMTipArray0, motivateAMTipArray1, motivateAMTipArray2, motivateAMTipArray3, motivateAMTipArray4, motivateAMTipArray5, motivateAMTipArray6, motivateAMTipArray7, motivateAMTipArray8, motivateAMTipArray9, motivateAMTipArray10, motivateAMTipArray11, motivateAMTipArray12, motivateAMTipArray13, motivateAMTipArray14, motivateAMTipArray15, motivateAMTipArray16, motivateAMTipArray17, motivateAMTipArray18, motivateAMTipArray19, motivateAMTipArray20, motivateAMTipArray21]
let motivateAMTopic = Topic(title: motivateAMTitle, icon: motivateIcon, tip: motivateAMTipArrays.random())
let motivateAMTopics = Topics(title: motivateAMTitle, icon: motivateIcon, topics: [motivateAMTopic])




//MARK: Day - Motivational
//WEEK 1
//0
let motivateDay0 = Tip(header: "Quote", title: "As we look ahead into the next century, leaders will be those who empower others.", body: "- Bill Gates" , sourceName: "Inc.", sourceURL: "https://www.inc.com/lolly-daskal/the-100-best-leadership-quotes-of-all-time.html", sponsorLogo: "", sponsorURL: "")
let motivateDay2 =  Tip(header: "Quote", title: "A simple smile. That’s the start of opening your heart and being compassionate to others.", body: "- Dalai Lama \n\nThe spiritual leader of the Tibetan people.", sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/quotes", sponsorLogo: "", sponsorURL: "")
let motivateDay1 = Tip(header: "Quote", title: "If you want to be successful, find someone who has achieved the results you want and copy what they do and you’ll achieve the same results.", body: "- Tony Robbins \n\nBest-selling author, life and business strategist, and entrepreneur." , sourceName: "Awaken The Greatness Within", sourceURL: "https://www.awakenthegreatnesswithin.com/68-inspirational-tony-robbins-quotes-to-awaken-the-giant-within/", sponsorLogo: "", sponsorURL: "")
let motivateDay3 = Tip(header: "Quote", title: "Always forgive your enemies; nothing annoys them so much.", body: "- Oscar Wilde \n\nIrish poet and playwright", sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/quotes", sponsorLogo: "", sponsorURL: "")

//1
let motivateDayTip1 = Tip(header: "Quote", title: "Success is going from failure to failure without losing your enthusiasm.", body: "- Sir Winston Churchill \n\nPrime Minister of the UK who led Britain to victory in World War II." , sourceName: "Everyday Power", sourceURL: "https://everydaypower.com/morning-quotes/", sponsorLogo: "", sponsorURL: "")
let motivateDayTip2 = Tip(header: "Quote", title: "Build your own dreams, or someone else will hire you to build theirs.", body: "- Farrah Gray \n\nAuthor and motivational speaker." , sourceName: "Everyday Power", sourceURL: "https://everydaypower.com/morning-quotes/", sponsorLogo: "", sponsorURL: "")
let motivateDayTip3 = Tip(header: "Quote", title: "You may be disappointed if you fail, but you are doomed if you don’t try.", body: "- Beverly Sills \n\nShe was an American opera singer." , sourceName: "Everyday Power", sourceURL: "https://everydaypower.com/morning-quotes/", sponsorLogo: "", sponsorURL: "")
let motivateDayTip4 = Tip(header: "Quote", title: "When everything seems to be going against you, remember that the airplane takes off against the wind, not with it.", body: "- Henry Ford \n\nFounder of the Ford Motor Company." , sourceName: "Everyday Power", sourceURL: "https://everydaypower.com/morning-quotes/", sponsorLogo: "", sponsorURL: "")

//2
let motivateDayTip5 = Tip(header: "Quote", title: "It does not matter how slowly you go as long as you do not stop.", body: "- Confucius \n\nChinese philosopher." , sourceName: "Everyday Power", sourceURL: "https://everydaypower.com/morning-quotes/", sponsorLogo: "", sponsorURL: "")
let motivateDayTip6 = Tip(header: "Quote", title: "All our dreams can come true – if we have the courage to pursue them.", body: "- Walt Disney \n\nWalt Disney was an American entrepreneur, animator, voice actor and film producer." , sourceName: "Everyday Power", sourceURL: "https://everydaypower.com/morning-quotes/", sponsorLogo: "", sponsorURL: "")
let motivateDayTip7 = Tip(header: "Quote", title: "Don’t worry about failures; worry about the chances you miss when you don’t even try.", body: "- Jack Canfield \n\nAmerican author, motivational speaker, and entrepreneur." , sourceName: "Goood Reads", sourceURL: "https://www.goodreads.com/quotes/29794-don-t-worry-about-failures-worry-about-the-chances-you-miss", sponsorLogo: "", sponsorURL: "")
let motivateDayTip8 = Tip(header: "Quote", title: "Happiness cannot be traveled to, owned, earned, or worn. It is the spiritual experience of living every minute with love, grace and gratitude. ", body: "- Denis Waitley \n\nAmerican motivational speaker, writer and consultant." , sourceName: "Everyday Power", sourceURL: "https://everydaypower.com/morning-quotes/", sponsorLogo: "", sponsorURL: "")

//3
let motivateDayTip9 = Tip(header: "Quote", title: "Be the change you wish to see in the world.", body: "- Mahatma Gandhi \n\nHe employed nonviolent resistance to lead the successful campaign for India's independence from British Rule." , sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/quotes/24499-be-the-change-that-you-wish-to-see-in-the", sponsorLogo: "", sponsorURL: "")
let motivateDayTip10 = Tip(header: "Quote", title: "No act of kindness, no matter how small, is ever wasted.", body: "- Aesop \n\nGreek fabulist and storyteller" , sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/quotes/tag/compassion", sponsorLogo: "", sponsorURL: "")
let motivateDayTip11 = Tip(header: "Quote", title: "Never give up! Failure and rejection are only the first step to succeeding.", body: "- Jim Valvano \n\nAmerican college basketball player, coach, and broadcaster." , sourceName: "Bleacher Report", sourceURL: "https://bleacherreport.com/articles/910238-the-100-best-sports-quotes-of-all-time#slide7", sponsorLogo: "", sponsorURL: "")
let motivateDayTip12 = Tip(header: "Quote", title: "Keep on going, and the chances are that you will stumble on something, perhaps when you are least expecting it. I never heard of anyone ever stumbling on something sitting down.", body: "- Charles F. Kettering \n\nFormer head of research at General Motors." , sourceName: "Inc.", sourceURL: "https://www.inc.com/jayson-demers/51-quotes-to-inspire-success-in-your-life-and-business.html", sponsorLogo: "", sponsorURL: "")


//4
let motivateDayTip13 = Tip(header: "Quote", title: "Stop chasing the money and start chasing the passion.", body: "- Tony Hsieh \n\nCEO of Zappos" , sourceName: "Inc.", sourceURL: "https://www.inc.com/jayson-demers/51-quotes-to-inspire-success-in-your-life-and-business.html", sponsorLogo: "", sponsorURL: "")
let motivateDayTip14 = Tip(header: "Quote", title: "Smile at strangers and you just might change a life.", body: "- Steve Maraboli \n\nInternet radio commentator, motivational speaker and author." , sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/quotes/tag/compassion", sponsorLogo: "", sponsorURL: "")
let motivateDayTip15 = Tip(header: "Quote", title: "The simplest acts of kindness are by far more powerful then a thousand heads bowing in prayer.", body: "- Mahatma Gandhi \n\nHe employed nonviolent resistance to lead the successful campaign for India's independence from British Rule." , sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/quotes/tag/compassion", sponsorLogo: "", sponsorURL: "")
let motivateDayTip16 = Tip(header: "Quote", title: "You have not lived today until you have done something for someone who can never repay you.", body: "- John Bunyan \n\nEnglish author and preacher" , sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/quotes/tag/compassion", sponsorLogo: "", sponsorURL: "")

//5
let motivateDayTip17 = Tip(header: "Quote", title: "If we have no peace, it is because we have forgotten that we belong to each other.", body: "- Mother Teresa \n\nRoman Catholic nun and missionary." , sourceName: "Goalcast", sourceURL: "https://www.goalcast.com/2017/04/10/top-20-most-inspiring-mother-teresa-quotes/", sponsorLogo: "", sponsorURL: "")
let motivateDayTip18 = Tip(header: "Quote", title: "We must learn to live together as brothers or perish together as fools.", body: "- Martin Luther King Jr. \n\nAmerican minister who became the most visible spokesperson and leader in the civil rights movement from 1955 until his assassination in 1968." , sourceName: "Goalcast", sourceURL: "https://www.goalcast.com/2017/06/14/top-10-quotes-to-inspire-you-to-change-the-world/", sponsorLogo: "", sponsorURL: "")
let motivateDayTip19 = Tip(header: "Quote", title: "Knowledge will give you power, but character respect.", body: "- Bruce Lee \n\nActor, martial artist, philosopher, and founder of the martial art Jeet Kune Do", sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/quotes/506371-knowledge-will-give-you-power-but-character-respect", sponsorLogo: "", sponsorURL: "")
let motivateDayTip20 = Tip(header: "Quote", title: "If you fall, fall on your back because if you can look up, you can get up.", body: "- Les Brown \n\nBorn into poverty and abandoned as a child, he went on to become one of America’s best-known motivational speakers." , sourceName: "Wisdom Quotes", sourceURL: "https://wisdomquotes.com/good-morning-quotes/", sponsorLogo: "", sponsorURL: "")

//6
let motivateDayTip21 = Tip(header: "Quote 🙂", title: "Let us always meet each other with smile, for the smile is the beginning of love.", body: "- Mother Teresa \n\nRoman Catholic nun and missionary." , sourceName: "Goalcast", sourceURL: "https://www.goalcast.com/2017/04/10/top-20-most-inspiring-mother-teresa-quotes/", sponsorLogo: "", sponsorURL: "")
let motivateDayTip22 = Tip(header: "Quote", title: "A lot of wisdom is just realizing the long-term consequences of your actions. The longer term you’re willing to look, the wiser you’re going to seem to everybody around you.", body: "- Naval Ravikant \n\nCEO and a co-founder of AngelList." , sourceName: "Wisdom Quotes", sourceURL: "https://wisdomquotes.com/words-of-wisdom/", sponsorLogo: "", sponsorURL: "")
let motivateDayTip23 = Tip(header: "Quote", title: "A fool is known by his speech; and a wise man [or woman] by silence.", body: "- Pythagoras \n\nAncient Greek philosopher and is often referred to as the first pure mathematician." , sourceName: "Wisdom Quotes", sourceURL: "https://wisdomquotes.com/words-of-wisdom/", sponsorLogo: "", sponsorURL: "")
let motivateDayTip24 = Tip(header: "", title: "He who is not courageous enough to take risks will accomplish nothing in life.", body: "- Muhammad Ali \n\nAmerican professional boxer and activist." , sourceName: "Wonderful Quote", sourceURL: "https://www.wonderfulquote.com/a/muhammad-ali-quotes", sponsorLogo: "", sponsorURL: "")

//WEEK 2
//7
let motivateDayTip25 = Tip(header: "Quote", title: "Each person must live their life as a model for others.", body: "- Rosa Parks \n\nAmerican activist in the civil rights movement.", sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/quotes/128784-each-person-must-live-their-life-as-a-model-for", sponsorLogo: "", sponsorURL: "")
let motivateDayTip26 = Tip(header: "Quote", title: "Don't do things that you know are morally wrong. Not because someone is watching, but because you are. Self-esteem is just the reputation that you have with yourself. You'll always know.", body: "- Naval Ravikant \n\nCEO and a co-founder of AngelList." , sourceName: "Wonderful Quote", sourceURL: "https://www.wonderfulquote.com/a/naval-ravikant-quotes", sponsorLogo: "", sponsorURL: "")
let motivateDayTip27 = Tip(header: "Quote", title: "Wouldn't it be a beautiful world if just 10% of the people who believe in the power of love would compete with one another to see who could do the most good for the most people?", body: "- Muhammad Ali \n\nAmerican professional boxer and activist." , sourceName: "Wonderful Quote", sourceURL: "https://www.wonderfulquote.com/a/muhammad-ali-quotes", sponsorLogo: "", sponsorURL: "")
let motivateDayTip28 = Tip(header: "Quote", title: "It takes twenty years to build a reputation and five minutes to lose it. If you think about that, you will do things differently.", body: "- Warren Buffett \n\nInvestor and CEO of Berkshire Hathaway" , sourceName: "Wonderful Quote", sourceURL: "https://www.wonderfulquote.com/a/warren-buffett-quotes", sponsorLogo: "", sponsorURL: "")

//8
let motivateDayTip29 = Tip(header: "Quote", title: "Life's most persistent and urgent question is, 'What are you doing for others?", body: "- Martin Luther King Jr. \n\nAmerican minister who became the most visible spokesperson and leader in the civil rights movement from 1955 until his assassination in 1968." , sourceName: "Wonderful Quote", sourceURL: "https://www.wonderfulquote.com/a/martin-luther-king-quotes", sponsorLogo: "", sponsorURL: "")
let motivateDayTip30 = Tip(header: "Quote", title: "The world cares very little about what a man or woman knows; it is what a man or woman is able to do that counts.", body: "- Booker T. Washington \n\nEducator, author, and the most influential spokesman for the African-American community between 1895 and 1915." , sourceName: "Wonderful Quote", sourceURL: "https://www.wonderfulquote.com/a/booker-t-washington-quotes", sponsorLogo: "", sponsorURL: "")
let motivateDayTip31 = Tip(header: "Quote", title: "The difference between successful people and very successful people is that very successful people say \"no\" to almost everything.", body: "- Warren Buffett \n\nInvestor and CEO of Berkshire Hathaway" , sourceName: "Wonderful Quote", sourceURL: "https://www.wonderfulquote.com/a/warren-buffett-quotes", sponsorLogo: "", sponsorURL: "")
let motivateDayTip32 = Tip(header: "Quote", title: "My one repeated learning in life: \"There Are No Adults.\" Everyone's making it up as they go along. Figure it out yourself, and do it.", body: "- Naval Ravikant \n\nCEO and a co-founder of AngelList." , sourceName: "Wonderful Quote", sourceURL: "https://www.wonderfulquote.com/a/naval-ravikant-quotes", sponsorLogo: "", sponsorURL: "")


//9
let motivateDayTip33 = Tip(header: "Quote", title: "Let no one ever come to you without leaving better and happier.", body: "- Mother Teresa \n\nRoman Catholic nun and missionary." , sourceName: "Wonderful Quote", sourceURL: "https://www.wonderfulquote.com/a/mother-teresa-quotes", sponsorLogo: "", sponsorURL: "")
let motivateDayTip34 = Tip(header: "Quote", title: "Things will start changing for the better when you begin trusting yourself.", body: "- Robert Tew \n\nBritish former pro rugby league footballer", sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/author/quotes/13848712.Robert_Tew?page=2", sponsorLogo: "", sponsorURL: "")
 let motivateDayTip35 = Tip(header: "Quote", title: "If you want to lift yourself up, lift up someone else.", body: "- Booker T. Washington \n\nEducator, author, and the most influential spokesman for the African-American community between 1895 and 1915." , sourceName: "Wonderful Quote", sourceURL: "https://www.wonderfulquote.com/a/booker-t-washington-quotes", sponsorLogo: "", sponsorURL: "")
let motivateDayTip36 =  Tip(header: "Quote", title: "Qualities of good character and integrity make an enormous difference in achieving success.", body: "- Warren Buffett \n\nInvestor and CEO of Berkshire Hathaway" , sourceName: "Wonderful Quote", sourceURL: "https://www.wonderfulquote.com/a/warren-buffett-quotes", sponsorLogo: "", sponsorURL: "")

//10
let motivateDayTip37 = Tip(header: "Quote", title: "Those who are happiest are those who do the most for others.", body: "- Booker T. Washington \n\nEducator, author, and the most influential spokesman for the African-American community between 1895 and 1915." , sourceName: "Wonderful Quote", sourceURL: "https://www.wonderfulquote.com/a/booker-t-washington-quotes", sponsorLogo: "", sponsorURL: "")
let motivateDayTip38 = Tip(header: "Quote", title: "Average leaders raise the bar on themselves; good leaders raise the bar for others; great leaders inspire others to raise their own bar.", body: "- Orrin Woodward \n\nNew York Times bestselling author and entrepreneur." , sourceName: "Inc.", sourceURL: "https://www.inc.com/lolly-daskal/the-100-best-leadership-quotes-of-all-time.html", sponsorLogo: "", sponsorURL: "")
let motivateDayTip39 = Tip(header: "Quote", title: "One of the best things you can do in life is to surround yourself with people who are better than you are. High-grade people... Who you choose to associate with matters.", body: "- Warren Buffett \n\nInvestor and CEO of Berkshire Hathaway" , sourceName: "Wonderful Quote", sourceURL: "https://www.wonderfulquote.com/a/warren-buffett-quotes", sponsorLogo: "", sponsorURL: "")
let motivateDayTip40 = Tip(header: "Quote", title: "Doing the best at this moment puts you in the best place for the next moment.", body: "- Oprah Winfrey \n\nOprah Winfrey is an American television personality, actress, and entrepreneur." , sourceName: "Goalcast", sourceURL: "https://www.goalcast.com/2016/09/28/top-20-inspiring-oprah-winfrey-quotes-that-will-empower-you/", sponsorLogo: "", sponsorURL: "")

//11
let motivateDayTip41 = Tip(header: "Quote", title: "Be the reason someone smiles. Be the reason someone feels loved and believes in the goodness in people.", body: "- Roy T. Bennett \n\nAuthor" , sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/author/quotes/15042371.Roy_T_Bennett", sponsorLogo: "", sponsorURL: "")
let motivateDayTip42 = Tip(header: "Quote", title: "If you judge people, you have no time to love them.", body: "- Mother Teresa" , sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/quotes", sponsorLogo: "", sponsorURL: "")

let motivateDayTip43 = Tip(header: "Quote", title: "It’s not what we do once in a while that shapes our lives, but what we do consistently.", body: "- Tony Robbins \n\nBest-selling author, life and business strategist, and entrepreneur." , sourceName: "Goalcast", sourceURL: "https://www.goalcast.com/2016/08/18/top-20-inspiring-tony-robbins-quotes/", sponsorLogo: "", sponsorURL: "")
let motivateDayTip44 = Tip(header: "Quote", title: "If the decisions you make about where you invest your blood, sweat, and tears are not consistent with the person you aspire to be, you’ll never become that person.", body: "- Clayton M. Christensen \n\nAmerican author and professor at the Harvard Business School" , sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/work/quotes/18907551-how-will-you-measure-your-life", sponsorLogo: "", sponsorURL: "")

//12
 let motivateDayTip45 = Tip(header: "Quote", title: "Setting goals is the first step in turning the invisible into the visible." , body: "- Tony Robbins \n\nBest-selling author, life and business strategist, and entrepreneur." , sourceName: "Awaken The Greatness Within", sourceURL: "https://www.awakenthegreatnesswithin.com/68-inspirational-tony-robbins-quotes-to-awaken-the-giant-within/", sponsorLogo: "", sponsorURL: "")
let motivateDayTip46 = Tip(header: "Quote", title: "If you talk about it, it’s a dream, if you envision it, it’s possible, but if you schedule it, it’s real.", body: "- Tony Robbins \n\nBest-selling author, life and business strategist, and entrepreneur." , sourceName: "Awaken The Greatness Within", sourceURL: "https://www.awakenthegreatnesswithin.com/68-inspirational-tony-robbins-quotes-to-awaken-the-giant-within/", sponsorLogo: "", sponsorURL: "")
let motivateDayTip47 = Tip(header: "Quote", title: "Leaders aren't born, they are made. And they are made just like anything else, through hard work. And that's the price we'll have to pay to achieve that goal, or any goal.", body: "- Vince Lombardi \n\nOne of the greatest American football coaches of all time." , sourceName: "Inc.", sourceURL: "https://www.inc.com/lolly-daskal/the-100-best-leadership-quotes-of-all-time.html", sponsorLogo: "", sponsorURL: "")
let motivateDayTip48 = Tip(header: "Quote", title: "You get in life what you have the courage to ask for.", body: "- Oprah Winfrey \n\nAmerican television personality, actress, and entrepreneur." , sourceName: "Goalcast", sourceURL: "https://www.goalcast.com/2016/09/28/top-20-inspiring-oprah-winfrey-quotes-that-will-empower-you/", sponsorLogo: "", sponsorURL: "")


//13
let motivateDayTip49 = Tip(header: "Quote", title: "True freedom is impossible without a mind made free by discipline.", body: "- Mortimer Adler \n\nAmerican philosopher and author" , sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/quotes/108325-true-freedom-is-impossible-without-a-mind-made-free-by", sponsorLogo: "", sponsorURL: "")

let motivateDayTip50 = Tip(header: "Quote", title: "Because a thing seems difficult for you, do not think it impossible.", body: "-  Marcus Aurelius \n\nRoman emperor and a Stoic philosopher." , sourceName: "Awaken The Greatness Within", sourceURL: "https://www.awakenthegreatnesswithin.com/34-inspirational-marcus-aurelius-quotes/", sponsorLogo: "", sponsorURL: "")
let motivateDayTip51 = Tip(header: "Quote", title: "There’s always a way – if you’re committed." , body: "- Tony Robbins \n\nBest-selling author, life and business strategist, and entrepreneur." , sourceName: "Awaken The Greatness Within", sourceURL: "https://www.awakenthegreatnesswithin.com/68-inspirational-tony-robbins-quotes-to-awaken-the-giant-within/", sponsorLogo: "", sponsorURL: "")

let motivateDayTip52 = Tip(header: "Quote", title: "A person's main asset is themselves, so preserve and enhance yourself.", body: "- Warren Buffett \n\nInvestor and CEO of Berkshire Hathaway" , sourceName: "Wonderful Quote", sourceURL: "https://www.wonderfulquote.com/a/warren-buffett-quotes", sponsorLogo: "", sponsorURL: "")


//14
let motivateDayTip53 = Tip(header: "Quote", title: "Live so that when your children think of fairness, caring, and integrity, they think of you.", body: "- Harriett Jackson Brown Jr. \n\nAmerican author" , sourceName: "Goalcast", sourceURL: "https://www.goalcast.com/2018/05/17/21-integrity-quotes/", sponsorLogo: "", sponsorURL: "")
let motivateDayTip54 = Tip(header: "Quote", title: "Integrity is doing the right thing, even when no one is watching.", body: "- C. S. Lewis \n\nBritish author and scholar" , sourceName: "Goalcast", sourceURL: "https://www.goalcast.com/2018/05/17/21-integrity-quotes/", sponsorLogo: "", sponsorURL: "")
let motivateDayTip55 = Tip(header: "Quote", title: "The greatness of a man is not in how much wealth he acquires, but in his integrity and his ability to affect those around him positively.", body: "- Bob Marley \n\nJamaican singer, songwriter, and considered one of the pioneers of reggae." , sourceName: "Goalcast", sourceURL: "https://www.goalcast.com/2018/05/17/21-integrity-quotes/", sponsorLogo: "", sponsorURL: "")
let motivateDayTip56 = Tip(header: "Quote", title: "When you are able to maintain your own highest standards of integrity – regardless of what others may do – you are destined for greatness.", body: "- Napoleon Hill \n\nAmerican self-help author" , sourceName: "Goalcast", sourceURL: "https://www.goalcast.com/2018/05/17/21-integrity-quotes/", sponsorLogo: "", sponsorURL: "")


//15
let motivateDayTip57 = Tip(header: "Quote", title: "The function of leadership is to produce more leaders, not more followers.", body: "- Ralph Nader \n\nAmerican political activist and author" , sourceName: "Inc.", sourceURL: "https://www.inc.com/lolly-daskal/the-100-best-leadership-quotes-of-all-time.html", sponsorLogo: "", sponsorURL: "")
let motivateDayTip58 =  Tip(header: "Quote", title: "It is true that integrity alone won’t make you a leader, but without integrity you will never be one.", body: "- Zig Ziglar \n\nAmerican World War II veteran, author and motivational speaker." , sourceName: "Goalcast", sourceURL: "https://www.goalcast.com/2018/05/17/21-integrity-quotes/", sponsorLogo: "", sponsorURL: "")
let motivateDayTip59 = Tip(header: "Quote", title: "If you go looking for a friend, you’re going to find they’re scarce. If you go out to be a friend, you’ll find them everywhere.", body: "- Zig Ziglar \n\nWorld War II veteran, author and motivational speaker.", sourceName: "Brilliant Read", sourceURL: "https://www.brilliantread.com/15-best-ever-david-goggins-quotes-on-success-and-failures/", sponsorLogo: "", sponsorURL: "")
let motivateDayTip60 = Tip(header: "Quote", title: "You attract what you are, not what you want. So if you want it then reflect it.", body: "- Tony Gaskins \n\nMotivational speaker, author, and life coach." , sourceName: "Awaken The Greatness Within", sourceURL: "https://www.awakenthegreatnesswithin.com/35-inspirational-quotes-on-reflection/", sponsorLogo: "", sponsorURL: "")

//16
let motivateDayTip61 = Tip(header: "Quote", title: "Peace begins with a smile. Everytime you smile at someone, it is an action of love, a gift to that person, a beautiful thing.", body: "- Mother Teresa" , sourceName: "Quotes Thoughts Random", sourceURL: "https://quotesthoughtsrandom.wordpress.com/2018/05/25/25-mother-teresa-quotes-about-living-a-life-of-purpose/", sponsorLogo: "", sponsorURL: "")
let motivateDayTip62 = Tip(header: "Quote", title: "Education is more valuable than money, in the long run. If people are prepared to learn, they will grow richer. Intelligence solves problems and produces money.", body: "- Robert Kiyosaki \nAuthor of Rich Dad, Poor Dad", sourceName: "Rich Dad, Poor Dad", sourceURL: "https://www.amazon.com/Rich-Dad-Poor-Teach-Middle-ebook/dp/B0175P82RA", sponsorLogo: "", sponsorURL: "")
let motivateDayTip63 = Tip(header: "Quote", title: "The better you are at communicating, negotiating, and handling your fear of recjection, the easier life is.", body: "- Robert Kiyosaki \nAuthor of Rich Dad, Poor Dad", sourceName: "Rich Dad, Poor Dad", sourceURL: "https://www.amazon.com/Rich-Dad-Poor-Teach-Middle-ebook/dp/B0175P82RA", sponsorLogo: "", sponsorURL: "")
let motivateDayTip64 = Tip(header: "Quote", title: "Do what you feel in your heart to be right - for you'll be criticized anyway. You'll be damned if you do, and damned if you don't.", body: "- Eleanor Roosevelt", sourceName: "Rich Dad, Poor Dad", sourceURL: "https://www.amazon.com/Rich-Dad-Poor-Teach-Middle-ebook/dp/B0175P82RA", sponsorLogo: "", sponsorURL: "")

//17
let motivateDayTip65 = Tip(header: "Quote", title: "If you want something, you first need to give.", body: "Whenever I feel like people aren't smiling at me, I simply begin smiling and saying hello, and like magic, there are suddenly more smiling people around me. \n\nIt is true that your world is only a mirror of you. \n\n- Robert Kiyosaki \nAuthor of Rich Dad, Poor Dad", sourceName: "Rich Dad, Poor Dad", sourceURL: "https://www.amazon.com/Rich-Dad-Poor-Teach-Middle-ebook/dp/B0175P82RA", sponsorLogo: "", sponsorURL: "")
let motivateDayTip66 = Tip(header: "Quote", title: "Action always beats inaction. You must take action before you can receive the financial rewards. Act now!", body: "- Robert Kiyosaki \nAuthor of Rich Dad, Poor Dad", sourceName: "Rich Dad, Poor Dad", sourceURL: "https://www.amazon.com/Rich-Dad-Poor-Teach-Middle-ebook/dp/B0175P82RA", sponsorLogo: "", sponsorURL: "")
let motivateDayTip67 = Tip(header: "Quote", title: "You can easily judge the character of others by how they treat those who they think can do nothing for them.", body: "- Malcolm Forbes \n\nPublisher of Forbes magazine", sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/author/quotes/244543.Malcolm_Forbes", sponsorLogo: "", sponsorURL: "")
let motivateDayTip68 = Tip(header: "Quote", title: "Itʹs always worthwhile to make others aware of their worth.", body: "- Malcolm Forbes \n\nPublisher of Forbes magazine", sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/author/quotes/244543.Malcolm_Forbes", sponsorLogo: "", sponsorURL: "")

//18
let motivateDayTip69 = Tip(header: "Quote", title: "The biggest mistake people make in life is not trying to make a living at doing what they most enjoy.", body: "- Malcolm Forbes \n\nPublisher of Forbes magazine", sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/author/quotes/244543.Malcolm_Forbes", sponsorLogo: "", sponsorURL: "")

let motivateDayTip70 = Tip(header: "Quote", title: "You can have a job, or you can have a career, or you can have a calling. And the best is to have a calling. Because when you work towards a calling then all your work won't feel like work to you.", body: "- Jeff Bezos", sourceName: "MotivationHub: Jeff Bezos", sourceURL: "https://www.youtube.com/watch?v=EctzLTFrktc", sponsorLogo: "", sponsorURL: "")
let motivateDayTip71 = Tip(header: "Quote", title: "Your work is going to fill a large part of your life, and the only way to be truly satisfied is to do what you believe is great work. And the only way to do great work is to love what you do. If you haven't found it yet, keep looking. Don't settle. As with all matters of the heart, you'll know when you find it.", body: "- Steve Jobs", sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/quotes/445179-your-work-is-going-to-fill-a-large-part-of", sponsorLogo: "", sponsorURL: "")
let motivateDayTip72 = Tip(header: "Quote", title: "Nothing is impossible; the word itself says I’m possible!", body: "– Audrey Hepburn \n\nWas a British actress and humanitarian.", sourceName: "Goalcast", sourceURL: "https://www.goalcast.com/2018/06/08/20-depression-quotes/", sponsorLogo: "", sponsorURL: "")


//DAY
//WEEK 1
let motivateDayTipArray0 = [motivateDayTip1, motivateDayTip2, motivateDayTip3, motivateDayTip4]
let motivateDayTopic0 = Topic(title: motivateDayTitle, icon: motivateIcon, tip: motivateDayTipArray0)

let motivateDayTipArray1 = [motivateDayTip5, motivateDayTip6, motivateDayTip7, motivateDayTip8]
let motivateDayTopic1 = Topic(title: motivateDayTitle, icon: motivateIcon, tip: motivateDayTipArray1)

let motivateDayTipArray2 = [motivateDayTip9, motivateDayTip10, motivateDayTip11, motivateDayTip12]
let motivateDayTopic2 = Topic(title: motivateDayTitle, icon: motivateIcon, tip: motivateDayTipArray2)

let motivateDayTipArray3 = [motivateDayTip13, motivateDayTip14, motivateDayTip15, motivateDayTip16]
let motivateDayTopic3 = Topic(title: motivateDayTitle, icon: motivateIcon, tip: motivateDayTipArray3)

let motivateDayTipArray4 = [motivateDayTip17, motivateDayTip18, motivateDayTip19, motivateDayTip20]
let motivateDayTopic4 = Topic(title: motivateDayTitle, icon: motivateIcon, tip: motivateDayTipArray4)

let motivateDayTipArray5 = [motivateDayTip21, motivateDayTip22, motivateDayTip23, motivateDayTip24]
let motivateDayTopic5 = Topic(title: motivateDayTitle, icon: motivateIcon, tip: motivateDayTipArray5)

let motivateDayTipArray6 = [motivateDayTip25, motivateDayTip26, motivateDayTip27, motivateDayTip28]
let motivateDayTopic6 = Topic(title: motivateDayTitle, icon: motivateIcon, tip: motivateDayTipArray6)

//WEEK 2
let motivateDayTipArray7 = [motivateDayTip29, motivateDayTip30, motivateDayTip31, motivateDayTip32]
let motivateDayTopic7 = Topic(title: motivateDayTitle, icon: motivateIcon, tip: motivateDayTipArray7)

let motivateDayTipArray8 = [motivateDayTip33, motivateDayTip34, motivateDayTip35, motivateDayTip36]
let motivateDayTopic8 = Topic(title: motivateDayTitle, icon: motivateIcon, tip: motivateDayTipArray8)

let motivateDayTipArray9 = [motivateDayTip37, motivateDayTip38, motivateDayTip39, motivateDayTip40]
let motivateDayTopic9 = Topic(title: motivateDayTitle, icon: motivateIcon, tip: motivateDayTipArray9)

let motivateDayTipArray10 = [motivateDayTip41, motivateDayTip42, motivateDayTip43, motivateDayTip44]
let motivateDayTopic10 = Topic(title: motivateDayTitle, icon: motivateIcon, tip: motivateDayTipArray10)

let motivateDayTipArray11 = [motivateDayTip45, motivateDayTip46, motivateDayTip47, motivateDayTip48]
let motivateDayTopic11 = Topic(title: motivateDayTitle, icon: motivateIcon, tip: motivateDayTipArray11)

let motivateDayTipArray12 = [motivateDayTip49, motivateDayTip50, motivateDayTip51, motivateDayTip52]
let motivateDayTopic12 = Topic(title: motivateDayTitle, icon: motivateIcon, tip: motivateDayTipArray12)

let motivateDayTipArray13 = [motivateDayTip53, motivateDayTip54, motivateDayTip55, motivateDayTip56]
let motivateDayTopic13 = Topic(title: motivateDayTitle, icon: motivateIcon, tip: motivateDayTipArray13)

let motivateDayTipArray14 = [motivateDayTip57, motivateDayTip58, motivateDayTip59, motivateDayTip60]
let motivateDayTipArray15 = [motivateDayTip61, motivateDayTip62, motivateDayTip63, motivateDayTip64]
let motivateDayTipArray16 = [motivateDayTip65, motivateDayTip66, motivateDayTip67, motivateDayTip68]
let motivateDayTipArray17 = [motivateDayTip69, motivateDayTip70, motivateDayTip71, motivateDayTip72]



// RANDOM
let motivateDayTipArrays = [motivateDayTipArray0, motivateDayTipArray1, motivateDayTipArray2, motivateDayTipArray3, motivateDayTipArray4, motivateDayTipArray5, motivateDayTipArray6, motivateDayTipArray7, motivateDayTipArray8, motivateDayTipArray9, motivateDayTipArray10, motivateDayTipArray11, motivateDayTipArray12, motivateDayTipArray14, motivateAMTipArray14, motivateAMTipArray15, motivateDayTipArray16, motivateDayTipArray17]
let motivateDayTopic = Topic(title: motivateDayTitle, icon: motivateIcon, tip: motivateDayTipArrays.random())
let motivateDayTopics = Topics(title: motivateDayTitle, icon: motivateIcon, topics: [motivateDayTopic])



//MARK: Afternoon - Advice
//WEEK 1
//14
let motivateAfterTip1 = Tip(header: "Quote", title: "If you spend too much time thinking about a thing, you'll never get it done.", body: "- Bruce Lee \n\nActor, martial artist, philosopher, and founder of the martial art Jeet Kune Do", sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/search?utf8=%E2%9C%93&q=bruce+lee&search_type=quotes", sponsorLogo: "", sponsorURL: "")
let motivateAfterTip2 = Tip(header: "Quote", title: "Do the one thing you think you cannot do. Fail at it. Try again. Do better the second time. The only people who never tumble are those who never mount the high wire.", body: "- Oprah Winfrey \n\nOprah Winfrey is an American television personality, actress, and entrepreneur." , sourceName: "Goalcast", sourceURL: "https://www.goalcast.com/2016/09/28/top-20-inspiring-oprah-winfrey-quotes-that-will-empower-you/", sponsorLogo: "", sponsorURL: "")
let motivateAfterTip3 = Tip(header: "Quote", title: "Surround yourself only with people who are going to take you higher.", body: "- Oprah Winfrey \n\nOprah Winfrey is an American television personality, actress, and entrepreneur." , sourceName: "Goalcast", sourceURL: "https://www.goalcast.com/2016/09/28/top-20-inspiring-oprah-winfrey-quotes-that-will-empower-you/", sponsorLogo: "", sponsorURL: "")
let motivateAfterTip4 = Tip(header: "Quote", title: "Do not pray for an easy life, pray for the strength to endure a difficult one.", body: "- Bruce Lee \n\nActor, martial artist, philosopher, and founder of the martial art Jeet Kune Do", sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/search?utf8=%E2%9C%93&q=bruce+lee&search_type=quotes", sponsorLogo: "", sponsorURL: "")

//15
let motivateAfterTip5 = Tip(header: "Quote", title: "As you think, so shall you become.", body: "- Bruce Lee \n\nActor, martial artist, philosopher, and founder of the martial art Jeet Kune Do", sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/search?utf8=%E2%9C%93&q=bruce+lee&search_type=quotes", sponsorLogo: "", sponsorURL: "")
let motivateAfterTip6 = Tip(header: "Quote", title: "Focus on where you want to go, not on what you fear." , body: "- Tony Robbins \n\nBest-selling author, life and business strategist, and entrepreneur." , sourceName: "Awaken The Greatness Within", sourceURL: "https://www.awakenthegreatnesswithin.com/68-inspirational-tony-robbins-quotes-to-awaken-the-giant-within/", sponsorLogo: "", sponsorURL: "")
let motivateAfterTip7 =  Tip(header: "Quote", title: "You see, in life, lots of people know what to do, but few people actually do what they know. Knowing is not enough! You must take action." , body: "- Tony Robbins \n\nBest-selling author, life and business strategist, and entrepreneur." , sourceName: "Awaken The Greatness Within", sourceURL: "https://www.awakenthegreatnesswithin.com/68-inspirational-tony-robbins-quotes-to-awaken-the-giant-within/", sponsorLogo: "", sponsorURL: "")
let motivateAfterTip8 = Tip(header: "Quote", title: "If I commit to doing something, then I commit to doing it right now. If I'm not willing to do it right now, then don't do it. Don't commit to it.", body: "- Naval Ravikant \n\nCEO and a co-founder of AngelList." , sourceName: "Wonderful Quote", sourceURL: "https://www.wonderfulquote.com/a/naval-ravikant-quotes", sponsorLogo: "", sponsorURL: "")

//16
let motivateAfterTip9 = Tip(header: "Quote", title: "The secret to living is giving.", body: "- Tony Robbins \n\nBest-selling author, life and business strategist, and entrepreneur." , sourceName: "Awaken The Greatness Within", sourceURL: "https://www.awakenthegreatnesswithin.com/68-inspirational-tony-robbins-quotes-to-awaken-the-giant-within/", sponsorLogo: "", sponsorURL: "")

let motivateAfterTip10 = Tip(header: "Quote", title: "Those who are happiest are those who do the most for others.", body: "Booker T. Washington \n\nThe most influential spokesman for the African-American community between 1895 and 1915." , sourceName: "Awaken The Greatness Within", sourceURL: "https://www.awakenthegreatnesswithin.com/26-inspirational-quotes-on-giving-that-will-change-your-life/", sponsorLogo: "", sponsorURL: "")

let motivateAfterTip11 = Tip(header: "Quote", title: "The meaning of life is to find your gift. The purpose of life is to give it away.", body: "- Pablo Picasso \n\nOne of the greatest artists of the 20th century." , sourceName: "SUCCESS", sourceURL: "https://www.success.com/15-inspiring-quotes-about-giving/", sponsorLogo: "", sponsorURL: "")

let motivateAfterTip12 = Tip(header: "Quote", title: "At the end it’s not about what you have or even what you’ve accomplished. It’s about who you’ve lifted up, who you’ve made better. It’s about what you’ve given back.", body: "- Denzel Washington \n\nActor, director, and producer", sourceName: "Awaken The Greatness Within", sourceURL: "https://www.awakenthegreatnesswithin.com/26-inspirational-quotes-on-giving-that-will-change-your-life/", sponsorLogo: "", sponsorURL: "")


//17
let motivateAfterTip13 = Tip(header: "Quote", title: "Leaders think and talk about the solutions. Followers think and talk about the problems.", body: "- Brian Tracy \n\nAuthor and motivational speaker" , sourceName: "Inc.", sourceURL: "https://www.inc.com/lolly-daskal/the-100-best-leadership-quotes-of-all-time.html", sponsorLogo: "", sponsorURL: "")
let motivateAfterTip14 = Tip(header: "Quote", title: "The mediocre teacher tells. The good teacher explains. The superior teacher demonstrates. The great teacher inspires.", body: "- William Arthur Ward \n\nAmerican author" , sourceName: "Inc.", sourceURL: "https://www.inc.com/lolly-daskal/the-100-best-leadership-quotes-of-all-time.html", sponsorLogo: "", sponsorURL: "")

let motivateAfterTip15 = Tip(header: "Quote", title: "Do not go where the path may lead, go instead where there is no path and leave a trail.", body: "- Ralph Waldo Emerson \n\nLecturer, philosopher, and poet" , sourceName: "Brainy Quote", sourceURL: "https://www.brainyquote.com/quotes/ralph_waldo_emerson_101322", sponsorLogo: "", sponsorURL: "")
let motivateAfterTip16 = Tip(header: "Quote", title: "The thing you fear most has no power. Your fear of it is what has the power. Facing the truth really will set you free.", body: "- Oprah Winfrey \n\nAmerican television personality, actress, and entrepreneur." , sourceName: "Goalcast", sourceURL: "https://www.goalcast.com/2016/09/28/top-20-inspiring-oprah-winfrey-quotes-that-will-empower-you/", sponsorLogo: "", sponsorURL: "")

//18
let motivateAfterTip17 = Tip(header: "Quote", title: "The successful warrior is the average man [or woman], with laser-like focus.", body: "- Bruce Lee \n\nActor, martial artist, philosopher, and founder of the martial art Jeet Kune Do", sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/quotes/461996-the-successful-warrior-is-the-average-man-with-laser-like-focus", sponsorLogo: "", sponsorURL: "")

let motivateAfterTip18 = Tip(header: "Quote", title: "People think focus means saying yes to the thing you've got to focus on. But that's not what it means at all. It means saying no to the hundred other good ideas that there are. You have to pick carefully. I'm actually as proud of the things we haven't done as the things I have done. Innovation is saying no to 1,000 things.", body: "- Steve Jobs \n\nCo-founder of Apple Computer" , sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/quotes/629613-people-think-focus-means-saying-yes-to-the-thing-you-ve", sponsorLogo: "", sponsorURL: "")
let motivateAfterTip19 = Tip(header: "Quote", title: "The difference between successful people and really successful people is that really successful people say no to almost everything.", body: "- Naval Ravikant \n\nCEO and a co-founder of AngelList." , sourceName: "Wonderful Quote", sourceURL: "https://www.wonderfulquote.com/a/naval-ravikant-quotes", sponsorLogo: "", sponsorURL: "")

let motivateAfterTip20 = Tip(header: "Quote", title: "If you can't decide, the answer is No.", body: "- Naval Ravikant \n\nCEO and a co-founder of AngelList." , sourceName: "Wonderful Quote", sourceURL: "https://www.wonderfulquote.com/a/naval-ravikant-quotes", sponsorLogo: "", sponsorURL: "")


//19
let motivateAfterTip21 = Tip(header: "Quote", title: "The key to success is failure.", body: "- Michael Jordan \n\nRegarded by most as the NBA's greatest all-time player", sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/author/quotes/16823.Michael_Jordan", sponsorLogo: "", sponsorURL: "")
let motivateAfterTip22 = Tip(header: "Quote", title: "Happiness does not simply happen to us. It's something that we make happen, and it results from doing our best.", body: "- Mihaly Csikszentmihalyi \n\nHungarian-American psychologist and professor" , sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/author/quotes/10803973.Jocko_Willink", sponsorLogo: "", sponsorURL: "")
let motivateAfterTip23 = Tip(header: "Quote", title: "A leader who tries to take on too many problems simultaneously will likely fail at them all. \n\nPrioritize your problems and take care of them one at a time, the highest priority first. \n\nDon’t try to do everything at once or you won’t be successful.", body: "- Jocko Willink \n\nRetired US Navy SEAL, podcaster, and author." , sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/author/quotes/10803973.Jocko_Willink", sponsorLogo: "", sponsorURL: "")
let motivateAfterTip24 = Tip(header: "Quote", title: "We may not be able to change the beginning of things, but we can always change the ending. We can always set a goal for ourselves and become anything that we set out to be.", body: "- Amy Purdy \n\nAt 19, she went into septic shock, which led to double amputation below the knees. Doctors gave her a 2% chance of survival. She recovered and went on to become an Olympic athlete and win 3 back-to-back World Cup gold medals in snowboard cross." , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2018/02/11/4-olympians-share-the-mental-tips-they-use-to-achieve-their-goals.html", sponsorLogo: "", sponsorURL: "")

//WEEK 2
//20
let motivateAfterTip25 = Tip(header: "Quote", title: "Once I made a decision, I never thought about it again.", body: "- Michael Jordan \n\nRegarded by most as the NBA's greatest all-time player", sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/author/quotes/16823.Michael_Jordan", sponsorLogo: "", sponsorURL: "")
let motivateAfterTip26 = Tip(header: "Quote", title: "You must expect great things of yourself before you can do them.", body: "- Michael Jordan \n\nRegarded by most as the NBA's greatest all-time player", sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/author/quotes/16823.Michael_Jordan", sponsorLogo: "", sponsorURL: "")
let motivateAfterTip27 = Tip(header: "Quote", title: "The fastest way to change yourself is to hang out with people who are already the way you want to be.", body: "- Reid Hoffman \n\nCo-founder of LinkedIn" , sourceName: "AZ Quotes", sourceURL: "https://www.azquotes.com/quote/520979", sponsorLogo: "", sponsorURL: "")
let motivateAfterTip28 =  Tip(header: "Quote", title: "Complaining is a complete waste of one's energy. Those who complain the most accomplish the least.", body: "- Robert Tew \n\nBritish former rugby league footballer", sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/author/quotes/13848712.Robert_Tew?page=2", sponsorLogo: "", sponsorURL: "")

//
let motivateAfterTip29 = Tip(header: "Quote", title: "Sometimes what you’re most afraid of doing is the very thing that will set you free.", body: "- Robert Tew \n\nBritish former rugby league footballer", sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/author/quotes/13848712.Robert_Tew?page=2", sponsorLogo: "", sponsorURL: "")
let motivateAfterTip30 = Tip(header: "Quote", title: "Love yourself first and everything else falls into line. You really have to love yourself to get anything done in this world.", body: "- Lucille Ball \n\nAmerican actress, comedian, and entertainment studio executive", sourceName: "Goalcast", sourceURL: "https://www.goalcast.com/2018/07/16/confidence-quotes/", sponsorLogo: "", sponsorURL: "")
let motivateAfterTip31 = Tip(header: "Quote", title: "With realization of one’s own potential and self-confidence in one’s ability, one can build a better world.", body: "- Dalai Lama \n\nThe spiritual leader of the Tibetan people.", sourceName: "Goalcast", sourceURL: "https://www.goalcast.com/2018/07/16/confidence-quotes/", sponsorLogo: "", sponsorURL: "")
let motivateAfterTip32 = Tip(header: "Quote", title: "If you quit ONCE it becomes a habit. Never quit!!!", body: "- Michael Jordan \n\nRegarded by most as the NBA's greatest all-time player", sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/author/quotes/16823.Michael_Jordan", sponsorLogo: "", sponsorURL: "")


let motivateAfterTip33 = Tip(header: "Quote", title: "As soon as you trust yourself, you will know how to live.", body: "- Johann Wolfgang von Goethe \n\nGerman writer and statesman", sourceName: "Goalcast", sourceURL: "https://www.goalcast.com/2018/07/16/confidence-quotes/", sponsorLogo: "", sponsorURL: "")
let motivateAfterTip34 = Tip(header: "Quote", title: "You are the only person on earth who can use your ability.", body: "- Zig Ziglar \n\nAmerican World War II veteran, author and motivational speaker.", sourceName: "Code Of Living", sourceURL: "https://www.codeofliving.com/27-powerful-quotes-to-boost-your-self-confidence/", sponsorLogo: "", sponsorURL: "")
let motivateAfterTip35 = Tip(header: "Quote", title: "Don’t you dare, for one more second, surround yourself with people who are not aware of the greatness that you are.", body: "- Jo Blackwell-Preston \n\nWorld-renowned colorist and educator", sourceName: "Code Of Living", sourceURL: "https://www.codeofliving.com/27-powerful-quotes-to-boost-your-self-confidence/", sponsorLogo: "", sponsorURL: "")
let motivateAfterTip36 = Tip(header: "Quote", title: "If you do the work you get rewarded. There are no shortcuts in life.", body: "- Michael Jordan \n\nRegarded by most as the NBA's greatest all-time player", sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/author/quotes/16823.Michael_Jordan", sponsorLogo: "", sponsorURL: "")


let motivateAfterTip37 = Tip(header: "Quote", title: "Success is not final, failure is not fatal: it is the courage to continue that counts.", body: "- Sir Winston Churchill \n\nPrime Minister of the UK who led Britain to victory in World War II.", sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/quotes/tag/courage", sponsorLogo: "", sponsorURL: "")
let motivateAfterTip38 = Tip(header: "Quote", title: "It takes courage to grow up and become who you really are.", body: "- E.E. Cummings \n\nAmerican poet, painter, and author", sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/quotes/tag/courage", sponsorLogo: "", sponsorURL: "")
let motivateAfterTip39 = Tip(header: "Quote", title: "The only way that you’re ever going to get to the other side of this journey is by suffering. You have to suffer in order to grow. Some people get it, some people don’t.", body: "- David Goggins \n\nRetired US Navy SEAL", sourceName: "Awaken The Greatness Within", sourceURL: "https://www.awakenthegreatnesswithin.com/40-inspirational-david-goggins-quotes-on-success/", sponsorLogo: "", sponsorURL: "")
let motivateAfterTip40 = Tip(header: "Quote", title: "Never say never, because limits, like fears, are often just an illusion.", body: "- Michael Jordan \n\nRegarded by most as the NBA's greatest all-time player", sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/author/quotes/16823.Michael_Jordan", sponsorLogo: "", sponsorURL: "")


let motivateAfterTip41 = Tip(header: "Quote", title: "If you can get through doing things that you hate to do, on the other side is greatness.", body: "- David Goggins \n\nRetired US Navy SEAL", sourceName: "Awaken The Greatness Within", sourceURL: "https://www.awakenthegreatnesswithin.com/40-inspirational-david-goggins-quotes-on-success/", sponsorLogo: "", sponsorURL: "")
let motivateAfterTip42 = Tip(header: "Quote", title: "We are all great. No matter if you think you’re dumb, fat, been bullied, we all have greatness. You gotta find the courage. It’s the non-cognitive skills – hard work, dedication, sacrifice – that will set you apart.", body: "- David Goggins \n\nRetired US Navy SEAL", sourceName: "Awaken The Greatness Within", sourceURL: "https://www.awakenthegreatnesswithin.com/40-inspirational-david-goggins-quotes-on-success/", sponsorLogo: "Quote", sponsorURL: "")
let motivateAfterTip43 = Tip(header: "Quote", title: "Success is not to be pursued; it is to be attracted by the person you become.", body: "Jim Rohn \n\nAmerican entrepreneur, author and motivational speaker." , sourceName: "Lifehack", sourceURL: "https://www.lifehack.org/314137/20-most-thought-provoking-quotes-about-philosophy", sponsorLogo: "", sponsorURL: "")
let motivateAfterTip44 = Tip(header: "Quote", title: "I don’t stop when I’m tired. I stop when I’m done.", body: "- David Goggins \n\nRetired US Navy SEAL", sourceName: "Brilliant Read", sourceURL: "https://www.brilliantread.com/15-best-ever-david-goggins-quotes-on-success-and-failures/", sponsorLogo: "", sponsorURL: "")


let motivateAfterTip45 = Tip(header: "Quote", title: "The six best doctors in the world are - sunlight, rest, exercise, diet, self-confidence and friends. Maintain them in all stages and enjoy a healthy life!", body: "- Steve Jobs", sourceName: "LinkedIn", sourceURL: "https://www.linkedin.com/pulse/worlds-six-best-doctors-steve-jobs-patrick-guan", sponsorLogo: "", sponsorURL: "")
let motivateAfterTip46 = Tip(header: "Quote", title: "A lot of us don’t know about another world that exists for us because it’s on the other side of suffering. That’s the real growth in life.", body: "- David Goggins \n\nRetired US Navy SEAL", sourceName: "Awaken The Greatness Within", sourceURL: "https://www.awakenthegreatnesswithin.com/40-inspirational-david-goggins-quotes-on-success/", sponsorLogo: "", sponsorURL: "")
let motivateAfterTip47 = Tip(header: "Quote", title: "Suffering is a test. That’s all it is. Suffering is the true test of life.", body: "- David Goggins \n\nRetired US Navy SEAL", sourceName: "Awaken The Greatness Within", sourceURL: "https://www.awakenthegreatnesswithin.com/40-inspirational-david-goggins-quotes-on-success/", sponsorLogo: "", sponsorURL: "")
let motivateAfterTip48 = Tip(header: "Quote", title: "Life is one big tug of war between mediocrity and trying to find your best self.", body: "- David Goggins \n\nRetired US Navy SEAL", sourceName: "Awaken The Greatness Within", sourceURL: "https://www.awakenthegreatnesswithin.com/40-inspirational-david-goggins-quotes-on-success/", sponsorLogo: "", sponsorURL: "")


let motivateAfterTip49 = Tip(header: "Quote", title: "Everybody comes to a point in their life when they want to quit. But it’s what you do at that moment that determines who you are.", body: "- David Goggins \n\nRetired US Navy SEAL", sourceName: "Awaken The Greatness Within", sourceURL: "https://www.awakenthegreatnesswithin.com/40-inspirational-david-goggins-quotes-on-success/", sponsorLogo: "", sponsorURL: "")
let motivateAfterTip50 = Tip(header: "Quote", title: "If you want to get better, do the things that no-one else wants to do. Do the things that no-one is even thinking about doing.", body: "- David Goggins \n\nRetired US Navy SEAL", sourceName: "Awaken The Greatness Within", sourceURL: "https://www.awakenthegreatnesswithin.com/40-inspirational-david-goggins-quotes-on-success/", sponsorLogo: "", sponsorURL: "")
let motivateAfterTip51 = Tip(header: "Quote", title: "Motivation is crap. Motivation comes and goes. When you’re driven, whatever is in front of you will get destroyed.", body: "- David Goggins \n\nRetired US Navy SEAL", sourceName: "Brilliant Read", sourceURL: "https://www.brilliantread.com/15-best-ever-david-goggins-quotes-on-success-and-failures/", sponsorLogo: "", sponsorURL: "")
let motivateAfterTip52 = Tip(header: "Quote", title: "If you can get through doing things that you hate to do, on the other side is greatness.", body: "- David Goggins \n\nRetired US Navy SEAL", sourceName: "Brilliant Read", sourceURL: "https://www.brilliantread.com/15-best-ever-david-goggins-quotes-on-success-and-failures/", sponsorLogo: "", sponsorURL: "")


let motivateAfterTip53 = Tip(header: "Quote", title: "One can have no smaller or greater mastery than mastery of oneself.", body: "- Leonardo da Vinci \n\nItalian polymath of the Renaissance and is considered one of the greatest painters of all time.", sourceName: "Brilliant Read", sourceURL: "https://www.brilliantread.com/15-best-ever-david-goggins-quotes-on-success-and-failures/", sponsorLogo: "", sponsorURL: "")
let motivateAfterTip54 = Tip(header: "Quote", title: "Most of this generation quits the second they get talked to. It’s so easy to be great nowadays because most people are just weak. \n\nIf you have any mental toughness, any fraction of self-discipline – the ability to not want to do it, but still do it – you’ll be successful.", body: "- David Goggins \n\nRetired US Navy SEAL", sourceName: "Brilliant Read", sourceURL: "https://www.brilliantread.com/15-best-ever-david-goggins-quotes-on-success-and-failures/", sponsorLogo: "", sponsorURL: "")
let motivateAfterTip55 = Tip(header: "Quote", title: "The reason why I put myself through the things I hate doing is because I am callusing my mind. \n\nI’m training for life so that when something tragic happens in my life, I don’t fall apart. \n\nI’m training my mind, my body, my spirit so its all one so that I can handle whatever life is going to throw at me.", body: "- David Goggins \n\nRetired US Navy SEAL", sourceName: "Brilliant Read", sourceURL: "https://www.brilliantread.com/15-best-ever-david-goggins-quotes-on-success-and-failures/", sponsorLogo: "", sponsorURL: "")
let motivateAfterTip56 = Tip(header: "Quote", title: "If you ever tell me that I can’t do something, I’m going to let you know, in some way, that I am going to do it.", body: "- David Goggins \n\nRetired US Navy SEAL", sourceName: "Brilliant Read", sourceURL: "https://www.brilliantread.com/15-best-ever-david-goggins-quotes-on-success-and-failures/", sponsorLogo: "", sponsorURL: "")
//
let motivateAfterTip57 = Tip(header: "Quote", title: "Musicians must make music, artists must paint, poets must write if they are ultimately to be at peace with themselves. What humans can be, they must be.", body: "- Abraham Maslow \n\nAmerican psychologist who was best known for creating Maslow's hierarchy of needs" , sourceName: "SUCCESS", sourceURL: "https://www.success.com/17-inspiring-quotes-to-help-you-live-a-life-of-purpose/", sponsorLogo: "", sponsorURL: "")
let motivateAfterTip58 = Tip(header: "Quote", title: "Money and success don’t change people; they merely amplify what is already there.", body: "- Will Smith \n\nAmerican actor and rapper" , sourceName: "Lifehack", sourceURL: "https://www.lifehack.org/314137/20-most-thought-provoking-quotes-about-philosophy", sponsorLogo: "", sponsorURL: "")
let motivateAfterTip59 = Tip(header: "Love Quote", title: "The incredible thing about love is that you can’t get rid of it. \n\nIf you try to give it away, you end up with twice as much, but if you try to hold onto it, it disappears. \n\nIt is an extraordinary situation, where the people who just absolutely push it out, get it back tenfold.", body: "- Warren Buffett", sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2019/08/31/billionaire-investor-warren-buffetts-best-advice.html", sponsorLogo: "", sponsorURL: "")
let motivateAfterTip60 = Tip(header: "Quote", title: "We will all find ourselves neck deep in mud someday. That is the time to sing loudly, to smile broadly, to lift up those around you, and give them hope that tomorrow will be a better day. \n\nIf you want to change the world, start singing when you're up to your neck in mud.", body: "- Admiral William H. McRaven", sourceName: "Make Your Bed: Little Things That Can Change Your Life...And Maybe the World, by Admiral William H. McRaven", sourceURL: "https://www.amazon.com/Make-Your-Bed-Little-Things/dp/1455570249", sponsorLogo: "", sponsorURL: "")
//
let motivateAfterTip61 = Tip(header: "Quote", title: "Of all the lessons I learned in SEAL training, this was the most important. Never quit. \n\nIt doesn't sound particularly profound, but life constantly puts you in situations where quitting seems so much easier than continuing on. \n\nWhere the odds are so stacked against you that giving up seems the rational thing to do. \n\nBut, if you want to change the world, never quit.", body: "- Admiral William H. McRaven", sourceName: "Make Your Bed: Little Things That Can Change Your Life...And Maybe the World, by Admiral William H. McRaven", sourceURL: "https://www.amazon.com/Make-Your-Bed-Little-Things/dp/1455570249", sponsorLogo: "", sponsorURL: "")

//AFTERNOON
//WEEK 1
let motivateAfterTipArray0 = [motivateAfterTip1, motivateAfterTip2, motivateAfterTip3, motivateAfterTip4]
let motivateAfterTopic0 = Topic(title: motivateAfterTitle, icon: motivateIcon, tip: motivateAfterTipArray0)

let motivateAfterTipArray1 = [motivateAfterTip5, motivateAfterTip6, motivateAfterTip7, motivateAfterTip8]
let motivateAfterTopic1 = Topic(title: motivateAfterTitle, icon: motivateIcon, tip: motivateAfterTipArray1)

let motivateAfterTipArray2 = [motivateAfterTip9, motivateAfterTip10, motivateAfterTip11, motivateAfterTip12]
let motivateAfterTopic2 = Topic(title: motivateAfterTitle, icon: motivateIcon, tip: motivateAfterTipArray2)

let motivateAfterTipArray3 = [motivateAfterTip13, motivateAfterTip14, motivateAfterTip15, motivateAfterTip16]
let motivateAfterTopic3 = Topic(title: motivateAfterTitle, icon: motivateIcon, tip: motivateAfterTipArray3)

let motivateAfterTipArray4 = [motivateAfterTip17, motivateAfterTip18, motivateAfterTip19, motivateAfterTip20]
let motivateAfterTopic4 = Topic(title: motivateAfterTitle, icon: motivateIcon, tip: motivateAfterTipArray4)

let motivateAfterTipArray5 = [motivateAfterTip21, motivateAfterTip22, motivateAfterTip23, motivateAfterTip24]
let motivateAfterTopic5 = Topic(title: motivateAfterTitle, icon: motivateIcon, tip: motivateAfterTipArray5)

let motivateAfterTipArray6 = [motivateAfterTip25, motivateAfterTip26, motivateAfterTip27, motivateAfterTip28]
let motivateAfterTopic6 = Topic(title: motivateAfterTitle, icon: motivateIcon, tip: motivateAfterTipArray6)

//WEEK 2
let motivateAfterTipArray7 = [motivateAfterTip29, motivateAfterTip30, motivateAfterTip31, motivateAfterTip32]
let motivateAfterTopic7 = Topic(title: motivateAfterTitle, icon: motivateIcon, tip: motivateAfterTipArray7)

let motivateAfterTipArray8 = [motivateAfterTip33, motivateAfterTip34, motivateAfterTip35, motivateAfterTip36]
let motivateAfterTopic8 = Topic(title: motivateAfterTitle, icon: motivateIcon, tip: motivateAfterTipArray8)

let motivateAfterTipArray9 = [motivateAfterTip37, motivateAfterTip38, motivateAfterTip39, motivateAfterTip40]
let motivateAfterTopic9 = Topic(title: motivateAfterTitle, icon: motivateIcon, tip: motivateAfterTipArray9)

let motivateAfterTipArray10 = [motivateAfterTip41, motivateAfterTip42, motivateAfterTip43, motivateAfterTip44]
let motivateAfterTopic10 = Topic(title: motivateAfterTitle, icon: motivateIcon, tip: motivateAfterTipArray10)

let motivateAfterTipArray11 = [motivateAfterTip45, motivateAfterTip46, motivateAfterTip47, motivateAfterTip48]
let motivateAfterTopic11 = Topic(title: motivateAfterTitle, icon: motivateIcon, tip: motivateAfterTipArray11)

let motivateAfterTipArray12 = [motivateAfterTip49, motivateAfterTip50, motivateAfterTip51, motivateAfterTip52]
let motivateAfterTopic12 = Topic(title: motivateAfterTitle, icon: motivateIcon, tip: motivateAfterTipArray12)

let motivateAfterTipArray13 = [motivateAfterTip53, motivateAfterTip54, motivateAfterTip55, motivateAfterTip56]
let motivateAfterTopic13 = Topic(title: motivateAfterTitle, icon: motivateIcon, tip: motivateAfterTipArray13)

let motivateAfterTipArray14 = [motivateAfterTip57, motivateAfterTip58, motivateAfterTip59, motivateAfterTip60]
let motivateAfterTipArray15 = [motivateAfterTip61, motivateAfterTip12, motivateAfterTip13, motivateAfterTip14]

// RANDOM
let motivateAfterTipArrays = [motivateAfterTipArray0, motivateAfterTipArray1, motivateAfterTipArray2, motivateAfterTipArray3, motivateAfterTipArray4, motivateAfterTipArray5, motivateAfterTipArray6, motivateAfterTipArray7, motivateAfterTipArray8, motivateAfterTipArray9, motivateAfterTipArray10, motivateAfterTipArray11, motivateAfterTipArray12, motivateAfterTipArray13, motivateAfterTipArray14, motivateAfterTipArray15,]
let motivateAfterTopic = Topic(title: motivateAfterTitle, icon: motivateIcon, tip: motivateAfterTipArrays.random())
let motivateAfterTopics = Topics(title: motivateAfterTitle, icon: motivateIcon, topics: [motivateAfterTopic])


//MARK: PM - Reflect
//1
let motivatePMTip1 = Tip(header: "Quote", title: "What can you do to promote world peace? Go home and love your family.", body: "- Mother Teresa \n\nAlbanian-Indian Roman Catholic nun and missionary." , sourceName: "Goalcast", sourceURL: "https://www.goalcast.com/2017/04/10/top-20-most-inspiring-mother-teresa-quotes/", sponsorLogo: "", sponsorURL: "")
let motivatePMTip2 = Tip(header: "Quote", title: "Early to bed and early to rise makes a man healthy, wealthy, and wise.", body: "- Benjamin Franklin \n\nOne of the Founding Fathers of the United States." , sourceName: "Wisdom Quotes", sourceURL: "https://wisdomquotes.com/good-morning-quotes/", sponsorLogo: "", sponsorURL: "")
let motivatePMTip3 = Tip(header: "Quote", title: "It is well to be up before daybreak [sunrise], for such habits contribute to health, wealth, and wisdom.", body: "- Aristotle \n\nGreek philosopher. Along with his teacher Plato, he has been called the \"Father of Western Philosophy\"." , sourceName: "Wisdom Quotes", sourceURL: "https://wisdomquotes.com/good-morning-quotes/", sponsorLogo: "", sponsorURL: "")
let motivatePMTip4 = Tip(header: "Quote", title: "Read what you love until you love to read.", body: "- Naval Ravikant \n\nCEO and a co-founder of AngelList." , sourceName: "Wonderful Quote", sourceURL: "https://www.wonderfulquote.com/a/naval-ravikant-quotes", sponsorLogo: "", sponsorURL: "")

//2
let motivatePMTip5 = Tip(header: "Quote", title: "You don’t become what you want, you become what you believe.", body: "- Oprah Winfrey \n\nAmerican television personality, actress, and entrepreneur." , sourceName: "Goalcast", sourceURL: "https://www.goalcast.com/2016/09/28/top-20-inspiring-oprah-winfrey-quotes-that-will-empower-you/", sponsorLogo: "", sponsorURL: "")
let motivatePMTip6 = Tip(header: "Quote", title: "Seek wealth, not money or status. Wealth is having assets that earn while you sleep. Money is how we transfer time and wealth. Status is your place in the social hierarchy.", body: "- Naval Ravikant \n\nCEO and a co-founder of AngelList." , sourceName: "Wonderful Quote", sourceURL: "https://www.wonderfulquote.com/a/naval-ravikant-quotes", sponsorLogo: "", sponsorURL: "")
let motivatePMTip7 = Tip(header: "Quote", title: "The more rejection you get, the better you are, the more you’ve learned, the closer you are to your outcome… If you can handle rejection, you’ll learn to get everything you want.", body: "- Tony Robbins \n\nBest-selling author, life and business strategist, and entrepreneur." , sourceName: "Goalcast", sourceURL: "https://www.goalcast.com/2016/08/18/top-20-inspiring-tony-robbins-quotes/", sponsorLogo: "", sponsorURL: "")
let motivatePMTip8 = Tip(header: "Quote", title: "Be thankful for what you have; you’ll end up having more. If you concentrate on what you don’t have, you will never, ever have enough.", body: "- Oprah Winfrey \n\nAmerican television personality, actress, and entrepreneur." , sourceName: "Goalcast", sourceURL: "https://www.goalcast.com/2016/09/28/top-20-inspiring-oprah-winfrey-quotes-that-will-empower-you/", sponsorLogo: "", sponsorURL: "")

//3
let motivatePMTip9 = Tip(header: "Quote", title: "Courage doesn't always roar. Sometimes courage is a quiet voice at the end of the day saying, \"I will try again tomorrow.\"", body: "- Mary Anne Radmacher \n\nAmerican author" , sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/author/quotes/149829.Mary_Anne_Radmacher", sponsorLogo: "", sponsorURL: "")
let motivatePMTip10 = Tip(header: "Quote", title: "Wanting to be someone else is a waste of the person you are.", body: "- Marilyn Monroe \n\nShe was an American actress, model, and singer." , sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/quotes/tag/self-esteem", sponsorLogo: "", sponsorURL: "")
let motivatePMTip11 = Tip(header: "Quote", title: "Everybody has a calling. And your real job in life is to figure out as soon as possible what that is, who you were meant to be, and to begin to honor that in the best way possible for yourself.", body: "- Oprah Winfrey \n\nAmerican television personality, actress, and entrepreneur." , sourceName: "Goalcast", sourceURL: "https://www.goalcast.com/2016/09/28/top-20-inspiring-oprah-winfrey-quotes-that-will-empower-you/", sponsorLogo: "", sponsorURL: "")
let motivatePMTip12 = Tip(header: "Quote", title: "Everyone thinks of changing the world, but no one thinks of changing himself.", body: "Leo Tolstoy \n\nRussian writer who is regarded as one of the greatest authors of all time." , sourceName: "Lifehack", sourceURL: "https://www.lifehack.org/314137/20-most-thought-provoking-quotes-about-philosophy", sponsorLogo: "", sponsorURL: "")


//4
let motivatePMTip13 = Tip(header: "Quote", title: "It’s what you practice in private that you will be rewarded for in public.", body: "- Tony Robbins \n\nBest-selling author, life and business strategist, and entrepreneur." , sourceName: "Goalcast", sourceURL: "https://www.goalcast.com/2016/08/18/top-20-inspiring-tony-robbins-quotes/", sponsorLogo: "", sponsorURL: "")
let motivatePMTip14 = Tip(header: "Quote", title: "No matter how many mistakes you make or how slow you progress, you are still way ahead of everyone who isn’t trying.", body: "- Tony Robbins \n\nBest-selling author, life and business strategist, and entrepreneur." , sourceName: "Awaken The Greatness Within", sourceURL: "https://www.awakenthegreatnesswithin.com/68-inspirational-tony-robbins-quotes-to-awaken-the-giant-within/", sponsorLogo: "", sponsorURL: "")
let motivatePMTip15 = Tip(header: "Quote", title: "The more you praise and celebrate your life, the more there is in life to celebrate.", body: "- Oprah Winfrey \n\nAmerican television personality, actress, and entrepreneur." , sourceName: "Goalcast", sourceURL: "https://www.goalcast.com/2016/09/28/top-20-inspiring-oprah-winfrey-quotes-that-will-empower-you/", sponsorLogo: "", sponsorURL: "")
let motivatePMTip16 = Tip(header: "Quote", title: "Someone else is happy with less than what you have.", body: "- Tony Robbins \n\nBest-selling author, life and business strategist, and entrepreneur." , sourceName: "Awaken The Greatness Within", sourceURL: "https://www.awakenthegreatnesswithin.com/68-inspirational-tony-robbins-quotes-to-awaken-the-giant-within/", sponsorLogo: "", sponsorURL: "")

//5
let motivatePMTip17 = Tip(header: "Quote", title: "I’ve come to believe that all my past failure and frustration were actually laying the foundation for the understandings that have created the new level of living I now enjoy.", body: "- Tony Robbins \n\nBest-selling author, life and business strategist, and entrepreneur." , sourceName: "Awaken The Greatness Within", sourceURL: "https://www.awakenthegreatnesswithin.com/68-inspirational-tony-robbins-quotes-to-awaken-the-giant-within/", sponsorLogo: "", sponsorURL: "")
let motivatePMTip18 = Tip(header: "Quote", title: "Out of your deepest pain will come your greatest gifts, but this can only happen when you take control of the meaning.", body: "- Tony Robbins \n\nBest-selling author, life and business strategist, and entrepreneur." , sourceName: "Awaken The Greatness Within", sourceURL: "https://www.awakenthegreatnesswithin.com/68-inspirational-tony-robbins-quotes-to-awaken-the-giant-within/", sponsorLogo: "", sponsorURL: "")
let motivatePMTip19 = Tip(header: "Quote", title: "The only way to do great work is to love what you do. If you haven't found it yet, keep looking. Don't settle.", body: "- Steve Jobs" , sourceName: "Inc.", sourceURL: "https://www.inc.com/lolly-daskal/24-empowering-quotes-to-start-your-day-right.html", sponsorLogo: "", sponsorURL: "")
let motivatePMTip20 = Tip(header: "Quote", title: "Preparation for tomorrow is hard work today.", body: "- Bruce Lee \n\nActor, martial artist, philosopher, and founder of the martial art Jeet Kune Do", sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/quotes/491912-preparation-for-tomorrow-is-hard-work-today", sponsorLogo: "", sponsorURL: "")

//6
let motivatePMTip21 = Tip(header: "Quote", title: "Your income right now is a result of your standards, it is not the industry, it is not the economy.", body: "- Tony Robbins \n\nTony Robbins is a best-selling author, life and business strategist, and entrepreneur." , sourceName: "Awaken The Greatness Within", sourceURL: "https://www.awakenthegreatnesswithin.com/68-inspirational-tony-robbins-quotes-to-awaken-the-giant-within/", sponsorLogo: "", sponsorURL: "")
let motivatePMTip22 = Tip(header: "Quote", title: "You must never be fearful about what you are doing when it is right.", body: "- Rosa Parks \n\nAmerican activist in the civil rights movement", sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/search?q=Rosa+Parks&search%5Bsource%5D=goodreads&search_type=quotes&tab=quotes", sponsorLogo: "", sponsorURL: "")
let motivatePMTip23 = Tip(header: "Quote", title: "Challenges are gifts that force us to search for a new center of gravity. Don’t fight them. Just find a new way to stand.", body: "- Oprah Winfrey \n\nAmerican television personality, actress, and entrepreneur." , sourceName: "Goalcast", sourceURL: "https://www.goalcast.com/2016/09/28/top-20-inspiring-oprah-winfrey-quotes-that-will-empower-you/", sponsorLogo: "", sponsorURL: "")
let motivatePMTip24 = Tip(header: "Quote", title: "If something is important enough, even if the odds are against you, you should still do it.", body: "- Elon Musk \n\nEntrepreneur and CEO of SpaceX and Tesla" , sourceName: "Wisdom To Inspire", sourceURL: "https://wisdomtoinspire.com/authors/elon-musk", sponsorLogo: "", sponsorURL: "")

//7
let motivatePMTip25 = Tip(header: "Motivational Quote", title: "Don’t let your mind control you. Control your mind.", body: "- Jocko Willink \n\nRetired US Navy SEAL, podcaster, and author." , sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/author/quotes/10803973.Jocko_Willink", sponsorLogo: "", sponsorURL: "")
let motivatePMTip26 = Tip(header: "Quote", title: "If you don't control your mind, someone else will.", body: "- John Allston" , sourceName: "Quotes.net", sourceURL: "https://www.quotes.net/authors/John+Allston", sponsorLogo: "", sponsorURL: "")
let motivatePMTip27 = Tip(header: "Quote", title: "Stop letting people who do so little for you control so much of your mind, feelings & emotions.", body: "- Will Smith \n\nAmerican actor and rapper" , sourceName: "Motivation Grid", sourceURL: "https://motivationgrid.com/inspirational-quotes-by-will-smith/", sponsorLogo: "", sponsorURL: "")
let motivatePMTip28 = Tip(header: "Quote", title: "The primary cause of unhappiness is never the situation but the thought about it. Be aware of the thoughts you are thinking. Seperate them from the situation, which is always neutral. Life isn't as serious as the mind makes it out to be.", body: "- Eckhart Tolle \n\nAuthor and spiritual teacher" , sourceName: "Habits For Wellbeing", sourceURL: "https://www.habitsforwellbeing.com/20-quotes-about-the-mind/", sponsorLogo: "", sponsorURL: "")

//8
let motivatePMTip29 = Tip(header: "Quote", title: "No, I don't ever give up.", body: "- Elon Musk \n\nEntrepreneur and CEO of SpaceX and Tesla" , sourceName: "Wisdom To Inspire", sourceURL: "https://wisdomtoinspire.com/authors/elon-musk", sponsorLogo: "", sponsorURL: "")
let motivatePMTip30 = Tip(header: "Quote", title: "Never give up on a dream just because of the time it will take to accomplish it. The time will pass anyway.", body: "- Earl Nightingale \n\nAmerican radio speaker and author" , sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/quotes/32384-never-give-up-on-a-dream-just-because-of-the", sponsorLogo: "", sponsorURL: "")
let motivatePMTip31 = Tip(header: "Quote", title: "Every problem is a gift–without problems we would not grow.", body: "- Tony Robbins \n\nBest-selling author, life and business strategist, and entrepreneur." , sourceName: "Goalcast", sourceURL: "https://www.goalcast.com/2016/08/18/top-20-inspiring-tony-robbins-quotes/", sponsorLogo: "", sponsorURL: "")
let motivatePMTip32 = Tip(header: "Quote", title: "If you don’t set a baseline standard for what you’ll accept in life, you’ll find it’s easy to slip into behaviors and attitudes or a quality of life that’s far below what you deserve.", body: "- Tony Robbins \n\nBest-selling author, life and business strategist, and entrepreneur." , sourceName: "Awaken The Greatness Within", sourceURL: "https://www.awakenthegreatnesswithin.com/68-inspirational-tony-robbins-quotes-to-awaken-the-giant-within/", sponsorLogo: "", sponsorURL: "")

//9
let motivatePMTip33 = Tip(header: "Quote", title: "Life's most persistent and urgent question is, 'What are you doing for others?'", body: "- Martin Luther King Jr. \n\nAmerican minister who became the most visible spokesperson and leader in the civil rights movement from 1955 until his assassination in 1968." , sourceName: "Inc.", sourceURL: "https://www.inc.com/peter-economy/50-wise-quotes-that-will-inspire-you-to-success-in-life.html", sponsorLogo: "", sponsorURL: "")

let motivatePMTip34 = Tip(header: "Quote", title: "If you can dream it, you can do it.", body: "- Walt Disney" , sourceName: "Inc.", sourceURL: "https://www.inc.com/jayson-demers/51-quotes-to-inspire-success-in-your-life-and-business.html", sponsorLogo: "", sponsorURL: "")

let motivatePMTip35 = Tip(header: "Quote", title: "Many of life's failures are people who did not realize how close they were to success when they gave up.", body: "- Thomas Edison \n\nConsidered to be America's greatest inventor" , sourceName: "Inc.", sourceURL: "https://www.inc.com/jayson-demers/51-quotes-to-inspire-success-in-your-life-and-business.html", sponsorLogo: "", sponsorURL: "")
let motivatePMTip36 = Tip(header: "Quote", title: "Take into account that great love and great achievements involve great risk.", body: "- Dalai Lama \n\nThe spiritual leader of the Tibetan people." , sourceName: "Success", sourceURL: "https://www.success.com/19-wise-quotes-for-a-better-life/", sponsorLogo: "", sponsorURL: "")

//10
let motivatePMTip37 = Tip(header: "Quote", title: "In the end, it’s not the years in your life that count. It’s the life in your years.", body: "- Abraham Lincoln \n\nHe suffered a series of lost elections (along with some successes) before he went on to become one of the greatest US presidents." , sourceName: "Success", sourceURL: "https://www.success.com/19-wise-quotes-for-a-better-life/", sponsorLogo: "", sponsorURL: "")
let motivatePMTip38 = Tip(header: "Quote", title: "Life isn't about finding yourself. Life is about creating yourself.", body: "- George Bernard Shaw \n\nIrish playwright, critic, and political activist." , sourceName: "Success", sourceURL: "https://www.success.com/19-wise-quotes-for-a-better-life/", sponsorLogo: "", sponsorURL: "")
let motivatePMTip39 = Tip(header: "Quote", title: "The only disability in life is a bad attitude.", body: "- Scott Hamilton \n\nRetired figure skater and Olympic gold medalist." , sourceName: "Inc.", sourceURL: "https://www.inc.com/peter-economy/50-wise-quotes-that-will-inspire-you-to-success-in-life.html", sponsorLogo: "", sponsorURL: "")
let motivatePMTip40 = Tip(header: "Quote", title: "The greatest day in your life and mine is when we take total responsibility for our attitudes. That's the day we truly grow up.", body: "- John C. Maxwell \n\nAmerican author who has written many books, primarily focusing on leadership." , sourceName: "Inc.", sourceURL: "https://www.inc.com/peter-economy/50-wise-quotes-that-will-inspire-you-to-success-in-life.html", sponsorLogo: "", sponsorURL: "")

//11
let motivatePMTip41 = Tip(header: "Quote - Mental Toughness", title: "I've failed over and over and over again in my life and that is why I succeed.", body: "- Michael Jordan \n\nRegarded by most as the NBA's greatest all-time player" , sourceName: "Inc.", sourceURL: "https://www.inc.com/peter-economy/50-wise-quotes-that-will-inspire-you-to-success-in-life.html", sponsorLogo: "", sponsorURL: "")

let motivatePMTip42 = Tip(header: "Quote", title: "Do not judge me by my successes, judge me by how many times I fell down and got back up again.", body: "- Nelson Mandela \n\nHe was a South African anti-apartheid revolutionary and political leader." , sourceName: "Britannica", sourceURL: "https://www.britannica.com/list/nelson-mandela-quotes", sponsorLogo: "", sponsorURL: "")

let motivatePMTip43 = Tip(header: "Quote", title: "Remember your dreams and fight for them. You must know what you want from life. There is just one thing that makes your dream become impossible: the fear of failure.", body: "- Paulo Coelho \n\nHe wrote the best-selling novel, 'The Alchemist,' which sold 35 million copies and is the most translated book in the world by a living author." , sourceName: "Inc.", sourceURL: "https://www.inc.com/peter-economy/50-wise-quotes-that-will-inspire-you-to-success-in-life.html", sponsorLogo: "", sponsorURL: "")

let motivatePMTip44 = Tip(header: "Quote", title: "If you don't design your own life plan, chances are you'll fall into someone else's plan. And guess what they have planned for you? Not much.", body: "- Jim Rohn \n\nEntrepreneur, author and motivational speaker." , sourceName: "Inc.", sourceURL: "https://www.inc.com/peter-economy/50-wise-quotes-that-will-inspire-you-to-success-in-life.html", sponsorLogo: "", sponsorURL: "")


//12
let motivatePMTip45 = Tip(header: "Quote", title: "Our prime purpose in this life is to help others. And if you can't help them, at least don't hurt them.", body: "- Dalai Lama \n\nThe spiritual leader of the Tibetan people." , sourceName: "Inc.", sourceURL: "https://www.inc.com/peter-economy/50-wise-quotes-that-will-inspire-you-to-success-in-life.html", sponsorLogo: "", sponsorURL: "")

let motivatePMTip46 = Tip(header: "Quote", title: "Only a life lived for others is a life worthwhile.", body: "- Albert Einstein" , sourceName: "Inc.", sourceURL: "https://www.inc.com/peter-economy/50-wise-quotes-that-will-inspire-you-to-success-in-life.html", sponsorLogo: "", sponsorURL: "")

let motivatePMTip47 =  Tip(header: "Quote", title: "Life takes on meaning when you become motivated, set goals and charge after them in an unstoppable manner.", body: "- Les Brown \n\nBorn into poverty and abandoned as a child, he went on to become one of America’s best-known motivational speakers." , sourceName: "Inc.", sourceURL: "https://www.inc.com/peter-economy/50-wise-quotes-that-will-inspire-you-to-success-in-life.html", sponsorLogo: "", sponsorURL: "")

let motivatePMTip48 = Tip(header: "Quote", title: "Real integrity is doing the right thing, knowing that nobody’s going to know whether you did it or not.", body: "- Oprah Winfrey \n\nAmerican television personality, actress, and entrepreneur." , sourceName: "Goalcast", sourceURL: "https://www.goalcast.com/2016/09/28/top-20-inspiring-oprah-winfrey-quotes-that-will-empower-you/", sponsorLogo: "", sponsorURL: "")

//13
let motivatePMTip49 = Tip(header: "Quote", title: "Not how long, but how well you have lived is the main thing.", body: "- Seneca \n\nRoman Stoic philosopher and statesman." , sourceName: "Wisdom Quotes", sourceURL: "https://wisdomquotes.com/life-quotes/", sponsorLogo: "", sponsorURL: "")

let motivatePMTip50 = Tip(header: "Quote", title: "Very little is needed to make a happy life; it is all within yourself, in your way of thinking.", body: "- Marcus Aurelius \n\nRoman emperor and a Stoic philosopher." , sourceName: "Wisdom Quotes", sourceURL: "https://wisdomquotes.com/life-quotes/", sponsorLogo: "", sponsorURL: "")

let motivatePMTip51 = Tip(header: "Quote", title: "The talent for being happy is appreciating and liking what you have, instead of what you don’t have.", body: "- Woody Allen \n\nFilm director, writer, and actor." , sourceName: "Lifehack", sourceURL: "https://www.lifehack.org/621815/22-happiness-quotes", sponsorLogo: "", sponsorURL: "")

let motivatePMTip52 = Tip(header: "Quote", title: "Everyone can rise above their circumstances and achieve success if they are dedicated to and passionate about what they do.", body: "- Nelson Mandela \n\nHe was a South African anti-apartheid revolutionary and political leader." , sourceName: "Britannica", sourceURL: "https://www.britannica.com/list/nelson-mandela-quotes", sponsorLogo: "", sponsorURL: "")


//14
let motivatePMTip53 = Tip(header: "Quote", title: "Happiness doesn’t depend on any external conditions, it is governed by our mental attitude.", body: "- Dale Carnegie \n\nAmerican author and lecturer." , sourceName: "Lifehack", sourceURL: "https://www.lifehack.org/621815/22-happiness-quotes", sponsorLogo: "", sponsorURL: "")

let motivatePMTip54 = Tip(header: "Quote", title: "Happiness is not in the mere possession of money; it lies in the joy of achievement, in the thrill of creative effort.", body: "- Franklin D. Roosevelt \n\nAssuming the US Presidency at the depth of the Great Depression, he helped the American people regain faith in themselves." , sourceName: "Positivity Blog", sourceURL: "https://www.positivityblog.com/happiness-quotes/", sponsorLogo: "", sponsorURL: "")

let motivatePMTip55 = Tip(header: "Quote", title: "Sing the song that only you can sing, write the book that only you can write, build the product that only you can build… live the life that only you can live.", body: "- Naval Ravikant \n\nCEO and a co-founder of AngelList." , sourceName: "Lifehack", sourceURL: "https://www.lifehack.org/621815/22-happiness-quotes", sponsorLogo: "", sponsorURL: "")

let motivatePMTip56 = Tip(header: "Quote", title: "Anyone who stops learning is old, whether at twenty or eighty. Anyone who keeps learning stays young. The greatest thing in life is to keep your mind young.", body: "- Henry Ford \n\nFounder of the Ford Motor Company." , sourceName: "Inc.", sourceURL: "https://www.inc.com/peter-economy/50-wise-quotes-that-will-inspire-you-to-success-in-life.html", sponsorLogo: "", sponsorURL: "")

//15
let motivatePMTip57 = Tip(header: "Quote", title: "Rich people have small TVs and big libraries, and poor people have small libraries and big TVs.", body: "- Zig Ziglar \n\nAmerican World War II veteran, author and motivational speaker." , sourceName: "Success", sourceURL: "https://www.success.com/17-motivating-quotes-about-becoming-rich/", sponsorLogo: "", sponsorURL: "")
let motivatePMTip58 = Tip(header: "Quote", title: "A room without books is like a body without a soul.", body: "- Marcus Tullius Cicero \n\nRoman statesman and philosopher" , sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/quotes/764-a-room-without-books-is-like-a-body-without-a", sponsorLogo: "Quote", sponsorURL: "")
let motivatePMTip59 = Tip(header: "", title: "The best investment you can make is in yourself. The more you learn, the more you earn.", body: "- Warren Buffett \n\nInvestor and CEO of Berkshire Hathaway" , sourceName: "Medium", sourceURL: "https://medium.com/swlh/the-more-you-learn-the-more-you-earn-investing-in-personal-development-7ac8a802c313", sponsorLogo: "", sponsorURL: "")

let motivatePMTip60 = Tip(header: "Quote", title: "Formal education will make you a living; self-education will make you a fortune.", body: "- Jim Rohn \n\nEntrepreneur, author and motivational speaker." , sourceName: "Success", sourceURL: "https://www.success.com/17-motivating-quotes-about-becoming-rich/", sponsorLogo: "", sponsorURL: "")

//16
let motivatePMTip61 = Tip(header: "Quote", title: "The first step is you have to say that you can.", body: "- Will Smith \n\nAmerican actor and rapper" , sourceName: "Motivation Grid", sourceURL: "https://motivationgrid.com/inspirational-quotes-by-will-smith/", sponsorLogo: "", sponsorURL: "")
let motivatePMTip62 = Tip(header: "Quote", title: "One reason so few of us achieve what we truly want is that we never direct our focus; we never concentrate our power. \n\nMost people dabble their way through life, never deciding to master anything in particular.", body: "- Tony Robbins \n\nBest-selling author, life and business strategist, and entrepreneur." , sourceName: "Awaken The Greatness Within", sourceURL: "https://www.awakenthegreatnesswithin.com/68-inspirational-tony-robbins-quotes-to-awaken-the-giant-within/", sponsorLogo: "", sponsorURL: "")
let motivatePMTip63 = Tip(header: "Quote", title: "The great courageous act that we must all do, is to have the courage to step out of our history and past so that we can live our dreams.", body: "- Oprah Winfrey \n\nOprah Winfrey is an American television personality, actress, and entrepreneur." , sourceName: "Goalcast", sourceURL: "https://www.goalcast.com/2016/09/28/top-20-inspiring-oprah-winfrey-quotes-that-will-empower-you/", sponsorLogo: "", sponsorURL: "")
let motivatePMTip64 = Tip(header: "Quote", title: "Take the opportunity to learn from your mistakes: find the cause of your problem and eliminate it. \n\nDon’t try to be perfect; just be an excellent example of being human.", body: "- Tony Robbins \n\nBest-selling author, life and business strategist, and entrepreneur." , sourceName: "Goalcast", sourceURL: "https://www.goalcast.com/2016/08/18/top-20-inspiring-tony-robbins-quotes/", sponsorLogo: "", sponsorURL: "")

//8
let motivatePMTip65 = Tip(header: "Quote", title: "Hope is the most powerful force in the universe. With hope you can inspire nations to greatness. With hope you can raise up the downtrodden. With hope you can ease the pain of unbearable loss. \n\nSometimes all it takes is one person to make a difference... to lift up those around you, and give them hope that tomorrow will be a better day.", body: "- Admiral William H. McRaven", sourceName: "Make Your Bed: Little Things That Can Change Your Life...And Maybe the World, by Admiral William H. McRaven", sourceURL: "https://www.amazon.com/Make-Your-Bed-Little-Things/dp/1455570249", sponsorLogo: "", sponsorURL: "")

let motivatePMTip66 = Tip(header: "Quote", title: "At some point we will all confront a dark moment in life. If not the passing of a loved one, then something else that crushes your spirit and leaves you wondering about your future. \n\nIn that dark moment, reach deep inside yourself and be your very best. If you want to change the world, be your very best in the darkest moments.", body: "- Admiral William H. McRaven", sourceName: "Make Your Bed: Little Things That Can Change Your Life...And Maybe the World, by Admiral William H. McRaven", sourceURL: "https://www.amazon.com/Make-Your-Bed-Little-Things/dp/1455570249", sponsorLogo: "", sponsorURL: "")

//






//FRIDAY PM
let motivateFridayPMTip1 = Tip(header: "Quote", title: "Be in the habit of getting up bright and early on the weekends. Why waste such precious time in bed?", body: "- Marilyn vos Savant \n\nShe became the person with the world’s highest IQ at age 10, and is an American magazine columnist, author, and playwright." , sourceName: "Wisdom Quotes", sourceURL: "https://wisdomquotes.com/good-morning-quotes/", sponsorLogo: "", sponsorURL: "")




//MOTIVATE - AM, Day, PM







//PM
//WEEK 1
let motivatePMTipArray0 = [motivatePMTip1, motivatePMTip2, motivatePMTip3, motivatePMTip4]
let motivatePMTopic0 = Topic(title: motivatePMTitle, icon: motivateIcon, tip: motivatePMTipArray0)

let motivatePMTipArray1 = [motivatePMTip5, motivatePMTip6, motivatePMTip7, motivatePMTip8]
let motivatePMTopic1 = Topic(title: motivatePMTitle, icon: motivateIcon, tip: motivatePMTipArray1)

let motivatePMTipArray2 = [motivatePMTip9, motivatePMTip10, motivatePMTip11, motivatePMTip12]
let motivatePMTopic2 = Topic(title: motivatePMTitle, icon: motivateIcon, tip: motivatePMTipArray2)

let motivatePMTipArray3 = [motivatePMTip13, motivatePMTip14, motivatePMTip15, motivatePMTip16]
let motivatePMTopic3 = Topic(title: motivatePMTitle, icon: motivateIcon, tip: motivatePMTipArray3)

let motivatePMTipArray4 = [motivatePMTip17, motivatePMTip18, motivatePMTip19, motivatePMTip20]
let motivatePMTopic4 = Topic(title: motivatePMTitle, icon: motivateIcon, tip: motivatePMTipArray4)

let motivatePMTipArray5 = [motivatePMTip21, motivatePMTip22, motivatePMTip23, motivatePMTip24]
let motivatePMTopic5 = Topic(title: motivatePMTitle, icon: motivateIcon, tip: motivatePMTipArray5)

let motivatePMTipArray6 = [motivatePMTip25, motivatePMTip26, motivatePMTip27, motivatePMTip28]
let motivatePMTopic6 = Topic(title: motivatePMTitle, icon: motivateIcon, tip: motivatePMTipArray6)

//WEEK 2
let motivatePMTipArray7 = [motivatePMTip29, motivatePMTip30, motivatePMTip31, motivatePMTip32]
let motivatePMTopic7 = Topic(title: motivatePMTitle, icon: motivateIcon, tip: motivatePMTipArray7)

let motivatePMTipArray8 = [motivatePMTip33, motivatePMTip34, motivatePMTip35, motivatePMTip36]
let motivatePMTopic8 = Topic(title: motivatePMTitle, icon: motivateIcon, tip: motivatePMTipArray8)

let motivatePMTipArray9 = [motivatePMTip37, motivatePMTip38, motivatePMTip39, motivatePMTip40]
let motivatePMTopic9 = Topic(title: motivatePMTitle, icon: motivateIcon, tip: motivatePMTipArray9)

let motivatePMTipArray10 = [motivatePMTip41, motivatePMTip42, motivatePMTip43, motivatePMTip44]
let motivatePMTopic10 = Topic(title: motivatePMTitle, icon: motivateIcon, tip: motivatePMTipArray10)

let motivatePMTipArray11 = [motivatePMTip45, motivatePMTip46, motivatePMTip47, motivatePMTip48]
let motivatePMTopic11 = Topic(title: motivatePMTitle, icon: motivateIcon, tip: motivatePMTipArray11)

let motivatePMTipArray12 = [motivatePMTip49, motivatePMTip50, motivatePMTip51, motivatePMTip52]
let motivatePMTopic12 = Topic(title: motivatePMTitle, icon: motivateIcon, tip: motivatePMTipArray12)

let motivatePMTipArray13 = [motivatePMTip53, motivatePMTip54, motivatePMTip55, motivatePMTip56]
let motivatePMTopic13 = Topic(title: motivatePMTitle, icon: motivateIcon, tip: motivatePMTipArray13)


let motivatePMTipArray14 = [motivatePMTip57, motivatePMTip58, motivatePMTip59, motivatePMTip60]
let motivatePMTipArray15 = [motivatePMTip61, motivatePMTip62, motivatePMTip63, motivatePMTip64]
//WIP
let motivatePMTipArray16 = [motivatePMTip65, motivatePMTip66, motivatePMTip63, motivatePMTip64]

// RANDOM
let motivatePMTipArrays = [motivatePMTipArray0, motivatePMTipArray1, motivatePMTipArray2, motivatePMTipArray3, motivatePMTipArray4, motivatePMTipArray5, motivatePMTipArray6, motivatePMTipArray7, motivatePMTipArray8, motivatePMTipArray9, motivatePMTipArray10, motivatePMTipArray11, motivatePMTipArray12, motivatePMTipArray13, motivateAfterTipArray14, motivatePMTipArray15, motivatePMTipArray16]
let motivatePMTopic = Topic(title: motivatePMTitle, icon: motivateIcon, tip: motivatePMTipArrays.random())
let motivatePMTopics = Topics(title: motivatePMTitle, icon: motivateIcon, topics: [motivatePMTopic])


//MARK: - Bad Mood

let anxiousTitle = "Anxious"
let anxiousIcon = Constants.Icon.anxious

let stressedTitle = "Stressed"
let stressedIcon = Constants.Icon.neutral

let depressedTitle = "Depressed"
let depressedIcon = Constants.Icon.sad

let madTitle = "Mad"
let madIcon = Constants.Icon.mad


//MARK: Mood - Morning
//0

//QUOTE



//GENERAL
let helplineTip1 = Tip(header: "Hapi App", title: "• Talk with a caring listener in a judgement-free space \n• Available 24/7 \n• First 60 minutes are free", body: "Hapi allows you to express your thoughts to a listener. \n\n88% of people feel better after talking to a Hapi Listener. \n\nHapi is anonymous and secure. " , sourceName: "Hapi: Talk, Vent, Be Happy", sourceURL: "https://apps.apple.com/us/app/hapi-talk-vent-be-happy/id1466314569", sponsorLogo: "", sponsorURL: "")
let helplineTip2 = Tip(header: "Crisis Text Line", title: "Free, confidential, and 24/7 support at your fingertips", body: "Text with a volunteer Crisis Counselor. \n\nThe top 3 texter issues are anxiety, depression, and relationships. \n\n• USA: Text HOME to 741741 \n• CAN: Text HOME to 686868", sourceName: "Crisis Text Line", sourceURL: "https://www.crisistextline.org/", sponsorLogo: "", sponsorURL: "")
let helplineTip3 = Tip(header: "National Domestic Violence Hotline", title: "Free, confidential, and 24/7 support", body: "Our highly-trained advocates are available to talk confidentially with anyone experiencing domestic violence, seeking resources or information, or questioning unhealthy aspects of their relationship. \n\nYou are not alone: \n• Call 1-800-799-7233 \n• Text LOVEIS to 22522", sourceName: "National Domestic Violence Hotline", sourceURL: "https://www.thehotline.org/", sponsorLogo: "", sponsorURL: "")


//0
let helplineArray = [helplineTip1, helplineTip2,]



//ANXIETY/STRESSED
//0



//If you want to conquer the anxiety of life, live in the moment, live in the breath.
//Amit Ray

//Breathe in deeply to bring your mind home to your body. – Thich Nhat Hanh






//MARK: ANXIOUS AM
//Crisis Text Line shows teens feel most anxious early in the day and most stressed later in the day
let anxiousTip0 = Tip(header: "Quote", title: "Nothing diminishes anxiety faster than action.", body: "- Walter Anderson \n\nFormer Chairman and CEO of Parade Publications", sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/anxiety-zen/201409/22-calming-quotes-people-anxiety", sponsorLogo: "", sponsorURL: "")
let anxiousTip1 = Tip(header: "Reduce Anxiety", title: "Even if caffeine isn't causing your morning anxiety, it's a powerful stimulant that can fuel anxiety", body: "Consider eliminating or at least cutting back on coffee and tea to see if your symptoms improve." , sourceName: "Verywell Mind", sourceURL: "https://www.verywellmind.com/tips-to-reduce-morning-anxiety-2584123", sponsorLogo: "", sponsorURL: "")
let anxiousTip2 = Tip(header: "Reduce Anxiety", title: "Navy SEALs use box-breathing to slow down their breathing rate when their bodies are anxious", body: "Breathe in for 4 seconds. \n\nHold air in your lungs for 4 seconds. \n\nExhale for 4 seconds. \n\nHold your breath, lungs emptied, for 4 seconds. \n\nRepeat.", sourceName: "Inc.", sourceURL: "https://www.inc.com/melody-wilding/beat-stress-like-a-navy-seal-with-this-ridiculousl.html", sponsorLogo: "", sponsorURL: "")
let anxiousTip3 = Tip(header: "Avoid Social Media", title: "Reducing your time on social media decreases your risk of anxiety and depression", body: "Study: People who use 7-11 social media platforms had 3 times the risk of anxiety and depression than people who use 0-2 platforms", sourceName: "University of Pittsburgh", sourceURL: "http://www.braininstitute.pitt.edu/using-lots-social-media-sites-raises-depression-risk", sponsorLogo: "", sponsorURL: "")

//2
let anxiousTip4 = Tip(header: "Quote", title: "Trust yourself. You’ve survived a lot, and you’ll survive whatever is coming.", body: "- Robert Tew \n\nBritish former rugby league footballer.", sourceName: "Goalcast", sourceURL: "https://www.goalcast.com/2018/07/26/anxiety-quotes/", sponsorLogo: "", sponsorURL: "")
let anxiousTip5 = Tip(header: "Reduce Anxiety", title: "Exercise is one of the best things you can do for yourself in the morning, especially if you wake up with anxiety", body: "Any physical activity, such as taking a walk, can: \n\n• lift your mood \n• reduce anxiety symptoms \n• improve your body’s ability to handle stress \n• help you relax \n\nAim to exercise at least 5 days per week for 30–45 minutes each session.", sourceName: "Healthline", sourceURL: "https://www.healthline.com/health/morning-anxiety#4", sponsorLogo: "", sponsorURL: "")
let anxiousTip6 = Tip(header: "Reduce Anxiety", title: "Resist checking your phone until you leave your house", body: "Checking your phone will cause your stress hormones to increase. \n\nIt also takes up time and potentially floods your brain with upsetting information, like urgent requests from your boss or sad news.", sourceName: "Prevention", sourceURL: "https://www.prevention.com/life/a20474126/how-to-relieve-morning-stress/", sponsorLogo: "", sponsorURL: "")
let anxiousTip7 = Tip(header: "Reduce Anxiety", title: "Researched-backed way to reduce anxiety", body: "• Breathe deeply and exhale slowly: Slow breathing helps slow your heart rate, and naturally calms your body's fight-or-flight response. \n\n• Think of one thing you're grateful for: Research shows that it reduces stress and increases your well-being. \n\n• Exercise: Research shows that people who exercise vigorously and regularly were 25% less likely to develop an anxiety disorder within 5 years.", sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/anxiety-zen/201405/21-quick-tips-change-your-anxiety-forever", sponsorLogo: "", sponsorURL: "")


let anxiousTip8 = Tip(header: "Quote", title: "Anxiety and fear produce energy. Focus on the solution, not the problem.", body: "- Walter Anderson \n\nFormer Chairman and CEO of Parade Publications", sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/anxiety-zen/201409/22-calming-quotes-people-anxiety", sponsorLogo: "", sponsorURL: "")
let anxiousTip9 = Tip(header: "Reduce Anxiety", title: "Mastering anxiety is about recognizing your inner dialogue and using positive self-talk", body: "Far too often, we focus on our fears. \n\n• Redirect your thoughts by focusing on what you can do right. \n\n• Don't be overwhelmed by what might go wrong. \n\n• Take positive steps forward.", sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/anxiety-zen/201405/22-quick-tips-change-your-anxiety-forever", sponsorLogo: "", sponsorURL: "")
let anxiousTip10 = Tip(header: "Reduce Anxiety", title: "Learning new things reduces anxiety, study finds", body: "In stressful situations at work, employees experienced less anxiety on days when they engaged in more learning activities (e.g., seeking out intellectual challenges or learning something new) compared to other days. \n\nLearning brings us new information that can be useful for solving future stressors.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/09/to-cope-with-stress-try-learning-something-new", sponsorLogo: "", sponsorURL: "")

let anxiousTip11 = Tip(header: "Reduce Anxiety", title: "Warming your body temperature helps to lower anxiety", body: "• Avoid foods that aggravate anxiety: sugar, caffeine, and alcohol. \n\n• Eat and drink warm foods: soups, stews, and tea. \n\n• Take warm or hot showers and baths.", sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/entry/anxiety-warm-body-temperature_us_5baa7ad2e4b0f143d10e0ef1", sponsorLogo: "", sponsorURL: "")

//3


let anxiousTip12 = Tip(header: "Quote", title: "Anxiety happens when you think you have to figure out everything all at once. Breathe. You’re strong. You got this. Take it day by day.", body: "- Karen Salmansohn", sourceName: "Parade", sourceURL: "https://parade.com/951718/parade/anxiety-quotes/", sponsorLogo: "", sponsorURL: "")
let anxiousTip13 = Tip(header: "Anxiety", title: "Moving your body reduces anxiety", body: "Change the message you tell yourself from \"this is a stressful situation/task\" to \"this is a challenging but rewarding opportunity to learn.\" \n\nRe-reframing it as learning opportunity shifts your mindset and better prepares you to approach the task.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/09/to-cope-with-stress-try-learning-something-new", sponsorLogo: "", sponsorURL: "")
let anxiousTip14 = Tip(header: "Restless Night Or Stress Dream?", title: "Write down what the dreams were about. Over time you might be able to identify recurring patterns and be able to trace the root cause of it", body: "Getting these anxious thoughts and worries out of your mind now will help prevent them from ruining your day.", sourceName: "Well+Good", sourceURL: "https://www.wellandgood.com/good-advice/waking-up-angry-solutions/", sponsorLogo: "", sponsorURL: "")


let anxiousTipAMArray0 = [anxiousTip0, anxiousTip1, anxiousTip2, anxiousTip3]
let anxiousTipAMArray1 = [anxiousTip4, anxiousTip5, anxiousTip6, anxiousTip7]
let anxiousTipAMArray2 = [anxiousTip8, anxiousTip9, anxiousTip10, anxiousTip11]
let anxiousTipAMArray3 = [anxiousTip12, anxiousTip13, anxiousTip14, anxiousTip11]

let anxiousAMTipArrays = [anxiousTipAMArray0, anxiousTipAMArray1, anxiousTipAMArray2, anxiousTipAMArray3,]
// RANDOM
let anxiousAMTopic = Topic(title: anxiousTitle, icon: anxiousIcon, tip: anxiousAMTipArrays.random())
let anxiousAMTopics = Topics(title: anxiousTitle, icon: anxiousIcon, topics: [anxiousAMTopic])




//MAD
let madTipAM0 = Tip(header: "Quote", title: "\"Anger makes you smaller, while forgiveness forces you to grow beyond what you were.\"", body: "Chérie Carter-Scott \nAmerican author and life coach" , sourceName: "Everyday Power", sourceURL: "https://everydaypower.com/forgiveness-quotes-life-love-friendship/", sponsorLogo: "", sponsorURL: "")
let madTipAM1 = Tip(header: "Reduce Anger 📓", title: "Even if you're in a bad mood, 1-minute of gratitude journaling a day can increase your long-term well-being by more than 10%", body: "Those who pay attention to what is good in their life instead of what is bad are more likely to feel positively about their life. Gratitude makes us feel more gratitude." , sourceName: "Positive Psychology Program", sourceURL: "https://positivepsychologyprogram.com/benefits-gratitude-research-questions/", sponsorLogo: "", sponsorURL: "")
let madTipAM2 = Tip(header: "Reduce Anger", title: "Change your environment", body: "• Get out of bed and exposing yourself to bright light. \n\n• Take a few laps around the house to distract your mind and to remove yourself from the area.", sourceName: "Well+Good", sourceURL: "https://www.wellandgood.com/good-advice/waking-up-angry-solutions/", sponsorLogo: "", sponsorURL: "")
let madTipAM3 = Tip(header: "Reduce Anger", title: "Recognize what your triggers are and notice how your body reacts", body: "• Do you clench your teeth or fists? \n• Do you start breathing heavy? \n\nDo the opposite of your body’s negative reaction. \n• If you’re getting tense……Take a deep breath. \n• Close your eyes and count to 3 in your mind. \n• Loosen your muscles by flexing them a few times then relaxing them. \n\nAnger can easily snowball, so take a few moments to stop the angry statements running through your head. \n• Ask yourself if it’s really worth getting upset over? Will the issue even matter in a week, month, or year? \n• Wait at least 5 seconds before you speak. \n• Calmly say how you feel without yelling. \n• Or, walk away and take a few minutes to cool off.", sourceName: "Your Life Your Voice", sourceURL: "https://www.yourlifeyourvoice.org/Pages/tip-4-ways-to-manage-your-anger.aspx", sponsorLogo: "", sponsorURL: "")


let madTipAM4 = Tip(header: "Quote", title: "Holding on to anger is like grasping a hot coal with the intent of throwing it at someone else; you are the one who gets burned.", body: "- Buddha", sourceName: "BrainyQuote", sourceURL: "https://www.brainyquote.com/lists/topics/top-10-anger-quotes", sponsorLogo: "", sponsorURL: "")
let madTipAM5 = Tip(header: "Reduce Anger", title: "Practice relaxation skills", body: "• Deep-breathing exercises \n\n• Imagine a relaxing scene \n• Listen to music \n• Write in a journal \n\n• Repeat a calming word or phrase, such as \"Take it easy\"", sourceName: "Mayo Clinic", sourceURL: "https://www.mayoclinic.org/healthy-lifestyle/adult-health/in-depth/anger-management/art-20045434", sponsorLogo: "", sponsorURL: "")
let madTipAM6 = Tip(header: "Reduce Anger", title: "Avoid the news and social media", body: "Survey: 84% said people are angrier today compared with a generation ago. What makes people mad? \n\n• 29% of people said they were often angry when checking the news. \n\n• 9 in 10 people said the are more likely to express their anger on social media than in person.", sourceName: "NPR", sourceURL: "https://www.npr.org/sections/health-shots/2019/06/26/735757156/poll-americans-say-were-angrier-than-a-generation-ago", sponsorLogo: "", sponsorURL: "")
let madTipAM7 = Tip(header: "Quote", title: "No one is born hating another person because of the colour of his skin, or his background, or his religion. People must learn to hate, and if they can learn to hate, they can be taught to love, for love comes more naturally to the human heart than its opposite.", body: "- Nelson Mandela", sourceName: "Wise Old Sayings", sourceURL: "https://www.wiseoldsayings.com/hate-quotes/", sponsorLogo: "", sponsorURL: "")

//3
let madTipAM8 = Tip(header: "Quote", title: "I have decided to stick with love. Hate is too great a burden to bear.", body: "- Martin Luther King", sourceName: "Wise Old Sayings", sourceURL: "https://www.wiseoldsayings.com/hate-quotes/", sponsorLogo: "", sponsorURL: "")
let madTipAM9 = Tip(header: "Reduce Anger", title: "DO: Watch a good-natured humor comedy clip \nDON'T: Watch a mean-spirited humor comedy clip", body: "Study: Positive humor was more successful at reducing negative emotions and increasing positive emotions than negative humor.", sourceName: "Inc.", sourceURL: "https://www.inc.com/amy-morin/5-simple-ways-to-turn-around-a-bad-mood-fast.html", sponsorLogo: "", sponsorURL: "")
let madTipAM10 = Tip(header: "Always Wake Up Feeling Grumpy?", title: "Your grumpiness is trying to tell you that your life is out of balance in some way", body: "You've lost touch with who you are and what is important to you. \n\nIf you're not getting enough of something that you need then make time for: \n• Exercise \n• Mindfulness \n• Writing your goals \n• Or some kind of rest and recharge time", sourceName: "NatureWise Counseling", sourceURL: "https://www.naturewisecounseling.com/blog/2019/03/02/your-grumpiness-is-trying-to-tell-you-something-important", sponsorLogo: "", sponsorURL: "")
let madTipAM11 = Tip(header: "Avoid Social Media", title: "Research: Of the 4 basic emotions (anger, disgust, joy, and sadness), anger is the emotion most likely to spread across social media", body: "Anger was found to possess a ripple effect that could spark angry posts up to three degrees of separation from the original message. \n\nPeople act out more intensely online than they would in person because of relative anonymity and a lack of consequences.", sourceName: "USA Today", sourceURL: "https://www.usatoday.com/story/news/nation/2013/09/24/anger-internet-most-powerful-emotion/2863869/", sponsorLogo: "", sponsorURL: "")

//4
let madTipAM12 = Tip(header: "Quote", title: "It is wise to direct your anger towards problems -- not people; to focus your energies on answers -- not excuses.", body: "William Arthur Ward \n\nAmerican writer", sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/quotes/tag/anger?page=2", sponsorLogo: "", sponsorURL: "")
let madTipAM13 = Tip(header: "Reduce Anger", title: "Eat breakfast", body: "Researchers found that breakfast helped improve morning mood.", sourceName: "Power Of Positivity", sourceURL: "https://www.powerofpositivity.com/5-reasons-people-wake-grumpy-avoid/", sponsorLogo: "", sponsorURL: "")
let madTipAM14 = Tip(header: "Reduce Anger", title: "Avoid the news and social media", body: "Viewing more negative posts prompted people to write more sad or angry things.", sourceName: "NPR", sourceURL: "https://www.npr.org/sections/health-shots/2019/06/26/735757156/poll-americans-say-were-angrier-than-a-generation-ago", sponsorLogo: "", sponsorURL: "")
let madTipAM15 = Tip(header: "Quote", title: "Hate destroys the very structure of the personality of the hater... when you start hating anybody, it destroys the very center of your creative response to life and the universe; so love everybody.", body: "- Martin Luther King", sourceName: "Wise Old Sayings", sourceURL: "https://www.wiseoldsayings.com/hate-quotes/", sponsorLogo: "", sponsorURL: "")



//0
let madTipAMArray0 = [madTipAM0, madTipAM1, madTipAM2, madTipAM3, helplineArray.random()]
let madAMTopic0 = Topic(title: madTitle, icon: madIcon, tip: madTipAMArray0)

//1
let madTipAMArray1 = [madTipAM4, madTipAM5, madTipAM6, madTipAM7, helplineArray.random()]
let madAMTopic1 = Topic(title: madTitle, icon: madIcon, tip: madTipAMArray1)

//2
let madTipAMArray2 = [madTipAM8, madTipAM9, madTipAM10, madTipAM11, helplineArray.random()]
let madAMTopic2 = Topic(title: madTitle, icon: madIcon, tip: madTipAMArray2)

//3
let madTipAMArray3 = [madTipAM12, madTipAM13, madTipAM14, madTipAM15, helplineArray.random()]
let madAMTopic3 = Topic(title: madTitle, icon: madIcon, tip: madTipAMArray3)




// RANDOM
let madAMTipArrays = [madTipAMArray0, madTipAMArray1, madTipAMArray2, madTipAMArray3,]
let madAMTopic = Topic(title: madTitle, icon: madIcon, tip: madAMTipArrays.random())
let madAMTopics = Topics(title: madTitle, icon: madIcon, topics: [madAMTopic,])


//5 WIP
let madTipAMArray5 = [madTipAM4, madTipAM5, madTipAM6, madTipAM7]
let madAMTopic5 = Topic(title: madTitle, icon: madIcon, tip: madTipAMArray5)

//6 WIP
let madTipAMArray6 = [madTipAM8, madTipAM9, madTipAM10, madTipAM11]
let madAMTopic6 = Topic(title: madTitle, icon: madIcon, tip: madTipAMArray6)





//DEPRESSED
//0
let depressedTipAM0 = Tip(header: "Depressed", title: "Drinking coffee has been correlated to improve mood and decrease the likelihood of depression", body: "Study: Caffeine drinkers reported a 13% lower risk of depression. \n\nIn addition, another study linked drinking 2-3 cups of caffeinated coffee per day to a 45% lower risk of suicide.", sourceName: "Healthline", sourceURL: "https://www.healthline.com/nutrition/what-is-caffeine", sponsorLogo: "", sponsorURL: "")
let depressedTipAM1 = Tip(header: "Increase Happiness", title: "Bed makers are happier and more successful than those who don't", body: "Survey: 71% of bed makers consider themselves happy; while 62% of non-bed-makers admit to being unhappy. \n\nBed makers are also more likely to like their jobs, own a home, exercise regularly, and feel well-rested, whereas non-bed-makers hate their jobs, rent apartments, avoid the gym, and wake up tired.", sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/brain-candy/201208/make-your-bed-change-your-life", sponsorLogo: "", sponsorURL: "")
let depressedTipAM2 = Tip(header: "Increase Happiness", title: "Research: People reported being happiest when they were:", body: "Relaxing, socializing, exercising, eating, doing spiritual activities, and engaging in intimate relations. \n\nMake time to do these activities more often in your day.", sourceName: "Fast Company", sourceURL: "https://www.fastcompany.com/3048975/the-scientifically-proven-way-to-have-the-best-vacation-ever", sponsorLogo: "", sponsorURL: "")
let depressedTipAM3 = Tip(header: "Depressed", title: "Exercise reduces depression and also helps keep depression from coming back once you're feeling better", body: "Study: 3 groups of patients treated their depression with either medication, exercise, or a combination of the two.\n\n All 3 groups experienced similar improvements in their happiness levels. But the groups were then tested 6 months later to assess their relapse rate. \n\nOf those who had taken the medication alone, 38% had slipped back into depression. Of those in the combination group, 31% had slipped back into depression. The biggest shock, though, came from the exercise group: Their relapse rate was only 9%.", sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/belle-beth-cooper/10-simple-things-to-be-happy_b_4241824.html", sponsorLogo: "", sponsorURL: "")

//1
let depressedTipAM4 = Tip(header: "Motivational Quote", title: "Strength does not come from winning. Your struggles develop your strengths. When you go through hardships and decide not to surrender, that is strength.", body: "Arnold Schwarzenegger \n\nAustrian-American actor, filmmaker, and former professional bodybuilder and politician", sourceName: "Brainy Quote", sourceURL: "https://www.brainyquote.com/quotes/arnold_schwarzenegger_116694", sponsorLogo: "", sponsorURL: "")
let depressedTipAM5 = Tip(header: "Depressed", title: "Listening to classical music reduces depressive symptoms when compared to listening to an audiobook", body: "Study: Depressive symptoms decreased significantly in the relaxing classical music group, but not in the group listening to audiobooks.", sourceName: "National Center for Biotechnology Information, U.S. National Library of Medicine", sourceURL: "https://www.ncbi.nlm.nih.gov/pubmed/18426457", sponsorLogo: "", sponsorURL: "")
let depressedTipAM6 = Tip(header: "Depressed", title: "Natural ways to reduce depression", body: "• Create a daily routine. \n• Exercise releases feel-good chemicals. \n• Challenge your negative thoughts with logical questioning. \n• Help others. \n• Eat healthy foods. \n• Do something that you enjoy (watch a movie, walk in nature, or spend time with friends). \n• Go to bed and get up at the same time every day.", sourceName: "WebMD", sourceURL: "https://www.webmd.com/depression/features/natural-treatments", sponsorLogo: "", sponsorURL: "")
let depressedTipAM7 = Tip(header: "Journal 📓", title: "Journaling helps you know yourself better", body: "By writing routinely you will get to know what makes you feel happy and confident. \n\nYou will also become clear about situations and people who are toxic for you — important information for your emotional well-being." , sourceName: "Psych Central", sourceURL: "https://psychcentral.com/lib/the-health-benefits-of-journaling/", sponsorLogo: "", sponsorURL: "")

//2
let depressedTipAM8 = Tip(header: "Quote", title: "The best way to cheer yourself up is to try to cheer somebody else up.", body: "- Mark Twain \n\nAmerican writer and entrepreneur", sourceName: "Good Reads", sourceURL: "https://www.brainyquote.com/quotes/mark_twain_100631", sponsorLogo: "", sponsorURL: "")
let depressedTipAM9 = Tip(header: "Increase Happiness", title: "Practice gratitude first thing in the morning before you even get out of bed", body: "Just think of one thing that you are truly grateful for, and allow the feeling of gratitude to wash over your body. \n\nImmerse yourself in the feeling of gratitude for a couple of minutes. \n\nClose your eyes and be completely present in the experience.", sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/minding-the-body/201901/8-ways-wake-happier", sponsorLogo: "", sponsorURL: "")
let depressedTipAM10 = Tip(header: "Depression Linked To Diet", title: "A diet high in fruit, vegetables, whole grain, fish, olive oil, low-fat dairy and low intakes of animal foods was associated with a decreased risk of depression. \n\nA diet high in red and/or processed meat, refined grains, sweets, high-fat dairy products, butter, potatoes and high-fat gravy, and low intakes of fruits and vegetables is associated with an increased risk of depression.", body: "Diet is such an important component of mental health. \n\nEat lots of plants, including fruits and veggies, whole grains (in unprocessed form, ideally), seeds and nuts, with some lean proteins like fish and yogurt. \n\nAvoid things made with added sugars or flours (like breads, baked goods, cereals, and pastas), and minimize animal fats, processed meats (sorry, bacon), and butter.", sourceName: "Harvard University", sourceURL: "https://www.health.harvard.edu/blog/diet-and-depression-2018022213309", sponsorLogo: "", sponsorURL: "")

//0
let depressedTipAMArray0 = [depressedTipAM0, depressedTipAM1, depressedTipAM2, depressedTipAM3, helplineArray.random()]
let depressedAMTopic0 = Topic(title: depressedTitle, icon: depressedIcon, tip: depressedTipAMArray0)

//1
let depressedTipAMArray1 = [depressedTipAM4, depressedTipAM5, depressedTipAM6, depressedTipAM7, helplineArray.random()]
let depressedAMTopic1 = Topic(title: depressedTitle, icon: depressedIcon, tip: depressedTipAMArray1)

//2
let depressedTipAMArray2 = [depressedTipAM8, depressedTipAM9, depressedTipAM10, depressedTipAM3, helplineArray.random()]
let depressedAMTopic2 = Topic(title: depressedTitle, icon: depressedIcon, tip: depressedTipAMArray2)

// RANDOM
let depressedAMTipArrays = [depressedTipAMArray0, depressedTipAMArray1, depressedTipAMArray2,]
let depressedAMTopic = Topic(title: depressedTitle, icon: depressedIcon, tip: depressedAMTipArrays.random())
let depressedAMTopics = Topics(title: depressedTitle, icon: depressedIcon, topics: [depressedAMTopic,])




//MARK: Mood - Day

//QUOTE
let badMoodTipDay9 = Tip(header: "Envy", title: "\"Capitalism is always in danger of inspiring men to be more concerned about making a living than making a life. We are prone to judge success by the index of our salaries or the size of our automobiles, rather than by the quality of our service and relationship to humanity.\"", body: "- Martin Luther King Jr. \n\nAmerican minister who became the most visible spokesperson and leader in the civil rights movement from 1955 until his assassination in 1968.", sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/quotes/893997-capitalism-is-always-in-danger-of-inspiring-men-to-be", sponsorLogo: "", sponsorURL: "")





//MARK: STRESSED - DAY
//0
let stressedTipDay0 = Tip(header: "Reduce Stress", title: "Study: People felt less stressed when they checked their email less often", body: "Check your email in chunks several times a day, rather than constantly responding to messages as they come in.", sourceName: "The University of British Columbia", sourceURL: "https://news.ubc.ca/2014/12/03/check-less-to-reduce-email-stress/", sponsorLogo: "", sponsorURL: "")
let stressedTipDay1 = Tip(header: "Stressed", title: "Stress leads to chronic inflammation, which is associated with every major age-related disease", body: "The world's longest-lived people have routines to lower stress: \n\n• They take a few moments each day to remember their ancestors \n\n• They pray \n\n• They take afternoon naps \n\n• They do happy hour with friends" , sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")
let stressedTipDay2 = Tip(header: "Reduce Stress Now", title: "Most people don’t breathe deeply enough and only use a small portion of their lung capacity. Lower stress by breathing deeply through your nose", body: "Inhaling, full pause, exhaling, and empty pause helps increase oxygen in the blood. The more oxygen in your blood, the more calm and mentally alert you will be.", sourceName: "Sealfit", sourceURL: "https://sealfit.com/breathing-lessons-2/", sponsorLogo: "", sponsorURL: "")
let stressedTipDay3 = Tip(header: "Reduce Stress Now", title: "Scientific ways to calm down", body: "• Take deep breaths \n• Take a walk and get some fresh air \n• Write down why you're mad \n• Play loud or heavy music", sourceName: "Bustle", sourceURL: "https://www.bustle.com/articles/134593-6-ways-to-calm-down-when-youre-angry", sponsorLogo: "", sponsorURL: "")

//1
let stressedTipDay4 = Tip(header: "Quote", title: "Respect yourself enough to walk away from anything that no longer serves you, grows you, or makes you happy.", body: "- Robert Tew \n\nBritish former rugby league footballer.", sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/author/quotes/13848712.Robert_Tew?page=2", sponsorLogo: "", sponsorURL: "")
let stressedTipDay5 = Tip(header: "Reduce Stress Now", title: "• Breathe deeply from your belly", body: "• Go for a walk \n\n• Visualize a peaceful forest or beach \n\n• Listen to classical music \n\n• Watch a funny video \n\n• Call a friend \n\n• Turn off your phone", sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/2015/09/06/stress-relief-that-works_n_3842511.html", sponsorLogo: "", sponsorURL: "")
let stressedTipDay6 = Tip(header: "Reduce Stress Now", title: "Re-reframing the stressful event in your mind reduces stress", body: "Change the message you tell yourself from \"this is a stressful situation/task\" to \"this is a challenging but rewarding opportunity to learn.\" \n\nRe-reframing it as learning opportunity shifts your mindset and better prepares you to approach the task.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2018/09/to-cope-with-stress-try-learning-something-new", sponsorLogo: "", sponsorURL: "")
let stressedTipDay7 = Tip(header: "Understand Stress", title: "Viewing stress as a helpful part of life, rather than as harmful, is associated with better health, emotional well-being and productivity", body: "1. View your body's stress response as helpful, not harmful. It's energy you can use; \n\n2. Realize that you can handle, and even grow from, the stress; \n\n3. Everyone deals with stress, and it's not something that proves how uniquely screwed up you or your life is.", sourceName: "Stanford University", sourceURL: "https://news.stanford.edu/pr/2015/pr-stress-embrace-mcgonigal-050715.html", sponsorLogo: "", sponsorURL: "")


//2
let stressedTipDay8 = Tip(header: "Quote", title: "People have a hard time letting go of their suffering. Out of a fear of the unknown, they prefer suffering that is familiar.", body: "- Thich Nhat Hanh \n\nVietnamese Buddhist monk and peace activist", sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/anxiety-zen/201409/22-calming-quotes-people-anxiety", sponsorLogo: "", sponsorURL: "")
let stressedTipDay9 = Tip(header: "Reduce Stress Now", title: "Listen to calming music (classical or light jazz)", body: "Music has the ability to decrease levels of the stress hormone, cortisol.", sourceName: "Greatist", sourceURL: "https://greatist.com/happiness/23-scientifically-backed-ways-reduce-stress-right-now", sponsorLogo: "", sponsorURL: "")
let stressedTipDay10 = Tip(header: "Reduce Stress", title: "Taking walks in nature lowers stress while boosting mood and well-being", body: "Unlike city environments, exposure to forest environments lowers stress and helps to lower concentrations of the “stress hormone” cortisol, lower heart rate, and lower blood pressure. \n\nEven just the sounds of nature trigger a relaxation response in the brain.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2017/06/why-you-should-tell-your-team-to-take-a-break-and-go-outside", sponsorLogo: "", sponsorURL: "")
let stressedTipDay11 = Tip(header: "Reduce Stress Now", title: "Take a nap", body: "Research: Napping has been shown to reduce levels of cortisol and other stress hormones. \n\nJust keep it to 20 minutes, or it could lead to lost sleep tonight.", sourceName: "Greatist", sourceURL: "https://greatist.com/happiness/23-scientifically-backed-ways-reduce-stress-right-now", sponsorLogo: "", sponsorURL: "")


//3
let stressedTipDay12 = Tip(header: "Quote", title: "You don’t have to control your thoughts. You just have to stop letting them control you.", body: "- Dan Millman \n\nFormer world champion athlete, university coach, martial arts instructor, and college professor.", sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/anxiety-zen/201409/22-calming-quotes-people-anxiety", sponsorLogo: "", sponsorURL: "")
let stressedTipDay13 = Tip(header: "Prevent Weight Gain", title: "If you feel the urge to eat in response to stress, try chewing a piece of gum, chugging a glass of water, or taking a walk around the block. ", body: "Study: Emotional eaters—those who admitted eating in response to emotional stress—were 13 times more likely to be overweight or obese", sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/bad-habits-that-give-you-belly-fat/", sponsorLogo: "", sponsorURL: "")
let stressedTipDay14 = Tip(header: "Stressed", title: "Get a daily dose of humor to get through hardships", body: "Watch a funny video on Facebook or YouTube. \n\nIt can reduce stress as effectively as 20 minutes on a treadmill - a lift your spirits.", sourceName: "The Blue Zones: 9 Lessons For Living Longer", sourceURL: "https://www.amazon.com/Blue-Zones-Lessons-Living-Longest/dp/1426207557", sponsorLogo: "", sponsorURL: "")
let stressedTipDay15 = Tip(header: "Stressed", title: "Study: Too many connections on social media may increase your stress level", body: "Stress arises as people try to present a version of themselves online that will be acceptable to all their social media contacts. \n\nHaving an abundance of social media connections leads people to worry about offending others." , sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/amymorin/2014/10/17/5-scientific-reasons-you-should-choose-your-friends-carefully/#4f9cfb7c6181", sponsorLogo: "", sponsorURL: "")


//4
let stressedTipDay16 = Tip(header: "Quote", title: "When we commit to action, to actually doing something rather than feeling trapped by events, the stress in our life becomes manageable.", body: "- Greg Anderson \n\nAuthor and Certified Anger Management Facilitator", sourceName: "Wise Old Sayings", sourceURL: "https://www.wiseoldsayings.com/stress-quotes/", sponsorLogo: "", sponsorURL: "")
let stressedTipDay17 = Tip(header: "Reduce Stress Now", title: "DO: Breathe through your nose \nDON'T: Breath through your mouth", body: "Nose breathing activates the part of the nervous system that supports rest and recovery. Nose breathing can provide a sense of calm and allow us to function better. \n\nTry Breathing through your nose, slowly and deeply." , sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/amymorin/2014/10/17/5-scientific-reasons-you-should-choose-your-friends-carefully/#4f9cfb7c6181", sponsorLogo: "", sponsorURL: "")
let stressedTipDay18 = Tip(header: "Reduce Stress", title: "Practice religion. Research finds religion helps to buffer the stressful effect of life events", body: "There’s also the added benefit of being around others. Connection to like-minded people in a spiritual setting may help you find the support you need during a stressful time.", sourceName: "Greatist", sourceURL: "https://greatist.com/happiness/23-scientifically-backed-ways-reduce-stress-right-now", sponsorLogo: "", sponsorURL: "")
let stressedTipDay19 = Tip(header: "Reduce Stress", title: "Hang out with a pet. Study: Playing with a pet for just 10 minutes lowered cortisol levels in college students.", body: "Pets are like furry therapists, and their prescription for unconditional love really can do wonders for our mental state.", sourceName: "Greatist", sourceURL: "https://greatist.com/happiness/23-scientifically-backed-ways-reduce-stress-right-now", sponsorLogo: "", sponsorURL: "")

//5
let stressedTipDay20 = Tip(header: "Don't Stress Eat", title: "If you feel the urge to eat in response to stress, chew a piece of gum, chugg a glass of water, or take a walk around the block.", body: "Study: Emotional eaters—those who admitted eating in response to emotional stress—were 13 times more likely to be overweight or obese.", sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/simple-weight-loss-habits/", sponsorLogo: "", sponsorURL: "")


//0
let stressedTipDayArray0 = [stressedTipDay0, stressedTipDay1, stressedTipDay2, stressedTipDay3, helplineArray.random()]
let stressedDayTopic0 = Topic(title: stressedTitle, icon: stressedIcon, tip: stressedTipDayArray0)
//1
let stressedTipDayArray1 = [stressedTipDay4, stressedTipDay5, stressedTipDay6, stressedTipDay7, helplineArray.random()]
let stressedDayTopic1 = Topic(title: stressedTitle, icon: stressedIcon, tip: stressedTipDayArray1)

//2
let stressedTipDayArray2 = [stressedTipDay8, stressedTipDay9, stressedTipDay10, stressedTipDay11, helplineArray.random()]
let stressedDayTopic2 = Topic(title: stressedTitle, icon: stressedIcon, tip: stressedTipDayArray2)

//3
let stressedTipDayArray3 = [stressedTipDay12, stressedTipDay13, stressedTipDay14, stressedTipDay15, helplineArray.random()]

//4
let stressedTipDayArray4 = [stressedTipDay16, stressedTipDay17, stressedTipDay18, stressedTipDay19, helplineArray.random()]

// RANDOM
let stressedTipDayArrays = [stressedTipDayArray0, stressedTipDayArray1, stressedTipDayArray2, stressedTipDayArray3, stressedTipDayArray4]
let stressedDayTopic = Topic(title: stressedTitle, icon: stressedIcon, tip: stressedTipDayArrays.random())
let stressedDayTopics = Topics(title: stressedTitle, icon: stressedIcon, topics: [stressedDayTopic,])






//DEPRESSED
//0
let depressedTipDay0 = Tip(header: "Quote", title: "The struggle you're in today is developing the strength you need for tomorrow. Don´t give up.", body: "- Robert Tew \n\nBritish former rugby league footballer", sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/author/quotes/13848712.Robert_Tew?page=2", sponsorLogo: "", sponsorURL: "")
let depressedTipDay1 = Tip(header: "Increase Happiness", title: "Get some sun. Sunlight boosts your Vitamin D levels which are known to increase mood", body: "Sunlight decreases the risk of depression in those at risk of seasonal affective disorder (SAD) during the winter months.", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/nomanazish/2018/02/28/why-sunlight-is-actually-good-for-you/#5944743c5cd9", sponsorLogo: "", sponsorURL: "")
let depressedTipDay2 = Tip(header: "Depressed", title: "Too much social media increases envy which increases depression", body: "If you tend to compare yourself with others or get envious easily, you might consider limiting your time spent on social networking sites. \n\nResearch found that when Facebook evoked envy, it increased symptoms of depression.", sourceName: "Scientific American", sourceURL: "https://www.scientificamerican.com/article/green-with-facebook-envy-red-with-twitter-rage/", sponsorLogo: "", sponsorURL: "")
let depressedTipDay3 = Tip(header: "Depressed", title: "Participate in yoga and deep (coherent) breathing classes at least twice weekly plus practice at home", body: "Depression is globally responsible for more years lost to disability than any other disease. \n\nOne study supports the use of a yoga and coherent breathing intervention in major depressive disorder in people who are not on antidepressants and in those who have been on a stable dose of antidepressants and have not achieved a resolution of their symptoms." , sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/health/wellness/how-to-be-happy/", sponsorLogo: "", sponsorURL: "")

//1
let depressedTipDay4 = Tip(header: "Quote", title: "It's not possible to experience constant euphoria, but if you're grateful, you can find happiness in everything.", body: "- Pharrell Williams \n\nRapper, singer, songwriter, entrepreneur, and fashion designer", sourceName: "Brainy Quote", sourceURL: "https://www.brainyquote.com/quotes/pharrell_williams_737825", sponsorLogo: "", sponsorURL: "")
let depressedTipDay5 = Tip(header: "Depressed", title: "Taking walks in nature lowers depression while boosting mood and well-being", body: "“Forest bathing” is a popular practice in many East Asian countries because the impact of even a few minutes in nature can improve our physical health and mental well-being. \n\nEven just the sounds of nature trigger a relaxation response in the brain.", sourceName: "Quartz", sourceURL: "https://qz.com/1190151/why-am-i-unhappy-a-new-study-explains-americas-unhappiness-epidemic/", sponsorLogo: "", sponsorURL: "")
let depressedTipDay6 = Tip(header: "Sad", title: "How to reduce sadness", body: "• Cry. \n• Talk to someone. \n• Get out in nature. \n• Listen to upbeat music. \n• Watch a funny TV show. \n• Remember, it will get better. \n• Focus on the good and move on.", sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/maria-rodale/21-ways-to-deal-with-sadn_b_5803672.html", sponsorLogo: "", sponsorURL: "")
let depressedTipDay7 = Tip(header: "Reduce Time Online", title: "Teens who spent 5+ hours a day online were twice as likely to be unhappy as those who spent less than 1 hour a day", body: "In one experiment, people who were randomly assigned to give up Facebook for a week ended that time happier, less lonely and less depressed than those who continued to use Facebook.", sourceName: "Quartz", sourceURL: "https://qz.com/1190151/why-am-i-unhappy-a-new-study-explains-americas-unhappiness-epidemic/", sponsorLogo: "", sponsorURL: "")

//2
let depressedTipDay8 = Tip(header: "Quote", title: "If you’re going through hell keep going.", body: "- Sir Winston Churchill \n\nPrime Minister of the UK who led Britain to victory in World War II.", sourceName: "The Mighty", sourceURL: "https://themighty.com/2016/09/anxiety-depression-quotes/", sponsorLogo: "", sponsorURL: "")




//0
let depressedTipDayArray0 = [depressedTipDay0, depressedTipDay1, depressedTipDay2, depressedTipDay3, helplineArray.random()]
let depressedDayTopic0 = Topic(title: depressedTitle, icon: depressedIcon, tip: depressedTipDayArray0)

//1
let depressedTipDayArray1 = [depressedTipDay4, depressedTipDay5, depressedTipDay6, depressedTipDay7, helplineArray.random()]
let depressedDayTopic1 = Topic(title: depressedTitle, icon: depressedIcon, tip: depressedTipDayArray1)

//2
let depressedTipDayArray2 = [depressedTipDay8, depressedTipDay7, depressedTipDay2, depressedTipDay3, helplineArray.random()]
let depressedDayTopic2 = Topic(title: depressedTitle, icon: depressedIcon, tip: depressedTipDayArray2)


// RANDOM
let depressedTipDayArrays = [depressedTipDayArray0, depressedTipDayArray1, depressedTipDayArray2,]
let depressedDayTopic = Topic(title: depressedTitle, icon: depressedIcon, tip: depressedTipDayArrays.random())
let depressedDayTopics = Topics(title: depressedTitle, icon: depressedIcon, topics: [depressedDayTopic,])



//MAD
//0
let madTipDay0 = Tip(header: "Quote", title: "We must develop and maintain the capacity to forgive. There is some good in the worst of us and some evil in the best of us. When we discover this, we are less prone to hate our enemies.", body: "- Martin Luther King Jr. \n\nAmerican minister who became the most visible spokesperson and leader in the civil rights movement from 1955 until his assassination in 1968.", sourceName: "Brainy Quote", sourceURL: "https://www.brainyquote.com/quotes/martin_luther_king_jr_143179", sponsorLogo: "", sponsorURL: "")
let madTipDay1 = Tip(header: "Quote", title: "A quick temper will make a fool of you soon enough.", body: "- Bruce Lee \n\nActor, martial artist, philosopher, and founder of the martial art Jeet Kune Do", sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/search?utf8=%E2%9C%93&q=bruce+lee&search_type=quotes", sponsorLogo: "", sponsorURL: "")
let madTipDay2 = Tip(header: "Quote", title: "Never respond to an angry person with a fiery comeback, even if he deserves it...Don't allow their anger to become your anger.", body: "Bohdi Sanders \n\nAward-winning author of books on martial arts philosophy, and self-help" , sourceName: "Wonderful Quote", sourceURL: "https://www.wonderfulquote.com/a/booker-t-washington-quotes", sponsorLogo: "", sponsorURL: "")

let madTipDay3 = Tip(header: "Quote", title: "I shall never permit myself to stoop so low as to hate any man.", body: "Booker T. Washington \n\nThe most influential spokesman for the African-American community between 1895 and 1915." , sourceName: "Wonderful Quote", sourceURL: "https://www.wonderfulquote.com/a/booker-t-washington-quotes", sponsorLogo: "", sponsorURL: "")

//1
let madTipDay4 = Tip(header: "Quote", title: "There is some good in the worst of us and some evil in the best of us. When we discover this, we are less prone to hate our enemies.", body: "... Someone must have sense enough and morality enough to cut off the chain of hate. \n\n- Martin Luther King, Jr.", sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/the-athletes-way/201612/5-science-based-ways-break-the-cycle-rage-attacks", sponsorLogo: "", sponsorURL: "")
let madTipDay5 = Tip(header: "Quote", title: "The opposite of anger is not calmness, its empathy.", body: "- Mehmet Oz \n\nKnown professionally as Dr. Oz, is a Turkish American television personality, cardiothoracic surgeon, professor, and author." , sourceName: "BetterHelp", sourceURL: "https://www.betterhelp.com/advice/anger/anger-quotes-to-help-you-heal-and-let-go/", sponsorLogo: "", sponsorURL: "")
let madTipDay6 = Tip(header: "Reduce Anger", title: "DO: Eat oily fish, a Mediterranean diet and plenty of fruits and vegetables \nDON'T: Eat foods high in trans fats (fast-food, frozen pizza, cookies)", body: "Study: Giving prison inmates a multivitamin and fatty acid supplement led to violent offences dropping 37% compared to 10% for those who were given a placebo. \n\nAnother study found that people who ate more fruits and vegetables reported feeling calmer, happier and more energetic." , sourceName: "The Guardian", sourceURL: "https://www.theguardian.com/lifeandstyle/wordofmouth/2013/apr/24/can-food-make-you-angry", sponsorLogo: "", sponsorURL: "")
let madTipDay7 = Tip(header: "Reduce Anger Now", title: "Use logic. Even when it's justified, anger can quickly become irrational.", body: "Remind yourself that the world is not out to get you. \n\nDo this each time you start feeling angry, and you'll get a more balanced perspective." , sourceName: "American Psychological Association", sourceURL: "https://www.apa.org/helpcenter/controlling-anger", sponsorLogo: "", sponsorURL: "")


//2
let madTipDay8 = Tip(header: "Quote", title: "You will not be punished for your anger, you will be punished by your anger.", body: "- Buddha" , sourceName: "BetterHelp", sourceURL: "https://www.betterhelp.com/advice/anger/anger-quotes-to-help-you-heal-and-let-go/", sponsorLogo: "", sponsorURL: "")

let madTipDay9 = Tip(header: "Quote", title: "People won't have time for you if you are always angry or complaining.", body: "- Stephen Hawking \n\nCome to be thought of as the greatest mind in physics since Albert Einstein." , sourceName: "BetterHelp", sourceURL: "https://www.betterhelp.com/advice/anger/anger-quotes-to-help-you-heal-and-let-go/", sponsorLogo: "", sponsorURL: "")

let madTipDay10 = Tip(header: "Reduce Anger Now", title: "DO: Breathe deeply from your belly \nDON'T: Breathe from your chest", body: "Shallow breathing is angry breathing. \n\nPractice taking slow, deep breaths from your belly rather than your chest." , sourceName: "American Psychological Association", sourceURL: "https://www.apa.org/helpcenter/controlling-anger", sponsorLogo: "", sponsorURL: "")
let madTipDay11 = Tip(header: "Reduce Anger Now", title: "Change the way you think. Replace unhelpful negative thoughts with more reasonable ones", body: "Avoid words like \"never\" or \"always\" when talking about yourself or others. \n\nStatements like \"This never works\" or \"You're always forgetting things\" make you feel your anger is justified. \n\nSuch statements also alienate people who might otherwise be willing to work with you on a solution. \n\nInstead of thinking “Everything is ruined,” tell yourself “This is frustrating, but it’s not the end of the world.”" , sourceName: "American Psychological Association", sourceURL: "https://www.apa.org/helpcenter/controlling-anger", sponsorLogo: "", sponsorURL: "")



//0
let madTipDayArray0 = [madTipDay0, madTipDay1, madTipDay2, madTipDay3, helplineArray.random()]
let madDayTopic0 = Topic(title: madTitle, icon: madIcon, tip: madTipDayArray0)

//1
let madTipDayArray1 = [madTipDay4, madTipDay5, madTipDay6, madTipDay7, helplineArray.random()]
let madDayTopic1 = Topic(title: madTitle, icon: madIcon, tip: madTipDayArray1)

//2
let madTipDayArray2 = [madTipDay8, madTipDay9, madTipDay10, madTipDay11, helplineArray.random()]
let madDayTopic2 = Topic(title: madTitle, icon: madIcon, tip: madTipDayArray2)

// RANDOM
let madTipDayArrays = [madTipDayArray0, madTipDayArray1, madTipDayArray2,]
let madDayTopic = Topic(title: madTitle, icon: madIcon, tip: madTipDayArrays.random())
let madDayTopics = Topics(title: madTitle, icon: madIcon, topics: [madDayTopic,])






//MARK: Mood - PM

//STRESSED
//0
let stressedTipPM0 = Tip(header: "Quote", title: "Adopting the right attitude can convert a negative stress into a positive one.", body: "- Hans Selye", sourceName: "The Positivity Blog", sourceURL: "https://www.positivityblog.com/stress-quotes/", sponsorLogo: "", sponsorURL: "")
let stressedTipPM1 = Tip(header: "Reduce Stress Now", title: "Survey results reveal most effective ways to reduce stress tonight", body: "• Go to a religious service (77%) \n• Play sports (73%)\n• Pray (73%)\n• Massage or spa (71%)\n• Meditage or do yoga (70%)\n• See mental health professional (68%)\n• Exercise or walk (62%)\n• Listen to music (56%)\n• Read (49%)\n\nLess effective ways to reduce stress:\n• Watch TV or movie (33%)\n• Surf the Internet (29%)" , sourceName: "American Psychological Association", sourceURL: "https://www.apa.org/news/press/releases/stress/2013/snapshot.aspx", sponsorLogo: "", sponsorURL: "")
let stressedTipPM2 = Tip(header: "Stressed", title: "Journaling helps to reduce stress and be more present", body: "Writing about anger, sadness and other painful emotions helps to release the intensity of these feelings. \n\nBy doing so you will feel calmer and better able to stay in the present.", sourceName: "Psych Central", sourceURL: "https://psychcentral.com/lib/the-health-benefits-of-journaling/", sponsorLogo: "", sponsorURL: "")
let stressedTipPM3 = Tip(header: "Stressed", title: "Study: Psychotherapy improves your mental health and future income", body: "Men who reported having had stress and mental problems, and consulting a psychotherapist, experienced a 13% income increase in the subsequent year. \n\nWomen experienced an 8% income increase. \n\nThe study found gender discrimination to partially explain the difference in income increase. \n\nHowever, consulting a psychotherapist helps women nearly twice as much as men in terms of mental health.", sourceName: "The Conversation", sourceURL: "https://theconversation.com/psychotherapy-can-make-you-richer-especially-if-you-are-a-man-107628", sponsorLogo: "", sponsorURL: "")

//1
let stressedTipPM4 =  Tip(header: "Reduce Stress Now", title: "• 🌬 Breathe deeply", body: "• 🤔 Visualize a forest 🌲 or beach 🏝 \n\n • 🎶 Listen to classical music \n\n• 📺 Watch a funny video \n\n• 📞 Call a friend \n\n • 📵 Turn off your phone \n\n• 🚶‍♀️ Go for a walk", sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/2015/09/06/stress-relief-that-works_n_3842511.html", sponsorLogo: "", sponsorURL: "")
let stressedTipPM5 = Tip(header: "Increase Happiness 😄", title: "Aubrey Marcus, CEO of Onnit, journals regularly and journals the most when he's going through something difficult 📝", body: "Research: People who engage in expressive writing report feeling happier and less negative than they felt before writing. \n\nOther depressive symptoms like anxiety tend to drop after writing about emotional issues." , sourceName: "Own The Day, Own Your Life", sourceURL: "https://www.amazon.com/dp/B072HLS5QJ/", sponsorLogo: "", sponsorURL: "")
let stressedTipPM6 = Tip(header: "Meditate 🧘‍♀️", title: "Actor Hugh Jackman said that meditation \"changed his life\" and that it helps him deal with his anxieties", body: "\"It (meditation) was important for my life, and my anxieties, and how I felt about myself. Slowly, bit by bit, it just chipped away at the bulls—.\"", sourceName: "The Wall Street Journal", sourceURL: "https://www.wsj.com/articles/ohm-for-all-1386299691", sponsorLogo: "", sponsorURL: "")
let stressedTipPM7 = Tip(header: "Reduce Stress 📖", title: "Reading for 6 minutes reduces stress by 68%", body: "Psychologists believe this is because the human mind has to concentrate on reading and the distraction eases the tension in your body. \n\nReading works better than other de-stressing methods such as listening to music (61%), having a cup of coffee or tea (54%), or going for a walk (42%).", sourceName: "The Telegraph", sourceURL: "https://www.telegraph.co.uk/news/health/news/5070874/Reading-can-help-reduce-stress.html", sponsorLogo: "", sponsorURL: "")

//2
let stressedTipPM8 = Tip(header: "Quote", title: "Doing something that is productive is a great way to alleviate emotional stress. Get your mind doing something that is productive.", body: "- Ziggy Marley", sourceName: "SUCCESS Magazine", sourceURL: "https://www.success.com/19-calming-quotes-to-help-you-stress-less/", sponsorLogo: "", sponsorURL: "")
let stressedTipPM9 = Tip(header: "Reduce Tomorrow's Stress", title: "Before Bed: \n• Lay out tomorrow's clothes. \n• Set up the coffee pot. \n• Make sure you know where your keys are so you’re not scrambling to find them.", body: "Simple actions are within your control and can help your day get off to a calmer start.", sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/minding-the-body/201901/8-ways-wake-happier", sponsorLogo: "", sponsorURL: "")
let stressedTipPM10 = Tip(header: "Reduce Tomorrow's Stress", title: "Avoid using an alarm that jars you out of a deep sleep with a piercing noise. Instead, try a sunrise alarm clock", body: "This type of alarm mimics the rise of the sun in your bedroom by a gradually brightening light, beginning roughly 30 minutes prior to when your alarm would go off. \n\nIt’s a much less abrupt, more natural way to wake up.", sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/minding-the-body/201901/8-ways-wake-happier", sponsorLogo: "Buy: Sunrise Alarm", sponsorURL: "https://www.amazon.com/Sunrise-Sleepers-Simulation-Nightlight-Daylight/dp/B081CHLF46/ref=asc_df_B081CHLF46/")

//0
let stressedTipPMArray0 = [stressedTipPM0, stressedTipPM1, stressedTipPM2, stressedTipPM3, helplineArray.random()]
let stressedPMTopic0 = Topic(title: stressedTitle, icon: stressedIcon, tip: stressedTipPMArray0)
//1
let stressedTipPMArray1 = [stressedTipPM4, stressedTipPM5, stressedTipPM6, stressedTipPM7, helplineArray.random()]
let stressedPMTopic1 = Topic(title: stressedTitle, icon: stressedIcon, tip: stressedTipPMArray1)

//2
let stressedTipPMArray2 = [stressedTipPM8, stressedTipPM9, stressedTipPM10, stressedTipPM3, helplineArray.random()]
let stressedPMTopic2 = Topic(title: stressedTitle, icon: stressedIcon, tip: stressedTipPMArray2)

// RANDOM
let stressedTipPMArrays = [stressedTipPMArray0, stressedTipPMArray1, stressedTipPMArray2,]
let stressedPMTopic = Topic(title: stressedTitle, icon: stressedIcon, tip: stressedTipPMArrays.random())
let stressedPMTopics = Topics(title: stressedTitle, icon: stressedIcon, topics: [stressedPMTopic,])
//ANXIOUS PM



//DEPRESSED
//0
let depressedTipPM0 = Tip(header: "Depressed", title: "Journaling gratitude helps to keep suicidal thoughts and attempts at bay", body: "Study: Gratitude is a protective factor when it comes to suicidal ideation in stressed and depressed individuals. Enhancing our own practice of gratitude can help protect us when we are weakest.", sourceName: "Positive Psychology Program", sourceURL: "https://positivepsychologyprogram.com/benefits-gratitude-research-questions/", sponsorLogo: "", sponsorURL: "")
let depressedTipPM1 = Tip(header: "Depressed", title: "Exercise reduces depression and helps keep depression from coming back once you're feeling better", body: "Exercise releases feel-good endorphins. \n\nFind ways to add small amounts of physical activity throughout your day: \n\n• Take the stairs instead of the elevator. \n• Park a little farther away from work to fit in a short walk.", sourceName: "Mayo Clinic", sourceURL: "https://www.mayoclinic.org/diseases-conditions/depression/in-depth/depression-and-exercise/art-20046495", sponsorLogo: "", sponsorURL: "")
let depressedTipPM2 = Tip(header: "Depressed", title: "Studies find that looking at a screen leads to unhappiness", body: "Teens who spent more time on the internet, playing computer games, on social media, texting, using video chat or watching TV were less happy. \n\nTeens who spent more time seeing their friends in person, exercising, playing sports, attending religious services, reading or even doing homework were happier.", sourceName: "Quartz", sourceURL: "https://qz.com/1190151/why-am-i-unhappy-a-new-study-explains-americas-unhappiness-epidemic/", sponsorLogo: "", sponsorURL: "")
let depressedTipPM3 = Tip(header: "Depressed", title: " CEO of Onnit, Aubrey Marcus, journals the most when he's going through something difficult", body: "Research: People who engage in expressive writing report feeling happier and less negative than they felt before writing. \n\nOther depressive symptoms like anxiety tend to drop after writing about emotional issues." , sourceName: "Own The Day, Own Your Life", sourceURL: "https://www.amazon.com/dp/B072HLS5QJ/", sponsorLogo: "", sponsorURL: "")

//1
let depressedTipPM4 = Tip(header: "Quote", title: "Once you replace negative thoughts with positive ones, you will start having positive results.", body: "– Willie Nelson \n\nAmerican musician, actor, and activist." , sourceName: "Goalcast", sourceURL: "https://www.goalcast.com/2018/06/08/20-depression-quotes/", sponsorLogo: "", sponsorURL: "")
let depressedTipPM5 = Tip(header: "Depressed", title: "Don't stay up too late. Keeping your body clock in sync with the solar day may help reduce depression", body: "Study: The brains of people with depression were not synchronized to the usual solar day in terms of gene activity inside their brain cells. \n\nIt’s as if they were living in a different time zone. \n\nGo to bed between 10PM and 11PM and get 7-8 hours of sleep every night.", sourceName: "University of Michigan", sourceURL: "https://www.uofmhealth.org/news/archive/201305/out-sync-world-brain-study-shows-body-clocks-depressed", sponsorLogo: "", sponsorURL: "")
let depressedTipPM6 = Tip(header: "Reduce Smartphone Usage", title: "Teen's happiness levels have been decreasing since 2012 (the year when the majority of Americans owned smartphones)", body: "These declines in well-being mirror other studies finding sharp increases in mental health issues among iGen, including in depressive symptoms, major depression, self-harm and suicide.", sourceName: "Quartz", sourceURL: "https://qz.com/1190151/why-am-i-unhappy-a-new-study-explains-americas-unhappiness-epidemic/", sponsorLogo: "", sponsorURL: "")
 let depressedTipPM7 = Tip(header: "Feel Happier", title: "Aubrey Marcus, CEO of Onnit, journals regularly and journals the most when he's going through something difficult", body: "Research: People who engage in expressive writing report feeling happier and less negative than they felt before writing. \n\nOther depressive symptoms like anxiety tend to drop after writing about emotional issues." , sourceName: "Own The Day, Own Your Life", sourceURL: "https://www.amazon.com/dp/B072HLS5QJ/", sponsorLogo: "", sponsorURL: "")

//2
let depressedTipPM8 = Tip(header: "Quote", title: "The most beautiful people we have known are those who have known defeat, known suffering, known struggle, known loss, and have found their way out of the depths.", body: "– Elisabeth Kübler-Ross \n\nSwiss-American psychiatrist" , sourceName: "Goalcast", sourceURL: "https://www.goalcast.com/2018/06/08/20-depression-quotes/", sponsorLogo: "", sponsorURL: "")



//0
let depressedTipPMArray0 = [depressedTipPM0, depressedTipPM1, depressedTipPM2, depressedTipPM3, helplineArray.random()]
let depressedPMTopic0 = Topic(title: depressedTitle, icon: depressedIcon, tip: depressedTipPMArray0)

//1
let depressedTipPMArray1 = [depressedTipPM4, depressedTipPM5, depressedTipPM6, depressedTipPM7, helplineArray.random()]
let depressedPMTopic1 = Topic(title: depressedTitle, icon: depressedIcon, tip: depressedTipPMArray1)

//2 WIP
let depressedTipPMArray2 = [depressedTipPM8, depressedTipPM1, depressedTipPM2, depressedTipPM3, helplineArray.random()]
let depressedPMTopic2 = Topic(title: depressedTitle, icon: depressedIcon, tip: depressedTipPMArray2)


// RANDOM
let depressedTipPMArrays = [depressedTipPMArray0, depressedTipPMArray1, depressedTipPMArray2,]
let depressedPMTopic = Topic(title: depressedTitle, icon: depressedIcon, tip: depressedTipPMArrays.random())
let depressedPMTopics = Topics(title: depressedTitle, icon: depressedIcon, topics: [depressedPMTopic,])



//MAD
//0
let madTipPM0 = Tip(header: "Mad", title: "Never succumb to the temptation of becoming bitter. As you press for justice, be sure to move with dignity and discipline, using only the instruments of love.", body: "Martin Luther King Jr. \n\nAmerican minister who became the most visible spokesperson and leader in the civil rights movement from 1955 until his assassination in 1968.", sourceName: "Stanford University", sourceURL: "https://kinginstitute.stanford.edu/king-papers/documents/most-durable-power-excerpt-sermon-dexter-avenue-baptist-church-6-november-1956", sponsorLogo: "", sponsorURL: "")
let madTipPM1 = Tip(header: "Mad", title: "\"Don’t live your life with anger and hate in your heart as you will only be hurting yourself more than the people you hate.\"", body: "- Robert Tew \n\nBritish former rugby league footballer", sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/author/quotes/13848712.Robert_Tew?page=2", sponsorLogo: "", sponsorURL: "")
let madTipPM2 = Tip(header: "Mad", title: "\"Never succumb to the temptation of becoming bitter. As you press for justice, be sure to move with dignity and discipline, using only the instruments of Love.\"", body: "- Martin Luther King Jr. \nAmerican minister and activist who became the most visible spokesperson and leader in the civil rights movement from 1955 until his assassination in 1968", sourceName: "Spirituality And Practice", sourceURL: "https://www.spiritualityandpractice.com/quotes/quotations/view/16449/spiritual-quotation", sponsorLogo: "", sponsorURL: "")
let madTipPM3 = Tip(header: "Reduce Anger", title: "Go to sleep. Study: People who sleep less are more prone to anger", body: "Losing even two hours of sleep a night can make you less able to cope with frustrating situations. It might even intensify negative feelings like anger.", sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2018/12/11/losing-just-a-few-hours-of-sleep-can-make-you-angrier-says-new-study.html", sponsorLogo: "", sponsorURL: "")


//1
let madTipPM4 = Tip(header: "Quote", title: "Where there is shouting, there is no true knowledge.", body: "- Leonardo da Vinci \n\nItalian polymath of the Renaissance and is considered one of the greatest painters of all time.", sourceName: "Brainy Quote", sourceURL: "https://www.brainyquote.com/quotes/leonardo_da_vinci_379159", sponsorLogo: "", sponsorURL: "")
let madTipPM5 = Tip(header: "Reduce Anger", title: "Go to sleep. Study: Losing just a couple hours of sleep at night makes you angrier, especially in frustrating situations", body: "In addition, sleep loss increases negative emotions, such as anxiety and sadness, and decreases positive emotions, such as happiness and enthusiasm.", sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2018/11/181127111101.htm", sponsorLogo: "", sponsorURL: "")
let madTipPM6 = Tip(header: "Live Healthier", title: "Recurring anger linked to insomnia, obesity, sexual performance problems, low self-esteem, depression, anxiety, lower-quality relationships, and heart attack", body: "Start practicing mindfulness. Become aware of when you're angry in the present moment, then look at the emotion in a nonjudgemental way. \n\nInstead of beating yourself up, acknowledge how you’re feeling and think about ways to cope. Once you begin to be aware of the cycle then you can begin to break the cycle. \n\nOther ways to reduce anger: \n• Take a pause when you feel yourself getting angry \n• Take deep breaths \n• Look for mental health experts who have expertise specifically in anger management", sourceName: "U.S. News & World Report", sourceURL: "https://health.usnews.com/wellness/mind/articles/2017-10-26/the-physical-and-mental-toll-of-being-angry-all-the-time", sponsorLogo: "", sponsorURL: "")
let madTipPM7 = Tip(header: "Mad", title: "\"As I walked out the door toward the gate that would lead to my freedom, I knew if I didn’t leave my bitterness and hatred behind, I’d still be in prison.\"", body: "- Nelson Mandela \n\nHe was a South African anti-apartheid revolutionary and political leader." , sourceName: "Everyday Power", sourceURL: "https://everydaypower.com/forgiveness-quotes-life-love-friendship/", sponsorLogo: "", sponsorURL: "")

//2
let madTipPM8 = Tip(header: "Quote", title: "He who angers you conquers you.", body: "- Elizabeth Kenny", sourceName: "Wise Old Sayings", sourceURL: "https://www.wiseoldsayings.com/anger-quotes/", sponsorLogo: "", sponsorURL: "")
let madTipPM9 = Tip(header: "Quote", title: "Throughout life people will make you mad, disrespect you and treat you bad. Let God deal with the things they do, cause hate in your heart will consume you too.", body: "- Will Smith \n\nAmerican actor and rapper", sourceName: "Wise Old Sayings", sourceURL: "https://www.wiseoldsayings.com/hate-quotes/", sponsorLogo: "", sponsorURL: "")
let madTipPM10 = Tip(header: "Anger Tip", title: "Don't address your anger before sleep", body: "Since anger revs up your system, it can interfere with restful sleep and cause insomnia. Better to examine your anger earlier in the day so your adrenaline can simmer down. \n\nAlso being well rested makes you less prone to reacting with irritation, allows you to stay balanced." , sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/emotional-freedom/201102/four-strategies-cope-anger-in-healthy-way", sponsorLogo: "", sponsorURL: "")
let madTipPM11 = Tip(header: "Reduce Anger Now", title: "DO: Breathe deeply, from your belly. \nDON'T: Breathe from your chest.", body: "Breathing from your chest won't relax you. \n\nPicture your breath coming up from your \"gut\" and take deep, slow breaths." , sourceName: "American Psychological Association", sourceURL: "https://www.apa.org/topics/anger/control", sponsorLogo: "", sponsorURL: "")

//0
let madTipPMArray0 = [madTipPM0, madTipPM1, madTipPM2, madTipPM3, helplineArray.random()]
let madPMTopic0 = Topic(title: madTitle, icon: madIcon, tip: madTipPMArray0)

//1
let madTipPMArray1 = [madTipPM4, madTipPM5, madTipPM6, madTipPM7, helplineArray.random()]
let madPMTopic1 = Topic(title: madTitle, icon: madIcon, tip: madTipPMArray1)

//2 WIP
let madTipPMArray2 = [madTipPM8, madTipPM9, madTipPM10, madTipPM11, helplineArray.random()]
let madPMTopic2 = Topic(title: madTitle, icon: madIcon, tip: madTipPMArray2)


// RANDOM
let madPMArrays = [madTipPMArray0, madTipPMArray1, madTipPMArray2,]
let madPMTopic = Topic(title: madTitle, icon: madIcon, tip: madPMArrays.random())
let madPMTopics = Topics(title: madTitle, icon: madIcon, topics: [madPMTopic,])



//MARK: - Wealth
let wealthTitle = "Wealth"
let wealthIcon = Constants.Icon.wealth

//0
let wealth0 = Tip(header: "Billionaire Warren Buffett 💰", title: "Avoid Fees. Consistently buy Vanguard's S&P 500 low-cost index fund (VFIAX)", body: "”My regular recommendation has been a low-cost S&P 500 index fund,” Buffett wrote in his 2016 Berkshire Hathaway annual shareholder letter. \n\nIn the case of an S&P 500 index fund, you're buying a small piece of the 500 largest publicly traded US companies. This results in automatic diversification, which minimizes your overall risk. \n\n”A low-cost index fund is the most sensible equity investment for the great majority of investors,” Buffett said.", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/robertberger/2020/11/24/how-to-invest-money-based-on-advice-from-warren-buffett/?sh=27b743ee526c", sponsorLogo: "", sponsorURL: "https://investor.vanguard.com/mutual-funds/profile/VFIAX")

let wealth1 = Tip(header: "Ray Dalio", title: "Diversifying well is the most important thing you need to do in order to invest well (i.e. spreading out your money into different kinds of investments)", body: "A portfolio split of 50% stocks and 50% bonds is not really diversified. \n\nDalio suggests a well-diversified portfolio might include: \n\n• 30% stocks \n• 40% long-term U.S. bonds \n• 15% intermediate U.S. bonds \n• 7.5% to gold \n• 7.5% to other commodities \n\nDiversification can improve your expected return-to-risk ratio by more than anything else you can do.", sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2019/08/14/ray-dalio-how-to-be-a-successful-investor.html", sponsorLogo: "", sponsorURL: "")
let wealth2 = Tip(header: "Billionaire Warren Buffett 💰", title: "Invest in different companies and buy stocks at different times", body: "“The best thing with stocks, actually, is to buy them consistently over time.” \n\n“You want to spread the risk as far as the specific companies you’re in by owning a diversified group, and you diversify over time by buying this month, next month, the year after, the year after, the year after.”", sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2019/08/14/ray-dalio-how-to-be-a-successful-investor.html", sponsorLogo: "", sponsorURL: "")
let wealth3 = Tip(header: "Billionaire Warren Buffett 💰", title: "Buy and hold onto stocks for the long-term", body: "I know what markets are going to do over a long period of time: They’re going to go up. \n\nBut in terms of what’s going to happen in a day or a week or a month or a year even, I’ve never felt that I knew it and I’ve never felt that was important. \n\nI will say that in 10 or 20 or 30 years, I think stocks will be a lot higher than they are now.", sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2019/08/14/ray-dalio-how-to-be-a-successful-investor.html", sponsorLogo: "", sponsorURL: "")

//1
let wealth4 = Tip(header: "Billionaire Warren Buffett 💰", title: "The best investment you can make is in your own abilities.", body: "Investing in yourself means tackling areas you aren't good at and learning new skills. \n\nThink of ways that will help you become more marketable. \n\n• 👩‍🏫 Take classes \n• 📚 Read books \n• 📞 Talk to a mentor \n• 🚀 Start a passion project \n• 🎓 Obtain a certification or degree", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/warren-buffett-best-investing-advice-for-beginners-2017-11", sponsorLogo: "", sponsorURL: "")
let wealth5 = Tip(header: "Billionaire Warren Buffett 💰", title: "Surround yourself with people who are better than you are", body: "If you associate yourself with ‘high-grade people’, you’ll start acting more like them. \n\nConversely, if you hang around with people who behave worse than you, pretty soon you’ll start being pulled in that direction. \n\nThat’s just the way it seems to work.", sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2019/08/31/billionaire-investor-warren-buffetts-best-advice.html", sponsorLogo: "", sponsorURL: "")
let wealth6 = Tip(header: "Billionaire Warren Buffett 💰", title: "Don't be a day trader 🙅‍♀️", body: "According to Buffett, “If you aren’t willing to own a stock for 10 years, don’t even think about owning it for ten minutes.” \n\n• If you constantly buy and sell stocks, it’ll take away a significant percentage of your returns in the form of trading commissions and taxes. \n\n• If you buy a great business, the value of that business will compound and increase exponentially the longer you hold on to it. So, the patient investor will ultimately be rewarded if they hold on to their stocks for a longer time.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/warren-buffett-best-investing-advice-for-beginners-2017-11", sponsorLogo: "", sponsorURL: "")

let wealth7 = Tip(header: "Billionaire Warren Buffett 💰", title: "Invest in an S&P 500 index fund like the Vanguard 500", body: "“All you have to do is just buy a cross-section of America and then never listen to people like me or read the papers or do anything subsequently.” \n\nBuffett’s recommendation for capturing this “cross-section” is to invest in an S&P 500 index fund like the Vanguard 500 (VOO, VFINX, VFIAX). \n\nS&P 500 index funds have a long history of outperforming most actively managed funds, which aim to beat the index.", sourceName: "Yahoo! Finance", sourceURL: "https://finance.yahoo.com/news/warren-buffett-investment-advice-152818197.html", sponsorLogo: "", sponsorURL: "https://investor.vanguard.com/mutual-funds/profile/VFIAX")

//2
let wealth8 = Tip(header: "Billionaire Warren Buffett 💰", title: "An easy way to become worth 50% more than you are now is to improve your written and verbal communication skills", body: "You can have all the brainpower in the world, but, in order to be successful, you have to be able to communicate your vision to others. \n\nWhen he was younger, Buffett took a public speaking course at Dale Carnegie, a professional skills development organization.", sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2018/12/05/warren-buffett-how-to-increase-your-worth-by-50-percent.html", sponsorLogo: "", sponsorURL: "")
let wealth9 = Tip(header: "Suze Orman 🚨 ", title: "Emergency Fund: ”Have at least 8 to 12 months’ worth of living expenses squirrelled away.”", body: "You need as much money in the bank that makes you feel secure. \n\nWhat if you lose your job and can’t find another one for a year? What if you’re hit with an unexpected medical emergency? \n\nStart Your Emergency Fund: \n• Create a budget \n• Find areas where you can dedicate more to saving and investing (i.e. 401(k), Roth IRA, traditional IRA, or a health savings account)", sourceName: "Yahoo! Finance", sourceURL: "https://finance.yahoo.com/news/ray-dalio-3-financial-recommendations-millennials-153540994.html", sponsorLogo: "", sponsorURL: "")
let wealth10 = Tip(header: "Suze Orman 🚗", title: "DON'T: Lease a Car 🙅‍♀️ \nDO: Buy a Car 👍", body: "Leasing is a horrible financial move. It's the auto industry’s way to get you to buy a car you can’t really afford. \n\nWhen you lease there’s the temptation to keep leasing your next cars. That means you are signing on for never-ending monthly car payments. \n\nBuying is better because once you pay off your loan, you have that extra monthly payment to: \n• Build your emergency fund \n• Invest for retirement \n• Save for a home down payment", sourceName: "Yahoo! Finance", sourceURL: "https://finance.yahoo.com/news/suze-orman-top-25-tips-211454833.html", sponsorLogo: "", sponsorURL: "")
let wealth11 = Tip(header: "Ray Dalio", title: "Be cautious about debt. Ask yourself one question: Will the debt help you save or earn more money in the future?", body: "GOOD DEBT produces more cash flow than it costs. \n\n• Example: Taking a loan to complete an advanced degree that will raise your salary above the cost of the loan’s monthly payments and interest is a good form of debt. \n\nBAD DEBT is a loan that allows you to buy something that won’t help you in the future. \n\n• Example: Racking up credit card debt by shopping for clothes or dining out and not paying off the balance at the end of the month is an example of bad debt.", sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2018/10/23/ray-dalio-ask-yourself-this-question-before-taking-on-debt.html", sponsorLogo: "", sponsorURL: "")

//3
let wealth12 = Tip(header: "Save Money 💰", title: "If you have 401(k)s or IRA rollovers from past jobs then combine them", body: "Job changes can result in multiple 401(k)s or IRA rollovers, for example, so it's smart to combine those to avoid paying more fees and doubling up on the same investments.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/best-tips-fixing-investment-portfolio-financial-expert-2019-11", sponsorLogo: "", sponsorURL: "")
let wealth13 = Tip(header: "Save Money 💰", title: "Survey: Only 25% of Americans have a high-yield savings account. The other 75% are leaving free money on the table", body: "A high-yield savings account keeps your money safe and accessible, just like a regular savings account, except it can earn up to 20 times more interest. \n\nGenerally you'll find the best savings interest rates at online banks: \n• Ally \n•Wealthfront", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/money-advice-to-get-ahead-of-your-friends", sponsorLogo: "", sponsorURL: "https://www.wealthfront.com/cash")
let wealth14 = Tip(header: "Expert Advice 🤓", title: "Saving 10% of your income, except if you're paying off high-interest debt", body: "Contribute part of your pretax salary to your retirement account at work or open an IRA at a bank or brokerage. \n\nAny debt you have that's charging an interest rate above 9% — close to the average return of the stock market — should be your priority.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/money-advice-to-get-ahead-of-your-friends", sponsorLogo: "", sponsorURL: "")
let wealth15 = Tip(header: "Debt 🙅‍♀️", title: "If the interest rate on your credit card, auto loan, or student loan is higher than 8% to 9%, it's time to create a strategy for paying it off as soon as possible", body: "Carrying a debt balance negatively impacts your credit, which can affect your ability to take out any type of loan, rent an apartment, or get approved for a credit card, and takes away money you could put towards investing.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/money-advice-to-get-ahead-of-your-friends", sponsorLogo: "", sponsorURL: "")

//4
let wealth16 = Tip(header: "Investing Advice", title: "• Invest in the stock market \n• The simpler your investments, the better", body: "Avoid individual stocks whose value can rise or fall dramatically, and stick with low-cost index funds, a type of all-in-one investment that diversifies your money across a broad selection of stocks or bonds. \n\n• Invest through your retirement account \n• Max out your 401(k)", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/money-advice-to-get-ahead-of-your-friends", sponsorLogo: "", sponsorURL: "")
let wealth17 = Tip(header: "Billionaire Warren Buffett 💰", title: "Set up automatic transfers of a percentage of your paycheck into a savings or retirement account", body: "If you're looking at an investment with at least a 10-year time horizon, the best and most dependable is a low-cost fund that mimics the S&P 500 Index.", sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")
let wealth18 = Tip(header: "Increase Happiness 😄", title: "If you can't pay your monthly credit card bills, destroy those cards and use a debit card or cash instead", body: "You'll be more aware and careful about how you spend your money, and you will lift the burden of mounting debt. \n\nUnpaid monthly balances are often subject to extremely high interest rates. \n\nHaving credit card debt raises your stress and lowers your self-esteem.", sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")
let wealth19 = Tip(header: "Increase Happiness 😄", title: "If you plan to live in a place fewer than 5 years, renting is more likely the better option", body: "When you consider the monthly mortgage payment, property taxes, household insurance, upkeep expenses, utilities, and the opportunity cost of money - that is, how much you would have made putting that money in the stock market instead of in a house - renting can often add up to being the more cost-effective way to live.", sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")

//
let wealth20 = Tip(header: "Life Healthy", title: "Research: People with better finances have lower rates of obesity", body: "In other words, along with a good diet and regular physical activity, financial security could help keep you healthy.", sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")
let wealth21 = Tip(header: "Budgeting", title: "Stick to a program of regularly recording yoru spending limits impulse buys", body: "When you know what you spend, you're less likely to overspend and thus avoid more debt - a sure way to avoid stress. \n\n• 📝 Write in a notebook \n• 📊 Create a spreadsheet \n• 👩‍💻 Try an online website or app like mint.com.", sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")
let wealth22 = Tip(header: "Millionaire Habit 💰", title: "\"Pay yourself first.\" This means, on payday, save or invest a portion of your paycheck first and then use the remaining money to pay for everything else (rent, food, clothes, entertainment)", body: "The poor and middle-class pay for everything else first and only save or invest what’s left over—that's paying yourself last \n\nThe key is to automate: Direct-depositing contributions to a retirement account before that money hits your checking account is a great first step.", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/learnvest/2014/07/24/are-you-paying-yourself-first-the-money-habit-that-can-boost-wealth/#16ce4270732c", sponsorLogo: "", sponsorURL: "")
let wealth23 = Tip(header: "Warning 🚨", title: "Becoming wealthy can make you less generous and more greedy", body: "In one study, participants were given $10 and told that they could contribute any or all of it to another participant, the richer participants contributed, on average, 44% less. \n\nOther researchers have found that wealthier people tend to give a smaller percentage of their income to charity.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2016/06/why-rich-people-arent-as-happy-as-they-could-be", sponsorLogo: "", sponsorURL: "")

//
let wealth24 = Tip(header: "Quote", title: "Most people fail to realize that in life, it's not how much money you make, it's how much money you keep.", body: "- Robert Kiyosaki \nAuthor of Rich Dad, Poor Dad", sourceName: "Rich Dad, Poor Dad", sourceURL: "https://www.amazon.com/Rich-Dad-Poor-Teach-Middle-ebook/dp/B0175P82RA", sponsorLogo: "", sponsorURL: "")

let wealth25 = Tip(header: "Millionaire Advice 💰", title: "I am concerned that too many people are focused too much on money and not their greatest wealth, which is their education.", body: "If you think money will solve problems, I am afraid those people will have a rough ride. Intelligence solves problems and produces money. \n\nMoney without financial intelligence is money soon gone. If you want to be rich, you need to be financially literate. \n\n- Robert Kiyosaki \nAuthor of Rich Dad, Poor Dad", sourceName: "Rich Dad, Poor Dad", sourceURL: "https://www.amazon.com/Rich-Dad-Poor-Teach-Middle-ebook/dp/B0175P82RA", sponsorLogo: "", sponsorURL: "")

let wealth26 = Tip(header: "Millionaire Advice 💰", title: "Rich people acquire assets. The poor and middle class acquire liabilities, but they think they are assets.", body: "• Asset = something that puts money in your pocket. 👍 \n• Liability = something that takes money out of your pocket. 👎 \n\nBuying income-generating assets is the best way to get started on a path to becoming rich. \n\nKeep liabilities and expenses down. This will make more money available to continue buying assets. \n\n- Robert Kiyosaki \nAuthor of Rich Dad, Poor Dad", sourceName: "Rich Dad, Poor Dad", sourceURL: "https://www.amazon.com/Rich-Dad-Poor-Teach-Middle-ebook/dp/B0175P82RA", sponsorLogo: "", sponsorURL: "")

let wealth27 = Tip(header: "Warning 🚨", title: "Research: The ideal income point is $95,000 for life evaluation and $60,000-$75,000 for emotional well-being", body: "The amounts above are reported in U.S. dollars, and the data is per individual, not family. \n\nThe study also found once the threshold was reached, further increases in income tended to be associated with reduced life satisfaction and a lower level of well-being. This may be because after the optimal point of needs is met, people may be driven by desires such as pursuing more material gains and engaging in social comparisons, which could, ironically, lower well-being. \n\nRemember, money is only a part of what really makes us happy.", sourceName: "Purdue University", sourceURL: "https://www.purdue.edu/newsroom/releases/2018/Q1/money-only-buys-happiness-for-a-certain-amount.html", sponsorLogo: "", sponsorURL: "")

//
let wealth28 = Tip(header: "Millionaire Advice 💰", title: "DON'T: Say \"I can't afford it.\" \nDO: Say \"How can I afford it?\"", body: "The words \"I can't afford it\" shuts down your brain. You don't have to think anymore. \n\n\"How can I afford it?\" opens up the brain. It forces you to think and search for answers. \n\n- Robert Kiyosaki \nAuthor of Rich Dad, Poor Dad", sourceName: "Rich Dad, Poor Dad", sourceURL: "https://www.amazon.com/Rich-Dad-Poor-Teach-Middle-ebook/dp/B0175P82RA", sponsorLogo: "", sponsorURL: "")
let wealth29 = Tip(header: "Millionaire Advice 💰", title: "Real assets fall into several categories:", body: "1. Businesses that do not require your presence. You own them, but they are managed and run by other people. If you have to work there, it's not a business. It's a job. \n\n2. Stocks. \n\n3. Bonds. \n\n4. Mutual funds. \n\n5. Income-generating real estate. \n\n6. Notes (IOUs) \n\n7. Royalties from intellectual property such as music, scripts, patents. \n\n8. And anything else that has value, produces income or appreciates and has a ready market.", sourceName: "Rich Dad, Poor Dad", sourceURL: "https://www.amazon.com/Rich-Dad-Poor-Teach-Middle-ebook/dp/B0175P82RA", sponsorLogo: "", sponsorURL: "")
let wealth30 = Tip(header: "Millionaire Advice 💰", title: "Smart investors don't time markets. If they miss a wave, they search for the next one and get themselves in position.", body: "Why this is hard for most investors is because buying what is not popular is frightening to them. \n\nTimid investors are like sheep going along with the crowd. Or their greed gets them in when wise investors have already taken their profits and moved on. \n\nWise investors buy an investment when it's not popular. They know their profits are made when they buy, not when they sell. \n\nThey'll wait patiently. They do not time the market. \n\n- Robert Kiyosaki \nAuthor of Rich Dad, Poor Dad", sourceName: "Rich Dad, Poor Dad", sourceURL: "https://www.amazon.com/Rich-Dad-Poor-Teach-Middle-ebook/dp/B0175P82RA", sponsorLogo: "", sponsorURL: "")
let wealth31 = Tip(header: "Warning 🚨", title: "Becoming wealthy can make you less friendly and less generous", body: "In one study, participants were paired to play a game of Monopoly. \n\nThe game was rigged so that one of the participants quickly became far wealthier than the other. \n\nIt turned out that the wealthier a participant grew, the meaner he/she progressively became. \n\nFor example, the wealthier participants started assuming more dominant postures and began talking down to their \"poorer\" counterparts. \n\nThey also consumed a greater share of a bowl of pretzels meant to be shared equally.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2016/06/why-rich-people-arent-as-happy-as-they-could-be", sponsorLogo: "", sponsorURL: "")

//
let wealth32 = Tip(header: "Quote", title: "Forcing myself to think about how to make extra money is like going to the gym and working out with weights. \n\nThe more I work my mental money muscles out, the stronger I get.", body: "- Robert Kiyosaki \nAuthor of Rich Dad, Poor Dad", sourceName: "Rich Dad, Poor Dad", sourceURL: "https://www.amazon.com/Rich-Dad-Poor-Teach-Middle-ebook/dp/B0175P82RA", sponsorLogo: "", sponsorURL: "")
let wealth33 = Tip(header: "Millionaire Advice 💰", title: "The middle class is a constant state of financial struggle because their primary income is through wages, and as their wages increase, so do their expenses.", body: "They treat their home as their primary asset, instead on investing in income-producing assets. \n\nTreating your home as an investment and the philosophy that a pay raise means you can buy a larger home or spend more is the foundation of today's debt-ridden society. \n\nThis is high risk living caused by weak financial education. \n\n- Robert Kiyosaki \nAuthor of Rich Dad, Poor Dad", sourceName: "Rich Dad, Poor Dad", sourceURL: "https://www.amazon.com/Rich-Dad-Poor-Teach-Middle-ebook/dp/B0175P82RA", sponsorLogo: "", sponsorURL: "")
let wealth34 = Tip(header: "Millionaire Advice 💰", title: "The sonner you forget about needing a paycheck, the easier your adult life will be.", body: "Keep using your brain, work for free, and soon your mind will show you ways to making money far beyond what I could every pay you. \n\nYou will see things that other people never see. Opportunities right in front of their noses. \n\nMost people never see these opportunities because they're looking for money and security, so that's all they get. \n\nThe moment you see one opportunity, you will see them for the rest of your life. \n\n- Robert Kiyosaki \nAuthor of Rich Dad, Poor Dad", sourceName: "Rich Dad, Poor Dad", sourceURL: "https://www.amazon.com/Rich-Dad-Poor-Teach-Middle-ebook/dp/B0175P82RA", sponsorLogo: "", sponsorURL: "")
let wealth35 = Tip(header: "Warning 🚨", title: "Becoming wealthy can make you more isolated – and isolation makes us less happy", body: "Psychologically, the acquisition of wealth—and more generally, possessions that signal high status—makes us want to distance ourselves from others. \n\nThis may be due to a feeling of competition and selfishness that sets in with the acquisition of wealth or status. \n\nIt may also be because, quite simply, we don’t need other people to survive the way we did when we were poorer. \n\nAs for the physical element, it’s quite straightforward: the wealthier we become, the more likely we are to erect boundaries between ourselves and others—for example, by living in a bigger house with a fence around it.", sourceName: "Harvard Business Review", sourceURL: "https://hbr.org/2016/06/why-rich-people-arent-as-happy-as-they-could-be", sponsorLogo: "", sponsorURL: "")
//
let wealth36 = Tip(header: "Ray Dalio (2020)", title: "DON'T: Own bonds or cash \n\nDO: Diversify between currencies, asset classes, and countries because it's the best way to reduce risk without reducing opportunity", body: "Dalio's advice to stay out of bonds comes as interest rates remain at historic lows and investors raise doubts over the traditional 60/40 portfolio composition. \n\nAccording to 2020 report from JPMorgan Asset Management, a portfolio with 60% global equities and 40% bonds is projected to provide an annual return of just 4.2% over the next 10 to 15 years. A year earlier, returns on the same portfolio were projected at 5.4%. \n\nBeyond diversification, Dalio said that liquidity and differentiation should guide investor portfolios right now. Liquidity allows an investor flexibility to change as circumstances change.", sourceName: "Business Insider", sourceURL: "https://markets.businessinsider.com/news/stocks/billionaire-ray-dalio-dont-own-bonds-cash-investing-stock-market-outlook-2020-11-1029821971", sponsorLogo: "", sponsorURL: "")
let wealth37 = Tip(header: "Investing In Individual Stocks", title: "DON'T: Base your choice on which companies are performing well right now. \nDO: Invest in businesses that you think have long-term staying power.", body: "“Put together a portfolio of companies whose aggregate earnings march upward over the years, and so also will the portfolio’s market value.“ \n\n“If you aren’t willing to own a stock for 10 years, don’t even think about owning it for 10 minutes.“ \n\n- Billionaire Warren Buffett", sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2020/08/31/billionaire-warren-buffetts-best-life-and-investing-advice.html", sponsorLogo: "", sponsorURL: "")
let wealth38 = Tip(header: "When The Market Tanks 📉😬", title: "DON'T: Panic and sell off your investments just because of the latest news cycle. \n\nDO: Stay the course and trust that you’ve invested in companies that will stand the test of time.", body: "Don’t watch the market closely. Investors need an ability to both disregard mob fears or enthusiasms and to focus on a few simple fundamentals. \n\nThe markets are always going to be volatile, and the best thing any investor can do, regardless of experience, is keep a level head. \n\n- Billionaire Warren Buffett", sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2020/08/31/billionaire-warren-buffetts-best-life-and-investing-advice.html", sponsorLogo: "", sponsorURL: "")
let wealth39 = Tip(header: "Billionaire Warren Buffett 💰", title: "Consistently buy Vanguard's S&P 500 low-cost index fund (VFIAX)", body: "In his 2013 letter to Berkshire Hathaway shareholders, Mr. Buffett described how he has advised trustees to manage the money he will leave to his wife: \n\n“Put 10% of the cash in short-term government bonds and 90% in a very low-cost S&P 500 index fund. (I suggest Vanguard’s.) I believe the trust’s long-term results from this policy will be superior to those attained by most investors – whether pension funds, institutions or individuals – who employ high-fee managers.” \n\nInvestors can implement the above portfolio with just two Vanguard funds: \n• Vanguard 500 Index Fund Admiral Shares (VFIAX) \n• Vanguard Short-Term Treasury Index Fund Admiral Shares (VSBSX)", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/robertberger/2020/11/24/how-to-invest-money-based-on-advice-from-warren-buffett/?sh=27b743ee526c", sponsorLogo: "", sponsorURL: "https://investor.vanguard.com/mutual-funds/profile/VFIAX")
let wealth40 = Tip(header: "Chamath Palihapitiya on Bitcoin 💰", title: "Everyone should have 1% of their assets in Bitcoin. Buy it, hold it, put it away, and hope that you never need it.", body: "He's argued bitcoin serves as a long-term store of value. \"I think of this as the \"insurance policy\" I use to sleep soundly at night just in case the central banks and governments of the world step on a landmine.\" \n\nPalihapitiya warned against the buying and selling of bitcoin for short-term profit, advising investors to hold it and \"hope that you never need it because the amount of actual chaos that will drive bitcoin appreciation is not something we actually really want to see.\"", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/billybambrough/2020/10/11/neither-trump-nor-biden-will-help-the-us-dollar-warns-early-facebook-exec-calls-bitcoin-an-insurance-policy/", sponsorLogo: "", sponsorURL: "")


let wealth41 = Tip(header: "Billionaire Warren Buffett 💰", title: "During Wild Market Fluctuations: Buy-and-hold is the best strategy, and don’t watch the market closely", body: "“The money is made in investments by investing,” Buffett said, “and by owning good companies for long periods of time. If they buy good companies, buy them over time, they’re going to do fine 10, 20, 30 years from now.”", sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2016/03/04/warren-buffett-buy-hold-and-dont-watch-too-closely.html", sponsorLogo: "", sponsorURL: "")
let wealth42 = Tip(header: "Billionaire Warren Buffett 💰", title: "Buy When Others Are Fearful 📉😬", body: "”The years ahead will occasionally deliver major market declines – even panics – that will affect virtually all stocks. No one can tell you when these traumas will occur – not me, not economists, not the media.” \n\nDuring such scary periods, you should never forget two things: First, widespread fear is your friend as an investor, because it serves up bargain purchases. Second, personal fear is your enemy. Investors who avoid high and unnecessary costs and simply sit for an extended period with a collection of large, conservatively-financed American businesses will almost certainly do well. \n\n- Berkshire Hathaway's 2016 shareholder letter", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/antoinegara/2017/02/25/berkshire-hathaway-shareholder-letter-2017/", sponsorLogo: "", sponsorURL: "")
let wealth43 = Tip(header: "Suze Orman, Personal Finance Expert 💰", title: "Practice Dollar-Cost Averaging, an investment strategy where you take the same fixed amount of money to buy investments regularly, regardless of the share price; this way you end up buying more shares when prices are low and fewer shares when prices are high.", body: "The point is to mitigate the risk you’re taking in investing in the market all at one time. With this strategy, you should be hoping that a recession is coming so you can you could buy stocks for pennies on the dollar.", sourceName: "Yahoo Finance", sourceURL: "https://finance.yahoo.com/news/suze-orman-average-investors-dont-sell-downturns-191639811.html", sponsorLogo: "", sponsorURL: "")

let wealth44 = Tip(header: "Suze Orman, Personal Finance Expert 💰", title: "Don't sell during downturns. Investors should keep their money in the market – as long as they don’t need it right away.", body: "During downturns, ”that’s when the fortune was made,” Orman said. “That’s when you could buy stocks for pennies on the dollar. I wish for 2008 again. \n\nLooking back on her biggest investment mistakes, Orman said she regrets selling her Amazon (AMZN) shares in 2001 that she originally bought for $18 in 1997. Amazon shares are now trading at a whopping $1,727 in 2018. \n\n“That’s when I learned. You like a stock? It makes sense? Possibly has a future? Just stick with it. If I had just kept it, I would’ve made tens of millions of dollars.”", sourceName: "Yahoo Finance", sourceURL: "https://finance.yahoo.com/news/suze-orman-average-investors-dont-sell-downturns-191639811.html", sponsorLogo: "", sponsorURL: "")

let wealth45 = Tip(header: "Jack Bogle's Investing Advice 💰", title: "DON'T: Buy individual stocks. 🙅‍♀️ \nDO: You should have a boring money account, where you put money in a stock market index fund and balance it out with some bonds, depending on age, and and don't look at it for 50 years. 📈", body: "If you really want to buy individual stocks, I would say, first, start off with a stock market index fund and for 5 years don't do anything else. And then look around and see what's happened in the 5 years, see how it felt when the market dropped, see how it felt when it came back. Then, after 5 years, put 5% of your money in a funny money account to buy individual stocks.", sourceName: "The Motley Fool", sourceURL: "https://www.fool.com/investing/2019/01/17/jack-bogle-on-index-funds-vanguard-and-investing-a.aspx", sponsorLogo: "", sponsorURL: "https://investor.vanguard.com/mutual-funds/profile/VFIAX")

let wealth46 = Tip(header: "Chamath Palihapitiya on Bitcoin 💰", title: "Everyone should have 1% of their assets in Bitcoin specifically. It's a fantastic hedge.", body: "\"A reasonable strategy is 1% of my net worth should be in something that is completely uncorrelated with the world and how the world works. You quietly over a period of time accumulate a position [in Bitcoin] and just never look at it again and hope that that insurance under the matress never has to come due. But if it does, it will protect you because then that thing will be hundreds or a million dollars a coin.\"", sourceName: "CNBC", sourceURL: "https://www.cnbc.com/video/2020/02/26/palihapitiya-everyone-should-have-1percent-of-their-assets-in-bitcoin.html", sponsorLogo: "", sponsorURL: "")

let wealth47 = Tip(header: "Billionaire Warren Buffett 💰", title: "Consistently buy Vanguard's S&P 500 low-cost index fund (VFIAX)", body: "Index funds make sense for two reasons: They’re inexpensive and aren’t tied to the success of one single entity. \n\nIndex funds are a reliable way to take advantage of market gains while hedging against risk. \n\n“The trick is not to pick the right company,” Buffett says. “The trick is to essentially buy all the big companies through the S&P 500 and to do it consistently.”", sourceName: "CNBC", sourceURL: "https://www.forbes.com/sites/robertberger/2020/11/24/how-to-invest-money-based-on-advice-from-warren-buffett/?sh=27b743ee526c", sponsorLogo: "", sponsorURL: "https://investor.vanguard.com/mutual-funds/profile/VFIAX")



//WEEK 1
//0
let wealthTipArray0 = [wealth0, wealth1, wealth2, wealth3]
let wealthTopic0 = Topic(title: wealthTitle, icon: wealthIcon, tip: wealthTipArray0)
//1
let wealthTipArray1 = [wealth4, wealth5, wealth6, wealth7]
let wealthTopic1 = Topic(title: wealthTitle, icon: wealthIcon, tip: wealthTipArray1)
//2
let wealthTipArray2 = [wealth8, wealth9, wealth10, wealth11]
let wealthTopic2 = Topic(title: wealthTitle, icon: wealthIcon, tip: wealthTipArray2)

let wealthTipArray3 = [wealth12, wealth13, wealth14, wealth15]
let wealthTopic3 = Topic(title: wealthTitle, icon: wealthIcon, tip: wealthTipArray3)
//4
let wealthTipArray4 = [wealth16, wealth17, wealth18, wealth19]
let wealthTopic4 = Topic(title: wealthTitle, icon: wealthIcon, tip: wealthTipArray4)
//5
let wealthTipArray5 = [wealth20, wealth21, wealth22, wealth23]
let wealthTopic5 = Topic(title: wealthTitle, icon: wealthIcon, tip: wealthTipArray5)

let wealthTipArray6 = [wealth24, wealth25, wealth26, wealth27]
let wealthTopic6 = Topic(title: wealthTitle, icon: wealthIcon, tip: wealthTipArray6)

//WEEK 2
let wealthTipArray7 = [wealth28, wealth29, wealth30, wealth31]
let wealthTopic7 = Topic(title: wealthTitle, icon: wealthIcon, tip: wealthTipArray7)

let wealthTipArray8 = [wealth32, wealth33, wealth34, wealth35]
let wealthTopic8 = Topic(title: wealthTitle, icon: wealthIcon, tip: wealthTipArray8)

let wealthTipArray9 = [wealth36, wealth37, wealth38, wealth39]

let wealthTipArray10 = [wealth40, wealth41, wealth42, wealth43]

let wealthTipArray11 = [wealth44, wealth45, wealth46, wealth47]

// RANDOM
let wealthArrays = [wealthTipArray0, wealthTipArray1, wealthTipArray2, wealthTipArray3, wealthTipArray4, wealthTipArray5, wealthTipArray6, wealthTipArray7, wealthTipArray8, wealthTipArray9, wealthTipArray10, wealthTipArray11]
let wealthTopic = Topic(title: wealthTitle, icon: wealthIcon, tip: wealthArrays.random())
let wealthTopics = Topics(title: wealthTitle, icon: wealthIcon, topics: [wealthTopic,])



//MARK: - Career Growth

let jobSearchTitle = "Career"
let jobSearchIcon = Constants.Icon.jobSearch


//1
let jobSearch0 = Tip(header: "Become Successful", title: "Research: Grit is more important than IQ when you're trying to become successful", body: "Grit or determination is the willingness to push through even when the odds are against you. \n\nGrit means: \n\n• After you apply to 10 jobs and get no response, you find the motivation to keep sending resumes until someone answers. \n\n• You sit down to write yet another cover letter and have the discipline to make sure it's tailored to the particular job. \n\n• Afer you send off a job application, you follow-up via email or phone call and refuse to let up until you get a response.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/important-trait-of-success-2013-11", sponsorLogo: "", sponsorURL: "")
let jobSearch1 = Tip(header: "Increase Success", title: "60% of the hiring managers surveyed said volunteer work makes you more marketable", body: "When companies are hiring, they are looking not only for people who can get the job done but also for people with character and integrity.", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/jacquelynsmith/2013/03/20/10-things-to-do-while-youre-unemployed/#11534a8550ca", sponsorLogo: "", sponsorURL: "")
let jobSearch2 = Tip(header: "Increase Success", title: "28% of the hiring managers surveyed said starting a business is a great résumé booster and a wonderful marketing tool", body: "If you have the means to do it. You will also learn skills that are transferrable if you do end up working for someone else again.", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/jacquelynsmith/2013/03/20/10-things-to-do-while-youre-unemployed/#11534a8550ca", sponsorLogo: "", sponsorURL: "")
let jobSearch3 = Tip(header: "Increase Success 💻", title: "11% of the hiring managers surveyed said a professional blog can be a good way to market yourself to employers", body: "Why? You get people to see you as an expert in your field. You are also conveying your passion, gaining knowledge, and separating yourself from others.", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/jacquelynsmith/2013/03/20/10-things-to-do-while-youre-unemployed/#11534a8550ca", sponsorLogo: "", sponsorURL: "")
//2
let jobSearch4 = Tip(header: "Increase Success", title: "Build and expand your network of contacts through social media and professional organizations", body: "Let friends, family, and professional contacts know that you’re looking for a job, and ask for their help in finding connections to the organizations you’re interested in. \n\nA résumé handed to the hiring manager directly from someone within the company is more likely to get noticed.", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/jacquelynsmith/2013/03/20/10-things-to-do-while-youre-unemployed/#11534a8550ca", sponsorLogo: "", sponsorURL: "")
let jobSearch5 = Tip(header: "Applying For Jobs 💻", title: "Tailor your résumé with keywords for each job you apply to", body: "Add keywords in your résumé because most employers use electronic scanning devices to screen and rank candidates. You’ll want to tailor your résumé for each position you apply for, and include specific words from the job posting. ", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/jacquelynsmith/2013/03/20/10-things-to-do-while-youre-unemployed/#11534a8550ca", sponsorLogo: "", sponsorURL: "")
let jobSearch6 = Tip(header: "Increase Success 🎓", title: "61% of the hiring managers surveyed recommended taking a class if you're job searching", body: "When you take a class in your field, you are also showing that you are serious about your work and that you take initiative. Another advantage to taking a class: It’s a great networking opportunity.", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/jacquelynsmith/2013/03/20/10-things-to-do-while-youre-unemployed/#11534a8550ca", sponsorLogo: "", sponsorURL: "")
let jobSearch7 = Tip(header: "Applying For Jobs", title: "Follow-up after you apply to a job", body: "According to CareerBuilder, two thirds of workers reported that they don’t follow up with the employer after submitting their résumé for consideration. \n\nIt’s important to take that extra step to let the employer know you’re interested, and make sure you always send a thank you after an interview. \n\nHandwritten notes will set you apart from the pool of candidates, but e-mails are acceptable, too.", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/jacquelynsmith/2013/03/20/10-things-to-do-while-youre-unemployed/#11534a8550ca", sponsorLogo: "", sponsorURL: "")

//3
let jobSearch8 = Tip(header: "Quote", title: "When you're doing work you care about, you are able to work harder and better.", body: "- Reid Hoffman \n\nCo-founder of LinkedIn" , sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/danschawbel/2012/02/14/10-memorable-quotes-from-the-start-up-of-you/", sponsorLogo: "", sponsorURL: "")
let jobSearch9 = Tip(header: "Increase Success", title: "Volunteering improves your chances of getting hired (even if you're unemployed)", body: "Study: Unemployed people who volunteered between 20-99 hours during the year were roughly 7% more likely to have found employment one year later compared to those who didn’t volunteer.", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/nextavenue/2013/06/24/proof-that-volunteering-pays-off-for-job-hunters/#4156392c753a", sponsorLogo: "", sponsorURL: "")
let jobSearch10 = Tip(header: "Warren Buffett's Career Advice", title: "“I urge you to work in jobs you love. You’re out of your mind if you keep taking jobs that you don’t like because you think it’ll look good on your resume.”", body: "He continued: \n\n“Do something you enjoy. Be associated with people you like. I only work with people I like. If I could make $100 million dollars with a guy who causes my stomach to churn, I’d say no.”", sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2019/08/10/warren-buffett-what-id-do-differently-to-live-a-happier-life.html", sponsorLogo: "", sponsorURL: "")
let jobSearch11 = Tip(header: "Job Interview", title: "The best time of day to interview for a job is in the morning", body: "Research: When similarly qualified candidates were interviewed consecutively on the same day, the last interviewee received lower scores than he or she actually should have. \n\nThe phenomenon is called “narrow bracketing,” and it happens when someone gives out a series of high marks. Subconsciously, he or she becomes reluctant to give another high mark, even if it is deserved. \n\n• Ask for an interview in the morning.", sourceName: "Fast Company", sourceURL: "https://www.fastcompany.com/3047586/the-best-time-of-day-to-do-everything-at-work", sponsorLogo: "", sponsorURL: "")

//4
let jobSearch12 = Tip(header: "Increase Success 🤝", title: "If you want to build a strong network that will help you move ahead in your career, it's vital to first take stock of the connections you already have. \n\n- Michael Bloomberg", body: "Reid Hoffman, co-founder of LinkedIn", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/danschawbel/2012/02/14/10-memorable-quotes-from-the-start-up-of-you/", sponsorLogo: "", sponsorURL: "")
let jobSearch13 =  Tip(header: "Self-Made Billionaire 💰", title: "Find work that you love to do.", body: "\"It must be miserable to wake up every day and hate what you do. Go and do something else. If you hate it, how can it be worse?\" \n\nYou'll never be great at something if you don't like doing it.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/mike-bloombergs-advice-to-small-businesses-and-keys-to-success-2015-11", sponsorLogo: "", sponsorURL: "")
let jobSearch14 = Tip(header: "Increase Success 👍", title: "Volunteering gives you a 27% better chance of finding a job than those who didn’t", body: "Volunteering as a Pathway to Employment: acquiring skills or knowledge as a volunteer and then putting them to use may demonstrate higher levels of capacity, potentially making the volunteer more attractive to and productive for employers.", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/nextavenue/2013/06/24/proof-that-volunteering-pays-off-for-job-hunters/#4156392c753a", sponsorLogo: "", sponsorURL: "")
let jobSearch15 = Tip(header: "Increase Happiness 😀", title: "When choosing a job, favor trustworthy people (bosses and co-workers) over other factors", body: "In building your own social network, remember that trustworthy people attract trustworthy people. \n\nSo make it a point to be trustworthy yourself - show up on time, keep your word, and act with integrity." , sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")

//5
let jobSearch16 = Tip(header: "Increase Happiness 😀", title: "DO: Seek a job that that feeds your passions, values, natural talents \n\nDON'T: Seek a job just because you think it will pay better, give you a big office, or title", body: "Follow your heart rather than listening to what others tell you to do. \n\nSeek a job that fits your identity, allows you to pursue excellence, and benefits society. \n\nIf you feel stuck in your current position, take a chance on something new to see how you like it. \n\nPut high priority on working with people you like." , sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")
let jobSearch17 = Tip(header: "Warren Buffett", title: "Try to work for whomever you admire most", body: "It won’t necessarily be the job that you’ll have 10 years later, but you’ll have the opportunity to pick up so much as you go along. \n\nWhile salary is an important factor when thinking about your career, you don’t want to take a job just for the money.", sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2019/08/31/billionaire-investor-warren-buffetts-best-advice.html", sponsorLogo: "", sponsorURL: "")
let jobSearch18 = Tip(header: "Millionaire Advice", title: "I recommend to young people to seek work for what they will learn, more than what they will earn.", body: "Look down the road at what skills they want to acquire before choosing a specific profession and before getting trapped in the \"Rat Race.\" \n\n- Robert Kiyosaki \nAuthor of Rich Dad, Poor Dad", sourceName: "Rich Dad, Poor Dad", sourceURL: "https://www.amazon.com/Rich-Dad-Poor-Teach-Middle-ebook/dp/B0175P82RA", sponsorLogo: "", sponsorURL: "")
let jobSearch19 = Tip(header: "Warning", title: "A large portion of one's lifetime wage growth occurs in the first 10 years of a career", body: "Starting with a higher salary puts people on a higher initial trajectory.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")

//6
let jobSearch20 = Tip(header: "Live Longer 🎓", title: "Go to College", body: "Higher education is associated with less financial stress, fewer traumatic events like divorce or assault, and better odds of having health insurance and owning a home. \n\nThe odds of dying for women with the lowest education levels is 66% higher than for their more educated counterparts, according to a Harvard study.", sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/doctors-secrets-longer-life/", sponsorLogo: "", sponsorURL: "")



let jobSearchTEST1 = Tip(header: "👫", title: "Always be in Permanent Beta: Whatever you're doing, always be in the test phase", body: "You must think of yourself as a work in progress. You must invest in yourself every single day.", sourceName: "The Startup of You", sourceURL: "", sponsorLogo: "", sponsorURL: "")

let jobSearchWIP1 = Tip(header: "👫", title: "For many people twenty years of experience is really one year of experience repeated twenty times.", body: "Andy Hargadon, head of the entrepreneurship center at UC Davis", sourceName: "The Startup of You", sourceURL: "https://www.thestartupofyou.com/", sponsorLogo: "", sponsorURL: "")

let jobSearchTESTING = Tip(header: "👫", title: "To succeed professionally in today’s world you need to think and act like you’re running a startup — the Start-Up of You — i.e. adopting the strategies of successful entrepreneurs", body: "Why? Because the traditional career paths and assumptions are no longer valid — e.g. that big corporations will take care of loyal workers who automatically move up in a career escalator — due to at least two macro forces: (1) Technology (automates jobs, changes the nature of jobs, and makes it easier to offshore jobs), and (2) Globalization (increases competition for jobs).", sourceName: "The Startup of You", sourceURL: "https://www.thestartupofyou.com/", sponsorLogo: "", sponsorURL: "")





//WEEK 1
//0
let jobSearchTipArray0 = [jobSearch0, jobSearch1, jobSearch2, jobSearch3]
let jobSearchTopic0 = Topic(title: jobSearchTitle, icon: jobSearchIcon, tip: jobSearchTipArray0)

let jobSearchTipArray1 = [jobSearch4, jobSearch5, jobSearch6, jobSearch7]
let jobSearchTopic1 = Topic(title: jobSearchTitle, icon: jobSearchIcon, tip: jobSearchTipArray1)

let jobSearchTipArray2 = [jobSearch8, jobSearch9, jobSearch10, jobSearch11]
let jobSearchTopic2 = Topic(title: jobSearchTitle, icon: jobSearchIcon, tip: jobSearchTipArray2)

let jobSearchTipArray3 = [jobSearch12, jobSearch13, jobSearch14, jobSearch15]
let jobSearchTopic3 = Topic(title: jobSearchTitle, icon: jobSearchIcon, tip: jobSearchTipArray3)

let jobSearchTipArray4 = [jobSearch16, jobSearch17, jobSearch18, jobSearch19]

//WIP
let jobSearchTipArray5 = [jobSearch20, jobSearch3, jobSearch7, jobSearch19]

// RANDOM
let jobSearchArrays = [jobSearchTipArray0, jobSearchTipArray1, jobSearchTipArray2, jobSearchTipArray3, jobSearchTipArray4, jobSearchTipArray5]
let jobSearchTopic = Topic(title: jobSearchTitle, icon: jobSearchIcon, tip: jobSearchArrays.random())
let jobSearchTopics = Topics(title: jobSearchTitle, icon: jobSearchIcon, topics: [jobSearchTopic,])

// MARK: - Filmmaking




let filmmakingTitle = "Film Advice"
let filmmakingIcon = Constants.Icon.filmmaking

//MARK: Filmmaking Advice
//WEEK 1
//0
let filmAdvice0 = Tip(header: "Quote", title: "There’s nothing more important in making movies than the screenplay.", body: "- Richard Attenborough" , sourceName: "Industrial Scripts", sourceURL: "https://industrialscripts.com/quotes-about-screenwriting/", sponsorLogo: "", sponsorURL: "")
let filmAdvice1 = Tip(header: "Daily Routine", title: "Guilermo del Toro:", body: "My social life is deplorable, but every day I watch one to two movies, minimum. Every day. \n\nI review more than view. I try to break down the movies that I love into elements. \n• How does it work? \n• Why does it work?" , sourceName: "The Craft of the Director: Guillermo del Toro, Directors Guild of America", sourceURL: "https://www.youtube.com/watch?v=FjR5bT5YYU0", sponsorLogo: "", sponsorURL: "")

let filmAdvice2 = Tip(header: "Spike Lee:", title: "Advice for Aspiring Directors: Write", body: "If you did a survey of the last 25 years and looked at the first films of directors, I’d say a large percentage of those films the directors wrote that script. \n\nThat’s a big clue when talking about film. If you want to be a director, you have to write also." , sourceName: "IndieWire", sourceURL: "https://www.indiewire.com/gallery/directing-tips-filmmakers-christopher-nolan-wes-anderson-quentin-tarantino-advice/moncler-a-tribute-to-new-york-city-new-york-usa-16-nov-2016-2/", sponsorLogo: "", sponsorURL: "")
let filmAdvice3 = Tip(header: "", title: "Guilermo del Toro: Industry Advice", body: "Be resilient and never lose hope. It's going to be brutal, it's going to be horrible, it's going to merciless. \n\nAnd if you break, you shouldn't be making movies." , sourceName: "BFI Screen Talk: Guilermo del Toro | BFI London Film Festival 2017", sourceURL: "https://www.youtube.com/watch?v=rfbD3OBir64", sponsorLogo: "", sponsorURL: "")
//1
let filmAdvice4 = Tip(header: "Quote", title: "You can’t fix a bad script after you start shooting. The problems on the page only get bigger as they move to the big screen.", body: "- Howard Hawks" , sourceName: "Industrial Scripts", sourceURL: "https://industrialscripts.com/quotes-about-screenwriting/", sponsorLogo: "", sponsorURL: "")

let filmAdvice5 = Tip(header: "Francis Ford Coppola:", title: "Don't Give Up. Some of the best films were initially hated by people", body: "People were very critical of The Godfather and The Godfather II when they were released. \n\nI remember sitting in a screening room and hearing other people give negative comments about the film and that they were critical of Marlon Brando and Al Pacino's performances (e.g. Marlon Brando's mumbles)." , sourceName: "Francis Ford Coppola Interview (1994)", sourceURL: "https://www.youtube.com/watch?v=D9QNgHV4oQU", sponsorLogo: "", sponsorURL: "")
let filmAdvice6 = Tip(header: "Francis Ford Coppola:", title: "Advice to Young Filmmakers", body: "The young filmmaker is stupid. Which is to say that they don't realize how difficult some of the things they are going to attempt is. \n\nTo be stupid is a great advantage because some of the greatest sequences in film could not have been done by someone who wasn't stupid." , sourceName: "Apocalypse Now - 2001 Cannes Film Festival Francis Ford Coppola", sourceURL: "https://www.youtube.com/watch?v=4JxK6wLHbPs", sponsorLogo: "", sponsorURL: "")
let filmAdvice7 = Tip(header: "Industry Advice", title: "Francis Ford Coppola:", body: "I have to be honest, I associate my motion picture career more with being unhappy, being scared, being in trouble, or being under the gun. And not at all with being pleasant." , sourceName: "Francis Ford Coppola's Advice", sourceURL: "https://www.youtube.com/watch?v=reqDydPpu0Y", sponsorLogo: "", sponsorURL: "")

//2
let filmAdvice8 = Tip(header: "Quote", title: "To make a great film you need 3 things – the script, the script and the script.", body: "- Alfred Hitchcock" , sourceName: "Industrial Scripts", sourceURL: "https://industrialscripts.com/quotes-about-screenwriting/", sponsorLogo: "", sponsorURL: "")
let filmAdvice9 = Tip(header: "Career Advice", title: "Francis Ford Coppola:", body: "In film, you have to love the project because over time you're really start to hate it." , sourceName: "Francis Ford Coppola's Advice", sourceURL: "https://www.youtube.com/watch?v=reqDydPpu0Y", sponsorLogo: "", sponsorURL: "")
let filmAdvice10 = Tip(header: "Industry Advice", title: "Ron Howard:", body: "Nobody really wants to hand a first-time director the reigns. Most people get their first chance to direct by negotiating their way in. \n\nIf you want me to write the script, you gotta let me direct it. If you want me to act in it, you gotta let me direct it. If you want this group of investors that I found, you gotta let me direct it. " , sourceName: "Ron Howard's Advice", sourceURL: "https://www.youtube.com/watch?v=XOxItKRzPOY", sponsorLogo: "", sponsorURL: "")
let filmAdvice11 = Tip(header: "Career Advice", title: "George Lucas:", body: "I think it's important to not do what your peers, parents, teachers, culture think you should do. But to do what is inside you." , sourceName: "George Lucas' Advice", sourceURL: "https://www.youtube.com/watch?v=sCP2SGTIz28", sponsorLogo: "", sponsorURL: "")

//3
let filmAdvice12 = Tip(header: "Quote", title: "[Making movies is] 80% script and 20% getting great actors. There’s nothing else to it.", body: "- William Wyler" , sourceName: "Industrial Scripts", sourceURL: "https://industrialscripts.com/quotes-about-screenwriting/", sponsorLogo: "", sponsorURL: "")
let filmAdvice13 = Tip(header: "Filmmaking Advice", title: "David O. Russell:", body: "If you're too ambivalent (indecisive) then it will not happen. If you always try to hedge your bets then it will not happen. But when you commit. When you fully commit by saying, “I'm going to climb the mountain this way. I may die but I'm picking this way.” Then all kinds of things will present themselves to you. \n\nOtherwise, God is like, \"Nah, you didn't pick yet so I'm not going to give you any stuff yet.\" You gotta pick. Once you pick then all kinds of things start to show up." , sourceName: "The Craft of the Director: David O. Russell", sourceURL: "https://www.youtube.com/watch?v=_wDrklwynLo", sponsorLogo: "", sponsorURL: "")
let filmAdvice14 = Tip(header: "How Make A Movie", title: "Quentin Tarantino:", body: "You don't have to go to [film] school, you don't have to know about lens, crossing the line... None of that shit is important. \n\nIf you truly love cinema with all your heart and with enough passion, you can't help but make a good movie." , sourceName: "Young Advice from Master Filmmakers", sourceURL: "https://www.youtube.com/watch?v=m6Rw03dnxEw", sponsorLogo: "", sponsorURL: "")

let filmAdvice15 = Tip(header: "College Advice", title: "Terry Gilliam:", body: "Don't take media studies. Take something useful: philosophy, history, English, etc. \n\nLearn to have thoughts. Because there's no point in making movies if you're just imitating other people or if you have no thoughts of your own that you're trying to get out of your system [through movies]." , sourceName: "Young Advice from Master Filmmakers", sourceURL: "https://www.youtube.com/watch?v=m6Rw03dnxEw", sponsorLogo: "", sponsorURL: "")

//4
let filmAdvice16 = Tip(header: "Advice", title: "Pick up a camera. Shoot something. No matter how small, no matter how cheesy, no matter whether your friends and your sister star in it. Put your name on it as director. Now you’re a director. Everything after that you’re just negotiating your budget and your fee.", body: "– James Cameron" , sourceName: "Indie Film Hustle", sourceURL: "https://indiefilmhustle.com/filmmaking-quotes/", sponsorLogo: "", sponsorURL: "")
let filmAdvice17 = Tip(header: "Career Advice", title: "Paul Thomas Anderson:", body: "Initially, when I was trying to make films, I got nervous when somebody in a position of power would disagree with my opinion. Like that their opinion was somehow right or better than mine. I finally realized that that person just thinks differently than me, and that's okay, but I’m not wrong. \n\nYou can get filled with such fear. And it's really easy to get your heartbroken and beaten when you're attempting to make films. It's a miracle anytime a film gets made. there should be no fear. \n\nI always remember being pummeled by fear early on in film and thinking if I could have just gotten rid of that fear earlier it might have been a little easier. Just don't give a fuck, that's kind of the best thing to do." , sourceName: "Young Advice from Master Filmmakers", sourceURL: "https://www.youtube.com/watch?v=m6Rw03dnxEw", sponsorLogo: "", sponsorURL: "")
let filmAdvice18 = Tip(header: "Industry Insight", title: "Francis Ford Coppola:", body: "When I look back, I realized I made The Godfather, The Conversation, The Godfather II, and Apocalypse Now. One after another in about four and a half years. But, I was so depressed. \n\nI had won 5 Oscars and nobody would let me do Apocalypse Now. So, I took the Oscars [that I had won], I was so mad, and I threw them out of the window of my house. \n\nFilm is an expensive medium. You have to have the resources. I'm much more stress-free now, but thanks to the wine business, not to the film business." , sourceName: "Francis Ford Coppola Explained His Current \"Film Student\" Mentality at Tribeca 2016", sourceURL: "https://www.youtube.com/watch?v=WdISYjTmqek", sponsorLogo: "", sponsorURL: "")
let filmAdvice19 = Tip(header: "Industry Insight", title: "Francis Ford Coppola:", body: "When you're a film director, like on a movie like The Godfather, all I was trying to do was not get fired every week. I was so scared. \n\nIn Apocalypse Now, I was terrified. And the only reason I own Apocalypse Now is because nobody else wanted to finance it." , sourceName: "Francis Ford Coppola Explained His Current \"Film Student\" Mentality at Tribeca 2016", sourceURL: "https://www.youtube.com/watch?v=WdISYjTmqek", sponsorLogo: "", sponsorURL: "")


//5
let filmAdvice20 = Tip(header: "Quote", title: "Having a really good understanding of history, literature, psychology, sciences – is very, very important to actually being able to make movies.", body: "- George Lucas" , sourceName: "Indie Film Hustle", sourceURL: "https://indiefilmhustle.com/filmmaking-quotes/", sponsorLogo: "", sponsorURL: "")
let filmAdvice21 = Tip(header: "Career Advice", title: "Martin Scorsese:", body: "Make your own industry. Recreate movies, don't pay attention to the industry. Make your own thing. \n\nYou want the work to be seen, but it doesn't have to be at the mainstream movie theaters. The communal experience is always important. You can make a film with a camera the size of a doorknob and still show it to an audience. It's still a great communal experience. \n\nIt doesn't necessarily have to cost $100 million. Break open the form. Don't just have your tripod and camera standing on it. Whether we like it or not, we all have to deal with new technology. Take what's available and push it." , sourceName: "Martin Scorsese's Advice To Beginners", sourceURL: "https://www.youtube.com/watch?v=H0C1jh5NuwQ", sponsorLogo: "", sponsorURL: "")
let filmAdvice22 = Tip(header: "Advice to Young Directors", title: "Orson Welles:", body: "I think that it is possible to spoil a young director by giving them too much money so that they do not learn one of the main arts of directing which is the ability to walk away from something when it is not perfect. No fine movie was ever made by a director who wants everything to be perfect. \n\nFor example, every bad painting has every leaf in the tree and every great painting makes you see a tree. Therefore, there are great lessons to be learned by not using the studio's money unquestioning." , sourceName: "Filming 'The Trial' [1981] (Unedited) - Rare Orson Welles Documentary", sourceURL: "https://www.youtube.com/watch?v=RbUe-bM6bXg", sponsorLogo: "", sponsorURL: "")

let filmAdvice23 = Tip(header: "Career Advice", title: "Orson Welles:", body: "It personally cost Orson Welles about $80,000 to make The Trial (1962) and he never made any money from the film. \n\n\"It's cost me a lot more to be a film director than I've ever made. That's literally true. So let that be an encouragement to you all.\"" , sourceName: "Filming 'The Trial' [1981] (Unedited) - Rare Orson Welles Documentary", sourceURL: "https://www.youtube.com/watch?v=RbUe-bM6bXg", sponsorLogo: "", sponsorURL: "")


//6
let filmAdvice24 = Tip(header: "Quote", title: "The more successful the villain, the more successful the film.", body: "- Alfred Hitchcock" , sourceName: "Industrial Scripts", sourceURL: "https://industrialscripts.com/quotes-about-screenwriting/", sponsorLogo: "", sponsorURL: "")
let filmAdvice25 = Tip(header: "Advice to Directors", title: "Guilermo del Toro:", body: "A director should have every answer. And if you don't have the answer, which should be very rare, you should make it known. \n\nYou cannot give the wrong answer because every choice is cumulative." , sourceName: "The Craft of the Director: Guillermo del Toro, Directors Guild of America", sourceURL: "https://www.youtube.com/watch?v=FjR5bT5YYU0", sponsorLogo: "", sponsorURL: "")
let filmAdvice26 = Tip(header: "Career Advice", title: "Francis Ford Coppola:", body: "The best thing a young film director could do is start in the theater, with actors and the one-act play form, before they get involved with the movies. \n\nYou should first learn to work with the actors and the content without the burden of the camera. And then after having done some one-act plays and having a sense of how you help an actor get what you want, then go on and see what's the best way to put a camera to it. \n\nA lot of film directors don't have the experience working with actors that they might get if they had started in the theater." , sourceName: "Francis Ford Coppola Interview (1994)", sourceURL: "https://www.youtube.com/watch?v=D9QNgHV4oQU", sponsorLogo: "", sponsorURL: "")
let filmAdvice27 = Tip(header: "Career Advice", title: "Jerry Lewis:", body: "Be tenacious, be aggressive, don't be polite. If you’re polite, you'll be one of the many people standing in the line. \n\nYou have to be a little pushy. You have to be prepared to say you're sorry that you were wrong or that you made a mistake. But on the whole you gotta go for it. \n\nYou ain't never going to round the bases unless you swing the bat. You just have to want it so badly that you can go without food, then you're on your way." , sourceName: "Young Advice from Master Filmmakers", sourceURL: "https://www.youtube.com/watch?v=m6Rw03dnxEw", sponsorLogo: "", sponsorURL: "")

//WEEK 2
//7
let filmAdvice28 = Tip(header: "Quote", title: "Give me a good script, and I’ll be a hundred times better as a director.", body: "- George Cukor" , sourceName: "Industrial Scripts", sourceURL: "https://industrialscripts.com/quotes-about-screenwriting/", sponsorLogo: "", sponsorURL: "")
let filmAdvice29 = Tip(header: "Career Advice", title: "Orson Welles:", body: "Anybody who goes into films has to be a little crazy. They have to be ready for any kind of disappointment and defeat. It's mathematically almost an impossible medium to succeed in on an important level." , sourceName: "Filming 'The Trial' [1981] (Unedited) - Rare Orson Welles Documentary", sourceURL: "https://www.youtube.com/watch?v=RbUe-bM6bXg", sponsorLogo: "", sponsorURL: "")
let filmAdvice30 = Tip(header: "Career Advice", title: "Francis Ford Coppola", body: "What I’ve learned is that the stuff I got in trouble for, the casting of the Godfather or the flag scene in Patton, was the stuff that was remembered and what is considered the really good work. \n\nUsually, the stuff that's your best work or idea will be attacked the most ferociously probably because it's new. So, you have to be courageous about your instincts and your ideas because otherwise you'll just give in and change it, and the things that might have been memorable will be lost." , sourceName: "Francis Ford Coppola's Advice", sourceURL: "https://www.youtube.com/watch?v=reqDydPpu0Y", sponsorLogo: "", sponsorURL: "")

let filmAdvice31 = Tip(header: "Career Advice", title: "Debra Martin Chase (Producer):", body: "I think the key to longevity in this business, whether you are Martin Scorsese or any other filmmaker, is to pay attention to the changes that are taking place. \n\nRight now, you have to stay current, you have to stay open, you have to stay nimble. I mean there are technological changes happening where every day something is different. \n\nThe marketplace is changing. For example, back in the day when I started out and I was doing television, people were saying, \"Why are you doing TV?\" It was bringing down my brand. Now, people say, \"Oh my God, you were in TV early.\" \n\nYou just have to keep mindful of what's going on and move with it. Move with the times, push forward." , sourceName: "The Hollywood Reporter: Producers Roundtable | Close Up", sourceURL: "https://www.youtube.com/watch?v=0ALe_MuIKv0", sponsorLogo: "", sponsorURL: "")


//8
let filmAdvice32 = Tip(header: "Quote", title: "The most honest form of filmmaking is to make a film for yourself.", body: "- Peter Jackson" , sourceName: "Film Crux", sourceURL: "https://www.filmcrux.com/blog/best-filmmaking-quotes", sponsorLogo: "", sponsorURL: "")

//9
let filmAdvice33 = Tip(header: "Quote", title: "All good ideas start out as bad ideas, that's why it takes so long.", body: "- Steven Spielberg" , sourceName: "Film Crux", sourceURL: "https://www.filmcrux.com/blog/best-filmmaking-quotes", sponsorLogo: "", sponsorURL: "")

//10
let filmAdvice34 = Tip(header: "Quote", title: "If it's a good movie, the sound could go off and the audience would still have a pretty clear idea of what was going on.", body: "- Alfred Hitchcock" , sourceName: "Film Crux", sourceURL: "https://www.filmcrux.com/blog/best-filmmaking-quotes", sponsorLogo: "", sponsorURL: "")

//11
let filmAdvice35 = Tip(header: "Quote", title: "To be a filmmaker, you have to lead. You have to be psychotic in your desire to do something. People always like the easy route. You have to push very hard to get something unusual, something different.", body: "- Danny Boyle" , sourceName: "Film Crux", sourceURL: "https://www.filmcrux.com/blog/best-filmmaking-quotes", sponsorLogo: "", sponsorURL: "")

//12
let filmAdvice36 = Tip(header: "Quote", title: "I steal from every movie ever made.", body: "- Quentin Tarantino" , sourceName: "Film Crux", sourceURL: "https://www.filmcrux.com/blog/best-filmmaking-quotes", sponsorLogo: "", sponsorURL: "")

//13
let filmAdvice37 = Tip(header: "Quote", title: "My three Ps: passion, patience, perseverance. You have to do this if you’ve got to be a filmmaker.", body: "– Robert Wise" , sourceName: "Filmmaker IQ", sourceURL: "https://filmmakeriq.com/2011/07/101-great-filmmaker-quotes/", sponsorLogo: "", sponsorURL: "")

let filmAdvice38 = Tip(header: "Filming Advice", title: "David O. Russell:", body: "When you make a movie, it's an opportunity for you to see life through a child's eye or like new for the first time. You're showing somebody a vision of life. \n\nThat's how it should feel with every shot. You should try to imagine it feeling that way." , sourceName: "The Craft of the Director: David O. Russell", sourceURL: "https://www.youtube.com/watch?v=_wDrklwynLo", sponsorLogo: "", sponsorURL: "")

let filmAdvice39 = Tip(header: "David O. Russell:", title: "Being creative, writing, or pre-production is a state of alternately feeling inspired and adrift. It's an uncomfortable place to be. And you just have to keep moving forward, like General Patton.", body: "Like without a doubt in your mind. You just gotta keep going and everybody will follow you, even if you're scared out of your mind." , sourceName: "The Craft of the Director: David O. Russell", sourceURL: "https://www.youtube.com/watch?v=_wDrklwynLo", sponsorLogo: "", sponsorURL: "")

let filmAdvice40 = Tip(header: "Quote", title: "To make a great film you need three things – the script, the script and the script.", body: "- Industrial Scripts" , sourceName: "Screen Writing Magazine", sourceURL: "https://industrialscripts.com/quotes-about-screenwriting/", sponsorLogo: "", sponsorURL: "")
//WEEK 3

//week 1
//0
let filmAdviceTipArray0 = [filmAdvice0, filmAdvice1, filmAdvice2, filmAdvice3]

//1
let filmAdviceTipArray1 = [filmAdvice4, filmAdvice5, filmAdvice6, filmAdvice7]

//2
let filmAdviceTipArray2 = [filmAdvice8, filmAdvice9, filmAdvice10, filmAdvice11]

//3
let filmAdviceTipArray3 = [filmAdvice12, filmAdvice13, filmAdvice14, filmAdvice15]

//4
let filmAdviceTipArray4 = [filmAdvice16, filmAdvice17, filmAdvice18, filmAdvice19]

//5
let filmAdviceTipArray5 = [filmAdvice20, filmAdvice21, filmAdvice22, filmAdvice23]

//6
let filmAdviceTipArray6 = [filmAdvice24, filmAdvice25, filmAdvice26, filmAdvice27]

//week 2
//7 (WIP 1)
let filmAdviceTipArray7 = [filmAdvice28, filmAdvice29, filmAdvice30, filmAdvice31]

//8
let filmAdviceTipArray8 = [filmAdvice32, filmAdvice13, filmAdvice14, filmAdvice15]

//9
let filmAdviceTipArray9 = [filmAdvice33, filmAdvice7, filmAdvice8, filmAdvice9]

//10
let filmAdviceTipArray10 = [filmAdvice34, filmAdvice2, filmAdvice3, filmAdvice4]

//11
let filmAdviceTipArray11 = [filmAdvice35, filmAdvice22, filmAdvice23, filmAdvice24]

//12
let filmAdviceTipArray12 = [filmAdvice36, filmAdvice7, filmAdvice8, filmAdvice9]

//13
let filmAdviceTipArray13 = [filmAdvice37, filmAdvice38, filmAdvice39, filmAdvice40]

let filmAdviceTipArrays = [filmAdviceTipArray0, filmAdviceTipArray1, filmAdviceTipArray2, filmAdviceTipArray3, filmAdviceTipArray4, filmAdviceTipArray5, filmAdviceTipArray6, filmAdviceTipArray7, filmAdviceTipArray8,
                           filmAdviceTipArray9, filmAdviceTipArray10, filmAdviceTipArray11, filmAdviceTipArray12, filmAdviceTipArray13]

let filmAdviceTopic = Topic(title: filmmakingTitle, icon: filmmakingIcon, tip: filmAdviceTipArrays.random())
let filmAdviceTopics = Topics(title: filmmakingTitle, icon: filmmakingIcon, topics: [filmAdviceTopic,])





//DAILY HABIT
let filmmakingHabit0 = Tip(header: "Write Every Day", title: "One of the pieces of advice to anyone who’s trying to write is if you can just write some every day, it’s a miracle and you’ll probably be unbelievably successful, because everyone I know, even the most successful writers, it’s so hard to get motivated.", body: "- Alan Yang (“Master of None”)" , sourceName: "IndieWire", sourceURL: "https://www.indiewire.com/2018/05/screenwriting-advice-paul-thomas-anderson-greta-gerwig-1201962599/", sponsorLogo: "", sponsorURL: "")
let filmmakingHabit1 = Tip(header: "Daily Routine", title: "I write for 3-4 hours straight and then I'm done. It typically takes me the first 1-2 hours to get going.", body: "I don't like to write once I get tired because then I just lose my focus and the writing is not as good. So, as soon as I start to lose my focus I stop. \n\nI don't wait for inspiration. I say inspiration is for amateurs. Amateurs get inspired and professionals just go do it. \n\n- Danny Strong \nCo-creator and executive producer of Empire and co-writer of The Hunger Games: Mockingjay" , sourceName: "YouTube: Film Courage", sourceURL: "https://www.youtube.com/watch?v=iSsBYP9atGE", sponsorLogo: "", sponsorURL: "")
let filmmakingHabit2 = Tip(header: "Writer Mindset: Stay Positive", title: "I find I get a lot of writing done because I don't make a big deal about it. It's not this dramatic thing for me. I try to be non-judgemental of my writing. I don't sit there and question it or think that I'm not talented. I just try to write. ", body: "I do my best to not beat myself up about it and if I don't like something I just change it. I just keep working on it and not turn it into some big melodramatic artist struggle. \n\n- Danny Strong \nCo-creator and executive producer of Empire and co-writer of The Hunger Games: Mockingjay" , sourceName: "YouTube: Film Courage", sourceURL: "https://www.youtube.com/watch?v=iSsBYP9atGE", sponsorLogo: "", sponsorURL: "")
let filmmakingHabit3 = Tip(header: "Quote", title: "The greatest part of a writer’s time is spent in reading, in order to write; a man will turn over half a library to make one book.", body: "- Samuel Johnson" , sourceName: "SCREENCRAFT", sourceURL: "https://screencraft.org/2013/01/23/50-great-screenwriting-quotes/", sponsorLogo: "", sponsorURL: "")
let filmmakingHabit4 = Tip(header: "Quote", title: "“A writer who waits for ideal conditions under which to work will die without putting a word on paper.”", body: "- E.B. White \nAuthor of Charlotte’s Web" , sourceName: "Medium: The Daily Routine of 20 Famous Writers", sourceURL: "https://medium.com/the-mission/the-daily-routine-of-20-famous-writers-and-how-you-can-use-them-to-succeed-1603f52fbb77", sponsorLogo: "", sponsorURL: "")
let filmmakingHabit5 = Tip(header: "Daily Habit", title: "Pulitzer prize winner, WH Auden rose shortly after 6:00 a.m., made himself coffee, and settled down to work", body: "His mind was sharpest from 7:00 until 11:30 a.m., and he rarely failed to take advantage of these hours. \n\nAuden usually resumed his work after lunch and continued into the late afternoon. \n\nAuden went to bed early, never later than 11:00 and, as he grew older, closer to 9:30." , sourceName: "Medium: The Daily Routine of 20 Famous Writers", sourceURL: "https://medium.com/the-mission/the-daily-routine-of-20-famous-writers-and-how-you-can-use-them-to-succeed-1603f52fbb77", sponsorLogo: "", sponsorURL: "")
let filmmakingHabit6 = Tip(header: "Daily Habit", title: "“I write every morning as soon after first light as possible. There is no one to disturb you.”", body: "- Ernest Hemingway \nNobel Prize winner and novelist" , sourceName: "Medium: The Daily Routine of 20 Famous Writers", sourceURL: "https://medium.com/the-mission/the-daily-routine-of-20-famous-writers-and-how-you-can-use-them-to-succeed-1603f52fbb77", sponsorLogo: "", sponsorURL: "")
let filmmakingHabit7 = Tip(header: "Quote", title: "Write. Rewrite. When not writing or rewriting, read. I know of no shortcuts.", body: "- Larry L. King" , sourceName: "SCREENCRAFT", sourceURL: "https://screencraft.org/2013/01/23/50-great-screenwriting-quotes/", sponsorLogo: "", sponsorURL: "")
let filmmakingHabit8 = Tip(header: "AM Routine", title: "Stephen King: “I try to get 6 pages a day”", body: "• 🍵 Pours a cup of water or tea. \n• 🪑 Sits down in the same chair every morning from 8:00 to 8:30. \n• 📝 Has his papers arranged in the same places. \n• 🎶 Plays music. \n\n“The cumulative purpose of doing these things the same way every day seems to be a way of saying to the mind, you’re going to be dreaming soon.”" , sourceName: "Medium: The Daily Routine of 20 Famous Writers", sourceURL: "https://medium.com/the-mission/the-daily-routine-of-20-famous-writers-and-how-you-can-use-them-to-succeed-1603f52fbb77", sponsorLogo: "", sponsorURL: "")
let filmmakingHabit9 = Tip(header: "Daily Habit", title: "Haruki Murakami: When I’m writing a novel, I get up at 4:00am and work for 5-6 hours. In the afternoon, I run 10 kilometers or swim 1,500 meters (or do both), then I read and listen to music. I go to bed at 9:00pm.", body: "I keep to this routine every day without variation. The repetition itself becomes the important thing; it’s a form of mesmerism. I mesmerize myself to reach a deeper state of mind. \n\nBut to hold to such repetition for so long — six months to a year — requires a good amount of mental and physical strength. In that sense, writing a long novel is like survival training. Physical strength is as necessary as artistic sensitivity." , sourceName: "Medium: The Daily Routine of 20 Famous Writers", sourceURL: "https://medium.com/the-mission/the-daily-routine-of-20-famous-writers-and-how-you-can-use-them-to-succeed-1603f52fbb77", sponsorLogo: "", sponsorURL: "")
let filmmakingHabit10 = Tip(header: "Daily Habit", title: "Susan Sontag's resolutions that helped her stick to her daily writing habits", body: "• 🌅 I will get up every morning no later than 8:00. \n\n•📓 I will write in the Notebook every day. \n\n•🙅‍♀️ I will tell people not to call in the morning, or not answer the phone. \n\n•📚 I will try to confine my reading to the evening. \n\n•✉️ I will answer letters once a week." , sourceName: "Medium: The Daily Routine of 20 Famous Writers", sourceURL: "https://medium.com/the-mission/the-daily-routine-of-20-famous-writers-and-how-you-can-use-them-to-succeed-1603f52fbb77", sponsorLogo: "", sponsorURL: "")
let filmmakingHabit11 = Tip(header: "Daily Habit", title: "Maya Angelou: “I get up at 5:30, and I’m ready to have coffee by 6:00, usually with my husband. He goes off to his work around 6:30, and I go off to mine.”", body: "I keep a hotel room in which I do my work — I try to get there around 7:00, and I work until 2:00 in the afternoon. \n\nIf the work is going badly, I stay until 12:30. If it’s going well, I’ll stay as long as it’s going well. \n\nWhen I come home at 2:00, I read over what I’ve written that day, and then try to put it out of my mind. \n\nMaybe after dinner I’ll read to my husband what I’ve written that day. He doesn’t comment, but hearing it aloud is good." , sourceName: "Medium: The Daily Routine of 20 Famous Writers", sourceURL: "https://medium.com/the-mission/the-daily-routine-of-20-famous-writers-and-how-you-can-use-them-to-succeed-1603f52fbb77", sponsorLogo: "", sponsorURL: "")
let filmmakingHabit12 = Tip(header: "Daily Habit", title: "Ray Bradbury: “The best hygiene for beginning writers or intermediate writers is to write a hell of a lot of short stories. If you can write one short story a week — it doesn’t matter what the quality is to start — but at least you’re practicing and at the end of the year you have 52 short stories and I defy you to write 52 bad ones. It can’t be done.”", body: "The problem with novels is that you can spend a whole year writing one and it might not turn out well because you haven’t learned to write yet. \n\nI’ll give you a programme to follow every night. Very simple programme. For the next thousand nights, before you go to bed every night, read one short story. That will take you 10 minutes, 15 minutes…for the next 1,000 nights." , sourceName: "Medium: The Daily Routine of 20 Famous Writers", sourceURL: "https://medium.com/the-mission/the-daily-routine-of-20-famous-writers-and-how-you-can-use-them-to-succeed-1603f52fbb77", sponsorLogo: "", sponsorURL: "")

let filmmakingHabit13 = Tip(header: "Daily Habit", title: "Ray Bradbury: “The best hygiene for beginning writers or intermediate writers is to write a hell of a lot of short stories. If you can write one short story a week — it doesn’t matter what the quality is to start — but at least you’re practicing and at the end of the year you have 52 short stories and I defy you to write 52 bad ones. It can’t be done.”", body: "The problem with novels is that you can spend a whole year writing one and it might not turn out well because you haven’t learned to write yet. \n\nI’ll give you a programme to follow every night. Very simple programme. For the next thousand nights, before you go to bed every night, read one short story. That will take you ten minutes, fifteen minutes…for the next 1,000 nights." , sourceName: "Medium: The Daily Routine of 20 Famous Writers", sourceURL: "https://medium.com/the-mission/the-daily-routine-of-20-famous-writers-and-how-you-can-use-them-to-succeed-1603f52fbb77", sponsorLogo: "", sponsorURL: "")

let filmmakingHabit14 = Tip(header: "Daily Habit", title: "Nobel prize winner and writer Alice Munro: “I write every morning, seven days a week. I write starting about eight o’clock and finish around eleve.”", body: "I am so compulsive that I have a quota of pages. If I know I’m going to miss a day, I have to make it up. \n\nYou protect yourself by thinking if you have all these rituals and routines then nothing can get you." , sourceName: "Medium: The Daily Routine of 20 Famous Writers", sourceURL: "https://medium.com/the-mission/the-daily-routine-of-20-famous-writers-and-how-you-can-use-them-to-succeed-1603f52fbb77", sponsorLogo: "", sponsorURL: "")
let filmmakingHabit15 = Tip(header: "Daily Habit", title: "Writer and painter, Henry Miller: “1. Work on one thing at a time until finished.”", body: "2. Don’t be nervous. Work calmly, joyously, recklessly on whatever is in hand. \n\n3. Work according to Program and not according to mood. Stop at the appointed time! \n\n4. Forget the books you want to write. Think only of the book you are writing. \n\n5. Write first and always. Painting, music, friends, cinema, all these come afterwards. \n\n6. Keep human! See people, go places, drink if you feel like it." , sourceName: "Medium: The Daily Routine of 20 Famous Writers", sourceURL: "https://medium.com/the-mission/the-daily-routine-of-20-famous-writers-and-how-you-can-use-them-to-succeed-1603f52fbb77", sponsorLogo: "", sponsorURL: "")

let filmmakingHabit16 = Tip(header: "Daily Habit", title: "Leo Tolstoy:“I must write each day without fail, not so much for the success of the work, as in order not to get out of my routine.”", body: "Tolstoy worked in isolation — no one was allowed to enter his study, and the doors to the adjoining rooms were locked to ensure that he would not be interrupted." , sourceName: "Medium: The Daily Routine of 20 Famous Writers", sourceURL: "https://medium.com/the-mission/the-daily-routine-of-20-famous-writers-and-how-you-can-use-them-to-succeed-1603f52fbb77", sponsorLogo: "", sponsorURL: "")
let filmmakingHabit17 = Tip(header: "Daily Habit", title: "Paul Thomas Anderson: Find a time to write. Take it seriously and get the routine down.", body: "Having a daily writing routine helps you be more productive. \n\nFor PTA, he likes to get up early to write." , sourceName: "No Film School", sourceURL: "https://nofilmschool.com/paul-thomas-anderson-writing-tips", sponsorLogo: "", sponsorURL: "")
let filmmakingHabit18 = Tip(header: "Daily Routine", title: "Elite performers practice roughly the same amount every day, including weekends", body: "Most successful people average 10 years of practice before becoming great. Even child-prodigies generally work at it for a decade or more. \n\nTiger Woods had been working on his golf game for 15 years when he became the youngest-ever winner of the U.S. Amateur Championship." , sourceName: "UC Berkeley", sourceURL: "https://greatergood.berkeley.edu/article/item/a_new_theory_of_elite_performance", sponsorLogo: "", sponsorURL: "")

let filmmakingHabitTipArray0 = [filmmakingHabit0, filmmakingHabit1, filmmakingHabit2, filmmakingHabit3]
let filmmakingHabitTipArray1 = [filmmakingHabit4, filmmakingHabit5, filmmakingHabit6, filmmakingHabit7]
let filmmakingHabitTipArray2 = [filmmakingHabit8, filmmakingHabit9, filmmakingHabit10, filmmakingHabit11]
let filmmakingHabitTipArray3 = [filmmakingHabit12, filmmakingHabit13, filmmakingHabit14, filmmakingHabit15]
let filmmakingHabitTipArray4 = [filmmakingHabit16, filmmakingHabit17, filmmakingHabit18, filmmakingHabit3]

let filmmakingHabitTipArrays = [filmmakingHabitTipArray0, filmmakingHabitTipArray1, filmmakingHabitTipArray2, filmmakingHabitTipArray3, filmmakingHabitTipArray4]

let filmmakingHabitTitle = "Filmmaker Habits"
let filmmakingHabitIcon = Constants.Icon.routine

let filmmakingHabitTopic = Topic(title: filmmakingHabitTitle, icon: filmmakingHabitIcon, tip: filmmakingHabitTipArrays.random())
let filmmakingHabitTopics = Topics(title: filmmakingHabitTitle, icon: filmmakingHabitIcon, topics: [filmmakingHabitTopic,])




//MARK: Pre-Production
//WEEK 1
//1
//WRITING/PLANNING



//SETS & LOCATIONS
let setsLocation0 = Tip(header: "Sets vs. Real Locations", title: "Guilermo del Toro:", body: "\"In Hellboy 2, we built the entire New York street. We built it in Budapest. I hate shooting in real locations. I hate shooting in daylight. I really like complete control.\"" , sourceName: "The Craft of the Director: Guillermo del Toro, Directors Guild of America", sourceURL: "https://www.youtube.com/watch?v=FjR5bT5YYU0", sponsorLogo: "", sponsorURL: "")
let setsLocation1 = Tip(header: "Set and Location Scouting", title: "Guilermo del Toro: ", body: "The first time I'm building a set or the first time I'm visiting a location, I should already know where the camera should be 3 months later [when production begins]. \n\nBecause when you're building a set, you need to say well this is the ramp for the techno to go in and I need this wall to move for the techno to be able to arm to the left and I can extend this much, etc." , sourceName: "The Craft of the Director: Guillermo del Toro, Directors Guild of America", sourceURL: "https://www.youtube.com/watch?v=FjR5bT5YYU0", sponsorLogo: "", sponsorURL: "")
let setsLocation2 = Tip(header: "Set Design", title: "Guilermo del Toro:", body: "Every set that I design is designed to fit in 185 which is the format that I prefer. \n\nIf I build a wall and I don’t photograph it I’m not doing my job right. For example, I’ll tell my set designer we need to move the entire set 20 feet deeper into the stage so that it all fits in my lens." , sourceName: "The Craft of the Director: Guillermo del Toro, Directors Guild of America", sourceURL: "https://www.youtube.com/watch?v=FjR5bT5YYU0", sponsorLogo: "", sponsorURL: "")
let setsLocation3 = Tip(header: "Location Scouting", title: "Francis Ford Coppola:", body: "One of the biggest costs of making a film when you fly to a far away location is the cost of plane tickets, hotels, and housing the families of the people on your crew." , sourceName: "Francis Ford Coppola Explained His Current \"Film Student\" Mentality at Tribeca 2016", sourceURL: "https://www.youtube.com/watch?v=WdISYjTmqek", sponsorLogo: "", sponsorURL: "")
let setsLocation4 = Tip(header: "Location Scouting", title: "David O. Russell:", body: "Search in person and online." , sourceName: "The Craft of the Director: David O. Russell", sourceURL: "https://www.youtube.com/watch?v=_wDrklwynLo", sponsorLogo: "", sponsorURL: "")

let setsLocationTipArray0 = [setsLocation0, setsLocation1, setsLocation2, setsLocation3]
let setsLocationTipArray1 = [setsLocation4, setsLocation3, setsLocation2, setsLocation1]
let setLocationTitle = "Set & Location"
let setLocationIcon = Constants.Icon.setLocation
let setsLocationTipArrays = [setsLocationTipArray0, setsLocationTipArray1]
let setsLocationTopic = Topic(title: setLocationTitle, icon: setLocationIcon, tip: setsLocationTipArrays.random())
let setsLocationTopics = Topics(title: setLocationTitle, icon: setLocationIcon, topics: [setsLocationTopic,])



//SET DESIGN
let setDesign0 = Tip(header: "Costume Design", title: "Guilermo del Toro:", body: "Wardrobe is character. It's the way we present ourselves to the rest of the world. \n\nThe way you design a character's wardrobe should not be a visual cue only. It should should also be articulating what the character is." , sourceName: "The Craft of the Director: Guillermo del Toro, Directors Guild of America", sourceURL: "https://www.youtube.com/watch?v=FjR5bT5YYU0", sponsorLogo: "", sponsorURL: "")
let setDesign1 = Tip(header: "David O. Russell:", title: "The Production Designer's First Meeting With The Director", body: "The production designer should bring ideas to the meeting, bring a book the contains ideas, and demonstrate to the director that they've read the script in advance." , sourceName: "The Craft of the Director: David O. Russell", sourceURL: "https://www.youtube.com/watch?v=_wDrklwynLo", sponsorLogo: "", sponsorURL: "")
let setDesign2 = Tip(header: "Pre-Production Design", title: "Guilermo del Toro:", body: "I start design before the production designer shows up. I start with 4-6 designers and myself (the director), and we start designing elaborate ideas. \n\nSo when the production designer and wardrobe design come in, we already have 40-60 drawings of sets, characters, and a color palette. \n\nI do this because I want them to know that there's thought before they come in that unifies everything. Because people think in terms of different disciplines. But cinematography, production design, production wardrobe, make-up, hair are a single thing. They need to articulate in harmony. \n\nWhen people are saying great cinematography, they are saying great production design. When they say great production design, they are saying great wardrobe. Because everything is of a piece." , sourceName: "The Craft of the Director: Guillermo del Toro, Directors Guild of America", sourceURL: "https://www.youtube.com/watch?v=FjR5bT5YYU0", sponsorLogo: "", sponsorURL: "")
let setDesign3 = Tip(header: "Set Design", title: "Guilermo del Toro:", body: "\"The floor of the set needs to be darker than the rest of the set because it anchors the set. This is something I'm absolutely sure of. \n\nIf the floor is light, the whole set goes down in visual value.\"" , sourceName: "The Craft of the Director: Guillermo del Toro, Directors Guild of America", sourceURL: "https://www.youtube.com/watch?v=FjR5bT5YYU0", sponsorLogo: "", sponsorURL: "")

let setDesignTipArray0 = [setDesign0, setDesign1, setDesign2, setDesign3]
let setDesignTipArrays = [setDesignTipArray0]
let setDesignTitle = "Design"
let setDesignIcon = Constants.Icon.setDesign
let setDesignTopic = Topic(title: setDesignTitle, icon: setDesignIcon, tip: setDesignTipArrays.random())
let setDesignTopics = Topics(title: setDesignTitle, icon: setDesignIcon, topics: [setDesignTopic,])



//CASTING
let casting0 = Tip(header: "Casting Child Actors", title: "Guilermo del Toro: ", body: "With children, I cast their eyes. Are they seeing me? Do they make eye contact? \n\nI ask them to look around. If their eyes are curious and present then I cast them. \n\nThe ratio for finding a good child actor is 1 out of 100." , sourceName: "The Craft of the Director: Guillermo del Toro, Directors Guild of America", sourceURL: "https://www.youtube.com/watch?v=FjR5bT5YYU0", sponsorLogo: "", sponsorURL: "")
let casting1 = Tip(header: "Casting Actors", title: "David O. Russell:", body: "For smaller roles, I read with them on Skype or Facetime. \n\nI'll ask them to read multiple times. I'll see how they take direction, if they're going to take direction or not. I'll see if they can do it 4-5 ways. \n\nI'll see if they have the rhythm that I have in my head for the character or if they have something more exciting." , sourceName: "The Craft of the Director: David O. Russell", sourceURL: "https://www.youtube.com/watch?v=_wDrklwynLo", sponsorLogo: "", sponsorURL: "")
let casting2 = Tip(header: "Casting Actors", title: "Orson Welles:", body: "I think that a performance, when it deserves to be great or important, is always entirely made-up of the actor themself. And entirely achieved by what they have left in the dressing room before they came out in front of the camera. \n\nIn other words, it's what you take away from yourself, to reveal the truth of what you're doing that makes a performance. And if an actor doesn't have the ability to do that then I only use them if they have a good face for a few lines. \n\nI think, essentially, there is no such thing as becoming another character by putting on a lot of make-up. You may need to put the make-up on, but what you're really doing is undressing yourself. And even tearing yourself apart. And presenting to the public, that part of you, which corresponds to what you are playing. \n\nThere is a villain in each of us, a murderer in each of us, a fascist in each of us, and a saint in each of us. And the actor is the man or woman who can eliminate from themself those things that will interfere with that truth. \n\nSo, I look for those kinds of people. And I look for the right face. Because, after all, the camera makes pictures and it likes people and dislikes people. And you have to guess which ones it will like and which ones it won't." , sourceName: "Filming 'The Trial' [1981] (Unedited) - Rare Orson Welles Documentary", sourceURL: "https://www.youtube.com/watch?v=RbUe-bM6bXg", sponsorLogo: "", sponsorURL: "")
let casting3 = Tip(header: "Casting Child Actors", title: "David O. Russell:", body: "Always cast identical twins or triplets so you can get more hours. \n\nAnd it's good to have your adult actors test with the child actors to see if they will work well together." , sourceName: "The Craft of the Director: David O. Russell", sourceURL: "https://www.youtube.com/watch?v=_wDrklwynLo", sponsorLogo: "", sponsorURL: "")

let castingTipArray0 = [casting0, casting1, casting2, casting3]

let castingTipArrays = [castingTipArray0]
let castingTitle = "Casting"
let castingIcon = Constants.Icon.casting
let castingTopic = Topic(title: castingTitle, icon: castingIcon, tip: castingTipArrays.random())
let castingTopics = Topics(title: castingTitle, icon: castingIcon, topics: [castingTopic,])


//REHEARSING
let filmPre17 = Tip(header: "Rehearsing With Actors", title: "David O. Russell:", body: "I rehearse a lot with actors, one-on-one. And then we rehearse in actor pairs. There's a lot of talk about what their characters are like and their building their characters with me, and they're building their wardrobe with me. \n\nI want them to participate with the wardrobe selection. I don't want there to be a selection that they don't like, or love. And by that time they've sort of become the character." , sourceName: "The Craft of the Director: David O. Russell", sourceURL: "https://www.youtube.com/watch?v=_wDrklwynLo", sponsorLogo: "", sponsorURL: "")



//PITCHING
let pitching0 = Tip(header: "Pitching Your Film", title: "David O. Russell:", body: "I go into a studio, and not only tell them what they're getting, but I'm also going to act out the trailer for them. \n\nI do that for them and they feel a little better. I'm also trying to make a trailer that's exciting which helps me as a storyteller. It helps me to imagine a trailer. \n\nWhat would an exciting trailer be like when I'm in a movie theater and I see a trailer and I say, \"Oh shit that looks exciting.\" What is that? I want to make that!" , sourceName: "The Craft of the Director: David O. Russell", sourceURL: "https://www.youtube.com/watch?v=_wDrklwynLo", sponsorLogo: "", sponsorURL: "")
let pitching1 = Tip(header: "Pitching Your Film", title: "David O. Russell:", body: "I tell my story idea to anybody who I trust. You have to find good listeners. \n\nI learned 25 years ago that there are listeners who will try to crush your ideas. You need to find very safe people." , sourceName: "The Craft of the Director: David O. Russell", sourceURL: "https://www.youtube.com/watch?v=_wDrklwynLo", sponsorLogo: "", sponsorURL: "")
let pitching2 = Tip(header: "Advice", title: "David O. Russell: Pitch the script as you write", body: "I find it useful to talk to actors about the story I’m writing. It helps me get the story out of my head. \n\nI tell them the story. It's like I'm auditioning for them." , sourceName: "The Craft of the Director: David O. Russell", sourceURL: "https://www.youtube.com/watch?v=_wDrklwynLo", sponsorLogo: "", sponsorURL: "")

let pitchingTipArray0 = [pitching0, pitching1, pitching2,]

let pitchingTipArrays = [pitchingTipArray0]
let pitchingTitle = "Pitching"
let pitchingIcon = Constants.Icon.pitching
let pitchingTopic = Topic(title: pitchingTitle, icon: pitchingIcon, tip: pitchingTipArrays.random())
let pitchingTopics = Topics(title: pitchingTitle, icon: pitchingIcon, topics: [pitchingTopic,])



//HIRING CREW
let hiringCrew0 = Tip(header: "Picking A Cinematographer", title: "David O. Russell: ", body: "I really learned how to pick cinematographers after my first 3 films. \n\nI learned that I had to pick somebody that when I'm in a room with them alone it felt like we were really listening to each other and getting along great. \n\nIt's good if they're an artist too but that they will still take your direction. \n\nThey should be excited about cinema and will argue for a shot. But if they are shut down 7/10 times they're not going to stop their enthusiasm for the film and for pitching new ideas." , sourceName: "The Craft of the Director: David O. Russell", sourceURL: "https://www.youtube.com/watch?v=_wDrklwynLo", sponsorLogo: "", sponsorURL: "")

//4
let hiringCrewTipArray0 = [hiringCrew0, ]

let hiringCrewTipArrays = [hiringCrewTipArray0]
let hiringCrewTitle = "Hiring Crew"
let hiringCrewIcon = Constants.Icon.hiringCrew
let hiringCrewTopic = Topic(title: hiringCrewTitle, icon: hiringCrewIcon, tip: hiringCrewTipArrays.random())
let hiringCrewTopics = Topics(title: hiringCrewTitle, icon: hiringCrewIcon, topics: [hiringCrewTopic,])




//STORYBOARDING
let filmPre16 = Tip(header: "Storyboarding", title: "David O. Russell:", body: "I storyboard as much as I can in pre-production. It’s very helpful. \n\nI've worked with a storyboard illustrator and I've also done them myself. I've done it on computers and with notebooks." , sourceName: "The Craft of the Director: David O. Russell", sourceURL: "https://www.youtube.com/watch?v=_wDrklwynLo", sponsorLogo: "", sponsorURL: "")







//WEEK 1
////0
//let filmPreTipArray0 = [filmPre0, filmPre1, filmPre2, filmPre3]
//let filmPreTopic0 = Topic(title: filmmakingTitle, icon: filmmakingIcon, tip: filmPreTipArray0)
//
////1
//let filmPreTipArray1 = [filmPre4, filmPre5, filmPre6, filmPre7]
//let filmPreTopic1 = Topic(title: filmmakingTitle, icon: filmmakingIcon, tip: filmPreTipArray1)
//
////2
//let filmPreTipArray2 = [filmPre8, filmPre9, filmPre10, filmPre11]
//let filmPreTopic2 = Topic(title: filmmakingTitle, icon: filmmakingIcon, tip: filmPreTipArray2)
//
////3
//let filmPreTipArray3 = [filmPre12, filmPre13, filmPre14, filmPre15]
//let filmPreTopic3 = Topic(title: filmmakingTitle, icon: filmmakingIcon, tip: filmPreTipArray3)
//
////4
//let filmPreTipArray4 = [filmPre16, filmPre17, filmPre18, filmPre19]
//let filmPreTopic4 = Topic(title: filmmakingTitle, icon: filmmakingIcon, tip: filmPreTipArray4)
//
////5 WIP
//let filmPreTipArray5 = [filmPre7, filmPre6, filmPre5, filmPre4]
//let filmPreTopic5 = Topic(title: filmmakingTitle, icon: filmmakingIcon, tip: filmPreTipArray5)
//
////6 WIP
//let filmPreTipArray6 = [filmPre11, filmPre10, filmPre9, filmPre8]
//let filmPreTopic6 = Topic(title: filmmakingTitle, icon: filmmakingIcon, tip: filmPreTipArray6)
//
////7 WIP
//let filmPreTipArray7 = [filmPre14, filmPre18, filmPre17, filmPre16]
//let filmPreTopic7 = Topic(title: filmmakingTitle, icon: filmmakingIcon, tip: filmPreTipArray7)
//
//let filmPreTipArrays = [filmPreTipArray0, filmPreTipArray1, filmPreTipArray2, filmPreTipArray3, filmPreTipArray4, filmPreTipArray5, filmPreTipArray6, filmPreTipArray7]
//
//let filmPreTopic = Topic(title: filmmakingTitle, icon: filmmakingIcon, tip: filmPreTipArrays.random())
//let filmPreTopics = Topics(title: filmmakingTitle, icon: filmmakingIcon, topics: [filmPreTopic,])

//MARK: Production
//WEEK 1
//0

//DIRECTING
let directing0 = Tip(header: "Directing On Set", title: "Quentin Tarantino:", body: "One of the best things a director can do for an actor is sit right by the camera. It helps you get the best performance from your actors. \n\nIf you watch the acting right by the camera, right in front of the actors, it’s as if they are acting just, and solely, and utterly only for you." , sourceName: "IndieWire", sourceURL: "https://www.indiewire.com/gallery/directing-tips-filmmakers-christopher-nolan-wes-anderson-quentin-tarantino-advice/moncler-a-tribute-to-new-york-city-new-york-usa-16-nov-2016-2/", sponsorLogo: "", sponsorURL: "")
let directing1 = Tip(header: "Directing", title: "Francis Ford Coppola:", body: "In film, you always have problems and part of your job as a director is to see how you can make the problem be an advantage." , sourceName: "Apocalypse Now - 2001 Cannes Film Festival Francis Ford Coppola", sourceURL: "https://www.youtube.com/watch?v=4JxK6wLHbPs", sponsorLogo: "", sponsorURL: "")
let directing2 = Tip(header: "Production", title: "Steven Spielberg:", body: "I've gotten some of my best ideas from assistant directors." , sourceName: "Bridge of Spies DGA Q&A with Steven Spielberg and Martin Scorsese", sourceURL: "https://www.youtube.com/watch?v=ufRw6bT7CL0", sponsorLogo: "", sponsorURL: "")

let directingTipArray0 = [directing0, directing1, directing2, ]

let directingTipArrays = [directingTipArray0]
let directingTitle = "Directing"
let directingIcon = Constants.Icon.directing
let directingTopic = Topic(title: directingTitle, icon: directingIcon, tip: directingTipArrays.random())
let directingTopics = Topics(title: directingTitle, icon: directingIcon, topics: [directingTopic,])



//FILMING
let filming0 = Tip(header: "Depth of Field", title: "Orson Welles:", body: "You never get the same depth of field in color as you do in black and white. Secondly, a lot of the depth of field in Citizen Kane was fake. It was split-screen. Whenever the shot become impossible we used split-screen." , sourceName: "Filming 'The Trial' [1981] (Unedited) - Rare Orson Welles Documentary", sourceURL: "https://www.youtube.com/watch?v=RbUe-bM6bXg", sponsorLogo: "", sponsorURL: "")
let filming1 = Tip(header: "Shooting a Scene", title: "Guilermo del Toro:", body: "I do this counter movement with all my movies which you discover the space with a character. I think it's great to discover the space first with the character. \n\nFor example, in Chinatown, everytime you enter a new space you have Jack Nicholson in the foreground. You're discovering the space with the character." , sourceName: "The Craft of the Director: Guillermo del Toro, Directors Guild of America", sourceURL: "https://www.youtube.com/watch?v=FjR5bT5YYU0", sponsorLogo: "", sponsorURL: "")
let filming2 = Tip(header: "Production", title: "Guilermo del Toro:", body: "I always like to have something going on in the background and something going on in the foreground that tells you something about the scene." , sourceName: "The Craft of the Director: Guillermo del Toro, Directors Guild of America", sourceURL: "https://www.youtube.com/watch?v=FjR5bT5YYU0", sponsorLogo: "", sponsorURL: "")
let filming3 = Tip(header: "Single or Multiple Cameras", title: "Guilermo del Toro:", body: "I use multiple cameras only when it's necessary for the actor or the action coverage. \n\nFor actors who like to live in the moment, it's helpful to have multiple cameras. \n\nFor action coverage, if it's an expensive shot to re-shoot or a complicated physical stunt, it's helpful to have multiple cameras." , sourceName: "The Craft of the Director: Guillermo del Toro, Directors Guild of America", sourceURL: "https://www.youtube.com/watch?v=FjR5bT5YYU0", sponsorLogo: "", sponsorURL: "")
let filming4 = Tip(header: "Filming Table Scenes", title: "Guilermo del Toro:", body: "Table scenes are the scenes that I dread. I would only cover a dialogue scene around a table because you have to. Whatever the actors are eating, the next day the food is going to smell." , sourceName: "The Craft of the Director: Guillermo del Toro, Directors Guild of America", sourceURL: "https://www.youtube.com/watch?v=FjR5bT5YYU0", sponsorLogo: "", sponsorURL: "")
let filming5 = Tip(header: "Day 1 of Filming", title: "David O. Russell:", body: "I always like to shoot with a small unit and the main actors the day before the official day of shooting. Because you just feel good. You feel loose. \n\nYou don't have the pressure of the whole crew, you just feel like you're doing something that really cool and passionate. And on day 1, you're ahead of the schedule." , sourceName: "The Craft of the Director: David O. Russell", sourceURL: "https://www.youtube.com/watch?v=_wDrklwynLo", sponsorLogo: "", sponsorURL: "")
let filming6 = Tip(header: "Day 1 of Filming", title: "David O. Russell:", body: "I always like to shoot with a small unit and the main actors the day before the official day of shooting. Because you just feel good. You feel loose. \n\nYou don't have the pressure of the whole crew, you just feel like you're doing something really cool. And on day 1, you're ahead of the schedule." , sourceName: "The Craft of the Director: David O. Russell", sourceURL: "https://www.youtube.com/watch?v=_wDrklwynLo", sponsorLogo: "", sponsorURL: "")
let filming7 = Tip(header: "Before Filmming Begins", title: "David O. Russell:", body: "Before the day begins, I like to gather the whole team in a small, closed space (e.g. van or small room). It's very important that it's in a closed space because closed spaces are very powerful. All of the power is right there and your attention is not distracted. \n\nI’ll go through the entire day with all of the keys, and sometimes the actors are there too. I'll go through the whole day. I'll tell everyone what I want to do with each thing on the schedule. \n\nAnd then everybody feels like they have their mission. They heard it from me and we’re united. Their not off doing their department's work, that's broken off from the other departments/director. They all feel connected from the same heart. We're all in it together." , sourceName: "The Craft of the Director: David O. Russell", sourceURL: "https://www.youtube.com/watch?v=_wDrklwynLo", sponsorLogo: "", sponsorURL: "")
let filming8 = Tip(header: "Before Filmming Begins", title: "David O. Russell:", body: "Before the day begins, I like to rehearse the scene intimately with the actors in a little room on set. We'll go to a little room because they're always lighting the room were going to shoot in. \n\nI say, \"This is the movie. It's not out there. It’s right here. So we should feel it right here.\" \n\nAnd then we start to ease in that room. We rehearse, we rehearse, and we rehearse, and everybody's sweating because it's 11PM and we haven't shot any of the film and the studio is calling and they're freaking out. \n\nBut, once we go, we go. It just takes off like a rocket. So you have to have faith in that rehearsal to do it and then walk onto the set with confidence." , sourceName: "The Craft of the Director: David O. Russell", sourceURL: "https://www.youtube.com/watch?v=_wDrklwynLo", sponsorLogo: "", sponsorURL: "")
let filming9 = Tip(header: "Long Takes", title: "Orson Welles:", body: "A long take, for me, depends on 2 things: a very good technical crew and very good actors. I believe that it's an enormous help to a cast, if they're good enough, to play the rhythm of an entire sequence rather than leaving it to the director entirely. Because actors keep showing us things we never suspected. Any good directors are constantly astonished by something their cast is giving them." , sourceName: "Filming 'The Trial' [1981] (Unedited) - Rare Orson Welles Documentary", sourceURL: "https://www.youtube.com/watch?v=RbUe-bM6bXg", sponsorLogo: "", sponsorURL: "")
let filming10 = Tip(header: "Playing Music On Set", title: "David O. Russell:", body: "Sometimes, I play a beautiful music in between sets-ups that's inspiring and related to the story. And I will play music that is in the scene as they walk to scene, so the actors have a feeling of rhythm. \n\nRhythm is everything. Rhythm is character. Dustin Hoffman taught me that that is a legitimate fashion of direction. The actors can get into character just as easily through rhythm. \n\nSometimes I'll direct the actors to have a rhythm in their head to let them know what energy level their character has in the scene." , sourceName: "The Craft of the Director: David O. Russell", sourceURL: "https://www.youtube.com/watch?v=_wDrklwynLo", sponsorLogo: "", sponsorURL: "")
let filming11 = Tip(header: "Producers On Set", title: "David O. Russell:", body: "I love producers who work on set. I want them to help make stuff happen and solve problems. And to sometimes help with creative input." , sourceName: "The Craft of the Director: David O. Russell", sourceURL: "https://www.youtube.com/watch?v=_wDrklwynLo", sponsorLogo: "", sponsorURL: "")
let filming12 = Tip(header: "Ban Phones on Set 📵", title: "Directors Quentin Tarantino, Noah Baumbach, and Greta Gerwig ban phones on set", body: "Tarantino has a booth that the crew must use to check in their phones. \n\nGerwig said, \"I like everyone feeling like they're there all together at once in this special bubble. If you're an actor and you're baring your soul, I don't want you to have to look over and see a PA on a cellphone.\"" , sourceName: "The Hollywood Reporter", sourceURL: "https://www.hollywoodreporter.com/news/why-quentin-tarantino-more-directors-are-banning-cell-phones-set-1265308", sponsorLogo: "", sponsorURL: "")
let filming13 = Tip(header: "Filming On Set", title: "David O. Russell:", body: "Don't get stuck on one idea. Cover yourself with other ideas." , sourceName: "The Craft of the Director: David O. Russell", sourceURL: "https://www.youtube.com/watch?v=_wDrklwynLo", sponsorLogo: "", sponsorURL: "")
let filming14 = Tip(header: "Camera Coverage", title: "Orson Welles:", body: "Orson was asked about his coverage of scenes, specifically for the long takes he used in Citizen Kane and The Trial. Orson replied, \"I cover nothing. I never cover. I was taught that by Jack Ford.\" \"When Ford finished a movie, he never cut it. He had nothing to do with the editing. He never saw a rough cut. And the way he would protect himself was to give them nothing to go to. So, if he wanted the girl to say, \"Yes, Duke.\" That was all she got to say. She didn't get to listen to all the rest of the scene or say the dialogue that he expected her not to say. That's all that he shot. And he told me to do it and I followed his instructions.\"" , sourceName: "Filming 'The Trial' [1981] (Unedited) - Rare Orson Welles Documentary", sourceURL: "https://www.youtube.com/watch?v=RbUe-bM6bXg", sponsorLogo: "", sponsorURL: "")
let filming15 = Tip(header: "Quote", title: "Before you say cut, wait 5 seconds", body: "- Wim Wenders \n\nOscar-nominated German filmmaker" , sourceName: "Film Crux", sourceURL: "https://www.filmcrux.com/blog/best-filmmaking-quotes", sponsorLogo: "", sponsorURL: "")
let filming16 = Tip(header: "Opening Shots", title: "Make sure the first three shots in your film hook your audience", body: "Sven Pape, creator of This Guy Edits explains: \n\nThe opening shot of a great film is often noteworthy. It's a kind of strong choice that lets you know you're in good hands. \n\nSteven Soderbergh talks about the 3-shot rule, what he pays attention to in someone else's work. He says: \"After the first three shots, I know whether this person knows what they’re doing or they don’t.\"" , sourceName: "This Guy Edits (YouTube)", sourceURL: "https://www.youtube.com/watch?v=Pr-YtQlSU_I", sponsorLogo: "", sponsorURL: "")
let filming17 = Tip(header: "Filming Comedies", title: "The worst thing you can do in comedy is only shoot the script because I can almost guarantee all the stuff you think is going to be hilarious, is not going to be funny. \n\nI cross shoot it so that I always have a camera on both of us. If an improv happens, I’m not missing one side of it and you just start throwing curve balls. ", body: "- Paul Feig (“Ghostbusters”)" , sourceName: "IndieWire", sourceURL: "https://www.indiewire.com/2018/05/screenwriting-advice-paul-thomas-anderson-greta-gerwig-1201962599/", sponsorLogo: "", sponsorURL: "")
let filming18 = Tip(header: "Guilermo del Toro:", title: "Camera Shots and Costume Design", body: "When you're in a wide-shot, the set frames the characters and the wardrobe is a compositional element. The wardrobe should display a certain set of information (color and shape). \n\nWhen you're in a close-up, the wardrobe is the set. So you build the wardrobe to have different values. The wardrobe should display a different set of information (texture, color, sheen, and detailing)." , sourceName: "The Craft of the Director: Guillermo del Toro, Directors Guild of America", sourceURL: "https://www.youtube.com/watch?v=FjR5bT5YYU0", sponsorLogo: "", sponsorURL: "")

let filmingTipArray0 = [filming0, filming1, filming2, filming3]
let filmingTipArray1 = [filming4, filming5, filming6, filming7]
let filmingTipArray2 = [filming8, filming9, filming10, filming11]
let filmingTipArray3 = [filming12, filming13, filming14, filming15]
let filmingTipArray4 = [filming16, filming17, filming18, filming7]

let filmingTipArrays = [filmingTipArray0, filmingTipArray1, filmingTipArray2, filmingTipArray3, filmingTipArray4]
let filmingTitle = "Filming"
let filmingTopic = Topic(title: filmingTitle, icon: filmmakingIcon, tip: filmingTipArrays.random())
let filmingTopics = Topics(title: filmingTitle, icon: filmmakingIcon, topics: [filmingTopic,])






//DIRECTING ACTORS
let directingActors0 = Tip(header: "Directing Child Actors", title: "Guilermo del Toro:", body: "Never talk to a kid actor like a kid. Talk to a kid actor like an actor. You don't condescend. \n\nTell them what you are looking for and this is what I need." , sourceName: "The Craft of the Director: Guillermo del Toro, Directors Guild of America", sourceURL: "https://www.youtube.com/watch?v=FjR5bT5YYU0", sponsorLogo: "", sponsorURL: "")
let directingActors1 = Tip(header: "Directing Child Actors", title: "Guilermo del Toro:", body: "For child actors only, the one thing I find useful is that I have them do breathing exercises to hyper and hypo oxygenate in order to get agitated or calm before shooting a scene." , sourceName: "The Craft of the Director: Guillermo del Toro, Directors Guild of America", sourceURL: "https://www.youtube.com/watch?v=FjR5bT5YYU0", sponsorLogo: "", sponsorURL: "")
let directingActors2 = Tip(header: "Directing Actors", title: "Guilermo del Toro:", body: "How to you adjust an actor in a scene? Be short and sweet, and always use a verb. Give them something to do. \n\nDo not talk to them about the history of the character or the psychology, \"Remember that your mother hit with you a hot poker when you were five. No.\" \n\nInstead, say, try it this way, look at her, don't look at her, wait for this line to turn around. Things that are practical and you have a reason for it." , sourceName: "The Craft of the Director: Guillermo del Toro, Directors Guild of America", sourceURL: "https://www.youtube.com/watch?v=FjR5bT5YYU0", sponsorLogo: "", sponsorURL: "")
let directingActors3 = Tip(header: "Directing Actors", title: "Guilermo del Toro:", body: "How to you adjust an actor in a scene? Be short and sweet. Always give them something to do. Do not talk to them about the history of the character or the psychology, \"Remember that your mother hit with you a hot poker when you were five. No.\"  \n\nInstead, say, try it this way, don't look at her, look at her, wait for this line to turn around. Things that are practical. And you have a reason for it." , sourceName: "The Craft of the Director: Guillermo del Toro, Directors Guild of America", sourceURL: "https://www.youtube.com/watch?v=FjR5bT5YYU0", sponsorLogo: "", sponsorURL: "")
let directingActors4 = Tip(header: "Guilermo del Toro:", title: "Directing Actors and Camera Movements", body: "If the actor will benefit from knowing how the camera will move during the scene then tell them. \n\nOtherwise, don't because it's noise. The actor needs to carry the least amount of weight because they are an explorer. \n\nDon't put things in their backpack that they don't need." , sourceName: "The Craft of the Director: Guillermo del Toro, Directors Guild of America", sourceURL: "https://www.youtube.com/watch?v=FjR5bT5YYU0", sponsorLogo: "", sponsorURL: "")
let directingActors5 = Tip(header: "Working With Actors", title: "Francis Ford Coppola:", body: "When an actor has a problem with the script, the director and the actor should talk about it. Many of the talks leads to new ideas." , sourceName: "Apocalypse Now - 2001 Cannes Film Festival Francis Ford Coppola", sourceURL: "https://www.youtube.com/watch?v=4JxK6wLHbPs", sponsorLogo: "", sponsorURL: "")
let directingActors6 = Tip(header: "Directing Actors", title: "David O. Russell:", body: "You have to carry your authority in the right way. You're like a poker player. Even if you're scared out of your fucking mind, you have to act like everything's great. Especially in front of the actors. \n\nIt's a rule I've made with the writers. Do not debate anything in front of the actors. It's like spooking the horses. Do not spook the actors. Because the actors are already anxious. Everything has to be like a-okay." , sourceName: "The Craft of the Director: David O. Russell", sourceURL: "https://www.youtube.com/watch?v=_wDrklwynLo", sponsorLogo: "", sponsorURL: "")
let directingActors7 = Tip(header: "Working With Child Actors", title: "David O. Russell:", body: "The adult actor hopefully takes a parental role with the child actor and then is pateralistally helping the child actor through the scene." , sourceName: "The Craft of the Director: David O. Russell", sourceURL: "https://www.youtube.com/watch?v=_wDrklwynLo", sponsorLogo: "", sponsorURL: "")
let directingActors8 = Tip(header: "Directing Actors", title: "David O. Russell:", body: "It makes some actors more comfortable if you tell them exactly how you want to do a scene. I make sure to choreograph exactly what I want the actors to do. \n\nI'm willing to act out a scene and embarrass myself as a director in front of the crew which takes the stigma away from an uncomfortable act in a scene. I'll cry, dance, and act out a sex scene in front of my crew to help the actors feel more comfortable in front of the crew." , sourceName: "The Craft of the Director: David O. Russell", sourceURL: "https://www.youtube.com/watch?v=_wDrklwynLo", sponsorLogo: "", sponsorURL: "")
let directingActors9 = Tip(header: "Directing Actors", title: "David O. Russell:", body: "The most important thing is to know what you want. " , sourceName: "The Craft of the Director: David O. Russell", sourceURL: "https://www.youtube.com/watch?v=_wDrklwynLo", sponsorLogo: "", sponsorURL: "")
let directingActors10 = Tip(header: "On Set With Lots Of Extras", title: "David O. Russell:", body: "When you have a lot of extras it's always my least favorite days of shooting because there are all these strangers on set. And there's all this chaos and noise and it's really hard to hold everyone's attention, to keep the magic. \n\nYou have to keep huddling the energy. Scenes with lots of people always feels like, \"We didn't get it.\"" , sourceName: "The Craft of the Director: David O. Russell", sourceURL: "https://www.youtube.com/watch?v=_wDrklwynLo", sponsorLogo: "", sponsorURL: "")
let directingActors11 = Tip(header: "Filming With Lots Of Extras", title: "David O. Russell:", body: "You have to protect yourself. You have to give yourself a lot of choices. So it's good to have something to cut to." , sourceName: "The Craft of the Director: David O. Russell", sourceURL: "https://www.youtube.com/watch?v=_wDrklwynLo", sponsorLogo: "", sponsorURL: "")

let directingActorsTipArray0 = [directingActors0, directingActors1, directingActors2, directingActors3]
let directingActorsTipArray1 = [directingActors4, directingActors5, directingActors6, directingActors7]
let directingActorsTipArray2 = [directingActors8, directingActors9, directingActors10, directingActors11]

let directingActorsTipArrays = [directingActorsTipArray0, directingActorsTipArray1, directingActorsTipArray2]
let directingActorsTitle = "Directing Actors"
let directingActorsIcon = Constants.Icon.directingActors
let directingActorsTopic = Topic(title: directingActorsTitle, icon: directingActorsIcon, tip: directingActorsTipArrays.random())
let directingActorsTopics = Topics(title: directingActorsTitle, icon: directingActorsIcon, topics: [directingActorsTopic,])


//LIGHTING
let lighting0 = Tip(header: "Lighting the Set", title: "Orson Welles:", body: "I'm the only director that I know of who does this particular thing. Which is probably the worst way to go about it. I didn't begin this way but I developed this way. \n\nI light a set, with the cinematographer, before I decide where anybody will go. And then when the set looks right to me I put the actors where I think they ought to be. I don't put the actors in and then light the set. It's the exact opposite. \n\nBecause the set is all we have besides the actors and it ought to have a chance. And the only way to give it a chance is to begin with the set. That's my theory anyway." , sourceName: "Filming 'The Trial' [1981] (Unedited) - Rare Orson Welles Documentary", sourceURL: "https://www.youtube.com/watch?v=RbUe-bM6bXg", sponsorLogo: "", sponsorURL: "")
let lighting1 = Tip(header: "Lighting", title: "David O. Russell:", body: "A famous gaffer said to me, \"After 3 lights I get confused. It's too complicated after 3 lights. Just light it simply, but beautifully.\" \n\nI'd also like to say that I want my gaffers to be fast because I learned on my first 3 films that lighting would eat up my whole day. \n\nI'd tell the gaffers we're not going to light for 2 hours and shoot for 30 minutes. We're going light for 30 minutes and shoot for 2 hours. You have to flip the ratio." , sourceName: "The Craft of the Director: David O. Russell", sourceURL: "https://www.youtube.com/watch?v=_wDrklwynLo", sponsorLogo: "", sponsorURL: "")
let lighting2 = Tip(header: "Working With Actors", title: "David O. Russell:", body: "I'll always try things both ways. And I say that to actors and the DP. \n\nIn the time that it takes us to debate this why don't we just do this both ways. And then we can decide in the cutting room." , sourceName: "The Craft of the Director: David O. Russell", sourceURL: "https://www.youtube.com/watch?v=_wDrklwynLo", sponsorLogo: "", sponsorURL: "")


let lightingTipArray0 = [lighting0, lighting1, lighting2,]


let lightingTipArrays = [lightingTipArray0, ]
let lightingTitle = "Lighting"
let lightingIcon = Constants.Icon.lighting
let lightingTopic = Topic(title: lightingTitle, icon: lightingIcon, tip: lightingTipArrays.random())
let lightingTopics = Topics(title: lightingTitle, icon: lightingIcon, topics: [lightingTopic,])


//5





//6




//WEEK 2
//7




//8





//9




//WEEK 1
//0
//let filmProdTipArray0 = [filmProd0, filmProd1, filmProd2, filmProd3]
//let filmProdTopic0 = Topic(title: filmmakingTitle, icon: filmmakingIcon, tip: filmProdTipArray0)
//
////1
//let filmProdTipArray1 = [filmProd4, filmProd5, filmProd6, filmProd7]
//let filmProdTopic1 = Topic(title: filmmakingTitle, icon: filmmakingIcon, tip: filmProdTipArray1)
//
////2
//let filmProdTipArray2 = [filmProd8, filmProd9, filmProd10, filmProd11]
//let filmProdTopic2 = Topic(title: filmmakingTitle, icon: filmmakingIcon, tip: filmProdTipArray2)
//
////3
//let filmProdTipArray3 = [filmProd12, filmProd13, filmProd14, filmProd15]
//let filmProdTopic3 = Topic(title: filmmakingTitle, icon: filmmakingIcon, tip: filmProdTipArray3)
//
////4
//let filmProdTipArray4 = [filmProd16, filmProd17, filmProd18, filmProd19]
//let filmProdTopic4 = Topic(title: filmmakingTitle, icon: filmmakingIcon, tip: filmProdTipArray4)
//
////5
//let filmProdTipArray5 = [filmProd20, filmProd21, filmProd22, filmProd23]
//let filmProdTopic5 = Topic(title: filmmakingTitle, icon: filmmakingIcon, tip: filmProdTipArray5)
//
////6
//let filmProdTipArray6 = [filmProd24, filmProd25, filmProd26, filmProd27]
//let filmProdTopic6 = Topic(title: filmmakingTitle, icon: filmmakingIcon, tip: filmProdTipArray6)
//
////WEEK 2
////7
//let filmProdTipArray7 = [filmProd28, filmProd29, filmProd30, filmProd31]
//let filmProdTopic7 = Topic(title: filmmakingTitle, icon: filmmakingIcon, tip: filmProdTipArray7)
//
//let filmProdTipArray8 = [filmProd32, filmProd33, filmProd34, filmProd35]
//let filmProdTopic8 = Topic(title: filmmakingTitle, icon: filmmakingIcon, tip: filmProdTipArray8)
//
////(WIP 1)
//let filmProdTipArray9 = [filmProd36, filmProd37, filmProd38, filmProd35]
//let filmProdTopic9 = Topic(title: filmmakingTitle, icon: filmmakingIcon, tip: filmProdTipArray9)
//
//let filmProdTipArrays = [filmProdTipArray0, filmProdTipArray1, filmProdTipArray2, filmProdTipArray3, filmProdTipArray4, filmProdTipArray5, filmProdTipArray6, filmProdTipArray7, filmProdTipArray8, filmProdTipArray9]
//
//let filmProdTopic = Topic(title: filmmakingTitle, icon: filmmakingIcon, tip: filmProdTipArrays.random())
//let filmProdTopics = Topics(title: filmmakingTitle, icon: filmmakingIcon, topics: [filmProdTopic,])

//MARK: Post-Production
//WEEK 1

//EDITING
let filmPost0 = Tip(header: "Editing", title: "Guilermo del Toro:", body: "I edit every day. I have my first cut complete a week after wrap. \n\nIf you come in on any day, I'll have everything edited that has been shot up to the prior day. \n\nI edit even on the set in case I want to show footage to an actor to help direct a scene." , sourceName: "The Craft of the Director: Guillermo del Toro, Directors Guild of America", sourceURL: "https://www.youtube.com/watch?v=FjR5bT5YYU0", sponsorLogo: "", sponsorURL: "")
let filmPost1 = Tip(header: "Director and Editor Relationship", title: "Guilermo del Toro:", body: "I don't tell the editor what to do when I send over the dailies because I want to see how they see the film. \n\nAnd if I like what they did then I keep it and if I don't like what they did then I tell them to use the parts that I think are best. It's a real collaboration. \n\nEditors should always try the director's suggestion because you can always undo it." , sourceName: "The Craft of the Director: Guillermo del Toro, Directors Guild of America", sourceURL: "https://www.youtube.com/watch?v=FjR5bT5YYU0", sponsorLogo: "", sponsorURL: "")
let filmPost2 = Tip(header: "Editing", title: "Guilermo del Toro:", body: "I edit everyday. If you wait to edit till after your shot then everything looks great. But if you've been living with it for weeks, you don't do such consideration. \n\nYou have to be brutal because someone's going to be brutal, either you, the audience, or critics. It better be you." , sourceName: "The Craft of the Director: Guillermo del Toro, Directors Guild of America", sourceURL: "https://www.youtube.com/watch?v=FjR5bT5YYU0", sponsorLogo: "", sponsorURL: "")
let filmPost3 = Tip(header: "Creating The Soundtrack", title: "Guilermo del Toro:", body: "The composer doesn't want to listen to music. It's like feeding an actor a line. Show the composer the movie in silence. \n\nIt's vital to have a conversation with the composer. The director is not a dictatorship, only the movie is a dictator. \n\nMaking a movie is a collaboration." , sourceName: "The Craft of the Director: Guillermo del Toro, Directors Guild of America", sourceURL: "https://www.youtube.com/watch?v=FjR5bT5YYU0", sponsorLogo: "", sponsorURL: "")

let filmPost4 = Tip(header: "Editing", title: "Francis Ford Coppola:", body: "One theory in film is whatever you remove from the film makes what's left better. And often that's the case. \n\nWhen you cut, cut out anything you want, throw it on the floor, and just try to cut to the point. Because, on the floor, it will say, \"put me back in, put me back in.\" And the ones that nag you the most you put back in." , sourceName: "Apocalypse Now - 2001 Cannes Film Festival Francis Ford Coppola", sourceURL: "https://www.youtube.com/watch?v=4JxK6wLHbPs", sponsorLogo: "", sponsorURL: "")
let filmPost5 = Tip(header: "Editing", title: "David O. Russell:", body: "I like to cut in two or three rooms. Divy up the scenes and walk from one room to another and then pass the scenes around again. I go into the editing room the day after we wrap principal photography. \n\nI like to start cutting a sequence that I remember. I need to know from the editors and the DPs that everything looks like we saw it, it looks right, and that nothing was messed up. We do not do playback on our sets." , sourceName: "The Craft of the Director: David O. Russell", sourceURL: "https://www.youtube.com/watch?v=_wDrklwynLo", sponsorLogo: "", sponsorURL: "")
let filmPost6 = Tip(header: "Editing", title: "David O. Russell:", body: "16 frames is a beat. 24 frames is two beats. 48 frames is 3 beats. \n\nIt's always two beats on someone's face, just to feel them. It makes all the difference in a scene." , sourceName: "The Craft of the Director: David O. Russell", sourceURL: "https://www.youtube.com/watch?v=_wDrklwynLo", sponsorLogo: "", sponsorURL: "")
let filmPost7 = Tip(header: "Rough Cuts", title: "David O. Russell:", body: "We have a process where we bring in friends and family. We welcome their feedback. And then we go back to the drawing boards. \n\nWe do that a couple of times. We have a Q&A after each showing. Then, we show the movie to the studio." , sourceName: "The Craft of the Director: David O. Russell", sourceURL: "https://www.youtube.com/watch?v=_wDrklwynLo", sponsorLogo: "", sponsorURL: "")
let filmPost8 = Tip(header: "Editing", title: "Steven Spielberg:", body: "The movie tells us what to do with it. I don't ever blame myself or feel guilty when I cut out some really good scenes. Because the movie says, \"It was great on the day, but it doesn't belong with me [the movie]. You know it's not really telling the story.\"" , sourceName: "Bridge of Spies DGA Q&A with Steven Spielberg and Martin Scorsese", sourceURL: "https://www.youtube.com/watch?v=ufRw6bT7CL0", sponsorLogo: "", sponsorURL: "")
let filmPost9 = Tip(header: "The First Cut", title: "Martin Scorsese:", body: "George Lucas once told Martin Scorsese, \"If the first cut is good, you're in trouble.\"" , sourceName: "Bridge of Spies DGA Q&A with Steven Spielberg and Martin Scorsese", sourceURL: "https://www.youtube.com/watch?v=ufRw6bT7CL0", sponsorLogo: "", sponsorURL: "")


let filmPostTipArray0 = [filmPost0, filmPost1, filmPost2, filmPost3]
let filmPostTipArray1 = [filmPost4, filmPost5, filmPost6, filmPost7]
//2 WIP-2
let filmPostTipArray2 = [filmPost8, filmPost9, filmPost2, filmPost3]


let filmPostTipArrays = [filmPostTipArray0, filmPostTipArray1, filmPostTipArray2]
let filmPostTitle = "Editing"
let filmPostIcon = Constants.Icon.editing
let filmPostTopic = Topic(title: filmPostTitle, icon: filmPostIcon, tip: filmPostTipArrays.random())
let filmPostTopics = Topics(title: filmPostTitle, icon: filmPostIcon, topics: [filmPostTopic,])


// MARK: - Screenwriting
let screenwritingTitle = "Writer"
let screenwritingIcon = Constants.Icon.screenwriting




//FIRST DRAFT
let firstDraft0 = Tip(header: "Pro Tip: 1st Draft", title: "Before I write a first draft, I outline a script very meticulously. My outlines are 25-30 pages long. Then, when I write the first draft, I will not re-read one word of what I've written until I've written the whole script. So in 3 weeks I've a draft and it's a lot fun because there is no judgement.", body: "Then, for the 2nd draft, I spend 2-3 weeks going through the 1st draft very meticulously and I work through the scenes. The 2nd draft is the least enjoyable part because it's the most critical. And then after that there's many drafts after that but I have this nice foundation.  \n\n- Danny Strong \nCo-creator and executive producer of Empire and co-writer of The Hunger Games: Mockingjay" , sourceName: "YouTube: Film Courage", sourceURL: "https://www.youtube.com/watch?v=iSsBYP9atGE", sponsorLogo: "", sponsorURL: "")
let firstDraft1 = Tip(header: "Quote", title: "Great writers aren’t great first-drafters. They’re great rewriters.", body: "- Andrew Bennett" , sourceName: "LA Screenwriter", sourceURL: "https://www.la-screenwriter.com/screenwriting-quotes/", sponsorLogo: "", sponsorURL: "")
let firstDraft2 = Tip(header: "Quote", title: "You can always edit a bad page. You can’t edit a blank page.", body: "- Jodi Picoult" , sourceName: "Writing Cooperative", sourceURL: "https://writingcooperative.com/18-motivational-quotes-to-bring-out-the-writer-in-you-ea3e61c93734", sponsorLogo: "", sponsorURL: "")
let firstDraft3 = Tip(header: "Script", title: "Paul Thomas Anderson: You are creating the blueprint for the movie. Don't over-describe or burden the reader; readers love seeing white space." , body: "Leave room for the actors' input on the story and the action of the characters. Call out specific things, but realize that you need to achieve enough to get the story across as well as enough for someone to build their own interpretation on top of that. " , sourceName: "No Film School", sourceURL: "https://nofilmschool.com/paul-thomas-anderson-writing-tips", sponsorLogo: "", sponsorURL: "")
let firstDraft4 = Tip(header: "First Draft", title: "Paul Thomas Anderson: Don't fix all your typos. At least not in the first draft and when in flow." , body: "Writing is very hard -- so get to the first draft, then go back and make it look pretty. If the ideas are flowing, don't stop or interrupt it because a word or three is misspelled." , sourceName: "No Film School", sourceURL: "https://nofilmschool.com/paul-thomas-anderson-writing-tips", sponsorLogo: "", sponsorURL: "")
let firstDraft5 = Tip(header: "First Draft", title: "Paul Thomas Anderson: At the beginning of an idea, you need to love writing it. It needs to speak to you." , body: "If other people don't get it or get the pitch, that's okay. \n\nWrite with the passion that drew you to the idea in the first place and when it is time to involve other people, that passion will be contagious. " , sourceName: "No Film School", sourceURL: "https://nofilmschool.com/paul-thomas-anderson-writing-tips", sponsorLogo: "", sponsorURL: "")
let firstDraft6 = Tip(header: "Quote", title: "Every scene should be able to answer three questions: \"Who wants what from whom? What happens if they don't get it? Why now?\"", body: "- Lisa See" , sourceName: "IndieWire", sourceURL: "https://www.indiewire.com/2018/05/screenwriting-advice-paul-thomas-anderson-greta-gerwig-1201962599/", sponsorLogo: "", sponsorURL: "")
let firstDraft7 = Tip(header: "Quote", title: "Every scene should be able to answer three questions: \"Who wants what from whom? What happens if they don't get it? Why now?\"", body: "- Lisa See" , sourceName: "AZ Quotes", sourceURL: "https://www.azquotes.com/quotes/topics/screenwriting.html", sponsorLogo: "", sponsorURL: "")
let firstDraft8 = Tip(header: "Quote", title: "That’s my advice with dealing with writer’s block: follow the fun. If you aren’t having fun, you are doing it wrong.", body: "- Jordan Peele" , sourceName: "Screen Writing Magazine", sourceURL: "https://screenwritingumagazine.com/2019/06/03/10-must-read-quotes-from-famous-directors/", sponsorLogo: "", sponsorURL: "")
//WRITING CHARACTERS (First Draft?)
let firstDraft9 = Tip(header: "Characters", title: "David O. Russell:", body: "I think about what each character will look like and what will they be that's exciting and that I've not seen before. I like wanting to know who somebody is." , sourceName: "The Craft of the Director: David O. Russell", sourceURL: "https://www.youtube.com/watch?v=_wDrklwynLo", sponsorLogo: "", sponsorURL: "")
let firstDraft10 = Tip(header: "Characters", title: "David O. Russell:", body: "You have to love each character in some way and each character has to be loved. Even if they are the bad guys. \n\nYou can hate a character, but you also have to love them." , sourceName: "The Craft of the Director: David O. Russell", sourceURL: "https://www.youtube.com/watch?v=_wDrklwynLo", sponsorLogo: "", sponsorURL: "")
let firstDraft11 = Tip(header: "Characters", title: "Guilermo del Toro: Write detailed biographies for all of your characters", body: "What I do for my actors, and as part of my screenwriting process, I write incredibly detailed biographies. \n\nI write down everything I know about a character. What they eat, what music they listen to, what secrets they keep." , sourceName: "BFI Screen Talk: Guilermo del Toro | BFI London Film Festival 2017", sourceURL: "https://www.youtube.com/watch?v=rfbD3OBir64", sponsorLogo: "", sponsorURL: "")
let firstDraft12 = Tip(header: "Writing Is Listening", title: "I spend a lot of time listening to what my characters are trying to tell me about who they are, and they’re always telling you. It’s the mysterious part of writing, your unconscious knows more than you do, and you have to keep that channel open.", body: "Greta Gerwig (“Lady Bird”)" , sourceName: "IndieWire", sourceURL: "https://www.indiewire.com/2018/05/screenwriting-advice-paul-thomas-anderson-greta-gerwig-1201962599/", sponsorLogo: "", sponsorURL: "")
let firstDraft13 = Tip(header: "Writing Characters", title: "No matter what the story you’re trying to tell is, you need to put yourself into the characters. You need to put aspects of yourself so that those characters are still reacting in a real way, in a real human way. \n\nIt wasn’t until I wrote ‘Freaks and Geeks’ that I had that moment of putting my experience on the page, and it was the first thing I’d written that really got a response out of people and got accepted.", body: "- Paul Feig (“Ghostbusters”)" , sourceName: "IndieWire", sourceURL: "https://www.indiewire.com/2018/05/screenwriting-advice-paul-thomas-anderson-greta-gerwig-1201962599/", sponsorLogo: "", sponsorURL: "")
//2
let firstDraft14 = Tip(header: "Write Character Bios", title: "Guilermo del Toro:", body: "I do a biography for the characters that is approximately 8 pages. Everything about them. What they like, what they read, what they eat, what they listen to, what they don't like. \n\nI do secrets for each of the characters. Things people know. The way they perceive themselves. The way others perceive them. \n\nAnd I give this to the design department. Now we need to articulate each biography with visuals and sound. The costume and set designs are based on the character's biography." , sourceName: "The Craft of the Director: Guillermo del Toro, Directors Guild of America", sourceURL: "https://www.youtube.com/watch?v=FjR5bT5YYU0", sponsorLogo: "", sponsorURL: "")
let firstDraft15 = Tip(header: "Using Colors", title: "Guilermo del Toro:", body: "\"In each movie, I assign a value to each color. \n\nIn the Shape of Water, red represents love, life, and cinema. That's it. The rest of the movie has no red.\"" , sourceName: "The Craft of the Director: Guillermo del Toro, Directors Guild of America", sourceURL: "https://www.youtube.com/watch?v=FjR5bT5YYU0", sponsorLogo: "", sponsorURL: "")
let firstDraft16 = Tip(header: "Advice", title: "David O. Russell:", body: "You always have to be thinking how is this a surprising scene? \n\nHow are you telling the story in a way that it surprising to people? \n\nHow do you suck them into something and then flip it over?" , sourceName: "The Craft of the Director: David O. Russell", sourceURL: "https://www.youtube.com/watch?v=_wDrklwynLo", sponsorLogo: "", sponsorURL: "")
let firstDraft17 = Tip(header: "Advice", title: "Orson Welles: Adapting a book or play into a screenplay", body: "When Orson Welles wrote the screenplay for The Trial (1962 film), based on the novel of the same name by Franz Kafka, Orson re-ordered some of the book's chapters in the final screenplay. \n\nHis reason for doing this was: \n\n\"Every film is an original work. A film should never be an illustration of a book or a play. It should be of itself.\" \n\n\"The picture-maker is engaged in an art form that is entirely different from literature and the theater. And so they not only have the right but the obligation to turn the work into something a little different than the author intended.\" \n\n\"If they perfectly realize it then we might as well have lantern slides and somebody with a lovely voice reading the book.\"" , sourceName: "Filming 'The Trial' [1981] (Unedited) - Rare Orson Welles Documentary", sourceURL: "https://www.youtube.com/watch?v=RbUe-bM6bXg", sponsorLogo: "", sponsorURL: "")
let firstDraft18 = Tip(header: "Pro Tips", title: "John Steinbeck: 1. Abandon the idea that you are ever going to finish. Lose track of the 400 pages and write just one page for each day; it helps. Then when it gets finished, you are always surprised.", body: "2. Write freely and as rapidly as possible and throw the whole thing on paper. Never correct or rewrite until the whole thing is down. Rewrite in process is usually found to be an excuse for not going on. It also interferes with flow and rhythm which can only come from a kind of unconscious association with the material." , sourceName: "Medium: The Daily Routine of 20 Famous Writers", sourceURL: "https://medium.com/the-mission/the-daily-routine-of-20-famous-writers-and-how-you-can-use-them-to-succeed-1603f52fbb77", sponsorLogo: "", sponsorURL: "")
let firstDraft19 = Tip(header: "Pro Tips", title: "John Steinbeck: 1. Forget your generalized audience. In the first place, the nameless, faceless audience will scare you to death and in the second place, unlike the theatre, it doesn’t exist. In writing, your audience is one single reader. Sometimes it helps to pick out one person — a real person you know, or an imagined person and write to that one. ", body: "2. If you are using dialogue — say it aloud as you write it. Only then will it have the sound of speech. \n\n3. If a scene or a section gets the better of you — bypass it and go on. When you have finished the whole you can come back to it and then you may find that the reason it gave trouble is because it didn’t belong there." , sourceName: "Medium: The Daily Routine of 20 Famous Writers", sourceURL: "https://medium.com/the-mission/the-daily-routine-of-20-famous-writers-and-how-you-can-use-them-to-succeed-1603f52fbb77", sponsorLogo: "", sponsorURL: "")

let firstDraft20 = Tip(header: "Quote", title: "A professional writer is an amateur who didn’t quit.", body: "- Richard Bach" , sourceName: "Writing Cooperative", sourceURL: "https://writingcooperative.com/18-motivational-quotes-to-bring-out-the-writer-in-you-ea3e61c93734", sponsorLogo: "", sponsorURL: "")

let firstDraft21 = Tip(header: "Quote", title: "Not a wasted word. This has been a main point to my literary thinking all my life.", body: "- Hunter S. Thompson" , sourceName: "SCREENCRAFT", sourceURL: "https://screencraft.org/2013/01/23/50-great-screenwriting-quotes/", sponsorLogo: "", sponsorURL: "")
let firstDraft22 = Tip(header: "Quote", title: "First forget inspiration. Habit is more dependable. Habit will sustain you whether you're inspired or not. Habit will help you finish and polish your stories. Inspiration won't. Habit is persistence in practice.", body: "- Octavia Butler \n\nAmerican science fiction author" , sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/quotes/181907-first-forget-inspiration-habit-is-more-dependable-habit-will-sustain", sponsorLogo: "", sponsorURL: "")
let firstDraft23 = Tip(header: "Advice", title: "When Guilermo del Toro writes, he is the writer, the producer, and the director.", body: "\"I don't listen to them at the same time, but they are there with me. \n\nMeaning, when I'm writing, I'm thinking how am I going to solve it more or less. What's the image in the scene? What's the first image in the next scene? \n\nHow is it helping or not helping the rhythm? Do I really need the ending? \n\nAt the same time, I know what I need of the set. How it's going to cost? How many extras? All of these are occuring at the same time.\"" , sourceName: "The Craft of the Director: Guillermo del Toro, Directors Guild of America", sourceURL: "https://www.youtube.com/watch?v=FjR5bT5YYU0", sponsorLogo: "", sponsorURL: "")
let firstDraft24 = Tip(header: "Advice", title: "Guilermo del Toro suggests to focus less on plot (the what) and more on the how, the where, and the who", body: "\"We analyze our craft [cinema] in the most pedestrian way now. When you hear a movie discussed, to me the least interesting thing is plot. It's the thing I spend the least amount of time on. \n\nThe what is momentarily interesting. The how, the where, the who, these are interesting things.\"" , sourceName: "The Craft of the Director: Guillermo del Toro, Directors Guild of America", sourceURL: "https://www.youtube.com/watch?v=FjR5bT5YYU0", sponsorLogo: "", sponsorURL: "")
let firstDraft25 = Tip(header: "Woody Allen:", title: "Writing a script, play, or novel", body: "My observation was that once a person actually completed a play or a novel, he was well on his way to getting it produced or published, as opposed to a vast majority of people who tell me their ambition is to write, but who strike out on the very first level and indeed never write the play or book. \n\nIf you actually write your film script, or write your novel, you are more than half way towards something good happening." , sourceName: "CreativeLive", sourceURL: "https://www.creativelive.com/blog/the-importance-of-showing-up/", sponsorLogo: "", sponsorURL: "")
let firstDraft26 = Tip(header: "Listen to Music", title: "Guilermo del Toro:", body: "I listen to music when I write. I'm a better writer when I'm listening to music because then I can see the movie I'm writing. \n\nI create a 3-hour playlist for the movie that I'm writing and I have it play on repeat." , sourceName: "The Craft of the Director: Guillermo del Toro, Directors Guild of America", sourceURL: "https://www.youtube.com/watch?v=FjR5bT5YYU0", sponsorLogo: "", sponsorURL: "")
let firstDraft27 = Tip(header: "Questions to Ask Yourself", title: "David O. Russell:", body: "When I write, I'm trying to think of what is the most exciting movie I would like to see. That is unexpected, that is fascinating, and that captures people's attention." , sourceName: "The Craft of the Director: David O. Russell", sourceURL: "https://www.youtube.com/watch?v=_wDrklwynLo", sponsorLogo: "", sponsorURL: "")
let firstDraft28 = Tip(header: "Advice", title: "David O. Russell:", body: "To make a really good movie it has to feel like there's a gun to my head with the gun holder saying: \n\n\"No, tell the story better. I'm going to shoot you in the head if you don't tell it better.\"" , sourceName: "The Craft of the Director: David O. Russell", sourceURL: "https://www.youtube.com/watch?v=_wDrklwynLo", sponsorLogo: "", sponsorURL: "")
let firstDraft29 = Tip(header: "Writing Style", title: "David O. Russell:", body: "I listen to music. I write it into the script. I give the characters music that they would listen to." , sourceName: "The Craft of the Director: David O. Russell", sourceURL: "https://www.youtube.com/watch?v=_wDrklwynLo", sponsorLogo: "", sponsorURL: "")
let firstDraft30 = Tip(header: "Quote", title: "Read a thousand books, and your words will flow like a river.", body: "- Lisa See" , sourceName: "Writing Cooperative", sourceURL: "https://writingcooperative.com/18-motivational-quotes-to-bring-out-the-writer-in-you-ea3e61c93734", sponsorLogo: "", sponsorURL: "")
let firstDraft31 = Tip(header: "Quote", title: "I try to push ideas away, and the ones that will not leave me alone are the ones that ultimately end up happening.", body: "- JJ Abrams" , sourceName: "Screen Writing Magazine", sourceURL: "https://screenwritingumagazine.com/2019/06/03/10-must-read-quotes-from-famous-directors/", sponsorLogo: "", sponsorURL: "")


let firstDraftTipArray0 = [firstDraft0, firstDraft1, firstDraft2, firstDraft3]
let firstDraftTipArray1 = [firstDraft4, firstDraft5, firstDraft6, firstDraft7]
let firstDraftTipArray2 = [firstDraft8, firstDraft9, firstDraft10, firstDraft11]
let firstDraftTipArray3 = [firstDraft12, firstDraft13, firstDraft14, firstDraft15]
let firstDraftTipArray4 = [firstDraft16, firstDraft17, firstDraft18, firstDraft19]
let firstDraftTipArray5 = [firstDraft20, firstDraft21, firstDraft22, firstDraft23]
let firstDraftTipArray6 = [firstDraft24, firstDraft25, firstDraft26, firstDraft27]
let firstDraftTipArray7 = [firstDraft28, firstDraft29, firstDraft30, firstDraft31]

let firstDraftTipArrays = [firstDraftTipArray0, firstDraftTipArray1, firstDraftTipArray2, firstDraftTipArray3, firstDraftTipArray4, firstDraftTipArray5, firstDraftTipArray6, firstDraftTipArray7]
let firstDraftTitle = "First Draft"
let firstDraftIcon = Constants.Icon.firstDraft
let firstDraftTopic = Topic(title: firstDraftTitle, icon: firstDraftIcon, tip: firstDraftTipArrays.random())
let firstDraftTopics = Topics(title: firstDraftTitle, icon: firstDraftIcon, topics: [firstDraftTopic,])






//TV SHOW WRITING
let screenwriting3 = Tip(header: "", title: "Screenwriting a TV Show: Create a \"show bible\" which starts with a 3-liner logline.", body: "Write down the rules of the world. Describe images in the world to set the tone. Write down the history and backstory. \n\nTalk about the characters history: who they are and where did they come from. \n\nThen, go into first season, the first season's arc. Describe each episode." , sourceName: "Indie Film Hustle: Bulletproof Screenplay Podcast", sourceURL: "https://www.youtube.com/watch?v=kgnvv_3d830", sponsorLogo: "", sponsorURL: "")




//let screenwritingTipArray1 = [screenwriting4, screenwriting5, screenwriting6, screenwriting7]
//let screenwritingTopic1 = Topic(title: screenwritingTitle, icon: screenwritingIcon, tip: screenwritingTipArray1)
//
//let screenwritingTipArray2 = [screenwriting8, screenwriting9, screenwriting10, screenwriting11]
//let screenwritingTopic2 = Topic(title: screenwritingTitle, icon: screenwritingIcon, tip: screenwritingTipArray2)
//
//let screenwritingTipArray3 = [screenwriting12, screenwriting13, screenwriting14, screenwriting15]
//let screenwritingTopic3 = Topic(title: screenwritingTitle, icon: screenwritingIcon, tip: screenwritingTipArray3)
//
//let screenwritingTipArray4 = [screenwriting16, screenwriting17, screenwriting18, screenwriting19]
//let screenwritingTopic4 = Topic(title: screenwritingTitle, icon: screenwritingIcon, tip: screenwritingTipArray4)
//
//let screenwritingTipArray5 = [screenwriting20, screenwriting21, screenwriting22, screenwriting23]
//let screenwritingTopic5 = Topic(title: screenwritingTitle, icon: screenwritingIcon, tip: screenwritingTipArray5)
//
//let screenwritingTipArray6 = [screenwriting24, screenwriting25, screenwriting26, screenwriting27]
//let screenwritingTopic6 = Topic(title: screenwritingTitle, icon: screenwritingIcon, tip: screenwritingTipArray6)
//
////WEEK 2
//let screenwritingTipArray7 = [screenwriting28, screenwriting29, screenwriting30, screenwriting31]
//let screenwritingTopic7 = Topic(title: screenwritingTitle, icon: screenwritingIcon, tip: screenwritingTipArray7)
//
//let screenwritingTipArray8 = [screenwriting32, screenwriting33, screenwriting34, screenwriting35]
//let screenwritingTopic8 = Topic(title: screenwritingTitle, icon: screenwritingIcon, tip: screenwritingTipArray8)
//
//let screenwritingTipArray9 = [screenwriting36, screenwriting9, screenwriting10, screenwriting11]
//let screenwritingTopic9 = Topic(title: screenwritingTitle, icon: screenwritingIcon, tip: screenwritingTipArray9)
//
//let screenwritingTipArray10 = [screenwriting36, screenwriting37, screenwriting38, screenwriting39]
//let screenwritingTopic10 = Topic(title: screenwritingTitle, icon: screenwritingIcon, tip: screenwritingTipArray10)
//
//let screenwritingTipArray11 = [screenwriting40, screenwriting41, screenwriting42, screenwriting43]
//let screenwritingTopic11 = Topic(title: screenwritingTitle, icon: screenwritingIcon, tip: screenwritingTipArray11)
//
//let screenwritingTipArray12 = [screenwriting44, screenwriting45, screenwriting46, screenwriting47]
//let screenwritingTopic12 = Topic(title: screenwritingTitle, icon: screenwritingIcon, tip: screenwritingTipArray12)
////WIP
//let screenwritingTipArray13 = [screenwriting48, screenwriting19, screenwriting10, screenwriting8]
//let screenwritingTopic13 = Topic(title: screenwritingTitle, icon: screenwritingIcon, tip: screenwritingTipArray13)
//
//
//let screenwritingTipArrays = [screenwritingTipArray0, screenwritingTipArray1, screenwritingTipArray2, screenwritingTipArray3, screenwritingTipArray4, screenwritingTipArray5, screenwritingTipArray6, screenwritingTipArray7, screenwritingTipArray8, screenwritingTipArray9, screenwritingTipArray10, screenwritingTipArray11, screenwritingTipArray12, screenwritingTipArray13]
//let screenwritingTopic = Topic(title: screenwritingTitle, icon: screenwritingIcon, tip: screenwritingTipArrays.random())
//let screenwritingTopics = Topics(title: screenwritingTitle, icon: screenwritingIcon, topics: [screenwritingTopic,])

// MARK: - Side Hustle




//PM Tips: Mental Health, Physical Health Tips for founders. 


//let sideHustleX = Tip(header: "⏳", title: "Elite performers practice roughly the same amount every day, including weekends", body: "Most successful people average 10 years of practice before becoming great. Even child-prodigies generally work at it for a decade or more. \n\nTiger Woods had been working on his golf game for 15 years when he became the youngest-ever winner of the U.S. Amateur Championship." , sourceName: "UC Berkeley", sourceURL: "https://greatergood.berkeley.edu/article/item/a_new_theory_of_elite_performance", sponsorLogo: "", sponsorURL: "")


//MARK: IDEA
let startupIdea0 = Tip(header: "Increase Sucess", title: "Y Combinator invests in startups that solve PROBLEMS that: \n• A lot of people have. \n• Are urgent, ones that people are trying to solve right now, quickly. \n• Are frequent, ones that people are going to encounter over and over again, and often in a frequent time interval", body: "• Give people a lot of opportunities to convert. \n• Are expensive to solve because if you're able to solve it, then you can charge a lot of money. \n• Are growing faster than other problems, in markets growing 20% a year. \n• Will add up to some billion-dollar total addressable market." , sourceName: "Y Combinator - How to Evaluate Startup Ideas", sourceURL: "https://www.ycombinator.com/library/6e-how-to-evaluate-startup-ideas", sponsorLogo: "", sponsorURL: "")

//MARK: GENERAL QUOTES

let startupQuote0 = Tip(header: "Quote", title: "No matter how brilliant your mind or strategy, if you're playing a solo game, you'll always lose out to a team.", body: "- Reid Hoffman \n\nCo-founder of LinkedIn" , sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/danschawbel/2012/02/14/10-memorable-quotes-from-the-start-up-of-you/", sponsorLogo: "", sponsorURL: "")
let startupQuote1 = Tip(header: "Quote", title: "If we tried to think of a good idea, we wouldn't have been able to think of a good idea. You just have to find the solution for a problem in your own life.", body: "- Brian Chesky, co-founder of Airbnb" , sourceName: "Inc.", sourceURL: "https://www.inc.com/melanie-curtin/21-quotes-about-entrepreneurship-thatll-make-you-think-and-some-thatll-make-you-laugh.html", sponsorLogo: "", sponsorURL: "")
let startupQuote2 = Tip(header: "Quote", title: "If you can't explain it to a six year old, you don't understand it yourself.", body: "- Albert Einstein" , sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/quotes/19421-if-you-can-t-explain-it-to-a-six-year-old", sponsorLogo: "", sponsorURL: "")
let startupQuote3 = Tip(header: "Early Stage", title: "Since startups make money by offering people something better than they had before, the best opportunities are where things suck most.", body: "- Paul Graham \n\nCofounder of Y Combinator" , sourceName: "Papermine: Paul Graham's Best Essays", sourceURL: "https://papermine.com/pub/1204761/#cover", sponsorLogo: "", sponsorURL: "")
//1
let startupQuote4 = Tip(header: "Quote", title: "Learn to sell. Learn to build. If you can do both, you will be unstoppable.", body: "- Naval Ravikant \n\nCEO and a co-founder of AngelList." , sourceName: "Wonderful Quote", sourceURL: "https://www.wonderfulquote.com/a/naval-ravikant-quotes", sponsorLogo: "", sponsorURL: "")
let startupQuote5 = Tip(header: "Quote", title: "An early exit for your startup is a mirage in the desert. If you thirst for it, it disappears.", body: "- Naval Ravikant \n\nCEO and a co-founder of AngelList." , sourceName: "Wonderful Quote", sourceURL: "https://www.wonderfulquote.com/a/naval-ravikant-quotes", sponsorLogo: "", sponsorURL: "")
let startupQuote6 = Tip(header: "Quote", title: "I have not failed. I've just found 10,000 ways that won't work.", body: "- Thomas A. Edison" , sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/quotes", sponsorLogo: "", sponsorURL: "")
let startupQuote7 = Tip(header: "Founder Advice", title: "Don’t describe your startup as “disruptive” or “innovative” on your website or when pitching to people.", body: "Only other people can call your startup these words. \n\n- Ben Hall, Founder of Katacoda", sourceName: "NDC Conferences - Events for Software Developers", sourceURL: "https://vimeo.com/68383318", sponsorLogo: "", sponsorURL: "")

//2
let startupQuote8 = Tip(header: "Quote", title: "The lesson of history is that true product / market fits are very precise (so, iterate!)", body: "- Naval Ravikant \n\nCEO and a co-founder of AngelList." , sourceName: "Wonderful Quote", sourceURL: "https://www.wonderfulquote.com/a/naval-ravikant-quotes", sponsorLogo: "", sponsorURL: "")
let startupQuote9 = Tip(header: "Quote", title: "If you believe something needs to exist, if it's something you want to use yourself, don't let anyone ever stop you from doing it.", body: "- Tobias Lütke \n\nCEO of Shopify" , sourceName: "Inc.", sourceURL: "https://www.inc.com/lolly-daskal/24-empowering-quotes-to-start-your-day-right.html", sponsorLogo: "", sponsorURL: "")
let startupQuote10 = Tip(header: "Advice", title: "Failure is an important ingredient to success", body: "J.K. Rowling’s first Harry Potter book was rejected by 12 publishers (and before she even wrote the book she suffered a stream of potentially devastating personal failures). \n\nMichael Jordon was cut from his high school basketball team. \n\nAbraham Lincoln suffered a series of lost elections (along with some successes) before he went on to become one of the greatest US presidents." , sourceName: "UC Berkeley", sourceURL: "https://greatergood.berkeley.edu/article/item/passion_adversity_success", sponsorLogo: "", sponsorURL: "")
let startupQuote11 = Tip(header: "Quote", title: "The reality is that success in entrepreneurship is not about having a brilliant idea and boom that's it. It's iteration.", body: "- Fabrice Grinda \n\nEntrepreneur and angel investor", sourceName: "Mashable", sourceURL: "https://www.youtube.com/watch?v=vaTeeSN_gfw", sponsorLogo: "", sponsorURL: "")

//3
let startupQuote12 = Tip(header: "Quote", title: "You will get rich by giving society what it wants but does not yet know how to get. At scale.", body: "- Naval Ravikant \n\nCEO and a co-founder of AngelList." , sourceName: "Wonderful Quote", sourceURL: "https://www.wonderfulquote.com/a/naval-ravikant-quotes", sponsorLogo: "", sponsorURL: "")
let startupQuote13 = Tip(header: "Increase Success", title: "You need 3 things to create a successful startup: to start with good people, to make something customers actually want, and to spend as little money as possible. Most startups that fail do it because they fail at one of these. A startup that does all three will probably succeed.", body: "- Paul Graham \n\nCofounder of Y Combinator" , sourceName: "Papermine: Paul Graham's Best Essays", sourceURL: "https://papermine.com/pub/1204761/#cover", sponsorLogo: "", sponsorURL: "")
let startupQuote14 = Tip(header: "Quote", title: "Embrace accountability, and take business risks under your own name. Society will reward you with responsibility, equity, and leverage.", body: "- Naval Ravikant \n\nCEO and a co-founder of AngelList." , sourceName: "Wonderful Quote", sourceURL: "https://www.wonderfulquote.com/a/naval-ravikant-quotes", sponsorLogo: "", sponsorURL: "")
let startupQuote15 = Tip(header: "Quote", title: "What drives people to start startups is (or should be) looking at existing technology and thinking, don't these guys realize they should be doing x, y, and z? And that's also a sign that one is a good hacker.", body: "- Y Combinator's Paul Graham" , sourceName: "Papermine: Paul Graham's Best Essays", sourceURL: "https://papermine.com/pub/1204761/#cover", sponsorLogo: "", sponsorURL: "")

//4
let startupQuote16 = Tip(header: "Quote", title: "Whatever the situation, actions, not plans, generate lessons that help you test your hypotheses against reality.", body: "- Reid Hoffman \n\nCo-founder of LinkedIn" , sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/danschawbel/2012/02/14/10-memorable-quotes-from-the-start-up-of-you/", sponsorLogo: "", sponsorURL: "")
let startupQuote17 = Tip(header: "Quote", title: "Good copy is a poor substitute for good UI. Good marketing is a poor substitute for a good product.", body: "- Naval Ravikant \n\nCEO and a co-founder of AngelList." , sourceName: "Wonderful Quote", sourceURL: "https://www.wonderfulquote.com/a/naval-ravikant-quotes", sponsorLogo: "", sponsorURL: "")
let startupQuote18 = Tip(header: "Y Combinator Advice", title: "If you make something people want and focus on your product and your users, you’ll get growth as a result.", body: "- Jessica Livingston \n\nCo-founder of Y Combinator", sourceName: "Y Combinator", sourceURL: "https://ycombinator.wpengine.com/how-not-to-fail/", sponsorLogo: "", sponsorURL: "")

let startupQuoteArray0 = [startupQuote0, startupQuote1, startupQuote2, startupQuote3]
let startupQuoteArray1 = [startupQuote4, startupQuote5, startupQuote6, startupQuote7]
let startupQuoteArray2 = [startupQuote8, startupQuote9, startupQuote10, startupQuote11]
let startupQuoteArray3 = [startupQuote12, startupQuote13, startupQuote14, startupQuote15]
let startupQuoteArray4 = [startupQuote16, startupQuote17, startupQuote18, startupQuote11]

let startupQuoteTipArrays = [startupQuoteArray0, startupQuoteArray1, startupQuoteArray2, startupQuoteArray3, startupQuoteArray4]
let startupQuoteTitle = "Startup Advice"
let startupQuoteTopic = Topic(title: startupQuoteTitle, icon: screenwritingIcon, tip: startupQuoteTipArrays.random())
let startupQuoteTopics = Topics(title: startupQuoteTitle, icon: screenwritingIcon, topics: [startupQuoteTopic,])



//MARK: DAILY HABITS
let startupHabit0 = Tip(header: "Mark Zuckerberg", title: "I make sure I work out at least 3 times a week — usually first thing when I wake up.", body: "Staying in shape is very important. Doing anything well requires energy, and you just have a lot more energy when you’re fit." , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2017/05/28/mark-zuckerberg-and-richard-branson-exercise-is-key-to-success.html", sponsorLogo: "", sponsorURL: "")
let startupHabit1 = Tip(header: "VC Brad Feld:", title: "Successful founders work on their startup in their spare time and on the weekends", body: "\"What do you do on the weekends?\" is a question that Feld asks founders of starups he's looking at investing in \n\nFormer Y Combinator partner Harj Taggar: \"The surest sign of coming success was what a potential founder did in their spare time.\" \n\nAndreessen Horowitz investor Chris Dixon: \"What the smartest people do on the weekend is what everyone else will do during the week in 10 years.\"" , sourceName: "Inc.", sourceURL: "https://www.inc.com/jessica-stillman/this-is-number-1-sign-a-founder-will-succeed-according-to-a-former-y-combinator-partner.html", sponsorLogo: "", sponsorURL: "")//WEEEKEND ONLY
let startupHabit2 = Tip(header: "Don't Multi-Task", title: "Just spotting an email mid-task is enough to reduce your IQ by 10 points as your mind wanders", body: "Multitasking prevents deep, creative thought as we switch back and forth, backtracking, constantly starting from scratch each time. \n\nOur limited cognitive capacity to multi-task means we are never fully focussed on either task.", sourceName: "The Telegraph", sourceURL: "https://www.telegraph.co.uk/health-fitness/mind/7-everyday-ways-you-are-ruining-your-iq/", sponsorLogo: "", sponsorURL: "")
let startupHabit3 = Tip(header: "Y Combinator", title: "Take care of yourself - get sleep 🛌 and exercise 🏃‍♀️", body: "It is also important to stay sane during the inevitable craziness of startup life. \n\nY Combinator tells founders to make sure they take breaks, spend time with friends and family, get enough sleep and exercise in between bouts of extraordinarily intense, focused work.", sourceName: "Y Combinator", sourceURL: "https://blog.ycombinator.com/ycs-essential-startup-advice/", sponsorLogo: "", sponsorURL: "")
//
let startupHabit4 = Tip(header: "Richard Branson", title: "“I seriously doubt that I would have been as successful in my career (and happy in my personal life) if I hadn’t always placed importance on my health and fitness.”", body: "Branson likes to: \n• 🎾 Play tennis \n• 🚴‍♂️ Bike \n• 🏃‍♂️ Run \n• 🏄‍♂️ Kite surf" , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2017/05/28/mark-zuckerberg-and-richard-branson-exercise-is-key-to-success.html", sponsorLogo: "", sponsorURL: "")
let startupHabit5 = Tip(header: "Y Combinator", title: "We tell founders to make sure they take breaks, spend time with friends and family, get enough sleep and exercise in between bouts of extraordinarily intense, focused work.", body: "It is important to stay sane during the inevitable craziness of startup life." , sourceName: "YC’s Essential Startup Advice", sourceURL: "https://www.ycombinator.com/library/4D-yc-s-essential-startup-advice", sponsorLogo: "", sponsorURL: "")

let startupHabitArray0 = [startupHabit0, startupHabit1, startupHabit2, startupHabit3]
let startupHabitArray1 = [startupHabit4, startupHabit5, startupHabit2, startupHabit3]


let startupHabitTipArrays = [startupHabitArray0, startupHabitArray1,]
let startupHabitTitle = "Founder Habits"
let startupHabitIcon = Constants.Icon.routine
let startupHabitTopic = Topic(title: startupHabitTitle, icon: startupHabitIcon, tip: startupHabitTipArrays.random())
let startupHabitTopics = Topics(title: startupHabitTitle, icon: startupHabitIcon, topics: [startupHabitTopic,])



//MARK: BETA VERSION
let betaVersion0 = Tip(header: "Quote", title: "If you are not embarrassed by the first version of your product, you've launched too late.", body: "- Reid Hoffman \n\nCo-founder of LinkedIn and partner at Greylock" , sourceName: "Inc.", sourceURL: "https://www.inc.com/melanie-curtin/21-quotes-about-entrepreneurship-thatll-make-you-think-and-some-thatll-make-you-laugh.html", sponsorLogo: "", sponsorURL: "")

let betaVersion1 = Tip(header: "Harvard Innovation Labs", title: "1st: Find a problem worth solving. It's great if you have the problem because it will help you understand it more.", body: "2nd: Deeply understand your customer. \n\n3rd: Find a solution that resonates with your customers. \n\n4th: You want to launch, not when you have the biggest, best product that has every feature in the world, but when you have a product that is sufficently better than some of the options out there and that some people are going to be really excited about.", sourceName: "Harvard Innovation Labs", sourceURL: "https://www.youtube.com/watch?v=MiEdsK2zv8U", sponsorLogo: "", sponsorURL: "")
let betaVersion2 = Tip(header: "Harvard Innovation Labs", title: "Before you build the product, validate it by creating a landing page", body: "In your landing page: \n\n1. Allow people to insert email addresses (to see if people are interested in your product) \n\n2. Allow people to choose pricing options (to see if people are willing to pay for your product)", sourceName: "Harvard i-lab | Discovering the Right Product for Your Startup", sourceURL: "https://www.youtube.com/watch?v=MiEdsK2zv8U", sponsorLogo: "", sponsorURL: "")
let betaVersion3 = Tip(header: "Founder Advice", title: "• Before you build a prototype, articulate your vision clearly. It will help you articulate your vision in order to acquire the best people and potential investors.", body: "• Start small and create a working prototype in order to prove to customers and investors that you can do the job and that your product works. \n\n• Focus on getting a few early adopters/users that like your product and will share with their friends. \n\n• Write down all of the risks in your company and then come up with solutions to those risks, this will help you make a better product and when you are talking to potential investors. \n\n• Don’t try to start a company unless you’re ready to work really hard. In the end, it’s winner takes all. You have to be obsessed with the product. \n\n- Lars Buttler, Founder and CEO of Trion World Network", sourceName: "Stanford Graduate School of Business", sourceURL: "https://www.youtube.com/watch?v=Jq6NvA7eKCM&list=WLwWe2KlwPhYxvPhbuXZSH0wF4vtOq1MMp", sponsorLogo: "", sponsorURL: "")

let betaVersion4 = Tip(header: "Y Combinator", title: "In the beginning, if you can find someone with a problem that needs solving and you can solve it manually, go ahead and do that for as long as you can, and then gradually automate the bottlenecks.", body: "When you only have a small number of users, you can sometimes get away with doing by hand things that you plan to automate later. This lets you launch faster, and when you do finally automate yourself out of the loop, you'll know exactly what to build because you'll have muscle memory from doing it yourself. \n\nFor example, the way Stripe delivered \"instant\" merchant accounts to its first users was that the founders manually signed them up for traditional merchant accounts behind the scenes. \n\n- Paul Graham, co-founder of Y Combinator", sourceName: "Inc.", sourceURL: "https://www.inc.com/business-insider/paul-grahams-counter-intuitive-startup-advice-do-things-that-dont-scale.html", sponsorLogo: "", sponsorURL: "")
let betaVersion5 = Tip(header: "Lean Startup Technique", title: "In the beginning, don't try to build an amazing product but try to see if the product is feasible", body: "• Avoid writing code (this costs time and money). See if you can do it cheaply/quickly (i.e. emails). \n\n• Speak to users of competition, influencers (ie bloggers…). Listen to customers not advisors. Always talk about their previous experiences. \n\n• Focus on building value for users. \n\n• Make sure you understand your startup’s vision and why your startup exists. People don’t buy what your selling, they buy why you do it. \n\n- Ben Hall, Founder of Katacoda", sourceName: "NDC Conferences - Events for Software Developers", sourceURL: "https://vimeo.com/68383318", sponsorLogo: "", sponsorURL: "")
let betaVersion6 = Tip(header: "Don't Have A Big Launch", title: "The idea of creating initial buzz is a lazy way to onboard users, and usually doesn't work", body: "It's easy to see how little launches matter. Think of some successful startups. How many of their launches do you remember? \n\nHow well you're doing a few months later will depend more on how happy you made those users than how many there were of them. \n\nRecruit users manually and give them an overwhelmingly good experience. Even if what you're building is great, getting users will always be a gradual process. \n\n- Paul Graham, co-founder of Y Combinator", sourceName: "Inc.", sourceURL: "https://www.inc.com/business-insider/paul-grahams-counter-intuitive-startup-advice-do-things-that-dont-scale.html", sponsorLogo: "", sponsorURL: "")
let betaVersion7 = Tip(header: "Launch Quickly", title: "Build a lean MVP: In most cases, you should launch within weeks, not months", body: "Your MVP should have very limited functionality. We've seen startups start with a landing page and a spreadsheet. \n\nDO: Condense down what your initial user needs based and their highest order of problems. Ignore other users and features until later. \n\nDON'T: Try to address all of your potential users and all of their problems.", sourceName: "Y Combinator - How to Plan an MVP", sourceURL: "https://www.youtube.com/watch?v=1hHMwLxN6EM&t", sponsorLogo: "", sponsorURL: "")

//
let betaVersion8 = Tip(header: "Launch Quickly", title: "Airbnb's initial webiste was not perfect", body: "Airbnb's MVP was a landing page that allowed users to search by city and date. \n\nThe person who was writing all of the code, Nate, worked part-time and their initial website did not have a map view or payment processing. Users had to pay cash in-person.", sourceName: "Y Combinator - How to Plan an MVP", sourceURL: "https://www.youtube.com/watch?v=1hHMwLxN6EM&t", sponsorLogo: "", sponsorURL: "")
let betaVersion9 = Tip(header: "Heavy MVP (In Very Few Cases)", title: "If your startup is in insurance, banking, hardtech, biotech, Moonshot, etc., then your MVP can be a simple website that explains what you do", body: "It's helpful when you talk to people that they can refer back to something. This is how you can get started in weeks, rather than months.", sourceName: "Y Combinator - How to Plan an MVP", sourceURL: "https://www.youtube.com/watch?v=1hHMwLxN6EM&t", sponsorLogo: "", sponsorURL: "")

let betaVersion10 = Tip(header: "Your Launch Date", title: "Launch as early as possible because launch dates are NOT important", body: "No one rembembers the launch dates of Google, Facebook, and Twitter. \n\nDO: Get your first customer(s) ASAP. \n\nDON'T: Wait for a special, press launch. This can happen later.", sourceName: "Y Combinator - How to Plan an MVP", sourceURL: "https://www.youtube.com/watch?v=1hHMwLxN6EM&t", sponsorLogo: "", sponsorURL: "")

let betaVersion11 = Tip(header: "Launch Quickly", title: "Learning from customers is easier with an MVP than without.", body: "You can talk to users all day but you won't get a true answer on whether the thing you want to build solves their problem until you build something, put it in your users hands, and see if it solves their problem. \n\nSpending all your time on research and a pitch deck is not as valuable as spending your time building anything that you can give to a customer.", sourceName: "Y Combinator - How to Plan an MVP", sourceURL: "https://www.youtube.com/watch?v=1hHMwLxN6EM&t", sponsorLogo: "", sponsorURL: "")



//Hacks for building an MVP quickly
//Time box your spec. Your spec is a list of stuff you need to build before you launch.
    //What happens if I want to build an MVP in 3 weeks? Ok, the only thing on your spec are things that you can build in 3 weeks. That makes your life simplier. It allows you to remove all of the features you can't build in 3 weeks.
//Writ your spec. It's really easy to change your spec before you launch if you don't write it down, especially if you get new ideas from potential users or investors. And so your 3 week plans turns into a 3 month month plan.
//Cut your spec. A week into your 3 week sprint, you'll realize that you added too many things into your spec and you're not going to make your deadline. That's okay, just cut the stuff that clearly isn't important. The goal here is to get anything out into the world. Once you get anything out into the world you have momentum to keep going. If you don't have anything out in the world then it's very easy to just delay, delay, and delay.
//Don't fall in love with your MVP. Most people fall in love with the vision in their head. Don't fall in love with your MVP. It's just step one in your journey. Be prepared to pivot to another idea after testing it with your customers.

//Write your spec list and include a due date. Then, revise your spec list down to only the most important feature(s).

//Time box your spec.
//Your spec is a list of stuff you need to build before you launch.
    //To build an MVP in 3 weeks, the only thing on your spec will be things you can build in 3 weeks and remove all other features.
//Write your spec. It's really easy to change your spec before you launch if you don't write it down, especially if you get new ideas from potential users. And so your 3 week plans turns into a 3 month plan.
//Cut your spec. A week into your 3 week sprint, you'll realize that you added too many things into your spec and you're not going to make your deadline. That's okay, just cut the stuff that clearly isn't important. The goal here is to get anything out into the world. Once you get anything out into the world you have momentum to keep going. If you don't have anything out in the world then it's very easy to just delay, delay, and delay.


//Don't fall in love with your MVP. Most people fall in love with the vision in their head. Don't fall in love with your MVP. It's just step one in your journey. Be prepared to pivot to another idea after testing it with your customers so you can correctly solve their problem.


let betaVersionArray0 = [betaVersion0, betaVersion1, betaVersion2, betaVersion3]
let betaVersionArray1 = [betaVersion4, betaVersion5, betaVersion6, betaVersion7]
let betaVersionArray2 = [betaVersion8, betaVersion9, betaVersion10, betaVersion7]

let betaVersionTipArrays = [betaVersionArray0, betaVersionArray1,]
let betaVersionTitle = "Beta Version"
let betaVersionIcon = Constants.Icon.betaVersion
let betaVersionTopic = Topic(title: betaVersionTitle, icon: betaVersionIcon, tip: betaVersionTipArrays.random())
let betaVersionTopics = Topics(title: betaVersionTitle, icon: betaVersionIcon, topics: [betaVersionTopic,])

//Lauch something bad, quickly.
//Talk to your users before you write code. Understanding the problem is very helpful when coming up with ideas to solve and building an MVP. It's even more helpful if you're your own user so you can tell if your product is working for you.


//MARK: TALKING TO USERS
let startupUsers0 = Tip(header: "Avoid Feature Death", title: "Never ask users for features. Never ask users to tell you what they want.", body: "It's not the user's job to come up with features. That's your job. The user's job is to give you problems. Your goal is to find some continuity in the problems that the users have. \n\nDO: Spend a lot of time talking to users about what their problem is. \n• How often do they experience it? \n• How intense is it? \n• Are they willing to pay for a solution? \n• Do they know other people who have the problem? \n\nThose are the questions you're trying to get out of someone.", sourceName: "Y Combinator - How to Plan an MVP", sourceURL: "https://www.youtube.com/watch?v=1hHMwLxN6EM&t", sponsorLogo: "", sponsorURL: "")

let startupUsers1 = Tip(header: "MVP User Feedback 🔑", title: "Key thing you want to learn when you get feedback on your MVP: \n• Does it solve the problem that you wanted it to solve?", body: "If you clearly understand the problem that you're trying to solve then the answer will be clear. \n\nOften times you won't have to ask, you just look if the user is using your MVP correctly. \n\nIf it's a product that they have everyday and you introduce the user to your MVP, did they come back the next day?", sourceName: "Y Combinator - How to Plan an MVP", sourceURL: "https://www.youtube.com/watch?v=1hHMwLxN6EM&t", sponsorLogo: "", sponsorURL: "")


//MARK: PRODUCT MARKET FIT
let startupProductMarket0 = Tip(header: "Y Combinator", title: "You have reached product/market fit when you are overwhelmed with usage—usually to the point where you can’t even make major changes to your product because you are swamped just keeping it up and running.", body: "As an investor, I look for is a frantic founding team trying to deal with ever-growing numbers of happy, loyal, and ideally paying customers. \n\nUntil then, stay lean, keep burn low, and resemble a Navy SEAL team instead of an Army battalion.", sourceName: "Y Combinator's Michael Seibel", sourceURL: "https://www.michaelseibel.com/blog/the-real-product-market-fit", sponsorLogo: "", sponsorURL: "")
let startupProductMarket1 = Tip(header: "Product Market Fit", title: "At Sequoia, they talk about finding customers who “have their hair on fire”.", body: "If your friend was standing next to you and their hair was on fire, that fire would be the only thing they really cared about in this world. \n\nIt wouldn’t matter if they were hungry, just suffered a bad breakup, or were running late to a meeting—they’d prioritize putting the fire out. If you handed them a hose—the perfect product/solution—they would put the fire out immediately and go on their way. If you handed them a brick they would still grab it and try to hit themselves on the head to put out the fire. \n\nYou need to find problems so dire that users are willing try half-baked, v1, imperfect solutions.", sourceName: "Y Combinator's Michael Seibel", sourceURL: "https://www.michaelseibel.com/blog/the-real-product-market-fit", sponsorLogo: "", sponsorURL: "")

let startupProductMarket2 = Tip(header: "Product Market Fit", title: "Your unique and special v1 idea on how to solve that problem is usually wrong and only through launching, talking to customers, and iterating will you actually find a product that reaches product market fit.", body: "Finding product market fit = focusing on the market first. The problem, i.e. the market, is the real opportunity.", sourceName: "Y Combinator's Michael Seibel", sourceURL: "https://www.michaelseibel.com/blog/the-real-product-market-fit", sponsorLogo: "", sponsorURL: "")

let startupProductMarket3 = Tip(header: "Product Market Fit", title: "YC encourages founders to build MVPs (minimum viable products).", body: "In a good market, an MVP is all you need to get your initial customers in the door, interacting with you, and offering the feedback that will inform your v2, v3, and v4. \n\nTo find product market fit, choose a market where users have a real, meaningful problem, launch quickly, and listen to your users. \n\nOnce you’ve actually reached product/market fit—congratulations—you can begin optimizing your core product, hiring specialists to increase your efficiency, and make strategic investments. Also, you’ve made it further than most startups ever dream.", sourceName: "Y Combinator's Michael Seibel", sourceURL: "https://www.michaelseibel.com/blog/the-real-product-market-fit", sponsorLogo: "", sponsorURL: "")

let startupProductMarket4 = Tip(header: "Marc Andreessen", title: "Product/market fit means being in a good market with a product that can satisfy that market.", body: "Most startups fail before product/market fit ever happens. \n\nBefore product/market: The customers aren't quite getting value out of the product, word of mouth isn't spreading, usage isn't growing that fast, the sales cycle takes too long, and lots of deals never close. \n\nAfter product/market: The customers are buying the product just as fast as you can make it -- or usage is growing just as fast as you can add more servers. Money from customers is piling up in your company checking account. Investment bankers are staking out your house.", sourceName: "THE PMARCA GUIDE TO STARTUPS", sourceURL: "https://pmarchive.com/guide_to_startups_part4.html", sponsorLogo: "", sponsorURL: "")

let startupProductMarket5 = Tip(header: "Marc Andreessen", title: "The life of any startup can be divided into two parts: before product/market fit (call this \"BPMF\") and after product/market fit (\"APMF\").", body: "When you are BPMF, focus obsessively on getting to product/market fit. \n\nDo whatever is required to get to product/market fit. Including changing out people, rewriting your product, moving into a different market, telling customers no when you don't want to, telling customers yes when you don't want to, raising that fourth round of highly dilutive venture capital -- whatever is required. \n\nIn order to succeed, you must reach product/market fit.", sourceName: "THE PMARCA GUIDE TO STARTUPS", sourceURL: "https://pmarchive.com/guide_to_startups_part4.html", sponsorLogo: "", sponsorURL: "")

let startupProductMarket6 = Tip(header: "YC's Michael Seibel", title: "It's more important for a startup to aggressively seek out a big market, and product/market fit within that market, once the startup is up and running, than it is to try to plan out what you are going to do in great detail ahead of time.", body: "A startup's initial business plan doesn't matter that much, because it is very hard to determine up front exactly what combination of product and market will result in success. \n\nYou will probably have to rapidly evolve your plan -- possibly every aspect of it -- as you go.", sourceName: "THE PMARCA GUIDE TO STARTUPS", sourceURL: "https://pmarchive.com/guide_to_startups_part7.html", sponsorLogo: "", sponsorURL: "")

let startupProductMarketArrya0 = [startupProductMarket0, startupProductMarket1, startupProductMarket2, startupProductMarket3]
let startupProductMarketArray1 = [startupProductMarket4, startupProductMarket5, startupProductMarket6, startupProductMarket3]


let startupProductMarketTipArrays = [startupProductMarketArrya0, startupProductMarketArray1,]
let startupProductMarketTitle = "Product/Market Fit"
let startupProductMarketIcon = Constants.Icon.productMarket
let startupProductMarketTopic = Topic(title: startupProductMarketTitle, icon: startupProductMarketIcon, tip: startupProductMarketTipArrays.random())
let startupProductMarketTopics = Topics(title: startupProductMarketTitle, icon: startupProductMarketIcon, topics: [startupProductMarketTopic,])


//

let ideaStage0 = Tip(header: "Launch Continuously", title: "DO: Launch quickly and launch again and again. \nDON'T: Wait to launch and make it a one time event.", body: "If you're like most startups, you will launch something and no one will care. \n\nLaunch through different channels. \n• You'll learn how people will respond to an early version of the product. \n• It'll help you determine whether you're even talking to the right users because you might launch on one channel and get no response, you'll launch on another channel and you'll get a huge response.", sourceName: "Y Combinator", sourceURL: "https://www.ycombinator.com/library/6i-how-to-launch-again-and-again", sponsorLogo: "", sponsorURL: "")

let ideaStage1 = Tip(header: "Landing Page", title: "Create a landing page. Make it short and succinct. It doesn't need to be fancy.", body: "All you need is: \n• Domain name \n• Company name \n• Short description \n• Contact info \n• Call to action (e.g. provide email address) \n\nYou want it to be clear what it is you're building and who it is you're building for.", sourceName: "Y Combinator", sourceURL: "https://www.ycombinator.com/library/6i-how-to-launch-again-and-again", sponsorLogo: "", sponsorURL: "")




// before you even have a fully functioning product, you get a chance to practice your pitch and you can refine it. You can A/B test it and see how people actually respond to the idea. And then once you have an MVP or, you know, a very early version of your product, launching through different channels will give you an opportunity to see how people will respond to that early version of the product.

let ideaStage2 = Tip(header: "Launch Steps", title: "1. Get an MVP ASAP. 2. Do a friends and family launch. Sit down next to them and watch them use it and ask for feedback. But don't stay in this phase for too long because they might not be the right users for your product. 3. Do a stranger launch.", body: "Launching with strangers gives you better feedback than your friends and family. Strangers will show you whether people are actually willing to download and pay for your product.", sourceName: "Y Combinator", sourceURL: "https://www.ycombinator.com/library/6i-how-to-launch-again-and-again", sponsorLogo: "", sponsorURL: "")

let ideaStage3 = Tip(header: "Online Communities", title: "Plan to launch for every single community that you are part of. Many YC startups launch on Hacker News and Product Hunt.", body: "DO: Write like you talk. Talk like a human when you're addressing the community. \nDON'T: Talk like a marketing robot. Don't use marketing jargon. People hate that. \n\nWhen you introduce yourself in these posts: \n• Introduce yourself \n• Talk about what you're building \n• Talk about why you're doing it, or how you came across the problem.", sourceName: "Y Combinator", sourceURL: "https://www.ycombinator.com/library/6i-how-to-launch-again-and-again", sponsorLogo: "", sponsorURL: "")




//MARK: SUCESSFUL FOUNDERS???
let startupFounder0 = Tip(header: "Advice", title: "In the entrepreneur classes I teach, I constantly remind people to not focus on their product, service or widget, but to focus on developing management skills.", body: "The three most important managmenet skills necessary to start your own business are: \n\n1. Management of cash flow. \n2. Management of people. \n3. Managmenet of personal time. \n\n- Robert Kiyosaki \nAuthor of Rich Dad, Poor Dad", sourceName: "Rich Dad, Poor Dad", sourceURL: "https://www.amazon.com/Rich-Dad-Poor-Teach-Middle-ebook/dp/B0175P82RA", sponsorLogo: "", sponsorURL: "")
let startupFounder1 = Tip(header: "Richard Branson:", title: "To succeed as an entrepreneur, you have to be a storyteller", body: "What moves people is someone who is credible and relatable. People can see straight through storytelling that is false, staged or cynical. It has to come from the heart, not just the head. \n\nRichard Branson said, \"I often find a subject I’m pondering becomes a lot clearer once it is down on paper – it’s one of the reasons I blog so much.\"" , sourceName: "Virgin (Richard Branson)", sourceURL: "https://www.virgin.com/richard-branson/why-entrepreneurs-are-storytellers", sponsorLogo: "", sponsorURL: "")
let startupFounder2 = Tip(header: "Advice", title: "Successful entrepreneurship means having experienced the problems you're trying to solve", body: "In the lowest possible moments, where possibly you're even doubting yourself, you have to have a core belief that the problem you're trying to solve is real, or you're never going to make it through. \n\nWhen no one believes in your idea, you have to be the one who believes in it." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/entrepreneurship-advice-from-flash-boys-star-brad-katsuyama-2018-12", sponsorLogo: "", sponsorURL: "")
let startupFounder3 = Tip(header: "Y Combinator's Paul Graham", title: "Who should start a startup? Someone who is a good hacker, between about 23 and 38, and who wants to solve the money problem in one shot instead of getting paid gradually over a conventional working life.", body: "I put the lower bound at 23 not because there's something that doesn't happen to your brain till then, but because you need to see what it's like in an existing business before you try running your own. The business doesn't have to be a startup. I spent a year working for a software company to pay off my college loans." , sourceName: "Papermine: Paul Graham's Best Essays", sourceURL: "https://papermine.com/pub/1204761/#cover", sponsorLogo: "", sponsorURL: "")
//
let startupFounder4 = Tip(header: "Quote", title: "To be an entrepreneur, you need to be somewhat delusional optimistic that everything is going to go well. ", body: "- Fabrice Grinda \n\nEntrepreneur and angel investor", sourceName: "Mashable", sourceURL: "https://www.youtube.com/watch?v=vaTeeSN_gfw", sponsorLogo: "", sponsorURL: "")
let startupFounder5 = Tip(header: "Y Combinator:", title: "The most successful founders are always totally focused on their product and their users. The best founders don’t have time to get caught up in other things", body: "Here’s a list of things that distract unsuccessful founders: \n\n• “Grabbing coffee” with investors \n• Talking with potential acquirers \n• Networking \n• Recruiting boards of advisors \n• Doing a “partnership,” thinking it will get you more users \n• Spending time on PR before you have made something people want \n• Arguing on social media \n• Going to conferences", sourceName: "Y Combinator", sourceURL: "https://ycombinator.wpengine.com/how-not-to-fail/", sponsorLogo: "", sponsorURL: "")
let startupFounder6 = Tip(header: "Quote", title: "The best entrepreneurs don’t care about money, but they have to start a company because they are going crazy in their minds because of the idea.", body: "- Roger Ehrenberg \n\nFounder and managing partner of IA Ventures" , sourceName: "University of Michigan School of Information | Google Lecture Series", sourceURL: "https://www.youtube.com/watch?v=wLL8P7dcybM", sponsorLogo: "", sponsorURL: "")
let startupFounder7 = Tip(header: "Y Combinator's Paul Graham", title: "If you work your way down the Forbes 400 making an x next to the name of each person with an MBA, you'll learn something important about business school. After Warren Buffett, you don't hit another MBA till number 22, Phil Knight, the CEO of Nike.", body: "There are only 5 MBAs in the top 50. What you notice in the Forbes 400 are a lot of people with technical backgrounds. Bill Gates, Steve Jobs, Larry Ellison, Michael Dell, Jeff Bezos, Gordon Moore. The rulers of the technology business tend to come from technology, not business. So if you want to invest two years in something that will help you succeed in business, the evidence suggests you'd do better to learn how to hack than get an MBA." , sourceName: "Papermine: Paul Graham's Best Essays", sourceURL: "https://papermine.com/pub/1204761/#cover", sponsorLogo: "", sponsorURL: "")


let startupFounderArray0 = [startupFounder0, startupFounder1, startupFounder2, startupFounder3]
let startupFounderArray1 = [startupFounder4, startupFounder5, startupFounder6, startupFounder7]


let startupFounderTipArrays = [startupFounderArray0, startupFounderArray1,]
let founderAdviceTitle = "Founder Advice"
let founderAdviceIcon = Constants.Icon.founderAdvice
let startupFounderTopic = Topic(title: founderAdviceTitle, icon: founderAdviceIcon, tip: startupFounderTipArrays.random())
let startupFounderTopics = Topics(title: founderAdviceTitle, icon: founderAdviceIcon, topics: [startupFounderTopic,])



//MARK: AVOIDING FAILURE
let avoidFailure0 = Tip(header: "Y Combinator's Paul Graham", title: "In nearly every failed startup, the real problem was that customers didn't want the product.", body: "For most, the cause of death is listed as \"ran out of funding,\" but that's only the immediate cause. Why couldn't they get more funding? Probably because the product was a dog, or never seemed likely to be done, or both." , sourceName: "Papermine: Paul Graham's Best Essays", sourceURL: "https://papermine.com/pub/1204761/#cover", sponsorLogo: "", sponsorURL: "")
let avoidFailure1 = Tip(header: "YC Quote", title: "Nothing else you do will matter if you’re not making something people want. You can be the best spokesperson, the best fundraiser, the best programmer, but if you aren’t building a product that satisfies a real need, you’ll never succeed.", body: "- Jessica Livingston \n\nCo-founder of Y Combinator", sourceName: "Y Combinator", sourceURL: "https://ycombinator.wpengine.com/how-not-to-fail/", sponsorLogo: "", sponsorURL: "")
let avoidFailure2 = Tip(header: "Your First 10 Customers", title: "A common founder mistake is that make their first customers hard to get customers.", body: "DON'T: Target customers early who don't want to pay, who aren't interested in working with an early stage startup, and who don't actually have the problem; they just think they might have the problem or might have the problem in the future. \n\nDO: Target customers early who want to pay, who will work with an early stage startup, who intensely have the problem that you're trying to solve." , sourceName: "Y Combinator - How to get your first ten customers?", sourceURL: "https://www.youtube.com/watch?v=WAXLTG9n7Kw", sponsorLogo: "", sponsorURL: "")
let avoidFailure3 = Tip(header: "Quote", title: "The most common thing that kills startups is that they build something that nobody wants", body: "Paul Buchheit, Gmail Creator and Y Combinator Partner: \n\nA good founder is someone who is comfortable disproving their own ideas. You need to prove that people will either want you product or not. \n\nThe best evidence is getting people to pay you money for your product. Telling an investor that you already have paying customers increases your chances of getting funded." , sourceName: "Stanford University", sourceURL: "https://www.youtube.com/watch?v=rmFyatXeMCY", sponsorLogo: "", sponsorURL: "")

let avoidFailure4 = Tip(header: "Y Combinator", title: "Most companies fail fast because founders fall out. The relationships with your cofounders matter more than you think and open, honest communications between founders makes future debacles much less likely.", body: "One of the best things you can do to make your startup successful, in fact, to be successful in life, is to simply be nice. Mean people fail." , sourceName: "YC’s Essential Startup Advice", sourceURL: "https://www.ycombinator.com/library/4D-yc-s-essential-startup-advice", sponsorLogo: "", sponsorURL: "")
let avoidFailure5 = Tip(header: "Launch Quickly (MVP)", title: "Goal of a pre-laucn startup: 1: Launch something bad, quickly 2. Get some initial customers to see if they find any value in your product.", body: "You'd be suprised at how many founder's journeys end before a single user has actually interacted with a product that they've created. It's very common. \n\nSo, get past this step. It's extremely important." , sourceName: "Y Combinator - How to Plan an MVP", sourceURL: "https://www.youtube.com/watch?v=1hHMwLxN6EM&t=114s", sponsorLogo: "", sponsorURL: "")
let avoidFailure6 = Tip(header: "Common Mistake", title: "Most founders have a grand idea of their product and they hold off showing customers their crappy initial product because they think this initial customer feedback will not be useful. The reality is that your grand idea is going to take 3 years, $10 million dollars, and a whole team to build. And it might turn out your grand idea is not what yur customers want.", body: "DO: Hold the problem you're trying to solve tightly. Hold the customer tightly. Hold the solution your building loosely. You want to launch quickly, talk to customers, get feedback, and iterate." , sourceName: "Y Combinator - How to Plan an MVP", sourceURL: "https://www.youtube.com/watch?v=1hHMwLxN6EM&t", sponsorLogo: "", sponsorURL: "")
let avoidFailure7 = Tip(header: "Iterate Your Product", title: "DO: Continue improving on your product until it solves a problem that a customer is willing to pay for.", body: "DON'T: Fall in love with your product if it hasn't solved a customer's problem yet." , sourceName: "Y Combinator - How to Plan an MVP", sourceURL: "https://www.youtube.com/watch?v=1hHMwLxN6EM&t", sponsorLogo: "", sponsorURL: "")

let avoidFailure8 = Tip(header: "Talk To Your Users", title: "DO: Spend a lot of time talking to your users, observing them, learning about what problems they have, and then build something that people actually want.", body: "DON'T: Build something that you think your users will want and then spend all your time re-writing your code to make it prettier and faster. This is a trap. Users don't care how good your code is, they only care if it solves their problem. \n\nStartups fail because the founders give up. The founders give up because they run out of money, energy, or both. They run out of money and energy because they don't have users or don't have enough users to convince investors to invest. They don't have enough users because they didn't talk to their users, learn from their users, and build something that people wanted." , sourceName: "Y Combinator - Why Do Startups Fail", sourceURL: "https://www.youtube.com/watch?v=gQ_rZc0YUNw", sponsorLogo: "", sponsorURL: "")

let avoidFailure9 = Tip(header: "Marc Andreessen", title: "The #1 company-killer is lack of market.", body: "In a bad market, you can have the best product in the world and an absolutely killer team, and it doesn't matter -- you're going to fail. /n/nConversely, I can name you any number of weak teams whose startups were highly successful due to explosively large markets for what they were doing. \n\nIn a great market -- a market with lots of real potential customers -- the market will be fulfilled by the first viable product that comes along." , sourceName: "THE PMARCA GUIDE TO STARTUPS", sourceURL: "https://pmarchive.com/guide_to_startups_part4.html", sponsorLogo: "", sponsorURL: "")



//The reason they have no users is because they did not build something that people want. The most common reason how this happens is because founders didn't talk to their users. I

let avoidFailureArray0 = [avoidFailure0, avoidFailure1, avoidFailure2, avoidFailure3]
let avoidFailureArray1 = [avoidFailure4, avoidFailure5, avoidFailure6, avoidFailure7]
let avoidFailureArray2 = [avoidFailure8, avoidFailure9, avoidFailure2, avoidFailure7]

let avoidFailureTipArrays = [avoidFailureArray0,avoidFailureArray1, avoidFailureArray2]
let avoidFailureTitle = "Avoid Failure"
let avoidFailureIcon = Constants.Icon.avoidFailure
let avoidFailureTopic = Topic(title: avoidFailureTitle, icon: avoidFailureIcon, tip: avoidFailureTipArrays.random())
let avoidFailureTopics = Topics(title: avoidFailureTitle, icon: avoidFailureIcon, topics: [avoidFailureTopic,])




//EARLY STAGE ADVICE
let earlyStage0 = Tip(header: "Early Stage", title: "In a startup, your initial plans are almost certain to be wrong in some way, and your first priority should be to figure out where. The only way to do that is to try implementing them.", body: "- Paul Graham \n\nCofounder of Y Combinator" , sourceName: "Papermine: Paul Graham's Best Essays", sourceURL: "https://papermine.com/pub/1204761/#cover", sponsorLogo: "", sponsorURL: "")
let earlyStage1 = Tip(header: "Early Stage", title: "Design your product to please users first, and then think about how to make money from it. If you don't put users first, you leave a gap for competitors who do.", body: "- Paul Graham \n\nCofounder of Y Combinator" , sourceName: "Papermine: Paul Graham's Best Essays", sourceURL: "https://papermine.com/pub/1204761/#cover", sponsorLogo: "", sponsorURL: "")
let earlyStage2 = Tip(header: "Y Combinator's Paul Graham", title: "The only way to make something customers want is to get a prototype in front of them and refine it based on their reactions.", body: "- Paul Graham \n\nCofounder of Y Combinator" , sourceName: "Papermine: Paul Graham's Best Essays", sourceURL: "https://papermine.com/pub/1204761/#cover", sponsorLogo: "", sponsorURL: "")
let earlyStage3 = Tip(header: "Y Combinator's Paul Graham", title: "In technology, the low end always eats the high end. It's easier to make an inexpensive product more powerful than to make a powerful product cheaper. ", body: "So the products that start as cheap, simple options tend to gradually grow more powerful till, like water rising in a room, they squash the \"high-end\" products against the ceiling. If you build the simple, inexpensive option, you'll not only find it easier to sell at first, but you'll also be in the best position to conquer the rest of the market." , sourceName: "Papermine: Paul Graham's Best Essays", sourceURL: "https://papermine.com/pub/1204761/#cover", sponsorLogo: "", sponsorURL: "")
//
let earlyStage4 = Tip(header: "Y Combinator's Paul Graham", title: "Start by writing software for smaller companies, because it's easier to sell to them.", body: "It's worth so much to sell stuff to big companies that the people selling them the crap they currently use spend a lot of time and money to do it. And while you can outhack Oracle with one frontal lobe tied behind your back, you can't outsell an Oracle salesman. So if you want to win through better technology, aim at smaller customers." , sourceName: "Papermine: Paul Graham's Best Essays", sourceURL: "https://papermine.com/pub/1204761/#cover", sponsorLogo: "", sponsorURL: "")
let earlyStage5 = Tip(header: "Say “No“", title: "Successful businesses say no to the many unimportant things and remain focused on saying yes to the few things that matter", body: "Steve Jobs said, \n\n\"People think focus means saying yes to the thing you've got to focus on. But that's not what it means at all. It means saying no to the 100 other good ideas that there are.\" \n\n\"You have to pick carefully. I'm actually as proud of the things we haven't done as the things I have done. Innovation is saying no to 1,000 things.\"" , sourceName: "Inc.", sourceURL: "https://www.inc.com/marcel-schwantes/warren-buffett-says-this-is-1-simple-habit-that-separates-successful-people-from-everyone-else.html", sponsorLogo: "", sponsorURL: "")
let earlyStage6 = Tip(header: "Advice", title: "“Positivity breeds positivity,” according to self-made billionaire Richard Branson", body: "When Virgin was launching its airline companies, the Virgin team never focused on the negative aspects of other airlines or asked customers questions like, “Are you sick of the competition?” \n\nInstead of focusing on everything that other airlines were doing wrong or doing poorly, Virgin took a more positive approach. They asked potential customers: \n\n• What they look forward to when flying \n• What they want from an airline \n• And also highlighted Virgin's unique offerings" , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2018/01/16/richard-branson-uses-this-simple-trick-to-live-a-positive-life.html", sponsorLogo: "", sponsorURL: "")
let earlyStage7 = Tip(header: "Early Stage Advice", title: "In the beginning, Y Combinator sometimes advises startups, especially B2B startups, to pick a single user and make your product perfect for that single user.", body: "If you keep tweaking the product until one early user is extremely happy with it, you'll probably create a product many of their peers also love. \n\nAs long as you can find just one user who really needs something and can act on that need, you've got a toehold in making something people want, and that's as much as any startup needs initially. \n\n- Paul Graham, co-founder of Y Combinator", sourceName: "Inc.", sourceURL: "https://www.inc.com/business-insider/paul-grahams-counter-intuitive-startup-advice-do-things-that-dont-scale.html", sponsorLogo: "", sponsorURL: "")
//
let earlyStage8 = Tip(header: "Advice", title: "Before you drop out of school or quit your job, you want to be thinking about your startup in the following order", body: "1st: Can I Make Money From It? \n2nd: Can I Get People to Know About It? \n3rd: Can I Build It? \n\nWhile most people try to build it first, this order helps you identify if it's going to be a business or a hobby.", sourceName: "Harvard i-lab | Discovering the Right Product for Your Startup", sourceURL: "https://www.youtube.com/watch?v=MiEdsK2zv8U", sponsorLogo: "", sponsorURL: "")
let earlyStage9 = Tip(header: "Y Combinator:", title: "Talk to your users, build what they want, and iterate quickly. Growth is a natural result of doing these 3 things successfully", body: "While growth is always a focus for startups, it's not the right choice. If you have not yet made something your customers want – in other words, have found product-market fit, it makes little sense to grow. \n\nPoor retention is always the result. Also, if you have an unprofitable product, growth merely drains cash from the company.", sourceName: "Y Combinator", sourceURL: "https://blog.ycombinator.com/ycs-essential-startup-advice/", sponsorLogo: "", sponsorURL: "")
let earlyStage10 = Tip(header: "Y Combinator:", title: "The most important tasks for an early-stage company are to write code and talk to users", body: "In order to make something people want: you must launch something, talk to your users to see if it serves their needs, and then take their feedback and iterate. \n\nThese tasks should occupy almost all of your time/focus. For great companies this cycle never ends.", sourceName: "Y Combinator", sourceURL: "https://blog.ycombinator.com/ycs-essential-startup-advice/", sponsorLogo: "", sponsorURL: "")
let earlyStage11 = Tip(header: "Y Combinator:", title: "The first thing we tell founders is to launch their product right away; for the simple reason that this is the only way to fully understand customers’ problems and whether the product meets their needs", body: "Launching a mediocre product as soon as possible, and then talking to customers and iterating, is much better than waiting to build the “perfect” product. \n\nThis is true as long as the product contains a “quantum of utility” which means that there is at least some set of users who would be excited to hear about it, because they can now do something they couldn't do before.", sourceName: "Y Combinator", sourceURL: "https://blog.ycombinator.com/ycs-essential-startup-advice/", sponsorLogo: "", sponsorURL: "")
//
let earlyStage12 = Tip(header: "Founder Advice", title: "Choose a problem you've personally experienced. Otherwise, you'll lose interest down the road", body: "Solving a problem you (or a loved one) has faced ensures that you'll have the passion required to stick with it over a long period of hard work. \n\nNext, go out and talk to people and really understand the market." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/business-entrepreneurship-advice-kara-goldin-hint-ceo-2019-2", sponsorLogo: "", sponsorURL: "")
let earlyStage13 = Tip(header: "Y Combinator Advice", title: "Solve a problem that you yourself have. When you’re part of the target market, you’ll have insights about it that you wouldn’t otherwise", body: "You should graduate from making something for yourself to making something for other people as fast as you can. \n\nAnd to know what they want, you have to understand them. Do they like what you’ve made so far? If not, why not? \n\nTalk to your users as much as you can, even if that means doing things that don’t scale early on. I don’t know of a single case of a startup that felt they spent too much time talking to users.", sourceName: "Y Combinator", sourceURL: "https://ycombinator.wpengine.com/how-not-to-fail/", sponsorLogo: "", sponsorURL: "")

let earlyStage14 = Tip(header: "Y Combinator Advice", title: "The way you stay on the right path in the early stages of a startup is to build stuff and talk to users. And nothing else.", body: "- Jessica Livingston \n\nCo-founder of Y Combinator", sourceName: "Y Combinator", sourceURL: "https://ycombinator.wpengine.com/how-not-to-fail/", sponsorLogo: "", sponsorURL: "")
let earlyStage15 = Tip(header: "Y Combinator Advice", title: "In the beginning, it's not the product that should be insanely great, but the experience of being your user", body: "You should take extraordinary measures not just to acquire users, but also to make them happy. \n\nYour first users should feel that signing up with you was one of the best choices they ever made. \n\nFor as long as they could (which turned out to be surprisingly long), Wufoo sent each new user a hand-written thank you note. \n\nTim Cook doesn't send you a hand-written note after you buy a laptop. He can't. But you can. \n\nThat's one advantage of being small: you can provide a level of service no big company can. \n\n- Paul Graham, co-founder of Y Combinator", sourceName: "Inc.", sourceURL: "https://www.inc.com/business-insider/paul-grahams-counter-intuitive-startup-advice-do-things-that-dont-scale.html", sponsorLogo: "", sponsorURL: "")

let earlyStage16 = Tip(header: "Pre-Product Market Fit", title: "Y Combinator advises to 'do things that don't scale'", body: "Many startup advisors persuade startups to scale way too early. This strategy often leads to: \n• Failure \n• Even startup death \n\nBecause it requires the building of technology and processes to support that scaling, which, if premature, will be a waste of time and effort. \n\n𑁋 𑁋 𑁋 \n\nY Combinator: Get your first customers by any means necessary, even by manual work that couldn’t be managed for more than 10, much less 100 or 1000 customers. \n\nIn the beginning, founders are still trying to figure out what needs to be built and the best way to do that is talk directly to customers. \n\nRemember, growth is the result of a great product not the precursor. \n\n𑁋 𑁋 𑁋 \n\nExample: Airbnb \n\nThe founders originally went and took “professional” photographs of the homes of their earliest customers in order to make their listings more attractive to renters. \n\nThis was entirely unscalable, yet proved essential in learning how to build a vibrant marketplace. \n\nThey had amazing conversations with their customers, the listings on their site improved, and conversions improved.", sourceName: "Y Combinator", sourceURL: "https://blog.ycombinator.com/ycs-essential-startup-advice/", sponsorLogo: "", sponsorURL: "")
let earlyStage17 = Tip(header: "Partnerships", title: "In the beginning, Partnerships usually don't work, especially as a way to get growth started", body: "It's a common mistake among inexperienced founders to believe that a partnership with a big company will be their big break. \n\nSix months later they're all saying the same thing: that was way more work than we expected, and we ended up getting practically nothing out of it. \n\n- Paul Graham, co-founder of Y Combinator", sourceName: "Inc.", sourceURL: "https://www.inc.com/business-insider/paul-grahams-counter-intuitive-startup-advice-do-things-that-dont-scale.html", sponsorLogo: "", sponsorURL: "")

let earlyStage18 = Tip(header: "Naming Your Startup", title: "Give Your company a simple name. Those with fluent names fare better.", body: "In a study on the performance of stocks in the first week after their initial public offerings, researchers found that a stock will attract more investors when it has a fluent name. \n\nThe effect washes away over time since eventually, the company’s fundamentals emerge. \n\nBut in the beginning, people are not that sure about that company and there are a lot of question marks, and that’s when they’re more likely to be swayed by these kinds of cues.”", sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/laurashin/2013/07/16/7-hidden-influences-that-help-people-and-businesses-get-ahead/#758aebc97ef6", sponsorLogo: "", sponsorURL: "")
let earlyStage19 = Tip(header: "Y Combinator:", title: "Only solve one problem well at a time", body: "When your product isn’t working it’s tempting to build new features in order to solve every problem the customer seems to have. \n\nInstead, talk to your customers and focus only on the most acute problem they have. \n\nThe best startup strategy is almost always to do less, really well.", sourceName: "Y Combinator", sourceURL: "https://blog.ycombinator.com/ycs-essential-startup-advice/", sponsorLogo: "", sponsorURL: "")
let earlyStage20 = Tip(header: "Founder Advice", title: "Naming your startup", body: "Either choose a name that associated with your product (ie Airbnb) or a vague name that you can brand it into (ie Google). \n\n- Ben Hall, Founder of Katacoda", sourceName: "NDC Conferences - Events for Software Developers", sourceURL: "https://vimeo.com/68383318", sponsorLogo: "", sponsorURL: "")
let earlyStage21 = Tip(header: "Early Stage Advice", title: "When you start your company, focus on getting 10 users to love you, that’s more important than 1,000 users who think you are just okay", body: "Don’t try to get everyone to like your startup/product. \n\nFind your 10 most passionate users and ask them what they are currently doing to solve the existing problem. \n\nBefore you build the product, do it manually with individual customers. If you can’t get customers to pay for a highly customized experience, how will you get them to use an unknown/new product? \n\nYou'll better understand the problems when working directly with a customer in order to help you understand what you should create.", sourceName: "Harvard i-lab | Discovering the Right Product for Your Startup", sourceURL: "https://www.youtube.com/watch?v=MiEdsK2zv8U", sponsorLogo: "", sponsorURL: "")
let earlyStage22 = Tip(header: "Y Combinator:", title: "Over-engaging with early users is not just an acceptable technique for getting growth rolling. For most successful startups it's a necessary part of the feedback loop that makes the product good.", body: "It's often better not to aim for perfection initially. In software, especially, it usually works best to get something in front of users as soon as it has a quantum of utility, and then see what they do with it. \n\nThe feedback you get from engaging directly with your earliest users will be the best you ever get. When you're so big you have to resort to focus groups, you'll wish you could go over to your users' homes and offices and watch them use your stuff like you did when there were only a handful of them. \n\n- Paul Graham, co-founder of Y Combinator", sourceName: "Inc.", sourceURL: "https://www.inc.com/business-insider/paul-grahams-counter-intuitive-startup-advice-do-things-that-dont-scale.html", sponsorLogo: "", sponsorURL: "")
let earlyStage23 = Tip(header: "Be Flexible", title: "Be open to adjusting your idea, because most good ideas evolve.", body: "The most famous example of that sort of evolution in the YC community is probably Airbnb. They started with airbeds on floors for conferences, then airbeds on floors but without conferences, then actual bedrooms, then whole places. \n\nThat final step only happened after they listened to an early customer's request who wanted to rent out their apartment while they were away. \n\nThe founders really had to think about it. They were still AirBedandBreakfast back then, not Airbnb, so guests had to get breakfast! \n\nBut in the end they said yes, and this type of stay is now most of Airbnb’s business.", sourceName: "Y Combinator", sourceURL: "https://ycombinator.wpengine.com/how-not-to-fail/", sponsorLogo: "", sponsorURL: "")


let earlyStageArray0 = [earlyStage0, earlyStage1, earlyStage2, earlyStage3]
let earlyStageArray1 = [earlyStage4, earlyStage5, earlyStage6, earlyStage7]
let earlyStageArray2 = [earlyStage8, earlyStage9, earlyStage10, earlyStage11]
let earlyStageArray3 = [earlyStage12, earlyStage13, earlyStage14, earlyStage15]
let earlyStageArray4 = [earlyStage16, earlyStage17, earlyStage18, earlyStage19]
let earlyStageArray5 = [earlyStage20, earlyStage21, earlyStage22, earlyStage23]



let earlyStageTipArrays = [earlyStageArray0, earlyStageArray1, earlyStageArray2, earlyStageArray3, earlyStageArray4, earlyStageArray5]
let earlyStageTitle = "Starting"
let earlyStageIcon = Constants.Icon.earlyStage
let earlyStageTopic = Topic(title: earlyStageTitle, icon: earlyStageIcon, tip: earlyStageTipArrays.random())
let earlyStageTopics = Topics(title: earlyStageTitle, icon: earlyStageIcon, topics: [earlyStageTopic,])





//MARK: COFOUNDERS
let cofounders0 = Tip(header: "Picking Co-Founders", title: "Don't partner with cynics and pessimists. Their beliefs are self-fulfilling.", body: "- Naval Ravikant \n\nCEO and a co-founder of AngelList." , sourceName: "Wonderful Quote", sourceURL: "https://www.wonderfulquote.com/a/naval-ravikant-quotes", sponsorLogo: "", sponsorURL: "")
let cofounders1 = Tip(header: "Quote", title: "Pick business partners with high intelligence, energy, and, above all, integrity.", body: "- Naval Ravikant \n\nCEO and a co-founder of AngelList." , sourceName: "Wonderful Quote", sourceURL: "https://www.wonderfulquote.com/a/naval-ravikant-quotes", sponsorLogo: "", sponsorURL: "")
let cofounders2 = Tip(header: "Quote", title: "Pick business partners with high intelligence, energy, and, above all, integrity.", body: "- Naval Ravikant \n\nCEO and a co-founder of AngelList." , sourceName: "Wonderful Quote", sourceURL: "https://www.wonderfulquote.com/a/naval-ravikant-quotes", sponsorLogo: "", sponsorURL: "")
let cofounders3 = Tip(header: "Y Combinator's Paul Graham", title: "Ideally you want between two and four founders.", body: "It would be hard to start with just one. One person would find the moral weight of starting a company hard to bear. \n\nBut you don't want so many founders that the company starts to look like a group photo. Partly because you don't need a lot of people at first, but mainly because the more founders you have, the worse disagreements you'll have. When there are just two or three founders, you know you have to resolve disputes immediately or perish. \n\nIf there are seven or eight, disagreements can linger and harden into factions. You don't want mere voting; you need unanimity." , sourceName: "Papermine: Paul Graham's Best Essays", sourceURL: "https://papermine.com/pub/1204761/#cover", sponsorLogo: "", sponsorURL: "")
let cofounders4 = Tip(header: "Y Combinator's Paul Graham", title: "In a technology startup, the founders should include technical people.", body: "During the Internet Bubble there were a number of startups founded by business people who then went looking for hackers to create their product for them. This doesn't work well. \n\nBusiness people are bad at deciding what to do with technology, because they don't know what the options are, or which kinds of problems are hard and which are easy. And when business people try to hire hackers, they can't tell which ones are good." , sourceName: "Papermine: Paul Graham's Best Essays", sourceURL: "https://papermine.com/pub/1204761/#cover", sponsorLogo: "", sponsorURL: "")
let cofounders5 = Tip(header: "Y Combinator's Paul Graham", title: "It can be dangerous to delay turning yourself into a company, because one or more of the founders might decide to split off and start another company doing the same thing. ", body: "This does happen. So when you set up the company, as well as as apportioning the stock, you should get all the founders to sign something agreeing that everyone's ideas belong to this company, and that this company is going to be everyone's only job. \n\nWhile you're at it, you should ask what else they've signed. One of the worst things that can happen to a startup is to run into intellectual property problems. Before you consummate a startup, ask everyone about their previous IP history." , sourceName: "Papermine: Paul Graham's Best Essays", sourceURL: "https://papermine.com/pub/1204761/#cover", sponsorLogo: "", sponsorURL: "")

let cofoundersArray0 = [cofounders0, cofounders1, cofounders2, cofounders3]
let cofoundersArray1 = [cofounders4, cofounders5, cofounders3, cofounders2]

let cofoundersTipArrays = [cofoundersArray0, cofoundersArray1,]
let cofoundersTitle = "Cofounders"
let cofoundersIcon = Constants.Icon.cofounders
let cofoundersTopic = Topic(title: cofoundersTitle, icon: cofoundersIcon, tip: cofoundersTipArrays.random())
let cofoundersTopics = Topics(title: cofoundersTitle, icon: cofoundersIcon, topics: [cofoundersTopic,])



//MARK: INVESTORS
let ventureCapital0 = Tip(header: "VC Investors", title: "Talk to as many VCs as you can, even if you don't want their money, because a) they may be on the board of someone who will buy you, and b) if you seem impressive, they'll be discouraged from investing in your competitors.", body: "The most efficient way to reach VCs, especially if you only want them to know about you and don't want their money, is at the conferences that are occasionally organized for startups to present to them. \n\n- Paul Graham \n\nCofounder of Y Combinator" , sourceName: "Papermine: Paul Graham's Best Essays", sourceURL: "https://papermine.com/pub/1204761/#cover", sponsorLogo: "", sponsorURL: "")
let ventureCapital1 = Tip(header: "Pitching to a VC", title: "Have 15-20 slides in your slide deck", body: "Tom Fountain, former Principal at Mayfield Fund: \n\nYour presentation should cover (1-2 slides per topic): \n\n1. Vision Statement \n2. Executive Summary \n3. Problem description \n4. Product solution \n5. Go-to Market plan \n6. Competitive landscape \n7. Operating plan \n8. Financing details \n\nIn a 60-minute pitch meeting, half of it will be spent on your slides and the other half will be spent answering the VCs questions. \n\nThe key to your first meeting is not to get a term sheet but to get a second meeting.", sourceName: "Stanford Graduate School of Business", sourceURL: "https://www.youtube.com/watch?v=PyG5k0QtKOQ", sponsorLogo: "", sponsorURL: "")
let ventureCapital2 = Tip(header: "Y Combinator Advice", title: "After you raise money: Be very conservative about how you spend it. Keep expenses low by hiring for the pessimistic case.", body: "Salaries are the main expense in most startups. And the problem with overhiring is that it gives you less margin for error. \n\nThe faster you’re burning through the money you have in the bank, the less time you have to make it to profitability. \n\nIf you start to run out of money before you have things working right, you have to raise more during a phase when the company is an “ugly duckling.” Even if you’re on the right track, you look bad right now. \n\nY Combinator constantly sees startups that die even though they’re on the right track, simply because they hired too fast.", sourceName: "Y Combinator", sourceURL: "https://ycombinator.wpengine.com/how-not-to-fail/", sponsorLogo: "", sponsorURL: "")
let ventureCapital3 = Tip(header: "Y Combinator Advice", title: "Raise money as quickly as possible and then get back to work", body: "Y Combinator observed that a startup's growth begins to flatten when startups focus too much of their time trying to fundraise. \n\nUnderstand that valuation is not equal to success or even probability of success. Some of Y Combinator’s very best companies raised on tiny initial valuations (e.g. Airbnb and Dropbox).", sourceName: "Y Combinator", sourceURL: "https://blog.ycombinator.com/ycs-essential-startup-advice/", sponsorLogo: "", sponsorURL: "")
let ventureCapital4 = Tip(header: "Picking Investors", title: "Choose a VC or angel that you think can fundamentally help you build your company and can have a good relationship with", body: "Use the caller ID test, if you get a call from your investor, are you happy or not when you see them calling you?", sourceName: "Google I/O 2011: How to Get Your Startup Idea Funded by Venture Capitalists", sourceURL: "http://www.youtube.com/watch?v=15iWltPLuPY&list=WLwWe2KlwPhYxvPhbuXZSH0wF4vtOq1MMp", sponsorLogo: "", sponsorURL: "")
let ventureCapital5 = Tip(header: "How To Meet VCs", title: "Unsolicited pitches rarely work, most VCs rely on introductions from people they know", body: "Find someone in your network that will give you an introduction to a VC. Target VCs that invest in your domain. \n\n• Get a CEO who has been successful and received funding from the VC you're trying to meet with to give you an intro. \n\n• Get an advisor for your company and odds are they will know of VCs. \n\n- Tom Fountain, former Principal at Mayfield Fund", sourceName: "Stanford Graduate School of Business", sourceURL: "https://www.youtube.com/watch?v=PyG5k0QtKOQ", sponsorLogo: "", sponsorURL: "")
let ventureCapital6 = Tip(header: "Angel Investors", title: "Many angel investors will want a copy of your business plan", body: "Most investors only expect a brief description of what you plan to do and how you're going to make money from it, and the resumes of the founders. If you just sit down and write out what you've been saying to one another, that should be fine. It shouldn't take more than a couple hours. \n\n- Paul Graham \n\nCofounder of Y Combinator" , sourceName: "Papermine: Paul Graham's Best Essays", sourceURL: "https://papermine.com/pub/1204761/#cover", sponsorLogo: "", sponsorURL: "")
let ventureCapital7 = Tip(header: "VC Investors", title: "A VC is a source of money. I'd be inclined to go with whoever offered the most money the soonest with the least strings attached.", body: "- Paul Graham \n\nCofounder of Y Combinator" , sourceName: "Papermine: Paul Graham's Best Essays", sourceURL: "https://papermine.com/pub/1204761/#cover", sponsorLogo: "", sponsorURL: "")
let ventureCapital8 = Tip(header: "VC Investors", title: "Getting money from an actual VC firm is a bigger deal than getting money from angels. The amounts of money involved are larger, millions usually. So the deals take longer, dilute you more, and impose more onerous conditions.", body: "- Paul Graham \n\nCofounder of Y Combinator" , sourceName: "Papermine: Paul Graham's Best Essays", sourceURL: "https://papermine.com/pub/1204761/#cover", sponsorLogo: "", sponsorURL: "")
let ventureCapital9 = Tip(header: "Y Combinator's Paul Graham", title: "I say \"get big slow.\" The slower you burn through your funding, the more time you have to learn.", body: "The other reason to spend money slowly is to encourage a culture of cheapness. When you get a couple million dollars from a VC firm, you tend to feel rich. It's important to realize you're not. \n\nA rich company is one with large revenues. This money isn't revenue. It's money investors have given you in the hope you'll be able to generate revenues. So despite those millions in the bank, you're still poor." , sourceName: "Papermine: Paul Graham's Best Essays", sourceURL: "https://papermine.com/pub/1204761/#cover", sponsorLogo: "", sponsorURL: "")

let ventureCapitalArray0 = [ventureCapital0, ventureCapital1, ventureCapital2, ventureCapital3]
let ventureCapitalArray1 = [ventureCapital4, ventureCapital5, ventureCapital6, ventureCapital7]
let ventureCapitalArray2 = [ventureCapital8, ventureCapital9, ventureCapital7, ventureCapital6]

let ventureCapitalTipArrays = [ventureCapitalArray0, ventureCapitalArray1, ventureCapitalArray2]
let ventureCapitalTitle = "Investors"
let ventureCapitalIcon = Constants.Icon.ventureCapital
let ventureCapitalTopic = Topic(title: ventureCapitalTitle, icon: ventureCapitalIcon, tip: ventureCapitalTipArrays.random())
let ventureCapitalTopics = Topics(title: ventureCapitalTitle, icon: ventureCapitalIcon, topics: [ventureCapitalTopic,])

//COMPETITION
let startupCompetition0 = Tip(header: "Competition:", title: "It's difficult as a new startup founder not to obsess about competition, actual and potential. But spending any time worrying about your competitors is nearly always a very bad idea", body: "Y Combinator likes to say that startup companies always die of suicide, not murder. \n\nThere will come a time when competitive dynamics are intensely important to the success or failure of your company, but it is highly unlikely to be true in the first year or two.", sourceName: "Y Combinator", sourceURL: "https://blog.ycombinator.com/ycs-essential-startup-advice/", sponsorLogo: "", sponsorURL: "")

let startupCompetitionArray0 = [startupCompetition0,]

let startupCompetitionTipArrays = [startupCompetitionArray0]
let startupCompetitionTitle = "Competition"
let startupCompetitionIcon = Constants.Icon.competition
let startupCompetitionTopic = Topic(title: startupCompetitionTitle, icon: startupCompetitionIcon, tip:  startupCompetitionTipArrays.random())
let startupCompetitionTopics = Topics(title: startupCompetitionTitle, icon: startupCompetitionIcon, topics: [ startupCompetitionTopic,])




//MARK: REVENUE
let startupRevenue0 = Tip(header: "Make Money 💰", title: "The way a startup makes money is to offer people better technology than they have now. Look at something people are trying to do, and figure out how to do it in a way that doesn't suck.", body: "- Paul Graham \n\nCofounder of Y Combinator" , sourceName: "Papermine: Paul Graham's Best Essays", sourceURL: "https://papermine.com/pub/1204761/#cover", sponsorLogo: "", sponsorURL: "")

let startupRevenueArray0 = [startupRevenue0,]

let startupRevenueTipArrays = [startupRevenueArray0]
let startupRevenueTitle = "Revenue"
let startupRevenueIcon = Constants.Icon.revenue
let startupRevenueTopic = Topic(title: startupRevenueTitle, icon: startupRevenueIcon, tip: startupRevenueTipArrays.random())
let startupRevenueTopics = Topics(title: startupRevenueTitle, icon: startupRevenueIcon, topics: [startupRevenueTopic,])

//MARK: CUSTOMERS
let startupCustomers0 = Tip(header: "Your First 10 Customers", title: "1st: Hopefully you're solving a problem that either you have or someone that you know has. So your first couple of customers should be people you know.", body: "2nd: Always find 10 people who LOVE your product and get them in a way that doesn't scale. \n\nDO: Recruit them by hand. \nDON'T: Get them from some advertising scheme or viral growth mechanism. \n\nFind 10 customers who instensely have the problem that you're trying to solve, willing to work with an early stage startup, and willing to PAY." , sourceName: "Y Combinator - How to get your first ten customers?", sourceURL: "https://www.youtube.com/watch?v=WAXLTG9n7Kw", sponsorLogo: "", sponsorURL: "")
let startupCustomers1 = Tip(header: "Your First 10 Customers", title: "You should charge your customers: Use this as a signal for how intensely of a problem that they have.", body: "If your customers are pushing back and saying \"I would use this but only if it's free.\" They're telling you that they don't actually have the problem that you're trying to solve. \n\nDON'T: Try to close the first 10 customers who walk in their door. DO: Have 4-5 qualifying questions, so you can identify customers who will pay versus customers who are just browsing but who won't actually pay. \n\nOnly the customers who are qualified, who answer those questions correctly should you aggressively be trying to get to sign-up. The other customers, it's totally okay if you let go for now and you focus on them later." , sourceName: "Y Combinator - How to get your first ten customers?", sourceURL: "https://www.youtube.com/watch?v=WAXLTG9n7Kw", sponsorLogo: "", sponsorURL: "")

let startupCustomers2 = Tip(header: "Your First Customers", title: "Finding your first customers should be EASY because they should be you or someone that you know.", body: "DO: You should be solving a problem that you or someone that you know has. These should be your first customers. \n\nDON'T: If you're building a product for a mysterous set of users that you don't who they are, then that's a problem and increases your odds of startup failure." , sourceName: "Y Combinator - How to Plan an MVP", sourceURL: "https://www.youtube.com/watch?v=1hHMwLxN6EM&t=114s", sponsorLogo: "", sponsorURL: "")
let startupCustomers3 = Tip(header: "Y Combinator:", title: "Do what Stripe did to get your first users: Go out and manually recruit your early users and manually get them set up with your product on their behalf", body: "When speaking to potential users, most founders ask \"Will you try our beta?\" and if the answer is yes, they say \"Great, we'll send you a link.\" \n\nBut the founders of Stripe weren't going to wait. When anyone agreed to try Stripe they'd say \"Right then, give me your laptop\" and set them up on the spot. \n\nStripe would later become one of the most successful startups Y Combinator has funded.", sourceName: "Inc.", sourceURL: "https://www.inc.com/business-insider/paul-grahams-counter-intuitive-startup-advice-do-things-that-dont-scale.html", sponsorLogo: "", sponsorURL: "")
let startupCustomers4 = Tip(header: "Y Combinator", title: "In the beginning, focus on a deliberately narrow market. That's what Facebook did.", body: "At first it was just for Harvard students. In that form it only had a potential market of a few thousand people, but because they felt it was really for them, a critical mass of them signed up. \n\nAfter Facebook stopped being for Harvard students, it remained for students at specific colleges for quite a while. \n\nWhen I interviewed Mark Zuckerberg at Startup School, he said that while it was a lot of work creating course lists for each school, doing that made students feel the site was their natural home. \n\nIt's always worth asking if there's a subset of the market in which you can get a critical mass of users quickly. \n\n- Paul Graham, co-founder of Y Combinator", sourceName: "Inc.", sourceURL: "https://www.inc.com/business-insider/paul-grahams-counter-intuitive-startup-advice-do-things-that-dont-scale.html", sponsorLogo: "", sponsorURL: "")
let startupCustomers5 = Tip(header: "Increase User Retention", title: "Send your users emails, app notifications, and reminders", body: "A lot of startups build something and struggle to get sign-ups, engagement, or retention. \n\nDon't hope that your users will somehow remember on their own to user your product when they have a problem. \n\nFigure out ways to get users to come back into the app or figure out ways to be back in front of the user at the right time." , sourceName: "Y Combinator - How to Evaluate Startup Ideas", sourceURL: "https://www.ycombinator.com/library/6e-how-to-evaluate-startup-ideas", sponsorLogo: "", sponsorURL: "")


let startupCustomersArray0 = [startupCustomers0, startupCustomers1, startupCustomers2, startupCustomers3]
let startupCustomersArray1 = [startupCustomers4, startupCustomers5, startupCustomers2, startupCustomers3]

let startupCustomersTipArrays = [startupCustomersArray0, startupCustomersArray1]
let startupCustomersTitle = "Customers"
let startupCustomersIcon = Constants.Icon.customers
let startupCustomersTopic = Topic(title: startupCustomersTitle, icon: startupCustomersIcon, tip: startupCustomersTipArrays.random())
let startupCustomersTopics = Topics(title: startupCustomersTitle, icon: startupCustomersIcon, topics: [startupCustomersTopic,])

//
//
//DO:






//MARK: OPERATING
let startupOperating0 = Tip(header: "Y Combinator's Paul Graham", title: "For most startups the model should be grad student, not law firm. Aim for cool and cheap, not expensive and impressive.", body: "We had office chairs so cheap that the arms all fell off. This was slightly embarrassing at the time, but in retrospect the grad-studenty atmosphere of our office was another of those things we did right without knowing it." , sourceName: "Papermine: Paul Graham's Best Essays", sourceURL: "https://papermine.com/pub/1204761/#cover", sponsorLogo: "", sponsorURL: "")
let startupOperating1 = Tip(header: "Y Combinator's Paul Graham", title: "An apartment is also the right kind of place for developing software.", body: "Cube farms suck for that, as you've probably discovered if you've tried it. Ever notice how much easier it is to hack at home than at work? So why not make work more like home?" , sourceName: "Papermine: Paul Graham's Best Essays", sourceURL: "https://papermine.com/pub/1204761/#cover", sponsorLogo: "", sponsorURL: "")

let startupOperatingArray0 = [startupOperating0,startupOperating1]

let startupOperatingTipArrays = [startupOperatingArray0]
let startupOperatingTitle = "Operations"
let startupOperatingIcon = Constants.Icon.operations
let startupOperatingTopic = Topic(title: startupOperatingTitle, icon: startupOperatingIcon, tip: startupOperatingTipArrays.random())
let startupOperatingTopics = Topics(title: startupOperatingTitle, icon: startupOperatingIcon, topics: [startupOperatingTopic,])


//MARK: HIRING
let startupHiring0 = Tip(header: "Hiring", title: "Rule for deciding who to hire: Could you describe the person as an animal? ", body: "It might be hard to translate that into another language, but I think everyone in the US knows what it means. It means someone who takes their work a little too seriously; someone who does what they do so well that they pass right through professional and cross over into obsessive. \n\n- Paul Graham \nCofounder of Y Combinator" , sourceName: "Papermine: Paul Graham's Best Essays", sourceURL: "https://papermine.com/pub/1204761/#cover", sponsorLogo: "", sponsorURL: "")
let startupHiring1 = Tip(header: "Hiring", title: "Y Combinator's Paul Graham on hiring", body: "A salesperson who just won't take no for an answer; a hacker who will stay up till 4:00 AM rather than go to bed leaving code with a bug in it; a PR person who will cold-call New York Times reporters on their cell phones; a graphic designer who feels physical pain when something is two millimeters out of place." , sourceName: "Papermine: Paul Graham's Best Essays", sourceURL: "https://papermine.com/pub/1204761/#cover", sponsorLogo: "", sponsorURL: "")




let startupHiringArray0 = [startupHiring0,startupHiring1]

let startupHiringTipArrays = [startupOperatingArray0]
let startupHiringTitle = "Hiring"
let startupHiringIcon = Constants.Icon.hiring
let startupHiringTopic = Topic(title: startupHiringTitle, icon: startupHiringIcon, tip: startupHiringTipArrays.random())
let startupHiringTopics = Topics(title: startupHiringTitle, icon: startupHiringIcon, topics: [startupHiringTopic,])


//https://www.ycombinator.com/library/6e-how-to-evaluate-startup-ideas

//A startup idea is a hypothesis about why a company could grow quickly. And your job is to figure out how to construct your hypothesis and pitch it to an investor so they understand how it can grow quickly.










//https://www.ycombinator.com/library/4D-yc-s-essential-startup-advice
/*
When you're looking for space for a startup, don't feel that it has to look professional. Professional means doing good work, not elevators and glass walls. I'd advise most startups to avoid corporate space at first and just rent an apartment. You want to live at the office in a startup, so why not have a place designed to be lived in as your office?

Besides being cheaper and better to work in, apartments tend to be in better locations than office buildings. And for a startup location is very important. The key to productivity is for people to come back to work after dinner. Those hours after the phone stops ringing are by far the best for getting work done. Great things happen when a group of employees go out to dinner together, talk over ideas, and then come back to their offices to implement them. So you want to be in a place where there are a lot of restaurants around, not some dreary office park that's a wasteland after 6:00 PM. Once a company shifts over into the model where everyone drives home to the suburbs for dinner, however late, you've lost something extraordinarily valuable. God help you if you actually start in that mode.

If I were going to start a startup today, there are only three places I'd consider doing it: on the Red Line near Central, Harvard, or Davis Squares (Kendall is too sterile); in Palo Alto on University or California Aves; and in Berkeley immediately north or south of campus. These are the only places I know that have the right kind of vibe.

The most important way to not spend money is by not hiring people. I may be an extremist, but I think hiring people is the worst thing a company can do. To start with, people are a recurring expense, which is the worst kind. They also tend to cause you to grow out of your space, and perhaps even move to the sort of uncool office building that will make your software worse. But worst of all, they slow you down: instead of sticking your head in someone's office and checking out an idea with them, eight people have to have a meeting about it. So the fewer people you can hire, the better. The only reason to hire someone is to do something you'd like to do but can't.

//Should You?


I learned, without realizing it at the time, a lot of valuable lessons about the software business. In this case they were mostly negative lessons: don't have a lot of meetings; don't have chunks of code that multiple people own; don't have a sales guy running the company; don't make a high-end product; don't let your code get too big; don't leave finding bugs to QA people; don't go too long between releases; don't isolate developers from users; don't move from Cambridge to Route 128; and so on. [8] But negative lessons are just as valuable as positive ones. Perhaps even more valuable: it's hard to repeat a brilliant performance, but it's straightforward to avoid errors.

The other reason it's hard to start a company before 23 is that people won't take you seriously. VCs won't trust you, and will try to reduce you to a mascot as a condition of funding. Customers will worry you're going to flake out and leave them stranded. Even you yourself, unless you're very unusual, will feel your age to some degree; you'll find it awkward to be the boss of someone much older than you, and if you're 21, hiring only people younger rather limits your options.

The other cutoff, 38, has a lot more play in it. One reason I put it there is that I don't think many people have the physical stamina much past that age. I used to work till 2:00 or 3:00 AM every night, seven days a week. I don't know if I could do that now.

Also, startups are a big risk financially. If you try something that blows up and leaves you broke at 26, big deal; a lot of 26 year olds are broke. By 38 you can't take so many risks-- especially if you have kids.


During this time you'll do little but work, because when you're not working, your competitors will be. My only leisure activities were running, which I needed to do to keep working anyway, and about fifteen minutes of reading a night. I had a girlfriend for a total of two months during that three year period. Every couple weeks I would take a few hours off to visit a used bookshop or go to a friend's house for dinner. I went to visit my family twice. Otherwise I just worked.

Working was often fun, because the people I worked with were some of my best friends.

/////////////////////
Organic Startup Ideas
https://www.paulgraham.com/organic.html

The best way to come up with startup ideas is to ask yourself the question: what do you wish someone would make for you?

So if you want to start a startup and don't know yet what you're going to do, I'd encourage you to focus initially on organic ideas. What's missing or broken in your daily life? Sometimes if you just ask that question you'll get immediate answers.

The worst ideas we see at Y Combinator are from young founders making things they think other people will want.

So if you want to come up with organic startup ideas, I'd encourage you to focus more on the idea part and less on the startup part. Just fix things that seem broken, regardless of whether it seems like the problem is important enough to build a company on. If you keep pursuing such threads it would be hard not to end up making something of value to a lot of people, and when you do, surprise, you've got a company.

Don't be discouraged if what you produce initially is something other people dismiss as a toy. In fact, that's a good sign. That's probably why everyone else has been overlooking the idea.

If you find something broken that you can fix for a lot of people, you've found a gold mine. As with an actual gold mine, you still have to work hard to get the gold out of it. But at least you know where the seam is, and that's the hard part.


*/










let sideHustleTitle = "Startup"
let sideHustleIcon = Constants.Icon.sideHustle
//WEEK 1
////0
//let sideHustleTipArray0 = [startup0, startup1, startup2, startup3]
//let sideHustleTopic0 = Topic(title: sideHustleTitle, icon: sideHustleIcon, tip: sideHustleTipArray0)
////1
//let sideHustleTipArray1 = [startup4, startup5, startup6, startup7]
//let sideHustleTopic1 = Topic(title: sideHustleTitle, icon: sideHustleIcon, tip: sideHustleTipArray1)
////2
//let sideHustleTipArray2 = [startup8, startup9, startup10, startup11]
//let sideHustleTopic2 = Topic(title: sideHustleTitle, icon: sideHustleIcon, tip: sideHustleTipArray2)
////3
//let sideHustleTipArray3 = [startup12, startup13, startup14, startup15]
//let sideHustleTopic3 = Topic(title: sideHustleTitle, icon: sideHustleIcon, tip: sideHustleTipArray3)
////4
//let sideHustleTipArray4 = [startup16, startup17, startup18, startup19]
//let sideHustleTopic4 = Topic(title: sideHustleTitle, icon: sideHustleIcon, tip: sideHustleTipArray4)
////5
//let sideHustleTipArray5 = [startup20, startup21, startup22, startup23]
//let sideHustleTopic5 = Topic(title: sideHustleTitle, icon: sideHustleIcon, tip: sideHustleTipArray5)
////6
//let sideHustleTipArray6 = [startup24, startup25, startup26, startup27]
//let sideHustleTopic6 = Topic(title: sideHustleTitle, icon: sideHustleIcon, tip: sideHustleTipArray6)
//
////WEEK 2
////7
//let sideHustleTipArray7 = [startup28, startup29, startup30, startup31]
//let sideHustleTopic7 = Topic(title: sideHustleTitle, icon: sideHustleIcon, tip: sideHustleTipArray7)
////8
//let sideHustleTipArray8 = [startup32, startup33, startup34, startup35]
//let sideHustleTopic8 = Topic(title: sideHustleTitle, icon: sideHustleIcon, tip: sideHustleTipArray8)
////9
//let sideHustleTipArray9 = [startup36, startup37, startup38, startup39]
//let sideHustleTopic9 = Topic(title: sideHustleTitle, icon: sideHustleIcon, tip: sideHustleTipArray9)
////10
//let sideHustleTipArray10 = [startup40, startup41, startup42, startup43]
//let sideHustleTopic10 = Topic(title: sideHustleTitle, icon: sideHustleIcon, tip: sideHustleTipArray10)
////11
//let sideHustleTipArray11 = [startup44, startup45, startup46, startup47]
//let sideHustleTopic11 = Topic(title: sideHustleTitle, icon: sideHustleIcon, tip: sideHustleTipArray11)
////12
//let sideHustleTipArray12 = [startup48, startup49, startup50, startup51]
//let sideHustleTopic12 = Topic(title: sideHustleTitle, icon: sideHustleIcon, tip: sideHustleTipArray12)
////13 (WIP 1)
//let sideHustleTipArray13 = [startup52, startup53, startup54, startup55]
//let sideHustleTipArray14 = [startup56, startup57, startup58, startup59]
//let sideHustleTipArray15 = [startup60, startup61, startup62, startup63]
//let sideHustleTipArray16 = [startup64, startup65, startup66, startup67]
//let sideHustleTipArray17 = [startup68, startup69, startup70, startup71]
//let sideHustleTipArray18 = [startup72, startup73, startup74, startup75]


//let sideHustleTipArrays = [sideHustleTipArray0, sideHustleTipArray1, sideHustleTipArray2, sideHustleTipArray3, sideHustleTipArray4, sideHustleTipArray5, sideHustleTipArray6, sideHustleTipArray7, sideHustleTipArray8, sideHustleTipArray9, sideHustleTipArray10, sideHustleTipArray11, sideHustleTipArray12, sideHustleTipArray13]
//let sideHustleTopic = Topic(title: sideHustleTitle, icon: sideHustleIcon, tip: sideHustleTipArrays.random())
//let sideHustleTopics = Topics(title: sideHustleTitle, icon: sideHustleIcon, topics: [sideHustleTopic,])

// MARK: - YouTube or Podcast

let podcast0 = Tip(header: "Podcast Advice: Andrew Schulz", title: "If you want to compete at an elite level, you need to have a team. You cannot do it by yourself because the top comedians, who podcast, don't do it by themselves", body: "Andrew Schulz, Tim Dillon, and Joe Rogan don't podcast alone. They all have a team (even if it's only one other person that produces their podcast). So, if you want to get to their level you need to have a team." , sourceName: "#232 - Andrew Schulz | The Tim Dillon Show", sourceURL: "https://www.youtube.com/watch?v=4b3_GbkG9KA", sponsorLogo: "", sponsorURL: "")
let podcast1 = Tip(header: "Podcast Advice: Andrew Schulz", title: "How to choose your podcast team:", body: "1. I look for competence. If you're competent then you can learn anything (e.g. new editing software). \n\n2. I look for someone who has as high of standards for the content as I do. If you do then I can relax. If you don't then everything you put out I gotta double check and then I might as well just done it myself." , sourceName: "#232 - Andrew Schulz | The Tim Dillon Show", sourceURL: "https://www.youtube.com/watch?v=4b3_GbkG9KA", sponsorLogo: "", sponsorURL: "")



// MARK: - Studying / Homework
let studyTitle = "Studying"
let studyIcon = Constants.Icon.study

//WEEK 1
//0
let study0 = Tip(header: "FYI 🎶", title: "Music you like increases focus, while music you don’t like decreases focus", body: "Music that causes pleasurable feelings can improve concentration. Music with no (or little) words might be best for studying, as human speech is something our brains pay particular attention to. As a result, some people argue that one of the best music genres for concentration is the video game soundtrack." , sourceName: "The Guardian", sourceURL: "https://www.theguardian.com/education/2016/aug/20/does-music-really-help-you-concentrate", sponsorLogo: "", sponsorURL: "")
let study1 = Tip(header: "Take Breaks", title: "Taking brief mental breaks improves performance when working on a long task", body: "The brain is built to detect and respond to change, and prolonged attention to a single task actually decreases performance. When faced with long tasks (such as doing your homework or studying before an exam), it is best to impose brief breaks on yourself. Brief mental breaks will actually help you stay focused on your task!" , sourceName: "The University of Illinois", sourceURL: "https://news.illinois.edu/view/6367/205427", sponsorLogo: "", sponsorURL: "")
let study2 = Tip(header: "Take Breaks", title: "Taking hourly 5-minute walking breaks boosts energy levels, sharpens focus, and reduces fatigue", body: "These 5-minute breaks were also more valuable than a single 30-minute walking break. Also, research found that people who took outdoor breaks and did not check their smartphones returned feeling happier and more rested than people who walked indoors and checked their smartphones." , sourceName: "Inc.", sourceURL: "https://www.inc.com/marcel-schwantes/3-winning-habits-youll-find-in-most-successful-people-this-year.html", sponsorLogo: "", sponsorURL: "")
let study3 = Tip(header: "Study Better", title: "Drink water. Mild dehydration can lower a person's energy level and ability to think clearly", body: "Researchers found that a lack of water resulted in headaches, fatigue, and difficulty in concentrating. The study's participants also considered cognitive tasks as more difficult when slightly dehydrated." , sourceName: "The Atlantic", sourceURL: "https://www.theatlantic.com/health/archive/2012/02/study-of-the-day-mild-dehydration-alters-mood-makes-thinking-hard/253320/", sponsorLogo: "", sponsorURL: "")

//1
let study4 = Tip(header: "Study Better", title: "Study: Students who studied in quiet environments performed more than 60% better in an exam than students who studied while listening to music that had lyrics.", body: "And students who studied while listening to music without lyrics did better than those who studied to music with lyrics. \n\nWhile listening to music can improve your mood, it does not help you learn new or complex material. \n\nThis is because music – especially tunes with lyrics – takes up processing space in your memory.", sourceName: "The Guardian", sourceURL: "https://www.theguardian.com/teacher-network/2018/mar/14/sound-how-listening-music-hinders-learning-lessons-research", sponsorLogo: "", sponsorURL: "")
let study5 = Tip(header: "Study Better 📵", title: "Don't have your phone near you", body: "Study: Researchers asked participants to either place phones on their desks, in their bags/pockets, or in another room entirely. \n\nThey were then tested on their working memory capacity, as well as problem-solving. \n\nAccording to the study, \"the mere presence of participants' own smartphones impaired their performance.\" \n\nEven though the participants received no notifications from their phones during the test, they performed worse than the participants who had their phones in another room." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.ca/2017/06/30/cellphones-distraction-study_a_23009948/", sponsorLogo: "", sponsorURL: "")
let study6 = Tip(header: "Study Better 🏋️‍♂️", title: "Exercise first", body: "Studies show our brainpower gets a boost following even a short workout, as our bodies are pumping oxygen and nutrients to the brain. \n\nExercising shortly before studying can make you more alert and able to learn new information better." , sourceName: "The Best Colleges", sourceURL: "https://www.thebestcolleges.org/17-scientifically-proven-ways-to-study-better-this-year/", sponsorLogo: "", sponsorURL: "")
let study7 = Tip(header: "Study Better 🧘‍♀️", title: "Get into a calm and positive mood first", body: "Research: Being stressed can produce corticotropin-releasing hormones that disrupt the process of creating and storing memories. \n\nTaking study breaks to go for a walk or take in a few deep breaths will help lower your stress level and improve your studying." , sourceName: "The Best Colleges", sourceURL: "https://www.thebestcolleges.org/17-scientifically-proven-ways-to-study-better-this-year/", sponsorLogo: "", sponsorURL: "")
//2
let study8 = Tip(header: "Study Better", title: "People learn better when using multiple, 1-hour studying sessions (with breaks) rather than one extended session (without breaks)", body: "Brain synapses encode memories in your brain much better when activated at approximately one-hour intervals. \n\nSome sets of synapses require hourlong delays between activation in order to store new information. \n\nThis explains why prolonged ‘cramming’ is inefficient – only one set of synapses is being engaged." , sourceName: "University of California, Irvine", sourceURL: "https://news.uci.edu/2014/12/10/multiple-short-learning-sessions-strengthen-memory-formation-in-fragile-x-syndrome-2/", sponsorLogo: "", sponsorURL: "")
let study9 = Tip(header: "Study Better ⏳", title: "Learn better by studying a short time on each class every day over several days and weeks", body: "The total amount of time spent studying will be the same (or less) than 1 or 2 marathon library sessions, but you will learn the information more deeply and retain much more for the long term. \n\nLong study sessions lead to a lack of concentration and thus a lack of learning and retention." , sourceName: "University of North Carolina at Chapel Hill", sourceURL: "https://learningcenter.unc.edu/tips-and-tools/studying-101-study-smarter-not-harder/", sponsorLogo: "", sponsorURL: "")
let study10 = Tip(header: "Study Better 🏛", title: "Studying in multiple locations helps you remember more later", body: "Rather than sitting at your desk or the kitchen table studying for hours, finding some new scenery will create new associations in your brain and make it easier to recall information later. \n\nAlso, by changing your environment, your brain is forced to retrieve the same information in different places and will, therefore, see that information as more useful and worth holding onto." , sourceName: "Open Colleges", sourceURL: "https://www.opencolleges.edu.au/informed/features/how-does-the-brain-learn-best-10-smart-studying-strategies/", sponsorLogo: "", sponsorURL: "")
let study11 = Tip(header: "Increase Your GPA", title: "Compared to just studying for an exam, students who answered these questions were less stressed and outperformed those who did not, by an average of ⅓ of a letter grade (e.g. B+ to A-)", body: "Answer these 5 questions: \n\n• What grade do you want on the exam? \n\n• How important is it to get this grade? \n\n• What's the probability that you will get this grade? \n\n• What kinds of questions might the exam include? \n\n• What resources will you use to study and why will they be useful (lecture notes, practice exam questions, textbook readings, instructor office hours, private tutoring)?", sourceName: "Quartz", sourceURL: "https://qz.com/978273/a-stanford-professors-15-minute-study-hack-improves-test-grades-by-a-third-of-a-grade/", sponsorLogo: "", sponsorURL: "")

//3
let study12 = Tip(header: "Study Better", title: "Psychologists agree that reviewing the material you just learned soon after class is better than 'cramming' right before exam day", body: "The first time you hear a lecture or study something new, you retain up to 80% of what you’ve just learned -- if you review the material within 24 hours. And this effect is cumulative; so after a week, you may retain 100% of the same information after only 5 minutes of review." , sourceName: "The Best Colleges", sourceURL: "https://www.thebestcolleges.org/17-scientifically-proven-ways-to-study-better-this-year/", sponsorLogo: "", sponsorURL: "")
let study13 = Tip(header: "Study Better", title: "Taking practice tests (or quizzing yourself) is a better way to study than simply re-reading your notes or textbook", body: "Students who took practice tests while studying on their own performed better on long-term memory recall exams than students who simply studied by re-reading the material. Also, the researchers found that students who rely on repeated study alone often come away with a false sense of confidence about their mastery of the material." , sourceName: "Washington University in St. Louis", sourceURL: "https://source.wustl.edu/2006/03/repeated-testtaking-better-for-retention-than-repeated-studying-research-shows/", sponsorLogo: "", sponsorURL: "")
let study14 = Tip(header: "Don't Multi-Task", title: "Just spotting an email mid-task is enough to reduce your IQ by 10 points as your mind wanders", body: "Multitasking prevents deep, creative thought as we switch back and forth, backtracking, constantly starting from scratch each time. \n\nOur limited cognitive capacity to multi-task means we are never fully focussed on either task.", sourceName: "The Telegraph", sourceURL: "https://www.telegraph.co.uk/health-fitness/mind/7-everyday-ways-you-are-ruining-your-iq/", sponsorLogo: "", sponsorURL: "")
let study15 = Tip(header: "", title: "Research: Learners retain 90% of what they learn when they explain/teach the concept to someone else, or use it immediately", body: "Teaching others what you know is one of the most effective ways to learn, remember and recall new information. \n\nAn effective way to learn, process, retain and remember information is to learn half the time and share half the time. \n\nExample, instead of completing a book, aim to read 50 percent and try recalling, sharing, or writing down the key ideas you have learned before proceeding.", sourceName: "Medium", sourceURL: "https://medium.com/personal-growth/6-habits-of-super-learners-63d466a254fd", sponsorLogo: "", sponsorURL: "")


//WEEK 1
//0
let studyTipArray0 = [study0, study1, study2, study3]
let studyTopic0 = Topic(title: studyTitle, icon: studyIcon, tip: studyTipArray0)
//1
let studyTipArray1 = [study4, study5, study6, study7]
let studyTopic1 = Topic(title: studyTitle, icon: studyIcon, tip: studyTipArray1)
//2
let studyTipArray2 = [study8, study9, study10, study11]
let studyTopic2 = Topic(title: studyTitle, icon: studyIcon, tip: studyTipArray2)
//3 WIP-1
let studyTipArray3 = [study12, study13, study14, study15]
let studyTopic3 = Topic(title: studyTitle, icon: studyIcon, tip: studyTipArray3)

// RANDOM
let studyTipArrays = [studyTipArray0, studyTipArray1, studyTipArray2, studyTipArray3,]
let studyTopic = Topic(title: studyTitle, icon: studyIcon, tip: studyTipArrays.random())
let studyTopics = Topics(title: studyTitle, icon: studyIcon, topics: [studyTopic,])

//Day
let studyDay0 = Tip(header: "Study Better", title: "Study: Taking a daytime nap shortly after learning new information improves long-term memory recall", body: "Children who took a daytime nap shortly after learning new information scored 10% higher on a memory test taken the next day compared to children who did not nap during the day. \n\nIt seems that there is an additional benefit of having the sleep occur in close proximity to the learning." , sourceName: "University of Massachusetts Amherst", sourceURL: "https://www.umass.edu/newsoffice/article/sleep-research-study-finds-daytime-naps", sponsorLogo: "", sponsorURL: "")
let studyDay1 = Tip(header: "FYI", title: "Benefits of studying during the day:", body: "• Brain is refreshed from a good sleep and can absorb more information \n\n• Natural light keeps you alert \n\n• Doesn't disrupt your sleep schedule \n\n• Able to study with classmates" , sourceName: "Oxford Learning", sourceURL: "https://www.oxfordlearning.com/best-time-day-to-study/", sponsorLogo: "", sponsorURL: "")

//WEEK 1
//0 WIP-2
let studyDayTipArray0 = [studyDay0, study6, study9, study12]
let studyDayTopic0 = Topic(title: studyTitle, icon: studyIcon, tip: studyDayTipArray0)

let studyDayTipArray1 = [studyDay1, study5, study10, study15]
let studyDayTopic1 = Topic(title: studyTitle, icon: studyIcon, tip: studyDayTipArray1)

// RANDOM
let studyDayTipArrays = [studyDayTipArray0, studyDayTipArray1]
let studyDayTopic = Topic(title: studyTitle, icon: studyIcon, tip: studyTipArrays.random())
let studyDayTopics = Topics(title: studyTitle, icon: studyIcon, topics: [studyDayTopic,])

//PM
//0
let studyPM0 = Tip(header: "Study Better", title: "Studying before bedtime is best because our brains create stronger memories during sleep", body: "Participants who engaged in studying before bedtime were able to recall information from their memory at a higher rate and felt more confident about their answers compared to those who studied in the morning. \n\nThis is because, the cortex of the brain, which is important for building neural connections for creating memories of newly learned information, becomes very active when during sleep." , sourceName: "Chronobiology", sourceURL: "https://www.chronobiology.com/scientists-say-studying-before-bedtime-is-best/", sponsorLogo: "", sponsorURL: "")
let studyPM1 = Tip(header: "Increase Your GPA", title: "Go to bed at the same time every day. Students who had irregular sleep hours ended up with worse grades compared to those who went to bed and woke up at the same time every day", body: "Irregular sleepers had a delayed release of the sleep hormone melatonin by 2.6 hours compared to students with more regular sleep patterns. \n\nIncreased exposure to daytime light and less exposure to electronic light-emitting devices before bedtime, may be effective in improving sleep regularity." , sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2017/06/170612094045.htm", sponsorLogo: "", sponsorURL: "")
let studyPM2 = Tip(header: "Increase Your GPA", title: "Don't stay up too late. Being a night owl is linked with lower GPA", body: "Study of college freshman: Evening types scored below a B average and morning and intermediate types scored above a B average. The evening types also slept on average 41 minutes less than other students on school nights. \n\nHave a: \n• regular bedtime routine \n• regular bedtime \n• regular wake time \n• sleep in a comfortable bed" , sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2009/06/090609072813.htm", sponsorLogo: "", sponsorURL: "")
let studyPM3 = Tip(header: "FYI", title: "Benefits of studying during the evening:", body: "• More peace and quiet \n\n• Fewer distractions \n\n• A clearer mind for creative thinking \n\n• Sleeping after studying can consolidate information and improve recall" , sourceName: "Oxford Learning", sourceURL: "https://www.oxfordlearning.com/best-time-day-to-study/", sponsorLogo: "", sponsorURL: "")

//1
let studyPM4 = Tip(header: "Study Smarter", title: "Research: Taking short breaks, early and often, can help you learn things better and even improve your retention rate", body: "Experts at the Louisiana State University’s Center for Academic Success recommends 30–50 minutes sessions. “Anything less than 30 is just not enough, but anything more than 50 is too much information for your brain to take in at one time,” says learning strategies graduate assistant Ellen Dunn. \n\nOur brains’ neural networks need to time process information, so spacing out your learning helps you memorise new information more efficiently — give your brain enough time to rest and recover." , sourceName: "Medium", sourceURL: "https://medium.com/personal-growth/6-habits-of-super-learners-63d466a254fd", sponsorLogo: "", sponsorURL: "")

//WEEK 1
//0
let studyPMTipArray0 = [studyPM0, studyPM1, studyPM2, studyPM3]
let studyPMTopic0 = Topic(title: studyTitle, icon: studyIcon, tip: studyPMTipArray0)

let studyPMTipArray1 = [studyPM4, studyPM1, studyPM2, studyPM3]

// RANDOM
let studyPMTipArrays = [studyPMTipArray0, studyPMTipArray1,]
let studyPMTopic = Topic(title: studyTitle, icon: studyIcon, tip: studyPMTipArrays.random())
let studyPMTopics = Topics(title: studyTitle, icon: studyIcon, topics: [studyPMTopic,])

//REDO:
let studyWIP1 = Tip(header: "📖", title: "The most effective way to become a National Spelling Bee champion is solitary study", body: "The highest performers in the National Spelling Bee spend the most time by studying long lists alone. \n\n\"Deliberate practice\" is the most effective, but probably the least fun, way to learn to spell obscure words. \n\nIn fact, it is the elite performer’s willingness to engage in hard or, quite often, very boring, practice that distinguishes people who are good at their chosen activity from those who are the very best at it." , sourceName: "UC Berkeley", sourceURL: "https://greatergood.berkeley.edu/article/item/a_new_theory_of_elite_performance", sponsorLogo: "", sponsorURL: "")









// MARK: - Single
let singleTitle = "Single"
let singleIcon = Constants.Icon.single

// MARK: Single, AM
//0
let singleAM0 = Tip(header: "Dating Coach", title: "• Leave your house with the mindset of being open, approachable and ready to connect. \n• Keep your face up and make eye contact with those around you.", body: "Get in physical proximity to anyone you're interested in, and initiate a 'hello.' \n\nIf you make this a practice, it will become a lot less scary and awkward.", sourceName: "Bustle", sourceURL: "https://www.bustle.com/p/the-top-ways-singles-meet-people-when-theyre-not-online-dating-8082924", sponsorLogo: "", sponsorURL: "")
let singleAM1 = Tip(header: "Where To Find A Date?", title: "Survey of 550 people in a relationship, ranked the most popular ways people are finding their romantic partners", body: "1. Through Friends: 39% \n\n2. At Work: 15% \n\n3. At Bars And Other Public Areas: 12% \n\n4. At Sport/Religion/Hobby Events: 9% \n\n5. On The Internet And Dating Apps: 8% \n\n6. Through Family: 7% \n\n7. School: 6%", sourceName: "Bustle", sourceURL: "https://www.bustle.com/p/the-most-popular-ways-people-are-meeting-their-significant-others-in-2018-8075828", sponsorLogo: "", sponsorURL: "")
let singleAM2 = Tip(header: "Increase Attraction", title: "Be nice. Study: When people hear about how nice somebody is, they find the person's face more attractive", body: "In contrast, when people hear about how mean somebody is, they find the person's face less attractive.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/how-to-become-more-attractive-2015-11", sponsorLogo: "", sponsorURL: "")
let singleAM3 = Tip(header: "Increase Attraction", title: "Practice mindfulness meditation", body: "Speed-dating study: Mindful men tended to receive higher attractiveness ratings from women. \n\nThe researchers suggest that mindful men may have been more attentive to partners during the brief interactions and may have done a better job at regulating their anxiety, which in turn made them more attractive.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/how-to-become-more-attractive-2015-11", sponsorLogo: "", sponsorURL: "")

//1
let singleAM4 = Tip(header: "Increase Attraction", title: "Wear Red", body: "Study: Simply wearing the color red makes a man more attractive, powerful, and sexually desirable to women. \n\nThe same researchers also found that men are more attracted to women in red.", sourceName: "University of Rochester", sourceURL: "https://www.rochester.edu/news/show.php?id=3663", sponsorLogo: "", sponsorURL: "")
let singleAM5 = Tip(header: "Dating Coach", title: "Be the type of person you want to attract. Be the best you can be so you attract the best", body: "Too many people are tying to fill voids in themselves by looking for a partner who has the quality they lack. \n\nThis may work on a surface level but it doesn't work on a deeper level.", sourceName: "Bustle", sourceURL: "https://www.bustle.com/articles/181737-9-matchmakers-share-their-best-dating-advice-for-singles", sponsorLogo: "", sponsorURL: "")
let singleAM6 = Tip(header: "Dating Coach", title: "Take a minute: Put some effort into looking your best because you may run into someone you find attractive", body: "Whether it's at work, at a dentist appointment, or running errands, if you're single you never know who you are going to run into. \n\nLooking your best increases your confidence and self-esteem and that resonates with everyone around you and draws the [potential partners] in like a magnet.", sourceName: "Bustle", sourceURL: "https://www.bustle.com/articles/181737-9-matchmakers-share-their-best-dating-advice-for-singles", sponsorLogo: "", sponsorURL: "")
let singleAM7 = Tip(header: "Increase Happiness", title: "Commit to someone compatible with you who shares your interests and values and whose company you enjoy", body: "Research: You're more likely to be happy if you're married or in a committed relationship. \n\nLoners are mostly unhappy. \n\nThat said, picking the right partner can determine 90% of your personal happiness or lack thereof.", sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")

//2
let singleAM8 = Tip(header: "Signs Your Crush Likes You", title: "If your crush texts you in the morning, this is a good sign—it means you’re one of the first things they think of when they wake up.", body: "If your crush only texts you late at night or when they’re bored, they might not be as interested as you are.", sourceName: "wikiHow", sourceURL: "https://www.wikihow.com/Tell-That-Your-Crush-Likes-You-Back", sponsorLogo: "", sponsorURL: "")
let singleAM9 = Tip(header: "Live Longer", title: "Don't live alone. Social isolation is a significant risk for early death and heart disease.", body: "Study: Marriage is associated with longer lifespans. The researchers concluded \"never having never been married is a better predictor of poor health outcomes than either divorce or widowhood.\"", sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/doctors-secrets-longer-life/", sponsorLogo: "", sponsorURL: "")


//WEEK 1
let singleTipAMArray0 = [singleAM0, singleAM1, singleAM2, singleAM3]
let singleTopicAM0 = Topic(title: singleTitle, icon: singleIcon, tip: singleTipAMArray0)

let singleTipAMArray1 = [singleAM4, singleAM5, singleAM6, singleAM7]
let singleTopicAM1 = Topic(title: singleTitle, icon: singleIcon, tip: singleTipAMArray1)

let singleTipAMArray2 = [singleAM8, singleAM9, singleAM2, singleAM6]
let singleTopicAM2 = Topic(title: singleTitle, icon: singleIcon, tip: singleTipAMArray2)

// RANDOM
let singleTipAMArrays = [singleTipAMArray0, singleTipAMArray1, singleTipAMArray2,]
let singleAMTopic = Topic(title: singleTitle, icon: singleIcon, tip: singleTipAMArrays.random())




// MARK: Single, Day
//0
let singleDay0 = Tip(header: "Dating Coach", title: "Maximize your chances of finding someone by paying attention to what's happening around you", body: "Put down your phone, take out your earbuds, and talk to people. \n\nEven if you're too shy to go up to someone yourself, a simple smile in their direction could encourage them to approach you.", sourceName: "Elite Daily", sourceURL: "https://www.elitedaily.com/p/this-advice-for-single-people-from-dating-experts-is-actually-really-useful-8140749", sponsorLogo: "", sponsorURL: "")
let singleDay1 = Tip(header: "Dating Coach", title: "Don't rush into a relationship for the wrong reasons. It's better to be single than to be unhappy with someone else.", body: "Learn about yourself, grow, and have fun dating people while you're single. \n\nExplore your options until you find what you're looking for. Remember, all the wrong ones lead you to the right one.", sourceName: "Elite Daily", sourceURL: "https://www.elitedaily.com/p/this-advice-for-single-people-from-dating-experts-is-actually-really-useful-8140749", sponsorLogo: "", sponsorURL: "")

let singleDay2 = Tip(header: "Dating Coach", title: "Avoid pickup lines. Focus on making the other person laugh. The more times two strangers laughed together, the higher level of attraction they reported.", body: "Study: When two strangers meet, the more times a man tries to be funny and the more a woman laughs at those attempts, the more likely it is for the woman to be interested in dating. \n\nIf you meet someone who you can laugh with, it might mean your future relationship is going to be fun and filled with good cheer.", sourceName: "The University of Kansas", sourceURL: "https://news.ku.edu/2015/08/27/first-comes-laughter-then-love-study-finds-out-why-humor-important-romantic-attraction", sponsorLogo: "", sponsorURL: "")
let singleDay3 = Tip(header: "Where To Find A Date?", title: "Ranking of the most popular ways singles are meeting people today if they're not online dating, according to a survey of over 500 singles", body: "1st. Through Friends: 60% \n\n2nd. At Bars Or Other Public Areas: 37% \n\n3rd. At Work: 27% \n\n4th. At Events Related to Sports, Religion, or Hobbies: 27% \n\n5th. Through Family: 25%", sourceName: "Bustle", sourceURL: "https://www.bustle.com/p/the-top-ways-singles-meet-people-when-theyre-not-online-dating-8082924", sponsorLogo: "", sponsorURL: "")

//1
let singleDay4 = Tip(header: "Quote", title: "Stop looking for a partner. Focus on your goals and rebuilding your life. The right person will eventually find their way to you.", body: "- Robert Tew \n\nBritish former rugby league footballer", sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/author/quotes/13848712.Robert_Tew?page=2", sponsorLogo: "", sponsorURL: "")

let singleDay5 = Tip(header: "Increase Attraction", title: "Surround yourself with friends", body: "Study: Participants rated both men and women more attractive when they were pictured in a group. \n\nHaving a few wingmen or wingwomen may increase your chances of getting your next date.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/how-to-become-more-attractive-2015-11", sponsorLogo: "", sponsorURL: "")

let singleDay6 = Tip(header: "Increase Attraction", title: "Be a leader", body: "Study: People in a group thought their group's leader was more attractive than did people who weren't in that group.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/how-to-become-more-attractive-2015-11", sponsorLogo: "", sponsorURL: "")

let singleDay7 = Tip(header: "Increase Attraction", title: "Smile more", body: "Researchers found that the stronger the smile, the more attractive a face looked. \n\nIn fact, they found, a happy facial expression appeared to compensate for relative unattractiveness.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/how-to-become-more-attractive-2015-11", sponsorLogo: "", sponsorURL: "")

//2
let singleDay8 = Tip(header: "Increase Attraction", title: "Be funny. Women are more attracted to men who can make them laugh", body: "Study: the guys who told jokes were rated more attractive and intelligent and were 3 times as likely to get the woman's number as the men who didn't. \n\nAnthropologists believe that funny people are considered to be more social and more intelligent, things that women seek in a mate.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/how-to-become-more-attractive-2015-11", sponsorLogo: "", sponsorURL: "")
let singleDay9 = Tip(header: "Body Language", title: "Cues That Increase Your Attraction", body: "Both males and females find people with available body language the most attractive. \n\nAvailable body language is: \n• smiling \n• uncrossed arms \n• uncrossed legs \n• upward gazing (not looking down at shoes or phones)", sourceName: "Science Of People", sourceURL: "https://www.scienceofpeople.com/attraction/", sponsorLogo: "", sponsorURL: "")
let singleDay10 = Tip(header: "Body Language", title: "Cues That Increase Your Attraction", body: "From an evolutionary perspective, humans are tuned into body language cues that signal fertility and youth. \n\n• For men, standing up straight, squaring the shoulders, planting feet slightly more than shoulder width apart and displaying hands are attractive for women. \n\n• For a woman, keeping your hair down, tilting your head to expose pheromones and keeping hands and wrists visible to display the soft skin of the wrists are highly attractive for men.", sourceName: "Science Of People", sourceURL: "https://www.scienceofpeople.com/attraction/", sponsorLogo: "", sponsorURL: "")
let singleDay11 = Tip(header: "Body Language", title: "Signs someone is attracted to you:", body: "• They lean in \n• They tilt their head as you speak (a sign of engagement) \n• They smile at you \n• They make eye contact with you \n• They reach out and touch your arm, hand, back or leg", sourceName: "Science Of People", sourceURL: "https://www.scienceofpeople.com/attraction/", sponsorLogo: "", sponsorURL: "")

//3
let singleDay12 = Tip(header: "Body Language", title: "How to know if a woman is attracted to you:", body: "• She exposes her neck (to release pheromones) \n\n• She tilts her chin down and looks up through her eyelashes (Called the coquette look) \n\n• She touches her hair (to release pheromones and call attention to her health) \n\n• She touches her lips to call attention to their shape", sourceName: "Science Of People", sourceURL: "https://www.scienceofpeople.com/attraction/", sponsorLogo: "", sponsorURL: "")
let singleDay13 = Tip(header: "Body Language", title: "How to know if a man is attracted to you:", body: "• They claim your space by draping an arm over your chair or shoulders \n\n• They lean into you as you speak \n\n• They take any opportunity to touch you \n\n• They rub their chin or the back of their neck (to release pheromones)", sourceName: "Science Of People", sourceURL: "https://www.scienceofpeople.com/attraction/", sponsorLogo: "", sponsorURL: "")
let singleDay14 = Tip(header: "Body Language", title: "How to know if someone is attracted (or interested) in you: Look at where their feet are pointed", body: "• When their feet are pointed directly toward you, this is a sign of attraction, or at the very least, genuine interest. \n\n• If, on the other hand, the feet are pointed away, or toward the exit, that is a sign that attraction probably is not there.", sourceName: "Science Of People", sourceURL: "https://www.scienceofpeople.com/attraction/", sponsorLogo: "", sponsorURL: "")
let singleDay15 =  Tip(header: "Body Language", title: "How to know if a woman is woman attracted to you: Look at her purse", body: "• If a woman is feeling uncomfortable or not attracted to someone, she either will clutch her bag tightly or place it in front of or covering her body. \n\n• When a woman is attracted to a man, she literally and figuratively wants nothing to stand in the way between her and her man. \n\n• If she loosely holds her purse and it is not blocking her front, this shows she is at ease and feels more attraction. \n\n• If she puts it on the floor, a nearby table, or on the back of the chair she wants it out of the way for her interactions with you. \n\n[Please note context here, if you are in a very public or potentially dangerous location, she could be gripping her purse for safety concerns, but in a casual place or on a date this can be a good indicator.]", sourceName: "Science Of People", sourceURL: "https://www.scienceofpeople.com/attraction/", sponsorLogo: "", sponsorURL: "")

//4
let singleDay16 = Tip(header: "FYI", title: "Study: 42% of married couples described themselves as \"very happy\" compared to 17% of divorced people and 23% of people who never married", body: "The person most likely to shape your sense of well-being is your romantic partner. \n\nLook for people who align with your values and interests. \n\nLook more than skin deep: While his big muscles and her pretty face may sign virtues on the surface, a sense of humor and compassion are more likely to keep you in the relationship for the long run.", sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")
let singleDay17 = Tip(header: "Signs Your Crush Likes You", title: "They make light physical contact with you", body: "Touching you on the shoulder or back, grabbing your forearm when excited, or especially brushing a hand against your leg or knee are good signs that your crush likes you back. \n\nHowever, plenty of people also tense up around people they like, so if your crush doesn't touch you at all but seems particularly quiet or nervous around you, that could also be a sign they like you back.", sourceName: "Elite Daily", sourceURL: "https://www.elitedaily.com/dating/signs-your-crush-likes-you-back/2048724", sponsorLogo: "", sponsorURL: "")
let singleDay18 = Tip(header: "Signs Your Crush Likes You", title: "They will laugh more loudly, smile more widely, and be more generally enthusiastic if they're interested in you", body: "You'll also notice that their energy will go up when they're around you — and suddenly you're way more hilarious than other people give you credit for.", sourceName: "The Insider", sourceURL: "https://www.insider.com/signs-someone-has-a-crush-on-you-2018-2#they-act-differently-around-you-than-they-do-with-other-people-1", sponsorLogo: "", sponsorURL: "")
let singleDay19 = Tip(header: "Signs Your Crush Likes You", title: "When someone likes you, you'll find that they're impressed by you", body: "They want to know about you and what you're into. \n\nThey're ready to be impressed by you because they're building up this romantic image in their head.", sourceName: "The Insider", sourceURL: "https://www.insider.com/signs-someone-has-a-crush-on-you-2018-2#they-act-differently-around-you-than-they-do-with-other-people-1", sponsorLogo: "", sponsorURL: "")

//
let singleDay20 = Tip(header: "Signs Your Crush Likes You", title: "If the person remembers details from your previous conversation — especially if that person is a man", body: "Men tend to be quite bad with details, but when we like someone all of a sudden, magically, we remember what someone said to us.", sourceName: "The Insider", sourceURL: "https://www.insider.com/signs-someone-has-a-crush-on-you-2018-2#they-act-differently-around-you-than-they-do-with-other-people-1", sponsorLogo: "", sponsorURL: "")

let singleDay21 = Tip(header: "Signs Your Crush Likes You", title: "You catch them staring at you from across the room", body: "One of the greatest things you can do is to simply reciprocate with eye contact. A couple of times, even. \n\nAll you're really doing is building up that sense of, yes I am looking at you. Yes, I do want to talk to you.", sourceName: "The Insider", sourceURL: "https://www.insider.com/signs-someone-has-a-crush-on-you-2018-2#they-act-differently-around-you-than-they-do-with-other-people-1", sponsorLogo: "", sponsorURL: "")
let singleDay22 = Tip(header: "Signs Your Crush Likes You", title: "They will try to keep the conversation going", body: "One easy trick to figure out if someone is interested in you is to — subtly — exit the conversation for a little bit. The way your crush responds can be very telling. \n\nTake a minute to talk to your friends. See if they start up the conversation again.", sourceName: "The Insider", sourceURL: "https://www.insider.com/signs-someone-has-a-crush-on-you-2018-2#they-act-differently-around-you-than-they-do-with-other-people-1", sponsorLogo: "", sponsorURL: "")

let singleDay23 = Tip(header: "Signs Your Crush Likes You", title: "People look at people they like and avoid looking at people they don’t like", body: "There is a fine line between increased eye contact and staring, which is impolite. \n\nYou can increase mutual gaze by maintaining eye contact as you turn your head to break the gaze; the other person does not perceive your extended gaze as staring because your head is turning. \n\nIf your crush maintains eye contact, they like you.", sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/let-their-words-do-the-talking/201607/5-ways-tell-someone-likes-you", sponsorLogo: "", sponsorURL: "")
//
let singleDay24 = Tip(header: "Signs Your Crush Likes You", title: "People often lightly touch the person they like", body: "Women may lightly touch the arm of the person they like. \n\nMen similarly express their like for women by engaging in playful physical activities. \n\nTouching is a good indicator that a person likes you or dislikes you. \n\nIf you casually touch another person and they abruptly pull away, the person does not like you or is not ready for a more intimate relationship.", sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/let-their-words-do-the-talking/201607/5-ways-tell-someone-likes-you", sponsorLogo: "", sponsorURL: "")

let singleDay25 = Tip(header: "Signs Your Crush Likes You", title: "People lean toward people they like, and distance themselves from people they dislike", body: "Inward leaning increases as rapport increases.", sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/let-their-words-do-the-talking/201607/5-ways-tell-someone-likes-you", sponsorLogo: "", sponsorURL: "")

let singleDay26 = Tip(header: "Signs Your Crush Likes You", title: "People who like one another mirror each other’s body positions", body: "Mirroring can help establish rapport and can also be used to test whether the person you are talking with likes you. \n\nWhen talking to your crush, mirror their body position. \n\nAt some later point in the encounter, change your body position. \n\nIf the other person mirrors you within several seconds, they probably like you.", sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/let-their-words-do-the-talking/201607/5-ways-tell-someone-likes-you", sponsorLogo: "", sponsorURL: "")

let singleDay27 = Tip(header: "Signs Your Crush Likes You", title: "People who like each remove any obstacles between them", body: "Barriers include personal items such as purses, backpacks, water bottles, cups, etc. \n\nA cup or glass can be used to monitor liking: If the person you are with places their cup or glass between the two of you, it forms a barrier signaling that rapport has not yet been established. \n\nAs the conversation continues, monitor where the person places their cup or glass. \n\nIf they place it to one side or the other, thus removing the barrier between you, they probably like you.", sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/let-their-words-do-the-talking/201607/5-ways-tell-someone-likes-you", sponsorLogo: "", sponsorURL: "")
//
let singleDay28 = Tip(header: "Signs Your Crush Likes You", title: "If your crush frequently gives you eye contact, there's a high probability they're into you", body: "Eye contact, however basic, is a form of intimacy. \n\nTaking note of something as simple as the frequency of eye contact can clue you into your crush's feelings; chances are, they won't bother to meet your eye quite so often if they're planning to keep things platonic.", sourceName: "Bustle", sourceURL: "https://www.bustle.com/articles/90451-6-ways-to-tell-if-your-crush-likes-you-because-dating-as-an-adult-can-be", sponsorLogo: "", sponsorURL: "")

let singleDay29 = Tip(header: "Signs Your Crush Likes You", title: "If you're spending time with someone and notice his/her appearance goes from messy to slightly more put together, it could be a clue that they are actively seeking to impress you", body: "Looking good for your crush is basically a natural instinct, so be on the lookout for subtle appearance changes — especially if they seem to be subconsciously taking wardrobe hints from you.", sourceName: "Bustle", sourceURL: "https://www.bustle.com/articles/90451-6-ways-to-tell-if-your-crush-likes-you-because-dating-as-an-adult-can-be", sponsorLogo: "", sponsorURL: "")

let singleDay30 = Tip(header: "Signs Your Crush Likes You", title: "If you're spending time with someone and notice his/her appearance goes from messy to slightly more put together, it could be a clue that they are actively seeking to impress you", body: "Looking good for your crush is basically a natural instinct, so be on the lookout for subtle appearance changes — especially if they seem to be subconsciously taking wardrobe hints from you.", sourceName: "Bustle", sourceURL: "https://www.bustle.com/articles/90451-6-ways-to-tell-if-your-crush-likes-you-because-dating-as-an-adult-can-be", sponsorLogo: "", sponsorURL: "")

let singleDay31 = Tip(header: "Signs Your Crush Likes You", title: "They make eye contact with you for a longer time than with the average person", body: "If your crush is making deep (intimate or extended) eye contact with you, you know you have the green light. They like you.", sourceName: "Science of People", sourceURL: "https://www.scienceofpeople.com/someone-likes-you/", sponsorLogo: "", sponsorURL: "")
//
let singleDay32 = Tip(header: "Signs Your Crush Likes You", title: "They mirror you, meaning they copy/mimick your speech or speech patterns and nonverbal behavior", body: "Examples of mirroring: \n\n• They face you with their entire body. Their top, torso, and toes are angled toward you. \n\n• They mimic your standing or seated posture. \n\n• They copy your vocal volume, pitch, and speed. \n\n• They use the same words or language as you.", sourceName: "Science of People", sourceURL: "https://www.scienceofpeople.com/someone-likes-you/", sponsorLogo: "", sponsorURL: "")

let singleDay33 = Tip(header: "Signs Your Crush Likes You", title: "They may show signs of nervousness or extra energy when you’re around them", body: "Signs of nerves mean that they want to make a good impression on you and are worried about saying or doing the wrong thing, while being hyper points to their excitement to be hanging out with you. \n\n• For example, if your crush gets flustered when talking or fidgets a little more than usual, they’re likely interested in you. \n\n• See if your crush is sweating or blushing for other signs they may be a little nervous around you.", sourceName: "wikiHow", sourceURL: "https://www.wikihow.com/Tell-That-Your-Crush-Likes-You-Back", sponsorLogo: "", sponsorURL: "")

let singleDay34 = Tip(header: "Signs Your Crush Likes You", title: "If your crush likes you back, they’ll try to steal glimpses of you whenever possible", body: "If they’re shy, they may have a hard time keeping eye contact with you and will look away often. \n\nIf they’re not shy, your crush will maintain strong eye contact if they really like you.", sourceName: "wikiHow", sourceURL: "https://www.wikihow.com/Tell-That-Your-Crush-Likes-You-Back", sponsorLogo: "", sponsorURL: "")

let singleDay35 = Tip(header: "Signs Your Crush Likes You", title: "Their feet are pointing towards you", body: "When people are attracted to one another, they mimic each other’s body language and stand facing each other. \n\nIf your crush moves their chair so that it’s pointed towards you, this is also a good sign.", sourceName: "wikiHow", sourceURL: "https://www.wikihow.com/Tell-That-Your-Crush-Likes-You-Back", sponsorLogo: "", sponsorURL: "")
//
let singleDay36 = Tip(header: "Signs Your Crush Likes You", title: "If your crush likes you back, they’ll want to know if you’re interested in or seeing anyone else.", body: "Pay attention to whether your crush asks you if you’re in a relationship, as well as any questions about what you’re looking for in someone. \n\nYour crush may be more indirect and ask your friends if you’re in a relationship instead.", sourceName: "wikiHow", sourceURL: "https://www.wikihow.com/Tell-That-Your-Crush-Likes-You-Back", sponsorLogo: "", sponsorURL: "")

let singleDay37 = Tip(header: "Signs Your Crush Likes You", title: "They ask you lots of questions about your life and interests", body: "This means they want to find out as much as possible about you because they’re genuinely interested in getting to know you. For example, they might ask you what your favorite food is, if you have any pets, or what television show is your favorite. \n\nSee if your crush listens when you talk about your life and whether or not they remember details of what you’ve told them about yourself. If you told your crush you love ice skating and they plan an outing to go to an ice rink, this is a sign they’ve been listening intently to what you tell them.", sourceName: "wikiHow", sourceURL: "https://www.wikihow.com/Tell-That-Your-Crush-Likes-You-Back", sponsorLogo: "", sponsorURL: "")

let singleDay38 = Tip(header: "Signs Your Crush Likes You", title: "Listen to them and see if they tell you things about themselves they don’t tell others", body: "Ideally if your crush likes you, it means they feel very comfortable around you and want you to get to know them super well. \n\nThese could be big topics like details about their family life or past relationships, or small tidbits of information that they’ve never thought to tell anyone else. \n\nEven if this doesn't mean your crush likes you back, it does mean that they trust you.", sourceName: "wikiHow", sourceURL: "https://www.wikihow.com/Tell-That-Your-Crush-Likes-You-Back", sponsorLogo: "", sponsorURL: "")

let singleDay39 = Tip(header: "Signs Your Crush Likes You", title: "If you tell your crush you’re cold, hungry, or have any other sort of need, see how they respond. If they try to help you by providing whatever it is you asked for, they’re showing you that they care about making you feel better", body: "For example, if your crush offers you a jacket when you say you’re cold or brings you soup when you’re sick, these are strong signs that they care about you.", sourceName: "wikiHow", sourceURL: "https://www.wikihow.com/Tell-That-Your-Crush-Likes-You-Back", sponsorLogo: "", sponsorURL: "")
//
let singleDay40 = Tip(header: "Signs Your Crush Likes You", title: "If you visit your crush and notice that they’ve picked up their room or took extra care to look nice, they may be trying to impress you", body: "Your crush could clean themselves up by styling their hair, making sure they smell fresh and clean, or picking out a nice outfit. \n\nIf someone really likes you, they’ll want to put their best foot forward to show you they’re presentable.", sourceName: "wikiHow", sourceURL: "https://www.wikihow.com/Tell-That-Your-Crush-Likes-You-Back", sponsorLogo: "", sponsorURL: "")

let singleDay41 = Tip(header: "Signs Your Crush Likes You", title: "They smile and laugh at your jokes", body: "If they smile when you smile or laugh at anything funny you say, they’re showing you they like your humor. \n\nPeople who like each other are often attracted to each other’s personality and humor.", sourceName: "wikiHow", sourceURL: "https://www.wikihow.com/Tell-That-Your-Crush-Likes-You-Back", sponsorLogo: "", sponsorURL: "")

let singleDay42 = Tip(header: "Signs Your Crush Likes You", title: "If your crush is being playful in a way that‘s funny and lighthearted, they’re likely trying to get your attention and show their affection", body: "This includes actions like calling you funny nicknames, teasing you, or joking around with you. \n\nIf your crush is showing off, this could be another sign they’re trying to get your attention.", sourceName: "wikiHow", sourceURL: "https://www.wikihow.com/Tell-That-Your-Crush-Likes-You-Back", sponsorLogo: "", sponsorURL: "")

//WEEK 1
let singleTipDayArray0 = [singleDay0, singleDay1, singleDay2, singleDay3]
let singleTopicDay0 = Topic(title: singleTitle, icon: singleIcon, tip: singleTipDayArray0)

let singleTipDayArray1 = [singleDay4, singleDay5, singleDay6, singleDay7]
let singleTopicDay1 = Topic(title: singleTitle, icon: singleIcon, tip: singleTipDayArray1)

let singleTipDayArray2 = [singleDay8, singleDay9, singleDay10, singleDay11]
let singleTopicDay2 = Topic(title: singleTitle, icon: singleIcon, tip: singleTipDayArray2)

let singleTipDayArray3 = [singleDay12, singleDay13, singleDay14, singleDay15]
let singleTopicDay3 = Topic(title: singleTitle, icon: singleIcon, tip: singleTipDayArray3)

let singleTipDayArray4 = [singleDay16, singleDay17, singleDay18, singleDay19]
let singleTopicDay4 = Topic(title: singleTitle, icon: singleIcon, tip: singleTipDayArray4)

let singleTipDayArray5 = [singleDay20, singleDay21, singleDay22, singleDay23]
let singleTopicDay5 = Topic(title: singleTitle, icon: singleIcon, tip: singleTipDayArray5)

let singleTipDayArray6 = [singleDay24, singleDay25, singleDay26, singleDay27]
let singleTopicDay6 = Topic(title: singleTitle, icon: singleIcon, tip: singleTipDayArray6)

let singleTipDayArray7 = [singleDay28, singleDay29, singleDay30, singleDay31]
let singleTipDayArray8 = [singleDay32, singleDay33, singleDay34, singleDay35]
let singleTipDayArray9 = [singleDay36, singleDay37, singleDay38, singleDay39]
let singleTipDayArray10 = [singleDay40, singleDay41, singleDay42, singleDay19]

// RANDOM
let singleTipDayArrays = [singleTipDayArray0, singleTipDayArray1, singleTipDayArray2, singleTipDayArray3, singleTipDayArray4, singleTipDayArray5, singleTipDayArray6, singleTipDayArray7, singleTipDayArray8, singleTipDayArray9, singleTipDayArray10]
let singleDayTopic = Topic(title: singleTitle, icon: singleIcon, tip: singleTipDayArrays.random())


// MARK: Single, PM
//0
let singlePM0 = Tip(header: "Dating Advice", title: "If you don't want to be single, you should be going on dates and meeting new people", body: "If you want to find love, you have to put energy into dating. You get out what you put in. \n\nIt's very unlikely that you'll stumble onto a good relationship. You have to work for it.", sourceName: "Elite Daily", sourceURL: "https://www.elitedaily.com/p/this-advice-for-single-people-from-dating-experts-is-actually-really-useful-8140749", sponsorLogo: "", sponsorURL: "")
let singlePM1 =  Tip(header: "Dating Advice", title: "Date like you are The Bachelor or The Bachelorette! \n\nIn the early stages of dating, date a few different potential partners at a time (before you define the relationship with one of them, of course!)", body: "Dating multiple people before exclusivity allows you to date in a more objective manner without putting all of your eggs in one basket and becoming emotionally attached to Mr. (or Ms.) Wrong. \n\nYou'll be able to better pinpoint the good and bad qualities about your suitors, and allow your heart and mind to guide you towards picking the best suitor.", sourceName: "Bustle", sourceURL: "https://www.bustle.com/articles/181737-9-matchmakers-share-their-best-dating-advice-for-singles", sponsorLogo: "", sponsorURL: "")

let singlePM2 = Tip(header: "Increase Attraction", title: "Online Dating - Study: Expansive body language pictures were 27% more likely to get picked for a \"yes\" match", body: "While the effect was more powerful for men, expansive body language pictures helps both men and women. \n\nExpansive body language communicates both high status and openness, which are attractive signals to possible mates.", sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/the-attraction-doctor/201709/how-our-body-language-can-make-us-attractive", sponsorLogo: "", sponsorURL: "")
let singlePM3 = Tip(header: "Increase Attraction", title: "Online Dating - Study: Participants rated pictures of people in a group as more attractive than people alone", body: "This is because we tend to “average out” faces in a group, making less attractive members appear more more attractive.", sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/advice/relationships/how-to-be-more-attractive/", sponsorLogo: "", sponsorURL: "")

//1
let singlePM4 = Tip(header: "Dating App Advice For Women", title: "Avoid displaying too many photos of yourself surrounded by your male friends", body: "Study: College-age men were less likely to rate a woman as attractive if she was shown surrounded by four men that if she was alone. \n\nResearchers estimate that the reason for this may be evolutionary-based.", sourceName: "Connected: The Surprising Power of Our Social Networks and How They Shape Our Lives", sourceURL: "https://www.amazon.com/Connected-Surprising-Power-Social-Networks-ebook/dp/B002OFVO5Y", sponsorLogo: "", sponsorURL: "")
let singlePM5 = Tip(header: "Dating App Advice For Men", title: "Include a photo of you with your female friends", body: "Study: College-age women were more likely to rate a man as attractive if shown a photo of him surrounded by four women than if shown a photo of him alone. \n\nResearchers estimate that the reason for this may be evolutionary-based.", sourceName: "Connected: The Surprising Power of Our Social Networks and How They Shape Our Lives", sourceURL: "https://www.amazon.com/Connected-Surprising-Power-Social-Networks-ebook/dp/B002OFVO5Y", sponsorLogo: "", sponsorURL: "")
let singlePM6 = Tip(header: "Post-Breakup?", title: "Studies find breakups can lead to: \n• Insomnia \n• Negative thoughts \n• Physical pain", body: "The first 30 days after a breakup is part of the natural withdrawal process. \n\nImprove your mood by going out, meeting new people, and distracting yourself with exercise, new hobbies, or watching a funny movie. \n\nAfter 30 days, if you're still feeling deep sadness, as well as feelings of worthlessness or hopelessness, then it’s a time to seek professional support.", sourceName: "Refinery29", sourceURL: "https://www.refinery29.com/en-us/cant-sleep-after-breakup", sponsorLogo: "", sponsorURL: "")





//WEEK 1
let singleTipPMArray0 = [singlePM0, singlePM1, singlePM2, singlePM3]
let singleTopicPM0 = Topic(title: singleTitle, icon: singleIcon, tip: singleTipPMArray0)

let singleTipPMArray1 = [singlePM4, singlePM5, singlePM6, singlePM1]
let singleTopicPM1 = Topic(title: singleTitle, icon: singleIcon, tip: singleTipPMArray1)

// RANDOM
let singleTipPMArrays = [singleTipPMArray0, singleTipPMArray1,]
let singlePMTopic = Topic(title: singleTitle, icon: singleIcon, tip: singleTipPMArrays.random())


let singleTipPMArray2 = [singlePM1, singlePM0, singlePM2, singlePM3]
let singleTopicPM2 = Topic(title: singleTitle, icon: singleIcon, tip: singleTipPMArray2)

let singleTipPMArray3 = [singlePM3, singlePM4, singlePM2, singlePM1]
let singleTopicPM3 = Topic(title: singleTitle, icon: singleIcon, tip: singleTipPMArray3)

let singleTipPMArray4 = [singlePM0, singlePM1, singlePM2, singlePM3]
let singleTopicPM4 = Topic(title: singleTitle, icon: singleIcon, tip: singleTipPMArray4)

let singleTipPMArray5 = [singlePM4, singlePM3, singlePM2, singlePM1]
let singleTopicPM5 = Topic(title: singleTitle, icon: singleIcon, tip: singleTipPMArray5)

let singleTipPMArray6 = [singlePM2, singlePM3, singlePM4, singlePM1]
let singleTopicPM6 = Topic(title: singleTitle, icon: singleIcon, tip: singleTipPMArray6)







// MARK: - Online Dating

let onlineDateingTip2 = Tip(header: "👍", title: "Having expansive and open body language can potentially increase your romantic attractiveness — especially when someone else has to make a quick decision about you as a mate", body: "Profile picture tips: \n\n• Be expansive. Whether you are sitting or standing, express yourself with widespread limbs and big expressions. Hold your arms wide, high above your head, or stretch them out across the table or back of a booth. \n\n• Be open. Keep your body poses open, too. Don’t cross your arms or legs (which may indicate nervousness or disinterest). And keep your hands out of your pockets. \n\n• Take up space. Get comfortable and stretch out. Use up the space around you, and don’t collapse your body inward.", sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/the-attraction-doctor/201709/how-our-body-language-can-make-us-attractive", sponsorLogo: "", sponsorURL: "")

let onlineDateingTip4 = Tip(header: "", title: "Research: Having expansive and open body language can potentially increase your romantic attractiveness — especially when someone else has to make a quick decision about you as a mate", body: "When you pose for your online dating profile, keep the following body language features in mind: \n\n• Be expansive. Whether you are sitting or standing, express yourself with widespread limbs and big expressions. Hold your arms wide, high above your head, or stretch them out across the table or back of a booth. \n\n• Be open. Keep your body poses open, too. Don’t cross your arms or legs (which may indicate nervousness or disinterest). And keep your hands out of your pockets. \n\n• Take up space. Get comfortable and stretch out. Use up the space around you, and don’t collapse your body inward.", sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/the-attraction-doctor/201709/how-our-body-language-can-make-us-attractive", sponsorLogo: "", sponsorURL: "")



// MARK: - Relationships
let relationshipTitle = "Relationship"
let relationshipIcon = Constants.Icon.relationship

//MARK: Relationships, AM

//0
let relationshipAM0 = Tip(header: "Relationship Tip", title: "Drink your first coffee — or juice — of the day with your partner", body: "Enjoying that first cup together is a way to bond and reboot your relationship for the day ahead. \n\nIf you have extra time, start the day with kindness: \n\n• Prepare it for partner \n• Bring it to your partner", sourceName: "Bustle", sourceURL: "https://www.bustle.com/articles/179623-the-best-way-to-start-your-day-with-your-partner-according-to-experts", sponsorLogo: "", sponsorURL: "")
let relationshipAM1 = Tip(header: "Increase Romance", title: "Leave a romantic note on the bathroom mirror or kitchen table", body: "Or put it in your partner’s wallet or purse. It will be sure to brighten their day.", sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/advice/relationships/40-creative-romantic-ideas/", sponsorLogo: "", sponsorURL: "")
let relationshipAM2 = Tip(header: "Relationship Tip", title: "Put the phones away and be present with your partner", body: "Focus on each other instead of your screen.", sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/advice/relationships/40-creative-romantic-ideas/", sponsorLogo: "", sponsorURL: "")
let relationshipAM3 = Tip(header: "Relationship Tip", title: "A kiss before you leave for the day should also be part of your daily routine.", body: "It begins the day with love and connection.", sourceName: "Bustle", sourceURL: "https://www.bustle.com/articles/179623-the-best-way-to-start-your-day-with-your-partner-according-to-experts", sponsorLogo: "", sponsorURL: "")

//1
let relationshipAM4 = Tip(header: "Quote", title: "Be a reflection of what you’d like to receive. If you want love, give love. If you want truth, be truthful. What you give out will always return.", body: "- Kristen Butler \n\nKristen Butler is the CEO of the Power of Positivity website." , sourceName: "Awaken The Greatness Within", sourceURL: "https://www.awakenthegreatnesswithin.com/35-inspirational-quotes-on-reflection/", sponsorLogo: "", sponsorURL: "")
let relationshipAM5 = Tip(header: "Happy Relationship Habit", title: "Compliment your partner every day — whether it’s expressing your appreciation for something they’ve done or told them, specifically, what you love about them", body: "• It validates your partner and helps them feel good about themselves. \n\n• It helps to remind you why you chose that person in the first place." , sourceName: "TIME", sourceURL: "https://time.com/5321262/science-behind-happy-healthy-relationships/", sponsorLogo: "", sponsorURL: "")
let relationshipAM6 = Tip(header: "Happy Relationship Habit", title: "Kiss your partner hello and goodbye", body: "Many people in unhappy relationships say that they can’t recall when they stopped kissing at greetings and goodbyes, it just slips away. \n\nMaking the time to make eye contact with your partner and kiss them shows that you prioritize your relationship even during the busiest of mornings or evenings. \n\n― Dr. Samantha Rodman, psychologist and dating coach" , sourceName: "Huffington Post", sourceURL: "https://www.huffpost.com/entry/habits-of-people-in-happy-relationships_n_58586201e4b08debb78ac652", sponsorLogo: "", sponsorURL: "")




//WEEK 1
//0
let relationshipAMTipArray0 = [relationshipAM0, relationshipAM1, relationshipAM2, relationshipAM3, ]
let relationshipAMTopic0 = Topic(title: relationshipTitle, icon: relationshipIcon, tip: relationshipAMTipArray0)
//(WIP 1)
let relationshipAMTipArray1 = [relationshipAM4, relationshipAM5, relationshipAM6, relationshipAM3, ]
let relationshipAMTopic1 = Topic(title: relationshipTitle, icon: relationshipIcon, tip: relationshipAMTipArray1)


// RANDOM
let relationshipAMArrays = [relationshipAMTipArray0, relationshipAMTipArray1,]
let relationshipAMTopic = Topic(title: relationshipTitle, icon: relationshipIcon, tip: relationshipAMArrays.random())






//MARK: Relationships Day

//0
let relationshipDay0 = Tip(header: "Relationship Tip", title: "Expressing gratitude can improve relationships", body: "Study: Individuals who took time to express gratitude for their partner not only felt more positive toward the other person but also felt more comfortable expressing concerns about their relationship. Express gratitude: \n\n• In-person \n• Phone call \n• Text message", sourceName: "Harvard Health Publishing", sourceURL: "https://www.health.harvard.edu/healthbeat/giving-thanks-can-make-you-happier", sponsorLogo: "", sponsorURL: "")
let relationshipDay1 = Tip(header: "Increase Happiness", title: "Be a giving partner", body: "Americans who are very giving in relationships—being emotionally available and hospitable—are much more likely to be in excellent health (48%) than those who are not (31%).", sourceName: "The New Republic", sourceURL: "https://newrepublic.com/article/119477/science-generosity-why-giving-makes-you-happy", sponsorLogo: "", sponsorURL: "")
let relationshipDay2 = Tip(header: "Increase Romance", title: "Study: Do something new and different together. Partners who regularly share new experiences report greater boosts in marital happiness than those who simply share pleasant but familiar experiences.", body: "New experiences activate the brain’s reward system, flooding it with dopamine and norepinephrine. These are the same brain circuits that are ignited in early romantic love. \n\nWhether you take a pottery class or go on a white-water rafting trip, activating your dopamine systems while you are together can help bring back the excitement you felt on your first date.", sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/guides/well/how-to-have-a-better-relationship", sponsorLogo: "", sponsorURL: "")
let relationshipDay3 = Tip(header: "Happy Relationship Habit", title: "People who report high relationship satisfaction: practice empathy, control one’s feelings and stress, and maintain positive views about their partner", body: "Understand each other’s perspectives instead of constantly trying to be right. \n\nControl your stress and emotions by keeping your mouth shut and don’t act out. If you can’t help yourself from getting mad, take a break by heading out to the gym, reading a book, playing with the dog or calling a friend — anything to get off a destructive path. \n\nReduce the amount of time you spend dwelling on negative aspects of your relationship. No partner is perfect. Focus on the positive aspects.", sourceName: "TIME", sourceURL: "https://www.nytimes.com/guides/well/how-to-have-a-better-relationship", sponsorLogo: "", sponsorURL: "")

//1
let relationshipDay4 = Tip(header: "Quote", title: "If your partner isn't bringing out the best in you, you're in the wrong relationship.", body: "- Robert Tew \n\nBritish former rugby league footballer", sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/author/quotes/13848712.Robert_Tew?page=2", sponsorLogo: "", sponsorURL: "")
let relationshipDay5 = Tip(header: "Relationship Advice", title: "People who marry when they're very young are more likely to divorce", body: "An American who weds at 25 is 11% less likely to divorce than one who marries at age 24. \n\nBut waiting too long has a downside. Past the age of about 32-even after controlling for religion, education, geographic location, and other factors-the odds of divorce increase by 5% per year for at least the next decade.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")
let relationshipDay6 = Tip(header: "Relationship Advice 🎓", title: "Finish as much education as you can before getting married", body: "Couples tend to be more satisfied with their marriages, and less likely to divorce, if they have more education before the wedding.", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/", sponsorLogo: "", sponsorURL: "")
let relationshipDay7 = Tip(header: "Happy Relationship Habit", title: "A little PDA can go a long way", body: "The happiest couples aren’t afraid to show affection to each other – even in public. \n\nSo, go ahead and hold your partner's hand when you’re shopping in the mall or snuggle up to them when you’re at the movies with your friends. \n\n― Aaron Anderson, marriage and family therapist" , sourceName: "Huffington Post", sourceURL: "https://www.huffpost.com/entry/habits-of-people-in-happy-relationships_n_58586201e4b08debb78ac652", sponsorLogo: "", sponsorURL: "")

//2
let relationshipDay8 = Tip(header: "Increase Happiness", title: "The best relationships combine two people who share similar interests and attitudes, but also allow each other independence, and who speak freely and listens well", body: "If you like dancing, running, and volunteering, find a mate who also likes those things. \n\nLong-term living works better with someone on the same level of mood and personality. \n\nLearning early in the relationship how to deal with conflict and listen effectively (\"If I understand you correctly, you just said...\") is the groundwork of a successful relationship.", sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")
let relationshipDay9 = Tip(header: "Relationship Advice", title: "Managing your money well improves your marriage or relationship", body: "Study: Nearly 9 out of 10 people who were managing their finances well said their relationship with their spouse or partner was strong. \n\nBut the number of happy relationships dropped to only about 6 in 10 when finances were cited as a sore point in the household. \n\nMore money wasn't the answer; what counted was managing that money well.", sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")
let relationshipDay10 = Tip(header: "Improve Your Relationship", title: "Research: Partners who regularly share new experiences together report greater boosts in relationship happiness than those who simply share pleasant but familiar experiences", body: "New experiences activate the brain’s reward system, flooding it with dopamine and norepinephrine. \n\nThese are the same brain circuits that are ignited in early romantic love.", sourceName: "The New York Times", sourceURL: "https://www.nytimes.com/guides/well/how-to-have-a-better-relationship", sponsorLogo: "", sponsorURL: "")
let relationshipDay11 = Tip(header: "Harvard Professor Advice", title: "Understand the job your partner needs done, and do that job reliably well", body: "Thinking about your relationship from the perspective of the job to be done is the best way to understand what's important to your partner. \n\nAsk yourself, \"What job does my partner most need me to do?\" \n\nMany unhappy relationships are often built upon selflessness. But the selflessness is based on the partners giving each other things that they want to give, and which they decide that their partner ought to want - as in, \"Honey, believe me, you are going to love this.\" \n\nBy working to truly understand the job your partner needs done, and doing it well, you can cause yourself to fall more deeply in love with your partner." , sourceName: "How Will You Measure Your Life? by Clayton Christensen", sourceURL: "https://www.amazon.com/dp/B006ID0CH4/", sponsorLogo: "", sponsorURL: "")
//3
let relationshipDay12 = Tip(header: "Billionare Warren Buffett", title: "“The biggest decision of your life is who you choose to marry. Marry the right person. It will make more difference in your life. It will change your aspirations, all kinds of things.”", body: "“You want to associate with people who are the kind of person you’d like to be. You’ll move in that direction.” \n\n“And the most important person by far in that respect is your spouse. I can’t overemphasize how important that is.” " , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2020/08/31/billionaire-warren-buffetts-best-life-and-investing-advice.html", sponsorLogo: "", sponsorURL: "")

//WEEK 1
//0
let relationshipDayTipArray0 = [relationshipDay0, relationshipDay1, relationshipDay2, relationshipDay3, ]
let relationshipDayTopic0 = Topic(title: relationshipTitle, icon: relationshipIcon, tip: relationshipDayTipArray0)

//1
let relationshipDayTipArray1 = [relationshipDay4, relationshipDay5, relationshipDay6, relationshipDay7, ]
let relationshipDayTopic1 = Topic(title: relationshipTitle, icon: relationshipIcon, tip: relationshipDayTipArray1)

//2
let relationshipDayTipArray2 = [relationshipDay8, relationshipDay9, relationshipDay10, relationshipDay11, ]
let relationshipDayTopic2 = Topic(title: relationshipTitle, icon: relationshipIcon, tip: relationshipDayTipArray2)

//3
let relationshipDayTipArray3 = [relationshipDay12, relationshipDay9, relationshipDay10, relationshipDay11, ]
let relationshipDayTopic3 = Topic(title: relationshipTitle, icon: relationshipIcon, tip: relationshipDayTipArray3)

// RANDOM
let relationshipDayArrays = [relationshipDayTipArray0, relationshipDayTipArray1, relationshipDayTipArray2, relationshipDayTipArray3]
let relationshipDayTopic = Topic(title: relationshipTitle, icon: relationshipIcon, tip: relationshipDayArrays.random())



//MARK: Relationships, PM
//0
let relationshipPM0 = Tip(header: "Quote", title: "Love doesn't just sit there, like a stone, it has to be made, like bread; remade all the time, made new.", body: "- Ursula Le Guin \n\nUrsula Le Guin was an American author." , sourceName: "Wonderful Quote", sourceURL: "https://www.wonderfulquote.com/l/relationships-quotes", sponsorLogo: "", sponsorURL: "")
let relationshipPM1 = Tip(header: "Relationship Tip - Food", title: "Avoid being hungry around your partner. Being \"hangry\" can negatively affect your relationship.", body: "When you’re hungry, you're more likely to act with anger and aggression; in relationships, these \"hangry\" moments do little to promote relationship well-being.", sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/meet-catch-and-keep/201501/7-simple-ways-you-can-become-better-partner", sponsorLogo: "", sponsorURL: "")
let relationshipPM2 =  Tip(header: "Increase Romance", title: "Study: Going dancing or to the theater increases relationship satisfaction more than going out to a movie or dinner", body: "Couples were assigned to engage in activities that were either exciting (i.e., dancing or theater) or just pleasant (i.e., going out to a movie or dinner) for 1.5 hours a week over 10 weeks. \n\nCouples who engaged in the exciting activities were happier with their relationship than couples who did the just pleasant activities with which they're familiar.", sourceName: "Inc.", sourceURL: "https://www.inc.com/marcel-schwantes/want-a-happy-successful-marriage-couples-should-be-doing-these-8-things-often-says-science.html", sponsorLogo: "", sponsorURL: "")
let relationshipPM3 = Tip(header: "Happy Relationship Habit", title: "The happiest couples don't fight over text", body: "Study: Couples who argue over text; apologize over text; and/or attempt to make decisions over text, are less happy in their relationships. \n\nWhen it comes to the big stuff, don't let an emoji take the place of your actual face.", sourceName: "Inc.", sourceURL: "https://www.inc.com/melanie-curtin/science-says-happy-couples-have-these-13-characteristics.html", sponsorLogo: "", sponsorURL: "")

//1
let relationshipPM4 = Tip(header: "Quote", title: "The ultimate test of a relationship is to disagree but to hold hands.", body: "- Alexandra Penney \n\nAlexandra Penney is an American artist, journalist and author." , sourceName: "Wonderful Quote", sourceURL: "https://www.wonderfulquote.com/l/relationships-quotes", sponsorLogo: "", sponsorURL: "")
let relationshipPM5 = Tip(header: "Relationship Tip", title: "Supporting the health of your friends' relationships will increase the health of your relationship", body: "Marriage research finds: \n\n• You're 75% more likely to get divorced if a friend or close relative gets divorced. \n\n• You're 33% more likely to get divorced if a friend of a friend gets divorced.", sourceName: "Inc.", sourceURL: "https://www.inc.com/melanie-curtin/science-says-happy-couples-have-these-13-characteristics.html", sponsorLogo: "", sponsorURL: "")
let relationshipPM6 = Tip(header: "Relationship Tip", title: "Couples who agree to share AND have clearly defined chores at home are more likely to be happier in their relationships", body: "Study: Conflict was more frequent when couples had not worked out a clear division of chores in the home and had to renegotiate responsibilities from one day to the next.  \n\nThere's less chance of resentment and tension when both of you know what chores you're supposed to do, resulting in a happier relationship.", sourceName: "Inc.", sourceURL: "https://www.inc.com/melanie-curtin/science-says-happy-couples-have-these-13-characteristics.html", sponsorLogo: "", sponsorURL: "")
let relationshipPM7 = Tip(header: "Relationship Tip", title: "Approach arguments or tough conversations with empathy and kindness from the start, not with anger or hostility", body: "Research: Couples that started tough conversations with empathy and kindness towards each other were successfully able to deescalate any negativity towards each other and were more likely to stay together. \n\nConversely, out of the 130 couples researched, all 17 couples that later divorced began their conversations with what he called a \"harsh startup\" — more displays of negative emotions and less positive emotions.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/marriage-advice-science-2019-4", sponsorLogo: "", sponsorURL: "")

//2
let relationshipPM8 = Tip(header: "Conflict", title: "When talking about conflict, use couple-focused words such as \"we,\" \"our\" and \"us\"", body: "Study: Spouses who used couple-focused words such as \"we,\" \"our\" and \"us\" when talking about a conflict also showed more affection, fewer negative behaviors such as anger, and lower physiological stress levels during the disagreement. \n\nUsing words that expressed separateness, such as \"I,\" \"you,\" and \"me,\" during the discussion was associated with marital dissatisfaction. ", sourceName: "Live Science", sourceURL: "https://www.livescience.com/14104-happy-marriage-tips.html", sponsorLogo: "", sponsorURL: "")
let relationshipPM9 = Tip(header: "Happy Relationship Habit", title: "Laugh together ― often.", body: "When couples get out of the habit of laughing together, their relationship is at risk of losing its joy and spirit. \n\n• Watch a funny movie \n• Attend a comedy show \n\n― Dr. Samantha Rodman, psychologist and dating coach" , sourceName: "Huffington Post", sourceURL: "https://www.huffpost.com/entry/habits-of-people-in-happy-relationships_n_58586201e4b08debb78ac652", sponsorLogo: "", sponsorURL: "")
let relationshipPM10 = Tip(header: "FYI - Cheaters", title: "People who have cheated before are 350% more likely to cheat again", body: "People who’ve been cheated on in the past are more likely to date a cheater again down the line. \n\nIn addition, cheaters are significantly more prone to dating other cheaters.", sourceName: "Women's Health", sourceURL: "https://www.womenshealthmag.com/relationships/a19932020/will-they-cheat-again/", sponsorLogo: "", sponsorURL: "")
let relationshipPM11 = Tip(header: "Relationship Tip", title: "Study: People were more successful in replacing bad habits for good ones if their partner made the same change, at the same time, as well", body: "For example, among women who smoked, 50% managed to quit if their partner gave up smoking too at the same time, compared with 17% of women whose partners were already non-smokers, and 8% of those whose partners were regular smokers. \n\nThe study found that men were equally affected by their partners and were more likely to quit smoking, get active, or lose weight if their partner made the same behavior change. \n\nLower your risk of disease by quitting these unhealthy habits: \n• smoking \n• excess weight \n• physical inactivity \n• poor diet \n• alcohol consumption", sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2015/01/150119124551.htm", sponsorLogo: "", sponsorURL: "")

//3
let relationshipPM12 = Tip(header: "Relationship Tip", title: "Nourish your relationship — even when you're busy", body: "If you plan a date, great. But if you're too busy this week, choose one night this week to carve out a mini-date at home." , sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/home/cleaning-organizing/successful-people-work/", sponsorLogo: "TBD", sponsorURL: "")
let relationshipPM13 = Tip(header: "Improve Your Relationship", title: "Have music playing at home", body: "Research: When music is playing at home, people become 12% physically closer than when music is not playing. \n\nWhen music is playing, couples are more likely to: \n\n• Cook together \n• Laugh together \n• Say \"I love you\"", sourceName: "Own The Day, Own Your Life", sourceURL: "https://www.amazon.com/dp/B072HLS5QJ/", sponsorLogo: "", sponsorURL: "")
let relationshipPM14 = Tip(header: "Increase Romance", title: "Laughing together can increase attraction in couples", body: "Study found the more the pair laughed together, the higher level of attraction they reported. \n\nActivities that will make you laugh together: \n• Watch a sitcom \n• Watch a comedy movie \n• Watch a stand-up special on Netflix \n• Go to a comedy show" , sourceName: "The University of Kansas", sourceURL: "https://news.ku.edu/2015/08/27/first-comes-laughter-then-love-study-finds-out-why-humor-important-romantic-attraction", sponsorLogo: "", sponsorURL: "")
let relationshipPM15 = Tip(header: "Increase Romance", title: "Natural Aphrodisiac Foods That Could Spark Romance", body: "• Avocado \n• Arugula \n• Bananas \n• Beets \n• Cherries \n• Dark chocolate \n• Honey \n• Olive oil \n• Pumpkin seeds \n• Red wine \n• Strawberries \n• Watermelon", sourceName: "The Healthy", sourceURL: "https://www.thehealthy.com/sex/aphrodisiac-foods/", sponsorLogo: "", sponsorURL: "")

//4
let relationshipPM16 = Tip(header: "Movie Night", title: "Laughing and watching funny movies increases blood flow which increases romantic performance in men and women", body: "In contrast, watching stressful or scary movies caused a restriction in blood flow. So if you're planning on romance after the movie then a comedy will be your best option.", sourceName: "Own The Day, Own Your Life", sourceURL: "https://www.amazon.com/dp/B072HLS5QJ/", sponsorLogo: "", sponsorURL: "")
let relationshipPM17 = Tip(header: "Happy Relationship Habit", title: "Talk about money / Create a monthly budget", body: "Fighting over money is one of the top reasons for divorce. \n\nUnfortunately, most couples avoid talking about money until they have money problems. \n\nForcing yourselves to talk about money before there is a problem. \n\n― Kurt Smith, therapist and counselor" , sourceName: "Huffington Post", sourceURL: "https://www.huffpost.com/entry/habits-of-people-in-happy-relationships_n_58586201e4b08debb78ac652", sponsorLogo: "", sponsorURL: "")



//WEEK 1
//0
let relationshipPMTipArray0 = [relationshipPM0, relationshipPM1, relationshipPM2, relationshipPM3, ]
let relationshipPMTopic0 = Topic(title: relationshipTitle, icon: relationshipIcon, tip: relationshipPMTipArray0)

//1
let relationshipPMTipArray1 = [relationshipPM4, relationshipPM5, relationshipPM6, relationshipPM7, ]
let relationshipPMTopic1 = Topic(title: relationshipTitle, icon: relationshipIcon, tip: relationshipPMTipArray1)

//2
let relationshipPMTipArray2 = [relationshipPM8, relationshipPM9, relationshipPM10, relationshipPM11, ]
let relationshipPMTopic2 = Topic(title: relationshipTitle, icon: relationshipIcon, tip: relationshipPMTipArray2)

//3
let relationshipPMTipArray3 = [relationshipPM12, relationshipPM13, relationshipPM14, relationshipPM15, ]
let relationshipPMTopic3 = Topic(title: relationshipTitle, icon: relationshipIcon, tip: relationshipPMTipArray3)

//3 (WIP: 1)
let relationshipPMTipArray4 = [relationshipPM16, relationshipPM17, relationshipPM2, relationshipPM3, ]
let relationshipPMTopic4 = Topic(title: relationshipTitle, icon: relationshipIcon, tip: relationshipPMTipArray4)

// RANDOM
let relationshipPMArrays = [relationshipPMTipArray0, relationshipPMTipArray1, relationshipPMTipArray2, relationshipPMTipArray3, relationshipPMTipArray4,]
let relationshipPMTopic = Topic(title: relationshipTitle, icon: relationshipIcon, tip: relationshipPMArrays.random())





//MARK: Relationships, Bedtime

let relationshipBed0 = Tip(header: "Improve Your Relationship", title: "Get 7+ hours of sleep tonight. Couples who reported poor sleep were much more likely to argue with each other", body: "Study: If both partners got less than 7 hours of sleep the previous 2 nights, their discussions were more likely to become hostile.", sourceName: "Inc.", sourceURL: "https://www.inc.com/marcel-schwantes/married-couples-studies-have-found-these-5-habits-may-instantly-improve-your-relationships.html", sponsorLogo: "", sponsorURL: "")
let relationshipBed1 = Tip(header: "Improve Your Relationship", title: "Put your smartphone away before you get into bed", body: "Study: People who rated more interruptions due to technology devices (such as computers, cell or smartphones, or TV) in their conversations, mealtimes, and time with romantic partners also reported: \n• more conflict over technology use \n• lower relationship satisfaction \n• more depressive symptoms \n• lower life satisfaction", sourceName: "Inc.", sourceURL: "https://www.inc.com/marcel-schwantes/married-couples-studies-have-found-these-5-habits-may-instantly-improve-your-relationships.html", sponsorLogo: "", sponsorURL: "")
let relationshipBed2 = Tip(header: "Improve Your Relationship", title: "Go to bed at the same time. Research: Couples who go to bed at different times report less relationship satisfaction than those on the same schedule", body: "Couples with different sleep schedules have more conflict, spend less time in shared activities and serious conversation, and have sex less frequently than couples with similar sleeping schedules. \n\nView this time as an opportunity to unwind together by talking, snuggling, and romance.", sourceName: "Focus On The Family", sourceURL: "https://www.focusonthefamily.com/marriage/better-bedtime-better-marriage/", sponsorLogo: "", sponsorURL: "")
let relationshipBed3 = Tip(header: "Relationship Tip", title: "Praising and thanking your partner should be the last things they hear before falling asleep", body: "Thank your partner for something specific that he or she did that you appreciated: “Thanks for cleaning up after dinner” or “Thanks for giving the kids a bath.” \n\nHow you say good night might affect the feeling your spouse will hold all night long.", sourceName: "Focus On The Family", sourceURL: "https://www.focusonthefamily.com/marriage/better-bedtime-better-marriage/", sponsorLogo: "", sponsorURL: "")

//1
let relationshipBed4 = Tip(header: "Improve Your Relationship", title: "Go to bed at the same time if possible. It builds connection and provides an opportunity for more intimate connecting.", body: "Too many couples go to bed at different times, leading disconnected lives in the evening after already having spent all day apart. \n\nHappy couples, however, are intentional about coming back together at bedtime and reconnecting, if only for the few minutes of brushing teeth and getting under the covers.", sourceName: "Huffington Post", sourceURL: "https://www.huffpost.com/entry/happiest-couples-do-before-bed_n_591f3d6be4b034684b0c3ff5", sponsorLogo: "", sponsorURL: "")
let relationshipBed5 = Tip(header: "Relationship Tip", title: "Kiss goodnight every night", body: "Some people don't like to sleep close together—maybe they like their space, or they get too hot—but a kiss goodnight is one of the simplest ways to connect at the end of the day.  \n\nClose out your day with a combination of physical and emotional intimacy. ", sourceName: "SELF", sourceURL: "https://www.self.com/story/6-things-to-do-before-bed-in-a-relationship", sponsorLogo: "", sponsorURL: "")
let relationshipBed6 = Tip(header: "Improve Your Relationship", title: "Get more sleep. Not getting enough sleep reduces your self-control which can negatively affect your relationship", body: "• People with higher self-control are more able to respond in constructive ways to their partners. \n\n• The more self-control a couple has, the higher their relationship quality tends to be.", sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/meet-catch-and-keep/201501/7-simple-ways-you-can-become-better-partner", sponsorLogo: "", sponsorURL: "")
let relationshipBed7 = Tip(header: "Improve Your Relationship", title: "Leave technology out of the bedroom. \n\nStudy: 46% of the respondents reported being phone snubbed or ignored by their partner.", body: "This created conflict and led to lower levels of relationship satisfaction and lower levels of life satisfaction. \n\nIf you like to check your phone or watch TV, do it after you’ve connected as a couple.", sourceName: "Focus On The Family", sourceURL: "https://www.focusonthefamily.com/marriage/better-bedtime-better-marriage/", sponsorLogo: "", sponsorURL: "")

//2
let relationshipBed8 = Tip(header: "Improve Your Relationship", title: "Listen to music with your partner at bedtime", body: "Study: Couples who listened to music at bedtime reported a 40% increase in intimacy.", sourceName: "Own The Day, Own Your Life", sourceURL: "https://www.amazon.com/dp/B072HLS5QJ/", sponsorLogo: "", sponsorURL: "")
let relationshipBed9 = Tip(header: "Live Longer", title: "Having an active sex life can help you live longer", body: "Study: Men between the ages of 45 to 59 who reported at least 2 orgasms per week were half as likely to die from coronary heart disease than their abstinent counterparts. \n\nOther studies have shown that sexual activity is linked to health benefits like lower stress lower cancer risk.", sourceName: "Eat This, Not That!", sourceURL: "https://www.eatthis.com/doctors-secrets-longer-life/", sponsorLogo: "", sponsorURL: "")


//BED
//WEEK 1
//0
let relationshipBedTipArray0 = [relationshipBed0, relationshipBed1, relationshipBed2, relationshipBed3,]
let relationshipBedTopic0 = Topic(title: relationshipTitle, icon: relationshipIcon, tip: relationshipBedTipArray0)

//1
let relationshipBedTipArray1 = [relationshipBed4, relationshipBed5, relationshipBed6, relationshipBed7,]
let relationshipBedTopic1 = Topic(title: relationshipTitle, icon: relationshipIcon, tip: relationshipBedTipArray1)

//2 WIP-3
let relationshipBedTipArray2 = [relationshipBed8, relationshipBed9, relationshipBed6, relationshipBed2,]
let relationshipBedTopic2 = Topic(title: relationshipTitle, icon: relationshipIcon, tip: relationshipBedTipArray2)

// RANDOM
let relationshipBedArrays = [relationshipBedTipArray0, relationshipBedTipArray1, relationshipBedTipArray2,]
let relationshipBedTopic = Topic(title: relationshipTitle, icon: relationshipIcon, tip: relationshipBedArrays.random())


// MARK: - Widow
//TODO: WIP
let widow1 = Tip(header: "", title: "Widowed Men: When a wife dies, the husband's risk of death during the first year of widowhood rises abruptly to 30%-100%", body: "Widowed men often find themselves cut off from the social world and lacking social support. \n\nYet, within a few years, widowed men's risk of death declines from this peak.", sourceName: "Connected: The Surprising Power of Our Social Networks and How They Shape Our Lives", sourceURL: "https://www.amazon.com/Connected-Surprising-Power-Social-Networks-ebook/dp/B002OFVO5Y", sponsorLogo: "", sponsorURL: "")


// MARK: - Pre-Marriage

let preMarriage1 = Tip(header: "", title: "A variety of investigators have shown that the bigger the age difference (up to certain limits) between an older husband and a younger wife, the better for both parties when it comes to the health benefits of marriage.", body: "If marriage works to provide health by improving women's economic well-being and men's social well-being, then, on average, older men and younger women are better able to provide these benefits to each other.", sourceName: "Connected: The Surprising Power of Our Social Networks and How They Shape Our Lives", sourceURL: "https://www.amazon.com/Connected-Surprising-Power-Social-Networks-ebook/dp/B002OFVO5Y", sponsorLogo: "", sponsorURL: "")

let relationship25 = Tip(header: "👰", title: "Couples that dated for at least 1 year before marriage were 20% less likely to divorce than those who made the move quickly. Couples that had dated for more than 3 years were even less likely to divorce. ", body: " ", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")// WIP
let relationship26 = Tip(header: "💍", title: "The more a couple spent on its wedding and engagement ring, the more likely they were to divorce", body: " ", sourceName: "When: The Scientific Secrets of Perfect Timing", sourceURL: "https://www.amazon.com/gp/product/B072Q985YX/ref=oh_aui_d_detailpage_o00_?ie=UTF8&psc=1", sponsorLogo: "", sponsorURL: "")// WIP

let relationship27 = Tip(header: "👫", title: "High-conflict marriages without much affection, turn out to be very bad for our health, perhaps worse than getting divorced", body: "80-year-old men and women who were happily partnered reported that on the days when they had more physical pain, their mood remained just as happy, while those in unhappy relationships had their physical pain magnified by being in more emotional pain. \n\nPeople who are in relationships where they feel they can count on their partner in times of need actually have a sharper, longer-lasting ability to remember things. All the same, those who were in a relationship where they felt they couldn't count on their partner experienced early memory decline.", sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2017/10/31/this-harvard-study-reveals-how-you-can-be-happier-and-more-successful.html", sponsorLogo: "", sponsorURL: "")

//MARK: - MARRIAGE
let marriage1 = Tip(header: "👰", title: "Women are most likely to cheat between 6 and 10 years of a relationship, and men are most likely to cheat after 11 years", body: "The research identified being female, being more religious, and being married for a shorter amount of time as the 3 most influential factors in people resisting cheating. \n\nThe decision to stay out of an affair was motivated more by internal than external factors-fear of being alone and the desire to adhere to moral standards were found to be more influential in keeping people out of extramarital affairs than concerns of how cheating would impact their kids or partner.", sourceName: "Men's Health", sourceURL: "https://www.menshealth.com/sex-women/a19541650/marriage-when-is-cheating-most-likely-to-happen/", sponsorLogo: "", sponsorURL: "")

let marriage2 = Tip(header: "👰", title: "The best age to get married seems to be somewhere between 28 and 32", body: "Overall, those who marry before age 25 tend to be more likely to divorce than those who marry after that age. In general, marrying later in life tends to point to better odds of staying married.", sourceName: "Refinery29", sourceURL: "https://www.refinery29.com/2017/01/137440/divorce-rate-in-america-statistics", sponsorLogo: "", sponsorURL: "")

let marriage3 = Tip(header: "🎓", title: "People with a college degree are about 10% less likely to divorce", body: "Women who had completed their college education had a rate of about 14.2 divorces per 1,000 while those who only completed some college had a rate of 23 per 1,000.", sourceName: "Refinery29", sourceURL: "https://www.refinery29.com/2017/01/137440/divorce-rate-in-america-statistics", sponsorLogo: "", sponsorURL: "")

let marriage4 = Tip(header: "👨‍👩‍👧‍👦", title: "Couples are less likely to get divorced if they have children", body: "Ratings of happiness and life satisfaction in that same study tended to decrease after couples had children.", sourceName: "Refinery29", sourceURL: "https://www.refinery29.com/2017/01/137440/divorce-rate-in-america-statistics", sponsorLogo: "", sponsorURL: "")

let marriage5 = Tip(header: "", title: "8-year study of 1,000+ couples found that a bad marriage accelerates the normal decline in health as people age", body: "This is partly due to negative interactions with your spouse putting stress on your cardiovascular and immune systems, a kind of wear and tear that accumulates over time.", sourceName: "Connected: The Surprising Power of Our Social Networks and How They Shape Our Lives", sourceURL: "https://www.amazon.com/Connected-Surprising-Power-Social-Networks-ebook/dp/B002OFVO5Y", sponsorLogo: "", sponsorURL: "")



// MARK: - Breakups

let breakup1 = Tip(header: "🗣", title: "The most humane and fair thing to do is to break the bad news to them as quickly as possible", body: "That means that if you want to break up with someone, you shouldn't sit through an awkward dinner beforehand or tell them there's something on your mind 3 days before you see them. \n\nYou also shouldn't try and sugarcoat it so much that they get confused as to what you're talking about. All you need is a 'we need to talk' buffer — just a couple of seconds for the other person to process that bad news is coming. Think about it like a band-aid— the faster you rip it off, the better you feel.", sourceName: "Insider", sourceURL: "https://www.thisisinsider.com/best-way-you-can-break-up-with-someone-2017-10", sponsorLogo: "", sponsorURL: "")



// MARK: - PARENTING

let parentingIcon = Constants.Icon.parenting
let parentingTitle = "Parenting"

//WEEKEND

//WEEKDAY

//AM
//0
let parentingAMTip0 = Tip(header: "Increase Self-Esteem", title: "Research: Children are more likely to have a positive body image if they regularly eat breakfast with a parent", body: "Children and adolescents are under a lot of pressure from social media and pop culture when it comes to physical appearance. \n\nHaving a healthy relationship with food from eating breakfast and spending meal time with family might have a significant impact on well-being." , sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2019/03/190321130312.htm", sponsorLogo: "", sponsorURL: "")
let parentingAMTip1 = Tip(header: "Increase Success", title: "Aim for 12 hugs (or physical connections) every day with your kids", body: "As family therapist Virginia Satir famously said, \"We need 4 hugs a day for survival. We need 8 hugs a day for maintenance. We need 12 hugs a day for growth.\" \n\nSnuggle your child first thing in the morning for a few minutes, and last thing at night. Hug when you say goodbye, when you're re-united, and often in between." , sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/peaceful-parents-happy-kids/201706/10-habits-strengthen-parent-child-relationship", sponsorLogo: "", sponsorURL: "")
let parentingAMTip2 = Tip(header: "Successful Habit", title: "Have your kids make their beds in the morning. It instills good habits early on", body: "Making the bed creates a domino effect, triggering other healthy habits throughout the day and also establishes a feeling of accomplishment first thing in the morning." , sourceName: "NBC News", sourceURL: "https://www.sciencedaily.com/releases/2019/03/190321130312.htm", sponsorLogo: "", sponsorURL: "")
let parentingAMTip3 = Tip(header: "Increase Success", title: "75-Year Study: Kids who do chores are more successful adults", body: "You want kids to develop a pitch-in mindset, a mindset that says, there's some unpleasant work, someone's got to do it, it might as well be me ... that that's what gets you ahead in the workplace. \n\nBy making them do chores - taking out the garbage, doing their own laundry - they realize I have to do the work of life in order to be part of life.", sourceName: "Inc.", sourceURL: "https://www.inc.com/bill-murphy-jr/kids-who-do-chores-are-more-successful-adults-according-to-science.html", sponsorLogo: "", sponsorURL: "")


//1
let parentingAMTip4 = Tip(header: "Quote", title: "Never fear spoiling children by making them too happy. Happiness is the atmosphere in which all good affections grow.", body: "- Thomas Bray \n\nWas an English priest and his work is recognized as the first major coordinated effort to establish libraries in America.", sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/mental-wealth/201704/10-ways-protect-the-brain-daily-screen-time", sponsorLogo: "", sponsorURL: "")
let parentingAMTip5 = Tip(header: "Increase IQ", title: "Study: Children fed healthy diets in early age may have a slightly higher IQ, while those on heavier junk food diets may have a slightly reduced IQ", body: "Children who were breastfed at six months and had a healthy diet regularly including foods such as legumes, cheese, fruit and vegetables at 15 and 24 months, had IQs 1-2 points higher at 8 years. \n\nChildren who had an unhealthy diet regularly involving biscuits, chocolate, sweets, soft drinks and chips in the first 2 years of life had IQs 1-2 points lower." , sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2012/08/120807095740.htm", sponsorLogo: "", sponsorURL: "")
let parentingAMTip6 = Tip(header: "Increase IQ", title: "Study: Infants who were breastfed for more than 6 months had an average higher IQ of 3.8 points over infants who were bottlefed", body: "However, the study suggests the IQ difference is not mainly due to nutrients in the milk but the closer biological interaction among infants and mothers during breastfeeding." , sourceName: "GoodTherapy", sourceURL: "https://www.goodtherapy.org/blog/infant-child-nutrition-breastfeeding-iq-0816125", sponsorLogo: "", sponsorURL: "")
let parentingAMTip7 = Tip(header: "Increase Intelligence", title: "Children who are held, rocked, soothed and attended to by an \"in tune\" parent have larger brains than children who are touched less or who are outright neglected", body: "Eye contact, in particular, fosters bonding and stimulates brain development, and children these days receive less eye contact than ever because of both kids and parents being locked onto screens. \n\nEye contact, face to face interaction, touch, and observing body language all help children learn to regulate emotion and  arousal, develop a sense of self, and build capacity for intimacy.", sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/mental-wealth/201704/10-ways-protect-the-brain-daily-screen-time", sponsorLogo: "", sponsorURL: "")

//2
let parentingAMTip8 = Tip(header: "Increase Success", title: "Research: Kids who do chores have higher GPAs and were more likely to have successful relationships and careers", body: "One study found that kids with the highest GPA’s did more chores, had less than 30 minutes of daily screen-time, and spent more time with their parents. \n\nAnother study showed that children who started doing chores at age 3 or 4 were more likely to have successful relationships and careers and were more self-sufficient.", sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/mental-wealth/201704/10-ways-protect-the-brain-daily-screen-time", sponsorLogo: "", sponsorURL: "")
let parentingAMTip9 = Tip(header: "Catch Kids Doing Something Right", title: "\"You made your bed without being asked — that's terrific!\" or \"I was watching you play with your sister and you were very patient.\" \n\nThese statements help encourage good behavior over the long run than repeated scoldings.", body: "Have you ever stopped to think about how many times you react negatively to your kids on a given day? \n\nHow would you feel about a boss who treated you with that much negative guidance, even if it was well-intentioned? \n\nMake a point of finding something to praise every day. Be generous with rewards — your love, hugs, and compliments are often great rewards. \n\nSoon you will find you are \"growing\" more of the behavior you would like to see." , sourceName: "KidsHealth", sourceURL: "https://kidshealth.org/en/parents/nine-steps.html", sponsorLogo: "", sponsorURL: "")
let parentingAMTip10 = Tip(header: "Increase Intelligence", title: "Study: Children who eat breakfast show improved memory and test grades", body: "Good Breakfast: \n• Solid fruit \n• Solid vegetables \n• Omelet \n• Oatmeal \n• Whole grain toast \n• Whole grain cold cereal \n• Peanut butter \n• Walnuts \n\nBad Breakfast: \n• Fruit juice \n• Sugar cereal \n• Donut \n• Pastry \n• Pancakes \n• Waffles \n• Soda" , sourceName: "NBC News", sourceURL: "http://www.nbcnews.com/id/15201937/ns/health-diet_and_nutrition/t/what-you-eat-breakfast-sets-tone-day/#.XeKtgTJKjGI", sponsorLogo: "", sponsorURL: "")
let parentingAMTip11 = Tip(header: "Prevent Weight Gain", title: "Study: 3 out of 4 home-packed lunches are less nutritious than the average school lunch", body: "A meat-loaded sub, bacon-flavored chips, Juicy Juice, and a double-stuffed Oreo is not the best way to show your child you love them. \n\nThink twice before packing a lunch for your child." , sourceName: "Slim By Design", sourceURL: "https://www.slimbydesign.com/", sponsorLogo: "", sponsorURL: "")

//4
let parentingAMTip12 = Tip(header: "Avoid Traffic-Related Air Pollution", title: "Study: Significant early childhood exposure to traffic-related air pollution is associated with structural changes in the brain at the age of 12", body: "The results of this study suggest that where you live and the air you breathe can affect how your brain develops. \n\nThis loss may be enough to influence the development of various physical and mental processes." , sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2020/01/200124155107.htm", sponsorLogo: "", sponsorURL: "")
let parentingAMTip13 = Tip(header: "Increase Success", title: "Study: Adolescent who practice religion on a regular basis do better in school than those who do not practice religion", body: "Adolescents who attend religious services, pray on a regular basis, and emphasize the role of faith in their daily lives had an average GPA of 3.22. \n\nHowever, adolescents who believe that a God exists but avoid religious involvement and broader issues of the relevance of religion for their life had an average GPA of 2.93. \n\nBeing religious helps adolescents in middle and high school because they are rewarded for being obedient and respectful and for having self-control. \n\nAnd religious communities socialize adolescents to cultivate two habits highly valued in public schools: conscientiousness and cooperation." , sourceName: "Stanford University", sourceURL: "https://ed.stanford.edu/news/religiously-engaged-adolescents-demonstrate-habits-help-them-get-better-grades-stanford-scholar", sponsorLogo: "", sponsorURL: "")



//AM
//WEEK 1
//0
let parentingAMTipArray0 = [parentingAMTip0, parentingAMTip1, parentingAMTip2, parentingAMTip3]
let parentingAMTopic0 = Topic(title: parentingTitle, icon: parentingIcon, tip: parentingAMTipArray0)

let parentingAMTipArray1 = [parentingAMTip4, parentingAMTip5, parentingAMTip6, parentingAMTip7]
let parentingAMTopic1 = Topic(title: parentingTitle, icon: parentingIcon, tip: parentingAMTipArray1)

let parentingAMTipArray2 = [parentingAMTip8, parentingAMTip9, parentingAMTip10, parentingAMTip11]
let parentingAMTopic2 = Topic(title: parentingTitle, icon: parentingIcon, tip: parentingAMTipArray2)
//WIP 4
let parentingAMTipArray3 = [parentingAMTip12, parentingAMTip13, parentingAMTip6, parentingAMTip7]
let parentingAMTopic3 = Topic(title: parentingTitle, icon: parentingIcon, tip: parentingAMTipArray3)



// RANDOM
let parentingAMArrays = [parentingAMTipArray0, parentingAMTipArray1, parentingAMTipArray2, parentingAMTipArray3, parentingAMTipArray4]
let parentingAMTopic = Topic(title: parentingTitle, icon: parentingIcon, tip: parentingAMArrays.random())
let parentingAMTopics = Topics(title: parentingTitle, icon: parentingIcon, topics: [parentingAMTopic,])


//WIP 4
let parentingAMTipArray4 = [parentingAMTip1, parentingAMTip0, parentingAMTip2, parentingAMTip3]
let parentingAMTopic4 = Topic(title: parentingTitle, icon: parentingIcon, tip: parentingAMTipArray4)
//WIP 4
let parentingAMTipArray5 = [parentingAMTip10, parentingAMTip9, parentingAMTip8, parentingAMTip7]
let parentingAMTopic5 = Topic(title: parentingTitle, icon: parentingIcon, tip: parentingAMTipArray5)
//WIP 4
let parentingAMTipArray6 = [parentingAMTip11, parentingAMTip5, parentingAMTip4, parentingAMTip10]
let parentingAMTopic6 = Topic(title: parentingTitle, icon: parentingIcon, tip: parentingAMTipArray6)


//Mid Day
let parentingDayTip0 = Tip(header: "Increase IQ 🤓", title: "Study of 4th-6th graders revealed that kids who napped 😴 3+ times per week benefit from a 7.6% increase in academic performance in Grade 6", body: "Midday napping  correlated with greater happiness, self-control, and grit; fewer behavioral problems; and higher IQ. \n\nThe more students sleep during the day, the greater the benefit of naps on many of these measures." , sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2019/05/190531135828.htm", sponsorLogo: "", sponsorURL: "")
let parentingDayTip1 = Tip(header: "Get Your Kids Outside 🌲", title: "Moderate to vigorous exercise and time outdoors correlates to better academic performance", body: "Study: Moderate to vigorous activity, especially in boys, directly correlated to better reading and arithmetic skills. \n\nChildren who had more sedentary lives had poorer skills in both reading and math." , sourceName: "Huffington Post", sourceURL: "https://www.huffingtonpost.com/entry/5-benefits-of-being-outdoors_us_5938266ce4b014ae8c69dce0", sponsorLogo: "TBD", sponsorURL: "")
let parentingDayTip2 = Tip(header: "Quote 🎶", title: "\"Each day I find some quiet time to listen to at least one current piece of music.\"", body: "\"I find that it has a meditative effect on me, and as I try to understand the lyrics and decode the music, my mind clears and I am recharged.\" \n\n\"Exploring new music also gives me an opportunity to connect better with my 18-, 20-, and 22-year-old sons. I will never be cool to them, but sometimes a simple song can trigger a really meaningful and unpredictable conversation.\" \n\n-Rob Price, president and CEO of School of Rock" , sourceName: "Inc.", sourceURL: "https://www.inc.com/christina-desmarais/31-simple-daily-habits-that-separate-high-achievers-from-everyone-else.html", sponsorLogo: "TBD", sponsorURL: "")
let parentingDayTip3 = Tip(header: "Pregnant? 🤰", title: "Try to avoid stress during pregnancy", body: "Study: Children exposed to high cortisol levels in the womb, caused by maternal stress, suffer an average verbal IQ loss of 3.83 points. \n\nCommon stressful events include moving, serious illness, financial stress, and death of a loved one." , sourceName: "The Institute for Ethics and Emerging Technologies", sourceURL: "https://ieet.org/index.php/IEET2/more/pellissier20120109", sponsorLogo: "TBD", sponsorURL: "")

//2
let parentingDayTip4 = Tip(header: "Increase IQ", title: "Breastfeeding is good for your child's IQ", body: "Studies report a 2-7 point IQ gap in children who don’t receive breast milk." , sourceName: "The Institute for Ethics and Emerging Technologies", sourceURL: "https://ieet.org/index.php/IEET2/more/pellissier20120109", sponsorLogo: "TBD", sponsorURL: "")
let parentingDayTip5 = Tip(header: "Enforce No-Screen Time", title: "Research: The brains of kids can be permanently altered when they spend too much time using tablets and smartphones. Specifically, the development of certain abilities is impeded, including focus and attention, vocabulary, and social skills.", body: "The American Academy of Pediatrics states: \n\n• Children 0-18 months should have no screen time at all, other than video-chatting. \n\n• Kids 2-5 years old should have no more than 60 minutes of screen time a day. \n\n• Kids 6 years and older can have screen time as long as it doesn't take the place of adequate sleep, exercise, and social interaction." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/science-says-most-successful-kids-have-parents-who-do-9-things-10#3-enforce-no-screen-time-3", sponsorLogo: "TBD", sponsorURL: "")
let parentingDayTip6 = Tip(header: "Increase Success", title: "Teach your kids delayed gratification by training them to have habits that must be accomplished every day — even when they don't feel like doing them", body: "The classic Marshmallow Experiment of 1972 involved placing a marshmallow in front of a young child, with the promise of a second marshmallow if he or she could refrain from eating the squishy blob while a researcher stepped out of the room for 15 minutes. \n\nFollow-up studies over the next 40 years found that the children who were able to resist the temptation to eat the marshmallow grew up to be people with better social skills, higher test scores, and a lower incidence of substance abuse. \n\nThey also turned out to be less obese and better able to deal with stress." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/science-says-most-successful-kids-have-parents-who-do-9-things-10#3-enforce-no-screen-time-3", sponsorLogo: "TBD", sponsorURL: "")
let parentingDayTip7 = Tip(header: "Increase IQ", title: "Getting your kids to read for fun leads to higher grades in school", body: "Study: We compared children from the same social backgrounds who achieved similar tested abilities at ages five and 10, and discovered that those who frequently read books at age 10 and more than once a week when they were 16 had higher test results than those who read less. \n\nIn other words, reading for pleasure was linked to greater intellectual progress, in vocabulary, spelling, and mathematics." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/science-says-most-successful-kids-have-parents-who-do-9-things-10#3-enforce-no-screen-time-3", sponsorLogo: "TBD", sponsorURL: "")
//3
let parentingDayTip8 = Tip(header: "Reduce Risk", title: "Buy organic foods. Kids who eat nonorganic foods have a higher risk of ADHD", body: "Study: Pesticide residues were 4 times more likely on nonorganic produce than on organic produce. \n\nAnother study found a 50%-90% increased risk of ADHD in children with the highest levels of pesticides in their urine, compared to those with the lowest levels.", sourceName: "Psychology Today", sourceURL: "https://www.psychologytoday.com/us/blog/mental-wealth/201704/10-ways-protect-the-brain-daily-screen-time", sponsorLogo: "", sponsorURL: "")
let parentingDayTip9 = Tip(header: "Reduce Risk", title: "Avoid feeding your kids foods that contain the food dyes, such as Yellow #5, because it increases their risk of bad behavioral changes", body: "Food dye Yellow #5, found mac-and-cheese boxes and Kraft singles marketed to kids, has been correlated with behavioral changes including irritability, restlessness, depression, and difficultly sleeping.", sourceName: "Own The Day, Own Your Life", sourceURL: "https://www.amazon.com/dp/B072HLS5QJ/", sponsorLogo: "", sponsorURL: "")
let parentingDayTip10 = Tip(header: "Clinical Psychologist Advice", title: "Let your kids fail and let them learn from their failures", body: "Kids who experience failure: \n\n• Learn to cope, a skill that's needed in the real world. \n\n• Realize the need for hard work and sustained efforts. \n\n• Build resilience and become more willing to attempt difficult tasks because they are not afraid to fail. \n\nYour willingness to see your child struggle communicates that you believe they are capable and that they can handle any outcome, even a negative one" , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/science-says-most-successful-kids-have-parents-who-do-9-things-10#3-enforce-no-screen-time-3", sponsorLogo: "TBD", sponsorURL: "")
let parentingDayTip11 = Tip(header: "Benefits Of Pets", title: "Pet ownership improves your child's mental and physical development", body: "Research: Pets have helped kids with no brothers or sisters develop greater empathy, high self-esteem, and increased participation in social and physical activities.", sourceName: "Own The Day, Own Your Life", sourceURL: "https://www.amazon.com/dp/B072HLS5QJ/", sponsorLogo: "", sponsorURL: "")

//4
let parentingDayTip12 = Tip(header: "Help Your Kids Eat Healthier", title: " Instead of asking what they want, ask them what their hero would eat?", body: "Researchers offered 20 kids, apple slices or French fries. 1 chose apple slices and 19 chose French fries. \n\nLater, they asked the kids, \"What would Batman eat, apple slices or French Fries?\" \n\nAfter the kids answered for Batman, they asked, \"What do you want, apple slices or French fries?\" \n\nThe number of kids who ordered apple slices increased from 1 to 9 - almost half of them. \n\nNote: This only works if you ask them right before they order.", sourceName: "Slim By Design", sourceURL: "https://www.slimbydesign.com/", sponsorLogo: "", sponsorURL: "")
let parentingDayTip13 = Tip(header: "Help Your Kids Eat Healthier", title: "Study: Elementary-school kids are 35% more likely to take fruit that's been cut up compared to whole fruit", body: "Buy a fruit sectionizer. One push = 6 pieces. \n\nIf you keep fruit in the fridge, put it on the middle shelf, or cut it up and put it in plastic bags.", sourceName: "Slim By Design", sourceURL: "https://www.slimbydesign.com/", sponsorLogo: "", sponsorURL: "")
let parentingDayTip14 = Tip(header: "Financial Advice", title: "If you support anyone financially, have a large debt load, work a dangerous job, or are a business owner, you should consider buying life insurance", body: "At the very least, check with your company's HR team to find out if you're offered coverage through your job. \n\nIt's usually not enough, but it's a good place to start.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/money-advice-to-get-ahead-of-your-friends", sponsorLogo: "", sponsorURL: "")
let parentingDayTip15 = Tip(header: "Live Longer", title: "Successful centenarians put their families first", body: "They keep aging parents and grandparents nearby or in their home, which also lowers the disease and mortality rates of their children. \n\nThey commit to a life partner (which can add up to 3 years of life expectancy). \n\nThe invest in their children with time and love, which makes the children more likely to be caretakers when the time comes.", sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")
//5
let parentingDayTip16 = Tip(header: "Increase Success", title: "Study: Children who receive warmth and acceptancehave from their mother less likely to enter abusive relationships later in life", body: "30%+ of teens are victim of physical, emotional or sexual relationship abuse by a romantic partner. \n\nChildren form internal working models about themselves based on the quality of their relationship with their parents. \n\nIf a parent is abusive or inconsistent, children learn to view themselves as unlovable. \n\nBut positive parenting behaviors characterized by acceptance and warmth help children form positive internal working models of themselves as lovable and worthy of respect. \n\nParents who are better able to communicate and resolve disagreements will have less conflict in the household and can model appropriate conflict resolution skills to their children.", sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2019/10/191030100043.htm", sponsorLogo: "", sponsorURL: "")
let parentingDayTip17 = Tip(header: "Millionaire Habit 🎓", title: "Rich parents invest in top-notch education to secure and preserve their children's social status", body: "In 2014, the top 1% spent 860% more than the national average on education, from high-end preschools to SAT tutors to Ivy League tuition. \n\nRich parents are spending millions to live within walking distance of the country's best schools— an investment in hopes of setting their children up for a successful, well-connected future.", sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/discreet-wealth-new-status-symbol-rich-people-2018-11", sponsorLogo: "", sponsorURL: "")
let parentingDayTip18 = Tip(header: "Warning", title: "Reducing screentime with toddlers helps them improve their developmental skills", body: "Study: Preschool kids who get too much screen time, on video games, internet-connected devices, and television screens are among those showing delays and deficits in learning by the time they enter school at the age of 5. \n\nThe Canadian Pediatrics Society recommends that children aged 2-5 spend no more than 1 hour per day with high-quality programming, geared towards learning and development. \n\nThe study also showed an association between excessive screen time and negative physical, behavioral and cognitive outcomes for the children tested. \n\nChildren who had excessive screen time were failing to meet developmental milestones in language and communication, problem-solving, and fine and gross motor skills. \n\nWhen a child's days are consumed with screen time, they aren’t getting enough physical activity, which means they aren’t developing the motor skills they need to run, ride a bike, or throw a ball. \n\nFurthermore, a lot of the positive stimulation that helps kids with their physical and cognitive development comes from interactions with caregivers. \n\nBut, when kids are in front of their screens, these important parent-child interactions aren’t happening, and this can delay or derail children’s development. \n\nCreate a family media plan. \n\nThis involves controlling the number of hours spent in front of screens but it can also include establishing device-free zones (such as the dinner table) and baskets where everybody puts their devices at certain points of the day, to make room for family connection." , sourceName: "University of Calgary", sourceURL: "https://ucalgary.ca/utoday/issue/2019-01-28/excessive-screen-time-linked-preschool-learning-delays", sponsorLogo: "", sponsorURL: "")
let parentingDayTip19 = Tip(header: "Warning", title: "For children under age 5, drowning is a leading cause of accidental death", body: "Children under age one most often drown in bathtubs, buckets, and toilets. \n\nAlways be within arm's reach because a child can drown in as little as 2 inches of water, and it happens quickly and silently. \n\nKeep the toilet lid down, and keep young children out of the bathroom when unsupervised." , sourceName: "Today", sourceURL: "https://www.today.com/health/tub-drownings-can-happen-minutes-when-it-safe-leave-child-t65606", sponsorLogo: "", sponsorURL: "")


//WEEK 1
//0
let parentingDayTipArray0 = [parentingDayTip0, parentingDayTip1, parentingDayTip2, parentingDayTip3]
let parentingDayTopic0 = Topic(title: parentingTitle, icon: parentingIcon, tip: parentingDayTipArray0)
//1
let parentingDayTipArray1 = [parentingDayTip4, parentingDayTip5, parentingDayTip6, parentingDayTip7]
let parentingDayTopic1 = Topic(title: parentingTitle, icon: parentingIcon, tip: parentingDayTipArray1)
//2
let parentingDayTipArray2 = [parentingDayTip8, parentingDayTip9, parentingDayTip10, parentingDayTip11]
let parentingDayTopic2 = Topic(title: parentingTitle, icon: parentingIcon, tip: parentingDayTipArray2)
//3
let parentingDayTipArray3 = [parentingDayTip12, parentingDayTip13, parentingDayTip14, parentingDayTip15]
let parentingDayTopic3 = Topic(title: parentingTitle, icon: parentingIcon, tip: parentingDayTipArray3)
//4 WIP
let parentingDayTipArray4 = [parentingDayTip16, parentingDayTip17, parentingDayTip2, parentingDayTip3]
let parentingDayTopic4 = Topic(title: parentingTitle, icon: parentingIcon, tip: parentingDayTipArray4)

// RANDOM
let parentingDayArrays = [parentingDayTipArray0, parentingDayTipArray1, parentingDayTipArray2, parentingDayTipArray3, parentingDayTipArray4]
let parentingDayTopic = Topic(title: parentingTitle, icon: parentingIcon, tip: parentingDayArrays.random())
let parentingDayTopics = Topics(title: parentingTitle, icon: parentingIcon, topics: [parentingDayTopic,])



//5 WIP
let parentingDayTipArray5 = [parentingDayTip4, parentingDayTip5, parentingDayTip6, parentingDayTip7]
let parentingDayTopic5 = Topic(title: parentingTitle, icon: parentingIcon, tip: parentingDayTipArray5)
//6 WIP
let parentingDayTipArray6 = [parentingDayTip6, parentingDayTip7, parentingDayTip8, parentingDayTip10]
let parentingDayTopic6 = Topic(title: parentingTitle, icon: parentingIcon, tip: parentingDayTipArray6)


//PM
// Dinner
//1
let parentingPMTip0 = Tip(header: "Increase Success", title: "Teens who eat with their families 5+ times a week are more likely to get better grades in school and less likely to have substance abuse problems", body: "Survey: Teens who had family dinners 5+ times a week were: \n\n• 40% more likely to get A's and B's \n• 42% less likely to drink alcohol \n• 59% less likely to smoke cigarettes \n• 66% less likely to try marijuana \n\nAt a time when kids are under a lot of stress, having regular mealtimes are a great time for parents to listen and show support for their kids." , sourceName: "ABC News", sourceURL: "https://abcnews.go.com/WNT/Health/story?id=1123055&page=1", sponsorLogo: "", sponsorURL: "")
let parentingPMTip1 = Tip(header: "Increase Success", title: "For young children, dinnertime conversation increases vocabulary more than being read aloud", body: "Researchers counted the number of rare words – those not found on a list of 3,000 most common words – that the families used during dinner conversation. \n\nYoung kids learned 1,000 rare words at the dinner table, compared to only 143 from parents reading storybooks aloud. \n\nKids who have a large vocabulary read earlier and more easily." , sourceName: "The Washington Post", sourceURL: "https://www.washingtonpost.com/posteverything/wp/2015/01/12/the-most-important-thing-you-can-do-with-your-kids-eat-dinner-with-them/?utm_term=.21a61555e2d4", sponsorLogo: "", sponsorURL: "")
let parentingPMTip2 = Tip(header: "Warning", title: "Study: American kindergartners who watched TV during dinner were more likely to be overweight by the time they were in 3rd grade", body: "In addition, a study of Northern European kids found that children were significantly more likely to be overweight the more often they viewed TV during dinner." , sourceName: "The Washington Post", sourceURL: "https://www.washingtonpost.com/posteverything/wp/2015/01/12/the-most-important-thing-you-can-do-with-your-kids-eat-dinner-with-them/?utm_term=.21a61555e2d4", sponsorLogo: "", sponsorURL: "")
let parentingPMTip3 = Tip(header: "Warning 🍟", title: "People living in communities with higher prevalence of fast-food restaurants were significantly less able to enjoy pleasurable activities that require savoring", body: "Fast food can incite people to feel more impatient, diminishing their ability to slow down and savor life's simpler joys. \n\nThe study's author suggests that if you want to raise kids where they're less impatient and able to delay gratification, then you should choose to live in a neighborhood where there is a lower concentration of fast-food restaurants." , sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2014/06/140602155905.htm", sponsorLogo: "", sponsorURL: "")

//2
let parentingPMTip4 = Tip(header: "Healthy Habit", title: "Sitting down to a family meal more often and cutting down on TV watching to 2 or fewer hours a day can help keep children from becoming overweight", body: "Study: Children who eat meals with their families eat more healthy foods than children who don't eat as many meals with their families. \n\nKids who watched the most TV (more than 2 hours a day) were at the greatest risk of being or becoming overweight." , sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2007/01/070131112409.htm", sponsorLogo: "", sponsorURL: "")
let parentingPMTip5 = Tip(header: "Healthy Habit", title: "Study: Eating together as a family during a child's adolescence resulted in adults who ate more fruit, dark-green and orange vegetables and key nutrients, and drank less soft drinks", body: "For both sexes, frequency of family meals as adolescents predicted improved diet quality during adulthood, eating dinner more frequently as adults, placing a higher priority on structured meals, and a higher priority on social eating." , sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2007/01/070131112409.htm", sponsorLogo: "", sponsorURL: "")
let parentingPMTip6 = Tip(header: "Increase Success", title: "Making it clear you have ambitions for your child's future and being a nagging parent helps to increase your child's success", body: "Study: Parents who consistently displayed high expectations for their children were: \n\n• More likely to attend college. \n• Less likely to become pregnant as teenagers. \n• Less likely to have prolonged periods of unemployment. \n• Less likely to get stuck in dead-end, low-wage jobs. \n\nNagging your child about finishing up their homework may not thrill them at the time, but they’ll thank you later in life." , sourceName: "Inc.", sourceURL: "https://www.inc.com/bill-murphy-jr/want-to-raise-successful-kids-science-says-do-these-5-things-every-day.html", sponsorLogo: "", sponsorURL: "")
let parentingPMTip7 = Tip(header: "Increase IQ", title: "Study: Children who eat fish at least once a week sleep better and have IQ scores that are 4 points higher, on average, than those who consume fish less frequently or not at all", body: "Children should be introduced to it early on. \n\n Consumption even once a week moves a family into the \"high\" fish-eating group as defined in the study." , sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2017/12/171221101341.htm", sponsorLogo: "", sponsorURL: "")



//3
let parentingPMTip8 = Tip(header: "Healthy Habit 🍓", title: "Children who eat regular family dinners also consume more fruits, vegetables, vitamins and micronutrients, as well as fewer fried foods and soft drinks", body: "The nutritional benefits keep paying dividends even after kids grow up: young adults who ate regular family meals as teens are less likely to be obese and more likely to eat healthily once they live on their own." , sourceName: "The Washington Post", sourceURL: "https://www.washingtonpost.com/posteverything/wp/2015/01/12/the-most-important-thing-you-can-do-with-your-kids-eat-dinner-with-them/", sponsorLogo: "", sponsorURL: "")

let parentingPMTip9 = Tip(header: "Increase Success", title: "Praise them for their effort instead of their natural abilities. It helps them develop a growth mindset instead of a fixed mindset", body: "• Natural ability praise (bad): Great job! You're so smart! \n• Effort praise (good): Great job! You worked hard and figured it out! \n\nIf you praise them for their natural intelligence, you're praising them for a) something they had nothing to do with achieving, and b) something they can't do anything to improve. But when you praise them for their effort, you're encouraging them to develop grit and a growth mindset to be successful in life. \n\nThe effects of these praise strategies are quantifiable even children are as young as 1 to 3 years of age." , sourceName: "Inc.", sourceURL: "https://www.inc.com/bill-murphy-jr/want-to-raise-successful-kids-science-says-do-these-5-things-every-day.html", sponsorLogo: "", sponsorURL: "")
let parentingPMTip10 = Tip(header: "Warning", title: "Avoid feeding your kids foods high in fat and sugar because it can lower their IQ", body: "Study: Children who eat a poor diet (high fat and sugar) have an IQ 5 points lower than those with a health-conscious diet (salad, rice, pasta, fish, fruit)." , sourceName: "The Institute for Ethics and Emerging Technologies", sourceURL: "https://ieet.org/index.php/IEET2/more/pellissier20120109", sponsorLogo: "", sponsorURL: "")
let parentingPMTip11 = Tip(header: "Increase IQ", title: "Spend quality time with your kids tonight. Maternal bonding is important for your child's IQ", body: "Study: 4 year-olds who don’t have a close relationship with their mother have a lower IQ." , sourceName: "The Institute for Ethics and Emerging Technologies", sourceURL: "https://ieet.org/index.php/IEET2/more/pellissier20120109", sponsorLogo: "", sponsorURL: "")

//4
let parentingPMTip12 = Tip(header: "Reduce Overeating", title: "Turn down the lights and music - or TV - when you eat dinner at home", body: "Your family will probably eat a little slower, eat a little less, and like it a little more." , sourceName: "Slim By Design", sourceURL: "https://www.slimbydesign.com/", sponsorLogo: "", sponsorURL: "")

let parentingPMTip13 = Tip(header: "Increase Success", title: "Read to your kids. It helps them get ahead in school", body: "Research: Babies whose parents read to them have better language, literacy, and early reading skills four years later before starting elementary school." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/science-says-most-successful-kids-have-parents-who-do-9-things-10#7-read-to-them-7", sponsorLogo: "", sponsorURL: "")

let parentingPMTip14 = Tip(header: "Healthy Habit", title: "Ask your kids what they had for lunch and snacks at school today", body: "Although they might fudge a little on what they remember to report, it might help prompt them to eat better the next day, knowing they might be asked." , sourceName: "Slim By Design", sourceURL: "https://www.slimbydesign.com/", sponsorLogo: "", sponsorURL: "")

let parentingPMTip15 = Tip(header: "Increase Success", title: "Encourage your kides to travel; especially to another country", body: "Survey of 1,000+ teachers linked several benefits for the lives of students who travel internationally: \n\n• Increased tolerance of other cultures and ethnicities (74% agree) \n\n• Increased willingness to know/learn/explore (73% agree) \n\n• Increased independence, self-esteem, and confidence (69% agree) \n\n• Being more outgoing (51% agree) \n\n• Increased attractiveness to college admissions (42% agree) \n\nThe survey also asked teachers about domestic travel and found similar benefits for students." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/science-says-most-successful-kids-have-parents-who-do-9-things-10#7-read-to-them-7", sponsorLogo: "", sponsorURL: "")

//5
let parentingPMTip16 = Tip(header: "Healthy Choice", title: "Help your kids eater better at home...", body: "Put precut veggies on the middle shelf of the fridge and cookies out of sight. \n\nBuy more tempting salad dressing with cool names and less tempting bread. \n\nSet salad bowls on the dinner table every night." , sourceName: "Slim By Design", sourceURL: "https://www.slimbydesign.com/", sponsorLogo: "", sponsorURL: "")
let parentingPMTip17 = Tip(header: "Increase Success", title: "Girls who play team sports are more likely to graduate from college, find a job, and be employed in male-dominated industries", body: "There’s even a direct link between playing sports in high school and earning a bigger salary as an adult. \n\nLearning to own victory and survive defeat in sports is apparently good training for owning triumphs and surviving setbacks at work.", sourceName: "The Atlantic", sourceURL: "https://www.theatlantic.com/magazine/archive/2014/05/the-confidence-gap/359815/", sponsorLogo: "", sponsorURL: "")
let parentingPMTip18 = Tip(header: "Increase Success", title: "Teaching your kids to cook strongly predicts their future nutritional well-being", body: "Study: Adolescents' confidence in cooking ability led to fewer fast food meals, more meals as a family, and more frequent preparation of meals with vegetables in adulthood, according to a new study." , sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2018/04/180417181125.htm", sponsorLogo: "", sponsorURL: "")//Night or weekend

let parentingPMTip19 = Tip(header: "Warning", title: "Research: Children who live near transportation noise are more likely to test poorly for language and cognitive skills and have lower reading scores", body: "Chronic noise impairs a child’s development and may have a lifelong effect on educational attainment and overall health. \n\nNumerous studies now show that children exposed to households or classrooms near airplane flight paths, railways or highways are slower in their development of cognitive and language skills and have lower reading scores. \n\nThe report concludes, citing children as particularly vulnerable to the effects of chronic urban and suburban racket. \n\nOne study in New York City found that reading scores of sixth-grade students whose classrooms faced train tracks were a year behind those on the quieter side of the building. \n\nResearchers also found that the Munich students near the working airports had significantly higher levels of the stress hormones adrenaline and cortisol and markedly higher blood pressure readings than children in quieter neighborhoods.", sourceName: "American Psychological Association", sourceURL: "https://www.apa.org/monitor/2011/07-08/silence.aspx", sponsorLogo: "", sponsorURL: "")

//
let parentingPMTip20 = Tip(header: "Foods That Make Your Kid Taller", title: "Foods that can help your child become taller by making their bones, joints, and body healthy and strong:", body: "• Beans \n• Chicken \n• Almonds \n• Leafy Greens \n• Yogurt \n• Seet potatoes \n• Quinoa \n• Eggs \n• Berries \n• Salmon \n• Milk" , sourceName: "Healthline", sourceURL: "https://www.healthline.com/nutrition/foods-that-make-you-taller#The-bottom-line", sponsorLogo: "", sponsorURL: "")



//WEEK 1
//0
let parentingPMTipArray0 = [parentingPMTip0, parentingPMTip1, parentingPMTip2, parentingPMTip3]
let parentingPMTopic0 = Topic(title: parentingTitle, icon: parentingIcon, tip: parentingPMTipArray0)
//1
let parentingPMTipArray1 = [parentingPMTip4, parentingPMTip5, parentingPMTip6, parentingPMTip7]
let parentingPMTopic1 = Topic(title: parentingTitle, icon: parentingIcon, tip: parentingPMTipArray1)
//2
let parentingPMTipArray2 = [parentingPMTip8, parentingPMTip9, parentingPMTip10, parentingPMTip11]
let parentingPMTopic2 = Topic(title: parentingTitle, icon: parentingIcon, tip: parentingPMTipArray2)
//3
let parentingPMTipArray3 = [parentingPMTip12, parentingPMTip13, parentingPMTip14, parentingPMTip15]
let parentingPMTopic3 = Topic(title: parentingTitle, icon: parentingIcon, tip: parentingPMTipArray3)
//4
let parentingPMTipArray4 = [parentingPMTip16, parentingPMTip17, parentingPMTip18, parentingPMTip19]
let parentingPMTopic4 = Topic(title: parentingTitle, icon: parentingIcon, tip: parentingPMTipArray4)
//4 WIP
let parentingPMTipArray5 = [parentingPMTip20, parentingPMTip17, parentingPMTip18, parentingPMTip19]
let parentingPMTopic5 = Topic(title: parentingTitle, icon: parentingIcon, tip: parentingPMTipArray5)


// RANDOM
let parentingPMArrays = [parentingPMTipArray0, parentingPMTipArray1, parentingPMTipArray2, parentingPMTipArray3, parentingPMTipArray4]
let parentingPMTopic = Topic(title: parentingTitle, icon: parentingIcon, tip: parentingPMArrays.random())
let parentingPMTopics = Topics(title: parentingTitle, icon: parentingIcon, topics: [parentingPMTopic,])




// Bedtime
// 0
let parentingBedtimeTip0 = Tip(header: "Increase Success 📵", title: "Don't allow screentime within an hour of bedtime. Keep smartphones and tablets out of the bedroom after \"lights-out\" time", body: "The blue light emitted by electronic screens tricks our brains into thinking it’s still daytime, and then we don’t produce enough of the sleep hormone melatonin to fall asleep quickly and get high-quality sleep. \n\nSleep deprivation among teens spiked after 2012 – just as smartphone use became common." , sourceName: "The Conversation", sourceURL: "https://theconversation.com/worry-over-kids-excessive-smartphone-use-is-more-justified-than-ever-before-108585", sponsorLogo: "", sponsorURL: "")
let parentingBedtimeTip1 = Tip(header: "Sleep Experts", title: "Teens need 9+ hours of sleep a night", body: "In 2015, 43% of U.S. teens reported sleeping less than 7 hours a night on most nights – meaning almost half of U.S. teens are significantly sleep-deprived. \n\nResearchers found that teens who spent more time with their friends in person or on sports or exercise actually slept more. \n\nHowever, teens who spent more time online and on social media were more likely to sleep less, making it the most likely cause of teen sleep deprivation. \n\nTeens who don’t sleep enough perform more poorly in school and are at greater risk of developing obesity. Sleep deprivation is also linked to anxiety and depression." , sourceName: "The Conversation", sourceURL: "https://theconversation.com/teens-are-sleeping-less-but-theres-a-surprisingly-easy-fix-85157", sponsorLogo: "", sponsorURL: "")
let parentingBedtimeTip2 = Tip(header: "Increase Success", title: "Read to your kids daily. Young children whose parents read them 5 books a day enter kindergarten having heard about 1.4 million more words than kids who were never read to.", body: "Kids who hear more vocabulary words are going to pick up reading skills more quickly and easily when they enter school. \n\nEven kids who read only one book a day will hear about 290,000 more words by age 5 than those who don't regularly read books with a parent. \n\nParents can get access to books that are appropriate for their children at the local library." , sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2019/04/190404074947.htm", sponsorLogo: "", sponsorURL: "")
let parentingBedtimeTip3 = Tip(header: "Increase IQ", title: "Study: The most influential time of a child's language learning is between 18 months and 3 years of age. Therefore, it's important to read to children often from an early age", body: "Reading aloud to a child before the child can speak positively influences the number of words the child learns. \n\nBy sitting with an adult who is reading books, children become aware of letters and words, and it will be easier for them to read when starting school." , sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2015/10/151014110402.htm", sponsorLogo: "", sponsorURL: "")

//1
let parentingBedtimeTip4 = Tip(header: "Billionaire Habit", title: "Bill Gates doesn't allow his kids to use technology or look at screens one hour before bedtime", body: "Gates said having a screen-free \"bedtime hour\" helps his kids get to sleep at a reasonable hour. \n\nThough there are many perks to having digital tools at your disposal, it's important to acknowledge that overuse can be damaging." , sourceName: "Business Insider", sourceURL: "https://www.businessinsider.com/tech-execs-screen-time-children-bill-gates-steve-jobs-2019-9#microsoft-cofounder-bill-gates-and-his-wife-melinda-did-not-permit-their-children-to-have-cellphones-until-the-age-of-14-1", sponsorLogo: "", sponsorURL: "")
let parentingBedtimeTip5 = Tip(header: "Expert Advice", title: "The American Academy of Pediatrics recommends that parents need to read to their children from the earliest ages", body: "Infants, even? Yep. While the youngest babies might not understand your words, the impact of your reading aloud to them is thought to have at least two benefits: \n\n• bonding over verbal exchanges between parent and child, and \n• demonstrating how communication itself works. \n\nThe stronger their language skills are when they reach kindergarten, the more prepared they are to be able to read. The better they read, the more likely they will graduate from high school, achieve higher education, enjoy positive familial relationships, and attain economic security." , sourceName: "Inc.", sourceURL: "https://www.inc.com/bill-murphy-jr/neuroscience-kids-success-parents-best-practices.html", sponsorLogo: "", sponsorURL: "")
let parentingBedtimeTip6 = Tip(header: "Raise Successful Kids", title: "Instead of simply reading straight through a book with your children, embrace dramatic pauses and interrupt the story at appropriate moments to encourage your children to put themselves into the minds of the characters. Let them sort through the conflict before the characters do.", body: "Reading in this style, for example, by asking your child, \"What would you do, if you were the main character?\" helps them develop greater intellectual empathy. \n\nAt the end of the day, you're teaching your children not only to become better readers, but more effective people - intellectually empathetic people who have better relationships and lower divorce rates and who often turn out to become better bosses, co-workers, negotiators, and friends." , sourceName: "Inc.", sourceURL: "https://www.inc.com/bill-murphy-jr/neuroscience-kids-success-parents-best-practices.html", sponsorLogo: "", sponsorURL: "")
let parentingBedtimeTip7 = Tip(header: "Increase Success 📵", title: "Don't allow kids to keep smartphones in their room after bedtime. If they use their smartphones as alarm clocks, buy them inexpensive alarm clocks", body: "A 2014 study found that 80% of teens admitted to using their phones when they were supposed to be sleeping. \n\nThe blue light emitted by smartphones inhibits the brain’s production of melatonin, the hormone that helps us fall asleep and stay asleep." , sourceName: "The Conversation", sourceURL: "https://theconversation.com/teens-are-sleeping-less-but-theres-a-surprisingly-easy-fix-85157", sponsorLogo: "", sponsorURL: "")

//2
let parentingBedtimeTip8 = Tip(header: "Prevent Weight Gain 📵", title: "Keep cellphones TVs, and video game consoles out of your kid's bedroom", body: "Study: Children with access to one electronic device in their bedrooms were 1.47 times as likely to be overweight as those with no device in the bedroom. That increased to 2.57 times for kids with three devices. \n\nSome 57% of children reported using electronics after they were supposed to be asleep. \n\nMore sleep is linked to more physical activity, better diet choices, better academic outcomes, and fewer mood disorders." , sourceName: "Science Daily", sourceURL: "", sponsorLogo: "", sponsorURL: "")

//0
let parentingBedtimeTipArray0 = [parentingBedtimeTip0, parentingBedtimeTip1, parentingBedtimeTip2, parentingBedtimeTip3]

//1
let parentingBedtimeTipArray1 = [parentingBedtimeTip4, parentingBedtimeTip5, parentingBedtimeTip6, parentingBedtimeTip7]


//2
let parentingBedtimeTipArray2 = [parentingBedtimeTip8, parentingBedtimeTip1, parentingBedtimeTip2, parentingBedtimeTip3]



// RANDOM
let parentingBedtimeArrays = [parentingBedtimeTipArray0, parentingBedtimeTipArray1, parentingBedtimeTipArray2]
let parentingBedtimeTopic = Topic(title: parentingTitle, icon: parentingIcon, tip: parentingBedtimeArrays.random())
let parentingBedtimeTopics = Topics(title: parentingTitle, icon: parentingIcon, topics: [parentingBedtimeTopic,])



// WIP?






let parenting5 = Tip(header: "👨‍👩‍👧‍👦", title: "Having kids later in life will increases your happiness more than having kids earlier in life", body: "Researchers from the London School of Economics found that one or two children provided the most happiness and that older parents found more joy in parenting than younger ones." , sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/health/wellness/how-to-be-happy/", sponsorLogo: "", sponsorURL: "")
let parenting6 = Tip(header: "🤝", title: "Teens who exhibited prosocial behavior -- such as helping, sharing and comforting -- toward strangers had higher self-esteem a year later", body: "This study helps us to understand that young people who help those with whom they do not have a relationship report feeling better about themselves over time. Given the importance of self-esteem during the teen years, this is an important finding. Parents can help by providing opportunities for their children to help and serve others who are less fortunate." , sourceName: "Science Daily", sourceURL: "https://www.sciencedaily.com/releases/2017/12/171218115626.htm", sponsorLogo: "", sponsorURL: "")


// Partening: Toddlers





// Parenting: High Income Children

// Teens
let parentingHighIncomeTeens1 = Tip(header: "😐", title: "Children who come from affluent families are more likely to suffer from depression, anxiety and substance abuse than those who come from less affluent families", body: "Study: Suburban high schoolers reported significantly higher use of cigarettes, alcohol, marijuana, and hard drugs than did their inner-city counterparts. In addition, substance use was linked with depression and anxiety among affluent (but not inner-city) younth, suggesting efforts to self-medicate; this “negative affect” type of substance use tends to be sustained over time, rather than stopping soon after the teen years. \n\nStatistical analyses showed that children with very high perfectionist strivings—those who saw achievement failures as personal failures—had relatively high depression, anxiety, and substance use, as did those who indicated that their parents overemphasized their accomplishments, valuing them disproportionately more than their personal character." , sourceName: "National Center for Biotechnology Information", sourceURL: "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC1948879/", sponsorLogo: "", sponsorURL: "")

// Daughter
let parentingHighIncomeDaughters1 = Tip(header: "🙎‍♀️", title: "Study: Girls in the suburbs were 3 times more likely to report clinically significant levels of depression than girls in the inner-city", body: "A study found strong links between physical attractiveness and peer popularity among affluent girls. This variable alone explained more than half the variation in their popularity scores, suggesting particularly high emphasis on physical appearance among this subgroup of girls (the links between attractiveness and popularity were substantially weaker among inner-city girls and among both groups of boys)." , sourceName: "National Center for Biotechnology Information", sourceURL: "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC1948879/", sponsorLogo: "", sponsorURL: "")

// Son
let parentingHighIncomeSons1 = Tip(header: "🙇‍♂️", title: "For suburban boys, high peer status was linked with overt displays of low academic effort, disobedience at school, aggressiveness among girls, and substance use", body: "Study: Among suburban boys, popularity with classmates was linked with high substance use, suggesting that the peer group may endorse and even encourage substance use among affluent teenage boys. The study found that substance abuse for suburban boys began as early as 7th grade, with 7% of seventh-grade boys reported having drunk alcohol until intoxicated or using marijuana about once a month. \n\nAll adolescents might be drawn to overt forms of rebellion, but it is quite plausible that wealthy youth, unlike their poor counterparts, can dabble in drug use or delinquency without any substantive damage to their life prospects, given various safety nets (i.e., concerned adults and access to high-quality treatment services). Many children of highly educated, affluent parents will likely come to assume positions of influence in society, and their own equanimity of spirit may have far-reaching ramifications." , sourceName: "National Center for Biotechnology Information", sourceURL: "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC1948879/", sponsorLogo: "", sponsorURL: "")



//MARK: - Life Goals

let adviceTitle = "Goals"
let adviceIcon = Constants.Icon.goals

//MAR: VISION

let vision0 = Tip(header: "Quote", title: "Good business leaders create a vision, articulate the vision, passionately own the vision, and relentlessly drive it to completion.", body: "- Warren Buffett" , sourceName: "Wonderful Quote", sourceURL: "https://www.wonderfulquote.com/a/warren-buffett-quotes", sponsorLogo: "", sponsorURL: "")

let vision1 = Tip(header: "VISION", title: "Heather Kunen, co-founder of New York City's Beam Street", body: "Large visions or dreams can be very daunting, which is why so many people live their lives without attempting to realize them. \n\nTaking small but specific steps towards my visions leads to quick and tangible rewards. \n\nFor example, I envisioned a specific target demographic for the business I co-founded. Then, I brainstormed how to maximize my business's exposure to this demographic and then took steps to market to this audience. \n\nI reached out to bloggers and local businesses that target a similar audience, and I was quickly able to collaborate with them to jumpstart our marketing. \n\nA simple call, email, or just physically walking into a local business was all it took to get the ball rolling. \n\nLarge goals or dreams may seem overwhelming at times, but taking steady, small steps towards these dreams is surprisingly doable and amounts to success over time." , sourceName: "Inc.", sourceURL: "https://www.inc.com/christina-desmarais/31-simple-daily-habits-that-separate-high-achievers-from-everyone-else.html", sponsorLogo: "", sponsorURL: "")

// Will Shortz
let willShortzQuote = Quote(quote: "\"Figure out what you enjoy doing most in life, and then try to do it full-time. Life is short. Follow your passion.\"", source: "Will Shortz", bio: "Long-time editor of the New York Times crossword puzzle")

//MARK: PASSION

let passion0 = Tip(header: "Discover Your Passion", title: "Ask yourself this question:", body: "• Look carefully at what you're drawn to in life. What do you read, watch, listen to, follow? \n\nIdentifying what you're passionate about is the first step to building an amazing life." , sourceName: "LinkedIn SlideShare", sourceURL: "https://www.slideshare.net/kcaprino/11-ways-to-uncover-your-passion-by-kathy-caprino-57192385", sponsorLogo: "", sponsorURL: "")

let passion1 = Tip(header: "Discover Your Passion", title: "Ask yourself this question:", body: "• What concerns and upsets you in the world and compels you to DO something? \n\nIdentifying what you're passionate about is the first step to building an amazing life." , sourceName: "LinkedIn SlideShare", sourceURL: "https://www.slideshare.net/kcaprino/11-ways-to-uncover-your-passion-by-kathy-caprino-57192385", sponsorLogo: "", sponsorURL: "")

let passion2 = Tip(header: "Discover Your Passion", title: "Ask yourself this question:", body: "• Where are the people who inspire and uplift you? What are they focused on? \n\nIdentifying what you're passionate about is the first step to building an amazing life." , sourceName: "LinkedIn SlideShare", sourceURL: "https://www.slideshare.net/kcaprino/11-ways-to-uncover-your-passion-by-kathy-caprino-57192385", sponsorLogo: "", sponsorURL: "")

let passion3 = Tip(header: "Discover Your Passion", title: "Ask yourself this question:", body: "• If you could take one college-level course or program for free on anything at all, what would it be? \n\nIdentifying what you're passionate about is the first step to building an amazing life." , sourceName: "LinkedIn SlideShare", sourceURL: "https://www.slideshare.net/kcaprino/11-ways-to-uncover-your-passion-by-kathy-caprino-57192385", sponsorLogo: "", sponsorURL: "")

let passion4 = Tip(header: "Discover Your Passion", title: "Ask yourself this question:", body: "• In what areas are you drawn to helping others? \n\nIdentifying what you're passionate about is the first step to building an amazing life." , sourceName: "LinkedIn SlideShare", sourceURL: "https://www.slideshare.net/kcaprino/11-ways-to-uncover-your-passion-by-kathy-caprino-57192385", sponsorLogo: "", sponsorURL: "")

let passion5 = Tip(header: "Discover Your Passion", title: "Ask yourself this question:", body: "• What \"mess\" in your life can be turned into a \"message\" for others? \n\nIdentifying what you're passionate about is the first step to building an amazing life." , sourceName: "LinkedIn SlideShare", sourceURL: "https://www.slideshare.net/kcaprino/11-ways-to-uncover-your-passion-by-kathy-caprino-57192385", sponsorLogo: "", sponsorURL: "")

let passion6 = Tip(header: "Discover Your Passion", title: "Ask yourself this question:", body: "• What skill or talent do you wish you had, that would be exciting to pursue? \n\nIdentifying what you're passionate about is the first step to building an amazing life." , sourceName: "LinkedIn SlideShare", sourceURL: "https://www.slideshare.net/kcaprino/11-ways-to-uncover-your-passion-by-kathy-caprino-57192385", sponsorLogo: "", sponsorURL: "")

let passion7 = Tip(header: "Discover Your Passion", title: "Ask yourself this question:", body: "• What area do you secretly dream about being involved in but feel foolish to say it out loud? \n\nIdentifying what you're passionate about is the first step to building an amazing life." , sourceName: "LinkedIn SlideShare", sourceURL: "https://www.slideshare.net/kcaprino/11-ways-to-uncover-your-passion-by-kathy-caprino-57192385", sponsorLogo: "", sponsorURL: "")

let passion8 = Tip(header: "Discover Your Passion", title: "Ask yourself this question:", body: "• If you knew you couldn't fail and it would all work out beautifully, what would you try? \n\nIdentifying what you're passionate about is the first step to building an amazing life." , sourceName: "LinkedIn SlideShare", sourceURL: "https://www.slideshare.net/kcaprino/11-ways-to-uncover-your-passion-by-kathy-caprino-57192385", sponsorLogo: "", sponsorURL: "")

let passion9 = Tip(header: "Discover Your Passion", title: "Ask yourself this question:", body: "• What did you love doing as a child that you've let slip through your fingertips? \n\nIdentifying what you're passionate about is the first step to building an amazing life." , sourceName: "LinkedIn SlideShare", sourceURL: "https://www.slideshare.net/kcaprino/11-ways-to-uncover-your-passion-by-kathy-caprino-57192385", sponsorLogo: "", sponsorURL: "")

let passion10 = Tip(header: "Discover Your Passion", title: "Ask yourself this question:", body: "• What beliefs hold you back from pursuing what excites you most? \n\nIdentifying what you're passionate about is the first step to building an amazing life." , sourceName: "LinkedIn SlideShare", sourceURL: "https://www.slideshare.net/kcaprino/11-ways-to-uncover-your-passion-by-kathy-caprino-57192385", sponsorLogo: "", sponsorURL: "")

let passion11 = Tip(header: "", title: "PASSION - Simon Sinek", body: "\"Working hard for something we don't care about is called stress: Working hard for something we love is called passion.\"" , sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/quotes/7697100-working-hard-for-something-we-don-t-care-about-is-called", sponsorLogo: "", sponsorURL: "")

let passion12 = Tip(header: "Discover Your Passion", title: "Ask yourself this question:", body: "• Where can you do the most good? \n\nOnly when we shift our focus from ‘looking good’ to ‘doing good’ can we truly thrive in leadership and life. \n\nTrust that uncovering and living your life’s purpose begins simply by asking yourself the question “How may I best serve?” and then taking a brave step in whatever direction your answer beckons." , sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/margiewarrell/2017/05/30/feeling-stuck-take-zuckerbergs-advice-and-commit-to-a-purpose-bigger-than-yourself/", sponsorLogo: "", sponsorURL: "")

let passion13 = Tip(header: "Discover Your Passion", title: "Ask yourself this question:", body: "• What are you good at? \n\nThink of the things you are so naturally good at you wonder why others find it so hard. \n\nWhile your purpose may not draw on all of your strengths, it will almost certainly flow from one of them." , sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/margiewarrell/2017/05/30/feeling-stuck-take-zuckerbergs-advice-and-commit-to-a-purpose-bigger-than-yourself/", sponsorLogo: "", sponsorURL: "")

let passion14 = Tip(header: "Discover Your Passion", title: "Ask yourself this question:", body: "• What hard-won wisdom do you have to share? \n\nOften our greatest gifts emerge from our biggest adversities; those experiences you would never have chosen but which ultimately developed strengths and added a deeper dimension to who you are as a human being. \n\nNever underestimate the gifts that lay beneath your hardest knocks. Often they are pointing you toward your highest purpose." , sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/margiewarrell/2017/05/30/feeling-stuck-take-zuckerbergs-advice-and-commit-to-a-purpose-bigger-than-yourself/", sponsorLogo: "", sponsorURL: "")

let passion15 = Tip(header: "Discover Your Passion", title: "Ask yourself this question:", body: "• What lights a spark in you? \n\nSince it is our emotions, not our knowledge, that drive our actions, you simply have to care enough about something that it triggers an emotional response in you – creative expression, compassion, or curiosity. \n\nEvery great human endeavor can be traced back to someone who cared deeply." , sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/margiewarrell/2017/05/30/feeling-stuck-take-zuckerbergs-advice-and-commit-to-a-purpose-bigger-than-yourself/", sponsorLogo: "", sponsorURL: "")

let passion16 = Tip(header: "PASSION - TED Talk Advice", title: "If you want to reach your potential and live meaningfully and make a contribution to the world, then:", body: "• Find something you care about; \n\n• Surround yourself with supportive people who will give you honest feedback; and \n\n• Practice, practice, through all the daily, small deaths. \n\n- Angela Lee Duckworth" , sourceName: "National Geographic", sourceURL: "https://www.nationalgeographic.com/news/2014/10/141015-angela-duckworth-success-grit-psychology-self-control-science-nginnovators/", sponsorLogo: "", sponsorURL: "")

let passion17 = Tip(header: "PASSION - Navy SEAL Advice", title: "Clarify what you’re passionate about. Ask yourself:", body: "• What books, movies, art, or music gets me pumped? \n\n• Who inspires me, and why? \n\n• What characteristics do I have that make me feel great about myself? \n\n• What activities would I do if I had more time and no barriers? \n\n• What is meaningful about them? \n\n• What benefit to others do these activities or characteristics provide? \n\n• Could I make the world even a tiny bit better by focusing more on these? \n\n• What would it take to get me to step into the arena of just one of these activities? \n\nClarifying your passions allow you to answer the question, \"Who am I at my deepest level?\"" , sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/advice/work-career/discover-your-passion-navy-seal-secrets/", sponsorLogo: "", sponsorURL: "")


let passion18 = Tip(header: "Define Your Values - Navy SEAL Advice", title: "Values answer the question, What do I want more—or less—of in my life? Clarifying them helps you stand your ground every day. Leadership, teamwork, family, and faith are a given. Focus on intimate traits that will make you a better, stronger person.", body: "To guide you, here are mine: \n\nI WANT TO BE MORE: \n• Healthy and positive \n• Loving and passionate \n• Wise and authentic \n• Grateful and truthful \n• Playful and fun \n• Learning and growing \n• Bold and decisive \n• Contributive to others \n\nI WANT TO BE LESS: \n• Negative and judgmental \n• Attached and cluttered \n• Selfish \n\nI move toward “healthy and positive” whenever I eat well, hydrate, think of my health, meditate, or train. Such small steps make it easy for me to turn values into a habit, thus forging new character traits." , sourceName: "Reader's Digest", sourceURL: "https://www.rd.com/advice/work-career/discover-your-passion-navy-seal-secrets/", sponsorLogo: "", sponsorURL: "")

let passion19 = Tip(header: "Quote", title: "I think we all have passions. And you don't get to choose your passions, your passions choose you. But you have to be alert to them. You have to be looking for them. And when you find your passion it's a fantastic gift for you because it gives you direction, it gives you purpose. \n\nYou can have a job, or you can have a career, or you can have a calling. And the best is to have a calling. Because when you work towards a calling then all your work won't feel like work to you.", body: "- Jeff Bezos", sourceName: "MotivationHub: Jeff Bezos", sourceURL: "https://www.youtube.com/watch?v=EctzLTFrktc", sponsorLogo: "", sponsorURL: "")


//MARK: PURPOSE

let purpose0 = Tip(header: "Purpose", title: "Mark Divine, Retired Navy SEAL: Your purpose is where your passion, skills, and talents intersect", body: "First, uncover your passion. Ask yourself these questions: \n\n• What one thing would you focus on if you had nothing holding you back? \n\n• What makes you feel as if your hair is on fire? \n\n• What are you really supposed to do with your life? \n\nNext, list your skills and talents." , sourceName: "8 Weeks to SEALFIT", sourceURL: "https://www.amazon.com/dp/B00DFFGMPO/", sponsorLogo: "", sponsorURL: "")

let purpose1 = Tip(header: "Purpose", title: "“Purpose is that sense that we are part of something bigger than ourselves. That we are needed, that we have something better ahead to work for. Purpose is what creates true happiness.“", body: "- Mark Zuckerberg \n\nResearch: ‘Purpose-driven’ people: \n\n• Are 50% more likely to be a leader \n\n• Earn more money and have a higher net worth \n\n• Live up to 7 years longer" , sourceName: "Forbes", sourceURL: "https://www.forbes.com/sites/margiewarrell/2017/05/30/feeling-stuck-take-zuckerbergs-advice-and-commit-to-a-purpose-bigger-than-yourself/", sponsorLogo: "", sponsorURL: "")

let purpose2 = Tip(header: "Purpose", title: "Formula to help you get clarity on your purpose: ", body: "Gifts (what you have to offer others) \n+ Passion (what really excites you) \n+ Values (what you find most important) \n= Your Calling \n\nG + P + V = C \n\nWhen you find where your greatest abilities, passion, and values intersect, you're on your purpose. \n\nHaving a purpose that provides real value requires us to think of others. Only when our purpose is larger than ourselves can we accomplish something truly memorable." , sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")

let purpose3 = Tip(header: "Purpose", title: "Exercise to help you find your purpose from the book, \"The Blue Zones of Happiness\"", body: "Imagine you had $10 million in the bank. \n\n• Write down 5 things you'd do. \n\n• Pick 1 of the 5 and set a 3-year goal to achieve it. \n\n• Write down what you'd have to accomplish in each of the 3 years leading up to the goal. \n\n• List 3 things you can do right now in support of achieving it." , sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")

let purpose4 = Tip(header: "Purpose", title: "Kobe Bryant", body: "I had a purpose. I wanted to become one of the best basketball players to ever play. And anything else that was outside of that lane I didn't have time for. \n\nI made that deal with myself at 13 years old. So everything I saw. Whether it was TV shows. Whether it was books I read. People I talked to. Everything was done to try to learn how to become a better basketball player. Everything. \n\nAnd so when you have that point of view. Then literally the world becomes your library to help you become better at your craft." , sourceName: "Motivation Madness: Kobe Bryant's Life Advice Will Change Your Future", sourceURL: "https://www.youtube.com/watch?v=tiNCtzgfrrY", sponsorLogo: "", sponsorURL: "")

let purpose5 = Tip(header: "Purpose - Navy SEAL Advice", title: "BE SOMEONE SPECIAL", body: "Growing up, it was never mentioned to me that I might have a unique purpose in life. Never. My family didn’t tell me, my teachers didn’t tell me, society didn’t tell me. What I heard from all of these well-intentioned sources was the usual: I had to go to school, get good grades, then go out into the world and get a good job. \n\nBut the words, BE SOMEONE SPECIAL, planted a sense of doubt and wonder in the recesses of my mind. After many soul-searching hours on the meditation bench in contemplation, my true purpose finally showed itself. It seemed to come from the quiet depths within, like a vision. I believe this is the way it’s supposed to happen. \n\nWe can’t think our way to our purpose like we might draw up a flowchart. Rather we must listen closely and listen with our whole being. When we are still and listen to the deep-rooted stories that drive our lives, the purpose will reveal itself as a new story, a possible future that may be radically different than the one we find ourselves stewing in. \n\nOnce revealed we feel compelled to align with it. When we align with our purpose, passion long lost is once again ignited. We feel special, again. \n\n• My purpose is to master myself so I can serve humanity as a warrior, leader and teacher. \n\n- Mark Divine, former Navy SEAL and founder of SEALFIT and The Unbeatable Mind Academy" , sourceName: "SEALFIT", sourceURL: "https://sealfit.com/part-3-uncover-your-purpose-ignite-your-passion/", sponsorLogo: "", sponsorURL: "")

let purpose6 = Tip(header: "Purpose - Harvard Professor", title: "Figuring out your life's purpose: The type of person you want to become- what the purpose of your life is- is too important to leave to chance. It needs to be deliberately conceived, chosen, and managed.", body: "People who have led movements for change, such as Mahatma Gandhi, Martin Luther King, and the Dalai Lama, have had an extraordinarily clear sense of purpose. But the world did not \"deliver\" a cogent and rewarding purpose to them. And, unfortunately, it won't \"deliver\" one to you, either. \n\nUnderstanding the three parts composing the purpose of life- a likeness, a commitment, and a metric- is the most reliable way I know of to define for yourself what your purpose is, and to live it in your life every day. \n\nFinally, please remember that this is a process, not an event. It took me years to fully understand my own purpose. But the journey has been worthwhile. \n\nWith that as background, I will share how I have come to understand my purpose. \n\n1. The likeness- the person I want to become- was the simplest of the three parts, and was largely an intellectual process. Examples include dedicating yourself to helping improve the lives of other people.  \n\n2. Becoming Committed: How do you become so deeply committed to these things that they guide what you prioritize on a daily basis- to drive what you will do, and what you will not do? Each of us may have a different process for committing to our likeness. But what is universal is that your intent must be to answer this question: who do I truly want to become? If you begin to feel that the likeness you have sketched out for yourself is not right- that this is not the person you want to become- then you must revisit your likeness. But if it becomes clear that it is the person you want to become, then you must devote your life to becoming that person. I can recall with perfect clarity the intensity with which I focused on seeking to know if my likeness was right- and then committing to it. As I followed this process, it became clear to me through feelings that I sensed in my heart and words that come into my mind that I had my likeness correct. I saw in my likeness a clarity and magnitude that I had never conceived before. It truly changed my heart and my life. For me, defining the likeness of the person I wanted to become was straightforward. However, being deeply committed to actually becoming this type of person was hard. \n\n3. Finding the Right Metric: The third part of my life's purpose was to understand the metric by which my life will be measured. For me, this took the longest. I came to understand that while many of us might default to measuring our lives by summary statistics, such as number of people presided over, number of awards, or dollars accumulated in a bank, and so on, the only metrics that will truly matter to my life are the individuals whom I have been able to help, one by one, to become better people. When I have my interview with God, our conversation will focus on the individuals whose self-esteem I was able to strengthen, who faith I was able to reinforce, and whose discomfort I was able to assuage- a doer of good, regardless of what assignment I had. These are the metrics that matter in measuring my life. \n\nI promise my students that if they take the time to figure out their life's purpose, they'll look back on it as the most important thing they will ever have discovered. In the long run, clarity about purpose will trump knowledge of any of the key business theories we teach at Harvard.  \n\nWhat's true for them is true for you. If you take time the time to figure out your purpose in life, I promise that you will look back on it as the most important thing you will have ever learned." , sourceName: "How Will You Measure Your Life? by Clayton Christensen", sourceURL: "https://www.amazon.com/dp/B006ID0CH4/", sponsorLogo: "", sponsorURL: "")

let purpose7 = Tip(header: "PURPOSE - David Goggins", title: "Most people don't know their their purpose because the world is too loud. To find your purpose, the biggest thing you have to do is shut of technology. You have to go dark. You have to be quiet in your mind.", body: "You got to go to the truth first. Get really accountable and say, \"Who am I? What's the truth about me?\" Get to that dark place in your mind and figure out your purpose. \n\nFigure out what you want to be in life. It may take a long time. It may take months. It may take years. \n\nOnce you've figured out your purpose, you got to start planning. People love the planning phase because it's very comfortable. \n\nThen, from the planning phase, you got to go to the execution. The execution phase we all hate because that's where the real work begins, and that's when the failure happens, and the failure, and the failure. But that's how you have to do it. " , sourceName: "Success Chasers: David Goggins Motivation", sourceURL: "https://www.youtube.com/watch?v=tiNCtzgfrrY", sponsorLogo: "", sponsorURL: "")

//

//MARK: GOALS

let goals0 = Tip(header: "Goals - Warren Buffett 💰", title: "📝 STEP 1:  Write down your top 25 goals.", body: "✍️ STEP 2: Circle your top 5 goals. \n\n 🙅‍♀️ STEP 3: The 20 you didn't circle became your ‘Avoid At All Cost List.’ No matter what, these things get no attention from you until you’ve succeeded with your top 5. \n\nThe difference between successful people and really successful people is that really successful people say ‘no’ to almost everything. ", sourceName: "Thrive Global", sourceURL: "https://thriveglobal.com/stories/say-no-more-often-warren-buffett/", sponsorLogo: "", sponsorURL: "")

let goals1 = Tip(header: "Goals", title: "A goal is not always meant to be reached, it often serves simply as something to aim at.", body: "- Bruce Lee" , sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/search?utf8=%E2%9C%93&q=bruce+lee&search_type=quotes", sponsorLogo: "", sponsorURL: "")

let goals2 = Tip(header: "Goals", title: "Never give up. There are always tough times, regardless of what you do in anything in life.", body: "Be able to push through those times and maintain your ultimate goal. \n\nHaving goals that might seem unattainable can have their way of becoming attainable. \n\n-Nathan Chen \nUS Olympic Athlete", sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2018/02/11/4-olympians-share-the-mental-tips-they-use-to-achieve-their-goals.html", sponsorLogo: "", sponsorURL: "")

let goals3 = Tip(header: "Goals", title: "Mentally project yourself achieving a major life goal. Repeatedly doing so plants a seed in your subconscious mind to recruit the resources to nurture the event into reality.", body: "With your eyes closed, do the following: \n\n• 😎 See yourself as a vibrant person, glowing from your efforts. \n\n• 💪 You’re physically strong, energetic, and calm. \n\n• ☀️ The sun is shining. The sky is blue. \n\n• 🏆 You acknowledge all your massive action to transform this dream into reality. You knew this day would come. \n\n- Mark Divine, Retired Navy SEAL", sourceName: "SEALFIT", sourceURL: "https://sealfit.com/navy-seal-commanders-advice-developing-mental-toughness/", sponsorLogo: "", sponsorURL: "")

let goals4 = Tip(header: "Goals", title: "A goal properly set is halfway reached.", body: "- Zig Ziglar \n\nWorld War II veteran, author and motivational speaker.", sourceName: "Brilliant Read", sourceURL: "https://www.brilliantread.com/15-best-ever-david-goggins-quotes-on-success-and-failures/", sponsorLogo: "", sponsorURL: "")

let goals5 = Tip(header: "Goals - Denzel Washington", title: "Don’t be afraid to fail big, to dream big. But remember, dreams, without goals, are just dreams. They ultimately fuel disappointment.", body: "So have dreams, but have goals, life goals, yearly goals, monthly goals, daily goals. I try to give myself a goal every day. \n\nUnderstand that to achieve these goals you must apply discipline and consistency. You have to work at it every day. \n\nYou have to plan every day. You’ve heard the saying “We don’t plan to fail, we fail to plan.” \n\nContinue to strive, continue to have goals, continue to progress and anything you want good, you can have. \n\nClaim it, work hard to get it, when you get it reach back, pull someone else up. Each one teach one. \n\nDon’t just aspire to make a living. Aspire to make a difference.", sourceName: "Fearless Motivation", sourceURL: "https://www.fearlessmotivation.com/2018/09/23/denzel-washington-speech/", sponsorLogo: "", sponsorURL: "")

let goals6 = Tip(header: "Increase Happiness 😁", title: "Research: Setting goals is one of the best things you can do to achieve happiness", body: "• Set quarterly and annual goals for yourself - both for your professional and personal life. \n\n• Write them down or share them with someone who will support you and help you be accountable. \n\n• Monitor your progress and see what you have achieved at the end of each quarter, and also meet with your goals partner at least 2-3 times a year. \n\n• If you can afford it, hire a life coach - someone trained professionally to help you meet your life goals." , sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")
let goals7 = Tip(header: "GOALS", title: "Research: People who set goals and monitor them are happier in the long run", body: "This may be because they're more likely to get what they want out of life (though research shows they mis-predict more than half of the time)." , sourceName: "The Blue Zones of Happiness: Lessons from the World’s Happiest People", sourceURL: "https://www.bluezones.com/blue-zones-of-happiness/", sponsorLogo: "", sponsorURL: "")

let goals8 = Tip(header: "GOALS - David Goggins", title: "Before you even set any goals, you have slow down, find a quiet space, and turn off your phone. 📵 This will allow you time and space to think", body: "To understand your “why” and what motivates you, “you first have to spend time alone. How are you going to figure out your purpose if you haven’t figured out, first, what you need to do? \n\nSlow down, minimize distractions, and gain control. Then you’ll be able to think about your goals." , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2019/04/25/retired-navy-seal-use-this-5-step-strategy-to-achieve-any-goal.html", sponsorLogo: "", sponsorURL: "")

let goals9 = Tip(header: "GOALS - David Goggins", title: "Your goals should be specific and give you clarity and direction", body: "• 💰 If you want to earn more money, have an actual dollar amount in mind. \n• 💪 If you want to get fit, decide what specifically that would look like for you. \n• 👩‍⚖️ If you want to get ahead at work, identify the promotion or title you want to earn. \n\n🙅‍♀️ DON'T: Just think about your goals. \n📝 DO: Write them on paper." , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2019/04/25/retired-navy-seal-use-this-5-step-strategy-to-achieve-any-goal.html", sponsorLogo: "", sponsorURL: "")

let goals10 = Tip(header: "GOALS - David Goggins", title: "It’ll be easier to execute your goals if you can break them down into manageable steps. Plus, knocking out smaller tasks right away will help you build momentum.", body: "When making your plan, it’s also a good idea to anticipate obstacles that might arise and come up a way to deal with them." , sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2019/04/25/retired-navy-seal-use-this-5-step-strategy-to-achieve-any-goal.html", sponsorLogo: "", sponsorURL: "")


let goals11 = Tip(header: "GOALS - Les Brown", title: "Have goals that are beyond your comfort zone. Because in order to do something you’ve never done, you gotta become someone you’ve never been.", body: "You gotta become a risk taker. If you’re not willing to risk, you can’t grow. \n\nAnd if you can’t grow, you can’t become your best. And if you can’t become your best, you can’t be happy. And if you can’t be happy, then what else is there?", sourceName: "Fearless Motivation", sourceURL: "https://www.fearlessmotivation.com/2018/01/11/les-brown-you-have-greatness-in-you/", sponsorLogo: "", sponsorURL: "")

//TODO: Tap here to go to life coach online marketplace




// MARK: Fear
let fear0 = Tip(header: "🤔", title: "FEAR - Alex Rigsby, Olympic Athlete", body: "Never give up and always believe in yourself, even when others don’t. \n\nYou might not always succeed at first, but if you set little goals to help you reach the big goal, I think you’ll be successful someday.", sourceName: "CNBC", sourceURL: "https://www.cnbc.com/2018/02/11/4-olympians-share-the-mental-tips-they-use-to-achieve-their-goals.html", sponsorLogo: "", sponsorURL: "")


let fear1 = Tip(header: "🤔", title: "FEAR - Robert Tew, Professional Athlete", body: "Until you see fear as an opportunity for growth, you won’t grow beyond your current self.", sourceName: "Good Reads", sourceURL: "https://www.goodreads.com/author/quotes/13848712.Robert_Tew?page=2", sponsorLogo: "", sponsorURL: "")

//

let fear10 = Tip(header: "", title: "Sit on your bed one day and ask yourself, what remarkably stupid things am I doing on a regular basis to absolutely screw up my life. There's no better pathway to self realization than to pause at the highest good that you can conceive of and commit yourself to it. Then, ask yourself do you have anything really better to do? And if you don't then why would you do anything else? If you orient yourself properly and then pay attention to what you do every day. That works. Because what happens is that the world shifts itself around your aim. Let's say your aim is the highest possible aim. So, that sets up the world around you. It organizes all of your perceptions. It organizes what you see and what you don't see. It organizes your emotions and motivations. So, then you organize yourself around that aim. And then what happens is the day manifests itself as a set of challenges and problems. And if you solve them properly then you stay on the pathway towards that aim. And you can concentrate on the day. And it seems to me that that is what makes every moment of the day supercharged with meaning. Because if everything that you're doing every day is related to the highest possible aim that you can conceptualize. Well, that's the very definition of the meaning that would sustain you in your life.", body: "Jordan Peterson", sourceName: "", sourceURL: "", sponsorLogo: "", sponsorURL: "")

//passion19
//goals11
//purpose7

let adviceTipArray0 = [passion0, passion7, goals0, vision0]
let adviceTopic0 = Topic(title: adviceTitle, icon: adviceIcon, tip: adviceTipArray0)

let adviceTipArray1 = [passion1, purpose4, goals1, vision1]
let adviceTopic1 = Topic(title: adviceTitle, icon: adviceIcon, tip: adviceTipArray1)

let adviceTipArray2 = [passion2, passion9, goals2, purpose0]
let adviceTopic2 = Topic(title: adviceTitle, icon: adviceIcon, tip: adviceTipArray2)

let adviceTipArray3 = [passion3, passion10, goals3, purpose1]
let adviceTopic3 = Topic(title: adviceTitle, icon: adviceIcon, tip: adviceTipArray3)

let adviceTipArray4 = [passion4, passion11, goals4, purpose2]
let adviceTopic4 = Topic(title: adviceTitle, icon: adviceIcon, tip: adviceTipArray4)

let adviceTipArray5 = [passion5, passion12, goals5, purpose3]
let adviceTopic5 = Topic(title: adviceTitle, icon: adviceIcon, tip: adviceTipArray5)

let adviceTipArray6 = [passion6, passion13, goals6, purpose4]
let adviceTopic6 = Topic(title: adviceTitle, icon: adviceIcon, tip: adviceTipArray6)
///////
let adviceTipArray7 = [passion14, passion15, goals7, purpose5]
let adviceTipArray8 = [passion16, passion17, goals6, purpose7]
let adviceTipArray9 = [passion18, passion19, goals0, purpose0]//WIP

// RANDOM
let adviceArrays = [adviceTipArray0, adviceTipArray1, adviceTipArray2, adviceTipArray3, adviceTipArray4, adviceTipArray5, adviceTipArray6, adviceTipArray7, adviceTipArray8, adviceTipArray9]
let adviceTopic = Topic(title: adviceTitle, icon: adviceIcon, tip: adviceArrays.random())
let adviceTopics = Topics(title: adviceTitle, icon: adviceIcon, topics: [adviceTopic,])


// MARK: Jeff Bezos
let jeffBezosQuote = Hint(title: "", body: "", sourceName: "", sourceURL: "")


// MARK: Bruce Lee

let bruceLeeTitle = "Bruce Lee"

let bruceLeeQuote1 = Quote(quote: "\"Do not pray for an easy life, pray for the strength to endure a difficult one.\"", source: "Bruce Lee", bio: "Actor, martial artist, philosopher, and founder of the martial art Jeet Kune Do")

let bruceLeeHint1 = Hint(title: "PASSION: Real living is living for others", body: "Bruce Lee became a cultural icon because he actively lived his philosophy of self-actualization. His energy captivated audiences and motivated people to lead their best lives.", sourceName: "Fast Company", sourceURL: "https://www.fastcompany.com/3065979/my-dad-was-bruce-lee-heres-how-he-still-inspires-me-and-others-to-innovate")
let bruceLeeHint2 = Hint(title: "PURPOSE: Become your true self", body: "\"Always be yourself; express yourself; have faith in yourself. Do not go out and look for a successful personality and duplicate it. Start from the very root of your being, which is \"how can I be me?\"", sourceName: "Bruce Lee", sourceURL: "https://www.brucelee.com/philosophies/")
let bruceLeeHint3 = Hint(title: "GOALS: Set big goals", body: "\"A goal is not always meant to be reached, it often serves simply as something to aim at.\"", sourceName: "Bruce Lee", sourceURL: "hhttps://www.brucelee.com/podcast")
let bruceLeeHint4 = Hint(title: "VISION: At age 29, he wrote...", body: "\"My Definite Chief Aim: I, Bruce Lee, will be the first highest-paid oriental superstar in the United States. In return I will give the most exciting performances and render the best quality in the capacity of an actor. Starting 1970 I will achieve for fame and from then onward till the end of 1980 I will have in my possession $10,000,000. I will live the way I please and achieve inner harmony and happiness.\"", sourceName: "QZ", sourceURL: "https://qz.com/932799/bruce-lee-achieved-all-his-life-goals-by-32-by-committing-to-one-personality-trait/")

//
let bruceLeeQuote10 = Tip(header: "", title: "If you spend too much time thinking about a thing, you’ll never get it done.", body: "- Bruce Lee \n\nBruce Lee was an actor, martial artist, philosopher, and founder of the martial art Jeet Kune Do." , sourceName: "Goalcast", sourceURL: "https://www.goalcast.com/2017/07/20/top-20-inspiring-bruce-lee-quotes/", sponsorLogo: "", sponsorURL: "")


let bruceLeeQuote11 = Tip(header: "", title: "The successful warrior is the average man [or woman], with laser-like focus.", body: "- Bruce Lee \n\nBruce Lee was an actor, martial artist, philosopher, and founder of the martial art Jeet Kune Do." , sourceName: "Goalcast", sourceURL: "https://www.goalcast.com/2017/07/20/top-20-inspiring-bruce-lee-quotes/", sponsorLogo: "", sponsorURL: "")

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

    // Martin Luther King Jr

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
