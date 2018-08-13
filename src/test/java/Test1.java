import com.baizhi.entity.User;
import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import org.junit.Test;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.*;

/**
 * Created by Administrator on 2018/8/6.
 */
public class Test1 {
    @Test
    public void test1() throws IOException, TemplateException {
        //数据准备key   value
        Map<String,Object> data = new HashMap<String,Object>();
        data.put("name","kjp");
        data.put("user",new User("1","kjp"));
        data.put("num",100);
        data.put("data",new Date());
        data.put("bool",false);

        List<String> list = new ArrayList<String>();
        list.add("111");
        list.add("222");
        data.put("array", list);

        Map<String,String> map = new HashMap<>();
        map.put("111","111");
        map.put("222","222");
        data.put("map",map);
        //获取Configuration
        Configuration configuration = new Configuration(Configuration.VERSION_2_3_23);
        //设置默认字符编码
        configuration.setDefaultEncoding("utf-8");
        // 设置模板文件的加载目录
        configuration.setDirectoryForTemplateLoading(new File("E:\\idea\\freeMarker\\src\\main\\resources"));
        //获取对应的模板信息
        Template template = configuration.getTemplate("index.ftl");
        //加工处理  模板+数据 输出
        template.process(data,new FileWriter("E:\\index.html"));
    }
}
