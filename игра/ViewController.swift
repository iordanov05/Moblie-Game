
// отпимизированно для iPhone 6, 6s, 7, 8, SE (2nd generation), SE (3rd generation)
import UIKit

class xomyk
{
    
    var xpos: CGFloat = 0
    var ypos : CGFloat = 0
    var step : CGFloat = 50
    var monetki = 0
    var zhizni = 3
    var yroven  = 0
    
    func kasanieup (stena:UIImageView)-> Bool
    {
       let l1 = self.xpos
       let u1 = self.ypos-self.step
       let r1 = self.xpos+self.step
       let d1 = self.ypos
        let l2=stena.frame.origin.x
        let r2=stena.frame.origin.x+stena.frame.width
         let u2=stena.frame.origin.y
         let d2 = stena.frame.origin.y+stena.frame.height

        if(l1<r2 && r1>l2 && u1<d2 && d1 > u2){
            return true
            
        }
        else{
            return false
            
        }
    }
    func kasaniedw (stena:UIImageView)-> Bool
    {
        let l1 = self.xpos
        let u1 = self.ypos+self.step
        let r1 = self.xpos+self.step
        let d1 = self.ypos+self.step+self.step
        let l2=stena.frame.origin.x
        let r2=stena.frame.origin.x+stena.frame.width
        let u2=stena.frame.origin.y
        let d2 = stena.frame.origin.y+stena.frame.height
        
        if(l1<r2 && r1>l2 && u1<d2 && d1 > u2){
            return true
            
        }
        else{
            return false
            
        }
    }
    func kasaniel (stena:UIImageView)-> Bool
    {
        let l1 = self.xpos-self.step
        let u1 = self.ypos
        let r1 = self.xpos
        let d1 = self.ypos+self.step
        let l2=stena.frame.origin.x
        let r2=stena.frame.origin.x+stena.frame.width
        let u2=stena.frame.origin.y
        let d2 = stena.frame.origin.y+stena.frame.height
        
        if(l1<r2 && r1>l2 && u1<d2 && d1 > u2){
            return true
            
        }
        else{
            return false
            
        }
    }

    func kasanier (stena:UIImageView)-> Bool
    {
        let l1 = self.xpos+self.step
        let u1 = self.ypos
        let r1 = self.xpos+self.step+self.step
        let d1 = self.ypos+self.step
        let l2=stena.frame.origin.x
        let r2=stena.frame.origin.x+stena.frame.width
        let u2=stena.frame.origin.y
        let d2 = stena.frame.origin.y+stena.frame.height
        
        if(l1<r2 && r1>l2 && u1<d2 && d1 > u2){
            return true
            
        }
        else{
            return false
        }
    }
    
    func cobiray(ekran: UIView,score: UILabel)
    {
     for view in ekran.subviews
     {
        if (self.xpos==view.frame.origin.x && self.ypos==view.frame.origin.y && view.tag==2)
        {
          view.removeFromSuperview()
            self.monetki+=5
            score.text = String(self.monetki)
            if ((monetki==35 && yroven==0) || (monetki==80 && yroven==1))
            {
                //score.text = "Pasha"
                for view3 in ekran.subviews
                {
                    if ( view3.tag==3)
                    {
          view3.isHidden=false
                    }
                }
            }
        }
           
        }
    }
   
    func fin(ekran: UIView, lbl: UILabel)
    {
    for view in ekran.subviews
        {
            if (self.xpos==view.frame.origin.x && self.ypos==view.frame.origin.y && view.tag==3 && !view.isHidden)
    {
    if (yroven<1)
    {
    yroven+=1
  
        
       //lbl.text="level 0"

                    
                }else if (yroven==1)
                {
                   //lbl.text="level 1"
                 for view2 in ekran.subviews
                 {
                    if view2.tag != 123
                    {
                    view2.removeFromSuperview()
                    }
                    lbl.isHidden = false
                    lbl.centerXAnchor
                    lbl.centerYAnchor
                  lbl.text="   YOU WIN"
                    }
                }
            }
            
        }
    }
    
