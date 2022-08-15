# Case Study 1
## How Does a Bike-Share Navigate Speedy Success?
In this case study we are going to perform real world tasks of a junior data analyst at a fictional company called Cyclistic.
<br>In order to answer the key business questions, we are going to follow the steps of the data analysis process proposed by Google: <b>Ask, Prepare, Process, Analyze, Share and Act</b>.
<br>
<br>
### Scenario:
You are a junior data analyst working in the marketing analyst team at Cyclistic, a bike-share company in Chicago. The director
of marketing believes the company’s future success depends on maximizing the number of annual memberships. Therefore,
your team wants to understand how casual riders and annual members use Cyclistic bikes differently. From these insights,
your team will design a new marketing strategy to convert casual riders into annual members.

### Characters and Team:
* <b>Cyclistic:</b> A bike-share program that features <b>more than 5,800 bicycles and 600 docking stations</b>. Cyclistic sets itself
apart by also offering reclining bikes, hand tricycles, and cargo bikes, making bike-share more inclusive to people with
disabilities and riders who can’t use a standard two-wheeled bike. The majority of riders opt for traditional bikes; about
8% of riders use the assistive options. Cyclistic users are more likely to ride for leisure, but about 30% use them to
commute to work each day.
* <b>Lily Moreno:</b> The director of marketing and your manager. Moreno is responsible for the development of campaigns
and initiatives to promote the bike-share program. These may include email, social media, and other channels.
* <b>Cyclistic marketing analytics team:</b> A team of data analysts who are responsible for collecting, analyzing, and
reporting data that helps guide Cyclistic marketing strategy. You joined this team six months ago and have been busy
learning about Cyclistic’s mission and business goals as well as how you, as a junior data analyst, can help Cyclistic
achieve them.
* <b>Cyclistic executive team:</b> The notoriously detail-oriented executive team will decide whether to approve the
recommended marketing program

### About the company:
In 2016, Cyclistic launched a successful bike-share offering. Since then, the program has grown to a fleet of 5,824 bicycles that
are geotracked and locked into a network of 692 stations across Chicago. The bikes can be unlocked from one station and
returned to any other station in the system anytime.
<br>Until now, Cyclistic’s marketing strategy relied on building general awareness and appealing to broad consumer segments.
One approach that helped make these things possible was the flexibility of its pricing plans: single-ride passes, full-day passes,
and annual memberships. Customers who purchase single-ride or full-day passes are referred to as casual riders. Customers
who purchase annual memberships are Cyclistic members.
<br>Cyclistic’s finance analysts have concluded that annual members are much more profitable than casual riders. Although the
pricing flexibility helps Cyclistic attract more customers, Moreno believes that maximizing the number of annual members will
be key to future growth. Rather than creating a marketing campaign that targets all-new customers, Moreno believes there is a
very good chance to convert casual riders into members.
<br>Moreno has set a clear goal: Design marketing strategies aimed at converting casual riders into annual members. In order to
do that, however, the marketing analyst team needs to better understand how annual members and casual riders differ, why
casual riders would buy a membership, and how digital media could affect their marketing tactics. Moreno and her team are
interested in analyzing the Cyclistic historical bike trip data to identify trends.

### 1.ASK:
<br><br>Business Task: <b>Design marketing strategies aimed at converting casual riders into annual members.</b>
<br>Key Stakeholder are: <b>Lily Moreno</b>: The director of marketing and your manager, <b>Cyclistic marketing analytics</b> team and <b>Cyclistic executive team.</b>
<br>Moreno has assigned you the first question to answer: <b>How do annual members and casual riders use Cyclistic bikes
differently?</b>
<br>
<br>Guiding questions:
* What is the problem you are trying to solve?
<br>Understand How do annual members and casual riders use Cyclistic bikes differently?
* How can your insights drive business decisions?
<br>My insights would help to better understand the factors that make a customer an casual rider or a member. With this information, Cyclistic will produce a more effective and targeted marketing strategy in order to convert casual ussers into annual members.

