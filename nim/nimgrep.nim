import os 
import times, streams, strutils

let buffSize=64000
when isMainModule:
    let time = cpuTime()
    if not declared(paramCount) or paramCount() < 2:
        echo "Usage:\nnimgrep word_to_look_for path_to_file"
    else:
        let word = paramStr(1)
        let filename = paramStr(2)
        var s = newFileStream(filename, fmRead)
        var line=""
        var buff = newString(buffSize)
        var n = 0
        while not s.atEnd:
            let block = s.readDataStr(buff, buff.len - n
            if block.contains(word):
                echo line
            n = buff.len - n
        #for line in readFile(filename).split('\n'):
        #    if line.contains(word):
        #        echo line
        #echo all.contains(word)
        echo cpuTime()-time
