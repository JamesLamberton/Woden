title = "The Mysterious Man";
content = oHero.name+" and his band encounter a cloaked figure, dressed head to toe in heavy black rags that shift and slither as if alive itself. His face covered but for two peering sockets for eyes that sank into the souls around him. " + oHero.name +" felt uneasy upon the sight of the man, questioning the man as to why he had approached his band. The man's whispers were painful and breath foul as he preached: \n\n 'The Dead do not wait for those who bare the rags.' \n \n He stretched an arm and his weighted rags extended toward "+oHero.name+", almost in offering."
toggle = 1;
event_inherited();
option_a = "Accept his curse, and welcome him into the band.";
option_b = "Decline his gift, and refuse the power.";
option_c = "Kill the seidhr, they do not belong in Midgard.";
//[+intelligence, +followers, +food, +popularity, +special]

option_a_result = oHero.name + " cautiously raises his arm to meet the seidhr's. The cursed man leers forward light lightning and clasps down on "+oHero.name+"'s hand before he can pull back. The rags stike at "+oHero.name+", who would have been knocked to the ground if not for the seidhr's firm grasp. cloth peels from the man and infuses into "+oHero.name+"'s skin, vanishing inside him in a process of excruciating pain. The man, having seperated from the rags, was no more than dust. Multiple followers flee in fear, and those remain hold curiosities for the state of their leader's mind.";
option_a_impacts = [10,-ceil(oHero.followers*0.1),0,-10,"Iron Skin",3]
option_b_result = oHero.name +" frowns upon the offering, and, without a word, turns and leaves. In note of your authority, two of the superstitous men gain the courage to attack the man. They die before they reach swordslength, and the spirit vanishes in moments. ";
option_b_impacts = [2,-2,0,5,"",0]
option_c_result_sucess = oHero.name +" commands his men to attack the cursed man. The first two men charge and are killed before the rest can react. The Seidhr moves with incredible speed as it cuts down three more. As it raises to strike another, a blade slices the man clean in two. "+oHero.name+" stood in awe as the rags curl into the hilt of his sword, and infuse into the blade to bring an incredible glow and a razor edge.";
option_c_impacts = [0,-5,0,10,"Razor Edge",1];
option_c_result_failure = oHero.name +" lunges at the man thrusting his sword deep into the man's heart. The man does not shed blood. The rags become enranged and begin to form snakelike features, rearing to strike. "+oHero.name+" begins to back away in fear but finds himself bound at the feet by more of the winding rags. He becomes overencumbered by the weight of the cloth as the man piles on top of him, soffocating "+oHero.name+" to death."


