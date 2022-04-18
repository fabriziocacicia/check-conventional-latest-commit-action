# Check Latest Commit Conventional
A Github Action that checks if the latest commit follows the [Conventional Commits specification](https://www.conventionalcommits.org/).

It will fail if the latest commit doesn't follow the convention, it will pass otherwise.
- Conventional PR Titles: checks that the title of PRs follows the [Conventional Commits][1] convention
- Delete Tags without Release: deletes all the tags without an associated release during the initial setup of the repository
- Check for Template new Release: periodically checks if the template from which the repository is derived has a new release and create an PR to handle the changes


## Getting Started
In order to properly use this repository as template you have to use the Github's "Import repository" functionality. You can find it under the "+" menu icon near your profile photo.

### Repository Settings
After the importing is complete, go to the **Settings** page of the newly created repository and adjust the following settings.

#### Actions Perimssions
Under **Code and automation**, open the **General** section under **Actions**:

<img width="327" alt="Screenshot 2023-02-17 at 15 29 14" src="https://user-images.githubusercontent.com/7525888/219682286-780b19c9-553a-4992-bde1-ae77d4bccb4a.png">

In the **Action Permissions** section, select **Allow all actions and reusable workflows**

<img width="619" alt="Screenshot 2023-02-18 at 21 38 46" src="https://user-images.githubusercontent.com/7525888/219897497-44299443-8af6-4e7c-b35f-a4601dbdba60.png">

In the **Workflow permissions** section select to give **Read and write permissions** to the GITHUB_TOKEN and enable **Allow Github Actions to create and approve pull requests**, as follows:

<img width="774" alt="Screenshot 2023-02-17 at 15 33 16" src="https://user-images.githubusercontent.com/7525888/219683244-5df2a416-cc93-412e-ba0e-278b8bebd3c1.png">

And then hit **Save**


#### Actions Secrets
Add the following **Actions Secrets**:

| Name | Value |
|----|----|
| `PERSONAL_ACCESS_TOKEN` | A Personal Access Token which has `repo` and `workflow` permissions |

To add an **Actions Secret** find the **Security** section in the left sidebar, and open the **Actions** page under **Secrets and Variables**. 

<img width="316" alt="Screenshot 2023-02-18 at 21 43 01" src="https://user-images.githubusercontent.com/7525888/219898623-416e2bf5-dd87-49a6-9240-58a8af289d23.png">

Here click on **New repository Secret**.


#### Actions Variables
Add the following ***Actions Variables***:
| Name | Value |
|----|----|
| `TEMPLATE_REPO` | The template repository from which this repository is derived. In the format: owner/repo_name |
| `UPDATED_TO_TEMPLATE_RELEASE` | The release name of the template repository from which this repository is derived (i.e. v0.1.0) |

To add an **Actions Variable** find the **Security** section in the left sidebar, and open the **Actions** page under **Secrets and Variables**. 


Here, switch to the **Variables** tab and then click on the green **New repository variable** button on top.

### Enable Actions
After allowing Actions to run in the repository as shown in the previous section a new item will appear on the top menu, called **Actions**:

<img width="281" alt="Screenshot 2023-02-20 at 13 35 27" src="https://user-images.githubusercontent.com/7525888/220110143-c03eb69a-847e-4804-9c3f-ad317415b6fc.png">


Go into that page and enable the Actions in the repository:

<img width="525" alt="Screenshot 2023-02-20 at 13 35 54" src="https://user-images.githubusercontent.com/7525888/220110056-1f890239-5fc6-4134-a381-58f946d66003.png">




[1]: https://www.conventionalcommits.org/
