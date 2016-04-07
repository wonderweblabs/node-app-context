# wwl-node-app-context

[![Build Status](https://travis-ci.org/wonderweblabs/wwl-js-app-context.svg?branch=develop)](https://travis-ci.org/wonderweblabs/wwl-js-app-context)

Just a very simple context object implementation. It handles parentContext as well as the switch
to be a root context.

Options:

* parentContext
* root [true|false]

Methods:

* configure - returns a promise
* getParentContext - returns self or parentContext
