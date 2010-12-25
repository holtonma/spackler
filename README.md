Spackler
========

> "In the immortal words of Jean Paul Sartre, 'Au revoir, gopher'"
-Carl Spackler, Caddyshack

## DESCRIPTION
ASK QUESTIONS AND YOU SHALL BE ANSWERED!
mailing-list: 	http://groups.google.com/group/spackler-talk

by: Mark Holton via RedGrind, LLC (holtonma@gmail.com)

## INSTALLATION 
The best way is with RubyGems:
  $ [sudo] gem install spackler

## IF YOU PLAN TO SUBMIT A PATCH
After your git clone, run
  $ bundle 
to ensure you obtain the required dependencies
  Fetching source index for http://rubygems.org/
  Using nokogiri (1.4.4) 
  Using spackler (0.9.2.5) from source at /Users/yourname/yourdir/spackler 
  Using bundler (1.0.7) 
  
## USAGE
\#example class using Spackler gem, create a file named whatever.rb:
  require 'spackler'
  
  major = Spackler::Major.new
  url = major.get_urls(2010)[0] #2010 Masters
  
  puts "grabbing URL data from... #{url}"
  players = major.friendly_structure(major.fetch(url))
  
  puts players

\#when you run that whatever.rb file 
  $ ruby whatever.rb
\#you will see the output that looks like:
  grabbing URL data from... http://www.pga.com/openchampionship/2010/scoring/index.cfm
  pos: 1
  mo: -
  name: Louis Oosthuizen
  to_par: -16
  thru: F
  today: -1
  r1: 65
  r2: 67
  r3: 69
  r4: 71
  total: 272
  pos: 2
  mo: 2
  name: Lee Westwood
  to_par: -9
  thru: F
  today: -2
  r1: 67
  r2: 71
  r3: 71
  r4: 70
  total: 279
  pos: T3
  mo: 9
  name: Rory McIlroy
  to_par: -8
  thru: F
  today: -4
  r1: 63
  r2: 80
  r3: 69
  r4: 68
  total: 280
  pos: T3
  mo: 1
  name: Henrik Stenson
  to_par: -8
  thru: F
  today: -1
  r1: 68
  r2: 74
  r3: 67
  r4: 71
  total: 280
  pos: T3
  mo: 1
  name: Paul Casey
  to_par: -8
  thru: F
  today: +3
  r1: 69
  r2: 69
  r3: 67
  r4: 75
  total: 280
  pos: 6
  mo: 2
  name: Retief Goosen
  to_par: -7
  thru: F
  today: -2
  r1: 69
  r2: 70
  r3: 72
  r4: 70
  total: 281
  pos: T7
  mo: 11
  name: Robert Rock
  to_par: -6
  thru: F
  today: -3
  r1: 68
  r2: 78
  r3: 67
  r4: 69
  total: 282
  pos: T7
  mo: 1
  name: Sean O'Hair
  to_par: -6
  thru: F
  today: -1

