gitbook install && gitbook build

gitbook build
# checkout to the gh-pages branch
git branch -D gh-pages
git branch gh-pages
git checkout gh-pages

# pull the latest updates
#git pull origin gh-pages --rebase

# copy the static site files into the current directory.
cp -R _book/* .

# remove 'node_modules' and '_book' directory
git clean -fx node_modules
git clean -fx _book

# add all files
git add .

# commit
git commit -a -m "Update docs"

# push to the origin
git push origin gh-pages -f

# checkout to the master branch
git checkout master
