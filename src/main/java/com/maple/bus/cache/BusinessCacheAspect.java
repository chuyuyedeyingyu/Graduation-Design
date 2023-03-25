package com.maple.bus.cache;

import com.maple.bus.entity.Operator;
import com.maple.bus.entity.Materials;
import com.maple.sys.cache.CachePool;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.beans.BeanUtils;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Component;

import java.io.Serializable;
import java.util.Collection;
import java.util.Map;

/**
 * @Author: wdf
 */
@Aspect
@Component
@EnableAspectJAutoProxy
public class BusinessCacheAspect {
    /**
     * 日志出处
     */
    private Log log = LogFactory.getLog(BusinessCacheAspect.class);

    /**
     * 声明一个缓存容器
     */
    private Map<String,Object> CACHE_CONTAINER = CachePool.CACHE_CONTAINER;


    /**
     * 声明运营商的切面表达式
     */
    private static final String POINTCUT_OPERATOR_ADD="execution(* com.maple.bus.service.impl.OperatorServiceImpl.save(..))";
    private static final String POINTCUT_OPERATOR_UPDATE="execution(* com.maple.bus.service.impl.OperatorServiceImpl.updateById(..))";
    private static final String POINTCUT_OPERATOR_GET="execution(* com.maple.bus.service.impl.OperatorServiceImpl.getById(..))";
    private static final String POINTCUT_OPERATOR_DELETE="execution(* com.maple.bus.service.impl.OperatorServiceImpl.removeById(..))";
    private static final String POINTCUT_OPERATOR_BATCHDELETE="execution(* com.maple.bus.service.impl.OperatorServiceImpl.removeByIds(..))";

    private static final String CACHE_OPERATOR_PROFIX="operator:";

    /**
     * 添加运营商切入
     * @param joinPoint
     * @return
     */
    @Around(value = POINTCUT_OPERATOR_ADD)
    public Object cacheOperatorAdd(ProceedingJoinPoint joinPoint) throws Throwable {
        //取出第一个参数
        Operator object = (Operator) joinPoint.getArgs()[0];
        Boolean res = (Boolean) joinPoint.proceed();
        if (res){
            CACHE_CONTAINER.put(CACHE_OPERATOR_PROFIX + object.getId(),object);
        }
        return res;
    }

    /**
     * 查询运营商切入
     * @param joinPoint
     * @return
     */
    @Around(value = POINTCUT_OPERATOR_GET)
    public Object cacheOperatorGet(ProceedingJoinPoint joinPoint) throws Throwable {
        //取出第一个参数
        Integer object = (Integer) joinPoint.getArgs()[0];
        //从缓存里面取
        Object res1 = CACHE_CONTAINER.get(CACHE_OPERATOR_PROFIX + object);
        if (res1!=null){
            log.info("已从缓存里面找到运营商对象"+CACHE_OPERATOR_PROFIX + object);
            return res1;
        }else {
            log.info("未从缓存里面找到运营商对象，从数据库中查询并放入缓存");
            Operator res2 =(Operator) joinPoint.proceed();
            CACHE_CONTAINER.put(CACHE_OPERATOR_PROFIX+res2.getId(),res2);
            return res2;
        }
    }

    /**
     * 更新运营商切入
     * @param joinPoint
     * @return
     */
    @Around(value = POINTCUT_OPERATOR_UPDATE)
    public Object cacheOperatorUpdate(ProceedingJoinPoint joinPoint) throws Throwable {
        //取出第一个参数
        Operator operatorVo = (Operator) joinPoint.getArgs()[0];
        Boolean isSuccess = (Boolean) joinPoint.proceed();
        if (isSuccess){
            Operator operator =(Operator) CACHE_CONTAINER.get(CACHE_OPERATOR_PROFIX + operatorVo.getId());
            if (null==operator){
                operator=new Operator();
            }
            BeanUtils.copyProperties(operatorVo,operator);
            log.info("运营商对象缓存已更新"+CACHE_OPERATOR_PROFIX + operatorVo.getId());
            CACHE_CONTAINER.put(CACHE_OPERATOR_PROFIX+operator.getId(),operator);
        }
        return isSuccess;
    }

    /**
     * 删除运营商切入
     * @param joinPoint
     * @return
     */
    @Around(value = POINTCUT_OPERATOR_DELETE)
    public Object cacheOperatorDelete(ProceedingJoinPoint joinPoint) throws Throwable {
        //取出第一个参数
        Integer id = (Integer) joinPoint.getArgs()[0];
        Boolean isSuccess = (Boolean) joinPoint.proceed();
        if (isSuccess){
            //删除缓存
            CACHE_CONTAINER.remove(CACHE_OPERATOR_PROFIX+id);
        }
        return isSuccess;
    }