### 2.PREPARE:
<br>Guiding questions:
* Where is your data located?
<br>The data has been made available by
Motivate International Inc under this <a href="https://ride.divvybikes.com/data-license-agreement">license</a>
* How is the data organized?
<br>The data consists of 12 csv files containing records from 1 year period (last 12 months)
* Are there issues with bias or credibility in this data? Does your data ROCCC?
<br>This data ROCCC. Is <b>R</b>eliable, <b>O</b>riginal, <b>C</b>omprehensive, <b>C</b>urrent, and <b>C</b>ited.</br>
* How are you addressing licensing, privacy, security, and accessibility?
<br>This is public data that you can use to explore how different customer types are
using Cyclistic bikes. But note that data-privacy issues prohibit you from using riders’ personally identifiable information. This
means that you won’t be able to connect pass purchases to credit card numbers to determine if casual riders live in the
Cyclistic service area or if they have purchased multiple single passes.
* How did you verify the data’s integrity?
<br>The integrity of the data was confirmed through an online investigation of the provider.
* How does it help you answer your question?
<br>This data helped me gain valuable insights into how Cyclistic customers behave.
* Are there any problems with the data?
<br>This data has some limitations on personal information. Data privacy issues prohibit you from using passengers' personally identifiable information

### 3.PROCESS:
Process data for analysis.
<br>Guiding questions:
* What tools are you choosing and why?
<br>For this case I would use Visual Studio for ETL processes, SQL Server Management Studio for quering and analyze data and Excel for a quick glimpse of data and summarize.
* Have you ensured your data’s integrity?
<br>Yes, data integrity was double checked.
* What steps have you taken to ensure that your data is clean?
<br>I checked for structural errors and typographical errors. Checked that the data types are appropriate for subsequent calculations. Remove duplicates and check for NULLS values or empty fields.
* How can you verify that your data is clean and ready to analyze?
<br>I contrasted clean data with the original raw dataset and did some calculations to check.
* Have you documented your cleaning process so you can review and share those results?
<br>Yes i did. There is a file in this repository with the most relevant code that I used to ensure data cleaning and analysis process.

### 4.ANALYZE:
<br>Guiding questions:
* How should you organize your data to perform analysis on it?
<br>I merged the 12 csv files into one table and cleaned all data.
* Has your data been properly formatted?
<br>All data was formatted correctly. The data types have been verified to be in the correct format for the required calculations.
* What surprises did you discover in the data?
<br>A quick glance was enough to understand the structure of the dataset. Therefore, getting insights from data was pretty straightforward. The key metrics for understanding how Cyclistic's customers behave were easy to spot in the data.
* What trends or relationships did you find in the data?
<br>There is a clear relationship between the time of year and the number of trips made by Cyclistic's customers. Even without access to the local weather database, we can assume that good weather is the main factor in increasing the number of trips. Both for occasional users and annual members.
* How will these insights help answer your business questions?
<br>During the weekdays, the annual members use the bicycle more than the casual members, so we can assume that they use it more to get to specific places such as work. While the casual ones use bicycles more on weekends, probably because they like to ride for pleasure or to visit different places in the city.

### 5.SHARE:
<br>Guiding questions:
* Were you able to answer the question of how annual members and casual riders use Cyclistic bikes differently?
<br>Yes but, gather more information like Age, Gender, and weather data, among others could help us understand more deeply how each of this customers make their choices.
* What story does your data tell?
* How do your findings relate to your original question?
* Who is your audience? What is the best way to communicate with them?
* Can data visualization help you share your findings?
* Is your presentation accessible to your audience?

### 6.ACT:
<br>Guiding questions:
What is your final conclusion based on your analysis?
* How could your team and business apply your insights?
* What next steps would you or your stakeholders take based on your findings?
* Is there additional data you could use to expand on your findings?

### 7.Conclusion and recommendations:
