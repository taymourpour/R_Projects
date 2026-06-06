 R Projects and Scripts for Data Analysis, Statistics, and Business Analytics

This repository contains a collection of R scripts developed to solve practical data analysis, statistical inference, probability, data manipulation, and visualization tasks in a clear and reproducible way. The projects are written for use in **RStudio** and can also be adapted for **Google Colab with R runtime**.

The scripts in this repository cover core operations such as importing datasets, exploring data frames, descriptive statistics, frequency analysis, hypothesis testing, probability distributions, dataset binding and merging, grouped summaries, feature creation, and histogram visualization.

Repository Purpose

The purpose of this repository is to provide well-structured R solutions for a set of academic and business-oriented data analysis exercises. Each script demonstrates how to approach a specific problem using base R and standard data analysis workflows.

These projects are especially useful for:

- students learning R programming,
- beginners practicing data analysis,
- business analytics learners,
- anyone looking for simple and practical examples of statistical computing in R.

Topics Covered

This repository includes solutions for the following tasks:

1. Heart Data Exploration and Manipulation
Using the **Heart data** dataset, the scripts perform the following:

- load the dataset and assign it to a variable,
- display the structure of the data frame,
- generate a descriptive statistical summary,
- rename the first column,
- convert the values in the second column to uppercase,
- calculate the mean of the **Age** column,
- display the first 6 rows,
- display the last 2 rows,
- extract rows **50 to 61**, as well as rows **215, 218, and 240**, for the **Gender** and **Age** columns and store them in a separate variable,
- display the frequency table of gender.


2. Frequency Table for Product Sales Analysis
A sample sales dataset is created containing the sales counts of different products. The script then:

- builds a frequency table for product sales,
- calculates relative frequency,
- computes cumulative frequency,
- computes cumulative percentage.

This analysis can be used to evaluate product demand and compare product performance.

3. Hypothesis Testing for Mean Sales Comparison
This project tests whether the average monthly sales of a product are **less than 500 units** based on historical sales data.

The script includes:

- defining null and alternative hypotheses,
- preparing sample monthly sales data,
- conducting a **one-sample t-test**,
- interpreting the p-value and test result.

This provides a simple and practical example of inferential statistics in business analysis.

4. Binomial Distribution Analysis in Marketing
In this task, a marketing campaign assumes that the probability of a successful customer contact is:

- p = 0.3
- number of trials: **15 contacts**

The script calculates:

- the probability of exactly 5 successful contacts,
- the probability of more than 7 successful contacts.

This project demonstrates how to use the **binomial distribution** in R for marketing performance analysis.

5. Normal Distribution Analysis for Seasonal Demand
Assuming product demand follows a normal distribution with:

- mean = **100**
- standard deviation = **20**

the script calculates the probability that demand falls between **90 and 110**.

This example shows how to use the **normal distribution** in R for demand forecasting and uncertainty analysis.

6. Row Binding Sales Data
Two datasets are created:

- online sales data,
- in-store sales data.

These datasets are combined using **`rbind()`**, and the final merged sales table is reviewed. This task demonstrates how to append datasets with matching columns.

7. Merging Customer Information and Purchase Data
Two datasets are created:

- customer personal information,
- customer purchase records.

The datasets are merged using the shared key:

- `Customer_ID`

This project demonstrates relational data merging in R using `merge()`.

8. Merging Datasets with Different Key Names
Two hypothetical datasets are created:

- advertising information,
- sales information.

The key columns have different names, such as:

- `Ad_Code`
- `Sale_Code`

The script uses `merge()` with custom key mapping to combine the datasets. This task is useful for understanding how to merge tables when identifier names do not match directly.

9. Aggregating Sales Data by Region
This task analyzes regional sales performance by calculating:

- average sales,
- maximum sales,
- minimum sales

for each region.

This grouped analysis helps identify high-performing and low-performing regions and supports better business decision-making.

10. Product Categorization Based on Price
A dataset containing product prices is created, and products are classified into three categories:

- **Low-cost**
- **Medium-priced**
- **Expensive**

The category is added as a new column. This task demonstrates feature engineering and categorical grouping based on numeric thresholds.

11. Histogram of Weight from Packed_Data
Using the **`Weight`** column from the **Packed_Data** dataset, the script draws a histogram with:

- 8 breaks

The project also explains how changing the number of breaks affects the visual representation of the distribution:

- fewer breaks produce a simpler and smoother view,
- more breaks reveal more detail but may make the plot noisier,
- the choice of breaks can influence how patterns, skewness, and spread are interpreted.


Tools and Techniques Used

The scripts in this repository use common R functions and techniques such as:

- `read.csv()` / dataset assignment
- `str()`
- `summary()`
- `names()` / `colnames()`
- `toupper()`
- `mean()`
- `head()`
- `tail()`
- indexing and subsetting
- `table()`
- `prop.table()`
- `cumsum()`
- `t.test()`
- `dbinom()`
- `pbinom()`
- `pnorm()`
- `rbind()`
- `merge()`
- `aggregate()`
- `cut()`
- `hist()`

How to Run

In RStudio
1. Clone or download this repository.
2. Open the project or script files in RStudio.
3. Make sure the required datasets are available in the correct folder.
4. Run each script individually.

In Google Colab
You can run these scripts in Google Colab using R runtime:
1. Open a new Colab notebook.
2. Switch the notebook runtime to R.
3. Upload the script and any required datasets.
4. Run the code cells sequentially.

Learning Outcomes

By working through these scripts, you can learn how to:

- import and inspect datasets in R,
- manipulate data frames and columns,
- compute descriptive and frequency statistics,
- perform hypothesis testing,
- apply binomial and normal probability models,
- combine and merge datasets,
- summarize grouped data,
- create new categorical variables,
- visualize numeric data with histograms.

Intended Audience

This repository is suitable for:

- undergraduate and graduate students,
- data analysis beginners,
- business analytics learners,
- self-study R programmers,
- instructors looking for simple applied examples.

Author

This repository presents a set of practical R programming solutions for statistics, business analytics, and data manipulation exercises, with an emphasis on clarity, reproducibility, and beginner-friendly structure.
