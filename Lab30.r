#MERGE FUNDIR TABLAS
#Instalar paquetería data.table
install.packages("data.table")

#Llamar biblioteca data.table
library(data.table)

#Elegir archivo
choose.files()

#Crear variables
green.proucts=read.csv("C:\\Users\\ACER ASPIRE\\Downloads\\green products.csv")
all.products=read.csv("C:\\Users\\ACER ASPIRE\\Downloads\\COMPLETE_YEARS_PRODUCTS.csv")

#Leer elementos como tablas
green.proucts=as.data.table(green.proucts)
all.products=as.data.table(all.products)

#Unir variables
merge.allproducts=merge(all.products, green.proucts, by="product_code")

#Unir todos los productos
merge.full=merge(all.products, green.proucts, by="product_code", all.x = TRUE)

#Exportar entregable"
write.csv(merge.full, file="merge.full.csv")
