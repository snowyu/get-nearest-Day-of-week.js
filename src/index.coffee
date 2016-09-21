isInt           = require 'util-ex/lib/is/string/int'
isNumber        = require 'util-ex/lib/is/type/number'
isString        = require 'util-ex/lib/is/type/string'
isArray         = require 'util-ex/lib/is/type/array'
isDate          = require 'util-ex/lib/is/type/date'
moment          = require 'moment'


getNearestDayOfWeek = (aDate, aDayOfWeek)->
  result = aDate.clone()
  result.isoWeekday(aDayOfWeek)
  if result.isBefore aDate.subtract 3, 'd'
    result.add(1, 'w')
  else if result.isAfter aDate.add 3, 'd'
    result.subtract(1, 'w')
  result

module.exports = (aDate, aDayOfWeeks)->
  aDate = moment(aDate)
  if isArray(aDayOfWeeks)
    for dow in aDayOfWeeks
      t = getNearestDayOfWeek aDate, dow
      result = t if !result? or Math.abs(t-aDate) < Math.abs(result-aDate)
  else
    result = getNearestDayOfWeek aDate, aDayOfWeeks
  result

