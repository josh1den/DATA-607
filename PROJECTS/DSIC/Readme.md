Hi everybody,

Today I'm presenting an overview on collaboration in GitHub.

Before I begin, how many here have collaborated on projects in GitHub prior to this program? If you could please raise your hand using the "Reactions" button at the bottom of the screen.

And of those of you have experience collaborating in GitHub, how many would consider yourselves experts? Show of hands.

(if people raise hands)
Well this is great, thanks everyone. Those of you with experience, I'm going to come back around at the end of my presentation with some questions for you and I'd love any feedback and participation.

If you didn't raise your hand, you're just like me. Before this program I'd never collaborated on a project in GitHub. I've worked independently in GitHub, using repositories for storage, and I want to be able to collaborate with others in GitHub, so I decided to use the opportunity here with this presentation to spend this time diving a little deeper and opening up this space in our class today to learn more about this really essential tool for developers.


So, diving right in.

Here's a quick overview of what I'm going to cover.

## INTRODUCTION

**What is Git?**
I'm just going to briefly introduce a couple foundational concepts here.

Git, not to be confused with Git-HUB, is a version control system, run through the command line or terminal. The vast majority of developers use git for version control. This presentation is about Git-Hub, so I'm not going to spend any time on Git, but, have to make the distinction.

**Why is Version Control Important**
So why is version control important?
Version control is the fundamental core of product development.  Documenting, tracking, and managing changes is critical to deploying effective and reproducable code and maintaining code integrity.

**What is GitHub**
GitHub is a cloud-based repository service built on Git.

GitHub is used by developers of all sorts, a couple quick stats:
- 83m developers use GitHub
- There's over 200m repositories
- in 337 programming languages
- and over 1m projects in Python

This graphic is as of 2018. What's glaringly missing from here? R!
The best info I was able to find about R usage in GitHub is from 2014, where
R was ranked the 12th most popular programming language in GitHub, as far as active repositories. That's information is from (https://githut.info/).

**Why GitHub**
As you'll see in this presentation, GitHub offers powerful tools that integrate some of the most popular and familiar features from widely used applications, like Google Docs, or SLACK, in a user-friendly graphical interface which promotes open-source development and documentation.

If that's not enough, as the most popular and widely-used repository amongst developers, it's an industry standard. Its one of the ways some of the best developers collaborate, document their work, and write better code. Sign me up.

**New to GitHub?**
If you're new to using GitHub, the first place to start is the documentation, and I'll share those links at the end. For our more experienced classmates, as I go through this presentation, please share any resources in the chat that you found useful that relate to any of the topics I'm covering, and at the conclusion I'll add those links to my slides which I'll make available to the class.

## KEY FEATURES

Now let's dive in to some of the key features GitHub offers for collaborators.

**BRANCHES**
The first key feature I'm going to discuss are branches.

Branches are basically versions of your project. They're GitHub's way of allowing multiple people to work on different versions of the same project at the same time, with the main branch representing the definitive version of the project, and each branch representing a set of related changes.

You can create a branch by selecting the dropdown under main in your repo and entering a name for the branch.

**PULL REQUESTS**
A pull request -- or PR -- is the equivalent of proposing changes and requesting a collaborator review those changes and "pull" them into the working branch. Once branches are final, they are merged to the main repository and the working branch should be deleted.

Pull requests are located as a tab in the repository. A few things you see here such as fork, labels, milestones, and discussions I will cover shortly.

This leads us to...

**COLLABORATIVE DEVELOPMENT MODELS**

There's two ways to collaborate on projects in GitHub:

The first way is the...
**The Fork and Pull Model**
In this model, you copy an existing repository and make changes to the copied repo which don't affect the master repository. Pull requests require a user with push privileges to approve, so this is a popular model for open-source projects.

The second way is the...
**The Shared Repository Model**
In this model, collaborators have access to a single shared repo. Topic branches are used for changes, PRs initiate code review and discussion before changes are merged into main. This is the preferred model for small teams and private projects.

## COMMUNICATING IN GitHub

As I mentioned earlier, GitHub integrates features for collaboration which most people are familiar with from widely-used applications like Google Docs or SLACK, where you are able to make comments and assign tasks to manage workflow.

Which brings us to ISSUES  

**ISSUES**

Issues are how GitHub lets you identify, track, assign, and resolve tasks amongst a team.

Some of the features within issues include task lists, labels, milestones, and notifications.

You can create, manage, and track issues on the issues tab in your repository.

You can @mention collaborators to draw attention to a comment, link related issues by hashtagging the title of the issue, you can assign issues to communicate responsbility to a team member, and you can reference earlier comments and replies.

**DISCUSSIONS**

Discussions allow you to communicate with your group within a repository but outside of issues. New issues may be created and assigned from inside Discussions, from things that are initiated by discussion interactions.

Discussions is a place for ideas, polls, announcements, you can see some of the options and features here.

## INTEGRATION

The last thing I want to talk about today is integration which really helps streamline workflow.

Integrated applications allow you to make pull requests or push your work directly to GitHub through the application.

I find **text editors** to be extremely useful, they give you templates for different code formats, and allow you to update a GitHub repository directly within the text editor environment.

**GitHub Desktop** is a great way to manage work in a local directory and push/pr to a remote repo.

**RStudio** also provides functionality from the "Version Control" dropdown in the "Tools" toolbar, allowing you to push/pr work directly to GitHub as well.

## Resources

Lastly, here are some resources you might find useful--I actually saw the DataCamp tutorial pop up as a new offering while I was working on this project and I took it and found it super helpful. These youtube GitHub guides are also fantastic.

---

Closing:

So now one of the things I'd like to come back around and ask those
in the group with GitHub experience, is or are there specific resources that
you found valuable on your way to GitHub just "making sense" -- if there are, go ahead and drop them in the chat or feel free to chime in on audio.

I think to a large degree a lot of this stuff is "learn by doing", and I know it can be daunting, so one of my hopes with this presentation is that for those like myself on the less experienced side of things with GitHub, hopefully this exposure can be a beginning to a better understanding, and you can come out a little more comfortable with the platform, and with some resources for further learning.

So with that, if there's any questions I'm happy to take them. I created a GitHub repository containing all of this information which I'll add to the chat now.

Thank you very much!
