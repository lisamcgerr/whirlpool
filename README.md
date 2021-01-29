# **Whirlpool**

<img width="534" alt="whirlpool logo" src="https://user-images.githubusercontent.com/73184313/106289304-bcb56200-620e-11eb-8cb7-1ce19ed718d0.png">


Welcome to Whirlpool Rails Application! 

This project was created by two students attending Flatiron School's software engineering immersive as their module two project. Information regarding the games was provdided by the Board Game Atlas database. The application allows our user, a gamer, to read, analyze, input, update and remove information regarding their profile and game sessions. To get started, we seed our application with real-time data from the Board Game Atlas API, allowing our application access to current information about most currently played games.


## **Models and Users**
The user in our application is a gamer who has the ability invite other users to join a session and a gaming community. In future versions of our program, the functionality could be expanded to include online gaming links and email invitations to other potential users.

Our application utilizes the following models:

- **User:** a user has many user_sessions and user_communities. A User also has many communities through user_communities and sessions through user_sessions
- **Game:** a game has many sessions and has many user_sessions through sessions
- **Session:** a session belongs to a game, has many user_sessions and has many users trough user_sessions
- **Community:** a community has many user_communities and has many users through user_communities 
- **User_Session:** a user_sessions belongs to a user and a community 


## **Instructions**

1. This app is working with Ruby 2.6.1 ``` rvm install 2.6.1 ```
2. Fork and clone this repository into your local environment
3. Run ``` bundle install ``` in your terminal 
4. Run the ``` rails db:migrate ```  followed by ``` rails db:seed ``` to create, migrate, and seed your database with data from the Board Game Atlas API. 
5. Run ``` rails s ``` in your terminal and begin the appplication by opening a browser to localhost:3000
6. Begin your experience by creating a user login, explore the Whirlpool website by using the navigaton bar (top of the page) and links on each page

<img width="631" alt="create new account page name: blank space, age: blank space, email: blank space, username: blank space, password: blank space, confirm password: blank space, profile picture (optional): choose file, create user button " src="https://user-images.githubusercontent.com/73184313/106289459-ef5f5a80-620e-11eb-870e-7467cbcd4887.png">

## **Menu Prompts**


  - **Access Fugitive Data:** allows users the ability to access data about age, physical features, distinguishing marks, warnings, or fugitive status using a name, fugitive ID number, or location
      - **Data Analysis:** allows users to access data about oldest fugitives, youngest fugitives, most common hair color, and the most wanted fugitive
  - **Access Crime Data:** allows users the ability to access information about the description, subject, reward, and date recorded using a crime ID, fugitive name, or location
      - **Most Common Location:** data regarding the most common location of crimes
- **Access Games,Communities, and Sessions:** allows users the ability to access crime and fugitive data or perform a data analysis
    - **Update Records:** allows users the ability to update crime, fugitive, and city information in the database
    - **Update Fugitive Data:** allows users the ability to update or correct any information about a fugitive
    - **Update Crime Data:** allows users the ability to update or correct any information about a crime
    - **Update City Data:** allows users the ability to update or correct a city name

- **Create New User Profiles:** allows users the ability to enter information into the database about a new crime, fugitive, or city name 

- **Create New Game Sessions:** allows users the ability to enter information into the database about a new crime, fugitive, or city name 

- **Remove User Profiles:** allows users the ability to remove a crime, fugitive or city from the database

### Resources
https://api.boardgameatlas.com/api/search?order_by=popularity&ascending=false&pretty=true&client_id=ewGvicQBqR 

### Contributors
Marc Ferraro & Lisa McGerr

The games seen in this application have no affiliation. The public database has been used to create an application for educational purposes only.