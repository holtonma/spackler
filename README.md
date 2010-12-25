Spackler
========

> "In the immortal words of Jean Paul Sartre, 'Au revoir, gopher'"  
-Carl Spackler, Caddyshack

## DESCRIPTION
Spackler enables you to scrape golf tournament web pages for data.  URL's are preconfigured 
(check the carl__spackler.rb file). Tournament data is obtained and row data for each player
is also obtained (pos, money, name, score relative to par, thru, today, r1, r2, r3, r4, total).
Also included are internals methods to split first name and last name, to factor out 3 part names
(E.g. Davis Love III) so that they show up as 

####ASK QUESTIONS AND YOU SHALL BE ANSWERED!  
mailing-list: [http://groups.google.com/group/spackler-talk](http://groups.google.com/group/spackler-talk)

by: Mark Holton via RedGrind, LLC (holtonma@gmail.com)

## INSTALLATION 
The best way is with RubyGems:  
    $ [sudo] gem install spackler

## IF YOU PLAN TO SUBMIT A PATCH
After your git clone, run bundle command to ensure you obtain the required dependencies 
    $ bundle 
    Fetching source index for http://rubygems.org/
    Using nokogiri (1.4.4) 
    Using spackler (0.9.2.5) from source at /Users/yourname/yourdir/spackler 
    Using bundler (1.0.7) 
  
## USAGE
example class using Spackler gem, create a file named whatever.rb:
    require 'spackler'
    
    major = Spackler::Major.new
    url = major.get_urls(2010)[0] #2010 Masters
    
    puts "grabbing URL data from... #{url}"
    players = major.friendly_structure(major.fetch(url))
  
    puts players

when you run that whatever.rb file   
    $ ruby whatever.rb
you will see the output that looks like:   
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
    ...     
the 'players' variable in this example will hold data as follows for you to use as you wish:
    #<OpenStruct pos="1", mo="-", name="Louis Oosthuizen", to_par="-16", thru="F", today="-1", r1="65", r2="67", r3="69", r4="71", total="272", fname="Louis", lname="Oosthuizen">
    #<OpenStruct pos="2", mo="2", name="Lee Westwood", to_par="-9", thru="F", today="-2", r1="67", r2="71", r3="71", r4="70", total="279", fname="Lee", lname="Westwood">
    #<OpenStruct pos="T3", mo="9", name="Rory McIlroy", to_par="-8", thru="F", today="-4", r1="63", r2="80", r3="69", r4="68", total="280", fname="Rory", lname="McIlroy">
    #<OpenStruct pos="T3", mo="1", name="Henrik Stenson", to_par="-8", thru="F", today="-1", r1="68", r2="74", r3="67", r4="71", total="280", fname="Henrik", lname="Stenson">
    #<OpenStruct pos="T3", mo="1", name="Paul Casey", to_par="-8", thru="F", today="+3", r1="69", r2="69", r3="67", r4="75", total="280", fname="Paul", lname="Casey">
    #<OpenStruct pos="6", mo="2", name="Retief Goosen", to_par="-7", thru="F", today="-2", r1="69", r2="70", r3="72", r4="70", total="281", fname="Retief", lname="Goosen">    
      ...
So for instance, after the above example, if you continued:
      players[0].name  #=> "Louis Oosthuizen" 
      players[0].lname #=> "Oosthuizen"
      players[0].total #=> "272"    


