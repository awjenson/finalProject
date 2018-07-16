//
//  AdviceData.swift
//  finalProject
//
//  Created by Andrew Jenson on 7/1/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import Foundation

struct AdviceData {

    // BASED ON TIME

    static let am1 = JournalAdvice(quote: "\"Those who are unaware they are walking in darkness will never seek the light.\"", source: "Bruce Lee", question: "What are two fears in your life?", description: "MORNING MOTIVATION - How Successful People Start Their Day", time: "5 min", url: "https://www.youtube.com/watch?v=iLNyiaAscQ0")

    static let pm1 = JournalAdvice(quote: "\"Without reflection we go blindly on our way, creating more unintended consequences, and failing to achieve anything useful.\"", source: "Margaret J. Wheatley", question: "When do I feel most alive?", description: "Top 10 - Most Epic Motivational Speeches", time: "16 min", url: "https://www.youtube.com/watch?v=imB8rVYjMXA")

    static let am2 = JournalAdvice(quote: "\"The key to growth is the introduction of higher dimensions of consciousness into our awareness.\"", source: "Lao Tzu", question: "What makes me depressed?", description: "Wake Up Early|End Laziness|Motivational Speech Compilation", time: "42 min", url: "https://www.youtube.com/watch?v=2CYDgcE13PY")

        static let pm2 = JournalAdvice(quote: "\"As we grow in our consciousness, there will be more compassion and more love, and then the barriers between people, between religions, between nations will begin to fall.\"", source: "Ram Dass", question: "What is one of my best memories?", description: "DREAM BIG - Best Motivational Video Speeches Compilation", time: "22 min", url: "https://www.youtube.com/watch?v=5n_OBOdDdtY")

    static let am3 = JournalAdvice(quote: "\"Self awareness is the ability to take an honest look at your life without any attachment to it being right or wrong, good or bad.\"", source: "Debbie Ford", question: "When was a last time that I lost control of my emotions?", description: "MORNING MOTIVATION - Start Your Day Positively!", time: "12 min", url: "https://www.youtube.com/watch?v=vPMQdVdR0gw")

    static let pm3 = JournalAdvice(quote: "\"I think self-awareness is probably the most important thing towards being a champion.\"", source: "Billie Jean King", question: "What daily acitivies add value to my life?", description: "MORNING MOTIVATION - Start Your Day Positively!", time: "12 min", url: "https://www.youtube.com/watch?v=vPMQdVdR0gw")

    static let am4 = JournalAdvice(quote: "\"Whenever you are angry, be assured that it is not only a present evil, but that you have increased a habit.\"", source: "Epictetus", question: "What habits do not add value to my life?", description: "MORNING MOTIVATION - What Successful People Do In the First 8 Minutes of Their Morning", time: "7 min", url: "https://www.youtube.com/watch?v=5diEq1gTE4Y")

    static let pm4 = JournalAdvice(quote: "\"Be mindful of your self talk. It's a conversation with the universe.\"", source: "Davide James Lees", question: "What is one negative thought that you have about yourself?", description: "WINNING PSYCHOLOGY - New Motivational Videos Compilation", time: "32 min", url: "https://www.youtube.com/watch?v=ZNmdEau_JNM")

    static let am5 = JournalAdvice(quote: "\"You are the average of the five people you spend the most time with.\"", source: "Jim Rohn", question: "Who brings negativity into your life?", description: "MORNING MOTIVATION: 5 Min in The Morning Can Change Your Entire Day!", time: "5 min", url: "https://www.youtube.com/watch?v=yPq5IAf_97w")

    static let pm5 = JournalAdvice(quote: "\"When you think everything is someone else's fault, you will suffer a lot. When you realize that everything springs only from yourself, you will learn both peace and joy.\"", source: "The 14th Dalai Lama", question: "Who is one of your heros? And why?", description: "Best Motivational Speech Compilation EVER #12 - DECIDE TO WIN", time: "34 min", url: "https://www.youtube.com/watch?v=3jyAUQHd6IM")

