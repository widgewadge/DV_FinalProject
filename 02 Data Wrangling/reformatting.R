setwd("~/Desktop")

# Replace "." (i.e., period) with "_" in the column names.
names(df) <- gsub("\\.+", "_", names(df))

# edible-or-poisonous
# edible=e,poisonous=p
df$edible_or_poisonous <- gsub("^e$", "edible", df$edible_or_poisonous)
df$edible_or_poisonous <- gsub("^p$", "poisonous", df$edible_or_poisonous)

# cap-shape
# bell=b,conical=c,convex=x,flat=f,knobbed=k,sunken=s
df$cap_shape <- gsub("^b$", "bell", df$cap_shape)
df$cap_shape <- gsub("^c$", "conical", df$cap_shape)
df$cap_shape <- gsub("^x$", "convex", df$cap_shape)
df$cap_shape <- gsub("^f$", "flat", df$cap_shape)
df$cap_shape <- gsub("^k$", "knobbed", df$cap_shape)
df$cap_shape <- gsub("^s$", "sunken", df$cap_shape)

# cap-surface
# fibrous=f,grooves=g,scaly=y,smooth=s
df$cap_surface <- gsub("^f$", "fibrous", df$cap_surface)
df$cap_surface <- gsub("^g$", "grooves", df$cap_surface)
df$cap_surface <- gsub("^y$", "scaly", df$cap_surface)
df$cap_surface <- gsub("^s$", "smooth", df$cap_surface)

# cap-color
# brown=n,buff=b,cinnamon=c,gray=g,green=r,pink=p,purple=u,red=e,white=w,yellow=y
df$cap_color <- gsub("^n$", "brown", df$cap_color)
df$cap_color <- gsub("^b$", "buff", df$cap_color)
df$cap_color <- gsub("^c$", "cinnamon", df$cap_color)
df$cap_color <- gsub("^g$", "gray", df$cap_color)
df$cap_color <- gsub("^r$", "green", df$cap_color)
df$cap_color <- gsub("^p$", "pink", df$cap_color)
df$cap_color <- gsub("^u$", "purple", df$cap_color)
df$cap_color <- gsub("^e$", "red", df$cap_color)
df$cap_color <- gsub("^w$", "white", df$cap_color)
df$cap_color <- gsub("^y$", "yellow", df$cap_color)

# bruises
# bruises=t,no=f
df$bruises <- gsub("^t$", TRUE, df$bruises)
df$bruises <- gsub("^f$", FALSE, df$bruises)

# odor
# almond=a,anise=l,creosote=c,fishy=y,foul=f,musty=m,none=n,pungent=p,spicy=s
df$odor <- gsub("^a$", "almond", df$odor)
df$odor <- gsub("^l$", "anise", df$odor)
df$odor <- gsub("^c$", "creosote", df$odor)
df$odor <- gsub("^y$", "fishy", df$odor)
df$odor <- gsub("^f$", "foul", df$odor)
df$odor <- gsub("^m$", "musty", df$odor)
df$odor <- gsub("^n$", "none", df$odor)
df$odor <- gsub("^p$", "pungent", df$odor)
df$odor <- gsub("^s$", "spicy", df$odor)

# gill-attachment
# attached=a,descending=d,free=f,notched=n
df$gill_attachment <- gsub("^a$", "attached", df$gill_attachment)
df$gill_attachment <- gsub("^d$", "descending", df$gill_attachment)
df$gill_attachment <- gsub("^f$", "free", df$gill_attachment)
df$gill_attachment <- gsub("^n$", "notched", df$gill_attachment)

# gill-spacing
# close=c,crowded=w,distant=d
df$gill_spacing <- gsub("^c$", "close", df$gill_spacing)
df$gill_spacing <- gsub("^w$", "crowded", df$gill_spacing)
df$gill_spacing <- gsub("^d$", "distant", df$gill_spacing)

# gill-size
# broad=b,narrow=n
df$gill_size <- gsub("^n$", "narrow", df$gill_size)
df$gill_size <- gsub("^b$", "broad", df$gill_size)

