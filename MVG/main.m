roi_names = mask_atlas("wholebrain");
%disp(roi_names);
num_rois = numel(roi_names);
time = 10;
% derive number of frames for such epoch duration
num_frames = floor(time*168/10);
gcamp6 = data(:,:,1:num_frames,:);
num_epochs = size(gcamp6,4);
    % define the overlapped region between the atlas and the brain mask
mask = AtlasSeeds.*xform_mask;
disp(num_epochs);
for epoch=1:num_epochs
    data = gcamp6(:,:,:,epoch);
    label = scoringindex_file(epoch);
    [toi] = parcel2trace(data, mask, roi_names);
    am = zeros(num_rois, num_frames, num_frames);
    %disp(label);
    for roi_idx = 1:size(toi,1)
        [VG] = fast_NVG(toi(roi_idx, :), 1:num_frames);
        am(roi_idx,:,:) = VG;      
    end    
    if label ~= 2 % artifacts are not used in this study
        if label == 3 
            % redefine the label as: 0=wake, 1=NREM and 2=REM
            label = 2;
        end

        % Generate a unique file name based on epoch
        file_name = sprintf('am_label_data_2_11_%d.mat', epoch);
        
        % save MVG for each data epoch in mat. file
        save(file_name, 'am', 'label');
    end
    disp('one epoch done')
end