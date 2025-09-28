import express from "express";
import cors from 'cors'

const app = express();
app.use(express.json());
app.use(cors())

//
import authRoutes from "./routes/auth.js";
app.use("/api/auth", authRoutes);
//
import userRoutes from "./routes/users.js";
app.use("/api/users", userRoutes);

app.get('*', (req, res) => res.send('404 NOT FOUND!!!'))

app.listen(4000, () => {
  console.log("Connected!");
});


