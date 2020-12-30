mkdir TestConflict
cd TestConflict
git init

echo Shimon > AttendingList.txt
git add .
git commit -m "a"

echo Nadav > NotAttendingList.txt
git add .
git commit -m "b"

git checkout -b "feature"

echo Cats & Dogs > AttendingList.txt
git add .
git commit -m "f"

echo Adi >> AttendingList.txt
git add .
git commit -m "g"

git checkout master

echo Bob >> AttendingList.txt
git add .
git commit -m "c"

echo Dan >> NotAttendingList.txt
git add .
git commit -m "d"

echo Suzzane >> NotAttendingList.txt
git add .
git commit -m "e"

