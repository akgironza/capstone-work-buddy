import Head from "next/head";
import Link from "next/link";
import { date } from "zod";
import FollowUps from "~/components/followups";
import Todos from "~/components/todos";
import UnplannedAsks from "~/components/unplannedasks";
import { tasksRouter } from "~/server/api/routers/tasksRouter";

import { api } from "~/utils/api";

export default function Home() {
  const { data } = api.tasks.getAllTodos.useQuery();
  //console.log(data)

  return (
    <>
    <Head>
    <title>Work Buddy</title>
    {/* <meta name="description" content="Work Buddy task tracker" /> */}
    {/* <link rel="icon" href="/favicon.ico" /> */}
    </Head>
    <h1>Work Buddy</h1>
    <Todos/>
    <FollowUps/>
    <UnplannedAsks/>
    </>
  );
}