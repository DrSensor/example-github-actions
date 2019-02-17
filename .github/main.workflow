workflow "Basic Pipeline" {
  resolves = ["GitHub Action for npm"]
  on = "push"
}

action "GitHub Action for npm" {
  uses = "actions/npm@master"
  args = "test"
}

workflow "Push Pipeline" {
  resolves = ["GitHub Action for Debug"]
  on = "push"
}

workflow "PR Pipeline" {
  resolves = ["GitHub Action for Debug"]
  on = "pull_request"
}

action "GitHub Action for Debug" {
  uses = "actions/bin/debug@master"
}
