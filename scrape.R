#------------------------------------------------------
library(rvest)
library(dplyr)
library(mongolite)

#------------------------------------------------------
message("Loading the URL(s)")
url <- "https://www.yummy.co.id"
html <- read_html(url)

#------------------------------------------------------
a <- html %>% html_elements(xpath = '//*[@id="__next"]/div/div/div/div[4]/div[2]/div/div[1]/div[1]/div/a[2]') %>% html_attrs()

html2 <- read_html(paste0(url,a[[1]]["href"]))
# judul
html2 %>% html_element(xpath = '//*[@id="__next"]/div/div/div/div[3]/div[1]/div[2]/h1') %>% html_text()
# Reting
html2 %>% html_element(xpath = '//*[@id="__next"]/div/div/div[1]/div[3]/div[1]/div[2]/div[1]/p[1]') %>% html_text()
# durasi
html2 %>% html_element(xpath = '//*[@id="__next"]/div/div/div/div[3]/div[1]/div[2]/div[2]/div[1]/p') %>% html_text()
# porsi
html2 %>% html_element(xpath = '//*[@id="__next"]/div/div/div[1]/div[3]/div[1]/div[2]/div[2]/div[4]/p') %>% html_text2()
# harga
html2 %>% html_element(xpath = '//*[@id="__next"]/div/div/div/div[3]/div[1]/div[2]/div[2]/div[2]/p') %>% html_text()
# Bahan Utama
html2 %>% html_element('.css-mikfal') %>% html_elements('.chakra-text.css-wckoo')%>% html_text()
# cara masak
html2 %>% html_element('.css-j7qwjs') %>% html_elements('.chakra-text.css-1tiio3a')%>% html_text()

#------------------------------------------------------
b <- html %>% html_elements(xpath = '//*[@id="__next"]/div/div/div[1]/div[4]/div[2]/div/div[1]/div[2]/div/a[2]') %>% html_attrs()

html3 <- read_html(paste0(url,b[[1]]["href"]))
# judul
html3 %>% html_element(xpath = '//*[@id="__next"]/div/div/div[1]/div[3]/div[1]/div[2]/h1') %>% html_text()
# Reting
html3 %>% html_element(xpath = '//*[@id="__next"]/div/div/div[1]/div[3]/div[1]/div[2]/div[1]/p[1]') %>% html_text()
# durasi
html3 %>% html_element(xpath = '//*[@id="__next"]/div/div/div[1]/div[3]/div[1]/div[2]/div[2]/div[1]/p') %>% html_text()
# porsi
html3 %>% html_element(xpath ='//*[@id="__next"]/div/div/div[1]/div[3]/div[1]/div[2]/div[2]/div[4]/p')%>% html_text2()
# harga
html3 %>% html_element(xpath = '//*[@id="__next"]/div/div/div[1]/div[3]/div[1]/div[2]/div[2]/div[2]/p')%>% html_text()
# Bahan Utama
html3 %>% html_element('.css-mikfal') %>% html_elements('.chakra-text.css-wckoo')%>% html_text()
#cara masak
html3 %>% html_element('.css-j7qwjs') %>% html_elements('.css-1tiio3a')%>% html_text()

#------------------------------------------------------
c <- html %>% html_elements(xpath = '//*[@id="__next"]/div/div/div[1]/div[4]/div[2]/div/div[1]/div[3]/div/a[2]') %>% html_attrs()

html4 <- read_html(paste0(url,c[[1]]["href"]))
# judul
html4 %>% html_element(xpath = '//*[@id="__next"]/div/div/div[1]/div[3]/div[1]/div[2]/h1') %>% html_text()
# Reting
html4 %>% html_element(xpath = '//*[@id="__next"]/div/div/div[1]/div[3]/div[1]/div[2]/div[1]/p[1]') %>% html_text()
# durasi
html4 %>% html_element(xpath = '//*[@id="__next"]/div/div/div[1]/div[3]/div[1]/div[2]/div[2]/div[1]/p') %>% html_text()
# porsi
html4 %>% html_element(xpath ='//*[@id="__next"]/div/div/div[1]/div[3]/div[1]/div[2]/div[2]/div[4]/p')%>% html_text2()
# harga
html4 %>% html_element(xpath = '//*[@id="__next"]/div/div/div[1]/div[3]/div[1]/div[2]/div[2]/div[2]/p')%>% html_text()
# Bahan Utama
html4 %>% html_element('.css-mikfal') %>% html_elements('.chakra-text.css-wckoo')%>% html_text()
#cara masak
html4 %>% html_element('.css-j7qwjs') %>% html_elements('.chakra-text.css-1tiio3a')%>% html_text()

