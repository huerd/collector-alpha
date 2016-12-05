var HtmlWebpackPlugin = require('html-webpack-plugin');
var webpack = require('webpack');
var HTMLWebpackPluginConfig = new HtmlWebpackPlugin({
  template: __dirname + '/app/index.html',
  filename: 'index.html',
  inject: 'body'
});

module.exports = {
  entry: [
    './app/index.js'
  ],
  output: {
    path: __dirname + '/dist',
    filename: "index_bundle.js",
    chunkFilename: 'test.chunk.js'
  },
  module: {
    loaders: [
      {test: /\.css$/, loader: "style-loader!css-loader" },
      {test: /\.js$/, exclude: /node_modules/, loader: "babel-loader"},
      {
        test: /\.(jpe?g|png|gif|svg)$/i,
        loaders: [
            'file?hash=sha512&digest=hex&name=[hash].[ext]',
            'image-webpack?bypassOnDebug&optimizationLevel=7&interlaced=false'
        ]
    }

    ]
  },
  plugins: [
    HTMLWebpackPluginConfig,
    new webpack.optimize.CommonsChunkPlugin('common.js')
  ]
};
