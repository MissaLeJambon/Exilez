/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
params ["_trader"];

// We can be sure that there is at least one animation, since
// we only attach the animation event handler when there are animations
private _animations = _trader getVariable ["ExileAnimations", []];

_trader switchMove (selectRandom _animations);