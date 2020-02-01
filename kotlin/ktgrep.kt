@file:JvmName("ktgrep")

import java.io.File
import java.io.InputStream
import java.security.MessageDigest


fun main(args: Array<String>) {
    val start = System.currentTimeMillis()
    if(args.size<2)println("Usage:\nktgrep word_to_look_for file_path")
    else{
        val f = File(args[1])
        val str = args[0] //.toUpperCase()
        //println("cerco "+str)
        //println(hashString("password"))
        f.useLines { 
            it.toList().parallelStream()
            .filter {t -> t.contains(str)}
            .forEach {g -> println(g)}
        }
    }
	
	println("done in ${(System.currentTimeMillis() - start)/1000}s")
}
