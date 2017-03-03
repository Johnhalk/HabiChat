# [HabiChat](https://habichat.herokuapp.com/)

### Home life, keep group related scheduling and communication in one place

![Imgur](http://i.imgur.com/j5m9Dib.png)

## Core Features Implemented

- User can sign up, sign in and sign out
- Shared calendar, which displays tasks that were added to the calendar
- Add a task to the shared list of tasks
- Update the status of the task (in progress/complete)
- Add comments to the task (to allow discussion)
- Add this task to the calendar
- Delete the task (only of you have created it)
- Discuss tasks in Chatroom

## Models

![Imgur](http://i.imgur.com/szy1rVw.png)

## User Stories

```
As a Group Member,
So that I can communicate tasks,
I would like to be able to add a task.

As a Group Member,
So that I can tell more about the task,
I would like to be able to add a priority and a completion date to a task.

As a Group Member,
So that I can discuss tasks,
I would like to be able to comment on the task.

As a Group Member,
So that I can know what the tasks are,
I would like to see a list of tasks.

As a Group Member,
So that I can see tasks added to the Calendar,
I would like to be able to see the Calendar.

As a Group Member,
So that group can see my task in the Calendar,
I would like to be able to add task to the Calendar to the date when it should be completed.

As a Group Member,
So that group can see details of my task in the Calendar,
I would like to be able to see task priorities in different colours in the Calendar.

As a Group Member,
To keep track of the completed tasks,
I would like to be able to mark a task as completed.

As a potential user,
So that I can join a Group,
I would like to be able to sign up, sign in, sign out and log back in.

As a Group Member,
So that I can discuss all that matters to me with the group,
I can chat with other group members.
```

## Screen Shots

![Imgur](http://i.imgur.com/odpo32c.png)

![Imgur](http://i.imgur.com/8zFqMV6.png)

![Imgur](http://i.imgur.com/2lC4HmV.png)

## Technologies Used

**Framework**

- Ruby on Rails 5.0.1
- Devise for User model
- Erb for view template engine

**Database**

- PostgreSQL

**Front End**
- HTML/CSS
- Bootstrap
- JQuery

**Testing**
- RSpec
- Capybara
- Coveralls

**External Services**
- **Calendar:** SimpleCalendar
- **Chat:** WebSockets (ActionCable)

Deployed to [Heroku](https://habichat.herokuapp.com/).

## Installation and Usage

- Clone this repo
- Run `bundle install` in project root directory
- Run `bin/rake db:create` to create databases
- Run `bin/rake db:migrate` to run database migrations
- Run `bin/rails s` to run the rails server
- Open `http://localhost:3000` to view the app

Or you can play with it [online](https://habichat.herokuapp.com/).

### Running the Tests

Run `rspec` in the project root directory

## Features we would like to implement with more time

- Events (similar to Tasks)
- Emojis for Chat
- Syncing to your Google Calendar
- Notifications for new events, comments, messages and tasks
- Bills and bill splitting
- Assigning tasks to users
