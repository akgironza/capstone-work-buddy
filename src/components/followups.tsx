import { api } from "~/utils/api";

export default function FollowUps() {
  const { data } = api.tasks.getAllFollowUps.useQuery();
  //console.log(data)

  return (
    <div className="my-6">
        <h2 className="text-2xl">Follow Ups</h2>
        <div className="border border-amber-700">
            {data?.map((followUp) => (<div key={followUp.id}>{followUp.task}</div>))}
      </div>
    </div>
  );
}