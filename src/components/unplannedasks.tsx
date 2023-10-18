import { api } from "~/utils/api";

export default function UnplannedAsks() {
  const { data } = api.tasks.getAllUnplannedAsks.useQuery();
  //console.log(data)

  return (
    <div className="border border-amber-700">
      {data?.map((unplannedAsks) => (<div key={unplannedAsks.id}>{unplannedAsks.task}</div>))}
    </div>
  );
}