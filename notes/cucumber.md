# Cucumber

Cucumber notes from [The Rspec Book](http://pragprog.com/book/achbd/the-rspec-book)


<https://github.com/cucumber/cucumber/wiki/>

"Cucumber is a tool that executes plain-text functional descriptions as automated tests. The language that Cucumber understands is called [Gherkin](https://github.com/cucumber/cucumber/wiki/Gherkin)"

## Gherkin

"[Gherkin](https://github.com/cucumber/cucumber/wiki/Gherkin) is the language that Cucumber understands. It is a Business Readable, Domain Specific Language that lets you describe software’s behaviour without detailing how that behaviour is implemented."

## Feature documentation

  - prose or
  - Connextra format:
    - As a ...
    - I want to ...
    - So that ...

## Scenarios

- a Scenario is a series of steps:
  - Given: state before event
  - When: the event
  - Then: expected outcome(s)
  - And: second expected outcome
  - But: ...?

## Scenario Outlines
- Scenario w/ &lt;placeholders&gt;
- input and expected data in Scenarios:
  - tabular example data,

  e.g.:

      Scenarios: 1 number correct
      | code | guess | mark |
      | 1234 | 1555  | +    |
      | 1234 | 2555  | -    |

## Step definitions

      Given /^reg ex$/ do
        pending # code goes here
      end

      When /^reg ex$/ do
        pending # code goes here
      end

