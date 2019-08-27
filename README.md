#  PCF Services Documentation Book 

This project can create and publish the documentation for PCF Services, PCF Partner Services, and PCF Add-ons as a web application.

In this topic:

* [What's in this Repository](#whats-in-this-repo)
* [The Documentation Toolchain](#the-docs-toolchain)
* [Contributing to the Documentation](#contributing-to-the-documentation)
* [Submitting a Pull Request](#submitting-a-pull-request)
* [Continuous Integration Technical Details](#continuous-integration-technical-details)
* [Deployment Details](#deployment-details)
* [Notes about the config.yml](#notes-on-the-configyml)
* [Determine Content Repositories and Branches of a Book](#determine-content-repos-and-branches-of-a-book)

This book uses a centralized layout repository, [docs-layout-repo](https://github.com/pivotal-cf/docs-layout-repo).  
You must clone this repository to run `bookbinder bind local`.

The centralized layout repository is specified as the value of the `layout_repo` key in the `config.yml` file. 
Bookbinder uses this centralized layout repository by default, but files in the book's `master_middleman/source` directory override files in the centralized layout repository if they have the same name.

## What's in this Repository

Here you'll find the configuration and templates for the PCF Services, PCF Partner Services, and PCF Add-ons documentation set published to [docs.pivotal.io](http://docs.pivotal.io).

This repository *does not* contain the actual documentation content. 
Actual content is contained in the topic repositories listed in the `config.yml` file.

The `master_middleman` folder contains the templates used for publishing.

## The Documentation Toolchain

The Cloud Foundry documentation is written in markdown and published using the [Bookbinder gem](http://github.com/pivotal-cf/docs-bookbinder) to generate the documentation as a web application with [Middleman](http://middlemanapp.com/).

Bookbinder enables us to single-source content for multiple contexts.

So, for example, the documentation for the Cloud Foundry command-line tool (cf CLI) exist in a single repository and are published to all three documentation sets:

* [Pivotal Cloud Foundry (PCF), PCF Services, PCF Partner Services, and PCF Add-ons](http://docs.pivotal.io)
* [Pivotal Web Services](http://docs.run.pivotal.io)
* [Open Source](http://docs.cloudfoundry.org)

## Contributing to the Documentation

The documentation team prefers to receive documentation contributions as pull requests rather than having engineering teams push directly to the documentation repositories.
This gives us a chance to review the changes for consistency and understand the new content.

If you are planning to initiate a large documentation effort, please coordinate with the documentation team in advance to make sure we're not going to step on each other. 
You can reach the documentation team by email at [cf-docs@pivotal.io](mailto:cf-docs@pivotal.io).

If you are trying to figure out where a particular bit of information should live, please reach out and ask. 
We're happy to help you ensure information goes to the right place.

Note that content often lives in more than one context.
Please make sure that any contribution you offer takes these multiple contexts into account.
So, for example, if you are working on documentation that are also used in for open source, please do not refer to Pivotal's commercial offerings.

## Submitting a Pull Request

This is a Bookbinder project. See the [Bookbinder README file](https://github.com/pivotal-cf/bookbinder/blob/master/README.md) for more information about Bookbinder.

## Notes about the config.yml 

Template variables for the PCF documentation are stored in a separate YML file, `template_variables.yml`, stored in the config folder. 

The "sections" section of the `config.yml` file is organized as follows:

- First "sections" section contains all repositories for PCF documentation in the cloudfoundry org, in alphabetical order.
- Next "sections" section contains all repositories for PCF documentation in the pivotal-cf org, in alphabetical order.
- Next "sections" section contains the repositories where we store product PDFs
- Next "sections" section contains all repositories for non-PCF documentation in the pivotal-cf org, in alphabetical order.
- Next "sections" section contains all repositories for non-PCF documentation in the other orgs, in alphabetical order.

## Determine Content Repositories and Branches of a Book

The `config.yml` defines the content repositories for each book.
The `config.yml` file of each book contains the list of content repositories and branches that appear in the documentation set.
In the `config.yml` file, each content repository is specified in the `repository` subsection.
This subsection includes an optional `ref` key-value pair which defines the branch of the content repository that the book uses.

Make sure that you are adding your content to the correct branches of the content repositories.

To determine which branch of a content repository that a book version uses:

1. Confirm that you are on the correct book branch. For example, the currently published topic might be on the `master` branch or on the branch corresponding to its version number.

2. Open the `config.yml` file.

3. Search for the name of the content repository, for example, `docs-cloudfoundry-concepts`.

4. Review the `repository` subsection for the content repository. If there is no `ref:` tag, then the repository uses the master branch. If there is a `ref` key-value pair, it specifies the branch name of the content repository. For example,

  ```
  - repository:
    name: cloudfoundry/docs-cloudfoundry-concepts
    ref: '225'
  ```

  `ref: '225'` refers to the 225 branch of the docs-cloudfoundry-concepts repository. Cloud Foundry v225 is associated with the PCF v1.6 release.

