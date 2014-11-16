ufraw-batch --out-path=. --size=1024,1024 --out-type=jpeg --exposure=0 \
  --base-curve=camera --wb=camera --overwrite ./raw/*

# rename according to Exif
for i in $(ls -1); do
  exiv2 rename -T $i
done

# odstrani vsecky obrazky ktere maji width+height < 120
IFS=$'\n'; for i in $(ls -1 *jpg); do
  dims=$(identify $i | cut -d " " -f 3)
  w=$(echo $dims | cut -d "x" -f 1)
  h=$(echo $dims | cut -d "x" -f 1)
  [ $((w + h)) -lt 120 ] && echo rm -f $i
done

IFS=$'\n'; for i in $(ls -1 ./raw/); do
  convert ./raw/$i -auto-orient -resize 1000x1000 ./big/$i
done

IFS=$'\n'; for i in $(ls -1 ./raw/); do
  convert ./raw/$i -auto-orient -resize 120x90^ -gravity Center \
    -crop 120x90+0+0 +repage ./thumb/$i
done

IFS=$'\n'; montage $(ls -1 ./thumb/*.jpg|tail -n 4) -mode concatenate \
  -tile 2x2 thumb.jpg
