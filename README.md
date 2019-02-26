# Everyday Heroes API

This RESTful API serves the Everyday Heroes App.

Repository for the front-end web app is [here](https://github.com/broadwaycodez/everyday-heroes-web)

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






