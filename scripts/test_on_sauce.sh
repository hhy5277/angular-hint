#! /bin/bash
SCRIPT_DIR=$(dirname $0)
cd $SCRIPT_DIR/..

# Build
yarn build --ignore-engines

# Run unit tests
SAUCE_ACCESS_KEY=`echo $SAUCE_ACCESS_KEY | rev`
yarn test-unit --ignore-engines -- --sauce

# Run e2e tests
yarn test-e2e --ignore-engines

wait %2
