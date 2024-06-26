import 'dart:ui';

import 'package:flutter/material.dart';
// List<GlobalKey> globalImage=[
//   ...List.generate(quotesList.length, (index) => GlobalKey())
// ];
List quotesList = [
  {
    "quote":
        "Life isn’t about getting and having, it’s about giving and being.",
    "author": "Kevin Kruse",
    "img": "assets/images/6p.jpg"
  },
  {
    "quote":
        "Whatever the mind of man can conceive and believe, it can achieve.",
    "author": "Napoleon Hill",
    "img": "assets/images/1.jpg"
  },
  {
    "quote": "Strive not to be a success, but rather to be of value.",
    "author": "Albert Einstein",
    "img": "assets/images/2.jpg"
  },
  {
    "quote":
        "Two roads diverged in a wood, and I—I took the one less traveled by, And that has made all the difference.",
    "author": "Robert Frost",
    "img": "assets/images/pro1.jpg"
  },
  {
    "quote": "I attribute my success to this: I never gave or took any excuse.",
    "author": "Florence Nightingale",
    "img": "assets/images/pro.jpg"
  },
  {
    "quote": "You miss 100% of the shots you don’t take.",
    "author": "Wayne Gretzky",
    "img": "assets/images/5p.jpg"
  },
  {
    "quote":
        "I’ve missed more than 9000 shots in my career. I’ve lost almost 300 games. 26 times I’ve been trusted to take the game winning shot and missed. I’ve failed over and over and over again in my life. And that is why I succeed.",
    "author": "Michael Jordan",
    "img": "assets/images/8p.jpg"
  },
  {
    "quote":
        "The most difficult thing is the decision to act, the rest is merely tenacity.",
    "author": "Amelia Earhart",
    "img": "assets/images/11p.jpg"
  },
  {
    "quote": "Every strike brings me closer to the next home run.",
    "author": "Babe Ruth",
    "img": "assets/images/7p.jpeg"
  },
  {
    "quote":
        "Definiteness of purpose is the starting point of all achievement.",
    "author": "W. Clement Stone",
    "img": "assets/images/pro.jpg"
  },
  {
    "quote":
        "We must balance conspicuous consumption with conscious capitalism.",
    "author": "Kevin Kruse",
    "img": "assets/images/10p.jpg"
  },
  {
    "quote":
        "Life is what happens to you while you’re busy making other plans.",
    "author": "John Lennon",
    "img": "assets/images/9p.jpg"
  },
  {
    "quote": "We become what we think about.",
    "author": "Earl Nightingale",
    "img": "assets/images/12p.jpg"
  },
  {
    "quote":
        "Twenty years from now you will be more disappointed by the things that you didn’t do than by the ones you did do, so throw off the bowlines, sail away from safe harbor, catch the trade winds in your sails.  Explore, Dream, Discover.",
    "author": "Mark Twain",
    "img": "assets/images/11p.jpg"
  },
  {
    "quote": "Life is 10% what happens to me and 90% of how I react to it.",
    "author": "Charles Swindoll",
    "img": "assets/images/1.jpg"
  },
  {
    "quote":
        "The most common way people give up their power is by thinking they don’t have any.",
    "author": "Alice Walker",
    "img": "assets/images/5p.jpg"
  },
  {
    "quote": "The mind is everything. What you think you become.",
    "author": "Buddha",
    "img": "assets/images/8p.jpg"
  },
  {
    "quote": "Winning isn’t everything, but wanting to win is.",
    "author": "Vince Lombardi",
    "img": "assets/images/10p.jpg"
  },
  {
    "quote":
        "I am not a product of my circumstances. I am a product of my decisions.",
    "author": "Stephen Covey",
    "img": "assets/images/pro1.jpg"
  },
  {
    "quote":
        "Every child is an artist.  The problem is how to remain an artist once he grows up.",
    "author": "Pablo Picasso",
    "img": "assets/images/12p.jpg"
  },
  {
    "quote":
        "You can never cross the ocean until you have the courage to lose sight of the shore.",
    "author": "Christopher Columbus",
    "img": "assets/images/7p.jpeg"
  },
  {
    "quote":
        "I’ve learned that people will forget what you said, people will forget what you did, but people will never forget how you made them feel.",
    "author": "Maya Angelou",
    "img": "assets/images/pro.jpg"
  },
  {
    "quote": "Either you run the day, or the day runs you.",
    "author": "Jim Rohn",
    "img": "assets/images/9p.jpg"
  },
  {
    "quote": "Whether you think you can or you think you can’t, you’re right.",
    "author": "Henry Ford",
    "img": "assets/images/5p.jpg"
  },
  {
    "quote":
        "The two most important days in your life are the day you are born and the day you find out why.",
    "author": "Mark Twain",
    "img": "assets/images/pro.jpg"
  },
  {
    "quote":
        "Whatever you can do, or dream you can, begin it.  Boldness has genius, power and magic in it.",
    "author": "Johann Wolfgang von Goethe",
    "img": "assets/images/9p.jpg"
  },
  {
    "quote": "The best revenge is massive success.",
    "author": "Frank Sinatra",
    "img": "assets/images/8p.jpg"
  },
  {
    "quote":
        "People often say that motivation doesn’t last. Well, neither does bathing.  That’s why we recommend it daily.",
    "author": "Zig Ziglar",
    "img": "assets/images/pro1.jpg"
  },
  {
    "quote": "Life shrinks or expands in proportion to one’s courage.",
    "author": "Anais Nin",
    "img": "assets/images/3.jpg"
  },
  {
    "quote":
        "If you hear a voice within you say “you cannot paint,” then by all means paint and that voice will be silenced.",
    "author": "Vincent Van Gogh",
    "img": "assets/images/1.jpg"
  },
  {
    "quote":
        "There is only one way to avoid criticism: do nothing, say nothing, and be nothing.",
    "author": "Aristotle",
    "img": "assets/images/2.jpg"
  },
  {
    "quote":
        "Ask and it will be given to you; search, and you will find; knock and the door will be opened for you.",
    "author": "Jesus",
    "img": "assets/images/6p.jpg"
  },
  {
    "quote":
        "The only person you are destined to become is the person you decide to be.",
    "author": "Ralph Waldo Emerson",
    "img": "assets/images/12p.jpg"
  },
  {
    "quote":
        "Go confidently in the direction of your dreams.  Live the life you have imagined.",
    "author": "Henry David Thoreau",
    "img": "assets/images/11p.jpg"
  },
  {
    "quote":
        "When I stand before God at the end of my life, I would hope that I would not have a single bit of talent left and could say, I used everything you gave me.",
    "author": "Erma Bombeck",
    "img": "assets/images/10p.jpg"
  },
  {
    "quote":
        "Few things can help an individual more than to place responsibility on him, and to let him know that you trust him.",
    "author": "Booker T. Washington",
    "img": "assets/images/pro.jpg"
  },
  {
    "quote":
        "Certain things catch your eye, but pursue only those that capture the heart.",
    "author": " Ancient Indian Proverb",
    "img": "assets/images/pro1.jpg"
  },
  {
    "quote": "Believe you can and you’re halfway there.",
    "author": "Theodore Roosevelt",
    "img": "assets/images/8p.jpg"
  },
  {
    "quote": "Everything you’ve ever wanted is on the other side of fear.",
    "author": "George Addair",
    "img": "assets/images/7p.jpeg"
  },
  {
    "quote":
        "We can easily forgive a child who is afraid of the dark; the real tragedy of life is when men are afraid of the light.",
    "author": "Plato",
    "img": "assets/images/pro.jpg"
  },
  {
    "quote":
        "Teach thy tongue to say, “I do not know,” and thous shalt progress.",
    "author": "Maimonides",
    "img": "assets/images/pro1.jpg"
  },
  {
    "quote": "Start where you are. Use what you have.  Do what you can.",
    "author": "Arthur Ashe",
    "img": "assets/images/9p.jpg"
  },
  {
    "quote":
        "When I was 5 years old, my mother always told me that happiness was the key to life.  When I went to school, they asked me what I wanted to be when I grew up.  I wrote down ‘happy’.  They told me I didn’t understand the assignment, and I told them they didn’t understand life.",
    "author": "John Lennon",
    "img": "assets/images/6p.jpg"
  },
  {
    "quote": "Fall seven times and stand up eight.",
    "author": "Japanese Proverb",
    "img": "assets/images/5p.jpg"
  },
  {
    "quote":
        "When one door of happiness closes, another opens, but often we look so long at the closed door that we do not see the one that has been opened for us.",
    "author": "Helen Keller",
    "img": "assets/images/8p.jpg"
  },
  {
    "quote": "Everything has beauty, but not everyone can see.",
    "author": "Confucius",
    "img": "assets/images/pro.jpg"
  },
  {
    "quote":
        "How wonderful it is that nobody need wait a single moment before starting to improve the world.",
    "author": "Anne Frank",
    "img": "assets/images/pro.jpg"
  },
  {
    "quote": "When I let go of what I am, I become what I might be.",
    "author": "Lao Tzu",
    "img": "assets/images/pro.jpg"
  },
  {
    "quote":
        "Life is not measured by the number of breaths we take, but by the moments that take our breath away.",
    "author": "Maya Angelou",
    "img": "assets/images/pro.jpg"
  },
  {
    "quote":
        "Happiness is not something readymade.  It comes from your own actions.",
    "author": "Dalai Lama",
    "img": "assets/images/pro.jpg"
  },
  {
    "quote":
        "If you’re offered a seat on a rocket ship, don’t ask what seat! Just get on.",
    "author": "Sheryl Sandberg",
    "img": "assets/images/pro.jpg"
  },
  {
    "quote":
        "First, have a definite, clear practical ideal; a goal, an objective. Second, have the necessary means to achieve your ends; wisdom, money, materials, and methods. Third, adjust all your means to that end.",
    "author": "Aristotle",
    "img": "assets/images/pro.jpg"
  },
  {
    "quote": "If the wind will not serve, take to the oars.",
    "author": "Latin Proverb",
    "img": "assets/images/pro.jpg"
  },
  {
    "quote":
        "You can’t fall if you don’t climb.  But there’s no joy in living your whole life on the ground.",
    "author": "Unknown",
    "img": "assets/images/pro.jpg"
  },
  {
    "quote":
        "We must believe that we are gifted for something, and that this thing, at whatever cost, must be attained.",
    "author": "Marie Curie",
    "img": "assets/images/pro.jpg"
  },
  {
    "quote":
        "Too many of us are not living our dreams because we are living our fears.",
    "author": "Les Brown",
    "img": "assets/images/pro.jpg"
  },
  {
    "quote":
        "Challenges are what make life interesting and overcoming them is what makes life meaningful.",
    "author": "Joshua J. Marine",
    "img": "assets/images/pro.jpg"
  },
  {
    "quote": "If you want to lift yourself up, lift up someone else.",
    "author": "Booker T. Washington",
    "img": "assets/images/pro.jpg"
  },
  {
    "quote":
        "I have been impressed with the urgency of doing. Knowing is not enough; we must apply. Being willing is not enough; we must do.",
    "author": "Leonardo da Vinci",
    "img": "assets/images/pro.jpg"
  },
  {
    "quote":
        "Limitations live only in our minds.  But if we use our imaginations, our possibilities become limitless.",
    "author": "Jamie Paolinetti",
    "img": "assets/images/pro.jpg"
  },
  {
    "quote":
        "You take your life in your own hands, and what happens? A terrible thing, no one to blame.",
    "author": "Erica Jong",
    "img": "assets/images/pro.jpg"
  },
  {
    "quote":
        "What’s money? A man is a success if he gets up in the morning and goes to bed at night and in between does what he wants to do.",
    "author": "Bob Dylan",
    "img": "assets/images/pro.jpg"
  },
  {
    "quote": "I didn’t fail the test. I just found 100 ways to do it wrong.",
    "author": "Benjamin Franklin",
    "img": "assets/images/pro.jpg"
  },
  {
    "quote":
        "In order to succeed, your desire for success should be greater than your fear of failure.",
    "author": "Bill Cosby",
    "img": "assets/images/pro.jpg"
  },
  {
    "quote": "A person who never made a mistake never tried anything new.",
    "author": " Albert Einstein",
    "img": "assets/images/pro.jpg"
  },
  {
    "quote":
        "The person who says it cannot be done should not interrupt the person who is doing it.",
    "author": "Chinese Proverb",
    "img": "assets/images/pro.jpg"
  },
  {
    "quote": "There are no traffic jams along the extra mile.",
    "author": "Roger Staubach",
    "img": "assets/images/pro.jpg"
  },
  {
    "quote": "It is never too late to be what you might have been.",
    "author": "George Eliot",
    "img": "assets/images/pro.jpg"
  },
  {
    "quote": "You become what you believe.",
    "author": "Oprah Winfrey",
    "img": "assets/images/pro.jpg"
  },
  {
    "quote": "I would rather die of passion than of boredom.",
    "author": "Vincent van Gogh",
    "img": "assets/images/pro1.jpg"
  },
  {
    "quote":
        "A truly rich man is one whose children run into his arms when his hands are empty.",
    "author": "Unknown",
    "img": "assets/images/pro.jpg"
  },
  {
    "quote":
        "It is not what you do for your children, but what you have taught them to do for themselves, that will make them successful human beings.",
    "author": "Ann Landers",
    "img": "assets/images/10p.jpg"
  },
  {
    "quote":
        "If you want your children to turn out well, spend twice as much time with them, and half as much money.",
    "author": "Abigail Van Buren",
    "img": "assets/images/9p.jpg"
  },
  {
    "quote":
        "Build your own dreams, or someone else will hire you to build theirs.",
    "author": "Farrah Gray",
    "img": "assets/images/pro.jpg"
  },
  {
    "quote":
        "The battles that count aren’t the ones for gold medals. The struggles within yourself–the invisible battles inside all of us–that’s where it’s at.",
    "author": "Jesse Owens",
    "img": "assets/images/11p.jpg"
  },
  {
    "quote": "Education costs money.  But then so does ignorance.",
    "author": "Sir Claus Moser",
    "img": "assets/images/12p.jpg"
  },
  {
    "quote":
        "I have learned over the years that when one’s mind is made up, this diminishes fear.",
    "author": "Rosa Parks",
    "img": "assets/images/5p.jpg"
  },
  {
    "quote": "It does not matter how slowly you go as long as you do not stop.",
    "author": "Confucius",
    "img": "assets/images/pro.jpg"
  },
  {
    "quote":
        "If you look at what you have in life, you’ll always have more. If you look at what you don’t have in life, you’ll never have enough.",
    "author": "Oprah Winfrey",
    "img": "assets/images/6p.jpg"
  },
  {
    "quote":
        "Remember that not getting what you want is sometimes a wonderful stroke of luck.",
    "author": "Dalai Lama",
    "img": "assets/images/pro1.jpg"
  },
  {
    "quote":
        "You can’t use up creativity.  The more you use, the more you have.",
    "author": "Maya Angelou",
    "img": "assets/images/pro.jpg"
  },
  {
    "quote": "Dream big and dare to fail.",
    "author": "Norman Vaughan",
    "img": "assets/images/3.jpg"
  },
  {
    "quote":
        "Our lives begin to end the day we become silent about things that matter.",
    "author": "Martin Luther King Jr.",
    "img": "assets/images/5p.jpg"
  },
  {
    "quote": "Do what you can, where you are, with what you have.",
    "author": "Teddy Roosevelt",
    "img": "assets/images/6p.jpg"
  },
  {
    "quote":
        "If you do what you’ve always done, you’ll get what you’ve always gotten.",
    "author": "Tony Robbins",
    "img": "assets/images/pro.jpg"
  },
  {
    "quote": "Dreaming, after all, is a form of planning.",
    "author": "Gloria Steinem",
    "img": "assets/images/10p.jpg"
  },
  {
    "quote":
        "It’s your place in the world; it’s your life. Go on and do all you can with it, and make it the life you want to live.",
    "author": "Mae Jemison",
    "img": "assets/images/7p.jpeg"
  },
  {
    "quote":
        "You may be disappointed if you fail, but you are doomed if you don’t try.",
    "author": "Beverly Sills",
    "img": "assets/images/6p.jpg"
  },
  {
    "quote": "Remember no one can make you feel inferior without your consent.",
    "author": "Eleanor Roosevelt",
    "img": "assets/images/sky.jpg"
  },
  {
    "quote": "Life is what we make it, always has been, always will be.",
    "author": "Grandma Moses",
    "img": "assets/images/pro1.jpg"
  },
  {
    "quote":
        "The question isn’t who is going to let me; it’s who is going to stop me.",
    "author": "Ayn Rand",
    "img": "assets/images/12p.jpg"
  },
  {
    "quote":
        "When everything seems to be going against you, remember that the airplane takes off against the wind, not with it.",
    "author": "Henry Ford",
    "img": "assets/images/11p.jpg"
  },
  {
    "quote":
        "It’s not the years in your life that count. It’s the life in your years.",
    "author": "Abraham Lincoln",
    "img": "assets/images/9p.jpg"
  },
  {
    "quote": "Change your thoughts and you change your world.",
    "author": "Norman Vincent Peale",
    "img": "assets/images/5p.jpg"
  },
  {
    "quote":
        "Either write something worth reading or do something worth writing.",
    "author": "Benjamin Franklin",
    "img": "assets/images/3.jpg"
  },
  {
    "quote": "Nothing is impossible, the word itself says, “I’m possible!”",
    "author": "–Audrey Hepburn",
    "img": "assets/images/1.jpg"
  },
  {
    "quote": "The only way to do great work is to love what you do.",
    "author": "Steve Jobs",
    "img": "assets/images/pro1.jpg"
  },
  {
    "quote": "If you can dream it, you can achieve it.",
    "author": "Zig Ziglar",
    "img": "assets/images/pro.jpg"
  }
];

int index = 0;
List colorList = [
  Colors.blue.shade300,
  Colors.teal.shade300,
  Colors.orange.shade100,
  Colors.green.shade300,
  Colors.lightGreen,
  Colors.blueAccent,
  Colors.blue.shade300,
  Colors.teal.shade300,
  Colors.orange.shade100,
  Colors.green.shade300,
  Colors.lightGreen,
  Colors.blueAccent,
];