#------------------------------------------------------
d <- html %>% html_elements(xpath = '//*[@id="__next"]/div/div/div[1]/div[4]/div[2]/div/div[1]/div[4]/div/a[2]') %>% html_attrs()

html5 <- read_html(paste0(url,d[[1]]["href"]))
# judul
html5 %>% html_element(xpath = '//*[@id="__next"]/div/div/div[1]/div[3]/div[1]/div[2]/h1') %>% html_text()
# Reting
html5 %>% html_element(xpath = '//*[@id="__next"]/div/div/div[1]/div[3]/div[1]/div[2]/div[1]/p[1]') %>% html_text()
# durasi
html5 %>% html_element(xpath = '//*[@id="__next"]/div/div/div[1]/div[3]/div[1]/div[2]/div[2]/div[1]/p') %>% html_text()
# porsi
html5 %>% html_element(xpath ='//*[@id="__next"]/div/div/div[1]/div[3]/div[1]/div[2]/div[2]/div[4]/p')%>% html_text2()
# harga
html5 %>% html_element(xpath = '//*[@id="__next"]/div/div/div[1]/div[3]/div[1]/div[2]/div[2]/div[2]/p')%>% html_text()
# Bahan Utama
html5 %>% html_element('.css-mikfal') %>% html_elements('.chakra-text.css-wckoo')%>% html_text()
#cara masak
html5 %>% html_element('.css-j7qwjs') %>% html_elements('.chakra-text.css-1tiio3a')%>% html_text()
#------------------------------------------------------

