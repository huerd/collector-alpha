import Home from './Components/Home';
import Main from './Components/Main';
import Form from './Containers/Form';

export default function getRoutes() {

  return [
    {
      path:'/',
      name:'home',
      getComponent(location, callback) {
        console.log('location: ' + location);
        callback(null, Home);
      }
    },
    {
      path: 'main',
      name:'main',
      getComponent(location, callback) {
        console.log('location: ' + location);
        callback(null, Main);
      }
    },
    {
      path: 'form',
      name:'form',
      getComponent(location, callback) {
        console.log('location: ' + location);
        callback(null, Form);
      }
    }


  ];
}
