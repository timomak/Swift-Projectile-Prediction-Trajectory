//  Projectile-Prediction-Trajectory.swift
//  Projectile Trajectory Prediction formula
//
//  Created by Michael Luobier & Timofey Makhlay on 12/2/17.
//  Copyright © 2017 timofey makhlay. All rights reserved.

/*
For the code to be functional, you must provide the following:
Initial Position (meters)
time (seconds)
angle (degrees)
gravity (meters / second)
Initial Velocity (meters / second)
*/

func projectilePredictionPath (initialPosition: CGPoint, time: CGFloat, angle1: CGFloat, gravity: CGFloat, initialVelocity: CGFloat) -> CGPoint {
  // Find the Y coordiate position.
  let YpointPosition = initialPosition.y + initialVelocity * time * sin(angle1) - (0.5 * gravity) * pow(time,2)
  // Find the X coordinate position.
  let XpointPosition = initialPosition.x + initialVelocity * time * cos(angle1)
  // Creates a (x, y) coordinate point. 
  let predictionPoint = CGPoint(x: XpointPosition, y: YpointPosition)
  // Returns the coordinate (x, y) at a point in time.
  return predictionPoint
}

/* 
Swift is based on radians instead of degrees. Use the following code to convert radiants to degrees.
*/

func radToDeg(_ radian: Double) -> CGFloat {
  return CGFloat(radian * 180.0 / M_PI)
}

