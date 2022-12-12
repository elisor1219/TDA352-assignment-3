function [generators, gSubgroup] = findGenerators(order)
%FINDGENERATORS Findes the generator of a cyclic multiplicative group

g = 1:order;

%First row always 1
gSubgroup = ones(order, order);
%Second row always the same as the generator
gSubgroup(2,:) = g;

%Sets all subgropus to be a generator
potentialGenerators = 1:order-1;

for i = 3:(order)
    gSubgroup(i,:) = gSubgroup(i-1,:).*gSubgroup(2,:);
    gSubgroup(i,:) = mod(gSubgroup(i,:),order);
    
    %If a 1 is found, it is not a generator of group order+1
    for j = 1:order
        if gSubgroup(i,j) == 1 && i < order
            potentialGenerators(j) = 0;
        end
    end
end

generators = nonzeros(potentialGenerators)';


end