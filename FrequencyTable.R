# تنظیم مسیر دایرکتوری
setwd("Data Frame")
# ایجاد دیتاست فرضی فروش محصولات با اطلاعات کامل
set.seed(123)  # برای تکرارپذیری نتایج

sales_data <- data.frame(
  Transaction_ID = 1:100,
  Product_Type = sample(c("لپ‌تاپ", "موبایل", "تبلت", "هدفون", "ساعت هوشمند"), 
                        100, replace = TRUE, 
                        prob = c(0.25, 0.30, 0.15, 0.20, 0.10)),
  Count = sample(1:5, 100, replace = TRUE),
  Amount = round(runif(100, min = 500000, max = 50000000), 0),
  Customer = paste0("مشتری_", sample(1:50, 100, replace = TRUE)),
  Date = sample(seq(as.Date('2024/01/01'), as.Date('2024/12/31'), by="day"), 100, replace = TRUE),
  Region = sample(c("تهران", "اصفهان", "شیراز", "مشهد", "تبریز"), 100, replace = TRUE),
  stringsAsFactors = FALSE
)
print("نمونه‌ای از دیتاست فروش:")
print(head(sales_data, 10))
# ذخیره دیتاست اولیه
write.csv(sales_data, "sales_raw_data.csv", row.names = FALSE, fileEncoding = "UTF-8")
cat("\nدیتاست اولیه در فایل 'sales_raw_data.csv' ذخیره شد.\n\n")
# محاسبه جدول فراوانی بر اساس نوع محصول
freq_table <- as.data.frame(table(sales_data$Product_Type))
colnames(freq_table) <- c("نوع محصول", "تعداد فروش")
# بررسی: آیا freq_table ساخته شد؟
print("بررسی freq_table:")
print(freq_table)
rm(list = ls())
setwd("C:/Users/Amir/OneDrive/Desktop/homeworks-projects/R/فایل جلسات/جلسه 2/Data Frame")
set.seed(123)
sales_data <- data.frame(
  Transaction_ID = 1:100,
  Product_Type = sample(c("لپ‌تاپ", "موبایل", "تبلت", "هدفون", "ساعت هوشمند"), 
                        100, replace = TRUE, 
                        prob = c(0.25, 0.30, 0.15, 0.20, 0.10)),
  Count = sample(1:5, 100, replace = TRUE),
  Amount = round(runif(100, min = 500000, max = 50000000), 0),
  Customer = paste0("مشتری_", sample(1:50, 100, replace = TRUE)),
  Date = sample(seq(as.Date('2024/01/01'), as.Date('2024/12/31'), by="day"), 100, replace = TRUE),
  Region = sample(c("تهران", "اصفهان", "شیراز", "مشهد", "تبریز"), 100, replace = TRUE),
  stringsAsFactors = FALSE
)
# بررسی: آیا sales_data ساخته شد؟
print("بررسی sales_data:")
print(str(sales_data))
print(head(sales_data))
# مرحله 3: ساخت جدول فراوانی
freq_table <- as.data.frame(table(sales_data$Product_Type))
colnames(freq_table) <- c("نوع محصول", "تعداد فروش")
# بررسی: آیا freq_table ساخته شد؟
print("بررسی freq_table:")
print(freq_table)
# مرحله 4: ادامه محاسبات
freq_table <- freq_table[order(-freq_table$`تعداد فروش`), ]
freq_table$`درصد فروش` <- round((freq_table$`تعداد فروش` / sum(freq_table$`تعداد فروش`)) * 100, 2)
freq_table$`فراوانی تجمعی` <- cumsum(freq_table$`تعداد فروش`)
freq_table$`درصد تجمعی` <- round(cumsum(freq_table$`درصد فروش`), 2)
# نمایش نتیجه نهایی
print("جدول فراوانی نهایی:")
print(freq_table)
# ذخیره فایل‌ها
write.csv(sales_data, "sales_raw_data.csv", row.names = FALSE, fileEncoding = "UTF-8")
write.csv(freq_table, "frequency_table_sales.csv", row.names = FALSE, fileEncoding = "UTF-8")

cat("\nفایل‌ها با موفقیت ذخیره شدند.\n")
