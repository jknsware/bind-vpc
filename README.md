# Infrastructure Sapling

## Local Testing

To run your project locally in a development mode:
1. Start up the vagrant box: `vagrant up`
2. Execute the ansible script: `ansible -i local.inv site.yml`



# Getting Started

1. *Naming:* Name your project.
1. *Git:* Create a git repository.
1. *Docker:* Create a docker repository.
1. *Node:* Setup your package.json.


## Naming

Use dashed lowercase naming if your project is going to require more than a single word when using it for anything that
should be machine readable.  Dashes are compatible with the file systems and technologies we use without escaping.

This name is going to be used for git, docker, npm, JIRA, etc.  Something meaningful and consistent is helpful.


## Git

Create a new repository by forking this project into a new space.  Forking will ensure changes can be merged
into the new project as they are published.


## Ansible

### Changing ansible configuration

1. Change the IP address of the Vagrant box in `Vagrantfile` from `192.168.100.250` to `192.168.100.???`.

22. Encrypt the repo with git crypt if you have:
   `git crypt init`

