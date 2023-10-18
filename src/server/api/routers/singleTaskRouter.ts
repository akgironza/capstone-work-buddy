// import { z } from "zod";

// import { createTRPCRouter, publicProcedure } from "~/server/api/trpc";

// export const groupTasksRouter = createTRPCRouter({
//   getAllTodos: publicProcedure.query(({ ctx }) => {
//     return ctx.db.todo.findMany()
//   }),
//   getAllFollowUps: publicProcedure.query(({ ctx }) => {
//     return ctx.db.followUp.findMany()
//   }),
//   getAllUnplannedAsks: publicProcedure.query(({ ctx }) => {
//     return ctx.db.unplannedAsk.findMany()
//   }),
//   getAllAccomplishments: publicProcedure.query(({ ctx }) => {
//     return ctx.db.accomplishment.findMany()
//   })
// });
