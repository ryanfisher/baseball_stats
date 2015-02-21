[![Circle CI](https://circleci.com/gh/ryanfisher/baseball_stats.svg?style=svg)](https://circleci.com/gh/ryanfisher/baseball_stats) [![Code Climate](https://codeclimate.com/github/ryanfisher/baseball_stats/badges/gpa.svg)](https://codeclimate.com/github/ryanfisher/baseball_stats)
Baseball Stats
========
A ruby gem for comparing and calculating baseball statistics and projections.

Usage
-----
Provide BaseballStats::Projections.new a path to a projections csv like the ones provided by fangraphs.com and included in the data folder of this repo. It assumes the first row of the csv are headers where at least one is "name".
```ruby
require 'baseball_stats'
projections = BaseballStats::Projections.new('FanGraphsFans.csv')
projections['Miguel Cabrera']
=> {'HR' => '32', 'RBI' => '113', ...}
```
