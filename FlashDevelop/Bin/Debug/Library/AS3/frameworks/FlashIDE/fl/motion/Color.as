﻿package fl.motion
{
	import fl.motion.*;
	import flash.display.*;
	import flash.geom.ColorTransform;

	/**
	 * The Color class extends the Flash Player ColorTransform class,
	 */
	public class Color extends ColorTransform
	{
		/**
		 * @private
		 */
		private var _tintColor : Number;
		/**
		 * @private
		 */
		private var _tintMultiplier : Number;

		/**
		 * The percentage of brightness, as a decimal between <code>-1</code> and <code>1</code>. 
		 */
		public function get brightness () : Number;
		/**
		 * @private (setter)
		 */
		public function set brightness (value:Number) : void;
		/**
		 * The tinting color value in the 0xRRGGBB format.
		 */
		public function get tintColor () : uint;
		/**
		 * @private (setter)
		 */
		public function set tintColor (value:uint) : void;
		/**
		 * The percentage to apply the tint color, as a decimal value between <code>0</code> and <code>1</code>.
		 */
		public function get tintMultiplier () : Number;
		/**
		 * @private (setter)
		 */
		public function set tintMultiplier (value:Number) : void;

		/**
		 * Constructor for Color instances.
		 */
		function Color (redMultiplier:Number = 1.0, greenMultiplier:Number = 1.0, blueMultiplier:Number = 1.0, alphaMultiplier:Number = 1.0, redOffset:Number = 0, greenOffset:Number = 0, blueOffset:Number = 0, alphaOffset:Number = 0);
		/**
		 * Sets the tint color and amount at the same time.
		 */
		public function setTint (tintColor:uint, tintMultiplier:Number) : void;
		/**
		 * @private
		 */
		private function deriveTintColor () : uint;
		/**
		 * Creates a Color instance from XML.
		 */
		public static function fromXML (xml:XML) : Color;
		/**
		 * @private
		 */
		private function parseXML (xml:XML = null) : Color;
		/**
		 * Blends smoothly from one ColorTransform object to another.
		 */
		public static function interpolateTransform (fromColor:ColorTransform, toColor:ColorTransform, progress:Number) : ColorTransform;
		/**
		 * Blends smoothly from one color value to another.
		 */
		public static function interpolateColor (fromColor:uint, toColor:uint, progress:Number) : uint;
	}
}