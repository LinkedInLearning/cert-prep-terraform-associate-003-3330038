# Cert Prep: Terraform Associate
This is the repository for the LinkedIn Learning course Cert Prep: Terraform Associate. The full course is available from [LinkedIn Learning][lil-course-url].

![lil-thumbnail-url]

In this course, site reliability engineer and DevOps expert Helen Chukwukelu guides you through various aspects of Terraform. Gain an understanding of Infrastructure as Code (IaC), Terraform basics, and the core purpose of Terraform. Interact with modules, the core Terraform workflow, and Terraform outside the core workflow. Find out how to implement and maintain state, generate and modify configuration, and maximize Terraform Cloud capabilities. When you complete this course, you will have most of the skills and knowledge that you need to take the Terraform Associate Certification (003) exam, and you will also be able to leverage your knowledge to effectively automate and manage infrastructure in Terraform.

_See the readme file in the main branch for updated instructions and information._
## Instructions
This repository has branches for each of the videos in the course. You can use the branch pop up menu in github to switch to a specific branch and take a look at the course at that stage, or you can add `/tree/BRANCH_NAME` to the URL to go to the branch you want to access.

## Branches
The branches are structured to correspond to the videos in the course. The naming convention is `CHAPTER#_MOVIE#`. As an example, the branch named `02_03` corresponds to the second chapter and the third video in that chapter. 
Some branches will have a beginning and an end state. These are marked with the letters `b` for "beginning" and `e` for "end". The `b` branch contains the code as it is at the beginning of the movie. The `e` branch contains the code as it is at the end of the movie. The `main` branch holds the final state of the code when in the course.

When switching from one exercise files branch to the next after making changes to the files, you may get a message like this:

    error: Your local changes to the following files would be overwritten by checkout:        [files]
    Please commit your changes or stash them before you switch branches.
    Aborting

To resolve this issue:
	
    Add changes to git using this command: git add .
	Commit changes using this command: git commit -m "some message"

## Installing
1. To use these exercise files, you must have the following installed:

### Visual Studio Code (VS Code): 

Install VS Code from the official website: https://code.visualstudio.com/Download and install the necessary Terraform extensions which are Terraform by Anton Kulikov and Hashicorp Terraform extension


### Terraform: 

You need to install Terraform on your system. You can download the appropriate version like the latest version for your operating system from the official Terraform website:

**Terraform Downloads: https://developer.hashicorp.com/terraform/install?product_intent=terraform**

 Then Follow the installation instructions provided there.


### AWS CLI (Command Line Interface): 

This is necessary especially for configuring your AWS credentials and managing AWS resources from the command line. 

* You can install the AWS CLI by following the instructions in the official AWS CLI documentation: **https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html**


Once you have these components installed, you'll need to set up your environment:

### Configure AWS Credentials: 

Use the AWS CLI to configure your AWS credentials. You can do this by running **aws configure** command in your terminal and providing your Access Key ID, Secret Access Key, region, and output format.

### Install Git CLI 
Next, ensure you have Git CLI installed on your machine. If not, you can download and install it from https://git-scm.com/downloads

If you use Git Bash as your terminal, then no need installing Git Cli as it already has it

### Fork, Create a token, and clone this repository below:
* https://github.com/LinkedInLearning/cert-prep-terraform-associate-003-3330038.git

Note that you can Clone this repository into your local machine using the terminal (Mac), CMD (Windows), or a GUI tool like SourceTree.

### Instructor

Helen Chukwukelu

Site Reliability Engineer | DevOps | AWS Community Builder
                            

Check out my other courses on [LinkedIn Learning](https://www.linkedin.com/learning/instructors/helen-chukwukelu?u=104).

........................................
[0]: # (Replace these placeholder URLs with actual course URLs)

[lil-course-url]: https://www.linkedin.com/learning/cert-prep-terraform-associate-003
[lil-thumbnail-url]: https://media.licdn.com/dms/image/D560DAQGzQlaNvLC7Ug/learning-public-crop_675_1200/0/1712011598867?e=2147483647&v=beta&t=Lzi02WmDdibQUHKEpderFPtKczGYwQH4tTTCE4K66hw

