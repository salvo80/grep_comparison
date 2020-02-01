import os 
import times, streams, strutils


when isMainModule:
    let time = cpuTime()
    if not declared(paramCount) or paramCount() < 2:
        echo "Usage:\nnimgrep word_to_look_for path_to_file"
    else:
        let word = paramStr(1)
        let filename = paramStr(2)
        var n=1
        #while strm.readLine(line) == true:
        #    if line.contains(word):
        #      echo n,": ",line
        #    n = n+1
        for line in readFile(filename).split('\n'):
            if line.contains(word):
                echo line
        #echo all.contains(word)
        echo cpuTime()-time
