# Tic Tac Toe + Apptimize Software Development Kit

## Intro

Coding challenge where I had to **integrate a mobile application with the Apptimize SDK**. **I created a basic tic tac toe game with Swift and XCode** and then followed the software development guide from [Apptimize SDK Download and Documentation](https://apptimize.com/docs/sdk-information.html). 

## Apptimize

"The Apptimize Cross-Platform solution allows **application developers to run A/B tests and manage feature flags across the entire development stack**. Apptimize’s client-side and server-side SDKs are used in conjunction with the Apptimize Dashboard, which provides a **web-based interface for managing experiments and feature flags**."

## Statistical A/B Experiments 

Experiments can be used to quantify the impact of any change before rolling it out live to your entire user-base. An Experiment consists of a default control experience and one or more variants to be tested. For each variant, **Apptimize enables you to measure the impact on important metrics like conversion events, engagement, retention, and revenue**.

Decided to use Apptimize to run an experiment to see whether **users like a blue (original) or black (variant) background** for the Tic Tac Toe game. To do this, I started by adding the SDK to my native iOS project. From there, results were then sent to the Apptimize dashboard, where I'll be able to **determine which option ended up a user favourite based on user retention and engagement**. 

![Alt text](https://github.com/lucylow/Apptimize_tictactoe/blob/master/TicTacToe/Screenshots/Dashboard.png?raw=true "Title")


