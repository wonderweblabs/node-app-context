# wwl-node-app-context

| Current Version | Master | Develop |
|-----------------|--------|---------|
| [![npm version](https://badge.fury.io/js/wwl-js-app-context.svg)](https://badge.fury.io/js/wwl-js-app-context) | [![Build Status](https://travis-ci.org/wonderweblabs/wwl-js-app-context.svg?branch=master)](https://travis-ci.org/wonderweblabs/wwl-js-app-context) | [![Build Status](https://travis-ci.org/wonderweblabs/wwl-js-app-context.svg?branch=develop)](https://travis-ci.org/wonderweblabs/wwl-js-app-context) |

---

Just a very simple context object implementation. It handles parentContext as well as the switch
to be a root context.

Options:

* parentContext
* root [true|false]

Methods:

* configure - returns a promise
* getParentContext - returns self or parentContext
