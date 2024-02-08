import dotenv from 'dotenv';

dotenv.config({path: './config.env'});

console.log(process.env.DB_USERNAME);
console.log(process.env.DB_PASS);


export const PORT = 5000;
export const mongoDBURL =`mongodb+srv://${process.env.DB_USERNAME}:${process.env.DB_PASS}@cluster0.n7msjwt.mongodb.net/?retryWrites=true&w=majority`;
