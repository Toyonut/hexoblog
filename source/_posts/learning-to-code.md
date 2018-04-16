---
title: learning to code review and take a code review.
date: 2018-03-25 21:17:11
tags: 
    - learning
    - walk first
    - code
---
You are not the code you write, your value isn't in some text in a computer.
<!-- more -->
It's not easy to take criticism, not for me anyway. This goes double for something I worked really hard on, like a script or program.
I spent a lot of time on that, how come you get to say it needs improvement?
How come my point isn't getting across about how my code is actually good?
Submitting something that took a long time and getting back a couple of sentences that point out your mistakes and problems is hard.
Code review is hard.
Good code review is harder.

I am no expert, but here are a couple of things I have learned.

* Get some context. If you don't know why, or the reviewer isn't leaving good comments, talk to them. Tell them where you are coming from, ask them where they are coming from. The person reviewing your code has a whole different history and perspective to you, take the time to understand their concerns and ask questions.
* Don't assume anything about the motives of the reviewer. Plain text is a harsh medium for communication. It doesn't convey nuance and emotion well. A review that would have been softened with a kind voice can come accross harsh and accusing.
* Remember programming is a team sport. Everyone brings skills and knowledge to the table and a second pair of eyes could easily stop a serious bug getting through.
* If your reviewer is getting picky about code style, just install a linter with the team and be done with it. Life is too short to argue about code style when it is a mostly solved problem. As a bonus, it might also stop bugs and improve code readability. EditorConfig, Go FMT, Prettier, Standard, PyLint etc, the tools exist for a reason, use them.
* Embrace the questions. Answer honestly, and if you don't know, find out. Take it as a chance to learn something new.
* Give better reviews. LGTM has it's place, but if you don't understand why something was written the way it was or you think it could be done better, ask about it. Just like a review of your code could stop an issue getting through, you could be the pair of eyes that stops someone elses bug or helps them learn something new. Put thought into your review.
* Remember your code will be changed, overwritten and deleted tomorrow. It is better if more of the team understand it and can change, adapt or delete it. It is highly unlikely your piece of code is going to end up framed on the office wall.

Finally, there is the DBAD rule: Don't be a dick. If you can folow it and work with a team that follows it, you will get better outcomes. Being a dick helps no-one. Remember the golder rule, do unto others as you would have them do unto you.

Cheers
Paul