# connect-design-kit

## Requirements

* [Node.js](https://nodejs.org/en/)
* [Yarn](https://yarnpkg.com/en/)

## Installation

    yarn install

## Development

    yarn run docs:dev

## Build

    yarn run docs:build

## Deployment

### Docs

The documentation is automatically deployed with each commit to `master` by CircleCI.

It can be manually invokedy by running

    yarn run deploy

### Packages

The inidivual components can be published to npm through lerna.js

    lerna publish