    /**
     * 批量删除运营商切入
     *
     * @throws Throwable
     */
    @Around(value = POINTCUT_OPERATOR_BATCHDELETE)
    public Object cacheOperatorBatchDelete(ProceedingJoinPoint joinPoint) throws Throwable {
        // 取出第一个参数
        @SuppressWarnings("unchecked")
        Collection<Serializable> idList = (Collection<Serializable>) joinPoint.getArgs()[0];
        Boolean isSuccess = (Boolean) joinPoint.proceed();
        if (isSuccess) {
            for (Serializable id : idList) {
                // 删除缓存
                CACHE_CONTAINER.remove(CACHE_OPERATOR_PROFIX + id);
                log.info("运营商对象缓存已删除" + CACHE_OPERATOR_PROFIX + id);
            }
        }
        return isSuccess;
    }


    /**
     * 声明物料的切面表达式
     */
    private static final String POINTCUT_MATERIALS_ADD="execution(* com.maple.bus.service.impl.MaterialsServiceImpl.save(..))";
    private static final String POINTCUT_MATERIALS_UPDATE="execution(* com.maple.bus.service.impl.MaterialsServiceImpl.updateById(..))";
    private static final String POINTCUT_MATERIALS_GET="execution(* com.maple.bus.service.impl.MaterialsServiceImpl.getById(..))";
    private static final String POINTCUT_MATERIALS_DELETE="execution(* com.maple.bus.service.impl.MaterialsServiceImpl.removeById(..))";

    private static final String CACHE_MATERIALS_PROFIX="materials:";

    /**
     * 添加物料切入
     * @param joinPoint
     * @return
     */
    @Around(value = POINTCUT_MATERIALS_ADD)
    public Object cacheMaterialsAdd(ProceedingJoinPoint joinPoint) throws Throwable {
        //取出第一个参数
        Materials object = (Materials) joinPoint.getArgs()[0];
        Boolean res = (Boolean) joinPoint.proceed();
        if (res){
            CACHE_CONTAINER.put(CACHE_MATERIALS_PROFIX + object.getId(),object);
        }
        return res;
    }

    /**
     * 查询物料切入
     * @param joinPoint
     * @return
     */
    @Around(value = POINTCUT_MATERIALS_GET)
    public Object cacheMaterialsGet(ProceedingJoinPoint joinPoint) throws Throwable {
        //取出第一个参数
        Integer object = (Integer) joinPoint.getArgs()[0];
        //从缓存里面取
        Object res1 = CACHE_CONTAINER.get(CACHE_MATERIALS_PROFIX + object);
        if (res1!=null){
            log.info("已从缓存里面找到物料对象"+CACHE_MATERIALS_PROFIX + object);
            return res1;
        }else {
            log.info("未从缓存里面找到物料对象，从数据库中查询并放入缓存");
            Materials res2 =(Materials) joinPoint.proceed();
            CACHE_CONTAINER.put(CACHE_MATERIALS_PROFIX+res2.getId(),res2);
            return res2;
        }
    }

    /**
     * 更新物料切入
     * @param joinPoint
     * @return
     */
    @Around(value = POINTCUT_MATERIALS_UPDATE)
    public Object cacheMaterialsUpdate(ProceedingJoinPoint joinPoint) throws Throwable {
        //取出第一个参数
        Materials materialsVo = (Materials) joinPoint.getArgs()[0];
        Boolean isSuccess = (Boolean) joinPoint.proceed();
        if (isSuccess){
            Materials materials =(Materials) CACHE_CONTAINER.get(CACHE_MATERIALS_PROFIX + materialsVo.getId());
            if (null==materials){
                materials=new Materials();
            }
            BeanUtils.copyProperties(materialsVo,materials);
            log.info("物料对象缓存已更新"+CACHE_MATERIALS_PROFIX + materialsVo.getId());
            CACHE_CONTAINER.put(CACHE_MATERIALS_PROFIX+materials.getId(),materials);
        }
        return isSuccess;
    }

    /**
     * 删除物料切入
     * @param joinPoint
     * @return
     */
    @Around(value = POINTCUT_MATERIALS_DELETE)
    public Object cacheMaterialsDelete(ProceedingJoinPoint joinPoint) throws Throwable {
        //取出第一个参数
        Integer id = (Integer) joinPoint.getArgs()[0];
        Boolean isSuccess = (Boolean) joinPoint.proceed();
        if (isSuccess){
            //删除缓存
            CACHE_CONTAINER.remove(CACHE_MATERIALS_PROFIX+id);
        }
        return isSuccess;
    }

    
}
