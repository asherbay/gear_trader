import React, { useState, useEffect } from "react";
import { Link } from "react-router-dom"
import axios from "axios";
import Job from "./Job"

const job1 = {id:1, title: "Bicycle Your Guide", company: "Escapes", salary: 54000}
const job2 = {id:2, title: "Running Footware Buyer", company: "Running Center", salary: 60000}
const job3 = {id:3, title: "Dog Walker", company: "Dogs, Dogs, Dogs", salary: 28000}

const Jobs = () => {
    const [jobs, setJobs] = useState([])
    const jobArr = [job1, job2, job3]
    useEffect(()=>{
        getJobs()
    }, [])

    const getJobs = () => {
        setJobs(jobArr)
    }
    const renderJobs = () => {
        return jobs.map((job) => {
            return(
                <div>
                    <h3>{job.title}</h3>
                    <p>{job.company}</p>
                    <p>$ {job.salary}</p>
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