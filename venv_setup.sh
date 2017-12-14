PYTHON=${PYTHON:=python3}
PIP=${PIP:=pip3}
REQUIREMENTS=requirements.txt
VENV_PATH=${VENV_PATH:=.env}

####################################
# Usage
### source activate_venv.sh
# or
### ./activate_venv.sh activate
# or
### ./activate_venv.sh setup_virtualenv
####################################

function setup_virtualenv {
    ${PYTHON} -m venv ${VENV_PATH}
}

# Usage:
## source activate_venv.sh activate
function activate {
    source ${VENV_PATH}/bin/activate
}

function install {
    if [ -f $REQUIREMENTS ]; then
        $PIP install -r $REQUIREMENTS
    fi
}


# Bash magic to call functions defined here from the CLI e.g.
## ./activate_venv.sh activate
"$@"

if [ -z "$1" ]; then
    setup_virtualenv
    activate
    install
fi
