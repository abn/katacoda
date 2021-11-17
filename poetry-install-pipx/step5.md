You are waiting eagerly for the next pre-release of Poetry, and your fix has landed on 
default branch. Let's get the bleeding edge Poetry installed alongside your other 
versions.

`pipx install --suffix=@git git+https://github.com/python-poetry/poetry.git`{{execute}}

The version can be used with `poetry@git`, for example `poetry@git --version`{{execute}}.

Oh, wait, another merge to the branch while you were testing? No problem. Simply do an update.

`pipx upgrade poetry@git`{{execute}}
