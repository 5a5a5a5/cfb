const express=require("express");
const app=express();
const bodyParser = require('body-parser');
const cors=require("cors");
const main=require("./routes/main.js");
const sign=require("./routes/users.js")
app.use(cors({
    origin:["http://localhost:8080"],
    credentials:true
}))
app.listen(3000,()=>{
    console.log("创建成功");
});

app.use(express.static(__dirname+"/public"));
app.use(bodyParser.urlencoded({
    extended:false
}));
app.use("/main",main);
app.use("/sign",sign);
