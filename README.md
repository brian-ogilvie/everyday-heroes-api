# Everyday Heroes API

This RESTful API serves the Everyday Heroes App.

Repository for the front-end web app is [here](https://github.com/broadwaycodez/everyday-heroes-web)

## What is Everyday Heroes?

Everyday Heroes uses the vocabulary of online gaming in order to encourage users to improve their lives and the community around them. Users complete quests, gain experience points, and level up over time by practicing the daily habits outlined in the program. Your progress through the program is measured by the practice of <b>Five Heroic Habits: Focus, Power, Balance, Treasure, and Tribe</b>. Each day, users are assigned small, actionable tasks which improve your ability in each of the heroic habits. Our goal is to improve the world by beginning with ourselves. We can be better husbands, wives, and parents. We can be more productive employees. We can contribute more to our communities. We can take better care of our bodies. We can allow space for our own mental well-being. All of these things are possible! By taking small, measurable actions every day, we will--in time--become the heroes we were meant to be. 

## Development

This project was built using Ruby on Rails to create a RESTful API, utilizing bcrypt and JSON Web Token for secure user authentication.

### Stack information
| Stack Layer | Technology Used |
| :---: | :---: |
| Database | Postgresql |
| API | Ruby on Rails |
| [Web Front-end](https://github.com/broadwaycodez/everyday-heroes-web) | React |

### Database Schema

<details>
	<summary>Entity Relational Diagram</summary>
	<img src="https://res.cloudinary.com/brian-ogilvie/image/upload/v1551154778/Everyday%20Heroes/Everyday%20Heroes%20ERD.png" alt="ERD">
</details>

<details>
<summary>Table Relations</summary>
	
<p>A User belongs to one Tribe<br>	
A Tribe has many Users</p>
	
<p>A User belongs to one Level<br>	
A Level has many Users</p>

<p>A User has many Daily Tasks<br>
A Daily Task belongs to many Users</p>
	
<p>A User has many Challenges<br>
A Challenge belongs to many Users</p>
	
<p>A Challenge belongs to one Level<br>
A Level has many challenges</p>
	
<p>A Challenge belongs to one or many Heroic Habits<br>
A Heroic Habit has many challenges</p>
	
<p>A Daily Task belongs to one Level<br>
A Level has many Daily Tasks</p>
	
<p>A Daily Task belongs to one Heroic Habit<br>
A Heroic Habit has many Daily Tasks</p>

</details>

<details>
	<summary>Priority Matrix</summary>
	<img src="https://res.cloudinary.com/brian-ogilvie/image/upload/v1551201229/Everyday%20Heroes/priority_matrix.jpg" alt="priority matrix">
</details>

## Aknowledgements

Lean JSON responses based on [this tutorial](https://quickleft.com/blog/keeping-your-json-response-lean-in-rails/) by Collin Schaafsma.

Secure user authentication for a stateless (RESTful) API based on [this tutorial](https://www.pluralsight.com/guides/token-based-authentication-with-ruby-on-rails-5-api) by Hristo Georgiev 