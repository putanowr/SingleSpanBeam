function frewind2(fid)
% A version of frewind that errors on failure
beam2D.internal.util.fseek(fid, 0, 'bof');
end