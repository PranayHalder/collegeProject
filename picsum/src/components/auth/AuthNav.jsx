 
import {React, useEffect, useState } from 'react'
import axios from 'axios'; 
import { NavLink, useLocation, useResolvedPath } from 'react-router-dom';
const AuthNav = () => {

 
  
   const [auth, setAuth] = useState({
      image:"",
      name:""
   });
    
   useEffect(()=> {
    const token = localStorage.getItem('token');
    if(token !== null)
    { 
     const config = {
       headers: { Authorization: `Bearer ${token}` }
     };
      axios.post('http://localhost/api/user.php',null,config).then((result)=>{
       if(result.data.message == 'success'){
             setAuth({image:result.data.image,name:result.data.name});
           
           }
      });
    }
   },[])

   const Icon =  (navData) => ( navData.isActive ? 'active' : 'link')

   
  
 return (
    <>
     <div  className="fixed top-0 left-0 h-screen w-20 flex flex-col justify-between 
                  bg-white dark:bg-gray-900 shadow-lg">
     
     <div className="sidebar-icon group items-start">
     <svg fill='#c00' height="38" width="38" viewBox="0 0 24 24" aria-hidden="true" aria-label="" role="img"><path d="M0 12c0 5.123 3.211 9.497 7.73 11.218-.11-.937-.227-2.482.025-3.566.217-.932 1.401-5.938 1.401-5.938s-.357-.715-.357-1.774c0-1.66.962-2.9 2.161-2.9 1.02 0 1.512.765 1.512 1.682 0 1.025-.653 2.557-.99 3.978-.281 1.189.597 2.159 1.769 2.159 2.123 0 3.756-2.239 3.756-5.471 0-2.861-2.056-4.86-4.991-4.86-3.398 0-5.393 2.549-5.393 5.184 0 1.027.395 2.127.889 2.726a.36.36 0 0 1 .083.343c-.091.378-.293 1.189-.332 1.355-.053.218-.173.265-.4.159-1.492-.694-2.424-2.875-2.424-4.627 0-3.769 2.737-7.229 7.892-7.229 4.144 0 7.365 2.953 7.365 6.899 0 4.117-2.595 7.431-6.199 7.431-1.211 0-2.348-.63-2.738-1.373 0 0-.599 2.282-.744 2.84-.282 1.084-1.064 2.456-1.549 3.235C9.584 23.815 10.77 24 12 24c6.627 0 12-5.373 12-12S18.627 0 12 0 0 5.373 0 12"></path></svg> 
     </div>
     <div>
      

     <NavLink to="/">
     <div className="sidebar-icon group ">
     <svg fill='#000000' viewBox="0 0 24 24" aria-hidden="true" className="h-[1.60rem] w-[1.60rem]"><g><path d="M22.46 7.57L12.357 2.115c-.223-.12-.49-.12-.713 0L1.543 7.57c-.364.197-.5.652-.303 1.017.135.25.394.393.66.393.12 0 .243-.03.356-.09l.815-.44L4.7 19.963c.214 1.215 1.308 2.062 2.658 2.062h9.282c1.352 0 2.445-.848 2.663-2.087l1.626-11.49.818.442c.364.193.82.06 1.017-.304.196-.363.06-.818-.304-1.016zm-4.638 12.133c-.107.606-.703.822-1.18.822H7.36c-.48 0-1.075-.216-1.178-.798L4.48 7.69 12 3.628l7.522 4.06-1.7 12.015z"></path><path d="M8.22 12.184c0 2.084 1.695 3.78 3.78 3.78s3.78-1.696 3.78-3.78-1.695-3.78-3.78-3.78-3.78 1.696-3.78 3.78zm6.06 0c0 1.258-1.022 2.28-2.28 2.28s-2.28-1.022-2.28-2.28 1.022-2.28 2.28-2.28 2.28 1.022 2.28 2.28z"></path></g></svg> 
    <span className="sidebar-tooltip group-hover:scale-100">
      Home
    </span>
     </div>
   
     </NavLink>


     
 
 


     <NavLink to="/user">
      

     <div className="sidebar-icon group">
     <svg viewBox="0 0 24 24" aria-hidden="true" className="h-[1.60rem] w-[1.60rem]"><g><path d="M12 11.816c1.355 0 2.872-.15 3.84-1.256.814-.93 1.078-2.368.806-4.392-.38-2.825-2.117-4.512-4.646-4.512S7.734 3.343 7.354 6.17c-.272 2.022-.008 3.46.806 4.39.968 1.107 2.485 1.256 3.84 1.256zM8.84 6.368c.162-1.2.787-3.212 3.16-3.212s2.998 2.013 3.16 3.212c.207 1.55.057 2.627-.45 3.205-.455.52-1.266.743-2.71.743s-2.255-.223-2.71-.743c-.507-.578-.657-1.656-.45-3.205zm11.44 12.868c-.877-3.526-4.282-5.99-8.28-5.99s-7.403 2.464-8.28 5.99c-.172.692-.028 1.4.395 1.94.408.52 1.04.82 1.733.82h12.304c.693 0 1.325-.3 1.733-.82.424-.54.567-1.247.394-1.94zm-1.576 1.016c-.126.16-.316.246-.552.246H5.848c-.235 0-.426-.085-.552-.246-.137-.174-.18-.412-.12-.654.71-2.855 3.517-4.85 6.824-4.85s6.114 1.994 6.824 4.85c.06.242.017.48-.12.654z"></path></g></svg>
    <span className="sidebar-tooltip group-hover:scale-100">
      Profile
    </span>
     </div>
     </NavLink>

     <NavLink to="subscription">
      

     <div className="sidebar-icon group">
     <svg viewBox="0 0 24 24" aria-hidden="true" className="h-[1.50rem] w-[1.50rem]"><g><path d="M19.75 22H4.25C3.01 22 2 20.99 2 19.75V4.25C2 3.01 3.01 2 4.25 2h15.5C20.99 2 22 3.01 22 4.25v15.5c0 1.24-1.01 2.25-2.25 2.25zM4.25 3.5c-.414 0-.75.337-.75.75v15.5c0 .413.336.75.75.75h15.5c.414 0 .75-.337.75-.75V4.25c0-.413-.336-.75-.75-.75H4.25z"></path><path d="M17 8.64H7c-.414 0-.75-.337-.75-.75s.336-.75.75-.75h10c.414 0 .75.335.75.75s-.336.75-.75.75zm0 4.11H7c-.414 0-.75-.336-.75-.75s.336-.75.75-.75h10c.414 0 .75.336.75.75s-.336.75-.75.75zm-5 4.11H7c-.414 0-.75-.335-.75-.75s.336-.75.75-.75h5c.414 0 .75.337.75.75s-.336.75-.75.75z"></path></g></svg>
    <span className="sidebar-tooltip group-hover:scale-100">
      Subscription
    </span>
     </div>
     </NavLink>

      <hr className='sidebar-hr' />

     
     

    <NavLink to="upload"  >
   <div className="sidebar-icon group">
   <svg viewBox="0 0 24 24" aria-hidden="true" className="h-[1.60rem] w-[1.60rem]"><g><circle cx="17" cy="12" r="1.5"></circle><circle cx="12" cy="12" r="1.5"></circle><circle cx="7" cy="12" r="1.5"></circle><path d="M12 22.75C6.072 22.75 1.25 17.928 1.25 12S6.072 1.25 12 1.25 22.75 6.072 22.75 12 17.928 22.75 12 22.75zm0-20C6.9 2.75 2.75 6.9 2.75 12S6.9 21.25 12 21.25s9.25-4.15 9.25-9.25S17.1 2.75 12 2.75z"></path></g></svg>
    <span className="sidebar-tooltip group-hover:scale-100">
      Upload
    </span>
     </div>
    </NavLink>
    </div>
    <div>
    </div>

    

    <img src={auth.image} className='sidebar-icon rounded-full object-contain h-12 w-12 border border-gray-200' /> 

                 


    
     </div> 
    </>
 )
}

 
export default AuthNav;