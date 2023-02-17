# Check Latest Commit Conventional
A Github Action that checks if the latest commit follows the [Conventional Commits specification](https://www.conventionalcommits.org/).

It will fail if the latest commit doesn't follow the convention, it will pass otherwise.

## Usage
In order to use this Github Action you have to update the Workflow permissions of your repository.

Go to **Settigns** page of your repository. Then, under **Code and automation**, open the **General** section under **Actions**:

<img width="327" alt="Screenshot 2023-02-17 at 15 29 14" src="https://user-images.githubusercontent.com/7525888/219682286-780b19c9-553a-4992-bde1-ae77d4bccb4a.png">


Scroll all the way down until you found the **Workflow permissions** section. 

Here, select to give **Read and write permissions** to the GITHUB_TOKEN and enable **Allow Github Actions to create and approve pull requests**, as follows:

<img width="774" alt="Screenshot 2023-02-17 at 15 33 16" src="https://user-images.githubusercontent.com/7525888/219683244-5df2a416-cc93-412e-ba0e-278b8bebd3c1.png">

And hit **Save**.
