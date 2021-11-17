#!/usr/bin/env bash
python -m pip --quiet --disable-pip-version-check install pipx virtualenv
python -m virtualenv --quiet /root/.local/pipx/shared  # workaround for lack of ensurepip
export PATH=/root/.local/bin:$PATH