package com.vfi.smartpos.deviceservice.aidl;
import com.vfi.smartpos.deviceservice.aidl.TusnData;

/**
 * \cn_
 * @brief
 *
 * \_en_
 * @brief get some information of the device
 *
 * \en_e
 * \code{.java}
 * \endcode
  */
interface IDeviceInfo {

    /**
     * \cn_
     * @brief 获取终端设备序列号
     *
     * \_en_
     * @brief get the serial number(SN) of the terminal.
     *
     * \en_e
     * \code{.java}
     * \endcode
    */
    String getSerialNo();

    /**
     * \cn_
     * @brief 获取终端IMSI号
     *
     * \_en_
     * @brief get the IMSI of the terminal.
     *
     * \en_e
     * \code{.java}
     * \endcode
     * @version
     * @see
    */
    String getIMSI();

    /**
     * \cn_
     * @brief 获取终端IMEI号
     *
     * \_en_
     * @brief get the IMEI of the terminal.
     *
     * \en_e
     * \code{.java}
     * \endcode
     * @version
     * @see
    */
    String getIMEI();

    /**
     * \cn_
     * @brief 获取终端SIM卡ICCID号
     *
     * \_en_
     * @brief get the ICCID of the SIM card which present.
     *
     * \en_e
     * \code{.java}
     * \endcode
     * @version
     * @see
    */
    String getICCID();

    /**
     * \cn_
     * @brief 获取厂商名称
     *
     * \_en_
     * @brief get name of manufacture
     *
     * \en_e
     * \code{.java}
     * \endcode
     * @version
     * @see
    */
    String getManufacture();

    /**
     * \cn_
     * @brief 获取终端型号
     *
     * \_en_
     * @brief get model of the terminal
     *
     * \en_e
     * \code{.java}
     * \endcode
     * @version
     * @see
    */
    String getModel();

    /**
     * \cn_
     * @brief 获取Android操作系统版本
     *
     * \_en_
     * @brief get the version of the Android OS.
     *
     * \en_e
     * \code{.java}
     * \endcode
     * @version
     * @see
    */
    String getAndroidOSVersion();

    /**
     * \cn_
     * @brief 获取Android内核版本
     *
     * \_en_
     * @brief get the version of Android Kernel
     *
     * \en_e
     * \code{.java}
     * \endcode
     * @version
     * @see
    */
    String getAndroidKernelVersion();

    /**
     * \cn_
     * @brief 获取终端ROM版本
     *
     * \_en_
     * @brief get the ROM version of Android.
     *
     * \en_e
     * \code{.java}
     * \endcode
     * @version
     * @see
    */
    String getROMVersion();

    /**
     * \cn_
     * @brief 获取终端固件版本
     *
     * \_en_
     * @brief get the firmare version of the terminal.
     *
     * \en_e
     * \code{.java}
     * \endcode
     * @version
     * @see
    */
    String getFirmwareVersion();

    /**
     * \cn_
     * @brief 获取终端硬件版本
     *
     * \_en_
     * @brief get the hardware version
     *
     * \en_e
     * \code{.java}
     * \endcode
     * @version
     * @see
    */
    String getHardwareVersion();

    /**
     * \cn_
     * @brief 更新终端系统时间
     *
     * \_en_
     * @brief update the system time with setting
     *
     * \en_e
     * \code{.java}
     * \endcode
     * @version
     * @see
    */
    boolean updateSystemTime(String date, String time);

    /**
     * \cn_
     * @brief 系统功能设置
     *
     * @param bundle
    * <li>HOMEKEY(boolean)</li>    //是否可用home键 | HomeKey enable or not
    * <li>STATUSBARKEY(boolean)</li>  //是否可用下拉栏 | status bar enable or not
     * \_en_
     * @brief set system feature
     *
     * @param bundle
     * <li>HOMEKEY(boolean)</li>    HomeKey enable or disable
     * <li>STATUSBARKEY(boolean)</li>  status bar(the drop down menu) enable or disable
     * \en_e
     * \code{.java}
     * \endcode
     * @version
     * @see
    */
    boolean setSystemFunction(in Bundle bundle);

    /**
     * \cn_
     * @brief 获取银联终端唯一终端号 TUSN
     *
     * @param mode 模式, 预留参数， 需为0
     * @param input 指 对TUSN计算 MAC 时，参与计算的随机数(随机因子)，允许范围:4~10字节
     * @return 成功返回TUSN数据，失败返回null。
     * \_en_
     * @brief TUSN
     *
     * \en_e
     * \code{.java}
     * \endcode
     * @version
     * @see
     *
    **/
    TusnData getTUSN(int mode, in byte[] input);

    /**
     * \cn_
     * @brief 获取终端设备序列号
     *
     * \_en_
     * @brief get the PN of the terminal.
     *
     * \en_e
     * \code{.java}
     * \endcode
     * @version
     * @see
    */
    String getPN();

    /**
     * \cn_
     * @brief 是否屏蔽powerKey
     *
     * \_en_
     * @brief set power key disable or enable
     *
     * @param status true - disable the power, false - enable the power key
     * \en_e
     * \code{.java}
     * \endcode
     * @version
     * @see
    */
    void setPowerStatus(boolean status);

}
