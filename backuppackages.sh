# generate installed package list
dpkg --get-selections | cut -f1 > mypackages.txt

# install backed up packages
xargs -0 apt install -y < <(tr \\n \\0 < mypackages.txt)
