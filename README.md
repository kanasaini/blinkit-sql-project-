#Blinkit Grocery Sales Analysis Using Mysql


This is my first SQL project, where I looked at grocery sales data from Blinkit to understand what's actually happening in the business — what people are buying, which stores are doing well, and where things could improve.

Why I did this analysis
Imagine you run a grocery delivery business. You have thousands of products, many different types of stores, and locations all over the country. How do you know which products to focus on? Which stores need attention? Which cities have room to grow? Without looking at the actual sales numbers, you're just guessing. So I went through the data to find real answers to these questions.

KPIs (Key Numbers From This Analysis)
Total money earned: ₹9,97,159
Average money earned per item: ₹141
Average customer rating: 4.0 out of 5
Total items sold: 7,060
Share of revenue from Low Fat products: 65%
Share of revenue from just 2 categories (Fruits & Vegetables, Snack Foods): about 30%
Share of revenue from one store type (Supermarket Type1): about 79%
Share of revenue from Tier 2 cities: about 39%

Insights (What These Numbers Actually Mean)
Customers prefer Low Fat products. They bring in 65% of total revenue and are also rated slightly higher than Regular products (4.0 vs 3.9). This shows a clear preference, not just random buying.
A small number of categories are doing most of the work. Fruits & Vegetables and Snack Foods alone make up almost 30% of total sales, meaning revenue isn't spread evenly and a few product types matter more than the rest.
The business depends heavily on one store type. Supermarket Type1 brings in almost 80% of all revenue. That's good for now, but risky, since there's no strong backup if that store type ever underperforms.
Bigger stores aren't necessarily better. I expected "High" size stores to sell the most since they have more space, but they actually earned the least (25%), while Medium and Small stores each earned more (around 37%). This means store size alone doesn't guarantee more sales — something else, like staffing or customer footfall, is affecting performance.
Tier 2 cities are outperforming Tier 1. I expected bigger cities (Tier 1) to lead in sales, but Tier 2 cities actually performed the best, bringing in about 39% of total revenue. This suggests untapped potential in mid-sized cities.
Sales are steady year to year, except for one unusual dip. Revenue stayed fairly consistent (~₹1.3 lakh per year) no matter when a store was opened, except for 2011, where sales dropped almost 40% compared to every other year — a clear anomaly worth investigating.

Recommendations (What I Would Suggest Doing Next)

Stock more Low Fat products and promote them more, since customers clearly prefer them.
Focus marketing and inventory on the top-performing categories instead of spreading resources evenly across all products.
Study what makes Supermarket Type1 successful and try applying those same ideas to other store types, to reduce dependency on just one format.
Investigate why bigger stores are underperforming — it could be a staffing, product placement, or customer traffic issue.
Consider expanding more into Tier 2 cities, since they're already outperforming expectations.
Look closely at the 2011 sales dip to check whether it's a data entry mistake or a real business problem from that time.

Tools I used
MySQL / MySQL Workbench — I used this to clean the data, run calculations, and group information together to compare performance across products, store types, and locations.
About the dataset
The dataset has 7,060 rows of grocery sales data, showing details like product sales, customer ratings, store type, store size, location type, and the year each store was opened.
