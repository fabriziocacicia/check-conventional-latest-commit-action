# Check Latest Commit Conventional
A Github Action that checks if the latest commit follows the [Conventional Commits specification](https://www.conventionalcommits.org/).

It will fail if the latest commit doesn't follow the convention, it will pass otherwise.

## Usage
Add the action in your job's steps as follows

```yaml
steps:
  - ...
  - name: Check Latest Commit Conventional
    uses: fabriziocacicia/check-latest-commit-conventional-action@v0.1.1-draft
```

## Example
You can see an example of using the action in the [Keep History Convetional Action](https://github.com/fabriziocacicia/keep-history-conventional/blob/main/action.yml).

Here is the way it is used there:

```yaml
steps:
  - ...
  - ...
  - name: Check Latest Commit Conventional
    uses: fabriziocacicia/check-latest-commit-conventional-action@v0.1.1-draft
    id: check-conventional-commit
    continue-on-error: true
  - if: steps.check-conventional-commit.outcome == 'success'
    .....
    .....
  - if: steps.check-conventional-commit.outcome != 'success'
    .....
    .....
```


You can see how it is possible to take different actions based on the result of the check.
