using DelimitedFiles


o90 = readdlm("out_0.005000_gab_-0.900000", comments=true,comment_char='#')
o95 = readdlm("out_0.005000_gab_-0.950000", comments=true,comment_char='#')
o99 = readdlm("out_0.005000_gab_-0.990000", comments=true,comment_char='#')

print(o99[findmin(o99[:,6]./(2*o99[:,1]))[2],1], '\n')
print(findmin(o99[:,6]./(2*o99[:,1]))[1] - o99[1,6]./(2*o99[1,1]), '\n')

print(o99[findmin(o99[:,4]./(2*o99[:,1]))[2],1], '\n')
print(findmin(o99[:,4]./(2*o99[:,1]))[1] - o99[1,4]./(2*o99[1,1]), '\n')
