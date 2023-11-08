# Requête POST avec express

## Server

```bash
npm i body-parser
```

```ts
import bodyParser from "body-parser"

const app = express()
app.use(bodyParser.json())

interface IMaRequetBody {
  name: string
}

app.post("/send-name", (req: Request<IMaRequetBody>, res) => {
  const name = req.body.name
  console.log(name)
  res.json({ name: name })
})
```

## Client

```ts
async function init() {
  const response = await fetch("http://localhost:3030/send-name", {
    headers: new Headers({
      "Content-Type": "application/json",
    }),
    method: "POST",
    body: JSON.stringify({
      name: "John",
    }),
  })
  console.log(response)
  const data = await response.json()
  console.log(data)
}

init()
```
