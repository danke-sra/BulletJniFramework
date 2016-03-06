/*
Bullet Continuous Collision Detection and Physics Library for Android NDK
Copyright (c) 2006-2009 Noritsuna Imamura  http://www.siprop.org/

This software is provided 'as-is', without any express or implied warranty.
In no event will the authors be held liable for any damages arising from the use of this software.
Permission is granted to anyone to use this software for any purpose,
including commercial applications, and to alter it and redistribute it freely,
subject to the following restrictions:

1. The origin of this software must not be misrepresented; you must not claim that you wrote the original software. If you use this software in a product, an acknowledgment in the product documentation would be appreciated but is not required.
2. Altered source versions must be plainly marked as such, and must not be misrepresented as being the original software.
3. This notice may not be removed or altered from any source distribution.
*/
package org.gearvrf.bullet.shape;

import org.gearvrf.bullet.interfaces.Shape;
import org.gearvrf.bullet.util.ShapeType;
import org.gearvrf.bullet.util.Vector3;

public class CylinderShape implements Shape {
	
	private static final int type = ShapeType.CYLINDER_SHAPE_PROXYTYPE;
	private long id;

	public final Vector3 halfExtents;
	
	public CylinderShape(Vector3 halfExtents) {
		this.halfExtents = halfExtents;
	}
	
	@Override
	public int getType() {
		return type;
	}

	@Override
	public long getID() {
		return id;
	}
	
	@Override
	public void setID(long id) {
		this.id = id;
	}
}
