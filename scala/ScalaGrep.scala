import scala.io.Source

object ScalaGrep extends App {
	var w = "";
	var mode = "";
	var f = "";
	val t0 = System.currentTimeMillis()/1000
	if (args.length < 2) {
		println("Usage\nrun word_to_look_for file_path")
        
    }else{
    	w = args(0)
		f = args(1)
		for(line <- Source.fromFile(f)(io.Codec.ISO8859).getLines()){
			if(line.contains(w)){
				println(line)
			}
		}
    }

	val t1 = System.currentTimeMillis()/1000
    println("Elapsed time: " + (t1 - t0) + "s")
}