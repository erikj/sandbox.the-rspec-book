# notes from the rspec book

## cucumber

### Feauture documentation

  - prose or
  - Connextra format:
    - As a ...
    - I want to ...
    - So that ...

### Scenarios

- a Scenario is a series of steps:
  - Given: state before event
  - When: the event
  - Then: expected outcome(s)
  - And: second expected outcome
  - But: ...?

#### Scenario Outlines
- Scenario w/ &lt;placeholders&gt;
- input and expected data in Scenarios:
  - tabular example data,

  e.g.:

      Scenarios: 1 number correct
      | code | guess | mark |
      | 1234 | 1555  | +    |
      | 1234 | 2555  | -    |

#### Step definitions

      Given /^reg ex$/ do
        pending # code goes here
      end

      When /^reg ex$/ do
        pending # code goes here
      end

