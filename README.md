# 🎥 YouTube Video Translator Pro

A powerful Python application that transforms YouTube videos into multiple Indian languages while maintaining perfect audio-video synchronization. This tool transcribes the original audio, translates the content, and generates synchronized dubbed audio in your target language.

## ✨ Features

- 🎬 Download YouTube videos and extract audio seamlessly
- 🎙️ Transcribe audio using OpenAI's Whisper model
- 🌏 Translate content to multiple Indian languages:
  -  Hindi
  -  Tamil
  -  Telugu
  -  Malayalam
  -  Kannada
  -  English
- 🔊 Generate natural-sounding dubbed audio using gTTS
- ⚡ Automatic audio-video synchronization
- 🖥️ User-friendly Streamlit web interface
- 💾 Download options for translated video, audio, and text
- 📊 Progress tracking with status updates
- 🔒 Preservation of specific terms during translation
- ⚙️ Smart handling of long-duration videos

## 🛠️ Prerequisites

- 🐍 Python 3.8 or higher
- 🎮 FFmpeg installed on your system
- 🌐 Internet connection for YouTube downloads and translations

## 📦 Required Python Packages

```bash
pip install -r requirements.txt
```

Required packages:
- 🎯 streamlit
- 🎤 whisper
- 🌐 deep-translator
- 🔊 gtts
- 🎵 pydub
- 📥 yt-dlp
- 🎞️ imageio-ffmpeg
- 📋 dataclasses

## ⚙️ Setup

1. Clone the repository:
```bash
git clone https://github.com/ramu1904/youtube-video-translator.git
cd youtube-video-translator
```

2. Install dependencies:
```bash
pip install -r requirements.txt
```

3. Configure FFmpeg:
   - Download FFmpeg from the official website
   - Add FFmpeg to your system's PATH or update the path in the code:
```python
os.environ["PATH"] += os.pathsep + "path/to/your/ffmpeg/bin"
```

## 🚀 Usage

1. Start the Streamlit application:
```bash
streamlit run app.py
```

2. Access the web interface through your browser (typically http://localhost:8501)

3. Use the application:
   - 📋 Paste a YouTube URL
   - 🌐 Select your target language from the sidebar
   - ▶️ Click "Process Video"
   - ⏳ Wait for processing to complete
   - 💾 Download translated video, audio, or text

## 📂 Project Structure

```
youtube-video-translator/
│
├── code.py              # 🎯 Main translation logic and VideoTranslator class
├── app.py              # 🖥️ Streamlit web interface
├── terms.py            # 📝 Terms to preserve during translation
│
├── input_audio/        # 🎵 Temporary storage for extracted audio
├── T_audio/           # 🔊 Storage for translated audio files
├── translated_text/    # 📄 Storage for translated transcripts
├── video/             # 🎬 Storage for downloaded videos
└── output_video/      # 🎥 Storage for final translated videos
```

## ❗ Common Issues and Solutions

### 1. FFmpeg Related Issues 🎮

**Issue**: `FileNotFoundError: [WinError 2] The system cannot find the file specified: 'ffmpeg'`
**Solution**:
- ✅ Download FFmpeg from official website: https://ffmpeg.org/download.html
- ✅ Extract the files to a permanent location (e.g., `C:\ffmpeg`)
- ✅ Add FFmpeg to system PATH or update in code:
```python
os.environ["PATH"] += os.pathsep + r"C:\ffmpeg\bin"
```

### 2. YouTube Download Issues 📥

**Issue**: `ERROR: Unable to download video`
**Solutions**:
- ✅ Update yt-dlp: `pip install --upgrade yt-dlp`
- ✅ Check if video is age-restricted or private
- ✅ Verify internet connection
- ✅ Try with a different video URL

### 3. Memory Issues 💾

**Issue**: `MemoryError` during processing
**Solutions**:
- ✅ Process shorter videos initially
- ✅ Close other memory-intensive applications
- ✅ Increase system swap space
- ✅ Use a machine with more RAM

### 4. Audio Sync Issues 🎵

**Issue**: Audio and video out of sync
**Solutions**:
- ✅ Ensure FFmpeg is properly installed
- ✅ Check if original video has consistent framerate
- ✅ Try processing the video again
- ✅ Verify the video isn't corrupted

### 5. Translation Issues 🌐

**Issue**: Poor translation quality or missing words
**Solutions**:
- ✅ Add important terms to `terms_to_preserve` list
- ✅ Check internet connectivity
- ✅ Verify language code selection
- ✅ Try with shorter text segments

### 6. Streamlit Interface Issues 🖥️

**Issue**: Interface not loading or crashes
**Solutions**:
- ✅ Restart Streamlit server
- ✅ Clear browser cache
- ✅ Update Streamlit: `pip install --upgrade streamlit`
- ✅ Check port availability


## 📷 Screenshots 

![Screenshot 2025-02-17 211112](https://github.com/user-attachments/assets/b62f0bae-6c90-49c2-ab62-dd4c734ce94b)

![Screenshot 2025-02-17 211123](https://github.com/user-attachments/assets/2f10eccf-ec5a-4df8-8a28-9ba116d0720c)

![Screenshot 2025-02-17 210946](https://github.com/user-attachments/assets/f35d88bc-3a18-4e6e-9b2c-ebc59f93114d)

![Screenshot 2025-02-17 210959](https://github.com/user-attachments/assets/89ff3d58-e756-468e-96cb-8a51124caa34)



## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. 🍴 Fork the repository
2. 🌿 Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. 💾 Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. 📤 Push to the branch (`git push origin feature/AmazingFeature`)
5. 🎯 Open a Pull Request

## 📜 License

This project is licensed under the MIT License - see the LICENSE file for details.

Copyright (c) 2024 Ramu R 

## 🙏 Acknowledgments

- 🎤 OpenAI's Whisper for audio transcription
- 🌐 Google Translate for text translation
- 🔊 gTTS for text-to-speech conversion
- 🖥️ Streamlit for the web interface
- 🎮 FFmpeg for video processing
- 📥 yt-dlp for YouTube video downloading

## 💁‍♂️ Support

For support:
- 📮 Open an issue in the GitHub repository: https://github.com/ramu1904/youtube-video-translator/issues
- 📧 Contact the maintainer: Ramu R mailto : ramuonnect45@gmail.com
- 💭 Check existing issues for solutions
- 📚 Read the documentation thoroughly

## 🚀 Quick Tips

- 🎯 Start with shorter videos (2-3 minutes) for testing
- 🔄 Keep all packages updated
- 💾 Ensure sufficient disk space
- 🌐 Use a stable internet connection
- ⚡ Close unnecessary applications while processing
