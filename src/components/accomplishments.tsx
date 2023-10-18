import { api } from "~/utils/api";

export default function Accomplishments() {
  const { data } = api.tasks.getAllAccomplishments.useQuery();
  //console.log(data)

  return (
    <div className="border border-amber-700">
      {data?.map((accomplishment) => (<div key={accomplishment.id}>{accomplishment.task}</div>))}
    </div>
  );
}