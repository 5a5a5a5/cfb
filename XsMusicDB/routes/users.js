const express=require("express");
const router=express.Router();
const pool=require("../pool");
router.post("/login",(req,res)=>{
    var uname=req.body.uname;
    var upwd=req.body.upwd;
    var sql="SELECT * FROM `user` WHERE uname=? AND upwd=?";
    pool.query(sql,[uname,upwd],(error,result)=>{
        if(result.length>0){
            res.send({code:"1",msg:result[0].uimg})
        }else{
            res.send({code:"-1"})
        }
    })
})
router.post("/register",(req,res)=>{
    var phone=req.body.phone;
    var upwd=req.body.upwd;
    var sql="SELECT * FROM `user` WHERE phone=?";
    pool.query(sql,[phone],(error,result)=>{
        if(result.length>0){
            res.send({code:"-2",msg:"手机号已注册"})
        }else{
            var sql="INSERT INTO `user`(`uid`, `uname`, `upwd`, `email`, `phone`, `reg_date`, `attention`, `uimg`) VALUES (null,?,?,'',?,now(),'','http://localhost:3000/image/avatar_1.png')";
            pool.query(sql,[phone,upwd,phone],(error,result)=>{
                if(result.affectedRows>0){
                    res.send({code:"1"})
                }else{
                    res.send({code:"-1"})
                }
            })
        }
    })
    
})

router.post("/updata",(req,res)=>{
    var phone=req.body.phone;
    var upwd=req.body.upwd;
    var sql="UPDATE user SET upwd=? WHERE phone=?";
    pool.query(sql,[upwd,phone],(error,result)=>{
        if(result.affectedRows>0){
            res.send({code:"1"})
        }else{
            res.send({code:"-1"})
        }
    })
})

module.exports=router;