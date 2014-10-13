name "base"
description "Base role applied to all nodes."
run_list(
  "recipe[apt]",
  "recipe[build-essential]",
  "recipe[git]",
  "recipe[users::sysadmins]",
  "recipe[sudo]"
)