    static let am6 = JournalAdvice(quote: "\"Wisdom tends to grow in proportion to one’s awareness of one’s ignorance.\"", source: "Anthony de Mello", question: "What new skills am I learning?", description: "START YOUR DAY POSITIVELY - Listen To This Every Morning for Positive Energy ", time: "18 min", url: "https://www.youtube.com/watch?v=UHnwpf8iYaI")

    static let pm6 = JournalAdvice(quote: "\"Awareness is a key ingredient in success. If you have it, teach it, if you lack it, seek it.\"", source: "Michael B. Kitson", question: "What can I say no to so I can yes to what matters?", description: "The Best Motivational Speech Compilation For Success In Life", time: "35 min", url: "https://www.youtube.com/watch?v=pH-9j4MtuIQ")

    static let am7 = JournalAdvice(quote: "\"Refuse to be average. Let your heart soar as high as it will.\"", source: "A. W. Tozer", question: "Who improves your life?", description: "Build The Person You Want to Be - Best Motivational Videos Compilation for 2018", time: "35 min", url: "https://www.youtube.com/watch?v=PwGXhJAYdDQ")

    static let pm7 = JournalAdvice(quote: "\"The awakening of consciousness is the next evolutionary step for mankind.\"", source: "Eckhart Tolle", question: "What's one thing that I am grateful for today?", description: "WATCH THIS EVERY NIGHT - Most Motivational Speeches For Study & Success", time: "30 min", url: "https://www.youtube.com/watch?v=FfrcrrGLysU")


    // BASED ON MOOD

    static let sad0 = JournalAdvice(quote: "Things that I feel really sad about, I talk about. That way, if it's funny, it doesn't hurt anymore.", source: "Pete Davidson", question: "Why do you feel \(Constants.SelectedMood.Button0)?", description: "PROBLEMS - Watch This When You Feel Down (Powerful Motivation!)", time: "6 min", url: "https://www.youtube.com/watch?v=p4F5UXN_AVk")

    static let depressed0 = JournalAdvice(quote: "I found that with depression, one of the most important things you could realize is that you're not along.", source: "Dwayne Johnson", question: "Why do you feel \(Constants.SelectedMood.Button1)?", description: "Depression Motivation - Broken heart, Anxiety and Hard Times", time: "11 min", url: "https://www.youtube.com/watch?v=VFX2Nqwwm44")

    static let bored0 = JournalAdvice(quote: "Are you bored with life? Then throw yourself into some work you believe in with all your heart, live for it, die for it, and you will find happiness that you had thought could never be yours.", source: "Dale Carnegie", question: "Why do you feel \(Constants.SelectedMood.Button2)?", description: "WHEN YOU FEEL STUCK IN LIFE - NEW Motivational Video", time: "10 min", url: "https://www.youtube.com/watch?v=u6I-5B-80f4")

    static let good0 = JournalAdvice(quote: "The more you praise and celebrate your life, the more there is in life to celebrate.", source: "Oprah Winfrey", question: "Why do you feel \(Constants.SelectedMood.Button3)?", description: "WINNING PSYCHOLOGY - New Motivational Videos Compilation", time: "33 min", url: "https://www.youtube.com/watch?v=ZNmdEau_JNM&t=1s")

    static let grateful0 = JournalAdvice(quote: "It's not possible to experience constant euphoria, but if you're grateful, you can find happiness in everything.", source: "Pharrell Williams", question: "Why do you feel \(Constants.SelectedMood.Button4)?", description: "BEST MOTIVATIONAL VIDEO EVER - BE PHENOMENAL", time: "8 min", url: "https://www.youtube.com/watch?v=wzhzkKccBi8")

    static let mad0 = JournalAdvice(quote: "Holding on to anger is like grasping a hot coal with the intent of throwing it at someone else; you are the one who gets burned.", source: "Buddha", question: "Why do you feel \(Constants.SelectedMood.Button5)?", description: "WHEN IT HURTS - 2016 MOTIVATION", time: "7 min", url: "https://www.youtube.com/watch?v=XNj_KDPp_iM")

