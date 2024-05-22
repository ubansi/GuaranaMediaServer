import express from 'express'
const app: express.Express = express()
// app.get("/", (req:express.Request, res:express.Response)=>{
//     res.send("こんにちは");
// })
app.use(express.static('public'));
app.listen(3000,()=>{
    console.log('ポート3000番で起動しました。')
})

