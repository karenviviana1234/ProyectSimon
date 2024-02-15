import  express  from "express"

const router = express.Router()

router.get('/', (_req, res) => {
    res.send('bienvenido a las alarmmas')
})

router.post('/', (_req, res) => {
    res.send('poner una alarma')
})

export default router