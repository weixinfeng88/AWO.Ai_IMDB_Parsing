# import Libraries
import pandas as pd
import requests
from bs4 import BeautifulSoup
import numpy as np

url='https://www.imdb.com/feature/genre?ref_=fn_asr_ge'
response=requests.get(url)
# print(response.status_code)
Beautiful_soup=BeautifulSoup(response.content,'html.parser')
Content=Beautiful_soup.findAll('div',attrs={'class':'image'})

# Parsing all the url and title from Genres
for items in Content:
    print(items)
    print('.............')
    url_Genre=items.a.get('href')
    title_Genre=items.a.find(class_='pri_image').get('title')
    # print(title_Genre)
    url=url_Genre
    response_url=requests.get(url)
    Genre_soup=BeautifulSoup(response_url.content,'html.parser')
    # Empty list created
    Movies_name=[]
    Year=[]
    Certificate=[]
    runtime=[]
    genere=[]
    rating=[]
    Metascore=[]
    Description=[]
    Cast=[]
    Votes=[]
    Data_Genre=Genre_soup.findAll('div',attrs={'class':'lister-item mode-advanced'})
    #Paring Metadata for all the Genres
    for items in Data_Genre:
        name=items.h3.a.text
        Movies_name.append(name)
        year_items=items.h3.find('span',class_="lister-item-year text-muted unbold").text.replace('(','').replace(')','')
        Year.append(year_items)
        Certificate_items=items.p.find('span',class_='certificate').text.strip() if items.p.find('span',class_='certificate') else 'NA'
        Certificate.append(Certificate_items)
        runtime_items=items.p.find('span',class_='runtime').text[0:-4] if items.p.find('span',class_='runtime') else 'NA'
        runtime.append(runtime_items)
        genere_items=items.p.find('span',class_='genre').text.strip()
        genere.append(genere_items)
        rating_items=items.find('strong').text if items.find('strong') else 'NA'
        rating.append(rating_items)
        metascore_items=items.find('span',class_='metascore').text.strip() if items.find('span',class_='metascore') else 'NA'
        Metascore.append(metascore_items)
        description_items=items.find_all('p',class_='text-muted')[1].text.strip()
        Description.append(description_items)
        Cast_items=items.find('p',class_='').text.strip().replace(' ','').replace('\n','')
        Cast.append(Cast_items)
        Votes_items=items.find('span', attrs = {'name': 'nv'}).text.replace(',','') if items.find('span', attrs = {'name': 'nv'}) else ''
        Votes.append(Votes_items)
        #creating Pandas Dataframe
        IMDB=pd.DataFrame({'Movies_name':Movies_name,'Year':Year,'Certificate':Certificate,'runtime':runtime,'genere':genere,'rating':rating,'Metascore':Metascore,'Description':Description,'Cast':Cast,'Votes':Votes})

        #data testing
        print(IMDB.head(5))

        #data Validation
        IMDB.info
        print(IMDB.isnull().sum())
        print(IMDB.duplicated().sum())
        print('........................')

        #Export to CSV
        path_oringal='/Users/weixinfeng/Downloads/'
        path=path_oringal+title_Genre+'.csv'
        IMDB.to_csv(path)




