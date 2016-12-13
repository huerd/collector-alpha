// MapView.js
import React from 'react';
import { requireNativeComponent,
        NativeModules,
        View,
        UIManager,
        StyleSheet} from 'react-native';

console.log(UIManager);
console.log(NativeModules);

var imageViewConstants = UIManager.imageView.constants;

console.log(requireNativeComponent);

class ImageView extends React.Component {
  render() {
    return (
      <View style={styles.container}>
        <RCTImage {...this.props}
          style={styles.constants} />
      </View>
    );
  }
}

ImageView.propTypes = {
  /**
   * When this property is set to `true` and a valid camera is associated
   * with the map, the camera’s pitch angle is used to tilt the plane
   * of the map. When this property is set to `false`, the camera’s pitch
   * angle is ignored and the map is always displayed as if the user
   * is looking straight down onto it.
   */
  pitchEnabled: React.PropTypes.bool,
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
    //height: imageViewConstants.ComponentHeight,
    //width: imageViewConstants.ComponentWidth
  }
});

var RCTImage = requireNativeComponent('imageView', ImageView);

module.exports = ImageView;
