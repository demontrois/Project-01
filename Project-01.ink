
VAR time = -1 // 0 Dusk, 1 Night, 2 Dawn, 3 Midday



It is {advance_time()} 

+ [Walk further into the woods] -> woods

== woods ==
 This is further into the woods. 

 You stumble upon a clearing, after hours of searching and attempting to find your way back to your mother, you can faintly see. It is getting rather dark
 
 *[Search through your backpack] -> backpack
 

 == backpack ==
 Inside your backpack you find:
 
 * [A flashlight]
 
 You now have your flashlight, hopefully it will be useful. -> clearing
 
 + [A snack]
 
Doritos? You don't remeber packing those, they aren,t even a good flavor. Your mother must have, she always liked the worst snacks. You put them back in your backpack just in case you find her and she's hungry. -> backpack
 
 + [A knife]
 
 A knife, your mother taught you, is only used for self-defense, you don't want to hurt anybody. Unless you have to. -> backpack
 

  It is {advance_time()} -> clearing
* {time == 1} 
-> DONE 

 == clearing ==
 
 +[Walk further into the woods] 
 
 Inside the clearing, with the help of your flashlight you see -> in_clearing







Inside the clearing, with the help of your flashlight you see: -> in_clearing

== in_clearing==



*[Beds of flowers]

In the flowerbeds, you see types of flowers that you have never seen before. Your mother would probably like them. They are beautiful but they almost look dangerous. -> flowerbeds


*[Remnants of a home]

There looks to be a home in the clearing, or maybe it used to be a home, it sure isn't inhabitable now. It is burnt to a crisp and appears to be faliing apart, but maybe your mother is inside. -> remnants

*[Nothing]
There is nothing in the clearing. It looks almost as desolate as you feel. -> nothing


== flowerbeds ==
* [Pick flowers]

You decide to pick the flowers, maybe you could sell them, or maybe they have special medicinal properties. You put them carefully inside your backpack -> backpack_1


* [Explore the clearing]
You decided to leave the flowers alone, they give you bad vibes, you're unsure if you should mess with them. Instead you spot a tree up ahead -> tree

== tree ==

*[ Go to the tree]

You notice a large tree. As you get closer to the tree you notice that there is something hanging from it. -> inspect_tree

== inspect_tree ==

Hanging from the tree appears to be your mother. You remembered you have soemthing in your backpack, maybe you can still save her. -> backpack_2

 



-> END


== remnants ==

Inside the abandoned home was just one room. Inside that room appeared to be a stove, a chair, a table, and a floormat. -> backdoor

-> END

== nothing ==
You are so tired, afraid, and upset. You can't keep searching anymore. You have to rest somewhere. -> tree

-> END


== backpack_1 ==

*[Flowers]
You think your mother may like these. -> tree

*[A snack]
Just Doritos. -> backpack_1

*[A knife]
The knife your mother taught you that was only for self defense. -> backpack_1
== backpack_2

*[A snack]
You don't think she could eat her snack in this state. -> backpack_2

*[A knife]
It isn't self defence, but maybe you can use it to cut your mother down. ->cut



== backdoor== 

You leave throught the backdoor of the one room shack. There was nothing interesting inside of there, and no signs of your mother. -> tree

== cut ==

You cut your mother down, but you fear it is too late. She is blue in the face and cold to the touch. You don't understand why she would do this. Why she would leave you all alone. -> backpack_3

== backpack_3 ==

*[A snack]
You eat your mother's snack. You feel it brings you clsoer one last time. 

-> END

*[A knife]
You pull your knife. You remind yourself that this isn't self defense. But your mother is gone,s and you have nothing to live for anymore. 
-> END




== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    
    
    {    
        - time == 0:
            ~ return "Dusk"
        
        - time == 1:
            ~ return "Night"
        
        - time == 2:
            ~ return "Dawn"
            
        - time == 3:
            ~ return "Midday"
    
    }
    
    
        