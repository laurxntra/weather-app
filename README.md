# Weather

## Student Information
Name: Lauren Tra

CSE netid: laurxnt

email: laurxnt@uw.edu

## Resources Used
Cite anything (website or other resource) or anyone that assisted you in creating your solution to this assignment.

Remember to include all resources you used to solve this assignment.
* Please acknowledge any help you got from TAs, instructors, or students by name.
* You do not need to include links to lecture/section material or flutter docs. However you do need to mention which Flutter classes or packages you viewed.
* You must include links to all StackOverflow, Medium, blogs, or other articles you used.
* If you used any Generative AI (ChatGPT, Gemini, CodePilot, or the like), please include the prompt(s) you used and how the result was or was not helpful.

If you did not use any resources beyond classroom/flutter docs, please state so explicitly.

- I wanted to gain a better understanding of how ChangeNotifierProvider works in Flutter when managing states 
  - https://www.technicalfeeder.com/2021/09/flutter-provider-example-changenotifierprovider-and-consumer/
- This was provided in the spec, but it did help when working with Providers and Consumers
  - https://pub.dev/packages/provider

- ChatGPT look up: are these colors: grey, light blue, amber, and white visual impairment friendly for a mobile app?
  - Originally, I had these colors up and the response I received was that grey risks for users with low vision or color blindness if too light, light blue hues can be difficult for users with tritanopia, amber is poor contrast and is a WCAG violation, and white can wash out light text or element. The way I had it set up was that grey is gloomy, light blue is rain, amber is sunny, and white is any other conditions that are specified. ChatGPT ended up recommending me other colors that could be useful instead of the other colors I originally chose (dark grey, muted blue, deep amber, and white). Using their suggestions, I used Color.fromRGBO to get the ideal colors.

- For the most part, lectures and section has really helped me build the weather app as a whole.

## Reflection Prompts

### Provider
If you were going to add a new feature to this app that made sense to implement (in part) by extending the capabilities of the `WeatherProvider`, what would it be? Why? How would you extend `WeatherProvider` to do that?
- A feature I would add is tracking and sending weather alert notifications for severe weather conditions like storms or natural disasters. I would extend WeatherProvider to do that because it would help store the alerts and notify widgets for any updates. 

If you were going to add a new feature where the implementation would best involve making a second additional provider, what would it be? Why? 
- A second provider I would add is a storm tracker, used to provide real time storm tracking and predictions. This would help the weather alert by giving more detailed information on storms, allowing users to track storm activity.

### Accessibility Tools
You have now used the accessibility developer tool and screen reader to evaluate three of your apps: Nametag, Calculator, and this one. In addition you were to evaluate another persons app for the Calculator Audit.

Which developer tool did you use for identifying accessibility issues (Accessibility Scanner (Android), or Accessibility Inspector (iOS/macOS)) with your Weather app? Which screen reader did you use (TalkBack (Android), VoiceOver (iOS/macOS), or Narrator (Windows))? Were these the same tools you used for identifying problems in your partner's app for the Calculator Audit? 
- Accessibility Inspector (iOS and macOS)
- VoiceOver (iOS and macOS)
- These are the same tools I used for identifying problems in my partner's app for the Calculator Audit

What were your impressions of the accessibility tools you've used? Give examples of what worked well and what was not intuitive. If you have had the opportunity to use the tools on different platforms, what did you like about one over the other? 
- VoiceOver for iOS helped me understand that users with visual impairments need additional context to navigate the app effectively. In this weather app, for example, I made sure that the current conditions are stated as "The current weather condition is... ___", providing more details for users who rely on VoiceOver.
- Honestly, what worked well for me was discussing with my partner during the audit, we exchanged ideas and tested different accessibility features on both of our phones (landscape vs. portrait mode, text sizing, etc.), which helped me learn more about other attributes we, as developers should know for accessibility.


### Learning process
What new tools, techniques, or other skills did you learn while doing this assignment?
- During this assignment, I learned how to integrate real time API data into a Flutter app using the Provider package for state management. This helped me understand how to manage and update the app's state using notifyListeners() to trigger UI updates when the data changes. 

What part of this assignment challenged you the most? How did you overcome those challenges? 
- The most challenging part of this assignment was understanding how to implement state management using the Provider and Consumer widgets. The specification was honestly really helpful by breaking the tasks into 3 separate goals, but I really struggled with triggering the UI to reload once the timer completed. 

How could the assignment be improved for future offerings of this class?
- Maybe more emphasis on the state management, the instructions were very clear and lectures were very helpful while doing this assignment, but maybe instead of instructions additional readings could help?


### Optional Challenges
Tell us which optional challenge you did, learned, and struggled with while tackling some of the optional challenges.

If you did not do an optional challenge, please say so here.

Answer here: (delete this prompt)