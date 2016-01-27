# Git Command Reference

[This site can be useful to visualize some of these commands.](http://www.wei-wang.com/ExplainGitWithD3/#)

### `git init`

Initializes a brand new Git repository in your current directory. This repo contains no commits and all existing files in the directory will be *untracked*.

### `git remote add <remote_name> <remote_url>`

Adds a reference to a remote copy of this repository, so you can push to it or pull from it. By convention, your personal copy of the repo on GitHub is named `origin`.

### `git clone <remote_url>`

Copies a repository from GitHub to your local machine. Creates a directory *within* your current directory named after the repository, but *does not change into it*, and adds a remote named `origin` pointing to the copy on GitHub.

### `git add <file_names>`

Adds all changes within the specified files to the **staging area**, or adds entire files to the staging area if they are new to the repository. Changes in the staging area will be recorded as part of your next commit.

### `git add -A`

**Use sparingly.** Syncs all changes from your hard drive to the staging area, including any new/moved/deleted files or directories. It's easy to create bad commits this way &ndash; use this only if you're positive that *all* of your current changes should go into the next commit.

### `git add -p`

Runs through all modifications to existing files, and asks whether you want to stage each individual change. Useful if you've made multiple changes to files that should be split into separate commits. Doesn't automatically stage new files, moves, or deletions.

### `git status`

Summarizes all changes to files on your hard drive since the last commit. Split into two categories: Staged (or "to be committed") and not staged.

### `git diff`

Opens a line-by-line view of changes that defaults to comparing the staging area with the contents of your hard drive (use arrow keys to scroll and `q` to quit). Use `git diff HEAD` instead to compare all staged and unstaged changes with the most recent commit.

### `git rm <file_names>`

Deletes the specified files, and adds the deletions to the staging area. If you just used `rm`, the files would be removed from your hard drive but the removal would not be staged, so your next commit would not actually remove them from the repo.

### `git mv <old_path> <new_path>`

Moves or renames a file or directory just like `mv` does, but also records the move in the staging area. If you just used `mv`, the file/directory would be moved on your hard drive but the move would not be staged, so your next commit would still have the file/directory in its old location.

### `git reset HEAD`

Removes all changes from the staging area. Use `git reset HEAD <file_names>` to only "unstage" changes to specific files.

### `git reset --hard HEAD`

**Warning!** Completely and irreversibly discards all changes to files since your last commit. Unlike with most Git commands, there is no recovering from this! Use `git reset --hard HEAD <file_names>` to only discard changes to specific files.

### `git commit`

Records a new commit in the repository that contains all the changes currently in the staging area. This will open a new tab in your editor to write the [commit message](http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html). When you are done, save and close the tab, and the commit will be recorded. If you close the tab without writing a message, the commit will be canceled.

**Note:** You may see `git commit -m` referred to around the internet &ndash; this allows you to make a commit with a single-line message directly from the command line. **We strongly recommend that you not use this!** It discourages writing descriptive commit messages and thinking about your commits as new pages in history.

### `git log`

Shows a log of all commits on your current branch, most recent first (as with `git diff`, use arrow keys to scroll and `q` to quit). This includes the **SHA** or "hash" of each commit, which can be used with any command that accepts a reference to a specific commit, like `git diff` or `git reset`.

### `git branch`

Shows all branches in your local repository.

### `git checkout -b <branch_name>`

Creates a new branch with the specified name, and switches to it. The "branch point" will be the commit you were on when you performed the checkout. The new branch will not have any commits in it yet. This cannot be done if you have any changes to files, staged or unstaged.

### `git checkout <branch_name>`

Switches to an existing branch. This cannot be done if you have any changes to files, staged or unstaged.

### `git merge <branch_name>`

Creates a "merge commit" that merges all of the changes in the specified branch *into* your current branch. Most commonly used while on `master` to merge development branches that have completed code review. If there are any conflicts, Git will pause the merge and drop you into "conflict resolution mode": Files that have conflicts in them will be indicated in `git status`, and you must manually resolve and stage them, then use `git commit` to finish the merge.

**Note:** If no new commits have been made to `master` since you branched from it, Git will not create a merge commit, because all it needs to do is scoot the `master` pointer up to the newest commit on your branch. This is called a "fast-forward" merge.

### `git push -u <remote_name> <branch_name>`

Pushes any new commits in the specified branch to the specified remote. For instance, `git push -u origin master` will push any new commits in the `master` branch to your copy of the repo on GitHub. After pushing a particular branch for the first time, you can use just `git push` as a shortcut.

### `git pull`

Retrieves any new commits made to your remotes, but does not actually apply them to your local copy of the repository *except* for the branch you are currently on. Most commonly used on the `master` branch. If the current branch has different changes on the remote and your local copy, you will be prompted to make a merge commit. To avoid this, use `git pull --rebase`.

### `git rebase <branch_name>`

**Warning! Here be dragons!** "Moves" the branch point of your current branch up to the latest commit on the specified branch (actually creates an entirely new set of commits that mirror your old ones). `git rebase master` is a nice clean way to get your branch up-to-date without creating a lot of merge commits. Note that since this is messing with history, you'll need to use `git push -f` to overwrite the old commits on GitHub (never do this on master! or any other branch that other people might be working with).
