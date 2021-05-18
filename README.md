# Final-Project
## Selected Topic
Our selected topic is healthcare, specifically the rollout of the COVID-19 vaccine. We’re looking to research how the rollout of the vaccines has impacted death rates as a result of COVID-19. We’ve selected this question because of its relevance and because we’re all interested in health data.

## Data Source
We’ve sourced most of our data from the Center for Disease Control (CDC) and the US Government. See links below for the data we used:
- https://catalog.data.gov/dataset/provisional-weekly-deaths-by-region-race-age-62c96
- https://data.cdc.gov/NCHS/Provisional-COVID-19-Death-Counts-by-Sex-Age-and-W/vsak-wrfu
- https://data.cdc.gov/NCHS/Provisional-COVID-19-Death-Counts-by-Sex-Age-and-S/9bhg-hcku
- https://catalog.data.gov/dataset/covid-19-vaccine-initial-allocations-pfizer
- https://catalog.data.gov/dataset/covid-19-vaccine-distribution-allocations-by-jurisdiction-moderna
- https://data.cdc.gov/Vaccinations/COVID-19-Vaccine-Distribution-Allocations-by-Juris/w9zu-fywh 

## Questions to Answer
The overall question we wish to answer is: how does the distribution of the COVID-19 vaccine impact the death rates from the virus?
Each team member has a more specific question that they will answer, listed below:
- Do COVID-19 deaths slow at a different rate for minorities?
- Do COVID-19 deaths slow at a different rate depending on age?
- Do COVID-19 deaths slow at a different rate depending on gender?
- Based on vaccination and infection rates, can you accurately predict if a state voted for Trump or for Biden?

## Data Exploration and Analysis
### Data Exploration
- We used Pandas to clean and reformatted the code to fit our needs. One important item was combining the different vaccination datasets from each pharmaceutical company into just one dataset. Many of the datasets had extraneous data that we could drop as it wasn't relevant to our specific questions. Many of us also had to re-categorize the data to ensure it was more clear visually.
- Where applicable, we joined separate datasets into one database using SQL.

### Data Analysis
Each of us conducted analysis to answer our own question. For the ones related to death rates, it made the most sense to use a line graph, as we wanted to show how the data changed over time. To answer other questions, it made the most sense to use machine learning models like regression.

## Tools
Throughout the project, we used a variety of technologies, languages and tools, including:
- GitHub
- PostgreSQL
- Python
- Pandas 
- Jupyter Notebook


## Machine Learning
For our first machine learning model, which we created to determine vaccine allocations, we chose data that was publicly available and showed COVID-19 death by week and by sex, age and state. There were no missing values from the data, though there were some cases where the data was a 0, which we left in as it represented 0 deaths that week. We created dummy variables for gender, state and age range to ensure that there was a numeric variable for these that the model would understand.

- We used unsupervised machine learning because other models, such as regression, were not a fit to answer out question. Unfortunately it is difficult to predict the outcome of death just based on gender, location, and age alone. Because we're missing some required data, unsupervised machine learning will help visualize how the data can be grouped together and collect it into different pockets, to help determine what groups would ideally get vaccinated first.
- After running a k-means clustering model, we determined that the best number of groups to use was 4. After visualizing those clusters, we could determine which groups need to recieve vaccinations first.


For the second machine learning model, we designed a tool to predict the 2020 election result of a given State using public data. This included COVID-19 statistics and demographic information on every state: deaths as a percentage of the state population, vaccinated population, percentage of population who is antivax, percentage of population willing to wear masks in public, the percentage of the vaccine supply used, pre and post vaccination approval deaths, and the election results.  The csv built to be read into our machine learning model was already cleaned and ready for use, so the only change that was required was the designation of Democrat and Republican as 1 and 0, respectively.  

-We used supervised machine learning to classify the states as either 1 or 0, Democrat or Republican.  With classification in mind, it was decided to first try a simple logistc regression model.  The precision and recall of that model was .66 and .62 respectively, which was not up to par.  Instead we then tried a decision tree model, which then improved the precision and recall to .71 and .71.  Obviously still not ideal, but considering that we only had 50 different rows to use, it speaks to the quality of data we had as well as the discrepancies in covid policies in these democrat and republican states that we are still able to get an accuracy of 69%.  

## Result
Overall, there does appear to be a significant decline in COVID-19 deaths once the vaccine is introduced. This decline is present in general, as well as within all races and all age groups.

## Key Learnings
- Try to find data that is already normalized (versus counts) as that is what is ultimately more important, easier to pull insights from and tells a more clear story.
- Think ahead about what questions are easiest to answer with machine learning.

## Dashboard
The GitHub pages for our Dashboard is saved here: https://itsjonlau.github.io/Final-Project/

## Presentation
Our presentation is saved here: https://docs.google.com/presentation/d/1Uh0eGmHWaZJEmzmTupg6igN1HYlpcqkoJwL8xIzXYlY/edit#slide=id.gcd6a21c5ca_0_65 and a PDF is saved within this repository.


