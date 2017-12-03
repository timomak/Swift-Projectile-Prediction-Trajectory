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
  let YpointPosition = initialPosition.y + initialVelocity * time * sin(angle1) - (0.5 * gravity) * pow(time,2)
  let XpointPosition = initialPosition.x + initialVelocity * time * cos(angle1)
  let predictionPoint = CGPoint(x: XpointPosition, y: YpointPosition)
  return predictionPoint
}

/* 
Swift is based on radiants instead of degrees. Use the following code to convert radiants to degrees.
*/

func radToDeg(_ radian: Double) -> CGFloat {
  return CGFloat(radian * 180.0 / M_PI)
}

