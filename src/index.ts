import express from 'express'
import alarmaRouter from './routes/alarma'

const app = express()

app.use(express.json())

const PORT = 3000 

app.get('/ping', (_req, res) => {
    console.log('someone pinged here!!')
    res.send('pong')
})

app.use('/api/alarma', alarmaRouter)

app.listen(PORT, () => {
    console.log('server running on port ${PORT}')
})