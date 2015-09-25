function  [out] = typeDisadvantage(structure,pokemontype)
type = {structure.Type};
weakness = {structure.Weakness};
ind = strcmp(pokemontype,type);
pokemontype = weakness(ind);
if any(strcmp(pokemontype,''))
   out = {};
else
   out = [pokemontype,typeDisadvantage(structure,pokemontype)];
end
end