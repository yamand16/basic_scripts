# Concatenate two videos side-by-side
ffmpeg -i video1.mp4 -i video2.mp4 -filter_complex '[0:v]pad=iw*2:ih[int];[int][1:v]overlay=W/2:0[vid]' -map [vid] -c:v libx264 -crf 23 -preset veryfast output.mp4

# Concatenate two videos side-by-side with text
# [0:a]-> index 0 means audio from first video is used
fmpeg -i video1.mp4 -i video2.mp4 -i -filter_complex "[0:v]drawtext=text='Text 1':x=50:y=680:fontsize=26:fontcolor=green[txt1];[1:v]drawtext=text='Text 2':x=50:y=680:fontsize=26:fontcolor=green[txt2];[txt1][txt2]hstack=inputs=2[v];[0:a]aformat=channel_layouts=stereo[a]" -map "[v]" -map "[a]" -r frame_rate output.mp4

# Concatenate multiple videos side-by-side with text
# Follow this format for any number of videos
# [0:a]-> change index which audio you would like to use
# [0:a]aformat=channel_layouts=stereo[a] -> [0:a][1:a][2:a]amix=inputs=3[a] use this if you want mix audio
ffmpeg -i video1.mp4 -i video2.mp4 -i video3.mp4 -filter_complex "[0:v]drawtext=text='Text 1':x=50:y=680:fontsize=26:fontcolor=green[txt1];[1:v]drawtext=text='Text 2':x=50:y=680:fontsize=26:fontcolor=green[txt2];[2:v]drawtext=text='Text 3':x=50:y=680:fontsize=26:fontcolor=green[txt3];[txt1][txt2][txt3]hstack=inputs=3[v];[0:a]aformat=channel_layouts=stereo[a]" -map "[v]" -map "[a]" -r frame_rate output.mp4

# Concatenate multiple audio files
ffmpeg -i TTS_gen1.wav -i TTS_gen2.wav -i TTS_gen3.wav -i TTS_gen4.wav -filter_complex '[0:0][1:0][2:0][3:0]concat=n=4:v=0:a=1[out]' -map '[out]' output.wav

# Crop video by providing start time and length
ffmpeg -ss 00:00:03 -t 00:00:10 -i input.mp4 -vcodec copy -acodec copy output.mp4

# Crop video by prodiving start and end time
ffmpeg -ss 00:00:03 -to 00:00:10 -i input.mp4 -vcodec copy -acodec copy output.mp4

# Merge two videos end-to-end using .txt file
# list.txt contains videos as below:
# file 'video1.mp4'
# file 'video2.mp4'
ffmpeg -f concat -safe 0 -i list.txt -c copy out.mp4

# Convert input video codec to h264
ffmpeg -i input_video.mp4 -vcodec h264 output_video.mp4
# Convert input video codec to h264 and audio codec to mp2
ffmpeg -i input_video.mp4 -vcodec h264 -acodec mp2 output_video.mp4

# Extract audio from the video file
ffmpeg -i input.mp4 -ar 16000 -ac 1 -c:a pcm_s16le output.wav

# Slown down the audio
ffmpeg -i input.wav -filter:a "atempo=0.75" -vn output.wav

# Make- audio codec of a video to mono
ffmpeg -i input.mp4 -ac 1 output.mp4

# Make audio sample rate of a video 16000
ffmpeg -i input.mp4 -ar 16000 output.mp4

# Decrease the video size by reducing the bitrate
ffmpeg -i input.mp4 -vcodec libx265 -crf 28 output.mp4 # or libx264. Increasing CRF file also increases the compression further. Higher CRF values mean lower bitrate.

# Change FPS of the video
ffmpeg -i input.mp4 -filter:v fps=30 output.mp4

# Add text to the video
ffmpeg -i input_video.mp4 -vf "drawtext=text='Your Text Here':x=100:y=100:fontsize=26:fontcolor=white" -c:a copy output_video.mp4

# Combine an audio and a video
ffmpeg -y -i input1.wav -i input2.mp4 -strict -2 -q:v 1 output.mp4

# Crop video frame
ffmpeg -i input.mp4 -vf "crop=crop_w:crop_h:start_w:start_h" -c:a copy out.mp4
