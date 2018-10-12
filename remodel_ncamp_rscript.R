###########################
# RE-MODEL OF NCAMP MODEL #
###########################
require(hier.part)


#############              
## OBJECTS ##
#############
objects = data.frame(x = c('1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0',
                           '0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0',
                           '0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0',
                           '0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 0',
                           '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1'))
names(objects) = NULL
rownames(objects) = c(1:5)

# Obj1: Square
# Obj2: Circle
# Obj3: Pentagon
# Obj4: Muffin
# Obj4: Test Object


##############              
## FEATURES ##
##############
feature = data.frame(x = c('1 0', '0 1'))
names(feature) = NULL
rownames(feature) = NULL

# Heart: 1 0
# Cross: 0 1


##########              
## PATH ##
##########
path = data.frame(x = c('1 0', '0 1'))
names(path) = NULL
rownames(path) = NULL


# Curvilinear: 1 0
# Rectilinear: 0 1

###########
## COLOR ##
###########
color = data.frame(x = c('1 0 0',
                         '0 1 0',
                         '0 0 1'))

names(color) = NULL
rownames(color) = NULL

# Red: 1 0 0
# Blue: 0 1 0
# Pink: 0 0 1


# STATIC HABITUATION
sink('static_hab_ncamp_new.ex')
cat(paste("defT:-", "\n", sep="\t"))
cat(paste("name: RedSquareCross", "\n", sep="\t"))
# INPUT
cat(paste("I:", "\n", sep="\t"))

cat(paste("(Shape)", sep="\t"))
print(objects[1,1], sep = "\t", quote = FALSE, row.names = FALSE)

cat(paste("(Color)", sep="\t"))
print(color[1,1], sep = "\t", quote = FALSE, row.names = FALSE)

cat(paste("(Feature)", sep="\t"))
print(feature[2,1], sep = "\t", quote = FALSE, row.names = FALSE)

# OUTPUT
cat(paste("T:", "\n", sep="\t"))
cat(paste("(ShapeOUT)", sep="\t"))
print(objects[1,1], sep = "\t", quote = FALSE, row.names = FALSE)

cat(paste("(ColorOUT)", sep="\t"))
print(color[1,1], sep = "\t", quote = FALSE, row.names = FALSE)

cat(paste("(FeatureOUT)", sep="\t"))
print(feature[2,1], sep = "\t", quote = FALSE, row.names = FALSE)
cat(paste(";", sep="\t"))
cat("\n")


# INPUT
cat(paste("name: BlueCircleHeart", "\n", sep="\t"))
cat(paste("I:", "\n", sep="\t"))

cat(paste("(Shape)", sep="\t"))
print(objects[2,1], sep = "\t", quote = FALSE, row.names = FALSE)

cat(paste("(Color)", sep="\t"))
print(color[2,1], sep = "\t", quote = FALSE, row.names = FALSE)

cat(paste("(Feature)", sep="\t"))
print(feature[1,1], sep = "\t", quote = FALSE, row.names = FALSE)

# OUTPUT
cat(paste("T:", "\n", sep="\t"))
cat(paste("(ShapeOUT)", sep="\t"))
print(objects[2,1], sep = "\t", quote = FALSE, row.names = FALSE)

cat(paste("(ColorOUT)", sep="\t"))
print(color[2,1], sep = "\t", quote = FALSE, row.names = FALSE)

cat(paste("(FeatureOUT)", sep="\t"))
print(feature[1,1], sep = "\t", quote = FALSE, row.names = FALSE)
cat(paste(";", sep="\t"))
cat("\n")
sink()



# DYNAMIC HABITUATION
sink('dyanmic_hab_ncamp.ex')
cat(paste("defT:-", "\n", sep="\t"))
cat(paste("name: RedSquareRectilinear", "\n", sep="\t"))
# RED SHAPES #
# INPUT
cat(paste("I:", "\n", sep="\t"))

cat(paste("(Shape)", sep="\t"))
print(objects[1,1], sep = "\t", quote = FALSE, row.names = FALSE)

cat(paste("(Color)", sep="\t"))
print(color[1,1], sep = "\t", quote = FALSE, row.names = FALSE)

cat(paste("(Path)", sep="\t"))
print(path[2,1], sep = "\t", quote = FALSE, row.names = FALSE)

# OUTPUT
cat(paste("T:", "\n", sep="\t"))
cat(paste("(ShapeOUT)", sep="\t"))
print(objects[1,1], sep = "\t", quote = FALSE, row.names = FALSE)

cat(paste("(ColorOUT)", sep="\t"))
print(color[1,1], sep = "\t", quote = FALSE, row.names = FALSE)

cat(paste("(PathOUT)", sep="\t"))
print(path[2,1], sep = "\t", quote = FALSE, row.names = FALSE)
cat(paste(";", sep="\t"))
cat("\n")

cat(paste("name: RedMuffinRectilinear", "\n", sep="\t"))
cat(paste("I:", "\n", sep="\t"))

cat(paste("(Shape)", sep="\t"))
print(objects[4,1], sep = "\t", quote = FALSE, row.names = FALSE)

cat(paste("(Color)", sep="\t"))
print(color[1,1], sep = "\t", quote = FALSE, row.names = FALSE)

cat(paste("(Path)", sep="\t"))
print(path[2,1], sep = "\t", quote = FALSE, row.names = FALSE)

# OUTPUT
cat(paste("T:", "\n", sep="\t"))
cat(paste("(ShapeOUT)", sep="\t"))
print(objects[4,1], sep = "\t", quote = FALSE, row.names = FALSE)

