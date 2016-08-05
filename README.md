#  PCF Services Documentation Book

This project can create and publish the documentation for PCF Services, PCF Partner Services, and PCF Add-ons as a web application.

**Breaking Change**: This book now uses a centralized layout repository, [docs-layout-repo](https://github.com/pivotal-cf/docs-layout-repo).  
You must clone this repository to run `bookbinder bind local`.

The centralized layout repository is specified as the value of the `layout_repo` key in the `config.yml` file. 
Bookbinder uses this centralized layout repository by default, but files in the book's `master_middleman/source` directory override files in the centralized layout repository if they have the same name.

## What's in this Repo

Here you'll find the configuration and templates for the PCF Services, PCF Partner Services, and PCF Add-ons documentation set published to [docs.pivotal.io](http://docs.pivotal.io).

This repository *does not* contain the actual documentation content. 
Actual content is contained in the topic repositories listed in the `config.yml` file.

The `master_middleman` folder contains the templates used for publishing.

## The Docs Toolchain

The Cloud Foundry documentation is written in markdown and published using the [Bookbinder gem](http://github.com/pivotal-cf/docs-bookbinder) to generate the documentation as a web application with [Middleman](http://middlemanapp.com/).

Bookbinder enables us to single-source docs content for multiple contexts.

So, for example, the docs for the Cloud Foundry command-line tool (cf CLI) exist in a single repo and are published to all three documentation sets:

* [Pivotal Cloud Foundry (PCF), PCF Services, PCF Partner Services, and PCF Add-ons](http://docs.pivotal.io)
* [run.pivotal](http://docs.run.pivotal.io)
* [Open Source](http://docs.cloudfoundry.org)

## Contributing to the Documentation

The docs team prefers to receive documentation contributions as pull requests rather than having engineering teams push directly to the docs repos.
This gives us a chance to review the changes for consistency and understand the new content.

If you are planning to initiate a large documentation effort, please coordinate with the docs team in advance to make sure we're not going to step on each other. 
You can reach the docs team by email at [cf-docs@pivotal.io](mailto:cf-docs@pivotal.io).

If you are trying to figure out where a particular bit of information should live, please reach out and ask. 
We're happy to help you ensure information goes to the right place.

Note that content often lives in more than one context.
Please make sure that any contribution you offer takes these multiple contexts into account.
So, for example, if you are working on docs that are also used in for open source, please do not refer to Pivotal's commercial offerings.

## Submitting a Pull Request

This is a Bookbinder project. See [its README](https://github.com/pivotal-cf/bookbinder/blob/master/README.md) for instructions on how edits are made.

## Continuous Integration Technical Details

We deploy this documentation as an app using Concourse pipelines, at https://pubtools.ci.cf-app.com/pipelines/cf-current

Credential for our pipeline are stored in LastPass. 
Tarballs of the builds are stored on Amazon S3. 
Use the creds stored in LastPass to log in.

The CI status can be monitored via the [Checkman](https://github.com/cppforlife/checkman) application (Mac only).

Once installed, configure Checkman to be aware of the CI builds by putting the following in a file called `~/Checkman/bookbinder`:

    PCF Bind: concourse.check https://pubtools.ci.cf-app.com REPLACE-WITH-USERNAME REPLACE-WITH-PASSWORD cf-current pcfservices

## Deployment Details

Staging and Production are both on run.pivotal.io:

- [Staging](http://cf-p1-docs-staging.cfapps.io/)
- [Production](http://cf-p1-docs-prod.cfapps.io/)

See the config.yml for details.

## Notes on the config.yml 

Template variables for the PCF docs are stored in a separate YML file, `template_variables.yml`, stored in the config folder. 

The "sections" section of the `config.yml` file is organized as follows:

- First "sections" section contains all repos for PCF docs in the cloudfoundry org, in alphabetical order.
- Next "sections" section contains all repos for PCF docs in the pivotal-cf org, in alphabetical order.
- Next "sections" section contains the repo where we store product PDFs
- Next "sections" section contains all repos for non-PCF docs in the pivotal-cf org, in alphabetical order.
- Next "sections" section contains all repos for non-PCF docs in the other orgs, in alphabetical order.
