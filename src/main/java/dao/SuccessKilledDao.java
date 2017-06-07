package dao;

import entity.SuccessKilled;

/**
 * Created by guagusi123@gmail.com on 2017/6/6.
 */
public interface SuccessKilledDao {

    /**
     * 插入购买明细,可过滤重复
     * @param seckillId
     * @param usrPhone
     * @return 插入行数。
     */
    int insertSuccessKilled(long seckillId, long usrPhone);

    /**
     * 根据ID查询SuccessKilled并携带秒杀产品对象实体
     * @param seckillId
     * @return
     */
    SuccessKilled queryByIdWithSeckill(long seckillId);
}
