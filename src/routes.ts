import {prisma}  from "./index";
import { Router, Response, Request } from "express";

export const router = Router();

router.post('/users', async (req: Request, res: Response) => {
  const {body} = req;
  
  const usersAlreadyExist = await prisma.users.findFirst({
    where: {
      username: body.username
    },
  });

  if (usersAlreadyExist) {
    return res.status(400).json({message: "user already exist"});
  }

  await prisma.users.create({
    data: {
      username: body.username,
      password: body.password
    }  
  })
});