import axios from "axios";
import React, { useState } from "react";
import { useParams, useNavigate, useLocation } from "react-router-dom";

const JobForm = () => {
    const location = useLocation();
    const { job } = location.state ? location.state : {};
    const [title, setTitle] = useState(job ? job.title : "");
    const [company, setCompany] = useState(job ? job.company : "");
    const [salary, setSalary] = useState(job ? job.salary : "");
    const params = useParams();
    const navigate = useNavigate();

    const handleSubmit = async (x) => {
        x.preventDefault()
        let data = {title, company, salary}
        if (params.id) {
            try {
                await axios.put(`/api/jobs/${params.id}`, data)
                navigate("/jobs")
            } catch (err) {
                alert("Error Occurred when Updating")
            }
        } else {
            try {
                await axios.post("/api/jobs", data)
                navigate("/jobs")
            }catch (err) {
                alert("Error Occurred when Creating")
            }
        }
    }
    return (
        <div>
            <h1>{params.id ? "" : "Add a New Job Posting"}</h1>
            <form onSubmit={handleSubmit}>
            <h3>Title</h3>
                <textarea
                    value={title}
                    onChange={(x) => { setTitle(x.target.value)}} />
            <h3>Company</h3>
                    <textarea
                    value={company}
                    onChange={(x) => { setCompany(x.target.value)}} />
            <h3>Annual Salary</h3>
                    <textarea
                    value={salary}
                    onChange={(x) => { setSalary(x.target.value)}} />
            <br />
            <button>Submit</button>
            </form>
        </div>
    )
}

export default JobForm; 