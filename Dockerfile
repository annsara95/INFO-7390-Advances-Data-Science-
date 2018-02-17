FROM python:3

# Install app dependencies
RUN pip install Flask


# install additional python packages
RUN pip3 install ipython
#RUN pip install jupyter
RUN pip3 install numpy
RUN pip3 install pandas
RUN pip3 install scikit-learn
RUN pip3 install BeautifulSoup4
RUN pip3 install scipy
RUN pip3 install requests
#RUN pip install nltk

#install AWS CLI
RUN pip3 install awscli

#install luigiI
RUN pip3 install luigi

# install unzip utility
#RUN apt-get install unzip

 
# Bundle app source
COPY edgarDataScrapping.py /src/edgarDataScrapping.py

EXPOSE  8000
CMD ["python", "/src/edgarDataScrapping.py", "-p 8000"]