# Concatenate two videos side-by-side
ffmpeg -i video1.mp4 -i video2.mp4 -filter_complex '[0:v]pad=iw*2:ih[int];[int][1:v]overlay=W/2:0[vid]' -map [vid] -c:v libx264 -crf 23 -preset veryfast output.mp4

# Crop video by providing starting time and length
ffmpeg -ss 00:00:00 -t 00:00:00 -i input.mp4 -vcodec copy -acodec copy output.mp4

# Merge two videos end-to-end using .txt file
# list.txt contains videos as below:
# file 'video1.mp4'
# file 'video2.mp4'
ffmpeg -f concat -safe 0 -i list.txt -c copy out.mp4

# Convert input video codec to h264
ffmpeg -i input_video.mp4 -vcodec h264 output_video.mp4
# Convert input video codec to h264 and audio codec to mp2
ffmpeg -i input_video.mp4 -vcodec h264 -acodec mp2 output_video.mp4
