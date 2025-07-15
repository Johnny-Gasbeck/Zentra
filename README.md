# Zentra Electronics Analysis (Work In Progress)
<p align="center">
  <img src="https://github.com/user-attachments/assets/b92f025a-c922-4cf1-813e-b66b14fc8287" alt="Zentra Logo 2" width="1062.5" height="250">
</p>

## Project Background

Zentra Electronics, founded in 2018, is a global e-commerce company specializing in consumer electronics. It operates through both its website and mobile app, leveraging marketing channels such as email campaigns, SEO, and affiliate partnerships to reach a wide customer base. In recent years, top-selling products have included devices from Apple, Samsung, and ThinkPad.

This analysis focuses on data from 2019 to 2022 — a critical inflection point for technology retailers due to dramatic shifts in consumer behavior, supply chain disruptions, and the rise of remote work. The project aims to generate insights for key departments — including finance, sales, product, and marketing — to better understand Zentra’s performance, identify growth opportunities, and support strategic decision-making. Ultimately, the goal is to enhance operational efficiency and improve Zentra’s ability to deliver high-quality products to customers worldwide.

<details>
<summary>Key Stakeholder Questions</summary>

<br> 

1. What were the overall sales trends from 2019 to 2022?
2. What were the company's monthly and yearly growth rates?
3. How is the new loyalty program performing? Should we keep using it? 
4. What were the company's refund rate and average order value?

</details>

<details>
<summary>Data Structure & ERD</summary>

<br>

Zentra’s database structure consists of four tables: orders, geo_lookup, customers, and order_status, with a row count of 108,127 records. 

