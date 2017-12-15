echo
URL=https://tripplyons.github.io/base64bin/#$(cat $1 | python -m base64)
echo $URL
wget -qO- http://tinyurl.com/api-create.php\?url=$(python -c "import urllib, sys; print urllib.quote(sys.argv[1])" $URL)
echo
echo
