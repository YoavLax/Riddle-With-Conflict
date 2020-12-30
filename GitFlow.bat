mkdir GitFlow
cd GitFlow
git init

echo Shimon > a.txt
git add .
git commit -m "V1.1"
git tag V1.1

git branch develop

git checkout -b hotfix
echo Shimshon >> a.txt
git add .
git commit -m "HotFix"
git checkout master
git merge -m "V1.12" hotfix
git tag V1.12

git checkout develop
echo b > Person.txt
git add .
git commit -m "Added Person class"
echo BB >> Person.txt
git add .
git commit -m "Modified Person"
echo Sarah >> Person.txt
git add .
git commit -m "Added Sarah to Person"

git branch feature1
git branch feature2

echo Koko >> Person.txt
git add .
git commit -m "Defined BB admin"

git merge hotfix

git checkout feature1
echo b > Animal.txt
git add .
git commit -m "Created Animal class"
echo Dog >> Animal.txt
git add .
git commit -m "Added dog to Animal class"
echo cat >> Animal.txt
git add .
git commit -m "Added cat to Animal class"
git checkout develop
git merge feature1

git checkout -b release1
echo b > release1.txt
git add .
git commit -m "decorate1"
echo b >> release1.txt
git add .
git commit -m "decorate2"

git checkout develop
git merge release1
git checkout -b feature3
echo bricks >> House.txt
git add .
git commit -m "createed House class"
echo Water >> House.txt
git add .
git commit -m "Added list to House class"

git checkout release1
echo b >> release1.txt
git add .
git commit -m "decorate3"
echo b >> release1.txt
git add .
git commit -m "decorate4"
git checkout master
git merge -m "V1.13" release1
git tag V1.13

git checkout develop
git merge release1
git merge feature3

git checkout -b release2
git merge develop
git checkout master
git merge -m "V1.2" release2
git tag V1.2
