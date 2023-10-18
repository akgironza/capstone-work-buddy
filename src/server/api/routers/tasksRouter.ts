import { z } from "zod";

import { createTRPCRouter, publicProcedure } from "~/server/api/trpc";

export const tasksRouter = createTRPCRouter({
  // hello: publicProcedure
  //   .input(z.object({ text: z.string() }))
  //   .query(({ input }) => {
  //     return {
  //       greeting: `Hello ${input.text}`,
  //     };
  //   }),
  getAllTodos: publicProcedure.query(({ ctx }) => {
    return ctx.db.todo.findMany()
  }),
  getAllFollowUps: publicProcedure.query(({ ctx }) => {
    return ctx.db.followUp.findMany()
  }),
  getAllUnplannedAsks: publicProcedure.query(({ ctx }) => {
    return ctx.db.unplannedAsk.findMany()
  }),
  getAllAccomplishments: publicProcedure.query(({ ctx }) => {
    return ctx.db.accomplishment.findMany()
  })
});

// export type TasksRouter = typeof tasksRouter; 