    func pokazatyrov(ekran: UIView, yroven: [[Int]]) -> [UIImageView]
    {
      var sten = [UIImageView]()
        for view1 in ekran.subviews
        {
            if view1.tag < 5
            {
                view1.removeFromSuperview()
            }
        }
        for i in 0..<12
        { for j in 0..<7
        {
            if (yroven[i][j]==1){
                
                
                let imageView=UIImageView()
                imageView.image=UIImage(named:"brick_base")
                let posX=CGFloat(12+j*Int(step))
                let posY=CGFloat(17+i*Int(step))
                imageView.frame=CGRect(x:posX,y:posY,width:self.step,height:self.step)
                sten.append(imageView)
                ekran.addSubview(imageView)
                
                
            }
            
            }
        }
        for i in 0..<12
        { for j in 0..<7
        {
            if (yroven[i][j]==2){
                
                
                let imageView=UIImageView()
                imageView.image=UIImage(named:"Coins")
                let posX=CGFloat(12+j*Int(step))
                let posY=CGFloat(17+i*Int(step))
                imageView.frame=CGRect(x:posX,y:posY,width:self.step,height:self.step)
                imageView.tag=2
                ekran.addSubview(imageView)
            }
            
            }
        }
        
        for i in 0..<12
        { for j in 0..<7
        {
            if (yroven[i][j]==3){
                
                
                let imageView=UIImageView()
                imageView.image=UIImage(named:"portal")
                let posX=CGFloat(12+j*Int(step))
                let posY=CGFloat(17+i*Int(step))
                imageView.frame=CGRect(x:posX,y:posY,width:self.step,height:self.step)
                imageView.tag=3
                imageView.isHidden=true
                ekran.addSubview(imageView)
            }
            
            }
        }
        for i in 0..<12
        { for j in 0..<7
        {
            if (yroven[i][j]==4){
                
                
                let imageView=UIImageView()
                imageView.image=UIImage(named:"fire")
                let posX=CGFloat(12+j*Int(step))
                let posY=CGFloat(17+i*Int(step))
                imageView.frame=CGRect(x:posX,y:posY,width:self.step,height:self.step)
                imageView.tag=4
                ekran.addSubview(imageView)
            }
            
            }
        }
        return sten
        
        
        
    }
    
    
    func fireee(ekran: UIView,score: UILabel)
    {
        for view in ekran.subviews
        {
            if (self.xpos==view.frame.origin.x && self.ypos==view.frame.origin.y && view.tag==4 && !view.isHidden)
            {
                if (zhizni>0)
                {
                zhizni=zhizni-1
                }
            }
            
        }
    }
    
    func pokazatzhiz(ser1: UIImageView, ser2: UIImageView,ser3: UIImageView, gover: UIImageView, gameover: UILabel, ekran: UIView, tim: Timer)
    {
        switch zhizni {
        case 1:
        ser1.isHidden=false
            ser2.isHidden=true
            ser3.isHidden=true
        case 2:
            ser1.isHidden=false
            ser2.isHidden=false
            ser3.isHidden=true
        case 3:
            ser1.isHidden=false
            ser2.isHidden=false
            ser3.isHidden=false
        case 0:
            ser1.isHidden=true
            ser2.isHidden=true
            ser3.isHidden=true
            gover.isHidden = false
            gameover.isHidden = false
            tim.invalidate()
            for view in ekran.subviews
            {
             if view.tag < 123
             {
                view.removeFromSuperview()
                }
         
            }
        default:
            break
        }
    }
}

class ViewController: UIViewController {
   
    @IBOutlet weak var levelWin: UILabel!
    @IBOutlet weak var gameover: UILabel!
    @IBOutlet weak var over: UIImageView!
    @IBOutlet weak var heart3: UIImageView!
    @IBOutlet weak var heart2: UIImageView!
    @IBOutlet weak var heart1: UIImageView!
    @IBOutlet weak var deniga: UIImageView!
    @IBOutlet weak var coinsss: UILabel!
    @IBOutlet weak var hydo: UIImageView!
    @IBOutlet weak var ctena: UIImageView!
    @IBOutlet weak var game: UILabel!
    @IBOutlet weak var start: UIButton!
    @IBOutlet weak var hern: UIView!
    @IBOutlet weak var pred: UILabel!
    var firetimer : Timer!
 
    var steni=[UIImageView]()
    var step = 50
    var cas=false
    var fireon=true
    var tekyroven = 0
    var sdelatshag=true
    var xomyk1=xomyk()
    

