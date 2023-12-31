## pip install beautifulsoup4
import os
from bs4 import BeautifulSoup

# Read html source from file which contains
# <audio data-v-333aeb41="" title="hello" src="https://wechatapppro-12345.file.myqcloud.com/appt55455244/audio/b_u_lwll627f7d_D5GZG4ts/tb81b5badfl0wyvka.mp3" class="audioDom"></audio>
# You can copy it from Chrome/Edge F12 source tab.
# The sample is from XiaoE-Tech web site.
# Copy the html source to 'extract_audio_sample.html' file.
script_directory = os.path.dirname(os.path.abspath(__file__))
file_name = 'extract_audio_sample.html'
file_path = os.path.join(script_directory, file_name)

with open(file_path, 'r', encoding='utf-8') as file:
    html_text = file.read()

soup = BeautifulSoup(html_text, 'html.parser')

audio_tags = soup.find_all('audio')

for audio_tag in audio_tags:
    title = audio_tag.get('title', '')
    # move the topic from front to end.
    # topic = "topic in the filename"
    topic = "XXXXX"
    title = title.replace(topic, '')
    src = audio_tag.get('src', '')

    # print(f'title: {title}, src_url: {src}')
    # create curl command
    # curl_command = f'curl -o "{title}.mp3" "{src}"'
    curl_command = f'curl -o "{title}-{topic}.mp3" "{src}"'
    print(curl_command)
    # os.system(curl_command)
