import UIKit


//变量字符串
var str = "Hello, playground"
//变量字典

//可选类型，有就有，没有就用我的。
var j:Int? = 30
//可选类型的强制解析
var i=j!+30
print(i)

//for循环 （0...100）代表了0-100的数组，注意是数组
for a in (0...100){
    cos(Double(a))
    //cos只会接受Double型数据
}

//字符数据，单个数据
var chara:Character = "a"
print(chara)

//定义字典
var dicea  =  [1:"a",2:"b"]
dicea.updateValue("c", forKey: 3)
var lis = ["name":18,"age":20]
//字典赋值
if let oldname = lis.updateValue(29, forKey: "age"){
    print(oldname)
    //这里oldname会记录变更之前的值
}



//枚举enum
enum Student{
    case Name(String)
    case Mark(Int,Int,Int)
}
//枚举的实例有点像类的实例化
var b = Student.Name("核桃")
var c = Student.Mark(80, 30, 20)
//switch循环去判断实力之后的属性满足那一条，满足那一条就执行那一条。
switch c {
case .Name(let student_name):
    print("是核桃\(student_name)")
case .Mark(let m1,let m2,let m3):
    print("成绩分别是\(m1),\(m2),\(m3)")
}

//枚举类型的赋值问题，
enum Month:Int{
    case   January = 0,feb,mar,april,may,june,july,augu,sept
}
let year_mouth = Month.mar.rawValue
print("this is  \(year_mouth)")



//集，字符串，字符
var bbc = (123,345)
type(of: bbc)
bbc.1 = 567
print(bbc)

//字符串数据在swift当中会有String和NSString的区别，一般来说转换为NSString会比较好操作点，可以直接使用数字进行操作，但是如果是string的话，就需要使用到index来搞，有点麻烦，这里只学了转换nss的方式
var stri = "abcdefghijklmnop"
var first = (stri as NSString).substring(from: 5)//从什么到最后
var second = (stri as NSString).substring(to: 6)//从头到什么位置
var third = (stri as NSString).substring(with: NSRange(location: 4,length: 3))//a到b



//array列表数组
var arry = [Int]()
var boo = arry.isEmpty   //检测是否为空
var thetext = [Int](repeating: 4, count: 3)  //重复赋值
for i in thetext{
    print(i)
}
let ac = thetext.count    //项数
thetext.append(56)        //末尾添加
thetext += [45]
thetext.insert(11, at: 0)  //指定下标添加
thetext.remove(at: 1)      //删除指定位置
thetext.removeLast()      //删除最后
thetext.removeFirst()      //删除最前
print(thetext)
thetext[0...1].removeAll()  //如果不加下标机会删除全部，加了就是这一部分全部删除
thetext.removeSubrange(0..<1)
print(thetext)


//Dictionary字典
var firdic = Dictionary<String,String>() //空字典的定义
var firdic2:Dictionary<String,String> = ["a":"1","b":"2"]
var text = [1:"a","2":"b"] as [AnyHashable : String] //anyhashable 任何可哈希数据，简单来说可以存各类型
text[1] = nil
type(of: text)
text.count
text["3"] = "b"
let oldValue = text.updateValue("c", forKey: "3")
let oldvalue2 = text.removeValue(forKey: "3")
for (a,b) in text{
    print("the keys is \(a),and the Value is \(b)")
    
}


//guard 解包，还有if let ，我没有搞明白，写出来也有错误。

var pa:Dictionary< String,String > = [:]


func funcky(person:[String:String]){
    guard let nname = person["name"] else{
        print("asd")
        return
    }
    guard let gradd = person["gradd"] else{
        print("bdd")
        return
    }
    print("dasd\(nname),vasd\(gradd)")
    print("jajajja")
}
funcky(person: pa)




//计算属性
class User{
    var first:String = ""
    var last:String = ""
    //这里貌似要写在最前面才可以
    init(first:String,last:String){
        self.first = first
        self.last = last
        
    }
    
    var fullname:String{
        //可以理解为使用的时候会启动这个函数
        get{
            return first + " - " + last
            
        }
        //可以理解为给类的这个属性赋值的时候会使用这个方法
        set(newValue){
            //components 将字符串以什么符号分割开
            let names = newValue.components(separatedBy: " - ")
            self.first = names[0]
            self.last  = names[1]
        }

    }
}
let s = User(first:"曹",last:"操") //在使用类的时候，用let或者var都可以，但是结构体不行
print(s.fullname)
s.fullname = "刘 - 备"
print("first name:\(s.first),lastname:\(s.last)")



//类型属性
struct  araa{
    //存储属性
    var  chang:Double
    //计算属性
    var area:Double{
        get {
            return  chang * chang
        }
    }
    
}
let fren = araa(chang:10)
print("asdiasdnia\(fren.area)")
print("asdasdasd\(fren.chang)")


//延迟属性，有些方法或者有些东西并不需要立即执行，可以使用，用的时候再启动，相当于挂载
class Number{
    //存储属性
    var startNum: Int!
    var endNum:Int!
    //计算属性
    var length :Int{
        return endNum - startNum + 1
    }
    
