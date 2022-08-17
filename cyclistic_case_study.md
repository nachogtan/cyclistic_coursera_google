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
In this phase we focus on stackeholders needs and key businnes task and goals.
<br>Business Task: <b>Design marketing strategies aimed at converting casual riders into annual members.</b>
<br>Key Stakeholder are: <b>Lily Moreno</b>: The director of marketing and your manager, <b>Cyclistic marketing analytics</b> team and <b>Cyclistic executive team.</b>
<br>Moreno has assigned you the first question to answer: <b>How do annual members and casual riders use Cyclistic bikes
differently?</b>

### 2.PREPARE:
For the prepare phase i will use Cyclistic’s historical trip data to analyze and identify trends. The dataset consists of 12 csv files with the record for the last year. 
<br>For the purposes of this case study, the datasets are appropriate and will enable you to answer the business questions. The data has been made available by
Motivate International Inc. under this <a href="https://ride.divvybikes.com/data-license-agreement">license</a>.

### 3.PROCESS:
In this phase, I will prepare the data for analysis. I choose to use Visual Studio for ETL processes, SQL Server for data cleansing, filtering, and analysis, Excel as a first approach to the dataset, and, along with Tableau, for some visualizations.
<br>All data was cleaned and double-checked by comparing the clean dataset with the original raw dataset. In this repository you will find an archive with the most relevant SQL scripts used for this project.
<br>
<br>I used For each loop in SSIS (visual studio) to merge and export the 12 csv files into 1 single table in SQL Server. The final file consists of 13 columns and 5900385 rows.
<br>
<img src="https://user-images.githubusercontent.com/98779367/184683287-4199fe26-a9e3-4289-b3e5-f9fd3b94ff81.jpg">

<img src="https://user-images.githubusercontent.com/98779367/184683361-2b21c3fc-8e10-4fad-ad34-f79f6f360681.jpg">

<br>The cleaning process included:

* Standarize and correct data types.
* Check spelling and typos,values out of range.
* Remove duplicates.
* Check for nulls or black fields.
* Data validation.

### 4.5.ANALYZE AND SHARE:
The dataset was properly cleaned and formatted. A quick look revealed that some of the key metrics to understand the differences between casual and annual members were quite clear and easy to find.
Members represent a <b>56,64%</b> against <b>43,36%</b> for Casual users.
<img src="https://user-images.githubusercontent.com/98779367/184687697-5ae2878f-c678-4ec4-8e4e-4bd944a415d4.png">
<br>
<br>The most common bikes used for both casual and members are <b>classic bikes</b> with a total of <b>3189377</b>. We can also see that members do not use docked bikes.
<br><img src="https://user-images.githubusercontent.com/98779367/184690684-aca35058-e580-4383-a80a-33e3fe4eefab.png" width="500" height="280">
<img src="https://user-images.githubusercontent.com/98779367/184690913-b18a7290-653c-45ef-be36-81c49a786432.png" width="500" height="280">
<br>
<br>In this one-year period chart, we can see a clear correlation between members and casuals. We can see a <b>big pit fall in winter months</b>, which clearly shows us the <b>importance of weather</b>.

<img src="https://user-images.githubusercontent.com/98779367/184692520-68cd7af9-8bc9-48fb-b239-f2efaf1d1eee.png">

This weekly bar chart shows us that members ride more than casual users on weekdays. On the other hand casual users ride more on weekends. This is probably because member use bikes to conmute to work or specific places while casual users tend to ride more for leisure and turism. On average, <b>members ride around 12:46</b> minutes while <b>casual users C</b>.

<img src="https://user-images.githubusercontent.com/98779367/184701222-a79bf5f6-1701-43da-987d-c2440a4eec70.png" width="685">

To add some context. Here's Cyclistic stations in chicago.

<img src="https://user-images.githubusercontent.com/98779367/184936501-ff87e936-5899-469c-93be-53572113e8e1.png" width="500" height="500">

### 6.Conclusion and recomendations:
<b>There is a clear correlation in how members and casual use Cyclistic bicycles. The highest usage peaks are between July and October with a big drop in the winter months and rises again towards April, May and June.
<br>Both casual and members prefer classic bikes followed by electric bikes. Docked bikes are only used by casual.
<br>One difference we could find was in ride lenght, an average of 12:46 for members and 12:46 for casual.
<br>Another clear diferrence is in the weekly usage. Overall, members uses more bikes than casuals durinng weekdays. On the other hand casuals uses more bikes than members on weekends.
<br>Based on these findings we can propose three recommendations:
*  Offer App benefits via geolocalization only available for annual members. Such as fitness recomendations, personalized diet, etc.
*  A membership QR that only annual members can use to get discounts at partner healthy shops, bars and restaurants.
*  A reward program for accumulated miles (merch, discounts, etc).</b>


