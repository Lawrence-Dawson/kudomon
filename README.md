# Credit Kudos Tech Test

Sadly I was only able to begin this Tech Test on Sunday afternoon, therefore it is **unfinished**.

The **first three** challenges are **complete** Stage four is started but unfinished:

- Build a Kudomon class with species, and type - complete
- A trainer can select a location and see other kudomon that are in that location.
- A trainer can capture Kudomon that are in their location.
- Kudomon and Trainers have a many to many relationship, therefore an infinate amount of trainers can catch the same Kudomon

Stage four:
- Trainers can view their Kudomon in their 'Kudomon Gym'
- Trainers can select their Kudomon for battle/training

To complete stage four I intended to do the following:

- Add HP and CP columns to the Kudomon, also update seeded Kudomon with HP/CP levels
- Add and fully test game logic for battle
- Add a button to the battle view to begin the battle
- Add AJAX to keep the trainer in the same battle view and lower the HP for each respective Kudomon, taking into account new logic for Kudomon types and their effectiveness, until one was defeated

Install and Run Instructions
---------------------------

1. Clone this repository locally
2. From the command line navigate within the cloned repository
3. Enter the command - 'bundle install'
4. Enter the command - 'rake db:migrate'
5. Enter the command - 'rake db:seed'
6. Enter the command - 'bin/rails s'
7. Open a browser and navigate to'http://localhost:3000/kudomon'

For the original challenge Readme see below
-------------------------------------------

Kudomon GO!
Credit Kudos' Technical Challenge.

## What is this challenge for?
We want to understand the way you think about problems, and how you write code to tackle them. We’re not looking for the most efficient algorithmics, we’re looking for the simplest solution. We’re not going to give much in the way of guidance as to the specifics of implementation - if you think a model needs an attribute or a method, you go ahead and do it. You’re in charge.

## How should solutions be presented?
Ideally, solutions will be Ruby code with tests. Rails is optional.
Fork this repo, and raise a pull-request containing your answer.

## So, what’s the challenge?
Imagine that all around us, in a virtual world, are virtual creatures (Kudomon) that you can catch and collect.

A Trainer (like you) can log onto their computer and be unaware that these Kudomon are all around them in geo-virtual space. Your task is to design and build an application through which one can interact with these Kudomon.

### Part 1
#### Define classes to model this application.
There are many different species of Kudomon, each having a type. Examples:

- species: Sourbulb, type: grass
- species: Mancharred, type: fire
- species: Chikapu, type: electric

Other types include water, rock and psychic. Feel free to invent your own species using these six types!

Both Trainers and Kudomon need to have a Position, so we can know which Kudomon are nearby.

### Part 2
#### Gotta catch ‘em all!
In this part we’ll implement the means for a Trainer to catch a Kudomon and add it to their collection.

First, we need to know which Kudomon are nearby to a Trainer. Write code to calculate this. How you define “nearby” is completely up to you.

A Trainer can catch nearby Kudomon and add them to his/her collection. Write code to allow this.

### Part 3
#### Multi-player
Now we’re going to introduce the idea that multiple people can try and catch Kudomon at the same time.

Scenario:
I’m sat at my computer and I see a Kudomon I want to catch. I try to catch it.
At the exact same time, my neighbour Freddy sees the same Kudomon and also tries to catch it.
Freddy succeeds and adds the Kudomon to his collection before I’ve finished catching it.
I now feel sad.

How can we avoid this situation?

Now imagine instead of just two people, it’s now 1000 people cramming into Central Park to catch the same Kudomon - would the same solution work then?

If applicable, amend your code to allow for these situations.

### Part 4
#### Be the very best!
For some reason, Kudomon allow their Trainers to make them battle each other until one of them is knocked out. Add the concept of a Battle between two Kudomon to your code. Amend your code to take into account that Kudomon have health points and combat points.

Write code for a fight with the following mechanics:

1. A randomly chosen Kudomon goes first.
2. Until one of the Kudomon is knocked out (i.e. when health points <= 0), both battling Kudomon take it in turns to inflict damage on the other. The amount of damage is equivalent to their combat points.
3. The battle should return the winner.

To make it more interesting, certain types Kudomon fight far more effectively against other types. For example, a fire Kudomon will trounce a grass type, but a water type will extinguish a fire type.

Water > Fire > Grass > Rock > Electric > Water
(Psychic is good against everything except other psychics.)

Amend your code to take this dynamic into account.
