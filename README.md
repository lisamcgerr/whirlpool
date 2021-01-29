# **Whirlpool**

<img width="534" alt="whirlpool logo" src="https://user-images.githubusercontent.com/73184313/106289304-bcb56200-620e-11eb-8cb7-1ce19ed718d0.png">


Welcome to Whirlpool Rails Application! 

This project was created by two students attending Flatiron School's software engineering immersive as their module two project. The Board Game Atlas database provided information regarding the games. The application allows our user, a gamer, to read, analyze, input, update and remove information regarding their profile and game sessions. To get started, we seed our application with real-time data from the Board Game Atlas API, allowing our application access to current information about most currently played games.


## **Models and Users**
The user in our application is a gamer who has the ability to invite other users to join a session and a gaming community. In future versions of our program, the functionality could be expanded to include online gaming links and email invitations to other potential users.

Our application utilizes the following models:

- **User:** a user has many user_sessions, user_communities, comments, and posts. A User also has many communities through user_communities and sessions through user_sessions
- **Game:** a game has many sessions and has many user_sessions through sessions
- **Session:** a session belongs to a game, has many user_sessions, and has many users through user_sessions
- **Community:** a community has many user_communities and has many users through user_communities 
- **User_Session:** a user_sessions belongs to a user and a community 
- **Post:** a post belongs to a user and community and has many comments
- **Comment:** a comment belongs to a user, and a post


## **Instructions**

1. This app is working with Ruby 2.6.1 ``` rvm install 2.6.1 ```
2. Fork and clone this repository into your local environment
3. Run ``` bundle install ``` in your terminal 
4. Run the ``` rails db:migrate ```  followed by ``` rails db:seed ``` to create, migrate, and seed your database with data from the Board Game Atlas API. 
5. Run ``` rails s ``` in your terminal and begin the application by opening a browser to localhost:3000
6. Begin the Whirlpool application experience by creating a user. Once created, the user is redirected to the login page (log in to the user account). To begin exploring the Whirlpool website, use the navigaton bar,  and links on each page

<img width="631" alt="create new account page name: blank space, age: blank space, email: blank space, username: blank space, password: blank space, confirm password: blank space, profile picture (optional): choose file, create user button " src="https://user-images.githubusercontent.com/73184313/106289459-ef5f5a80-620e-11eb-870e-7467cbcd4887.png">

## **Navigation Bar**
<img width="1006" alt="Navigation bar" src="https://user-images.githubusercontent.com/73184313/106295144-aa8af200-6215-11eb-8b72-918c6e8c0dbb.png">

- **Communities:** with one click, a user can look at the public communities index. There is a list of communities with links to each community's show page. Once on the show page, the user has the ability to read the community description and join the community of users. If the user is part of the community, they can create a post or leave a comment on the community's page.
 - **Games:** once clicked, a user is directed to the games index page, where there is a list of all the games offered. Every game has a link to the game's show page. Each games' show page has a brief description of the game, information regarding the minimum age requirements, number of players, price, average game time, and a link to the game's rules.
- **Sessions:** clicking this button directs the user to a page that shows all of the public game sessions, with a link to the specific session where the user can click and join. Public sessions also show the number of players in the session followed by the maximum number of players allowed and the date and time of the session
- **New Session:** this button directs the user to a page where they can create a new game session by inputting information regarding the game title, date, open session (public or private), and session title. If public, this session will be posted on the sessions index page, where other users can join the session.
<img width="665" alt="create a game session game: (dropdown menu)selection of all the games offered, Date: (select a time and date from a dropdown menu), open session: (button if selected makes a session public) session title: (user types in any title for any open session) followed by the create session button" src="https://user-images.githubusercontent.com/73184313/106293249-6565c080-6213-11eb-9b11-26fc6dd1aded.png">

- **My Profile:** clicking the 'my profile' button displays the user logged in's profile page. This page displays the username, optional profile picture, the user's communities, game history, and upcoming sessions. A user is also able to edit or delete their profile 
<img width="402" alt="goofy profile page" src="https://user-images.githubusercontent.com/73184313/106294726-259fd880-6215-11eb-8a1e-18a232acb3f8.png">
   
- **Logout:** clicking this logout button will logout of the user's profile and redirect them to the home page, where the login button replaces the logout button

### Resources
https://api.boardgameatlas.com/api/search?order_by=popularity&ascending=false&pretty=true&client_id=ewGvicQBqR 

### Contributors
Marc Ferraro & Lisa McGerr

The games seen in this application have no affiliation. The public database has been used to create an application for educational purposes only.