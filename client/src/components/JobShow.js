import axios from 'axios';
import React, {useState, useEffect} from 'react';
import { useParams, useNavigate } from 'react-router-dom';
import JobForm from "./JobForm"

const JobShow = () => {
    const [job, setJob] = useState("");
    const navigate = useNavigate();
    const params = useParams();
    const [showEdit, setShowEdit] = useState(false);
  
    useEffect(() => {
      getJob();
    }, []);
  
    const getJob = async () => {
      try {
        let data = await axios.get(`/api/jobs/${params.id}`);
        setJob(data.data);
      } catch (err) {
        alert("Error Occurred Getting Job");
      }
    };
    const deleteJob = async () => {
      await axios.delete(`/api/jobs/${params.id}`);
      navigate("/jobs");
    };
    return(
      <div>
         <h3> {job.title}</h3>
         <p>At {job.company}</p>
         <p>Annual Salary: ${job.salary}</p>
         <button onClick={() => setShowEdit(!showEdit)}>
            {showEdit ? "Hide" : "Update"}
            </button>
         <button onClick={()=>deleteJob()} >Delete</button>
         {showEdit && <JobForm />}
      </div>
    );
  }

export default JobShow;