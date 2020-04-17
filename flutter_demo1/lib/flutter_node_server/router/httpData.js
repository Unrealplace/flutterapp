const express = require("express");
const router = express();

router.get("/",(req,res)=>{
    var data = {
        "code":"0",
        "message":"sucess",
        "data":[
            {
                "name":"李二狗",
            },
            {
                "name":"李二狗",
            },
            {
                "name":"李二狗",
            }
        ]
    }
    res.send(data);
});

module.exports = router;