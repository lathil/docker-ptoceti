FROM lathil/docker-felix
MAINTAINER laurent Thil <lathil.dev@gmail.com>

# Add additional repositories
ADD restlet.xml /opt/osgi/felix-framework-4.2.1/conf/restlet.xml
ADD central.xml /opt/osgi/felix-framework-4.2.1/conf/central.xml
ADD ptoceti.xml /opt/osgi/felix-framework-4.2.1/conf/ptoceti.xml
ADD knopflerfish.xml /opt/osgi/felix-framework-4.2.1/conf/knopflerfish.xml

ADD load/com.ptoceti.osgi.obix.backbones.impl.ClientApplicationHandler.cfg  /opt/osgi/felix-framework-4.2.1/load/
ADD load/com.ptoceti.osgi.obix.impl.ObixService.cfg  /opt/osgi/felix-framework-4.2.1/load/
ADD load/com.ptoceti.osgi.wireadmin.impl.WireAdminImpl.cfg  /opt/osgi/felix-framework-4.2.1/load/

ADD conf/system.properties /opt/osgi/felix-framework-4.2.1/conf/system.properties

# Add configuration script
ADD ptoceti_config /opt/osgi/felix-framework-4.2.1/ptoceti_config 
# Port needed for the backbones client
EXPOSE 8081

RUN ./launch_felix.sh < ptoceti_config