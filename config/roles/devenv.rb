name "devenv"
description "Install and configure basic packages for development environment"

run_list *[
  'recipe[basics]',
]
