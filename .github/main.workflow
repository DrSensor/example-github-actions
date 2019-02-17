workflow "Basic Pipeline" {
  resolves = ["GitHub Action for npm", "Filters for GitHub Actions"]
  on = "push"
}

action "Filters for GitHub Actions" {
  uses = "actions/bin/filter@master"
  args = "branch master"
}

action "GitHub Action for npm" {
  uses = "actions/npm@master"
  needs = ["Filters for GitHub Actions"]
  args = "test"
}
