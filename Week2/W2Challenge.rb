s = <<EOF
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae tellus diam. Pellentesque nec diam non 
enim malesuada imperdiet. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse potenti. Integer 
sed ligula magna. Sed imperdiet nibh ac neque pharetra placerat. Maecenas consequat enim sed quam cursus ut 
auctor diam volutpat. Aliquam facilisis hendrerit pharetra.
Quisque fermentum odio sapien, sed accumsan enim. Nulla facilisi. Nunc elit orci, convallis ac scelerisque 
vitae, tempus id odio. Vestibulum pulvinar, dui eget porta volutpat, purus nibh dictum massa, ut interdum dolor 
nulla ut purus. Nam at justo leo. Donec ullamcorper suscipit mattis. Vivamus ultrices congue eros, ac ultrices 
ante posuere a. Donec mollis, erat ut malesuada egestas, augue magna congue nisl, quis mattis neque justo nec 
libero. Nulla consectetur molestie quam sit amet consectetur. Praesent et imperdiet augue. Suspendisse vitae 
quam tortor, eu pretium ante. Sed quis mi ut tellus massa nunc.
EOF

s = s * 100
count = s.split(/\n/).count

s.each_line.with_index(1) do |line, index|
  puts "Line %#{count.to_s.length}d: #{line}" % index
end