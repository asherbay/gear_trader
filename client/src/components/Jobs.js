import React, { useState, useEffect } from "react";
import { Link } from "react-router-dom"
import axios from "axios";

const Jobs = () => {
    const [jobs, setJobs] = useState([])
    useEffect(()=>{
        getJobs()
    }, [])

    const getJobs = async () => {
        try {
            let data = await axios.get("/api/jobs")
            setJobs(data.data)
        } catch (err) {
            alert("Error Occurred during getJobs()")
        }
    }
    const renderJobs = () => {
        return jobs.map((job) => {
            return(
                <div>
                    <h3>{job.title}</h3>
                    <p>{job.company}</p>
                    <p>$ {job.salary}</p>
                    <Link to={`/jobs/${job.id}`} state={{ job }}><button>View</button></Link>
                </div>
        )}
    )}
    return (
        <div>
            <h1>Jobs</h1>
            <Link to={"/jobs/new"}><button>Post a New Job</button></Link>
            {renderJobs()}
        </div>

    )
}


export default Jobs;