read -p "Type y if you want to clone with ssh protocol? (y/n): " ans
if [ "$ans" == "y" ]; then
    git clone git@github.com:$@.git
else
    git clone https://github.com/$@
fi