/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */
import {NativeModules} from 'react-native';
import React, {Component} from 'react';
import {
    AppRegistry,
    Dimensions,
    TouchableHighlight,
    StyleSheet,
    Text,
    View
} from 'react-native';

import ImageView from './app/ImageView';
import CvCamera from './app/CvCamera';
import Camera from 'react-native-camera';

console.log(CvCamera);
/*
// Initialise opencv using native modules
var opencv = NativeModules.NativeCV;

opencv.cv_basicTest("test");

opencv.cv_callbackTest(10, (error, output) => {
    if (error) {
        console.log(error);
    } else {
        console.log(output);
    }
})

*/

export default class opencv_test extends Component {
    render() {
        return (
            <View style={styles.container}>
                <CvCamera/>
            </View>
        );
    }

    takePicture() {
        this.camera.capture().then((data) => console.log(data)).catch(err => console.error(err));
    }

}

const styles = StyleSheet.create({
    container: {
        flex: 1,
    //    justifyContent: 'center',
        alignItems: 'center',
        backgroundColor: '#F5FCFF'
    },
    welcome: {
        fontSize: 20,
        textAlign: 'center',
        margin: 10
    },
    instructions: {
        textAlign: 'center',
        color: '#333333',
        marginBottom: 5
    },
    preview: {
        flex: 1,
        justifyContent: 'flex-end',
        alignItems: 'center',
        height: Dimensions.get('window').height,
        width: Dimensions.get('window').width
    },
    capture: {
        flex: 0,
        backgroundColor: '#fff',
        borderRadius: 5,
        color: '#000',
        padding: 10,
        margin: 40
    }
});

AppRegistry.registerComponent('opencv_test', () => opencv_test);
