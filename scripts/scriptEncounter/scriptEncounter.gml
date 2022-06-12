// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scriptEncounter(encounter,enemylvl){
menNumbers = [0,ceil(oHero.followers/2),19,39];
foodNumbers = [0,ceil(oHero.food/2),19,39];
IntelNumbers = [0,9,19,39];

if encounter == "Village"{
villageType = ["village","town","city"];
text = "There is a "+villageType[enemylvl-1]+" nearby.";
At = "Recruit";
Ap = oHero.foodlvl >= enemylvl-1;
Ar = true;
Ad = [false,[0,0,0,0]];
As = [-5*enemylvl,0,5*enemylvl,10*enemylvl];
Af = [0,0,0,0];

Bt = "Rest";
Bp = true;
Br = true;
Bd = [false,[0,0,0,0]];
Bs = [10*enemylvl,0,-10,0];
Bf = [0,0,0,0];

Ct = "Raid";
Cp = oHero.menlvl >= enemylvl;
Cr = oHero.menlvl > enemylvl;
Cd = [oHero.menlvl == enemylvl,[5*enemylvl,0,10*enemylvl,-floor(oHero.followers/2)]];
Cs = [5*enemylvl,0,15*enemylvl,-floor(oHero.followers*(0.5-(oHero.menlvl-enemylvl)*0.25))];
Cf = [0,0,0,-(oHero.followers+1)];
}
else if encounter == "BadWinter"{

text = "A bad winter approaches";
At = "Shelter";
Ap = oHero.foodlvl >= oHero.menlvl;
Ar = true
Ad = [false,[0,0,0,0]];
As = [-(oHero.food-foodNumbers[oHero.foodlvl]),0,5*oHero.menlvl,0];
Af = [0,0,0,0];

Bt = "Ration";
Bp = oHero.intelligencelvl >= oHero.menlvl;
Br = true;
Bd = [false,[0,0,0,0]];
Bs = [0,-(oHero.intelligence-IntelNumbers[oHero.menlvl]),-5*oHero.menlvl,0];
Bf = [0,0,0,0];

Ct = "push through";
Cp = true;
Cr = true;
Cd = [false,[0,0,0,0]];
Cs = [0,0,0,-(oHero.followers-menNumbers[oHero.menlvl])];
Cf = [0,0,0,0];	
}
else if encounter == "EnemyBand"{
//enemySprite = [sFlag_1,sFlag_2,sFlag_3];
enemyType = ["group","band","army"];
//object.sprite_index = enemySprite[enemylvl-1];
text = "An enemy "+enemyType[enemylvl-1]+" approaches.";
At = "Fight";
Ap = true;
Ar = oHero.menlvl > enemylvl;
Ad = [oHero.menlvl == enemylvl,[5*enemylvl,0,10*enemylvl,-floor(oHero.followers/2)]];
As = [10*enemylvl,0,10*enemylvl,-floor(oHero.followers*(0.5-(oHero.menlvl-enemylvl)*0.25))];
Af = [0,0,0,-(oHero.followers+1)];

Bt = "Ambush";
Bp = oHero.intelligencelvl >= enemylvl && oHero.menlvl <= enemylvl;
Br = oHero.menlvl >= enemylvl - 1;
Bd = [oHero.menlvl == (enemylvl - 1),[5*enemylvl,-10,10*enemylvl,-floor(oHero.followers/2)]];
Bs = [10*enemylvl,0,10*enemylvl,-floor(oHero.followers*(0.25-(oHero.menlvl-enemylvl)*0.25))];
Bf = [0,0,0,-(oHero.followers+1)];

Ct = "Flee";
Cp = true;
Cr = true;
Cd = [false,[0,0,0,0]];
Cs = [0,0,-30/enemylvl,-floor(oHero.followers*((oHero.menlvl-enemylvl)+2)/10)];
Cf = [0,0,0,0];	
}
else if encounter == "RuinedVillage"{
text = "A ransacked village";
At = "Loot";
Ap = true;
Ar = true;
Ad = [false,[0,0,0,0]];
As = [10,0,-10,0];
Af = [0,0,0,0];

Bt = "Investigate";
Bp = true;
Br = true;
Bd = [false,[0,0,0,0]];
Bs = [0,10,0,0];
Bf = [0,0,0,0];

Ct = "Provide";
Cp = oHero.foodlvl >= 2;
Cr = true;
Cd = [false,[0,0,0,0]];
Cs = [-(oHero.food-foodNumbers[oHero.foodlvl]),10,20,5];
Cf = [0,0,0,0];	
}
else if encounter == "Wilderness"{
text = "A beast lurks in a forest.";
At = "replenish";
Ap = true;
Ar = true;
Ad = [false,[0,0,0,0]];
As = [10,0,-10,0];
Af = [0,0,0,0];

Bt = "kill";
Bp = oHero.menlvl >= 1;
Br = true;
Bd = [false,[0,0,0,0]];
Bs = [20,0,0,-5];
Bf = [0,0,0,0];

Ct = "avoid";
Cp = true;
Cr = true;
Cd = [false,[0,0,0,0]];
Cs = [0,0,15,0];
Cf = [0,0,0,0];	
}


return [text,At,Ap,Ar,Ad,As,Af,Bt,Bp,Br,Bd,Bs,Bf,Ct,Cp,Cr,Cd,Cs,Cf]

}

/*
text = "this is where the text goes";
At = "option a";
Ap = true;
Ar = true;
Ad = [false,[0,0,0,0]];
As = [0,0,0,0];
Af = [0,0,0,0];

Bt = "option b";
Bp = true;
Br = true;
Bd = [false,[0,0,0,0]];
Bs = [0,0,0,0];
Bf = [0,0,0,0];

Ct = "option c";
Cp = true;
Cr = true;
Cd = [false,[0,0,0,0]];
Cs = [0,0,0,0];
Cf = [0,0,0,0];

t = text
p = prereq (t/f)
r = requirements to succeed (t/f)
d = draw; [0] = is it a draw (t/f) [1] = [food,int,morale,men] results
s = sucess impact if r
f = failure impact if !r
[food,int,morale,men]
*/