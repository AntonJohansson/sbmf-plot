using DelimitedFiles

o1 = readdlm("reldata/out_g-0.17")
o2 = readdlm("reldata/out_g0.17")
o3 = readdlm("reldata/out_g-0.33")
o4 = readdlm("reldata/out_g0.33")

relerr(A,B) = (A - B)/B

scale = 1e3

print("g -0.17 rspt ", scale*(o1[end-1,4]./o1[end-1,7] .- o1[end,4]./o1[end,7]), "\n")
print("g -0.17 enpt ", scale*(o1[end-1,6]./o1[end-1,7] .- o1[end,6]./o1[end,7]), "\n")

print("g  0.17 rspt ", scale*(o2[end-1,4]./o2[end-1,7] .- o2[end,4]./o2[end,7]), "\n")
print("g  0.17 enpt ", scale*(o2[end-1,6]./o2[end-1,7] .- o2[end,6]./o2[end,7]), "\n")

print("g -0.33 rspt ", scale*(o3[end-1,4]./o3[end-1,7] .- o3[end,4]./o3[end,7]), "\n")
print("g -0.33 enpt ", scale*(o3[end-1,6]./o3[end-1,7] .- o3[end,6]./o3[end,7]), "\n")

print("g  0.33 rspt ", scale*(o4[end-1,4]./o4[end-1,7] .- o4[end,4]./o4[end,7]), "\n")
print("g  0.33 enpt ", scale*(o4[end-1,6]./o4[end-1,7] .- o4[end,6]./o4[end,7]), "\n")
