# Here is how you could initialize a set of tweets from Superman with a Hash. 
# The hash key is the user name (superman) appended with a sequential integer 
# number that we will start at 1. The combination of the user name 
# and the next integer number provide a unique hash key for each Tweet. 

superman = { 
"superman1" => "Where did all the phone booths go?", 
"superman2" => "This looks like a job for Superman!", 
"superman3" => "Up, up, and away!", 
"superman4" => "Krypton bred me, but it was Earth that gave me all I am. All that matters. \ 
It was Krypton that made me Superman...but it is the Earth that makes me human!", 
"superman5" => "Do good to others and every man can be a Superman.", 
"superman6" => "I am Superman. I stand for truth, for justice, and for the future.", 
} 

# Let's print our Tweets ... I put the key between parentheses to make it stand out 

printf "A few tweets from your friend Superman: \n\n" 
superman.each { |key, val| puts "(#{key}) #{val}" } 

# Now let us set up our hash of Tweets for the Batman ... a bit darker ... 
# Similar to the superman hash, let's initialize our hash of Tweets for the Batman. 

batman = { 
"batman1" => "Criminals are a terror. Hearts of the night. I must disguise my terror. I shall become a bat.", 
"batman2" => "I wear a mask. And that mask, it's not to hide who I am, but to create what I am.", 
"batman3" => "There's no reward in being right all the time.", 
"batman4" => "The most powerful being on the planet and they kept him hidden on a small Kansas farm.", 
"batman5" => "Criminals can never escape me. Bullets don't harm me. Nothing harms me. \ 
But I know pain. I know pain. Sometimes I share it with them." 
} 

# Here is how you could add to our Hash - just make sure your hash key is unique 

batman ["batman6"] = "You can't fight fate, and you can't survive alone ... \ 
I can't help but notice that almost seems like a definition of who I am... A person who's trying to do both." 
batman ["batman7"] = "Criminals of Gotham. You have eaten well. You've eaten Gotham's wealth. \ 
Its spirit. Your feast is nearly over." 
batman ["batman8"] = "It's humiliating to admit Batman has his limits. \ 
That none of my abilities makes any difference if the mark doesn't believe." 

# Over time, you would like a way to automatically generate a unique hash key. Here I set 
# up a variable called batnum where I can increment it by 1 each time and append it to the string 
# "batman" to form a unique key ... in this case, our hash key is now: "batman9" 

batnum = 8 
batnum = batnum + 1 # batnum is now 9 
nextKey = "batman" + batnum.to_s() # convert batnum value to a string, and nextKey is now "batman9" 

# Use our unique hash key (nextKey) to create a new Tweet in our hash 

batman [nextKey] = "He calls himself Scarecrow. Psychologist turned psychopath. \ 
He preys on the innocent and instills them with fear ..." 

# I could do this over and over again so it is automatically done each time Batman sends a new tweet. 
# Here is another round ... but as a challenge, could you create a function that might add a 
# given tweet to the hash with a next sequential unique key? 

batnum +=1; # another way to increment batnum by 1, batnum is now 10 
nextKey = "batman" + batnum.to_s() # nextKey is now "batman10" 

# Here is another tweet added to our hash 

batman [nextKey] = "... When I chose to wear my costume, it was to prey upon the criminals \ 
... and instill them with fear. The irony is not lost on me." 

# Let's print out all the Tweets from the Batman 

printf "\n\nA few darker tweets from the Batman (a.k.a., the Dark Knight): \n\n" 
batman.each { |key, val| puts "(#{key}) #{val}" }