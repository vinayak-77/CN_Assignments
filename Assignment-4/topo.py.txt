
from mininet.topo import Topo

class MyTopo( Topo ):
    "Simple topology example."

    def build( self ):
        "Create custom topo."

        # Add hosts and switches
        h1 = self.addHost( 'h1' )
        h2 = self.addHost( 'h2' )
        h3 = self.addHost('h3')
        h4 = self.addHost('h4')
        h5 = self.addHost('h5')
        h6 = self.addHost('h6')

        s1 = self.addSwitch('s1')
        s2 = self.addSwitch('s2')
        s3 = self.addSwitch( 's3' )


        # Add links
        self.addLink( h1, s1 )
        self.addLink( s1, h2 )
        self.addLink( s1, s2 )
        self.addLink(h3,s2)
        self.addLink(s2,h4)
        self.addLink(s2,h2)
        self.addLink(s2,s3)
        self.addLink(h5,s3)
        self.addLink(h2,s3)
        self.addLink(s2,h6)


topos = { 'mytopo': ( lambda: MyTopo() ) }