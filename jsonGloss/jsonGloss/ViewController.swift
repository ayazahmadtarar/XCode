

import UIKit
import Gloss
class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,MoviesDelgate {
    
    var moviesList = [Movie]();

    override func viewDidLoad() {
       // var movies=[Movie]()
        
        let serviceData:CallService=CallService()
        serviceData.getMoviesList { (result) in
            
            
            
            self.moviesList=result;
            self.moviesTable.reloadData()
            
            
            
            
//            for item in result{
//                print(item.title)
//            }
            

        }
        
      
    }
    
     func setmovies(movies:[Movie])
     {
        moviesList=movies;
        self.moviesTable.reloadData()
     }
    
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBOutlet var moviesTable: UITableView!
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return moviesList.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
    
//        let cell=moviesTable.dequeueReusableCellWithIdentifier("cell", forIndexPath:indexPath)
//        cell.textLabel?.text=moviesList[indexPath.row].title+"   Genre:"+moviesList[indexPath.row].genres[0]
//        return cell

    
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! movieCell
        let movieItem   = moviesList[indexPath.row]
        
        let url = NSURL(string: movieItem.backgroundImageOriginal)
        let data = NSData(contentsOfURL: url!) //make sure your image in this url does exist, otherwise unwrap in a if let check
        cell.movieImage.image = UIImage(data: data!)
        
        
      //  cell.movieImage.image=UIImage(named:movieItem.smallCoverImage)
    
        cell.movieName.text=movieItem.title
        cell.movieGenre.text=movieItem.genres[0]
       // cell.movieImdb.text=(Float(movieItem.rating))+" "

        return cell
    }
    
   func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    
    return 1;
    }


}

