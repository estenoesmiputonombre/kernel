# IAM (Identity And Access Management)

This model for access management has three main parts:

* Member: 

	+ Google Account(for end users) -> represents a developer, and admin, or any other person who interacts with GCP.

	+ service account(for apps and virtual machines) -> an account that belongs to an application instead of an individual end user.

	+ Google group -> named collection of Google Accounts and service accounts. Every Googlr group has a unique email address thats associated with the group.

	+ G suite domain -> represents a virtual group of all the Google Accounts that have been created in an organization's G suite account G.

	+ Cloud Identity domain -> is the same as G suite. However, Cloud Identity domain users dont have access to G suite applications and features.

	+ allUsers -> Is a special identifier that represents anyone who is on the internet, including authenticated and unauthenticated users.

* Role:

	+ It is a collection of permissions

	+ permissions determinate what operations are allowed on a resource

	+ When you grant a role to a member, you grant all the permissions that the role contains.

* Policy:

	+ Cloud IAM policy binds one or more members to a role.

	+ When you want to define who (member) has what type of access (role) on a resource, you create a policy and attach it to the resource.


## Permissions

Permissions determine what operations are allowed on a resource.

In the Cloud IAM world, permissions are represented in the form of

`<service>.<resource>.<verb>`

## Roles

A role is a collection of permissions. You cannot grant a permission to the user directly. Instead, you grant them a role.

* Primitive roles -> Owner, Editor and Viewer (dont use it)

* Predefined roles -> More specific than primitive roles.

* Custom roles -> roles that you create to tailor permissions to the needs of you organization when predefined roles dont meet you needs.