    //延迟属性：使用闭包计算出了延迟属性的值，此过程只执行一次
    lazy var sum: Int = {
        print("计算延迟属性。。。。")
        var tempNum = 0;
        for i in self.startNum...self.endNum{
            tempNum += i;
        }
        return tempNum
    }()
    
    //可失败的构造方法
    init?(startNum: Int , endNum:Int){
        if(startNum > endNum){
            return nil
        }
        self.startNum = startNum
        self.endNum = endNum
    }
}

let number = Number(startNum: 1, endNum: 100)
number?.length  //100
//number?.sum     //5050
//number?.sum     //5050


//属性检测

class ccaca{
    var biaozhun = 0
    var shiji = 0{
        willSet{
            print("数据即将由\(shiji)变为\(newValue)")
        }
        didSet{
            print("之前的值为\(oldValue)，现在的值为\(shiji)")
        }
    }
    
}

let shiyan = ccaca()
shiyan.shiji = 20


//测试Int的类型属性
Int.min
Int.max

class Player {
    var name: String = ""
    //对象属性：本人的得分
    var score: Int = 0
    //类型属性：本游戏的最高得分,使用类名来访问，使用关键字static声明
    static var heighestScore:Int = 0;
    
    //构造方法
    init(name: String){
        self.name = name
    }
    //玩一句游戏得分
    func playGame(){
        let tempNum = Int( arc4random ()%100)+1
        self.score += tempNum
        print("\(name) 的游戏得分是：\(score)")
        
        if(self.score > Player.heighestScore){
            Player.heighestScore = self.score
        }
        print("当前本游戏的最高分是:\(Player.heighestScore)")
    }
}
let player1 = Player(name: "zs")
player1.playGame()
player1.playGame()
let player2 = Player(name: "cf")
player2.playGame()


//类方法，使用class来申明func所创建的函数
class fasd{
    
    class func asn() {
        print("阿雅哟")
    }
    
}

fasd.asn()


//下标脚本
class  Exo{
    var age:[Int] = Array(repeating: 0, count: 5)
    subscript (Index:Int) ->Int{
        get{
            return age[Index]
        }
        set{
            age[Index] = newValue
        }
    }
}
var tex = Exo()
tex[1] = 1
print(tex[1])
print(tex[2])
print(tex.age[1])



//函数类型
func additive(a:Int,b:Int)  -> Int{
    return a+b
}
func jianfa(a:Int,b:Int) -> Int{
    return a-b
}
//使用函数类型
var newfunc:(Int,Int ) -> Int = additive
newfunc(2,3)
newfunc = jianfa
newfunc(5,2)
//函数类型作为参数
func printAdditiveResult(addfun:(Int,Int) ->Int,a:Int,b:Int){
    print("Result : \(addfun(a,b))")
}

printAdditiveResult(addfun: additive, a: 10, b: 2)

//函数类型作为返回值，这里小心申明里面的括号
func increase(input:Int) -> Int{
    return input + 1
}
func reduce(input:Int) -> Int{
    return input - 1
}
func chooseFunction(backwards:Bool) ->(Int) -> Int{
    return backwards ? reduce : increase
}
let eaco = chooseFunction(backwards: 2<3)
eaco(3)

//函数嵌套
func mainFunction(input:Int) -> Int{
    func internalFunction(input2:Int) -> Int{
        
        return input2 + 1
    }
    return internalFunction(input2: input)
}

let num = mainFunction(input: 3)

//闭包
func Getlist(arr:[Int],pre:(Int) -> Bool) -> [Int]{
    
    var temparr = [Int]()
    for temp in arr{
        if pre(temp){
            temparr.append(temp)
        }
    }
    return temparr;
}

let  arr = Getlist(arr: [1,2,3,4], pre: {(s:Int) in return s>2})

//隐式闭包
class city{
    let cityName:String
    var country:Country
    init(cityName:String,country: Country) {
        self.cityName = cityName
        self.country = country
    }
    
}

class Country{
    let countryName:String
    var capitalCity:city!
    
    init(countryName:String,capitalCity:String) {
        self.countryName = countryName
        self.capitalCity = city(cityName: capitalCity, country: self)
    }
   
    func showinfo() {
        print("this is \(countryName)")
        print("the captial is \(capitalCity.cityName)")
    }
}

let china = Country(countryName: "China", capitalCity: "beijing")
china.showinfo()



//构造方法的作业，就是在交换类内外的变量值传递。
class  lovv{
    var question:String = "123"
    init(question:String) {
        print(self.question)
        print(question)
        self.question = question
    }
    
    func show()  {
        print(question)
        
    }
    
}
var  love = lovv(question: "asd")
love.show()




//集合
var sadn = "hello"
(sadn as NSString).range(of: "l").location
var skill = 0
var skilla: Set<Int> = [12,21,34,43]
var sj = Set<Int>()
if var skill = skilla.remove(21){
    print("asdasdad")
}
var skillb:Set<Int> = [12,2,3,4]
var skillc:Set<Int> = [21,24,4,3]
skilla.union(skillb)





































































































































































































































































