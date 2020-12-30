mkdir TestNoConflict
cd TestNoConflict
git init

echo a > Alice.txt
git add .
git commit -m "a"

echo b > Bob.txt
git add .
git commit -m "b"

echo c > Charles.txt
git add .
git commit -m "c"

echo d > Dina.txt
git add .
git commit -m "d"

echo e > ET.txt
git add .
git commit -m "e"

git checkout HEAD~2
git checkout -b "feature"

echo f > FingerMan.txt
git add .
git commit -m "f"

echo g > Goose.txt
git add .
git commit -m "g"

git checkout master