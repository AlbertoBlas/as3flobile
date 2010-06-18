/**
 * <p>Original Author: toddanderson</p>
 * <p>Class File: IScrollListContainer.as</p>
 * <p>Version: 0.1</p>
 *
 * <p>Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:</p>
 *
 * <p>The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.</p>
 *
 * <p>THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.</p>
 *
 * <p>Licensed under The MIT License</p>
 * <p>Redistributions of files must retain the above copyright notice.</p>
 */
package com.custardbelly.as3flobile.view.list
{
	import com.custardbelly.as3flobile.view.list.layout.IScrollListLayout;
	import com.custardbelly.as3flobile.view.list.renderer.IScrollListRenderer;
	import com.custardbelly.as3flobile.view.viewport.context.IScrollViewportContext;
	
	import flash.geom.Point;
	import flash.geom.Rectangle;
	
	/**
	 * IScrollListContainer is a list of data pbjects represented as IScrollListRenderer instances. 
	 * @author toddanderson
	 */
	public interface IScrollListContainer
	{
		/**
		 * Returns the IScrollListRenderer instance that resides at the elemental index within the list.
		 * @param index int
		 * @return IScrollListRenderer
		 */
		function getRendererAt( index:int ):IScrollListRenderer;
		
		/**
		 * Returns the list of IScrollListRenderers. 
		 * @return Vector.<IScrollListRenderer>
		 */
		function get renderers():Vector.<IScrollListRenderer>;
		/**
		 * Returns the amount of IScrollListRenderers in the list. 
		 * @return int
		 */
		function get rendererAmount():int;
		
		/**
		 * Returns the current scroll position of the list container. 
		 * @return Point
		 */
		function get scrollPosition():Point;
		
		/**
		 * Accessor/Modifier for the rectangular scroll area of the container. 
		 * @return Rectangle
		 */
		function get scrollRect():Rectangle;
		function set scrollRect( value:Rectangle ):void;
		
		/**
		 * Accessor/Modifier for the action delegate notified of change in properties. 
		 * @return IScrollListDelegate
		 */
		function get delegate():IScrollListDelegate;
		function set delegate( value:IScrollListDelegate ):void;
		
		/**
		 * Accessor/Modifier for the layout manager for the item renderers in the list. 
		 * @return IScrollListLayout
		 */
		function get layout():IScrollListLayout;
		function set layout( value:IScrollListLayout ):void;
		
		/**
		 * Accessor/Modifier for the viewport context that manages user gestures and animation of display. 
		 * @return IScrollViewportContext
		 */
		function get scrollContext():IScrollViewportContext;
		function set scrollContext( value:IScrollViewportContext ):void;
		
		/**
		 * Accessor/Modifier for the item renderer instance to represent the data. 
		 * @return String The fully qualified class name of the item renderer.
		 */
		function get itemRenderer():String;
		function set itemRenderer( value:String ):void;
		
		/**
		 * Accessor/Modifier of the selected item within the list from the data provided. This is not the selected item renderer instance. 
		 * @return Object
		 */
		function get selectedItem():Object;
		function set selectedItem( value:Object ):void;
		
		/**
		 * Accessor/Modifier for the selected index within the list. 
		 * @return int
		 */
		function get selectedIndex():int;
		function set selectedIndex( value:int ):void;
		
		/**
		 * Accessor/Modifier for an Array of object data that is interpreted visually as IScrollListRenderer instances. 
		 * @return Array
		 */
		function get dataProvider():Array;
		function set dataProvider( value:Array ):void;
	}
}