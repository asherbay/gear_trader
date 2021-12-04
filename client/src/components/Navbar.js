import {Link} from "react-router-dom"
import React from "react"
const Navbar = () => {
    return (
        <div className='navbar'>
            <Link className='navlinkText' to="/">Home</Link>
            <Link className='navlinkText' to="/about">About</Link>
            <Link  className='navlinkText' to="/articles">Articles</Link>
            <Link  className='navlinkText' to="/jobs">Jobs</Link>
        </div>

    );
};


export default Navbar;