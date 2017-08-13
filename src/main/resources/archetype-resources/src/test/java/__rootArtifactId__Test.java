package ${package};

import static org.hamcrest.core.Is.is;
import static org.junit.Assert.assertThat;

import ${package}.${rootArtifactId};
import org.junit.Test;
import org.tango.DeviceState;

public class ${rootArtifactId}Test {

    @Test
    public void testInit() throws Exception {
        ${rootArtifactId} instance = new ${rootArtifactId}();

        instance.init();

        assertThat(instance.getState(), is(DeviceState.ON));
    }
}