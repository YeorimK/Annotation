install.packages(stringr)
library(stringr)
library(rgdal)
# 워킹 디렉토리 설정
setwd("/Users/kimyeorim/Desktop/간판/여림")

# 간판 이미지 파일명 불러오기
img <- list.files()
img <- as.data.frame(img)

# 확장자 명을 제외한 파일 이름 추출
name <- gsub(".jpg", "", img)
sample <- readOGR(dsn = "sample.shp")

# shapefile을 'name'의 이름으로 250개 내보내기 
for (i in 1:250){
  writeOGR(sample, dsn = ".", layer = name[i], driver = 'ESRI Shapefile', 
           layer_options="ENCODING=UTF-8",overwrite_layer = T) 
} 

