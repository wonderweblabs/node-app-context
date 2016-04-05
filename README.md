# wwl-node-app-context

Just a very simple context object implementation. It handles parentContext as well as the switch
to be a root context.

Options:

* parentContext
* root [true|false]

Methods:

* configure - returns a promise
* getParentContext - returns self or parentContext