chai            = require 'chai'
sinon           = require 'sinon'
sinonChai       = require 'sinon-chai'
should          = chai.should()
expect          = chai.expect
assert          = chai.assert
chai.use(sinonChai)
chai.use(require('chai-moment'))

setImmediate    = setImmediate || process.nextTick

moment = require 'moment'
getNearestDayOfWeek = require '../src'

describe 'getNearestDayOfWeek', ->
  it 'should get Nearest Day Of Week via week day name', ->
    moment('2016-09-18').should.be.sameMoment getNearestDayOfWeek('2016-09-21', 'Sunday')
    # expect getNearestDayOfWeek('2016-09-21', 'Sunday').toDate()
    # .to.be.deep.equal moment('2016-09-18').toDate()
  it 'should get Nearest Day Of Week via week day number', ->
    moment('2016-09-18').should.be.sameMoment getNearestDayOfWeek('2016-09-21', 7)
