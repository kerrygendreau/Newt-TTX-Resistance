library(ape)

#Dated tree downloaded from Pyron (2014) https://datadryad.org/stash/dataset/doi:10.5061/dryad.jm453  filename "amph_shl_dates.tre"
tree <- read.tree("~/Desktop/Pyron_2014_amphibian_tree.txt")



##### Time Trees for Fig. 3 ##########

salamanders <- c("Salamandra_salamandra", "Ambystoma_mexicanum", "Pleurodeles_waltl", "Taricha_granulosa", "Taricha_torosa", "Notophthalmus_viridescens", "Plethodon_cinereus", "Cryptobranchus_alleganiensis", "Xenopus_laevis")

salamander.SCN.tree <- drop.tip(tree, setdiff(tree$tip.label, salamanders))

#identify node IDs
plot(salamander.SCN.tree, font=12)
nodelabels(font=12)


# Make calibration - Dates for advanced newts (Notophthalmus, Taricha) from Pyron (2014). All other dates from Hime (2021), Suppl Fig 2 and Suppl Table 6
nodes.p <- c(10, 11, 12, 13, 14, 15)
minage.p <- c(272.3, 159.4, 123.9, 107.3, 49.2, 29.7)
genus.1 <- c("Salamandra_salamandra", "Ambystoma_mexicanum", "Pleurodeles_waltl","Notophthalmus_viridescens", "Plethodon_cinereus", "Cryptobranchus_alleganiensis", "Xenopus_laevis")
calib.p <- makeChronosCalib(salamander.SCN.tree, node = nodes.p, age.min = minage.p, 
                          age.max = minage.p, interactive = FALSE)

# Make timetree
chr <- chronos(salamander.SCN.tree, lambda = 1, model = "correlated", quiet = FALSE, 
               calibration = calib.p, control = chronos.control(dual.iter.max = 200))
plot(chr)
edgelabels(chr$edge.length, bg=NULL, frame="none")



write.tree(chr, file = "~/Desktop/SCNA_amphibian_time_tree.newick")






##### Time Trees for Fig. 5 ##########

salamanders.fig5 <- c("Pleurodeles_waltl", "Taricha_granulosa", "Taricha_torosa", "Notophthalmus_viridescens")
fig5.SCN.tree <- drop.tip(tree, setdiff(tree$tip.label, salamanders.fig5))

#identify node IDs
plot(fig5.SCN.tree, font=12)
nodelabels(font=12)


# Make calibration - Dates for advanced newts (Notophthalmus, Taricha) from Pyron (2014). All other dates from Hime (2021), Suppl Fig 2 and Suppl Table 6
nodes.p <- c(5)
minage.p <- c(29.7)
genus.1 <- c("Pleurodeles_waltl", "Taricha_granulosa", "Taricha_torosa", "Notophthalmus_viridescens")
calib.p <- makeChronosCalib(fig5.SCN.tree, node = nodes.p, age.min = minage.p, 
                            age.max = minage.p, interactive = FALSE)

# Make timetree
chr <- chronos(fig5.SCN.tree, lambda = 1, model = "correlated", quiet = FALSE, 
               calibration = calib.p, control = chronos.control(dual.iter.max = 200))
plot(chr)
edgelabels(chr$edge.length, bg=NULL, frame="none")

write.tree(chr, file = "~/Desktop/SCNA_time_tree_fig5b.newick")