# judul
NMhtml2 <- html2 %>% html_element(xpath = '//*[@id="__next"]/div/div/div/div[3]/div[1]/div[2]/h1') %>% html_text()
NMhtml3 <- html3 %>% html_element(xpath = '//*[@id="__next"]/div/div/div/div[3]/div[1]/div[2]/h1') %>% html_text()
NMhtml4 <- html4 %>% html_element(xpath = '//*[@id="__next"]/div/div/div/div[3]/div[1]/div[2]/h1') %>% html_text()
NMhtml5 <- html5 %>% html_element(xpath = '//*[@id="__next"]/div/div/div/div[3]/div[1]/div[2]/h1') %>% html_text()
# Reting
Rhtml2 <- html2 %>% html_element(xpath = '//*[@id="__next"]/div/div/div[1]/div[3]/div[1]/div[2]/div[1]/p[1]') %>% html_text()
Rhtml3 <- html3 %>% html_element(xpath = '//*[@id="__next"]/div/div/div[1]/div[3]/div[1]/div[2]/div[1]/p[1]') %>% html_text()
Rhtml4 <- html4 %>% html_element(xpath = '//*[@id="__next"]/div/div/div[1]/div[3]/div[1]/div[2]/div[1]/p[1]') %>% html_text()
Rhtml5 <- html5 %>% html_element(xpath = '//*[@id="__next"]/div/div/div[1]/div[3]/div[1]/div[2]/div[1]/p[1]') %>% html_text()
# durasi
Dhtml2 <- html2 %>% html_element(xpath = '//*[@id="__next"]/div/div/div/div[3]/div[1]/div[2]/div[2]/div[1]/p') %>% html_text()
Dhtml3 <- html3 %>% html_element(xpath = '//*[@id="__next"]/div/div/div/div[3]/div[1]/div[2]/div[2]/div[1]/p') %>% html_text()
Dhtml4 <- html4 %>% html_element(xpath = '//*[@id="__next"]/div/div/div/div[3]/div[1]/div[2]/div[2]/div[1]/p') %>% html_text()
Dhtml5 <- html5 %>% html_element(xpath = '//*[@id="__next"]/div/div/div/div[3]/div[1]/div[2]/div[2]/div[1]/p') %>% html_text()
# porsi
Phtml2 <- html2 %>% html_element(xpath = '//*[@id="__next"]/div/div/div[1]/div[3]/div[1]/div[2]/div[2]/div[4]/p') %>% html_text2()
Phtml3 <- html3 %>% html_element(xpath = '//*[@id="__next"]/div/div/div[1]/div[3]/div[1]/div[2]/div[2]/div[4]/p') %>% html_text2()
Phtml4 <- html4 %>% html_element(xpath = '//*[@id="__next"]/div/div/div[1]/div[3]/div[1]/div[2]/div[2]/div[4]/p') %>% html_text2()
Phtml5 <- html5 %>% html_element(xpath = '//*[@id="__next"]/div/div/div[1]/div[3]/div[1]/div[2]/div[2]/div[4]/p') %>% html_text2()
# harga
Hhtml2 <- html2 %>% html_element(xpath = '//*[@id="__next"]/div/div/div/div[3]/div[1]/div[2]/div[2]/div[2]/p') %>% html_text()
Hhtml3 <- html3 %>% html_element(xpath = '//*[@id="__next"]/div/div/div/div[3]/div[1]/div[2]/div[2]/div[2]/p') %>% html_text()
Hhtml4 <- html4 %>% html_element(xpath = '//*[@id="__next"]/div/div/div/div[3]/div[1]/div[2]/div[2]/div[2]/p') %>% html_text()
Hhtml5 <- html5 %>% html_element(xpath = '//*[@id="__next"]/div/div/div/div[3]/div[1]/div[2]/div[2]/div[2]/p') %>% html_text()
# Bahan Utama
BUhtml2 <- html2 %>% html_element('.css-mikfal') %>% html_elements('.chakra-text.css-wckoo')%>% html_text()
BUhtml3 <- html3 %>% html_element('.css-mikfal') %>% html_elements('.chakra-text.css-wckoo')%>% html_text()
BUhtml4 <- html4 %>% html_element('.css-mikfal') %>% html_elements('.chakra-text.css-wckoo')%>% html_text()
BUhtml5 <- html5 %>% html_element('.css-mikfal') %>% html_elements('.chakra-text.css-wckoo')%>% html_text()
#cara masak
CMhtml2 <- html2 %>% html_element('.css-j7qwjs') %>% html_elements('.chakra-text.css-1tiio3a')%>% html_text()
CMhtml3 <- html3 %>% html_element('.css-j7qwjs') %>% html_elements('.chakra-text.css-1tiio3a')%>% html_text()
CMhtml4 <- html4 %>% html_element('.css-j7qwjs') %>% html_elements('.chakra-text.css-1tiio3a')%>% html_text()
CMhtml5 <- html5 %>% html_element('.css-j7qwjs') %>% html_elements('.chakra-text.css-1tiio3a')%>% html_text()
#------------------------------------------------------
list1 = list(Nama_Masakan = NMhtml2,
             Reting = Rhtml2,
             Durasi = Dhtml2,
             Porsi = Phtml2,
             Harga = Hhtml2,
             Bahan_Utama = c(BUhtml2),
             Cara_Masak = c(CMhtml2))

list2 = list(Nama_Masakan = NMhtml3,
             Reting = Rhtml3,
             Durasi = Dhtml3,
             Porsi = Phtml3,
             Harga = Hhtml3,
             Bahan_Utama = c(BUhtml3),
             Cara_Masak = c(CMhtml3))

list3 = list(Nama_Masakan = NMhtml4,
             Reting = Rhtml4,
             Durasi = Dhtml4,
             Porsi = Phtml4,
             Harga = Hhtml4,
             Bahan_Utama = c(BUhtml4),
             Cara_Masak = c(CMhtml4))

list4 = list(Nama_Masakan = NMhtml5,
             Reting = Rhtml5,
             Durasi = Dhtml5,
             Porsi = Phtml5,
             Harga = Hhtml5,
             Bahan_Utama = c(BUhtml5),
             Cara_Masak = c(CMhtml5))

#------------------------------------------------------
data <- list(menu1 = list1, menu2 = list2, menu3 = list3, menu4 = list4)


#------------------------------------------------------
message("Connect to MongoDB Cloud")
atlas <- mongo(
  collection = Sys.getenv("ATLAS_COLLECTION"),
  db         = Sys.getenv("ATLAS_DB"),
  url        = Sys.getenv("ATLAS_URL")
)
message("Store data frame into mongo cloud")
atlas$insert(data)
#------------------------------------------------------
message("Disconnect database")
atlas$disconnect()
