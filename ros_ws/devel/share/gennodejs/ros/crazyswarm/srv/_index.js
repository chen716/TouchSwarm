
"use strict";

let StartTrajectory = require('./StartTrajectory.js')
let UploadTrajectory = require('./UploadTrajectory.js')
let GoTo = require('./GoTo.js')
let UpdateParams = require('./UpdateParams.js')
let Land = require('./Land.js')
let NotifySetpointsStop = require('./NotifySetpointsStop.js')
let SetGroupMask = require('./SetGroupMask.js')
let Takeoff = require('./Takeoff.js')
let Stop = require('./Stop.js')

module.exports = {
  StartTrajectory: StartTrajectory,
  UploadTrajectory: UploadTrajectory,
  GoTo: GoTo,
  UpdateParams: UpdateParams,
  Land: Land,
  NotifySetpointsStop: NotifySetpointsStop,
  SetGroupMask: SetGroupMask,
  Takeoff: Takeoff,
  Stop: Stop,
};
