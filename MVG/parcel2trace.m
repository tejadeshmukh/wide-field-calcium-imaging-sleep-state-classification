function [timeseries]=parcel2trace(data, atlas, roi_names)

[nVx,nVy,T] = size(data);
num_regions = numel(roi_names);
data = reshape(data, nVx*nVy, T);
timeseries = zeros(num_regions, T);

for region_index = 1:num_regions
    assert(ismember(roi_names(region_index), atlas)); 
    locs = atlas==roi_names(region_index);
    timeseries(region_index,:) = mean(data(locs,:),1);
end    

end