# Sequence Diagram

Improvised sequence diagram using Markdown.
- `*` represent unkwnow timing or occurence of event (waiting for interupts)
- `|` represent the `standard`  lifeline of an actor
- `---(message)--->` message from an actor to another
- `<- self message`
- `ref : OtherSequenceDiagram`

## Use cases

- Initialization


## Sequence Diagram : Initialization

              Driver                             TIM_DashBoard                                 Car
                  | -------- (power on) --------->    |                                         |
                  |                                   | <- init peripherals                     |
                  |                                   | <- start on default conf                |
                  |                                   |                                         |
                                                      *
                                                      *




