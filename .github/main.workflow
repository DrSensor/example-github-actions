workflow "Basic Pipeline" {
  resolves = ["GitHub Action for npm", "Filters for GitHub Actions"]
  on = "push"
}

action "Filters for GitHub Actions" {
  uses = "actions/bin/filter@46ffca7632504e61db2d4cb16be1e80f333cb859"
  args = "branch master"
}

action "GitHub Action for npm" {
  uses = "actions/npm@59b64a598378f31e49cb76f27d6f3312b582f680"
  needs = ["Filters for GitHub Actions"]
  runs = "node -p \"process.env\""
}
