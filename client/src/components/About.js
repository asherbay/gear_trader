import { Link } from "react-router-dom";

const About = () => {
    return (
        <div className='about-page'>
            <div>
            <h1 className='page-header'>All About Gear Trader</h1>
            <p>Gear Trader was created with adventure in mind. Money should 
                never be an obstacle to enjoying the outdoors. We wanted to give 
                adventurers a chance to earn some cash for gear they don't need and 
                grab some great gear for a low price. Spend more time in nature and 
                less time worrying about how to get there.</p>
                <Link className='button-24' to={`/categories/`}>Explore Gear</Link>
                <h3 className='front-page-h2'>While we're at it...</h3>
                <p>Since outdoors lovers far and wide are searching for more opportunities to get outside, Gear Trader offers a job listing for outdoors-centric positions. Check them out and apply today, or post your job opening. </p>
                <Link className='button-24' to={`/jobs/`}>View Jobs</Link>
            </div>
            <hr/>
            <div >
                <h2 className='front-page-h2'>Who Are We?</h2>
                <div className= 'item-row'>
                    <div className='about-person-container'>
                        <h3 className='about-title'>John: Tech Pioneer</h3>
                        <p>He's the man with the plan who makes Gear Trader work behind the scenes. When he's not at his computer, John loves skiing and off-roading.</p>
                    </div>
                    <div className='about-person-container'>
                        <h3 className='about-title'>Asher: Problem Solver</h3>
                        <p>If you've run into a bug, Asher can squash it fast. He's new to our team but he's a veteran trail runner and hiker.</p>
                    </div>
                    <div className='about-person-container'>
                        <h3 className='about-title'>Madeline: Format and Function</h3>
                        <p>Expert at making things look great and function how you'd like them, Madeline makes Gear Trader shine. She loves to backpack and rock climb in her off time.</p>
                    </div>
                    <div className='about-person-container'>
                        <h3 className='about-title'>Michael: Road Runner, Change Maker</h3>
                        <p>Michael is Gear Trader's resident writer and strategist. He wants you to know exactly what you're doing when it comes to buying gear. A marathon runner himself, Michael can relate to his favorite character, the Road Runner. </p>
                    </div>
                </div>
            </div>
        </div>

    )
}
export default About;