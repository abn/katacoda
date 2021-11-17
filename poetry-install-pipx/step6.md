Cannot wait for the merge? Let's install a version direct from a pull request. For example,
we want to test out the changes in the pull request 4786.

`pipx install --suffix=@4786 'poetry @ git+https://github.com/python-poetry/poetry.git@refs/pull/4786/head'`{{execute}}
`poetry@4786`{{execute}}
