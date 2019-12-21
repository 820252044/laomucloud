package com.laomukuq.demo;

import com.laomurfid.base.RfidBase;

import java.io.IOException;

public class DemoRfid {
    public static void main(String[] args) throws IOException {
        // 初始化串口
        RfidBase rfidBase = new RfidBase("COM7", 19200, 0, 8, 1);
        // 初始化13.56读卡器
        rfidBase.init13_56Reader();
        // 读取模块信息
        rfidBase.readInfoClick();
        // 打开天线
        rfidBase.openAntenna();
        // 请求寻找标签
        rfidBase.requestAllClick();
        // 写卡信息
        // rfidBase.onInventoryClick();
        // rfidBase.onWrite14443Click(0, 1, "00000000000000000000011111111110");
        // 读卡信息
        rfidBase.onRead14443Click(0, 1);
        rfidBase.close();
    }
}
