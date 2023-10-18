// import Link from "next/link";
// import { date } from "zod";
// import { tasksRouter } from "~/server/api/routers/tasksRouter";

import { api } from "~/utils/api";

export default function Todos() {
  const { data } = api.tasks.getAllTodos.useQuery();
  //console.log(data)

  return (
    <div className="border border-amber-700">
      {data?.map((todo) => (<div key={todo.id}>{todo.task}</div>))}
    </div>
  );
}