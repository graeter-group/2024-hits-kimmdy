
if [ ! -d .venv ]; then
  python -m venv .venv
fi


if [ ! -d deps ]; then
  mkdir deps
  pushd deps
  git clone git@github.com:hits-mbm-dev/kimmdy.git
  git clone git@github.com:hits-mbm-dev/kimmdy-reactions.git
  git clone git@github.com:hits-mbm-dev/kimmdy-grappa.git
  git clone git@github.com:hits-mbm-dev/HAT_reaction_plugin.git
  git clone git@github.com:hits-mbm-dev/grappa.git
  git clone git@github.com:hits-mbm-dev/kimmdy-hydrolysis-naive
  popd
fi

source .venv/bin/activate
pip install -r requirements.txt
