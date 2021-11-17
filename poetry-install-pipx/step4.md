Sometimes, it is useful to have multiple versions of Poetry available. For example when 
a bug was fixed in the latest pre-release, and you want to test it out.

In such cases you can make use of the `--suffix` flag provided by `pipx`. Let's try it 
out.

Let's install version `1.1.11` of Poetry using `pipx install --suffix=@1.1.11 poetry==1.1.11`{{execute}}.

We also want to have `1.2.0a2` installed. We can do this using `pipx install --suffix=@1.2.0a2 poetry==1.2.0a2`{{execute}}.

Now, you can use both versions of Poetry simultaneously.

`poetry@1.1.11 --version`{{execute}}
`poetry@1.2.0a2 --version`{{execute}}

If you are using `bash`, could add the following to your `.bashrc` file to easily switch between 
versions of Poetry as your default.

```shell
function poetry-use () 
{ 
    local version=${1:-""};
    local _command=poetry@${version}
    
    if [[ -z "${version}" ]]; then
        echo >&2 "Usage: poetry-use <version>"
    elif ! command -v ${_command} &> /dev/null; then
        echo >&2 "Error: ${_command} does not exist"
    else 
      alias poetry=${_command}
      type poetry
    fi
}
```{{execute}}

You can now use `poetry-use` to switch between versions of Poetry.

`poetry-use 1.1.11`{{execute}}
`poetry --version`{{execute}}
`poetry-use 1.2.0a2`{{execute}}
`poetry --version`{{execute}}