cat(paste("(ColorOUT)", sep="\t"))
print(color[1,1], sep = "\t", quote = FALSE, row.names = FALSE)

cat(paste("(PathOUT)", sep="\t"))
print(path[2,1], sep = "\t", quote = FALSE, row.names = FALSE)
cat(paste(";", sep="\t"))
cat("\n")




# BLUE SHAPES #
cat(paste("name: BlueCircleCurvilinear", "\n", sep="\t"))
# INPUT
cat(paste("I:", "\n", sep="\t"))

cat(paste("(Shape)", sep="\t"))
print(objects[2,1], sep = "\t", quote = FALSE, row.names = FALSE)

cat(paste("(Color)", sep="\t"))
print(color[2,1], sep = "\t", quote = FALSE, row.names = FALSE)

cat(paste("(PathOUT)", sep="\t"))
print(path[1,1], sep = "\t", quote = FALSE, row.names = FALSE)

# OUTPUT
cat(paste("T:", "\n", sep="\t"))
cat(paste("(ShapeOUT)", sep="\t"))
print(objects[2,1], sep = "\t", quote = FALSE, row.names = FALSE)

cat(paste("(ColorOUT)", sep="\t"))
print(color[2,1], sep = "\t", quote = FALSE, row.names = FALSE)

cat(paste("(PathOUT)", sep="\t"))
print(path[1,1], sep = "\t", quote = FALSE, row.names = FALSE)
cat(paste(";", sep="\t"))
cat("\n")


cat(paste("name: BluePentagonCurvilinear", "\n", sep="\t"))
cat(paste("I:", "\n", sep="\t"))

cat(paste("(Shape)", sep="\t"))
print(objects[4,1], sep = "\t", quote = FALSE, row.names = FALSE)

cat(paste("(Color)", sep="\t"))
print(color[2,1], sep = "\t", quote = FALSE, row.names = FALSE)

cat(paste("(PathOUT)", sep="\t"))
print(path[1,1], sep = "\t", quote = FALSE, row.names = FALSE)

# OUTPUT
cat(paste("T:", "\n", sep="\t"))
cat(paste("(ShapeOUT)", sep="\t"))
print(objects[4,1], sep = "\t", quote = FALSE, row.names = FALSE)

cat(paste("(ColorOUT)", sep="\t"))
print(color[2,1], sep = "\t", quote = FALSE, row.names = FALSE)

cat(paste("(PathOUT)", sep="\t"))
print(path[1,1], sep = "\t", quote = FALSE, row.names = FALSE)
cat(paste(";", sep="\t"))
cat("\n")
sink()





########
# TEST #
########
sink('test_ncamp_new.ex')
# CONSISTENT
cat(paste("name: Consistent", "\n", sep="\t"))
# INPUT
cat(paste("I:","\n", sep="\t"))

cat(paste("(Shape)", sep="\t"))
print(objects[5,1], sep = "\t", quote = FALSE, row.names = FALSE)

cat(paste("(Color)", sep="\t"))
print(color[1,1], sep = "\t", quote = FALSE, row.names = FALSE)

cat(paste("(Feature)", sep="\t"))
print(path[2,1], sep = "\t", quote = FALSE, row.names = FALSE)

cat(paste("(Path)", sep="\t"))
print(path[2,1], sep = "\t", quote = FALSE, row.names = FALSE)

# OUTPUT
cat(paste("T:", "\n", sep="\t"))
cat(paste("(ShapeOUT)", sep="\t"))
print(objects[5,1], sep = "\t", quote = FALSE, row.names = FALSE)

cat(paste("(ColorOUT)", sep="\t"))
print(color[1,1], sep = "\t", quote = FALSE, row.names = FALSE)

cat(paste("(FeatureOUT)", sep="\t"))
print(path[2,1], sep = "\t", quote = FALSE, row.names = FALSE)

cat(paste("(PathOUT)", sep="\t"))
print(path[2,1], sep = "\t", quote = FALSE, row.names = FALSE)
cat(paste(";", sep="\t"))
cat("\n")


# INCONSISTENT
cat(paste("name: Inconsistent", "\n", sep="\t"))
# INPUT
cat(paste("I:","\n", sep="\t"))

cat(paste("(Shape)", sep="\t"))
print(objects[5,1], sep = "\t", quote = FALSE, row.names = FALSE)

cat(paste("(Color)", sep="\t"))
print(color[1,1], sep = "\t", quote = FALSE, row.names = FALSE)

cat(paste("(Feature)", sep="\t"))
print(path[2,1], sep = "\t", quote = FALSE, row.names = FALSE)

cat(paste("(Path)", sep="\t"))
print(path[1,1], sep = "\t", quote = FALSE, row.names = FALSE)

# OUTPUT
cat(paste("T:", "\n", sep="\t"))
cat(paste("(ShapeOUT)", sep="\t"))
print(objects[5,1], sep = "\t", quote = FALSE, row.names = FALSE)

cat(paste("(ColorOUT)", sep="\t"))
print(color[1,1], sep = "\t", quote = FALSE, row.names = FALSE)

cat(paste("(FeatureOUT)", sep="\t"))
print(path[2,1], sep = "\t", quote = FALSE, row.names = FALSE)

cat(paste("(PathOUT)", sep="\t"))
print(path[1,1], sep = "\t", quote = FALSE, row.names = FALSE)
cat(paste(";", sep="\t"))
cat("\n")
sink()