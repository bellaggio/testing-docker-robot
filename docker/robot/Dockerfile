FROM ubuntu:18.04
WORKDIR /usr/src/app
RUN apt-get update \
    && apt-get install -y build-essential libssl-dev libffi-dev python-dev \
        python-pip python-dev gcc phantomjs firefox \
        xvfb zip wget ca-certificates ntpdate \
        libnss3-dev libxss1 libappindicator3-1 libindicator7 gconf-service libgconf-2-4 libpango1.0-0 xdg-utils fonts-liberation \
    && rm -rf /var/lib/apt/lists/*
COPY requirements.txt .

RUN pip install -r requirements.txt

RUN wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN dpkg -i google-chrome*.deb \
    && rm google-chrome*.deb \
    && wget -q https://chromedriver.storage.googleapis.com/89.0.4389.23/chromedriver_linux64.zip \
    && unzip chromedriver_linux64.zip \
    && rm chromedriver_linux64.zip \
    && mv chromedriver /usr/local/bin \
    && chmod +x /usr/local/bin/chromedriver


