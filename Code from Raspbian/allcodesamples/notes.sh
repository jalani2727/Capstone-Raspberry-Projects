sudo apt-get update
  259  sudo apt-get install python3-dev python3-venv
  260  python3 -m venv env
  261  env/bin/python -m pip install --upgrade pip setuptools wheel
  262  source env/bin/activate
  263  sudo apt-get install portaudio19-dev libffi-dev libssl-dev libmpg123-dev
  264  python -m pip install --upgrade google-assistant-library
  265  python -m pip install --upgrade google-assistant-sdk[samples]



#This was what i referenced to initiate the virtual environment required for the google-assistant-library to run on raspbian
