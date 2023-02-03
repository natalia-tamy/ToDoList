# ToDoList
# README

* This is a simple Ruby on Rails to-do list application, where you can create different lists to organize your tasks.

# Versions
 * Ruby: 2.7.7
 * SQLite3: 3.31.1
 * Node: 16.19.0
# Install
After downloading/cloning this repository, you can run the following command to install:

```
npm install --global yarn
bundle exec rails webpacker:install
bundle install
```
# How it works
To start the project, you'll need to run this command:
```
rails server
```
Then you can access: http://localhost:3000/

In the first page you'll see two sections:
- New
  * You can create new lists to separate diffent types of tasks (eg.: 'To do on Feb 1st', 'Christmas presents')
  * Important: name and description are required
  * In the end of the page you can go back to the first page

- Lists
  * You can see all your lists and choose which one you have to take a look

- Specific list
  * In the task list, you can create new tasks, manage what you need to do and what you have already done by entering the date you completed the task
  * You can delete a task, if it is necessary
  * In the end of the page, you have three options:
    - Edit the list (name and/or description)
    - Destroy the list as well
    - Go back to the first page

## Improvements
* Add controller specs
* Allow just completed date in the present or in the past
* Create a user login