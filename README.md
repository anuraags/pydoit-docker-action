# Python doit docker action

This action runs a pydoit task passed in as an argument. It runs `doit list` as default

## Inputs

### `task_name`

**Required** The name of the task to run. Default `"list"`.

## Outputs

### `time`

The time the task was run.

## Example usage

uses: anuraags/pydoit-docker-action@v1
with:
task_name: 'build:node'
