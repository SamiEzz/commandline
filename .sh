# Add to your ~/.bashrc

# loop [loop iostat 1]
function loop(){
 while true; do clear && $1 && sleep $2;done
}

function csv2json () {
  python3 -c "
    exec('''
      import csv,json
      print(json.dumps(list(csv.reader(open(\'${1}\')))))
    ''')
  "
}
