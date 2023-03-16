# Auto_Tag_Branch_On_Merge
A bash script to automatically create tag on branch merge

1. Create a new branch in your repository.

2. Create a new file in the branch called “tag.sh”.

3. In the tag.sh file, add the following code:

#!/bin/bash

# Create a tag for the merge commit

# Get the current branch name

BRANCH_NAME=$(git rev-parse --abbrev-ref HEAD)

# Get the latest commit SHA

LATEST_COMMIT=$(git rev-parse HEAD)

# Create a tag with the branch name and commit SHA

git tag -a "$BRANCH_NAME-$LATEST_COMMIT" -m "Tag for merge to master"

4. Commit and push the tag.sh file to the branch.

5. Create a pull request to merge the branch into master.

6. Add a comment to the pull request with the following command:

@azure pipelines run --sh tag.sh

7. Merge the pull request into master.

8. The tag will be created automatically on the merge commit.
