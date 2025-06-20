# Elist-Electronics-Analysis (Work In Progress)

## Project Background

Elist, founded in 2018, is a global e-commerce company specializing in popular electronics. It operates through both its website and mobile app, leveraging marketing channels such as email campaigns, SEO, and affiliate partnerships to reach customers. In recent years, top-selling products have included devices from Apple, Samsung, and ThinkPad.

This data analysis was conducted to generate insights for key departments — including finance, sales, product, and marketing. The goal was to help stakeholders better understand Elist’s performance and support improvements in day-to-day operations, ultimately enhancing the company’s ability to deliver high-quality products to customers worldwide.

## Key Stakeholder Questions

1. What were the overall sales trends from 2019 to 2022?
2. What were the company’s monthly and yearly growth rates?
3. How is the new loyalty program performing? Should we keep using it? 
4. What were the company’s refund rate and average order value? 


# Data Structure & Quality Checks

Elist’s database structure consists of four tables: orders, geo_lookup, customers, and order_status, with a total row count of 108,127 records. 

![Alt text](images/Elist_ERD_Diagram.png)

# Executive Summary
![Executive Summary](https://github.com/user-attachments/assets/4953b796-bdd3-4a1a-9aeb-2c98248875b5)

• Peak sales occurred in December 2020, with monthly revenue reaching $ 1.3M during the pandemic-driven e-commerce boom. Sales declined significantly after 2020, with revenue dropping 46% and AOV falling 10% from 2021 to 2022, signaling a shift in consumer behavior and product engagement. Teams should investigate these trends and work cross-functionally to boost AOV (which only grew 1.9% annually vs. 22.3% in orders) through pricing strategies, bundling, and product mix optimization.

•Campaigns should launch earlier in Q4 and back-to-school periods (Aug–Nov) to capitalize on seasonality trends, while slow months like February (historically under $400K) can be used for promotions, process improvements, or piloting new initiatives.

• Top products like Apple AirPods and a 27" 4K Gaming Monitor account for a combined $1.4M+ in revenue, yet high-AOV items like the iPhone contribute just 0.8% of total revenue. Marketing should prioritize high-return SKUs, increase visibility for underperformers, and reduce investment in consistently low performers like Bose SoundSport. Meanwhile, Japan—with the highest AOV among regions—presents a key growth opportunity if order volume can be increased.

• Loyalty program underperformed in comparison to non-loyalty members as it only accounted for 39% of revenue and had a smaller yearly AOV over the full period. However, loyalty program performance improved in 2021 and 2022, with signs of re-engagement followed by a late-year dip, emphasizing the need for tighter performance tracking. Loyalty revenue dropped 44% from 2021 to 2022, suggesting a need to re-engage inactive members, evaluate ROI, and promote loyalty incentives at checkout to boost participation and retention.

• Refunds on the MacBook Air alone total $719K with an 11.4% refund rate, eroding margins despite strong sales. Investigating causes, recovering missing refund data from Aug 2021–2022, and modeling long-term impact will help optimize product offerings and reduce costly returns.
# Deep-Dive Insights

## Historical Trends
![Monthly Trends](https://github.com/user-attachments/assets/add201ba-da8e-4709-8ac0-b2a7e69632b3)

### Yearly Sales Trends

• Average yearly revenue was $7M, growing at an average rate of 35.6%, yearly orders averaged 27,000 with a growth rate of 22.3%, and AOV averaged $255 with a growth rate of 1.9%.

• 2020 marked the peak year, with $10M in sales and a $300 AOV, up from 3.9M in sales and a $230 AOV in 2019 — highlighting strong pandemic-driven demand.

• 2021 had the highest order count with a growth rate of 6% from 2020, indicating more purchases but at lower order values.

• In 2022 sales dropped to $5M and AOV returned to $230, a 46% decrease in revenue and 10% decrease in AOV from 2021.

### Monthly Sales Trends

• Average monthly revenue was $586K with a monthly growth rate of 1.4%, average monthly orders were 2,000 (1.1% growth rate), and AOV averaged $253 (0.3% growth rate).

• Sales revenue and order volume peaked in December 2020, then steadily declined—likely driven by a surge in holiday spending and increased e-commerce activity during the pandemic.

• AOV peaked at $322 in October 2020, before declining consistently, reflecting shifts in product mix or reduced high-value purchases post-2020.

## Seasonal Trends

• Top Performing Months: December, September, and January consistently generate the highest revenue and order volume. These peaks likely reflect increased consumer spending during the holiday season and back-to-school periods

• Lowest Performing Months: February, October, and June tend to have the lowest revenue and order counts, possibly due to a post-holiday dip and reduced spending following the back-to-school season

• Holiday Surge Effect: November shows a strong seasonal lift, with an average revenue increase of 18% and an average order increase of 24% compared to the previous month. December follows with an average monthly revenue increase of 23% and a 21% rise in orders, likely driven by holiday gift purchases and year-end promotions

## Product Trends
![Product Trends (1)](https://github.com/user-attachments/assets/16d1ac99-66e1-4bb9-98b4-29ec86d75bde)

• Top Grossing Products: The 27-inch 4K Gaming Monitor, Apple AirPods, and MacBook Air are the highest revenue-generating products, accounting for 35%, 27.5%, and 22.4% of total sales, respectively

• Products with Highest Average Order Value (AOV): The MacBook Air ($1,588), ThinkPad ($1,100), and Apple iPhone ($741) have the highest AOVs, indicating strong revenue potential per transaction

• Greatest Order Volume: Apple AirPods lead with 48,000 orders, followed by the 27-inch 4K Gaming Monitor (23,000 orders) and Samsung Charging Cable Pack (21,000 orders), highlighting consistent customer demand

• Lowest Performing Product: The Bose SoundSport significantly underperformed, generating less than 0.1% of total revenue, with just $3,000 in sales and 27 orders overall

## Geographical Trends
![Geographic Trends](https://github.com/user-attachments/assets/32e6b748-d0f0-4040-aa78-6c43839a876b)

• Top Grossing Country: The United States is the leading market, generating 47.3% of total sales revenue — over six times that of the United Kingdom, which ranks second

• Top 5 Countries by Revenue: The United States, United Kingdom, Canada, Japan, and Denmark are the top five revenue-generating countries, together accounting for 66.1% of total sales

• Top 5 Countries by Order Volume: The United States, United Kingdom, Canada, Australia, and Denmark make up the top five countries by number of orders, contributing a combined 66.9% of total order volume

• High AOV Opportunity in Japan: Among the top 5 countries by revenue, Japan has the highest average order value (AOV) at $393, but the lowest order volume

# Loyalty Program 

• Non-loyalty members have outperformed loyalty members in total revenue and AOV over the full period as non-loyalty members generated $17M in revenue with an AOV of $263, while loyalty members generated $11M in revenue with an AOV of $225

• Non-loyalty members had a higher average monthly revenue of $357K, compared to $229K for loyalty members

### Yearly Trends

• In 2019 and 2020, non-loyalty members led in total sales, AOV, and order volume

• In 2021, a trend reversal occurred: loyalty members surpassed non-loyalty members in both sales and order count

• In 2022, loyalty members also overtook non-loyalty members in AOV, continuing the positive trend

### Recent Monthly Reversal (Late 2022)

• In the final months of 2022, non-loyalty members again outperformed loyalty members in both revenue and AOV

# Refund Rates
### Refund Trends Across All Products

• The overall refund rate across all products was 5% with a total of 1.4M in refund amounts 

• Products with Highest Refund Rates: ThinkPad: 11.7%, MacBook Air: 11.4%, Apple iPhone: 7.6%, 27-in 4K Gaming Monitor: 6.2%

• Products with Highest Total Refund Amounts: MacBook Air: $719K, 27-in 4K Gaming Monitor: $607K, Apple AirPods: $421K, ThinkPad: $376K

• Refund rates peaked in 2020 at 9.2%, followed by a sharp decline in 2021, and no recorded refunds in 2022

• Caveat: No refunds were recorded from August 2021 onward, indicating a potential data gap
 
### Refund Trends Across Apple Products

• The overall refund rate for Apple products was 5.9% and accounted for 82.8% of the total refund amount across all products

• Refund Rates by Product: MacBook Air: 11.43%, Apple iPhone: 7.64%, Apple AirPods: 5.45%

• Total Refund Amounts: MacBook Air: $719K, Apple AirPods: $421K, Apple iPhone: $16K

• Although Apple AirPods accounted for 85% of all Apple refund orders, the MacBook Air had both the highest refund rate (11.4%) and the highest total refund value, resulting in a significant revenue loss

# Recommendations
### Recommendations Based on Historical Trends

• Investigate the post-2020 decline in revenue and AOV by analyzing external market shifts, product changes, and customer behavior

• Align cross-functional teams (marketing, product, operations) to emphasize growth not just in volume, but also in value (AOV yearly growth rate only 1.9% vs. yearly growth rate of 22.3% in orders)
Seasonal Trends

### Recommendations Based on Seasonal Trends

• Launch campaigns earlier in Q4 and before back-to-school season to capture peak spending (especially in Oct–Dec and Aug–Sept)

• Allocate inventory and staff ahead of demand surges, especially for bestsellers like Apple products and monitors in Nov–Jan.

• Maintain engagement in low-volume months (e.g., Feb, June) with clearance sales, staff training, or pilot initiatives

### Recommendations Based on Product Trends

• Prioritize promotion of high-revenue, high-potential products like Apple AirPods and the 27" Gaming Monitor

• Investigate and possibly deprioritize Bose SoundSport, reallocating budget to higher performers

• Boost promotion for high-AOV underperformers like the Apple iPhone: Despite its strong average order value, the iPhone contributes just 0.8% of revenue. Consider targeted marketing (email campaigns, featured product placements, or limited-time bundles) to increase visibility and drive conversions

### Recommendations Based on Geographical Trends

• Focus on Japan as a high-AOV growth opportunity, using localized ads, translated content, and regional partnerships to boost volume

• Protect core markets (U.S., U.K., Canada) by ensuring stock availability and customer experience are optimized during high-demand periods

• Diversify market exposure beyond the U.S. (which accounts for ~47% of sales) by scaling efforts to increase AOV in countries like Australia, which have strong order volume, by bundling accessories or offering add-ons at checkout

### Recommendations for Loyalty Program 

##### Monitoring the Loyalty Program

• The data does not provide enough evidence to make a conclusive decision about keeping the loyalty program. The reversal in 2021-2022 suggests growing engagement, but the late 2022 trend reversal highlights the need for ongoing performance monitoring. 

• Evalute ROI of the loyalty program: Compare customer acquisition cost (CAC) and retention rate for loyalty vs. non loyalty members to help determine the financial viability of keeping or scaling this program

##### Ways to Improve Loyalty Program 

• Launch a re-engagement campaign for inactive loyalty members: Identify members who haven’t purchased recently and encourage them to return with time-limited offers or bonus rewards

• Promote membership at checkout and align program incentives with bestsellers to maximize adoption and repeat purchase behavior.

### Recommendations Based on Refund Rates

• Investigate high-refund products, especially the MacBook Air (11.4% refund rate, $719K in losses), to address quality or expectation gaps

• Recover missing refund data (Aug 2021–2022) to ensure accurate performance monitoring and inventory planning

• Quantify revenue loss due to refunds by modeling the long-term revenue impact of refund-prone products and using these insights to inform pricing, bundling, or discontinuation decisions




