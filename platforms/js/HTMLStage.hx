import js.Browser;
import js.html.Element;

using DisplayObjectHelper;

class HTMLStage extends NativeWidgetClip {
	public function new(width : Float, height : Float) {
		super();

		setWidth(width);
		setHeight(height);

		this.initNativeWidget();

		untyped nativeWidget.style['pointer-events'] = 'auto';
	}

	public function appendChild(child : Element) : Void {
		nativeWidget.appendChild(child);
	}

	public function insertBefore(child : Element, reference : Element) : Void {
		nativeWidget.insertBefore(child, reference);
	}

	public function removeElementChild(child : Element) : Void {
		if (child.parentElement == nativeWidget) {
			nativeWidget.removeChild(child);
		}
	}
}