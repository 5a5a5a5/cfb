const express=require("express");
const router=express.Router();
const pool=require("../pool");
//one
router.get("/forum",(req,res)=>{
  var sql="SELECT * FROM `forum`";
  pool.query(sql,(err,result)=>{
    res.send(result);
  })
})

router.get("/active",(req,res)=>{
  var sql="SELECT * FROM `active`";
  pool.query(sql,(err,result)=>{
    res.send(result);
  })
})

router.get("/swiper",(req,res)=>{
  var sql="SELECT * FROM `swiper` WHERE p_class=?";
  var n=req.query.p_class
  pool.query(sql,[n],(err,result)=>{
    res.send(result);
  })
})

router.get("/list",(req,res)=>{
  var sql="SELECT * FROM `musiclist` WHERE title=?";
  var str=req.query.title;
  pool.query(sql,[str],(err,result)=>{
    res.send(result);
  })
})

router.get("/rank",(req,res)=>{
  var sql="SELECT * FROM `ranklist`";
  var str=req.query.title;
  pool.query(sql,[str],(err,result)=>{
    res.send(result);
  })
})
router.get("/music",(req,res)=>{
  var sql="SELECT * FROM `music` WHERE m_id=?";
  var m_id=req.query.m_id;
  pool.query(sql,[m_id],(err,result)=>{
    res.send(result);
  })
})

router.get("/musiclist",(req,res)=>{
  var sql="SELECT * FROM `music`";
  pool.query(sql,(err,result)=>{
    res.send(result);
  })
})

router.get("/selectlist",(req,res)=>{
  var m_name=req.query.m_name;
  var auther=req.query.auther;
  var sql1="%"+m_name+"%";
  var sql2="%"+auther+"%";
  var sql=`SELECT * FROM music WHERE m_name LIKE '${sql1}' OR auther LIKE '${sql2}'`;
  pool.query(sql,(err,result)=>{
    res.send(result);
  })
})

module.exports=router;