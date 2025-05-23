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

package simulationDublin.simulations.SPSim;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.networklayer.ipv4.RoutingTableRecorder;
import inet.node.ethernet.Eth10G;
import inet.node.inet.Router;
import inet.node.inet.StandardHost;
import simu5g.common.binder.Binder;
import simu5g.common.carrierAggregation.CarrierAggregation;
import simu5g.nodes.Upf;
import simu5g.nodes.mec.MECHost;
import simu5g.nodes.mec.MECOrchestrator.MecOrchestrator;
import simu5g.nodes.mec.UALCMP.UALCMP;
import simu5g.nodes.NR.gNodeB;
import simu5g.nodes.NR.NRUe;
import simu5g.nodes.backgroundCell.BackgroundCell;
import simu5g.world.radio.LteChannelControl;
import org.car2x.veins.subprojects.veins_inet.VeinsInetManager;
import org.car2x.veins.visualizer.roads.RoadsCanvasVisualizer;
import simu5g.nodes.mec.mobileMec.mobileUe;
import simu5g.nodes.mec.mobileMec.mmecHost;
import inet.visualizer.canvas.integrated.IntegratedCanvasVisualizer;

network StaticNodes
{
    
    parameters:
        double playgroundSizeX @unit(m); // x size of the area the nodes are in (in meters)
        double playgroundSizeY @unit(m); // y size of the area the nodes are in (in meters)
        double playgroundSizeZ @unit(m); // z size of the area the nodes are in (in meters)
        
        int numBgCells = default(0);
        @display("bgb=12191.01,9653.66");
        int numMecHosts = 100;

    submodules:
        veinsManager: VeinsInetManager {
            @display("p=98.73894,874.54486;is=s");
        }
        channelControl: LteChannelControl {
            @display("p=94.03709,37.614834;is=s");
        }
        routingRecorder: RoutingTableRecorder {
            @display("p=98.73894,263.30383;is=s");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=98.73894,409.0613;is=s");
        }
        binder: Binder {
            @display("p=98.73894,559.5206;is=s");
        }
        carrierAggregation: CarrierAggregation {
            @display("p=98.73894,705.27814;is=s");
        }
        upf: Upf {
            @display("p=6088.867,4813.8477");
        }
        bgCell[numBgCells]: BackgroundCell {
            @display("numMecHost\"p=249.795,577.39496;is=vl\";p=2482.579,1057.9172");
        }
        ue[0]: mobileUe {
            @display("p=4839.8687,403.3224");
        }
        mecOrchestrator: MecOrchestrator {
            @display("p=5308.243,3590.8704");
        }
        ualcmp: UALCMP {
            @display("p=5763.607,3590.8704");
        }
        roadsCanvasVisualizer: RoadsCanvasVisualizer {
            @display("p=98.73894,136.35378;is=s");
        }
        mmecHost[0]: mmecHost {
            @display("p=5477.3784,403.3224");
        }

        gNodeB1: gNodeB {
            @display("p=609.5505,965.366");
        }
        gNodeB2: gNodeB {
            @display("p=1828.6515000000002,965.366");
        }
        gNodeB3: gNodeB {
            @display("p=3047.7525000000005,965.366");
        }
        gNodeB4: gNodeB {
            @display("p=4266.8535,965.366");
        }
        gNodeB5: gNodeB {
            @display("p=5485.954500000001,965.366");
        }
        gNodeB6: gNodeB {
            @display("p=6705.055500000001,965.366");
        }
        gNodeB7: gNodeB {
            @display("p=7924.156500000001,965.366");
        }
        gNodeB8: gNodeB {
            @display("p=9143.2575,965.366");
        }
        gNodeB9: gNodeB {
            @display("p=10362.3585,965.366");
        }
        gNodeB10: gNodeB {
            @display("p=11581.4595,965.366");
        }
        gNodeB11: gNodeB {
            @display("p=11581.4595,2896.098");
        }
        gNodeB12: gNodeB {
            @display("p=10362.3585,2896.098");
        }
        gNodeB13: gNodeB {
            @display("p=9143.2575,2896.098");
        }
        gNodeB14: gNodeB {
            @display("p=7924.156500000001,2896.098");
        }
        gNodeB15: gNodeB {
            @display("p=6705.055500000001,2896.098");
        }
        gNodeB16: gNodeB {
            @display("p=5485.954500000001,2896.098");
        }
        gNodeB17: gNodeB {
            @display("p=4266.8535,2896.098");
        }
        gNodeB18: gNodeB {
            @display("p=3047.7525000000005,2896.098");
        }
        gNodeB19: gNodeB {
            @display("p=1828.6515000000002,2896.098");
        }
        gNodeB20: gNodeB {
            @display("p=609.5505,2896.098");
        }
        gNodeB21: gNodeB {
            @display("p=609.5505,4826.83");
        }
        gNodeB22: gNodeB {
            @display("p=1828.6515000000002,4826.83");
        }
        gNodeB23: gNodeB {
            @display("p=3047.7525000000005,4826.83");
        }
        gNodeB24: gNodeB {
            @display("p=4266.8535,4826.83");
        }
        gNodeB25: gNodeB {
            @display("p=5485.954500000001,4826.83");
        }
        gNodeB26: gNodeB {
            @display("p=6705.055500000001,4826.83");
        }
        gNodeB27: gNodeB {
            @display("p=7924.156500000001,4826.83");
        }
        gNodeB28: gNodeB {
            @display("p=9143.2575,4826.83");
        }
        gNodeB29: gNodeB {
            @display("p=10362.3585,4826.83");
        }
        gNodeB30: gNodeB {
            @display("p=11581.4595,4826.83");
        }
        gNodeB31: gNodeB {
            @display("p=11581.4595,6757.562");
        }
        gNodeB32: gNodeB {
            @display("p=10362.3585,6757.562");
        }
        gNodeB33: gNodeB {
            @display("p=9143.2575,6757.562");
        }
        gNodeB34: gNodeB {
            @display("p=7924.156500000001,6757.562");
        }
        gNodeB35: gNodeB {
            @display("p=6705.055500000001,6757.562");
        }
        gNodeB36: gNodeB {
            @display("p=5485.954500000001,6757.562");
        }
        gNodeB37: gNodeB {
            @display("p=4266.8535,6757.562");
        }
        gNodeB38: gNodeB {
            @display("p=3047.7525000000005,6757.562");
        }
        gNodeB39: gNodeB {
            @display("p=1828.6515000000002,6757.562");
        }
        gNodeB40: gNodeB {
            @display("p=609.5505,6757.562");
        }
        gNodeB41: gNodeB {
            @display("p=609.5505,8688.294");
        }
        gNodeB42: gNodeB {
            @display("p=1828.6515000000002,8688.294");
        }
        gNodeB43: gNodeB {
            @display("p=3047.7525000000005,8688.294");
        }
        gNodeB44: gNodeB {
            @display("p=4266.8535,8688.294");
        }
        gNodeB45: gNodeB {
            @display("p=5485.954500000001,8688.294");
        }
        gNodeB46: gNodeB {
            @display("p=6705.055500000001,8688.294");
        }
        gNodeB47: gNodeB {
            @display("p=7924.156500000001,8688.294");
        }
        gNodeB48: gNodeB {
            @display("p=9143.2575,8688.294");
        }
        gNodeB49: gNodeB {
            @display("p=10362.3585,8688.294");
        }
        gNodeB50: gNodeB {
            @display("p=11581.4595,8688.294");
        }
        iUpf1: Upf {
            @display("p=2031.84,2413.41");
        }
        iUpf2: Upf {
            @display("p=6095.51,2413.41");
        }
        iUpf3: Upf {
            @display("p=10159.17,2413.41");
        }
        iUpf4: Upf {
            @display("p=2031.84,7240.24");
        }
        iUpf5: Upf {
            @display("p=6095.51,7240.24");
        }
        iUpf6: Upf {
            @display("p=10159.17,7240.24");
        }
                mecHost1: MECHost {
            latitude = 1219.10000;
            longitude = 965.37000;
            @display("p=1219.10000,965.37000");
        }
        mecHost2: MECHost {
            latitude = 1219.10000;
            longitude = 1823.47000;
            @display("p=1219.10000,1823.47000");
        }
        mecHost3: MECHost {
            latitude = 1219.10000;
            longitude = 2681.57000;
            @display("p=1219.10000,2681.57000");
        }
        mecHost4: MECHost {
            latitude = 1219.10000;
            longitude = 3539.67000;
            @display("p=1219.10000,3539.67000");
        }
        mecHost5: MECHost {
            latitude = 1219.10000;
            longitude = 4397.77000;
            @display("p=1219.10000,4397.77000");
        }
        mecHost6: MECHost {
            latitude = 1219.10000;
            longitude = 5255.87000;
            @display("p=1219.10000,5255.87000");
        }
        mecHost7: MECHost {
            latitude = 1219.10000;
            longitude = 6113.97000;
            @display("p=1219.10000,6113.97000");
        }
        mecHost8: MECHost {
            latitude = 1219.10000;
            longitude = 6972.07000;
            @display("p=1219.10000,6972.07000");
        }
        mecHost9: MECHost {
            latitude = 1219.10000;
            longitude = 7830.17000;
            @display("p=1219.10000,7830.17000");
        }
        mecHost10: MECHost {
            latitude = 1219.10000;
            longitude = 8688.27000;
            @display("p=1219.10000,8688.27000");
        }
        mecHost11: MECHost {
            latitude = 2302.75000;
            longitude = 965.37000;
            @display("p=2302.75000,965.37000");
        }
        mecHost12: MECHost {
            latitude = 2302.75000;
            longitude = 1823.47000;
            @display("p=2302.75000,1823.47000");
        }
        mecHost13: MECHost {
            latitude = 2302.75000;
            longitude = 2681.57000;
            @display("p=2302.75000,2681.57000");
        }
        mecHost14: MECHost {
            latitude = 2302.75000;
            longitude = 3539.67000;
            @display("p=2302.75000,3539.67000");
        }
        mecHost15: MECHost {
            latitude = 2302.75000;
            longitude = 4397.77000;
            @display("p=2302.75000,4397.77000");
        }
        mecHost16: MECHost {
            latitude = 2302.75000;
            longitude = 5255.87000;
            @display("p=2302.75000,5255.87000");
        }
        mecHost17: MECHost {
            latitude = 2302.75000;
            longitude = 6113.97000;
            @display("p=2302.75000,6113.97000");
        }
        mecHost18: MECHost {
            latitude = 2302.75000;
            longitude = 6972.07000;
            @display("p=2302.75000,6972.07000");
        }
        mecHost19: MECHost {
            latitude = 2302.75000;
            longitude = 7830.17000;
            @display("p=2302.75000,7830.17000");
        }
        mecHost20: MECHost {
            latitude = 2302.75000;
            longitude = 8688.27000;
            @display("p=2302.75000,8688.27000");
        }
        mecHost21: MECHost {
            latitude = 3386.40000;
            longitude = 965.37000;
            @display("p=3386.40000,965.37000");
        }
        mecHost22: MECHost {
            latitude = 3386.40000;
            longitude = 1823.47000;
            @display("p=3386.40000,1823.47000");
        }
        mecHost23: MECHost {
            latitude = 3386.40000;
            longitude = 2681.57000;
            @display("p=3386.40000,2681.57000");
        }
        mecHost24: MECHost {
            latitude = 3386.40000;
            longitude = 3539.67000;
            @display("p=3386.40000,3539.67000");
        }
        mecHost25: MECHost {
            latitude = 3386.40000;
            longitude = 4397.77000;
            @display("p=3386.40000,4397.77000");
        }
        mecHost26: MECHost {
            latitude = 3386.40000;
            longitude = 5255.87000;
            @display("p=3386.40000,5255.87000");
        }
        mecHost27: MECHost {
            latitude = 3386.40000;
            longitude = 6113.97000;
            @display("p=3386.40000,6113.97000");
        }
        mecHost28: MECHost {
            latitude = 3386.40000;
            longitude = 6972.07000;
            @display("p=3386.40000,6972.07000");
        }
        mecHost29: MECHost {
            latitude = 3386.40000;
            longitude = 7830.17000;
            @display("p=3386.40000,7830.17000");
        }
        mecHost30: MECHost {
            latitude = 3386.40000;
            longitude = 8688.27000;
            @display("p=3386.40000,8688.27000");
        }
        mecHost31: MECHost {
            latitude = 4470.05000;
            longitude = 965.37000;
            @display("p=4470.05000,965.37000");
        }
        mecHost32: MECHost {
            latitude = 4470.05000;
            longitude = 1823.47000;
            @display("p=4470.05000,1823.47000");
        }
        mecHost33: MECHost {
            latitude = 4470.05000;
            longitude = 2681.57000;
            @display("p=4470.05000,2681.57000");
        }
        mecHost34: MECHost {
            latitude = 4470.05000;
            longitude = 3539.67000;
            @display("p=4470.05000,3539.67000");
        }
        mecHost35: MECHost {
            latitude = 4470.05000;
            longitude = 4397.77000;
            @display("p=4470.05000,4397.77000");
        }
        mecHost36: MECHost {
            latitude = 4470.05000;
            longitude = 5255.87000;
            @display("p=4470.05000,5255.87000");
        }
        mecHost37: MECHost {
            latitude = 4470.05000;
            longitude = 6113.97000;
            @display("p=4470.05000,6113.97000");
        }
        mecHost38: MECHost {
            latitude = 4470.05000;
            longitude = 6972.07000;
            @display("p=4470.05000,6972.07000");
        }
        mecHost39: MECHost {
            latitude = 4470.05000;
            longitude = 7830.17000;
            @display("p=4470.05000,7830.17000");
        }
        mecHost40: MECHost {
            latitude = 4470.05000;
            longitude = 8688.27000;
            @display("p=4470.05000,8688.27000");
        }
        mecHost41: MECHost {
            latitude = 5553.70000;
            longitude = 965.37000;
            @display("p=5553.70000,965.37000");
        }
        mecHost42: MECHost {
            latitude = 5553.70000;
            longitude = 1823.47000;
            @display("p=5553.70000,1823.47000");
        }
        mecHost43: MECHost {
            latitude = 5553.70000;
            longitude = 2681.57000;
            @display("p=5553.70000,2681.57000");
        }
        mecHost44: MECHost {
            latitude = 5553.70000;
            longitude = 3539.67000;
            @display("p=5553.70000,3539.67000");
        }
        mecHost45: MECHost {
            latitude = 5553.70000;
            longitude = 4397.77000;
            @display("p=5553.70000,4397.77000");
        }
        mecHost46: MECHost {
            latitude = 5553.70000;
            longitude = 5255.87000;
            @display("p=5553.70000,5255.87000");
        }
        mecHost47: MECHost {
            latitude = 5553.70000;
            longitude = 6113.97000;
            @display("p=5553.70000,6113.97000");
        }
        mecHost48: MECHost {
            latitude = 5553.70000;
            longitude = 6972.07000;
            @display("p=5553.70000,6972.07000");
        }
        mecHost49: MECHost {
            latitude = 5553.70000;
            longitude = 7830.17000;
            @display("p=5553.70000,7830.17000");
        }
        mecHost50: MECHost {
            latitude = 5553.70000;
            longitude = 8688.27000;
            @display("p=5553.70000,8688.27000");
        }
        mecHost51: MECHost {
            latitude = 6637.35000;
            longitude = 965.37000;
            @display("p=6637.35000,965.37000");
        }
        mecHost52: MECHost {
            latitude = 6637.35000;
            longitude = 1823.47000;
            @display("p=6637.35000,1823.47000");
        }
        mecHost53: MECHost {
            latitude = 6637.35000;
            longitude = 2681.57000;
            @display("p=6637.35000,2681.57000");
        }
        mecHost54: MECHost {
            latitude = 6637.35000;
            longitude = 3539.67000;
            @display("p=6637.35000,3539.67000");
        }
        mecHost55: MECHost {
            latitude = 6637.35000;
            longitude = 4397.77000;
            @display("p=6637.35000,4397.77000");
        }
        mecHost56: MECHost {
            latitude = 6637.35000;
            longitude = 5255.87000;
            @display("p=6637.35000,5255.87000");
        }
        mecHost57: MECHost {
            latitude = 6637.35000;
            longitude = 6113.97000;
            @display("p=6637.35000,6113.97000");
        }
        mecHost58: MECHost {
            latitude = 6637.35000;
            longitude = 6972.07000;
            @display("p=6637.35000,6972.07000");
        }
        mecHost59: MECHost {
            latitude = 6637.35000;
            longitude = 7830.17000;
            @display("p=6637.35000,7830.17000");
        }
        mecHost60: MECHost {
            latitude = 6637.35000;
            longitude = 8688.27000;
            @display("p=6637.35000,8688.27000");
        }
        mecHost61: MECHost {
            latitude = 7721.00000;
            longitude = 965.37000;
            @display("p=7721.00000,965.37000");
        }
        mecHost62: MECHost {
            latitude = 7721.00000;
            longitude = 1823.47000;
            @display("p=7721.00000,1823.47000");
        }
        mecHost63: MECHost {
            latitude = 7721.00000;
            longitude = 2681.57000;
            @display("p=7721.00000,2681.57000");
        }
        mecHost64: MECHost {
            latitude = 7721.00000;
            longitude = 3539.67000;
            @display("p=7721.00000,3539.67000");
        }
        mecHost65: MECHost {
            latitude = 7721.00000;
            longitude = 4397.77000;
            @display("p=7721.00000,4397.77000");
        }
        mecHost66: MECHost {
            latitude = 7721.00000;
            longitude = 5255.87000;
            @display("p=7721.00000,5255.87000");
        }
        mecHost67: MECHost {
            latitude = 7721.00000;
            longitude = 6113.97000;
            @display("p=7721.00000,6113.97000");
        }
        mecHost68: MECHost {
            latitude = 7721.00000;
            longitude = 6972.07000;
            @display("p=7721.00000,6972.07000");
        }
        mecHost69: MECHost {
            latitude = 7721.00000;
            longitude = 7830.17000;
            @display("p=7721.00000,7830.17000");
        }
        mecHost70: MECHost {
            latitude = 7721.00000;
            longitude = 8688.27000;
            @display("p=7721.00000,8688.27000");
        }
        mecHost71: MECHost {
            latitude = 8804.65000;
            longitude = 965.37000;
            @display("p=8804.65000,965.37000");
        }
        mecHost72: MECHost {
            latitude = 8804.65000;
            longitude = 1823.47000;
            @display("p=8804.65000,1823.47000");
        }
        mecHost73: MECHost {
            latitude = 8804.65000;
            longitude = 2681.57000;
            @display("p=8804.65000,2681.57000");
        }
        mecHost74: MECHost {
            latitude = 8804.65000;
            longitude = 3539.67000;
            @display("p=8804.65000,3539.67000");
        }
        mecHost75: MECHost {
            latitude = 8804.65000;
            longitude = 4397.77000;
            @display("p=8804.65000,4397.77000");
        }
        mecHost76: MECHost {
            latitude = 8804.65000;
            longitude = 5255.87000;
            @display("p=8804.65000,5255.87000");
        }
        mecHost77: MECHost {
            latitude = 8804.65000;
            longitude = 6113.97000;
            @display("p=8804.65000,6113.97000");
        }
        mecHost78: MECHost {
            latitude = 8804.65000;
            longitude = 6972.07000;
            @display("p=8804.65000,6972.07000");
        }
        mecHost79: MECHost {
            latitude = 8804.65000;
            longitude = 7830.17000;
            @display("p=8804.65000,7830.17000");
        }
        mecHost80: MECHost {
            latitude = 8804.65000;
            longitude = 8688.27000;
            @display("p=8804.65000,8688.27000");
        }
        mecHost81: MECHost {
            latitude = 9888.30000;
            longitude = 965.37000;
            @display("p=9888.30000,965.37000");
        }
        mecHost82: MECHost {
            latitude = 9888.30000;
            longitude = 1823.47000;
            @display("p=9888.30000,1823.47000");
        }
        mecHost83: MECHost {
            latitude = 9888.30000;
            longitude = 2681.57000;
            @display("p=9888.30000,2681.57000");
        }
        mecHost84: MECHost {
            latitude = 9888.30000;
            longitude = 3539.67000;
            @display("p=9888.30000,3539.67000");
        }
        mecHost85: MECHost {
            latitude = 9888.30000;
            longitude = 4397.77000;
            @display("p=9888.30000,4397.77000");
        }
        mecHost86: MECHost {
            latitude = 9888.30000;
            longitude = 5255.87000;
            @display("p=9888.30000,5255.87000");
        }
        mecHost87: MECHost {
            latitude = 9888.30000;
            longitude = 6113.97000;
            @display("p=9888.30000,6113.97000");
        }
        mecHost88: MECHost {
            latitude = 9888.30000;
            longitude = 6972.07000;
            @display("p=9888.30000,6972.07000");
        }
        mecHost89: MECHost {
            latitude = 9888.30000;
            longitude = 7830.17000;
            @display("p=9888.30000,7830.17000");
        }
        mecHost90: MECHost {
            latitude = 9888.30000;
            longitude = 8688.27000;
            @display("p=9888.30000,8688.27000");
        }
        mecHost91: MECHost {
            latitude = 10971.95000;
            longitude = 965.37000;
            @display("p=10971.95000,965.37000");
        }
        mecHost92: MECHost {
            latitude = 10971.95000;
            longitude = 1823.47000;
            @display("p=10971.95000,1823.47000");
        }
        mecHost93: MECHost {
            latitude = 10971.95000;
            longitude = 2681.57000;
            @display("p=10971.95000,2681.57000");
        }
        mecHost94: MECHost {
            latitude = 10971.95000;
            longitude = 3539.67000;
            @display("p=10971.95000,3539.67000");
        }
        mecHost95: MECHost {
            latitude = 10971.95000;
            longitude = 4397.77000;
            @display("p=10971.95000,4397.77000");
        }
        mecHost96: MECHost {
            latitude = 10971.95000;
            longitude = 5255.87000;
            @display("p=10971.95000,5255.87000");
        }
        mecHost97: MECHost {
            latitude = 10971.95000;
            longitude = 6113.97000;
            @display("p=10971.95000,6113.97000");
        }
        mecHost98: MECHost {
            latitude = 10971.95000;
            longitude = 6972.07000;
            @display("p=10971.95000,6972.07000");
        }
        mecHost99: MECHost {
            latitude = 10971.95000;
            longitude = 7830.17000;
            @display("p=10971.95000,7830.17000");
        }
        mecHost100: MECHost {
            latitude = 10971.95000;
            longitude = 8688.27000;
            @display("p=10971.95000,8688.27000");
        }
       

    connections allowunconnected:
         //# 5G Core Network connections
        upf.pppg++ <--> Eth10G <--> iUpf1.pppg++;
        upf.pppg++ <--> Eth10G <--> iUpf2.pppg++;
        upf.pppg++ <--> Eth10G <--> iUpf3.pppg++;
        upf.pppg++ <--> Eth10G <--> iUpf4.pppg++;
        upf.pppg++ <--> Eth10G <--> iUpf5.pppg++;
        upf.pppg++ <--> Eth10G <--> iUpf6.pppg++;
        
        //fully connect
        iUpf1.pppg++ <--> Eth10G <--> iUpf2.pppg++;
        iUpf1.pppg++ <--> Eth10G <--> iUpf3.pppg++;
        iUpf1.pppg++ <--> Eth10G <--> iUpf4.pppg++;
        iUpf1.pppg++ <--> Eth10G <--> iUpf5.pppg++;
        iUpf1.pppg++ <--> Eth10G <--> iUpf6.pppg++;
        iUpf2.pppg++ <--> Eth10G <--> iUpf3.pppg++;
        iUpf2.pppg++ <--> Eth10G <--> iUpf4.pppg++;
        iUpf2.pppg++ <--> Eth10G <--> iUpf5.pppg++;
        iUpf2.pppg++ <--> Eth10G <--> iUpf6.pppg++;
        iUpf3.pppg++ <--> Eth10G <--> iUpf4.pppg++;
        iUpf3.pppg++ <--> Eth10G <--> iUpf5.pppg++;
        iUpf3.pppg++ <--> Eth10G <--> iUpf6.pppg++;
        iUpf4.pppg++ <--> Eth10G <--> iUpf5.pppg++;
        iUpf4.pppg++ <--> Eth10G <--> iUpf6.pppg++;
        iUpf5.pppg++ <--> Eth10G <--> iUpf6.pppg++;
        
        //# MEC-related connections
        ualcmp.ppp++ <--> Eth10G <--> upf.filterGate;
        ualcmp.toMecOrchestrator --> mecOrchestrator.fromUALCMP;
        ualcmp.fromMecOrchestrator <-- mecOrchestrator.toUALCMP;
        
        iUpf1.pppg++ <--> Eth10G <--> gNodeB1.ppp;
        iUpf1.pppg++ <--> Eth10G <--> gNodeB2.ppp;
        iUpf1.pppg++ <--> Eth10G <--> gNodeB3.ppp;
        iUpf2.pppg++ <--> Eth10G <--> gNodeB4.ppp;
        iUpf2.pppg++ <--> Eth10G <--> gNodeB5.ppp;
        iUpf2.pppg++ <--> Eth10G <--> gNodeB6.ppp;
        iUpf2.pppg++ <--> Eth10G <--> gNodeB7.ppp;
        iUpf3.pppg++ <--> Eth10G <--> gNodeB8.ppp;
        iUpf3.pppg++ <--> Eth10G <--> gNodeB9.ppp;
        iUpf3.pppg++ <--> Eth10G <--> gNodeB10.ppp;
        iUpf3.pppg++ <--> Eth10G <--> gNodeB11.ppp;
        iUpf3.pppg++ <--> Eth10G <--> gNodeB12.ppp;
        iUpf3.pppg++ <--> Eth10G <--> gNodeB13.ppp;
        iUpf2.pppg++ <--> Eth10G <--> gNodeB14.ppp;
        iUpf2.pppg++ <--> Eth10G <--> gNodeB15.ppp;
        iUpf2.pppg++ <--> Eth10G <--> gNodeB16.ppp;
        iUpf2.pppg++ <--> Eth10G <--> gNodeB17.ppp;
        iUpf1.pppg++ <--> Eth10G <--> gNodeB18.ppp;
        iUpf1.pppg++ <--> Eth10G <--> gNodeB19.ppp;
        iUpf1.pppg++ <--> Eth10G <--> gNodeB20.ppp;
        iUpf1.pppg++ <--> Eth10G <--> gNodeB21.ppp;
        iUpf4.pppg++ <--> Eth10G <--> gNodeB22.ppp;
        iUpf4.pppg++ <--> Eth10G <--> gNodeB23.ppp;
        iUpf5.pppg++ <--> Eth10G <--> gNodeB24.ppp;
        iUpf5.pppg++ <--> Eth10G <--> gNodeB25.ppp;
        iUpf5.pppg++ <--> Eth10G <--> gNodeB26.ppp;
        iUpf2.pppg++ <--> Eth10G <--> gNodeB27.ppp;
        iUpf6.pppg++ <--> Eth10G <--> gNodeB28.ppp;
        iUpf6.pppg++ <--> Eth10G <--> gNodeB29.ppp;
        iUpf6.pppg++ <--> Eth10G <--> gNodeB30.ppp;
        iUpf6.pppg++ <--> Eth10G <--> gNodeB31.ppp;
        iUpf6.pppg++ <--> Eth10G <--> gNodeB32.ppp;
        iUpf6.pppg++ <--> Eth10G <--> gNodeB33.ppp;
        iUpf5.pppg++ <--> Eth10G <--> gNodeB34.ppp;
        iUpf5.pppg++ <--> Eth10G <--> gNodeB35.ppp;
        iUpf5.pppg++ <--> Eth10G <--> gNodeB36.ppp;
        iUpf5.pppg++ <--> Eth10G <--> gNodeB37.ppp;
        iUpf4.pppg++ <--> Eth10G <--> gNodeB38.ppp;
        iUpf4.pppg++ <--> Eth10G <--> gNodeB39.ppp;
        iUpf4.pppg++ <--> Eth10G <--> gNodeB40.ppp;
        iUpf4.pppg++ <--> Eth10G <--> gNodeB41.ppp;
        iUpf4.pppg++ <--> Eth10G <--> gNodeB42.ppp;
        iUpf4.pppg++ <--> Eth10G <--> gNodeB43.ppp;
        iUpf5.pppg++ <--> Eth10G <--> gNodeB44.ppp;
        iUpf5.pppg++ <--> Eth10G <--> gNodeB45.ppp;
        iUpf5.pppg++ <--> Eth10G <--> gNodeB46.ppp;
        iUpf5.pppg++ <--> Eth10G <--> gNodeB47.ppp;
        iUpf6.pppg++ <--> Eth10G <--> gNodeB48.ppp;
        iUpf6.pppg++ <--> Eth10G <--> gNodeB49.ppp;
        iUpf6.pppg++ <--> Eth10G <--> gNodeB50.ppp;
        
        //gnodeB fully connect
        gNodeB1.x2++ <--> Eth10G <--> gNodeB2.x2++;
        gNodeB2.x2++ <--> Eth10G <--> gNodeB3.x2++;
        gNodeB3.x2++ <--> Eth10G <--> gNodeB4.x2++;
        gNodeB4.x2++ <--> Eth10G <--> gNodeB5.x2++;
        gNodeB5.x2++ <--> Eth10G <--> gNodeB6.x2++;
        gNodeB6.x2++ <--> Eth10G <--> gNodeB7.x2++;
        gNodeB7.x2++ <--> Eth10G <--> gNodeB8.x2++;
        gNodeB8.x2++ <--> Eth10G <--> gNodeB9.x2++;
        gNodeB9.x2++ <--> Eth10G <--> gNodeB10.x2++;
        gNodeB10.x2++ <--> Eth10G <--> gNodeB11.x2++;
        gNodeB11.x2++ <--> Eth10G <--> gNodeB12.x2++;
        gNodeB12.x2++ <--> Eth10G <--> gNodeB13.x2++;
        gNodeB13.x2++ <--> Eth10G <--> gNodeB14.x2++;
        gNodeB14.x2++ <--> Eth10G <--> gNodeB15.x2++;
        gNodeB15.x2++ <--> Eth10G <--> gNodeB16.x2++;
        gNodeB16.x2++ <--> Eth10G <--> gNodeB17.x2++;
        gNodeB17.x2++ <--> Eth10G <--> gNodeB18.x2++;
        gNodeB18.x2++ <--> Eth10G <--> gNodeB19.x2++;
        gNodeB19.x2++ <--> Eth10G <--> gNodeB20.x2++;
        gNodeB20.x2++ <--> Eth10G <--> gNodeB21.x2++;
        gNodeB21.x2++ <--> Eth10G <--> gNodeB22.x2++;
        gNodeB22.x2++ <--> Eth10G <--> gNodeB23.x2++;
        gNodeB23.x2++ <--> Eth10G <--> gNodeB24.x2++;
        gNodeB24.x2++ <--> Eth10G <--> gNodeB25.x2++;
        gNodeB25.x2++ <--> Eth10G <--> gNodeB26.x2++;
        gNodeB26.x2++ <--> Eth10G <--> gNodeB27.x2++;
        gNodeB27.x2++ <--> Eth10G <--> gNodeB28.x2++;
        gNodeB28.x2++ <--> Eth10G <--> gNodeB29.x2++;
        gNodeB29.x2++ <--> Eth10G <--> gNodeB30.x2++;
        gNodeB30.x2++ <--> Eth10G <--> gNodeB31.x2++;
        gNodeB31.x2++ <--> Eth10G <--> gNodeB32.x2++;
        gNodeB32.x2++ <--> Eth10G <--> gNodeB33.x2++;
        gNodeB33.x2++ <--> Eth10G <--> gNodeB34.x2++;
        gNodeB34.x2++ <--> Eth10G <--> gNodeB35.x2++;
        gNodeB35.x2++ <--> Eth10G <--> gNodeB36.x2++;
        gNodeB36.x2++ <--> Eth10G <--> gNodeB37.x2++;
        gNodeB37.x2++ <--> Eth10G <--> gNodeB38.x2++;
        gNodeB38.x2++ <--> Eth10G <--> gNodeB39.x2++;
        gNodeB39.x2++ <--> Eth10G <--> gNodeB40.x2++;
        gNodeB40.x2++ <--> Eth10G <--> gNodeB41.x2++;
        gNodeB41.x2++ <--> Eth10G <--> gNodeB42.x2++;
        gNodeB42.x2++ <--> Eth10G <--> gNodeB43.x2++;
        gNodeB43.x2++ <--> Eth10G <--> gNodeB44.x2++;
        gNodeB44.x2++ <--> Eth10G <--> gNodeB45.x2++;
        gNodeB45.x2++ <--> Eth10G <--> gNodeB46.x2++;
        gNodeB46.x2++ <--> Eth10G <--> gNodeB47.x2++;
        gNodeB47.x2++ <--> Eth10G <--> gNodeB48.x2++;
        gNodeB48.x2++ <--> Eth10G <--> gNodeB49.x2++;
        gNodeB49.x2++ <--> Eth10G <--> gNodeB50.x2++;
        gNodeB50.x2++ <--> Eth10G <--> gNodeB1.x2++;
        
        //mecHost and iUpf
        mecHost1.ppp++ <--> Eth10G <--> iUpf1.pppg++;
        mecHost2.ppp++ <--> Eth10G <--> iUpf1.pppg++;
        mecHost3.ppp++ <--> Eth10G <--> iUpf1.pppg++;
        mecHost4.ppp++ <--> Eth10G <--> iUpf1.pppg++;
        mecHost5.ppp++ <--> Eth10G <--> iUpf1.pppg++;
        mecHost6.ppp++ <--> Eth10G <--> iUpf4.pppg++;
        mecHost7.ppp++ <--> Eth10G <--> iUpf4.pppg++;
        mecHost8.ppp++ <--> Eth10G <--> iUpf4.pppg++;
        mecHost9.ppp++ <--> Eth10G <--> iUpf4.pppg++;
        mecHost10.ppp++ <--> Eth10G <--> iUpf4.pppg++;
        mecHost11.ppp++ <--> Eth10G <--> iUpf1.pppg++;
        mecHost12.ppp++ <--> Eth10G <--> iUpf1.pppg++;
        mecHost13.ppp++ <--> Eth10G <--> iUpf1.pppg++;
        mecHost14.ppp++ <--> Eth10G <--> iUpf1.pppg++;
        mecHost15.ppp++ <--> Eth10G <--> iUpf1.pppg++;
        mecHost16.ppp++ <--> Eth10G <--> iUpf4.pppg++;
        mecHost17.ppp++ <--> Eth10G <--> iUpf4.pppg++;
        mecHost18.ppp++ <--> Eth10G <--> iUpf4.pppg++;
        mecHost19.ppp++ <--> Eth10G <--> iUpf4.pppg++;
        mecHost20.ppp++ <--> Eth10G <--> iUpf4.pppg++;
        mecHost21.ppp++ <--> Eth10G <--> iUpf1.pppg++;
        mecHost22.ppp++ <--> Eth10G <--> iUpf1.pppg++;
        mecHost23.ppp++ <--> Eth10G <--> iUpf1.pppg++;
        mecHost24.ppp++ <--> Eth10G <--> iUpf1.pppg++;
        mecHost25.ppp++ <--> Eth10G <--> iUpf1.pppg++;
        mecHost26.ppp++ <--> Eth10G <--> iUpf4.pppg++;
        mecHost27.ppp++ <--> Eth10G <--> iUpf4.pppg++;
        mecHost28.ppp++ <--> Eth10G <--> iUpf4.pppg++;
        mecHost29.ppp++ <--> Eth10G <--> iUpf4.pppg++;
        mecHost30.ppp++ <--> Eth10G <--> iUpf4.pppg++;
        mecHost31.ppp++ <--> Eth10G <--> iUpf2.pppg++;
        mecHost32.ppp++ <--> Eth10G <--> iUpf2.pppg++;
        mecHost33.ppp++ <--> Eth10G <--> iUpf2.pppg++;
        mecHost34.ppp++ <--> Eth10G <--> iUpf2.pppg++;
        mecHost35.ppp++ <--> Eth10G <--> iUpf2.pppg++;
        mecHost36.ppp++ <--> Eth10G <--> iUpf5.pppg++;
        mecHost37.ppp++ <--> Eth10G <--> iUpf5.pppg++;
        mecHost38.ppp++ <--> Eth10G <--> iUpf5.pppg++;
        mecHost39.ppp++ <--> Eth10G <--> iUpf5.pppg++;
        mecHost40.ppp++ <--> Eth10G <--> iUpf5.pppg++;
        mecHost41.ppp++ <--> Eth10G <--> iUpf2.pppg++;
        mecHost42.ppp++ <--> Eth10G <--> iUpf2.pppg++;
        mecHost43.ppp++ <--> Eth10G <--> iUpf2.pppg++;
        mecHost44.ppp++ <--> Eth10G <--> iUpf2.pppg++;
        mecHost45.ppp++ <--> Eth10G <--> iUpf2.pppg++;
        mecHost46.ppp++ <--> Eth10G <--> iUpf5.pppg++;
        mecHost47.ppp++ <--> Eth10G <--> iUpf5.pppg++;
        mecHost48.ppp++ <--> Eth10G <--> iUpf5.pppg++;
        mecHost49.ppp++ <--> Eth10G <--> iUpf5.pppg++;
        mecHost50.ppp++ <--> Eth10G <--> iUpf5.pppg++;
        mecHost51.ppp++ <--> Eth10G <--> iUpf2.pppg++;
        mecHost52.ppp++ <--> Eth10G <--> iUpf2.pppg++;
        mecHost53.ppp++ <--> Eth10G <--> iUpf2.pppg++;
        mecHost54.ppp++ <--> Eth10G <--> iUpf2.pppg++;
        mecHost55.ppp++ <--> Eth10G <--> iUpf2.pppg++;
        mecHost56.ppp++ <--> Eth10G <--> iUpf5.pppg++;
        mecHost57.ppp++ <--> Eth10G <--> iUpf5.pppg++;
        mecHost58.ppp++ <--> Eth10G <--> iUpf5.pppg++;
        mecHost59.ppp++ <--> Eth10G <--> iUpf5.pppg++;
        mecHost60.ppp++ <--> Eth10G <--> iUpf5.pppg++;
        mecHost61.ppp++ <--> Eth10G <--> iUpf2.pppg++;
        mecHost62.ppp++ <--> Eth10G <--> iUpf2.pppg++;
        mecHost63.ppp++ <--> Eth10G <--> iUpf2.pppg++;
        mecHost64.ppp++ <--> Eth10G <--> iUpf2.pppg++;
        mecHost65.ppp++ <--> Eth10G <--> iUpf2.pppg++;
        mecHost66.ppp++ <--> Eth10G <--> iUpf5.pppg++;
        mecHost67.ppp++ <--> Eth10G <--> iUpf5.pppg++;
        mecHost68.ppp++ <--> Eth10G <--> iUpf5.pppg++;
        mecHost69.ppp++ <--> Eth10G <--> iUpf5.pppg++;
        mecHost70.ppp++ <--> Eth10G <--> iUpf5.pppg++;
        mecHost71.ppp++ <--> Eth10G <--> iUpf3.pppg++;
        mecHost72.ppp++ <--> Eth10G <--> iUpf3.pppg++;
        mecHost73.ppp++ <--> Eth10G <--> iUpf3.pppg++;
        mecHost74.ppp++ <--> Eth10G <--> iUpf3.pppg++;
        mecHost75.ppp++ <--> Eth10G <--> iUpf3.pppg++;
        mecHost76.ppp++ <--> Eth10G <--> iUpf6.pppg++;
        mecHost77.ppp++ <--> Eth10G <--> iUpf6.pppg++;
        mecHost78.ppp++ <--> Eth10G <--> iUpf6.pppg++;
        mecHost79.ppp++ <--> Eth10G <--> iUpf6.pppg++;
        mecHost80.ppp++ <--> Eth10G <--> iUpf6.pppg++;
        mecHost81.ppp++ <--> Eth10G <--> iUpf3.pppg++;
        mecHost82.ppp++ <--> Eth10G <--> iUpf3.pppg++;
        mecHost83.ppp++ <--> Eth10G <--> iUpf3.pppg++;
        mecHost84.ppp++ <--> Eth10G <--> iUpf3.pppg++;
        mecHost85.ppp++ <--> Eth10G <--> iUpf3.pppg++;
        mecHost86.ppp++ <--> Eth10G <--> iUpf6.pppg++;
        mecHost87.ppp++ <--> Eth10G <--> iUpf6.pppg++;
        mecHost88.ppp++ <--> Eth10G <--> iUpf6.pppg++;
        mecHost89.ppp++ <--> Eth10G <--> iUpf6.pppg++;
        mecHost90.ppp++ <--> Eth10G <--> iUpf6.pppg++;
        mecHost91.ppp++ <--> Eth10G <--> iUpf3.pppg++;
        mecHost92.ppp++ <--> Eth10G <--> iUpf3.pppg++;
        mecHost93.ppp++ <--> Eth10G <--> iUpf3.pppg++;
        mecHost94.ppp++ <--> Eth10G <--> iUpf3.pppg++;
        mecHost95.ppp++ <--> Eth10G <--> iUpf3.pppg++;
        mecHost96.ppp++ <--> Eth10G <--> iUpf6.pppg++;
        mecHost97.ppp++ <--> Eth10G <--> iUpf6.pppg++;
        mecHost98.ppp++ <--> Eth10G <--> iUpf6.pppg++;
        mecHost99.ppp++ <--> Eth10G <--> iUpf6.pppg++;
        mecHost100.ppp++ <--> Eth10G <--> iUpf6.pppg++;
 
}
