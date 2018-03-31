#Mac Build 

The mac_build script is designed to provide a repeatable way to be able to define and maintain the state of software installed on their Mac. 

This playbook works to both support the individual maintaining their own Macbook as well as DevOps teams looking to streamline there developer onboarding experience.

This script is not designed to enfore controls, but enale teams to e able to create a consistent, yet personalised environment.

## Input Classes
Each role within the playbook takes in input from 2 sources a group_vars variable and a variable within the role definition itself, this is to allow both the individual and orginisation to be able to define and maintain their software requirements. 

For example the `brew install` task within the `homebrew` role takes in the input variables `homebrew` located in `group_vars/all` and `d_homebrew` which is located in `roles/homebrew/vars/main/yml`.

Here are some examples on how these are used:

*Individual urser:*
homebrew: Stores all new or non mandatory software for the user that may be transient.
d_homebrew: Store entries for all of the core or mandatory soiftware that the user requires on their mac.

*Orginisation:*
d_homebrew: Contains all packages that are required by the orginisation for a peticular user to be productive.
homebrew: Is a space for the user of a given device to be able to add and track packages that they require.

##Current Roles
###homebrew
Homebrew covers the install of applications using the home brew utility form [brew.sh](http://brew.sh)
###app_store
This role uses the `mas` command line ustility to install software from the Apple app store
###utils
Mandatory as it covers all of the additional work for roles to install (eg. the install of homebrew)
