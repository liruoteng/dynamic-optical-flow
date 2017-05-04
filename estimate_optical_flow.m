function uv = estimate_optical_flow(im1, im2, varargin)
% ESTIMATE_OPTICAL_FLOW : estimate optical flow in rainy scenes demo program
% INPUT:
%   IM1: FIRST IMAGE NAME
%   IM2: SECOND IMAGE NAME
%   METHOD: OPTICAL FLOW ESTIMATION METHOD, RESIDUE BY DEFAULT
% OUTPUT: 
%   UV: OPTICAL FLOW FIELD
%% 
obj = load_parameter(im1, im2);

%% sanity check
assert(isequal(size(im1), size(im2)), 'Error: image pair not identical');
sz = [size(im1, 1), size(im1, 2)];
uv = zeros([sz, 2]);
    
%% compute flow
uv = compute_flow(obj, uv);

%% store flow file and visualize flow 
% figure; 
% subplot(1,2,1);imshowpair(uint8(im1), uint8(im2)); title('Image Overlay 1');
% subplot(1,2,2);imshow(uint8(flowToColor(uv))); title('Middlebury color coding');

end
