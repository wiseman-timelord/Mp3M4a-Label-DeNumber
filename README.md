# Mp3M4a-Label-DeNumber
Status: Alpha (because very little development) but it worked.

### Description
Its a batch that strips track numbering from the start of Mp3/Mp4 file labels, this results in Mp3/Mp4 files in specified directory then being able to be correctly ordered by filename, which would then logically be artist name. This is useful for example, if you compile individual songs from multiple albums into a special folder, logically the numbers would be of no meaning and create a iffy track order, as well as making things a little harder to read in situations such as mixing.

### Preview
For example generally given the format of "## - ArtistName - TrackName.mp4/mp3" resulting in a label of "ArtistName - TrackName.mp4/mp3" instead, ie if put in a folder with the files...
```
03 - ArtistName1 - TrackName1.mp3
11 - ArtistName2 - TrackName2.mp3
17 - ArtistName3 - TrackName3.mp4
```
...would result in files named...
```
ArtistName1 - TrackName1.mp3
ArtistName2 - TrackName2.mp3
ArtistName3 - TrackName3.mp4
```

### Instructions
1. Drop it in folder with Mp3/Mp4 files in.
2. Run the batch by double left clicking.
3. Check results, if there were issues then either...
- You need to enable scripting in windows.
- There is some kind of app accessing some of the files?
- The file has odd characters such as "!", fix manually.

### Notation
- This issue of symbols such as "!" was not fixed for now, because I decided it was rare, and file labels should not have this character, such characters should be removed from the filename.
