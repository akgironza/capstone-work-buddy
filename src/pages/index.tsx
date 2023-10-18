import Head from "next/head";
import Link from "next/link";
import { date } from "zod";
import Accomplishments from "~/components/accomplishments";
import FollowUps from "~/components/followups";
import Todos from "~/components/todos";
import UnplannedAsks from "~/components/unplannedasks";
import { tasksRouter } from "~/server/api/routers/tasksRouter";

import { api } from "~/utils/api";

export default function Home() {
  // const { data } = api.tasks.getAllTodos.useQuery();
  //console.log(data)

  return (
    <>
      <Head>
      <title>Work Bestie</title>
      {/* <link rel="icon" href="/favicon.ico" /> */}
      </Head>
      <div className="flex justify-evenly space-x-80">
        <h1 className="text-3xl my-6 ">Work Bestie</h1>
        <h1 className="text-3xl my-6 ">Week: ##/##/## to ##/##/##</h1>
      </div>
    <Todos/>
    <FollowUps/>
    <UnplannedAsks/>
    <Accomplishments/>
    </>
  );
}