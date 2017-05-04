using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Com.Reactlibrary.RNOpentok
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNOpentokModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNOpentokModule"/>.
        /// </summary>
        internal RNOpentokModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNOpentok";
            }
        }
    }
}
