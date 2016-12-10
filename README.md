## get-nearest-day-of-week [![npm][npm-svg]][npm]

[![Build Status][travis-svg]][travis]
[![Code Climate][codeclimate-svg]][codeclimate]
[![Test Coverage][codeclimate-test-svg]][codeclimate-test]
[![downloads][npm-download-svg]][npm]
[![license][npm-license-svg]][npm]

[npm]: https://npmjs.org/package/get-nearest-day-of-week
[npm-svg]: https://img.shields.io/npm/v/get-nearest-day-of-week.svg
[npm-download-svg]: https://img.shields.io/npm/dm/get-nearest-day-of-week.svg
[npm-license-svg]: https://img.shields.io/npm/l/get-nearest-day-of-week.svg
[travis-svg]: https://img.shields.io/travis/snowyu/get-nearest-Day-of-week.js/master.svg
[travis]: http://travis-ci.org/snowyu/get-nearest-Day-of-week.js
[codeclimate-svg]: https://codeclimate.com/github/snowyu/get-nearest-Day-of-week.js/badges/gpa.svg
[codeclimate]: https://codeclimate.com/github/snowyu/get-nearest-Day-of-week.js
[codeclimate-test-svg]: https://codeclimate.com/github/snowyu/get-nearest-Day-of-week.js/badges/coverage.svg
[codeclimate-test]: https://codeclimate.com/github/snowyu/get-nearest-Day-of-week.js/coverage


The function return the date to get nearest day of week.

```
getNearestDayOfWeek(aDate, aDayOfWeek)
```

* parameters:
  * aDate *(Date|String)*: the date to search the nearest day.
  * aDayOfWeek(Integer|Array): the nearest day of week(s).
    * 1-7: Monday...Sunday

## Usage

```js
var getNearestDayOfWeek = require('get-nearest-day-of-week')
//1-7: Monday...Sunday
getNearestDayOfWeek('2016-9-21', 7)
//=2016-9-18
```
## License

MIT
