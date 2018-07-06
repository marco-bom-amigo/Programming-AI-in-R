library(readxl)

if(!file.exists('data')){
  dir.create('data')
}
file.url = 'http://www.bcb.gov.br/pec/Indeco/Port/IE1-04.xlsx'
file.local = file.path('./data', basename(file.url))
download.file(url = file.url, destfile = file.local , mode = 'wb')

download.data <- function(file.url, file.local = NA){
  if(!file.exists('data')){
    dir.create('data')
  }
  if(is.na(file.local)){
    file.local = file.path('./data', basename(file.url))
  }
  download.file(url = file.url, destfile = file.local , mode='wb')
  list.files('./data')
}

download.data('https://raw.githubusercontent.com/elthonf/fiap-mba-r/master/data/Copas.csv')
download.data('https://raw.githubusercontent.com/elthonf/fiap-mba-r/master/data/Copas-Partidas.csv')
download.data('https://raw.githubusercontent.com/elthonf/fiap-mba-r/master/data/Copas-Jogadores.csv')

copas           <- read.table('./data/Copas.csv'          , sep=',' , header = T)
copas.partidas  <- read.table('./data/Copas-Partidas.csv' , sep=',' , header = T, fill = T)
copas.jogadores <- read.table('./data/Copas-Jogadores.csv', sep=',' , header = T, fill = T)

download.data('https://raw.githubusercontent.com/elthonf/fiap-mba-r/master/data/cameras.baltimore.xlsx')

camera.data.x = read_excel(path = './data/cameras.baltimore.xlsx', sheet = 1)
