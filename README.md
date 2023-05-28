# GitHub to GitLab mirror example

On some GitLab servers 
the pull mirror option is not available.

It is possible to push from the GitHub side, though.
An example GitHub workflow is provided in `.github/workflow/gitlab-sync.yml`.

In order for that to work, we need to:
1. Create an access token on the GitLab repository (Settings->Access Tokens), with the `write_repository` scope. Select also the `Maintainer` role for the token.
2. Set the secrets correctly:
   - GITLAB_REPO: the url of the repository we want to push to
   - GITLAB_USERNAME: the username of the owner of that repository
   - GITLAB_REPO_TOKEN: The access token to the gitlab repository,
     obtained in the previous step.
3. On the GitLab side, you might have to configure the branch rules 
   and the protected branches 
   (Settings->Repository), 
   to allow force push from `Maintainer`s
4. Trigger the workflow on GitHub either manually or by making a push
   on the right branch.
5. This should cause the GitLab pipeline to run 
   (on GitLab.com it might not run
   unless you have a runner assigned to your project,
   shared runners do not work).
   



