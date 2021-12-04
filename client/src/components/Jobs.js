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
                <div  className='job-container'>
                    <div className='job-component-left'>
                    <h3>{job.title}</h3>
                    <p>{job.company}</p>
                    </div>
                    <div className='job-component-center'>
                    <p>Salary: ${job.salary}</p>
                    </div>
                    <div className='job-component-right'>
                    <Link className='button-24' to={`/jobs/${job.id}`} state={{ job }}>View</Link>
                    </div>
                </div>
        )}
    )}
    return (
        <div>
            <h1>Jobs</h1>
            <Link className='button-24' to={"/jobs/new"}>Post a New Job</Link>
            {renderJobs()}
        </div>

    )
}


export default Jobs;