# gill-color
# black=k,brown=n,buff=b,chocolate=h,gray=g,green=r,orange=o,pink=p,purple=u,red=e,white=w,yellow=y
df$gill_color <- gsub("^k$", "black", df$gill_color)
df$gill_color <- gsub("^n$", "brown", df$gill_color)
df$gill_color <- gsub("^b$", "buff", df$gill_color)
df$gill_color <- gsub("^h$", "chocolate", df$gill_color)
df$gill_color <- gsub("^g$", "gray", df$gill_color)
df$gill_color <- gsub("^r$", "green", df$gill_color)
df$gill_color <- gsub("^o$", "orange", df$gill_color)
df$gill_color <- gsub("^p$", "pink", df$gill_color)
df$gill_color <- gsub("^u$", "purple", df$gill_color)
df$gill_color <- gsub("^e$", "red", df$gill_color)
df$gill_color <- gsub("^w$", "white", df$gill_color)
df$gill_color <- gsub("^y$", "yellow", df$gill_color)

# stalk-shape
# enlarging=e,tapering=t
df$stalk_shape <- gsub("^e$", "enlarging", df$stalk_shape)
df$stalk_shape <- gsub("^t$", "tapering", df$stalk_shape)

# stalk-root
# bulbous=b,club=c,cup=u,equal=e,rhizomorphs=z,rooted=r,missing=?
df$stalk_root <- gsub("^b$", "bulbous", df$stalk_root)
df$stalk_root <- gsub("^c$", "club", df$stalk_root)
df$stalk_root <- gsub("^u$", "cup", df$stalk_root)
df$stalk_root <- gsub("^e$", "equal", df$stalk_root)
df$stalk_root <- gsub("^z$", "rhizomorphs", df$stalk_root)
df$stalk_root <- gsub("^r$", "rooted", df$stalk_root)
df$stalk_root <- gsub("^?$", NA, df$stalk_root)

# stalk-surface-above-ring
# fibrous=f,scaly=y,silky=k,smooth=s
df$stalk_surface_above_ring <- gsub("^f$", "fibrous", df$stalk_surface_above_ring)
df$stalk_surface_above_ring <- gsub("^y$", "scaly", df$stalk_surface_above_ring)
df$stalk_surface_above_ring <- gsub("^k$", "silky", df$stalk_surface_above_ring)
df$stalk_surface_above_ring <- gsub("^s$", "smooth", df$stalk_surface_above_ring)

# stalk-surface-below-ring
# fibrous=f,scaly=y,silky=k,smooth=s
df$stalk_surface_below_ring <- gsub("^f$", "fibrous", df$stalk_surface_below_ring)
df$stalk_surface_below_ring <- gsub("^y$", "scaly", df$stalk_surface_below_ring)
df$stalk_surface_below_ring <- gsub("^k$", "silky", df$stalk_surface_below_ring)
df$stalk_surface_below_ring <- gsub("^s$", "smooth", df$stalk_surface_below_ring)

# stalk-color-above-ring
# brown=n,buff=b,cinnamon=c,gray=g,orange=o,pink=p,red=e,white=w,yellow=y
df$stalk_color_above_ring <- gsub("^n$", "brown", df$stalk_color_above_ring)
df$stalk_color_above_ring <- gsub("^b$", "buff", df$stalk_color_above_ring)
df$stalk_color_above_ring <- gsub("^c$", "cinnamon", df$stalk_color_above_ring)
df$stalk_color_above_ring <- gsub("^g$", "gray", df$stalk_color_above_ring)
df$stalk_color_above_ring <- gsub("^o$", "orange", df$stalk_color_above_ring)
df$stalk_color_above_ring <- gsub("^p$", "pink", df$stalk_color_above_ring)
df$stalk_color_above_ring <- gsub("^e$", "red", df$stalk_color_above_ring)
df$stalk_color_above_ring <- gsub("^w$", "white", df$stalk_color_above_ring)
df$stalk_color_above_ring <- gsub("^y$", "yellow", df$stalk_color_above_ring)

# stalk-color-below-ring
# brown=n,buff=b,cinnamon=c,gray=g,orange=o,pink=p,red=e,white=w,yellow=y
df$stalk_color_below_ring <- gsub("^n$", "brown", df$stalk_color_below_ring)
df$stalk_color_below_ring <- gsub("^b$", "buff", df$stalk_color_below_ring)
df$stalk_color_below_ring <- gsub("^c$", "cinnamon", df$stalk_color_below_ring)
df$stalk_color_below_ring <- gsub("^g$", "gray", df$stalk_color_below_ring)
df$stalk_color_below_ring <- gsub("^o$", "orange", df$stalk_color_below_ring)
df$stalk_color_below_ring <- gsub("^p$", "pink", df$stalk_color_below_ring)
df$stalk_color_below_ring <- gsub("^e$", "red", df$stalk_color_below_ring)
df$stalk_color_below_ring <- gsub("^w$", "white", df$stalk_color_below_ring)
df$stalk_color_below_ring <- gsub("^y$", "yellow", df$stalk_color_below_ring)

