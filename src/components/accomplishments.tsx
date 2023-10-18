import { object } from "zod";
import { api } from "~/utils/api";


export default function Accomplishments() {
  const { data } = api.tasks.getAllAccomplishments.useQuery();
  console.log(data)

  return (
    <>
    <div className="border border-amber-700">
    {data?.map((accomplishment) => 
            (<div key={accomplishment.id}>{accomplishment.task}</div>))}
    </div>
    {/* <div className="border border-amber-700"> */}
    {/* <table className="border border-black">
        <div className="text text-2xl">
        <caption>
            {data.task}
        </caption>
        </div>
        <thead>
            <tr>
                <th>Accomplishment</th>
            </tr>
        </thead>
        <tbody>
            <tr>
        {data?.map((accomplishment) => 
            (<td key={accomplishment.id}>{accomplishment.task}</td>))}    
            </tr>
        </tbody>
    </table> */}

    </>
  );
}

// export default Accomplishments;