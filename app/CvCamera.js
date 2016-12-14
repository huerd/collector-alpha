// MapView.js
import React from 'react';
import {
    requireNativeComponent,
    NativeModules,
    View,
    StatusBar,
    UIManager,
    Dimensions,
    StyleSheet
} from 'react-native';

console.log(UIManager);
console.log(NativeModules);

//var imageViewConstants = UIManager.imageView;
//var cameraViewConstants = NativeModules.cvCameraManager;

class CvCamera extends React.Component {
    render() {
        return (
            <View style = {styles.container}>
              <StatusBar hidden={true}/>
              <RCTcvCamera {...this.props} style={styles.constants}/>
            </View>
    );
  }
}

CvCamera.propTypes = {

};

var styles = StyleSheet.create({
  container: {
    flex: 1,
  //  height: 100,
//    width: 100
  //  justifyContent: 'flex-start',
  //  alignItems: 'flex-start',
  //  backgroundColor: '#F5FCFF',

},
  constants: {
    height: Dimensions.get('window').height,
    width: Dimensions.get('window').width
    //height: imageViewConstants.ComponentHeight,
    //width: imageViewConstants.ComponentWidth
  }
});

var RCTcvCamera = requireNativeComponent('cvCamera', CvCamera);


module.exports = CvCamera;