# veil-type
# partial=p,universal=u
df$veil_type <- gsub("^p$", "partial", df$veil_type)
df$veil_type <- gsub("^u$", "universal", df$veil_type)

# veil-color
# brown=n,orange=o,white=w,yellow=y
df$veil_color <- gsub("^n$", "brown", df$veil_color)
df$veil_color <- gsub("^o$", "orange", df$veil_color)
df$veil_color <- gsub("^w$", "white", df$veil_color)
df$veil_color <- gsub("^y$", "yellow", df$veil_color)

# ring-number
# none=n,one=o,two=t
df$ring_number <- gsub("^n$", 0, df$ring_number)
df$ring_number <- gsub("^o$", 1, df$ring_number)
df$ring_number <- gsub("^t$", 2, df$ring_number)

# ring-type
# cobwebby=c,evanescent=e,flaring=f,large=l,none=n,pendant=p,sheathing=s,zone=z
df$ring_type <- gsub("^c$", "cobwebby", df$ring_type)
df$ring_type <- gsub("^e$", "evanescent", df$ring_type)
df$ring_type <- gsub("^f$", "flaring", df$ring_type)
df$ring_type <- gsub("^l$", "large", df$ring_type)
df$ring_type <- gsub("^n$", "none", df$ring_type)
df$ring_type <- gsub("^p$", "pendant", df$ring_type)
df$ring_type <- gsub("^s$", "sheathing", df$ring_type)
df$ring_type <- gsub("^z$", "zone", df$ring_type)

# spore-print-color
# black=k,brown=n,buff=b,chocolate=h,green=r,orange=o,purple=u,white=w,yellow=y
df$spore_print_color <- gsub("^k$", "black", df$spore_print_color)
df$spore_print_color <- gsub("^n$", "brown", df$spore_print_color)
df$spore_print_color <- gsub("^b$", "buff", df$spore_print_color)
df$spore_print_color <- gsub("^h$", "chocolate", df$spore_print_color)
df$spore_print_color <- gsub("^r$", "green", df$spore_print_color)
df$spore_print_color <- gsub("^o$", "orange", df$spore_print_color)
df$spore_print_color <- gsub("^u$", "purple", df$spore_print_color)
df$spore_print_color <- gsub("^w$", "white", df$spore_print_color)
df$spore_print_color <- gsub("^y$", "yellow", df$spore_print_color)

# population
# abundant=a,clustered=c,numerous=n,scattered=s,several=v,solitary=y
df$population <- gsub("^a$", "abundant", df$population)
df$population <- gsub("^c$", "clustered", df$population)
df$population <- gsub("^n$", "numerous", df$population)
df$population <- gsub("^s$", "scattered", df$population)
df$population <- gsub("^v$", "several", df$population)
df$population <- gsub("^y$", "solitary", df$population)

# habitat
# grasses=g,leaves=l,meadows=m,paths=p,urban=u,waste=w,woods=d
df$habitat <- gsub("^g$", "grasses", df$habitat)
df$habitat <- gsub("^l$", "leaves", df$habitat)
df$habitat <- gsub("^m$", "meadows", df$habitat)
df$habitat <- gsub("^p$", "paths", df$habitat)
df$habitat <- gsub("^u$", "urban", df$habitat)
df$habitat <- gsub("^w$", "waste", df$habitat)
df$habitat <- gsub("^d$", "woods", df$habitat)



# write to csv
write.csv(df, paste("mushroom", ".reformatted.csv", sep=""), row.names=FALSE, na = "")

# sql create table
tableName <- "mushroom"
sql <- paste("CREATE TABLE", tableName, "(\n")

measures <- names(select(df, ID, ring_number))
for(m in measures) {
  sql <- paste(sql, paste(m, "number(38,4),\n"))
}

dimensions <- names(select(df, -ring_number, -ID))
for(d in dimensions) {
  if(d != tail(dimensions, n=1)) sql <- paste(sql, paste(d, "varchar2(4000),\n"))
  else sql <- paste(sql, paste(d, "varchar2(4000)\n"))
}

sql <- paste(sql, ");")
cat(sql)