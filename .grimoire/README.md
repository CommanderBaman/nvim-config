# Grimoire

My one stop collection of taskfiles.

The aim of this repository is to quickly setup my default environment for a
particular language.
One can then modify the tasks themselves for their project.


## Usage

Here is how to setup a git repository with grimoire.

1. Add a git subtree in your project repository.

```bash
git subtree add --prefix .grimoire git@github.com:CommanderBaman/grimoire.git main --squash
```

2. Create a taskfile with the following commands:
   `lint`, `format`, and `test`.
   You can take a look in the samples directory for seeing how things are
   generated.

3. Run `task init` to initialize the git hooks.

4. Delete the things you don't need.
   Ex,
```bash
rm -rf .grimoire/samples
```

## Folder Structure

All taskfiles are present in `src` folder

1. commands

   One taskfile for one command.
   Ex, cargo is a command so it has one file

2. common

   Taskfiles that are very common like shared variables.
   Internally common.

3. hooks

   Taskfiles that contain common configuration for projects.
   Externally common.
