import React from "react";
import { Link } from "react-router-dom";

const Home = () => {
    return (
        <div>
            <div className="front-page-img" >
                <h1 className='front-page-h1' >Gear Trader</h1>
                <h2 className='front-page-h2'>Your home away from home for all things outdoors!</h2>
            </div>
            <div className='front_categories'>
                <img source='https://www.clipartmax.com/png/middle/220-2209526_free-png-black-tent-png-images-transparent-camp-icon-png.png' alt='tent icon'/>
                <h3 className='front-page-h3'>Gear for Sale</h3>
                <Link className='button-24' to={`/categories/`}>Explore Gear</Link>
            </div>
            <div className='work-img'>
                <h3 className='front-page-h3'>Work in the Outdoors</h3>
                <Link className='button-24' to={`/jobs/`}>View Jobs</Link>
            </div>
        </div>

    );
};

export default Home;