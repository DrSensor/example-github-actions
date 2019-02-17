workflow "Basic Pipeline" {
  resolves = ["GitHub Action for npm"]
  on = "push"
}

action "GitHub Action for npm" {
  uses = "actions/npm@master"
  args = "test"
}
