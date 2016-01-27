![General Assembly Logo](http://i.imgur.com/ke8USTq.png)

## Objectives
- Manage change in a project.
- Track changes in a project.
- Isolate and "Sandbox" change.
- Undo changes in a project.
- View changes in a project.
- Document changes in a project.


## Prerequisites
- Completed Prework on Version Control.

## Overview 

Let's start by watching a 5 minute video about Git, just an overview. [Git Videos](http://git-scm.com/videos)

Continuing from our last project, [Unix CLI](CLI_Lesson.md), we're going to explore how we can **manage change**.

Now, that we've given Morty a way to manage his store we're going to back up and address another of Morty's challenges, **changes to the operations of the business and this project**. 

You see Morty is probably not going to be the only one that is going to using this project. He has employees that will be tasked with keeping all the information needed by the store up to date. 

And as time goes on Morty and others will be identifying more information, data, that will be valuable to the business. And perhaps, perhaps at some point the business will need some software that could be helpful to managing the business. 

All of these changes will be made to the project by multiple people over some period of time. And as we'll see if we don't manage all these changes by multiple people over time the data in the project could become invalid or missing. And, as we'll see, invalid or missing data can significantly break an application. 
_I mean really, significantly break._

So, lets see how we can manage this change.

## Source Control

Controlling the process of managing change when creating software has long been identified as an important task. We've seen that having multiple developers working on a project all making change can cause many, many problems. And software **source control or version control** is an important part of every development environment and project thats used to manage this change. 

Projects need to track change. Track who makes change, when changes are made, undo change, synchronize change made by mutliple people, control what is allowed to change, etc.

We're going to use a specific tool for managing change in our projects. We're going to use, **git**.

## Git

Git is a version control tool designed by Linus Torvalds, the guy who invented Linux; it works by allowing users to create 'snapshots' that represent the state of the project (called a **repository**) at any moment in time.

## We Do

Ok, lets pick up where we left off in the last lesson, [Unix CLI](CLI_Lesson.md). **But, we're going to have a very specific way to manage change using git**.  

### Create the project.

> Lets start over from the start, managing change with git.
> First we'll create the directory for the project in some other directory, _perhaps the `~/tmp` directory._

```bash
$ mkdir MortStore
$ cd MortStore
$ ls -al
```

> Now that we've created this project we've going to start managing change with git.

**Git Initialize the project**

```bash
$ git init
$ ls -al
```

> We've **initialized the project with git** using ``git init``

> We can also see that we created a ``.git`` directory. This is used by git internally to track all changes. *Let's not go into the details of how git itself does this right now.*

**Show the status of the project, it's files and directories**

> Lets show the status of this empty project directory after it's been initialized.

```bash
$ git status
On branch master                                                                              
                                                                                              
Initial commit                                                                                
                                                                                              
nothing to commit (create/copy files and use "git add" to track)
```

> Not much info here. Just that this project is now using git to track change.

> Lets add a file.

```bash
$ git touch README
$ echo "Mort's Hardware" > README 
$ cat README
```

> Here we've just created a file and added some text into it. Lets see what git thinks the project status is now. 


```bash
$ git status
On branch master                                                                              
                                                                                              
Initial commit                                                                                
                                                                                              
Untracked files:                                                                              
  (use "git add <file>..." to include in what will be committed)                              
                                                                                              
        README                                                                                
                                                                                              
nothing added to commit but untracked files present (use "git add" to track) 
```


##### Definition: Tracked/Untracked files.

Git **tracks** the state of file and directories. If a file/directory is tracked then Git knows about the file and can manage it's state.

**Untracked files** are files that exist but that are not tracked, or managed by Git.

> We have one file in our project that is not **tracked** by Git. Let's allow Git to track this file.

**Allow Git to track a file**

> Let's track the README file with Git.

```bash
$ git add README
$ git status
On branch master                                                               
                                                                               
Initial commit                                                                 
                                                                               
Changes to be committed:                                                       
  (use "git rm --cached <file>..." to unstage)                                 
                                                                               
        new file:   README    
```

> Cool, now Git is tracking the README in the index or staging area.

##### Definition: Staging a file.

In order for Git to track a file or a set of files it's will be **staged**. You may hear that a file is in the **staging area** which is also known as the **index**.

> Now that Git is tracking the file in it's **staging area** we will commit the file. _Note: the staging area is just a temporary holding area for changes_

![Git Staging](images/git-commit-staging.png)

**Git commit the README.**

```bash
$ git commit README
```

>> Whoa, whats going on here? 

> This is the final phase, __commit__, of moving this file being tracked in the __staging area__ and finally committing the file to the repository.
> 
> When you commit the file you need to create a __commit message__. This will describe the changes you've made.   

> Typically an editor will be invoked so you can make the commit message.

> So, add you commit message in the editor, save and quit.

__It's a 3 step process.__

```bash
<create or update a file/directory>
$ git add <file/directory name>
$ git commit
```

1. Create or modify a file or directory. _Could be moving a file or directory also_. This change will be in the __working directory__ and if it's a new file will be __untracked__ because never knew about it.
2. Add the change to the __staging area__. This is a temporary stop.
3. Commit the change to the __repository__. Which creates a commit that will describe __who__ made the change, __what__ the reason for the change and __when__ the change was made.

> And look at the project status again.

```bash
git status
On branch master                                                               
nothing to commit, working directory clean
```

> Now that we've commited the file git tells us we're all good, have a *clean working directory*.

![Git Staging](images/git-staging-area.png)

**View the commit with log.**

> Before we move on lets try one more Git command, ``git log``.

```bash
$ git log                                                             
commit c527e57a8bff28ee9fca72f8c6b137fa0baaed7a                                               
Author: Tom Dyer <tdyer1@gmail.com>                                                           
Date:   Wed Jan 27 12:26:12 2016 -0500                                                        
                                                                                              
    Added README file.        
```

> This is giving us the entire change history. Notice that the commit is *uniquely identified* by a long string called the **commit hash**. 

> It also shows who, when and why the commit, change, was made.

> Notice the __commit hash__ in the first line above. This uniquely identifies the change/commit. And is very central to how git works.

## You Do

Add a license file to the project. Use the [MIT License](https://tldrlegal.com/license/mit-license#fulltext).

Remember to add and check the status. 

Then commit, write a commit message and check the status. 

Then look at the history of commits with ``git log``.

Then add some text to the README file, add and commit it. And use `git log` to see the commit history.


## We Do.

> So now, we have a couple of commits. Each commit refers the previous commit and the *master* branch now points or refers to the most recent commit.
> 
> Here we have three commits:

* C0 which was our initial commit when we added the README.
* C1 is the commit where we added the license .
* C2 is the commit were we updated the README.



![Git Staging](images/git-master-ref.png)

> The master branch is really only a pointer to the a commit! It's moves to the most recent commit by default.

##### Definition: Git branches.
A **Git branch** gives us the ability to have multiple versions of the project. Each version of the project can be in a very different state. 

One branch typically holds all one *project feature*. Another words it contains, or sandboxes, all the changes that need to made to implement a feature.

> The current status is that we have one **branch named master**. The **master branch** is the default branch that git creates for us.

### Create the departments. 


> Now, lets create subdirectories for each department. But, first we're going to create a new branch for this "Create department directories" feature.

```bash
$ git branch -a
$ git checkout -b create-departments
$ git branch -a
* create-departments                                                           
  master 
```

> We created a *feature or topic branch* for this feature. Typically each feature will be implemented in it's own branch. We do this so that we have manage how a features are added into a project.

> This will allow multiple people, usually developers, to maked changes and add feature without overwriting each other's work. We are *synchronizing* mulitple changes over time.

> The ``git branch -a`` command will allow to see all the branches and will use the asterisk, '*', to indicate which branch we are currently using. 

## You Do

Add directories for each department. You remember the ``mkdir`` command, right?

Departments are LawnGarden, Plumbing, Electrical, Tools and Hardware.

And look at the status of project.

## We Do 

> Did you notice how Git didn't see any change? That's because Git doesn't know about empty directories.
> 
> We need to create dummy files in each directory so that git picks up this change.

```bash
$ git status
$ touch LawnGarden/.keep Hardware/.keep Tools/.keep Plumbing/.keep Electrical/.keep
$ git status
```

> .keep files are just empty files created so that we can track empty directories.

## You Do 

Add these department directories to the index and commit them.

## You Do

Add each department's inventory files, *use Sublime*.

Create files. View changes with ``ls -aR``, ``git status``.

Add files to index/staging area. View changes with ``ls -aR``, ``git status``.

Commit files. 
View git status, history and commit.


The files will be named inventory.txt and there contents will be a comma seperated file (CSV) in each department's directory.

In LawnGarden/inventory.csv add:

```
Item,ProdNum,Quantity,Price,Sold Per Month
Shovel, 1, 11,74.33,13
Rake,2,5,35.99,0.5
Hose,3,19,16.99,3
```

In Plumbing/inventory.csv:

```
Item,ProdNum,Quantity,Price,Sold Per Month
Toilet,4,3,249.99,1
Solder,5,88,5.99,33
Sinks,6,5,299.99,.2
```

In Electrical/inventory.csv:

```
Item,ProdNum,Quantity,Price,Sold Per Month
Fuses,7,1024,1.99,640
Batteries,8,100,4.99,204
Switchs,9,29,14.50,18
```

In Tools/inventory.csv:

```
Item,ProdNum,Quantity,Price,Sold Per Month
Hand Saw,10,9,77.99,2
Drill,11,67,34.99,15
Wet Vac,12,2,114.50,0.1
```

## You Do.
Create staff files for each department.

In LawnGarden/staff.csv:

```
Name,Phone,Email,Role
Jack Sprat,978-251-2384,jack@example.com,manager
Moe Brown,617-589-8977,moeb@example.com, associate
```

In Plumbing/staff.csv:

```
Name,Phone,Email,Role
Brian Behan,978-668-2344,brianb@example.com,manager
Richy Havens,617-812-7312,rhavens@example.com, associate
```

In Electrical/staff.csv:

```
Name,Phone,Email,Role
Joy Gillis,978-238-9894,joyg@example.com,manager
Laura Havens,617-763-5542,rhavens@example.com, associate
```

In Tools/staff.csv:

```
Name,Phone,Email,Role
Tom Smith,888-989-777,ts@example.com, associate
Meg Brown,978-453-8984,megb@example.com,manager
```


## I Do

> Now we have two branches. The branch that starts with the first commit, C0, is the master branch.
> 
> master has four commits, C0 through C4.
![Git Staging](images/git-commit-graph.png)
> create-departments has two commits, C3 and C5. C3 is the first commit in create-departments and it's predessosor branck was C2.
> 

## You Do.

Work through this lab, [Git Lab](Git_Lab.md).

There are some new git commands in this Lab but they should be explained well in the references given in the lab and below. 

If not, we should discuss as a class. Learning and Teaching each other is a very productive exercise.

## We Do.

> Lets look at what makes a good commit message.

* [A Note About Git Commit Messages](http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html)  
* [What's in a Good Commit?](http://dev.solita.fi/2013/07/04/whats-in-a-good-commit.html)



## References
* [Git Commands](git-command-reference.md)
* [Visualizing Git Commands](http://www.wei-wang.com/ExplainGitWithD3/)
* [Git Book](https://git-scm.com/book/en/v2)
* [Pro Git](https://progit.org/)
* [A Note About Git Commit Messages](http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html)
* [What's in a Good Commit?](http://dev.solita.fi/2013/07/04/whats-in-a-good-commit.html)
* Source Control movie [Download this](https://www.dropbox.com/s/qricsuvkdlc5sn1/jim_wierich_git.mov?dl=0)
* [Learn Git Branching](http://pcottle.github.io/learnGitBranching/)


