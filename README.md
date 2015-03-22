[![Circle CI](https://circleci.com/gh/ryanfisher/baseball_stats.svg?style=svg)](https://circleci.com/gh/ryanfisher/baseball_stats) [![Code Climate](https://codeclimate.com/github/ryanfisher/baseball_stats/badges/gpa.svg)](https://codeclimate.com/github/ryanfisher/baseball_stats)
Baseball Stats
========
A ruby gem for comparing and calculating baseball statistics and projections.

Usage
-----
Provide BaseballStats::Projections.new a path to a projections csv like the ones provided by fangraphs.com and included in the data folder of this repo. It assumes the first row of the csv are headers where at least one is "name".
```ruby
require_relative 'lib/baseball_stats'
projections_location = 'data/projections/2015/FanGraphsFans.csv'
projections = BaseballStats::Projections.new(projections_location)
projections['Miguel Cabrera']
=> {'HR' => '32', 'RBI' => '113', ...}
```
To analyze fantasy teams in a league, you can include a projections object and the path to a teams yaml file like the sample in the data folder.
```ruby
projections = BaseballStats::Hitter::Projections.new(projections_location)
teams = 'data/fantasy/teams/keeper_2015.yml'
league = BaseballStats::Fantasy::League.new(projections: projections, teams: teams)
league.projected_standings
```
Custom Teams
---
You can pass in any custom team by following the following format for your team yaml
```yml
-
  name: team 1 name
  hitters:
    - hitter 1 name
    - hitter 2 name
    ...
  pitchers:
    - pitcher 1 name
    - pitcher 2 name
    ...
-
  name: team 2 name
  hitters:
    ...
  pitchers:
    ...
```