    static let stressed0 = JournalAdvice(quote: "Remember that stress doesn't come from what's going on in your life. It comes from your thoughts about what's going on in your life.", source: "Andrew J. Berstein", question: "Why do you feel \(Constants.SelectedMood.Button6)?", description: "WHEN YOU FEEL STRESSED - Motivational Video", time: "6 min", url: "https://www.youtube.com/watch?v=5QbtU8daKc8")

    static let anxiety0 = JournalAdvice(quote: "Nothing diminishes anxiety faster than action.", source: "Walter Anderson", question: "Why do you feel \(Constants.SelectedMood.Button7)?", description: "STOP WORRYING | Anxiety Relief Speech feat Les Brown, Alan Watts and Tom O'bedlam", time: "11 min", url: "https://www.youtube.com/watch?v=oYadJQq0cHQ")

    static let motivated0 = JournalAdvice(quote: "Failure will never overtake me if my determination to succeed is strong enough.", source: "Og Mandino", question: "Why do you feel \(Constants.SelectedMood.Button8)?", description: "WATCH THIS EVERY DAY - Motivational Speech By Dwayne 'The Rock' Johnson", time: "23 min", url: "https://www.youtube.com/watch?v=Wprhn0bBLQc")

    static let happy0 = JournalAdvice(quote: "Very little is needed to make a happy life; it is all within yourself, in your way of thinking.", source: "Marcus Aurelius", question: "Why do you feel \(Constants.SelectedMood.Button9)?", description: "How to Be Happy Every Day | Motivational Video | Tony Robbins Motivation", time: "26 min", url: "https://www.youtube.com/watch?v=TiV3yKjX8aE")

    ///
    static let lost0 = JournalAdvice(quote: "Very little is needed to make a happy life; it is all within yourself, in your way of thinking.", source: "Marcus Aurelius", question: "Why do you feel \(Constants.SelectedMood.Button10)?", description: "How to Be Happy Every Day | Motivational Video | Tony Robbins Motivation", time: "26 min", url: "https://www.youtube.com/watch?v=TiV3yKjX8aE")

    static let lonely0 = JournalAdvice(quote: "Very little is needed to make a happy life; it is all within yourself, in your way of thinking.", source: "Marcus Aurelius", question: "Why do you feel \(Constants.SelectedMood.Button11)?", description: "How to Be Happy Every Day | Motivational Video | Tony Robbins Motivation", time: "26 min", url: "https://www.youtube.com/watch?v=TiV3yKjX8aE")

    static let jealous0 = JournalAdvice(quote: "Very little is needed to make a happy life; it is all within yourself, in your way of thinking.", source: "Marcus Aurelius", question: "Why do you feel \(Constants.SelectedMood.Button12)?", description: "How to Be Happy Every Day | Motivational Video | Tony Robbins Motivation", time: "26 min", url: "https://www.youtube.com/watch?v=TiV3yKjX8aE")

    static let proud0 = JournalAdvice(quote: "Very little is needed to make a happy life; it is all within yourself, in your way of thinking.", source: "Marcus Aurelius", question: "Why do you feel \(Constants.SelectedMood.Button13)?", description: "How to Be Happy Every Day | Motivational Video | Tony Robbins Motivation", time: "26 min", url: "https://www.youtube.com/watch?v=TiV3yKjX8aE")

    static let loved0 = JournalAdvice(quote: "Very little is needed to make a happy life; it is all within yourself, in your way of thinking.", source: "Marcus Aurelius", question: "Why do you feel \(Constants.SelectedMood.Button14)?", description: "How to Be Happy Every Day | Motivational Video | Tony Robbins Motivation", time: "26 min", url: "https://www.youtube.com/watch?v=TiV3yKjX8aE")



}
