<img src="https://bit.ly/2VnXWr2" alt="Ironhack Logo" width="100"/>

# Project: Competitive Landscape

## Content

- [Project Overview](#project-overview)
- [Getting Started](#getting-started)
- [Project Deliverables](#deliverables)


## Project Goal

We were hired by Ironhack to perform an analytics consulting project to understand Ironhack's competitive landscape: which other coding schools are there and what drives their success or lack thereof relative to Ironhack.

The goal of this project is to conduct a comprehensive analysis of the coding bootcamp market, with a specific focus on Ironhack. The aim is to provide actionable insights and recommendations for improving Ironhack's competitiveness and addressing areas of improvement in their business model.



## Methodologies - what did we do to perform the analysis

1.  Libaries imported
We begin by importing essential libraries for data analysis, such as:
 - numpy
 - re
- pandas
 - pandas.io.json import json_normalize
 - requests
 - from bs4 import BeautifulSoup
 - matplotlib.pyplot
 - seaborn
 - mysql.connector
 - getpass
 - wordcloud import WordCloud
 - nltk
 - nltk.corpus import stopwords



2. Market overview:

With available public information, we gather information on coding bootcamps markets, including market performance, renvenue and growth based on reports from different sources (cited in our presentation). The market forecast is unfortunately not available without charge, but the general sentiment over market growth are given based on diverse website and sample forecast reports

3. Competitiveness landscape :
Through CareerKarma ( stats website focusing on US bootcamps) and switchup, We scapes information over the most popular bootcamps ( based on number of graduate, ranking from students, etc). we filter the list to 8 schools and from here scape more information from switchup.org over ranking and comments (we inspect the url of switchup website to find school_id). 
We use python to clean and manipulate data and run queries to create table which concat information scaped from websites and then connect with SQL and generate ERD.

As we realize that some schools offeres completely different courses and/or has very low number of reviews ( below 500 over 10 years), we narrow down to 1 competitors Le wagon

4. Ironhack vs Le wagon:

-Le wagon has better and more consistent revieww, it is then a good benchmark for Ironhack to identify what are missing in Ironhack current business model.
-Offer similar course and course structure, Le wagon has stronger presence in the world except for US.
-Based on marketing material, Le wagon offers better job assurance this might be reason for declining rating of Ironhack
-In parallel, we use "word cloud" to have a look to negative ranking/comments over ironhack to find rootcause

Through the above web scaper and word cloud. we identify strength and weakness of ironhack

5. Recommendations
Before come up with an action plan, we also take a step back to look at market demand and student motivation for coding. The survey in switchup show the most comment motivation is for career advancement. Once again, confirm our observation that Ironhack should improve their job support service

With above information we give our recommendation but admits there is some limitation in terms of data interpretation due to availability of database



[ ] Files that contain your solution submitted via a GitHub repo

  - .py or .ipnby files to extract and transform the data scraped in the attached notebook as well as running the business analysis

  - An exported .sql file with the final schema
  
  - A README.md file with explanation fo the project goals, methodology and ERD

[ ] A presentation that showcases your product



