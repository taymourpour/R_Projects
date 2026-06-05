# 1 - فراخوانی دیتا و تعریف در متغیر
heart_data <- read.csv("C:/Users/Amir/OneDrive/Desktop/homeworks-projects/R/فایل جلسات/جلسه 1/Data Frames/Heart data.csv")
# 2 - نمایش ساختار داده‌های دیتافریم
str(heart_data)
# 3 - گزارش خلاصه آماری توصیفی
summary(heart_data)
# 4 - تغییر نام ستون اول
colnames(heart_data)[1] <- "Age"
# 5 - تبدیل ستون دوم به حروف بزرگ
heart_data$sex <- toupper(heart_data$sex)
heart_data$sex <- toupper(as.character(heart_data$sex))
# 6 - نمایش میانگین ستون سن
mean(heart_data$Age)
# 7 - نمایش 6 ردیف اول
head(heart_data, 6)
# 8 - نمایش 2 ردیف آخر
tail(heart_data, 2)
# 9 - قرار دادن ردیف‌های مشخص و ستون‌های جنسیت و سن در یک متغیر
subset_data <- heart_data[c(50:61, 215, 218, 240), c("sex", "Age")]
# 10 - نمایش فراوانی جنسیت
table(heart_data$sex)