![Zentra_ERD_Diagram](https://github.com/user-attachments/assets/6403cb76-4e75-45d6-907b-a645d0343c4e)

</details>

<details>
<summary>Table of Contents</summary>

<br>

- [Executive Summary](#executive-summary)
- [Deep-Dive Insights](#deep-dive-insights)
  - [Historical Trends](#historical-trends)
  - [Seasonal Trends](#seasonal-trends)
  - [Product Trends](#product-trends)
  - [Geographical Trends](#geographical-trends)
  - [Loyalty Program](#loyalty-program)
  - [Refund Trends](#refund-trends)
- [Recommendations](#recommendations)
- [Appendix](#appendix)

</details>

# Executive Summary
<img width="1199" height="799" alt="Executive Summary" src="https://github.com/user-attachments/assets/a8d5abe8-1c89-456f-9c84-46e1125e2555" />


- Peak sales occurred in **December 2020**, with monthly revenue reaching **$1.3M** during the pandemic-driven e-commerce boom. Sales declined significantly after 2020, with revenue dropping **46%** and AOV falling **10% from 2021 to 2022**, signaling a shift in consumer behavior and product engagement. Teams should investigate these trends and work cross-functionally to boost AOV (which only grew **1.9% annually vs. 22.3% in orders**) through pricing strategies, bundling, and product mix optimization.

- Campaigns should launch earlier in Q4 and back-to-school periods (**Aug–Nov**) to capitalize on seasonal trends, while slow months like **February (historically under $480K)** can be used for promotions, process improvements, or piloting new initiatives.

- Top products like **Apple AirPods** and a **Gaming Monitor** account for a combined **$1.4M+ in revenue**, yet high-AOV items like the iPhone contribute just **0.8% of total revenue**. Marketing should prioritize high-return products, increase visibility for underperformers, and reduce investment in consistently low performers like Bose SoundSport. Additionally, **Japan — with the highest AOV among top revenue-generating countries** — presents a key growth opportunity if order count can be increased.

- The loyalty program underperformed compared to non-loyalty members, accounting for just **39% of revenue** and showing a lower yearly AOV across the full period. However, performance improved in **2021 and 2022**, followed by a dip in late 2022, emphasizing the need for tighter performance tracking.

- Refund amounts on the **MacBook Air** alone totaled **$719K with an 11.4% refund rate**, eroding margins despite strong sales. Investigating refund causes, recovering missing refund data (**Aug 2021–2022**), and modeling long-term impact will help optimize product offerings and reduce costly returns.

# Deep-Dive Insights

## Historical Trends
<img width="1199" height="799" alt="Monthly Trends" src="https://github.com/user-attachments/assets/9223fe31-d818-40b7-88c6-a33166bb0c67" />

### Monthly Sales Trends

- Average monthly revenue was **$586K** with a month-over-month (MoM) growth rate of **1.4%**, average monthly orders were **2,000** (1.1% growth rate), and AOV averaged **$253** (0.3% growth rate). This slower AOV growth may indicate a shift toward lower-priced items during this time period or heavier reliance on discounting to drive volume, which helped boost order count but diluted the average value per transaction.

- Sales revenue **peaked in December 2020**, then steadily declined — likely driven by a surge in holiday spending and increased e-commerce activity during the pandemic.

### Yearly Sales Trends

- Average yearly revenue was **$7M**, growing at a year-over-year (YoY) rate of 35.6%, yearly orders averaged **27,000** with a growth rate of 22.3%, and AOV averaged **$255** with a growth rate of 1.9%.

- 2020 marked the **peak year**, with **$10M in sales** and a **$300 AOV**, up from $3.9M in sales and a $230 AOV in 2019 — highlighting strong pandemic-driven demand and a shift toward higher-value purchases during lockdowns.

- 2021 had the **most orders**, with a growth rate of 6% from 2020, indicating more purchases but at lower order values. In 2022, sales dropped to **$5M** and AOV returned to **$230**, a 46% decrease in revenue and 10% decrease in AOV from 2021.

- The subsequent increase in order count, but decline in AOV in 2021 and 2022 suggests a return to lower-priced, everyday items and potential **consumer price sensitivity** post-pandemic, leading to diluted transaction value despite sustained purchasing activity.


## Seasonal Trends
![Seasonal Trends](https://github.com/user-attachments/assets/0e9a3ed8-adad-46d3-99a3-60fae605e2e1)

- **Top performing months:** **December**, **September**, and **January** generated the highest revenue and order counts. These peaks likely reflect increased consumer spending during the holiday season and back-to-school periods.

- **Lowest performing months:** **February**, **October**, and **June** had the lowest revenue and order counts, possibly due to a post-holiday dip and reduced spending following the back-to-school season.

- **Holiday surge effect:** November showed a seasonal lift with an **18% revenue increase** and **24% order increase** compared to the previous month. December followed with a **23% revenue increase** and **21% rise in orders**, likely driven by holiday gift purchases and year-end promotions.


## Product Trends
<img width="1199" height="799" alt="Product Trends" src="https://github.com/user-attachments/assets/dd0fa608-b0ca-4dd3-a6fa-9acd8be689d5" />

- **Top grossing products:** The 27-inch 4K Gaming Monitor, Apple AirPods, MacBook Air, and Thinkpad Laptop accounted for **35%**, **28%**, **22%**, and **11%** of total sales, respectively. These four products likely drove the most revenue, especially in 2020, because of a spike in demand for remote work and distance learning tools.

- **Greatest order count:** Apple AirPods led with **48,000 orders**, followed by the Gaming Monitor (**23,000 orders**) and Samsung Charging Cable Pack (**21,000 orders**) — making up 84% of all orders. This trend likely reflects heightened consumer demand for affordable, high-utility tech accessories during the pandemic, as people adapted to remote work, online learning, and increased device usage at home.

- Apple iPhone (**$741 AOV**) had the **third-highest AOV**, but contributed just **0.8% of revenue**, signaling strong per-transaction potential that has yet to be fully tapped.

- **Lowest performing product:** Bose SoundSport generated **less than 0.1% of revenue**, with only **$3,000 in sales** and **27 total orders**, highlighting minimal traction with consumers.


## Geographical Trends
<img width="1547" height="815" alt="Geographic Trends" src="https://github.com/user-attachments/assets/014bf358-42f7-4e1c-b131-bbe9d8fdb4b3" />

- North America accounts for **52% of total sales**, with a peak of **$5.3M in 2020**, representing a 155% increase from 2019 — highlighting the region's critical role during the pandemic-driven e-commerce boom.

- **Top grossing country:** The United States is the leading market, generating **47.3% of total sales revenue** — over six times that of the United Kingdom, which ranks second.

- **Top 5 countries by revenue:** The United States, United Kingdom, Canada, Japan, and Denmark together account for **66.1% of total sales**.

- **High AOV opportunity in Japan:** Among the top 5 countries by revenue, Japan has the greatest AOV at **$393**, but the lowest order count — signaling a high-value, underpenetrated market.


## Loyalty Program 
![Loyalty Trends](https://github.com/user-attachments/assets/5de94b53-8f0c-4566-a967-d2cc25df79c6)

- **Non-loyalty members outperformed loyalty members overall**, generating **$17M in revenue** with an **AOV of $263**, compared to **$11M in revenue** and an **AOV of $225** for loyalty members

### Historical Trends

- In **2019 and 2020**, **non-loyalty members led** in **total sales, AOV, and order count**

- In **2021**, a **trend reversal** occurred: **loyalty members surpassed non-loyalty members in both sales and order count**

- In **2022**, **loyalty members also overtook non-loyalty members in AOV**, continuing the **positive momentum** — though **non-loyalty members regained the lead in both revenue and AOV in the final months of 2022**


## Refund Trends
![Refund Trends 2 47 08 PM](https://github.com/user-attachments/assets/4f74347f-dc43-4e7f-8c35-268d0db91f2f)

- The **overall refund rate across all products was 5%** with a **total of $1.4M** in refund amounts. **Apple products accounted for 83%** of the total refund amount

- **Products with Highest Refund Rates:** ThinkPad: **11.7%**, MacBook Air: **11.4%**, Apple iPhone: **7.6%**, Gaming Monitor: **6.2%**

- **Products with Highest Total Refund Amounts:** MacBook Air: **$719K**, Gaming Monitor: **$607K**, Apple AirPods: **$421K**, ThinkPad: **$376K**

- **Apple AirPods accounted for 49% of all refund transactions**, while the **MacBook Air had the second highest refund rate** and the **highest total refund value**, resulting in a **significant revenue loss**

- **Refund rates peaked in 2020 at 9.2%**, followed by a **sharp decline in 2021**, and **no recorded refunds in 2022**. **Caveat:** No refunds were recorded from **August 2021 to December 2022**, indicating a **potential data gap**


# Recommendations

### Recommendations To Marketing Team

- **Launch Q4 and Back-to-School Campaigns Earlier**: December, January, and September consistently showed the **highest revenue and order count**. Launching campaigns earlier in these months can extend the peak momentum months and capture early spenders ahead of competitors. 
- **Maintain Engagement in Low Performing Months (Feb, June)**: February and June averaged **less than $2M in revenue** and **under 7.3K orders** compared to the average of $2.3M and 9K orders. Deploying clearance sales, training campaigns, or pilots in these months can reduce revenue troughs and keep customers engaged.

- **Boost Promotion for High-AOV Underperformers (e.g., Apple iPhone)**: Despite a **high AOV of $741**, the Apple iPhone made up just **0.8% of total revenue**. With tailored email campaigns or time-sensitive bundles, this product could generate stronger ROI and leverage its premium pricing.

- **Capitalize on Japan's High AOV ($393)**: Japan has the **highest AOV** among the top 5 revenue-generating countries, yet contributes just **2% of orders**. Regionalized campaigns and localized messaging could convert this high-margin market into a more consistent revenue driver.

- **Improve Loyalty Program Engagement**: **Loyalty order count and sales fell by 43% and 44%**, respectively, in 2022, with loyalty sales dipping **below non-loyalty sales in September**. Promoting exclusive perks, early access to bestsellers, and personalized discounts may boost adoption and re-engage loyalty customers.

### Recommendations To Product Team

- **Prioritize High-Revenue, High-Growth Products (e.g., Gaming Monitor, AirPods)**: **Gaming Monitors alone drove $9.9M in revenue** with a **strong AOV of $421** and a **moderate refund rate of 6%**, indicating low risk and strong ROI. Similarly, Apple AirPods performed well and are ideal for targeted promotion.
  
- **Deprioritize Bose SoundSport**: The Bose SoundSport drove only **$3K in revenue**. This product should be deprioritized or reassessed for repositioning. Resources may be better allocated to higher-performing items.

- **Address High Refund Rates (e.g., MacBook Air)**: The MacBook Air had a **refund rate of 11.4%**, resulting in **$719K in lost revenue**. High return rates may indicate product misalignment or fulfillment issues that warrant investigation and intervention.
  
- **Model Refund Impact on Long-Term Revenue**: Refund-prone products such as the MacBook Air affect not just immediate sales but long-term value through reduced retention. Modeling this impact can inform pricing, bundling, and discontinuation decisions.
  
- **Recover Missing Refund Data (Aug 2021–2022)**: The **absence of refund data for 12+ months** limits visibility into product performance and impacts refund trend modeling, inventory planning, and loss prevention. Collaboration with the data team is needed to investigate and fill this gap.

### Recommendations to Sales Team

- **Analyze Revenue & AOV Decline Post-2020**: Revenue fell from **$10M in 2020 to $5M in 2022**, and AOV declined from **$300 to $230**. This suggests shifting consumer behavior or market saturation. Deeper sales funnel analysis could identify areas for revitalization.
  
- **Pursue High-AOV Opportunity in Japan ($393 AOV)**: Collaborating with Marketing could turn Japan into a high-margin growth region by using localized ads, translated content, and regional partnerships to boost order count.

- **Protect Core Markets**: **US, GB, CA, JP, DE generate over 66% of total revenue**. Sustaining this share requires consistent stock availability, targeted promotions, and a frictionless customer experience.

### Recommendations Across Teams

- **Promote Value-Oriented Growth (AOV Focus)**: While **order volume grew 22.3% YoY**, AOV rose only **1.9%**. Cross-functional strategies like upselling, tiered pricing, and product personalization can help rebalance growth quality.

- **Diversify Market Exposure Beyond U.S. (47% of Sales)**: Australia, while contributing many orders, has an **AOV of $204**. Bundling accessories or offering upsells at checkout could increase value per transaction and reduce overreliance on the U.S. market.

- **Evaluate Loyalty Program ROI**: The data does not provide enough evidence to make a conclusive decision about keeping the loyalty program. The **reversal in 2021–2022 suggests growing engagement**, but the **late 2022 trend reversal** highlights the need for ongoing performance monitoring using real-time tracking and segmented reporting. Cross-functional teams should assess **CAC and retention rates** between loyalty and non-loyalty users to clarify the program's financial value.



## Appendix
- Targeted SQL queries to answer additional stakeholder business questions can be found [here](SQL/Zentra_analysis.sql)
- Excel Worksheet for Analysis can be found [here]( https://docs.google.com/spreadsheets/d/1oUWcUQlAubkgnlYSnAVJSMDaP9Kip4g0/edit?usp=drive_link&ouid=108471887536222639083&rtpof=true&sd=true)
- Additional information on the dataset, issues with the dataset, and caveats for this analysis can be found [here](Zentra%20Dataset%20Summary,%20Issues,%20&%20Caveats.pdf)

