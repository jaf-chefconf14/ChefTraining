{
  "name" : "webserver",
  "default_attributes" : {
    "apache" : {
      "greeting" : "#ChefConf14"
    }
  },
  "run_list" : [
    "recipe[apache]",
    "recipe[apache::vhosts]"
  ]
}