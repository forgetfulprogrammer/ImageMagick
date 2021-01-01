echo off
SET /a i=0
for /r %%f in (*.jpg) do (
 echo "#####################################"
 echo "Pocessing File: " %i% " Filename: " %%f
 echo "-------------------------------------"
"D:\Program Files\ImageMagick-7.0.6-Q16\magick" convert -adaptive-resize 1366 -quality "90%%" "%%f" "%%f"  
 echo "#####################################"
 SET /a i=%i%+1
    )
echo "Completed. File(s) processed: " %i%
