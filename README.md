## Bookmark Manager Application

Week: 6 - Databases

Purpose: Pairing challenge 

Dates: 03/06/19 - 06/06/19

Link to challenge instructions: https://github.com/makersacademy/course/blob/master/bookmark_manager/00_challenge_map.md

--------------------------

#### Authors

* 03/06/19 - Lin and Jayda

* 04/06/19 - Lin and Peter

* 05/06/19 - Lin and Lauren 

* 06/06/19 - Lin and Lauren

--------------------------
#### Challenges

1. Creating User Stories
2. Setting up a Web Project
3. Viewing bookmarks
4. Setting up a Database
5. Creating your First Table
6. Manipulating Table Data
7. Interacting with Postgres from Ruby [COB 03-JUN]
8. Upgrading your Toolset
9. Setting up a Testing Environment 
10. Creating bookmarks [COB 04-JUN]
11. Wrapping Database data in program objects
12. Deleting bookmarks
13. CRUD
14. Extracting a Database Setup object [COB 05-JUN]
15. Validating bookmarks [COB 06-JUN]

#### Outstanding
16. One-to-Many Relationships
17. Many-to-Many Relationships
18. Registration
19. Authentication

--------------------------

#### Domain Model

![First user story](https://github.com/makersacademy/course/blob/master/bookmark_manager/images/bookmark_manager_1.png)

--------------------------

#### User Stories

```bash
As a time-pressed user
So that I can quickly go to web sites I regularly visit
I would like to see a list of bookmarks
```
```bash
As a time-pressed user
So that I can save a website
I would like to add the site's address and title to bookmark manager
```
```bash
As a user
So I can store bookmark data for later retrieval
I want to add a bookmark to Bookmark Manager
```
--------------------------

#### Instructions for set-up

1. Connect to psql
2. Create the database using the psql command CREATE DATABASE bookmark_manager;
3. Connect to the database using the pqsl command \c bookmark_manager;
4. Run the query we have saved in the file 01_create_bookmarks_table.sql