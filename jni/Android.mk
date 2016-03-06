# /*
# Bullet Continuous Collision Detection and Physics Library for Android NDK
# Copyright (c) 2006-2009 Noritsuna Imamura  http://www.siprop.org/
# 
# This software is provided 'as-is', without any express or implied warranty.
# In no event will the authors be held liable for any damages arising from the use of this software.
# Permission is granted to anyone to use this software for any purpose,
# including commercial applications, and to alter it and redistribute it freely,
# subject to the following restrictions:
# 
# 1. The origin of this software must not be misrepresented; you must not claim that you wrote the original software. If you use this software in a product, an acknowledgment in the product documentation would be appreciated but is not required.
# 2. Altered source versions must be plainly marked as such, and must not be misrepresented as being the original software.
# 3. This notice may not be removed or altered from any source distribution.
# */
LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := bullet
LOCAL_C_INCLUDES := \
        $(LOCAL_PATH)/ \
        $(LOCAL_PATH)/BulletCollision/BroadphaseCollision \
        $(LOCAL_PATH)/BulletCollision/CollisionDispatch \
        $(LOCAL_PATH)/BulletCollision/CollisionShapes \
        $(LOCAL_PATH)/BulletCollision/Gimpact \
        $(LOCAL_PATH)/BulletCollision/NarrowPhaseCollision \
        $(LOCAL_PATH)/BulletDynamics/Character \
        $(LOCAL_PATH)/BulletDynamics/ConstraintSolver \
        $(LOCAL_PATH)/BulletDynamics/Dynamics \
        $(LOCAL_PATH)/BulletDynamics/Featurestone \
        $(LOCAL_PATH)/BulletDynamics/MLCPSolvers \
        $(LOCAL_PATH)/BulletDynamics/Vehicle \
        $(LOCAL_PATH)/BulletSoftBody \
        $(LOCAL_PATH)/LinearMath \
        $(LOCAL_PATH)/Bullet3Common \
        $(LOCAL_PATH)/Bullet3Dynamics \
        $(LOCAL_PATH)/Bullet3Dynamics/ConstraintSolver \
        $(LOCAL_PATH)/Bullet3Geometry \

LOCAL_CFLAGS := $(LOCAL_C_INCLUDES:%=-I%)
LOCAL_LDLIBS := -L$(SYSROOT)/usr/lib -ldl -lm -llog

FILE_LIST += $(wildcard $(LOCAL_PATH)/BulletCollision/BroadphaseCollision/*.cpp)
FILE_LIST += $(wildcard $(LOCAL_PATH)/BulletCollision/CollisionDispatch/*.cpp)
FILE_LIST += $(wildcard $(LOCAL_PATH)/BulletCollision/CollisionShapes/*.cpp)
FILE_LIST += $(wildcard $(LOCAL_PATH)/BulletCollision/Gimpact/*.cpp)
FILE_LIST += $(wildcard $(LOCAL_PATH)/BulletCollision/NarrowPhaseCollision/*.cpp)
FILE_LIST += $(wildcard $(LOCAL_PATH)/BulletDynamics/Character/*.cpp)
FILE_LIST += $(wildcard $(LOCAL_PATH)/BulletDynamics/ConstraintSolver/*.cpp)
FILE_LIST += $(wildcard $(LOCAL_PATH)/BulletDynamics/Dynamics/*.cpp)
FILE_LIST += $(wildcard $(LOCAL_PATH)/BulletDynamics/Featurestone/*.cpp)
FILE_LIST += $(wildcard $(LOCAL_PATH)/BulletDynamics/MLCPSolvers/*.cpp)
FILE_LIST += $(wildcard $(LOCAL_PATH)/BulletDynamics/Vehicle/*.cpp)
FILE_LIST += $(wildcard $(LOCAL_PATH)/BulletSoftBody/*.cpp)
FILE_LIST += $(wildcard $(LOCAL_PATH)/LinearMath/*.cpp)

LOCAL_SRC_FILES += $(FILE_LIST:$(LOCAL_PATH)/%=%)
LOCAL_SRC_FILES += bullet.cpp

include $(BUILD_SHARED_LIBRARY)
