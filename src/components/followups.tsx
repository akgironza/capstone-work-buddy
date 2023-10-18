import { api } from "~/utils/api";

export default function FollowUps() {
  const { data } = api.tasks.getAllFollowUps.useQuery();
  //console.log(data)

  return (
    <div className="border border-amber-700">
      {data?.map((followUp) => (<div key={followUp.id}>{followUp.task}</div>))}
    </div>
  );
}