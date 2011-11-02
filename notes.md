# notes from the rspec book

## BDD

BDD is about writing software that matters.

software that matters: *software that has value to a that is neither too little to solve the problem nor over-engineered, and that we can demonstrate works.*

*Behaviour-Driven Development is about implementing an application by describing its behavior from the perspective of its stakeholders.*

three principles of BDD:

- **Enough is enough**
- **Deliver value to stakeholders**
- **It's all behavior**

### Project Inception

**stakeholders:** *anyone who cares about the work we are undertaking*

**core stakeholders:** *the people whose problem we are trying to solve*

**incidental stakeholders:** *the people who are going to help solve the problem*

**themes:** topics that are too high level to start coding, but specific enough to have some useful conservations around.

**SMART outcomes:**

- Specific
- Measurable
- Achievable
- Relevant
- Timeboxed

**Stories In, Features Out**

don't get hung up on details, or it may create false expectations with stakeholders.

good during project inception: identify and mitigate the "gotchas."

**feature:** delivers cohesive value to stakeholders
**story:** demonstratable functionality that doesn't take more than a few days to develop


### Delivery Cycle

- stakeholder discusses requirement w/ businesss analyst.

## cucumber

### Feature documentation

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