    var yroven2:[[Int]] =
        [[1,1,1,1,1,1,1],
         [0,4,4,0,4,4,3],
         [4,1,1,1,1,1,1],
         [2,4,4,0,4,0,1],
         [4,1,1,1,1,0,1],
         [2,1,1,2,1,4,1],
         [1,0,2,4,4,0,1],
         [1,2,1,1,1,4,1],
         [2,1,1,2,1,0,1],
         [4,1,2,4,0,4,1],
         [2,4,4,0,0,0,1],
         [1,1,1,0,1,1,1]]
 
    var steni2: [[Int]] =
        [[1,1,1,1,1,1,1],
         [1,0,4,0,4,0,4],
         [1,1,1,1,4,1,2],
         [0,0,0,0,0,0,1],
         [0,1,1,4,1,0,1],
         [2,1,4,0,1,4,2],
         [1,1,2,1,2,4,1],
         [1,2,1,1,1,0,1],
         [0,4,0,2,1,4,0],
         [4,1,1,1,1,1,4],
         [0,0,0,4,0,0,0],
         [1,1,1,3,1,1,1]]
    @IBAction func start1(_ sender: Any) {
        xomyk1.xpos=162
        xomyk1.ypos=567
         self.firetimer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector (self.firechange), userInfo: nil, repeats: true)
        UIView.animate(withDuration: 2, animations:{self.game.alpha=0})
        {   (finished) in
                 self.heart3.isHidden = false
                 self.heart2.isHidden = false
                self.heart1.isHidden = false
            self.ctena.isHidden = false
            self.hydo.isHidden = false
            self.start.isHidden = true
            self.deniga.isHidden = false
             self.coinsss.isHidden = false
             self.steni=self.xomyk1.pokazatyrov(ekran: self.hern, yroven: self.steni2)
            
            }
        
        }
       
        
    
  
    @IBOutlet weak var shzt: UIImageView!
    
    @objc func firechange ()
    {
    fireon = !fireon
    for view in hern.subviews
    {
        if fireon
        {
            if (view.tag==4)
            {
              view.isHidden=false
            }
            
        }else
        {
            if (view.tag==4)
            {
                view.isHidden=true
            }
        }
        
        }
        xomyk1.fireee(ekran: hern, score: gameover)
        xomyk1.pokazatzhiz(ser1: heart1, ser2: heart2, ser3: heart3, gover: over, gameover: gameover, ekran: hern, tim: firetimer)
        
        
    }
    
    @objc func swipeGesture(sender:UIGestureRecognizer)
    {if let swipeGesture = sender as? UISwipeGestureRecognizer{
        switch swipeGesture.direction
        { case  UISwipeGestureRecognizerDirection.right:
            sdelatshag=true
            for i in 0..<steni.count
            {
                cas=xomyk1.kasanier(stena: steni[i])
                if cas
                {
                    sdelatshag=false
                }
            }
            if (sdelatshag)            {
               xomyk1.xpos=xomyk1.xpos+xomyk1.step
               self.hydo.frame.origin.x=xomyk1.xpos
                xomyk1.cobiray(ekran: hern, score: coinsss)
                xomyk1.fireee(ekran: hern, score: gameover)
                xomyk1.pokazatzhiz(ser1: heart1, ser2: heart2, ser3: heart3, gover: over, gameover: gameover, ekran:hern, tim: firetimer)
                xomyk1.fin(ekran: hern,lbl: gameover)
                
            }
            if tekyroven != xomyk1.yroven
            {
                tekyroven=xomyk1.yroven
                steni = xomyk1.pokazatyrov(ekran: hern, yroven: yroven2)
            }
            
        case  UISwipeGestureRecognizerDirection.left:
       sdelatshag=true
            for i in 0..<steni.count
            {
                cas=xomyk1.kasaniel(stena: steni[i])
                if cas
                {
                    sdelatshag=false
                }
            }
            if (sdelatshag)
            {
             xomyk1.xpos=xomyk1.xpos-xomyk1.step
        self.hydo.frame.origin.x=xomyk1.xpos
                xomyk1.cobiray(ekran: hern, score: coinsss)
                xomyk1.fireee(ekran: hern, score: gameover)
                xomyk1.pokazatzhiz(ser1: heart1, ser2: heart2, ser3: heart3, gover: over, gameover: gameover,ekran:hern, tim: firetimer)
                xomyk1.fin(ekran: hern, lbl: gameover)
                
        }
       if tekyroven != xomyk1.yroven
       {
        tekyroven=xomyk1.yroven
        steni = xomyk1.pokazatyrov(ekran: hern, yroven: yroven2)
            }
        case  UISwipeGestureRecognizerDirection.up:
            sdelatshag=true
            for i in 0..<steni.count
            {
             cas=xomyk1.kasanieup(stena: steni[i])
             if cas
             {
                sdelatshag=false
                }
            }
            if (sdelatshag)
            {
     
            xomyk1.ypos=xomyk1.ypos-xomyk1.step
            self.hydo.frame.origin.y=xomyk1.ypos
                xomyk1.cobiray(ekran: hern, score: coinsss)
                xomyk1.fireee(ekran: hern, score: gameover)
                xomyk1.pokazatzhiz(ser1: heart1, ser2: heart2, ser3: heart3, gover: over, gameover: gameover, ekran : hern, tim: firetimer)
                xomyk1.fin(ekran: hern, lbl: gameover)
            }
            
            if tekyroven != xomyk1.yroven
            {
                tekyroven=xomyk1.yroven
                steni = xomyk1.pokazatyrov(ekran: hern, yroven: yroven2)
            }
            
        case  UISwipeGestureRecognizerDirection.down:
            sdelatshag=true
            
            for i in 0..<steni.count
            {
                cas=xomyk1.kasaniedw(stena: steni[i])
                if cas
                {
                    sdelatshag=false
                }
            }
            if (sdelatshag)
            {
                if(hydo.frame.origin.y+xomyk1.step<612){
            xomyk1.ypos=xomyk1.ypos+xomyk1.step
                    self.hydo.frame.origin.y=xomyk1.ypos}}
            xomyk1.cobiray(ekran: hern, score: coinsss)
            xomyk1.fireee(ekran: hern, score: gameover)
            xomyk1.pokazatzhiz(ser1: heart1, ser2: heart2, ser3: heart3, gover: over, gameover: gameover,ekran: hern, tim: firetimer)
            xomyk1.fin(ekran: hern, lbl: gameover)
            if tekyroven != xomyk1.yroven
            {
             tekyroven=xomyk1.yroven
                steni = xomyk1.pokazatyrov(ekran: hern, yroven: yroven2)
            }
        default:
            break
            
    }}}

   
    override func viewDidLoad() {
        self.heart3.isHidden = true
        self.heart2.isHidden = true
        self.heart1.isHidden = true
        super.viewDidLoad()
       
        
        
        hydo.isUserInteractionEnabled=true
let swipeRight=UISwipeGestureRecognizer(target:self, action:#selector(self.swipeGesture))
    swipeRight.direction=UISwipeGestureRecognizerDirection.right
    hydo.addGestureRecognizer(swipeRight)
        
        hydo.isUserInteractionEnabled=true
        let swipeLeft=UISwipeGestureRecognizer(target:self, action:#selector(self.swipeGesture))
        swipeLeft.direction=UISwipeGestureRecognizerDirection.left
        hydo.addGestureRecognizer(swipeLeft)
        
        hydo.isUserInteractionEnabled=true
        let swipeUp=UISwipeGestureRecognizer(target:self, action:#selector(self.swipeGesture))
        swipeUp.direction=UISwipeGestureRecognizerDirection.up
        hydo.addGestureRecognizer(swipeUp)
        
        hydo.isUserInteractionEnabled=true
        let swipeDown=UISwipeGestureRecognizer(target:self, action:#selector(self.swipeGesture))
        swipeDown.direction=UISwipeGestureRecognizerDirection.down
        hydo.addGestureRecognizer(swipeDown)
    
        
      
        UIView.animate(withDuration: 2.3, animations:{self.shzt.frame=CGRect (x:0,y:20, width: 375, height:246)})
            {(finished) in
            self.pred.isHidden = false
            UIView.animate(withDuration: 2, animations:{self.shzt.alpha=0})
            {
            (finished) in
            self.hern.isHidden = false
            self.start.isHidden = false
           self.game.isHidden = false
            }
        }
}
}
