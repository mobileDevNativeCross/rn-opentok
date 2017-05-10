package com.seemydoc;

import android.view.View;

import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.react.uimanager.ReactShadowNode;
import com.facebook.react.uimanager.SimpleViewManager;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.ViewManager;
import com.facebook.react.views.image.ReactImageView;

/**
 * Created by gregorygl on 04.05.17.
 */

//public class PublisherViewManager extends SimpleViewManager<ReactImageView> {
//    public static final String REACT_CLASS = "RCTImageView";
//
//    @Override
//    public String getName() {
//        return REACT_CLASS;
//    }
//
//    @Override
//    public ReactImageView createViewInstance(ThemedReactContext context) {
//        return new ReactImageView(context, Fresco.newDraweeControllerBuilder(), mCallerContext);
//    }
//
//}

public final class RNTPublisherViewManager extends ViewManager {

    /* package */ static final String REACT_CLASS ="RNTPublisherView";

    private static final int[] TMP_INT_ARRAY = new int[2];

    private static final int CMD_HOTSPOT_UPDATE = 1;
    private static final int CMD_SET_PRESSED = 2;

    @Override
    public String getName() {
        return REACT_CLASS;
    }

    @Override
    public ReactShadowNode createShadowNodeInstance() {
        return null;
    }

    @Override
    public Class getShadowNodeClass() {
        return null;
    }

    @Override
    protected View createViewInstance(ThemedReactContext reactContext) {
        return null;
    }

    @Override
    public void updateExtraData(View root, Object extraData) {

    }
}
