const express = require("express")
const app = express()

app.use(express.json())

app.get("/", (req, res) => {
  res.send("DevSecOps Lab Running")
})

app.get("/user", (req, res) => {
  const name = req.query.name
  res.send("Hello " + name)
})

app.get("/eval", (req, res) => {
  const code = req.query.code
  eval(code)
  res.send("Executed")
})

app.listen(3000, () => {
  console.log("Server running on port 3000")
})
