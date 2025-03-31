//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 
//This is the edge length of sumo map.
//<location netOffset="-680259.59,-5912673.43" convBoundary="0.00,-0.00,4149.11,2494.27" origBoundary="-6.291885,53.326357,-6.212017,53.475810" projParameter="+proj=utm +zone=29 +ellps=WGS84 +datum=WGS84 +units=m +no_defs"/>
package simulationDublin.simulations.DublinNet_v3;

import org.car2x.veins.base.modules.BaseWorldUtility;
import simulationdublin.mobile_MEC.ComplexNetwork;
import simulationdublin.mobile_MEC.ComplexNetwork_2;

network MultiMec_v3 extends ComplexNetwork
{
    parameters:
        double playgroundSizeX @unit(m); // x size of the area the nodes are in (in meters)
        double playgroundSizeY @unit(m); // y size of the area the nodes are in (in meters)
        double playgroundSizeZ @unit(m); // z size of the area the nodes are in (in meters)

    submodules:

//        world: BaseWorldUtility {
//            parameters:
//                playgroundSizeX = veins_eval_by_version(veins_omnetpp_buildnum(), "playgroundSizeX", 1525, "parent.playgroundSizeX");
//                playgroundSizeY = veins_eval_by_version(veins_omnetpp_buildnum(), "playgroundSizeY", 1525, "parent.playgroundSizeY");
//                playgroundSizeZ = veins_eval_by_version(veins_omnetpp_buildnum(), "playgroundSizeZ", 1525, "parent.playgroundSizeZ");
//                @display("p=51,388;i=misc/globe;is=s");
//        }



}
