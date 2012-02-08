sharedSteps = module.exports = ->
  @World = require("../support/world").World

  @Given /^I am on the home page$/, (next) ->
    @visit "/", next

  @Then /^show me the page$/, (next) ->
    @browser.viewInBrowser()
