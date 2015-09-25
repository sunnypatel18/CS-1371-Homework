function [out] = evolvePokemon(sain,names)
Pokemon = {sain.Name};
evolv = {sain.Evolution};
if all(~strcmp(Pokemon,names))
   out = [names,' is not a Pokemon.'];
else
   poke = names;
   out = [];
   while ~strcmp(poke,'')
   ind = find(strcmp(Pokemon,poke));
   poke = Pokemon(ind);
   out = [out,poke];
   poke = evolv(ind);
   end
end
end
