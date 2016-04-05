expect = require('chai').expect

describe 'context/default', ->

  DefaultContext = require('../lib/context')

  # ------------------------------------------------------------------
  describe '#constructor', ->

    it 'should raise error for root: false and missing parent context', ->
      expect(-> new DefaultContext()).to.throw()

    it 'should not raise error for root: true and missing parent context', ->
      expect(-> new DefaultContext({ root: true })).to.not.throw()

      root = new DefaultContext({ root: true }).root
      expect(root).to.be.true

    it 'should not raise error for root: false and parent context', ->
      root = new DefaultContext({ root: true })

      expect(-> new DefaultContext({ parentContext: root })).to.not.throw()

    it 'should raise error for wrong parent context format', ->
      expect(-> new DefaultContext({ parentContext: 10 })).to.throw()

      T = class Test
      t = new T()
      expect(-> new DefaultContext({ parentContext: t })).to.throw()
