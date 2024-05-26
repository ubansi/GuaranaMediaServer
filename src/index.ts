import express from 'express'
import { PrismaClient } from '@prisma/client';

const app: express.Express = express()
const prisma =  new PrismaClient();

// static front end
app.use(express.static('public'));

// API
app.get('/api/mangas', async (req, res) => {

    const mangas = await prisma.manga.findMany()

    res.json(mangas)
})

app.listen(3000, () => {
    console.log('ポート3000番で起動しました。')
})

