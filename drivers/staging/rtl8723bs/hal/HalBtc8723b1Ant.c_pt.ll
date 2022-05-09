; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c_pt.bc'
source_filename = "../drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.coex_sta_8723b_1ant = type { i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i8, i8, i8, [4 x i8], i8, [3 x [10 x i8]], [3 x i32], i8, i8, i8, i8, i8, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.coex_dm_8723b_1ant = type { i8, i8, i8, i8, [5 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i16, i8, i8, i8, i8, [3 x i8], i32, i32, i8, i8, i8, i8, i8, i8, i32, i8 }
%struct.btc_coexist = type { i8, ptr, %struct.btc_board_info, %struct.btc_bt_info, %struct.btc_stack_info, %struct.btc_bt_link_info, i32, i8, i8, i8, %struct.btc_statistics, [10 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.btc_board_info = type { i8, i8, i8, i8, i8 }
%struct.btc_bt_info = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i32, i8, i8, i8, i8, i8, i8, i32 }
%struct.btc_stack_info = type { i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.btc_bt_link_info = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.btc_statistics = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EXhalbtc8723b1ant_Periodical.disVerInfoCnt = internal global { i8, [31 x i8] } zeroinitializer, align 32
@GLCoexSta8723b1Ant = internal global { %struct.coex_sta_8723b_1ant, [60 x i8] } zeroinitializer, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@halbtc8723b1ant_TdmaDurationAdjustForAcl.up = internal global { i32, [28 x i8] } zeroinitializer, align 32
@halbtc8723b1ant_TdmaDurationAdjustForAcl.dn = internal global { i32, [28 x i8] } zeroinitializer, align 32
@halbtc8723b1ant_TdmaDurationAdjustForAcl.m = internal global { i32, [28 x i8] } zeroinitializer, align 32
@halbtc8723b1ant_TdmaDurationAdjustForAcl.n = internal global { i32, [28 x i8] } zeroinitializer, align 32
@halbtc8723b1ant_TdmaDurationAdjustForAcl.WaitCount = internal global { i32, [28 x i8] } zeroinitializer, align 32
@GLCoexDm8723b1Ant = internal global { %struct.coex_dm_8723b_1ant, [32 x i8] } zeroinitializer, align 32
@halbtc8723b1ant_MonitorBtCtr.NumOfBtCounterChk = internal global { i8, [31 x i8] } zeroinitializer, align 32
@halbtc8723b1ant_MonitorWiFiCtr.nCCKLockCounter = internal global { i8, [31 x i8] } zeroinitializer, align 32
@halbtc8723b1ant_IsWifiStatusChanged.bPreWifiBusy = internal global { i8, [31 x i8] } zeroinitializer, align 32
@halbtc8723b1ant_IsWifiStatusChanged.bPreUnder4way = internal global { i8, [31 x i8] } zeroinitializer, align 32
@halbtc8723b1ant_IsWifiStatusChanged.bPreBtHsOn = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.3 = internal global [37 x i64] [i64 35, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 18, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 40]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 8, i64 8, i64 9]
@__sancov_gen_cov_switch_values.5 = internal global [10 x i64] [i64 8, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.12 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.14 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 9]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 9, i64 11]
@__sancov_gen_cov_switch_values.22 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 9, i64 11]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 4, i64 1, i64 2, i64 3]
@___asan_gen_.24 = private unnamed_addr constant [14 x i8] c"disVerInfoCnt\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 2647, i32 12 }
@___asan_gen_.27 = private unnamed_addr constant [19 x i8] c"GLCoexSta8723b1Ant\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 13, i32 35 }
@___asan_gen_.30 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 1356, i32 13 }
@___asan_gen_.33 = private unnamed_addr constant [3 x i8] c"dn\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 1356, i32 17 }
@___asan_gen_.36 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 1356, i32 21 }
@___asan_gen_.39 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 1356, i32 24 }
@___asan_gen_.42 = private unnamed_addr constant [10 x i8] c"WaitCount\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 1356, i32 27 }
@___asan_gen_.45 = private unnamed_addr constant [18 x i8] c"GLCoexDm8723b1Ant\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 11, i32 34 }
@___asan_gen_.48 = private unnamed_addr constant [18 x i8] c"NumOfBtCounterChk\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 257, i32 12 }
@___asan_gen_.51 = private unnamed_addr constant [16 x i8] c"nCCKLockCounter\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 306, i32 12 }
@___asan_gen_.54 = private unnamed_addr constant [13 x i8] c"bPreWifiBusy\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 390, i32 14 }
@___asan_gen_.57 = private unnamed_addr constant [14 x i8] c"bPreUnder4way\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 390, i32 28 }
@___asan_gen_.60 = private unnamed_addr constant [11 x i8] c"bPreBtHsOn\00", align 1
@___asan_gen_.61 = private constant [51 x i8] c"../drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 390, i32 43 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @EXhalbtc8723b1ant_Periodical.disVerInfoCnt, ptr @GLCoexSta8723b1Ant, ptr @halbtc8723b1ant_TdmaDurationAdjustForAcl.up, ptr @halbtc8723b1ant_TdmaDurationAdjustForAcl.dn, ptr @halbtc8723b1ant_TdmaDurationAdjustForAcl.m, ptr @halbtc8723b1ant_TdmaDurationAdjustForAcl.n, ptr @halbtc8723b1ant_TdmaDurationAdjustForAcl.WaitCount, ptr @GLCoexDm8723b1Ant, ptr @halbtc8723b1ant_MonitorBtCtr.NumOfBtCounterChk, ptr @halbtc8723b1ant_MonitorWiFiCtr.nCCKLockCounter, ptr @halbtc8723b1ant_IsWifiStatusChanged.bPreWifiBusy, ptr @halbtc8723b1ant_IsWifiStatusChanged.bPreUnder4way, ptr @halbtc8723b1ant_IsWifiStatusChanged.bPreBtHsOn], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @EXhalbtc8723b1ant_Periodical.disVerInfoCnt to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @GLCoexSta8723b1Ant to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @halbtc8723b1ant_TdmaDurationAdjustForAcl.up to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @halbtc8723b1ant_TdmaDurationAdjustForAcl.dn to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @halbtc8723b1ant_TdmaDurationAdjustForAcl.m to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @halbtc8723b1ant_TdmaDurationAdjustForAcl.n to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @halbtc8723b1ant_TdmaDurationAdjustForAcl.WaitCount to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @GLCoexDm8723b1Ant to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @halbtc8723b1ant_MonitorBtCtr.NumOfBtCounterChk to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @halbtc8723b1ant_MonitorWiFiCtr.nCCKLockCounter to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @halbtc8723b1ant_IsWifiStatusChanged.bPreWifiBusy to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @halbtc8723b1ant_IsWifiStatusChanged.bPreUnder4way to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @halbtc8723b1ant_IsWifiStatusChanged.bPreBtHsOn to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @EXhalbtc8723b1ant_PowerOnSetting(ptr noundef %pBtCoexist) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fBtcWrite1Byte = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 13
  %0 = ptrtoint ptr %fBtcWrite1Byte to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fBtcWrite1Byte, align 4
  tail call void %1(ptr noundef %pBtCoexist, i32 noundef 103, i8 noundef zeroext 32) #4
  %fBtcRead2Byte = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 15
  %2 = ptrtoint ptr %fBtcRead2Byte to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fBtcRead2Byte, align 4
  %call = tail call zeroext i16 %3(ptr noundef %pBtCoexist, i32 noundef 2) #4
  %fBtcWrite2Byte = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 16
  %4 = ptrtoint ptr %fBtcWrite2Byte to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fBtcWrite2Byte, align 4
  %6 = or i16 %call, 3
  tail call void %5(ptr noundef %pBtCoexist, i32 noundef 2, i16 noundef zeroext %6) #4
  %7 = ptrtoint ptr %fBtcWrite1Byte to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fBtcWrite1Byte, align 4
  tail call void %8(ptr noundef %pBtCoexist, i32 noundef 1893, i8 noundef zeroext 24) #4
  %9 = ptrtoint ptr %fBtcWrite1Byte to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fBtcWrite1Byte, align 4
  tail call void %10(ptr noundef %pBtCoexist, i32 noundef 1902, i8 noundef zeroext 4) #4
  %chipInterface = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 6
  %11 = ptrtoint ptr %chipInterface to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %chipInterface, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp = icmp eq i32 %12, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %fBtcWrite4Byte = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 18
  %13 = ptrtoint ptr %fBtcWrite4Byte to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fBtcWrite4Byte, align 4
  tail call void %14(ptr noundef %pBtCoexist, i32 noundef 2376, i32 noundef 0) #4
  %fBtcWriteLocalReg1Byte = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 19
  %15 = ptrtoint ptr %fBtcWriteLocalReg1Byte to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fBtcWriteLocalReg1Byte, align 4
  tail call void %16(ptr noundef %pBtCoexist, i32 noundef 65032, i8 noundef zeroext 1) #4
  %btdmAntPos = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 2, i32 3
  %17 = ptrtoint ptr %btdmAntPos to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %btdmAntPos, align 1
  br label %if.end40

if.else:                                          ; preds = %entry
  %singleAntPath = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 2, i32 4
  %18 = ptrtoint ptr %singleAntPath to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %singleAntPath, align 1
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i8 %19, label %if.else.if.end26_crit_edge [
    i8 0, label %if.else.if.end26thread-pre-split_crit_edge
    i8 1, label %if.then20
  ]

if.else.if.end26thread-pre-split_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26thread-pre-split

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26thread-pre-split

if.end26thread-pre-split:                         ; preds = %if.then20, %if.else.if.end26thread-pre-split_crit_edge
  %.sink74 = phi i32 [ 0, %if.then20 ], [ 640, %if.else.if.end26thread-pre-split_crit_edge ]
  %.sink = phi i8 [ 2, %if.then20 ], [ 1, %if.else.if.end26thread-pre-split_crit_edge ]
  %fBtcWrite4Byte13 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 18
  %21 = ptrtoint ptr %fBtcWrite4Byte13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fBtcWrite4Byte13, align 4
  tail call void %22(ptr noundef %pBtCoexist, i32 noundef 2376, i32 noundef %.sink74) #4
  %btdmAntPos14 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 2, i32 3
  %23 = ptrtoint ptr %btdmAntPos14 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %.sink, ptr %btdmAntPos14, align 1
  %24 = ptrtoint ptr %chipInterface to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr = load i32, ptr %chipInterface, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.end26thread-pre-split, %if.else.if.end26_crit_edge
  %25 = phi i32 [ %.pr, %if.end26thread-pre-split ], [ %12, %if.else.if.end26_crit_edge ]
  %u1Tmp.0 = phi i8 [ %19, %if.end26thread-pre-split ], [ 0, %if.else.if.end26_crit_edge ]
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %25, label %if.end26.if.end40_crit_edge [
    i32 1, label %if.then30
    i32 3, label %if.then36
  ]

if.end26.if.end40_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end40

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  %fBtcWriteLocalReg1Byte31 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 19
  %27 = ptrtoint ptr %fBtcWriteLocalReg1Byte31 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fBtcWriteLocalReg1Byte31, align 4
  tail call void %28(ptr noundef %pBtCoexist, i32 noundef 900, i8 noundef zeroext %u1Tmp.0) #4
  br label %if.end40

if.then36:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  %fBtcWriteLocalReg1Byte37 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 19
  %29 = ptrtoint ptr %fBtcWriteLocalReg1Byte37 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fBtcWriteLocalReg1Byte37, align 4
  tail call void %30(ptr noundef %pBtCoexist, i32 noundef 96, i8 noundef zeroext %u1Tmp.0) #4
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %if.then30, %if.end26.if.end40_crit_edge, %if.then
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @EXhalbtc8723b1ant_InitHwConfig(ptr noundef %pBtCoexist, i1 noundef zeroext %bWifiOnly) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @halbtc8723b1ant_InitHwConfig(ptr noundef %pBtCoexist, i1 noundef zeroext %bWifiOnly)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @halbtc8723b1ant_InitHwConfig(ptr noundef %pBtCoexist, i1 noundef zeroext %bWifiOnly) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fBtcWrite1ByteBitMask = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 14
  %0 = ptrtoint ptr %fBtcWrite1ByteBitMask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fBtcWrite1ByteBitMask, align 4
  tail call void %1(ptr noundef %pBtCoexist, i32 noundef 1360, i8 noundef zeroext 8, i8 noundef zeroext 1) #4
  %fBtcWrite1Byte = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 13
  %2 = ptrtoint ptr %fBtcWrite1Byte to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fBtcWrite1Byte, align 4
  tail call void %3(ptr noundef %pBtCoexist, i32 noundef 1936, i8 noundef zeroext 5) #4
  %4 = ptrtoint ptr %fBtcWrite1Byte to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fBtcWrite1Byte, align 4
  tail call void %5(ptr noundef %pBtCoexist, i32 noundef 1912, i8 noundef zeroext 1) #4
  %6 = ptrtoint ptr %fBtcWrite1ByteBitMask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fBtcWrite1ByteBitMask, align 4
  tail call void %7(ptr noundef %pBtCoexist, i32 noundef 64, i8 noundef zeroext 32, i8 noundef zeroext 1) #4
  br i1 %bWifiOnly, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @halbtc8723b1ant_SetAntPath(ptr noundef %pBtCoexist, i8 noundef zeroext 0, i1 noundef zeroext true, i1 noundef zeroext false)
  tail call fastcc void @halbtc8723b1ant_PsTdma(ptr noundef %pBtCoexist, i1 noundef zeroext true, i1 noundef zeroext false, i8 noundef zeroext 9)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @halbtc8723b1ant_SetAntPath(ptr noundef %pBtCoexist, i8 noundef zeroext 1, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 36), align 2
  store i32 1431655765, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 1431655765, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 16777215, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  %fBtcWrite4Byte.i.i.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 18
  %8 = ptrtoint ptr %fBtcWrite4Byte.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fBtcWrite4Byte.i.i.i, align 4
  tail call void %9(ptr noundef %pBtCoexist, i32 noundef 1728, i32 noundef 1431655765) #4
  %10 = ptrtoint ptr %fBtcWrite4Byte.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fBtcWrite4Byte.i.i.i, align 4
  tail call void %11(ptr noundef %pBtCoexist, i32 noundef 1732, i32 noundef 1431655765) #4
  %12 = ptrtoint ptr %fBtcWrite4Byte.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fBtcWrite4Byte.i.i.i, align 4
  tail call void %13(ptr noundef %pBtCoexist, i32 noundef 1736, i32 noundef 16777215) #4
  %14 = ptrtoint ptr %fBtcWrite1Byte to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fBtcWrite1Byte, align 4
  tail call void %15(ptr noundef %pBtCoexist, i32 noundef 1740, i8 noundef zeroext 3) #4
  %16 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 %16, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  %17 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 %17, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  %18 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i32 %18, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  %19 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  store i8 %19, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  %fBtcRead4Byte = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 17
  %20 = ptrtoint ptr %fBtcRead4Byte to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fBtcRead4Byte, align 4
  %call = tail call i32 %21(ptr noundef %pBtCoexist, i32 noundef 2376) #4
  %fBtcRead1Byte = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 12
  %22 = ptrtoint ptr %fBtcRead1Byte to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fBtcRead1Byte, align 4
  %call4 = tail call zeroext i8 %23(ptr noundef %pBtCoexist, i32 noundef 1893) #4
  %24 = ptrtoint ptr %fBtcRead1Byte to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fBtcRead1Byte, align 4
  %call6 = tail call zeroext i8 %25(ptr noundef %pBtCoexist, i32 noundef 103) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @EXhalbtc8723b1ant_InitCoexDm(ptr noundef %pBtCoexist) local_unnamed_addr #0 align 64 {
entry:
  %H2C_Parameter.i = alloca [1 x i8], align 1
  %H2C_Parameter.i.i.i.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bStopCoexDm = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 8
  %0 = ptrtoint ptr %bStopCoexDm to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %bStopCoexDm, align 1
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 16), align 4
  %1 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 15), align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.i.i.i = icmp eq i8 %1, 0
  br i1 %cmp.i.i.i, label %entry.halbtc8723b1ant_InitCoexDm.exit_crit_edge, label %if.end10.i.i.i

entry.halbtc8723b1ant_InitCoexDm.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_InitCoexDm.exit

if.end10.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %H2C_Parameter.i.i.i.i) #4
  %2 = getelementptr inbounds i8, ptr %H2C_Parameter.i.i.i.i, i32 1
  %3 = call ptr @memset(ptr %2, i32 0, i32 5)
  %4 = ptrtoint ptr %H2C_Parameter.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 6, ptr %H2C_Parameter.i.i.i.i, align 1
  %fBtcFillH2c.i.i.i.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 24
  %5 = ptrtoint ptr %fBtcFillH2c.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fBtcFillH2c.i.i.i.i, align 4
  call void %6(ptr noundef %pBtCoexist, i8 noundef zeroext 105, i32 noundef 6, ptr noundef nonnull %H2C_Parameter.i.i.i.i) #4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %H2C_Parameter.i.i.i.i) #4
  %7 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 16), align 4, !range !39
  store i8 %7, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 15), align 1
  br label %halbtc8723b1ant_InitCoexDm.exit

halbtc8723b1ant_InitCoexDm.exit:                  ; preds = %if.end10.i.i.i, %entry.halbtc8723b1ant_InitCoexDm.exit_crit_edge
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 36), align 2
  store i32 1431655765, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 1431655765, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 16777215, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  %fBtcWrite4Byte.i.i.i.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 18
  %8 = ptrtoint ptr %fBtcWrite4Byte.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fBtcWrite4Byte.i.i.i.i, align 4
  call void %9(ptr noundef %pBtCoexist, i32 noundef 1728, i32 noundef 1431655765) #4
  %10 = ptrtoint ptr %fBtcWrite4Byte.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fBtcWrite4Byte.i.i.i.i, align 4
  call void %11(ptr noundef %pBtCoexist, i32 noundef 1732, i32 noundef 1431655765) #4
  %12 = ptrtoint ptr %fBtcWrite4Byte.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fBtcWrite4Byte.i.i.i.i, align 4
  call void %13(ptr noundef %pBtCoexist, i32 noundef 1736, i32 noundef 16777215) #4
  %fBtcWrite1Byte.i.i111.i.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 13
  %14 = ptrtoint ptr %fBtcWrite1Byte.i.i111.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fBtcWrite1Byte.i.i111.i.i, align 4
  call void %15(ptr noundef %pBtCoexist, i32 noundef 1740, i8 noundef zeroext 3) #4
  %16 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 %16, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  %17 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 %17, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  %18 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i32 %18, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  %19 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  store i8 %19, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  store i32 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 24), align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %H2C_Parameter.i) #4
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 16), align 1
  %20 = ptrtoint ptr %H2C_Parameter.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %H2C_Parameter.i, align 1
  %fBtcFillH2c.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 24
  %21 = ptrtoint ptr %fBtcFillH2c.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fBtcFillH2c.i, align 4
  call void %22(ptr noundef %pBtCoexist, i8 noundef zeroext 97, i32 noundef 1, ptr noundef nonnull %H2C_Parameter.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %H2C_Parameter.i) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @EXhalbtc8723b1ant_IpsNotify(ptr noundef %pBtCoexist, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  %H2C_Parameter.i = alloca [1 x i8], align 1
  %H2C_Parameter.i.i.i.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bManualControl = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 9
  %0 = ptrtoint ptr %bManualControl to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bManualControl, align 2, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

lor.lhs.false:                                    ; preds = %entry
  %bStopCoexDm = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 8
  %2 = ptrtoint ptr %bStopCoexDm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bStopCoexDm, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.if.end10_crit_edge

lor.lhs.false.if.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.end:                                           ; preds = %lor.lhs.false
  %4 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %type, label %if.end.if.end10_crit_edge [
    i8 1, label %if.then3
    i8 0, label %if.then7
  ]

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then3:                                         ; preds = %if.end
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 6), align 2
  tail call fastcc void @halbtc8723b1ant_PsTdma(ptr noundef %pBtCoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 0)
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 36), align 2
  store i32 1431655765, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 1431655765, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 16777215, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  %5 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1431655765, i32 %5)
  %cmp.i.i = icmp eq i32 %5, 1431655765
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.then3.sw.epilog.sink.split.i_crit_edge

if.then3.sw.epilog.sink.split.i_crit_edge:        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

land.lhs.true.i.i:                                ; preds = %if.then3
  %6 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1431655765, i32 %6)
  %cmp3.i.i = icmp eq i32 %6, 1431655765
  br i1 %cmp3.i.i, label %land.lhs.true4.i.i, label %land.lhs.true.i.i.sw.epilog.sink.split.i_crit_edge

land.lhs.true.i.i.sw.epilog.sink.split.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %7 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %7)
  %cmp6.i.i = icmp eq i32 %7, 16777215
  br i1 %cmp6.i.i, label %land.lhs.true7.i.i, label %land.lhs.true4.i.i.sw.epilog.sink.split.i_crit_edge

land.lhs.true4.i.i.sw.epilog.sink.split.i_crit_edge: ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

land.lhs.true7.i.i:                               ; preds = %land.lhs.true4.i.i
  %8 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %8)
  %cmp10.i.i = icmp eq i8 %8, 3
  br i1 %cmp10.i.i, label %land.lhs.true7.i.i.halbtc8723b1ant_CoexTableWithType.exit_crit_edge, label %land.lhs.true7.i.i.sw.epilog.sink.split.i_crit_edge

land.lhs.true7.i.i.sw.epilog.sink.split.i_crit_edge: ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

land.lhs.true7.i.i.halbtc8723b1ant_CoexTableWithType.exit_crit_edge: ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_CoexTableWithType.exit

sw.epilog.sink.split.i:                           ; preds = %land.lhs.true7.i.i.sw.epilog.sink.split.i_crit_edge, %land.lhs.true4.i.i.sw.epilog.sink.split.i_crit_edge, %land.lhs.true.i.i.sw.epilog.sink.split.i_crit_edge, %if.then3.sw.epilog.sink.split.i_crit_edge
  %fBtcWrite4Byte.i.i.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 18
  %9 = ptrtoint ptr %fBtcWrite4Byte.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fBtcWrite4Byte.i.i.i, align 4
  tail call void %10(ptr noundef %pBtCoexist, i32 noundef 1728, i32 noundef 1431655765) #4
  %11 = ptrtoint ptr %fBtcWrite4Byte.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fBtcWrite4Byte.i.i.i, align 4
  tail call void %12(ptr noundef %pBtCoexist, i32 noundef 1732, i32 noundef 1431655765) #4
  %13 = ptrtoint ptr %fBtcWrite4Byte.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fBtcWrite4Byte.i.i.i, align 4
  tail call void %14(ptr noundef %pBtCoexist, i32 noundef 1736, i32 noundef 16777215) #4
  %fBtcWrite1Byte.i.i111.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 13
  %15 = ptrtoint ptr %fBtcWrite1Byte.i.i111.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fBtcWrite1Byte.i.i111.i, align 4
  tail call void %16(ptr noundef %pBtCoexist, i32 noundef 1740, i8 noundef zeroext 3) #4
  %17 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 %17, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  %18 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 %18, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  %19 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i32 %19, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  %20 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  store i8 %20, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  br label %halbtc8723b1ant_CoexTableWithType.exit

halbtc8723b1ant_CoexTableWithType.exit:           ; preds = %sw.epilog.sink.split.i, %land.lhs.true7.i.i.halbtc8723b1ant_CoexTableWithType.exit_crit_edge
  tail call fastcc void @halbtc8723b1ant_SetAntPath(ptr noundef %pBtCoexist, i8 noundef zeroext 1, i1 noundef zeroext false, i1 noundef zeroext true)
  br label %if.end10

if.then7:                                         ; preds = %if.end
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 6), align 2
  tail call fastcc void @halbtc8723b1ant_InitHwConfig(ptr noundef %pBtCoexist, i1 noundef zeroext false)
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 16), align 4
  %21 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 15), align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp.i.i.i = icmp eq i8 %21, 0
  br i1 %cmp.i.i.i, label %if.then7.halbtc8723b1ant_InitCoexDm.exit_crit_edge, label %if.end10.i.i.i

if.then7.halbtc8723b1ant_InitCoexDm.exit_crit_edge: ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_InitCoexDm.exit

if.end10.i.i.i:                                   ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %H2C_Parameter.i.i.i.i) #4
  %22 = getelementptr inbounds i8, ptr %H2C_Parameter.i.i.i.i, i32 1
  %23 = call ptr @memset(ptr %22, i32 0, i32 5)
  %24 = ptrtoint ptr %H2C_Parameter.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 6, ptr %H2C_Parameter.i.i.i.i, align 1
  %fBtcFillH2c.i.i.i.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 24
  %25 = ptrtoint ptr %fBtcFillH2c.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fBtcFillH2c.i.i.i.i, align 4
  call void %26(ptr noundef %pBtCoexist, i8 noundef zeroext 105, i32 noundef 6, ptr noundef nonnull %H2C_Parameter.i.i.i.i) #4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %H2C_Parameter.i.i.i.i) #4
  %27 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 16), align 4, !range !39
  store i8 %27, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 15), align 1
  br label %halbtc8723b1ant_InitCoexDm.exit

halbtc8723b1ant_InitCoexDm.exit:                  ; preds = %if.end10.i.i.i, %if.then7.halbtc8723b1ant_InitCoexDm.exit_crit_edge
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 36), align 2
  store i32 1431655765, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 1431655765, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 16777215, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  %fBtcWrite4Byte.i.i.i.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 18
  %28 = ptrtoint ptr %fBtcWrite4Byte.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fBtcWrite4Byte.i.i.i.i, align 4
  call void %29(ptr noundef %pBtCoexist, i32 noundef 1728, i32 noundef 1431655765) #4
  %30 = ptrtoint ptr %fBtcWrite4Byte.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fBtcWrite4Byte.i.i.i.i, align 4
  call void %31(ptr noundef %pBtCoexist, i32 noundef 1732, i32 noundef 1431655765) #4
  %32 = ptrtoint ptr %fBtcWrite4Byte.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fBtcWrite4Byte.i.i.i.i, align 4
  call void %33(ptr noundef %pBtCoexist, i32 noundef 1736, i32 noundef 16777215) #4
  %fBtcWrite1Byte.i.i111.i.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 13
  %34 = ptrtoint ptr %fBtcWrite1Byte.i.i111.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fBtcWrite1Byte.i.i111.i.i, align 4
  call void %35(ptr noundef %pBtCoexist, i32 noundef 1740, i8 noundef zeroext 3) #4
  %36 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 %36, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  %37 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 %37, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  %38 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i32 %38, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  %39 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  store i8 %39, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  store i32 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 24), align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %H2C_Parameter.i) #4
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 16), align 1
  %40 = ptrtoint ptr %H2C_Parameter.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %H2C_Parameter.i, align 1
  %fBtcFillH2c.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 24
  %41 = ptrtoint ptr %fBtcFillH2c.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fBtcFillH2c.i, align 4
  call void %42(ptr noundef %pBtCoexist, i8 noundef zeroext 97, i32 noundef 1, ptr noundef nonnull %H2C_Parameter.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %H2C_Parameter.i) #4
  br label %if.end10

if.end10:                                         ; preds = %halbtc8723b1ant_InitCoexDm.exit, %halbtc8723b1ant_CoexTableWithType.exit, %if.end.if.end10_crit_edge, %lor.lhs.false.if.end10_crit_edge, %entry.if.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @halbtc8723b1ant_PsTdma(ptr noundef %pBtCoexist, i1 noundef zeroext %bForceExec, i1 noundef zeroext %bTurnOn, i8 noundef zeroext %type) unnamed_addr #0 align 64 {
entry:
  %H2C_Parameter.i178 = alloca [5 x i8], align 1
  %bApEnable.i179 = alloca i8, align 1
  %H2C_Parameter.i168 = alloca [5 x i8], align 1
  %bApEnable.i169 = alloca i8, align 1
  %H2C_Parameter.i = alloca [5 x i8], align 1
  %bApEnable.i = alloca i8, align 1
  %bWifiBusy = alloca i8, align 1
  %rssiAdjustVal = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool1 = zext i1 %bTurnOn to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bWifiBusy) #4
  %0 = ptrtoint ptr %bWifiBusy to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %bWifiBusy, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rssiAdjustVal) #4
  store i8 %frombool1, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 8), align 4
  store i8 %type, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 3), align 1
  %fBtcGet = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 25
  %1 = ptrtoint ptr %fBtcGet to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fBtcGet, align 4
  %call = call zeroext i8 %2(ptr noundef %pBtCoexist, i8 noundef zeroext 3, ptr noundef nonnull %bWifiBusy) #4
  br i1 %bForceExec, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.then:                                          ; preds = %entry
  %3 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 7), align 1, !range !39
  %4 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 8), align 4, !range !39
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %4)
  %cmp = icmp eq i8 %3, %4
  br i1 %cmp, label %land.lhs.true, label %if.then.if.end15_crit_edge

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

land.lhs.true:                                    ; preds = %if.then
  %5 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 2), align 2
  %6 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 3), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %6)
  %cmp12 = icmp eq i8 %5, %6
  br i1 %cmp12, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true.if.end15_crit_edge, %if.then.if.end15_crit_edge, %entry.if.end15_crit_edge
  %7 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 25), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %7)
  %cmp17 = icmp ult i8 %7, 6
  br i1 %cmp17, label %if.end15.if.end33_crit_edge, label %if.else

if.end15.if.end33_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp1(i8 39, i8 %7)
  %cmp22 = icmp ugt i8 %7, 39
  br i1 %cmp22, label %if.else.if.end33_crit_edge, label %if.else25

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

if.else25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %7)
  %cmp28 = icmp ugt i8 %7, 19
  %spec.select = select i1 %cmp28, i8 -10, i8 0
  br label %if.end33

if.end33:                                         ; preds = %if.else25, %if.else.if.end33_crit_edge, %if.end15.if.end33_crit_edge
  %nWiFiDurationAdjust.0 = phi i8 [ 5, %if.end15.if.end33_crit_edge ], [ -15, %if.else.if.end33_crit_edge ], [ %spec.select, %if.else25 ]
  %8 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 37), align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool34.not = icmp eq i8 %8, 0
  %psTdmaByte0Val.0 = select i1 %tobool34.not, i8 97, i8 81
  %psTdmaByte3Val.0 = select i1 %tobool34.not, i8 17, i8 16
  br i1 %bTurnOn, label %if.then38, label %if.else84

if.then38:                                        ; preds = %if.end33
  %psTdmaByte4Val.0 = select i1 %tobool34.not, i8 16, i8 80
  %bSlaveRole = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 5, i32 9
  %9 = ptrtoint ptr %bSlaveRole to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bSlaveRole, align 1, !range !39
  %spec.select167 = or i8 %10, %psTdmaByte4Val.0
  %11 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %type, label %sw.default [
    i8 1, label %sw.bb
    i8 2, label %sw.bb47
    i8 3, label %sw.bb51
    i8 4, label %sw.bb52
    i8 5, label %sw.bb53
    i8 6, label %sw.bb54
    i8 7, label %sw.bb55
    i8 8, label %sw.bb56
    i8 9, label %sw.bb57
    i8 10, label %sw.bb58
    i8 11, label %sw.bb59
    i8 12, label %sw.bb60
    i8 13, label %sw.bb61
    i8 14, label %sw.bb62
    i8 15, label %sw.bb63
    i8 16, label %sw.bb64
    i8 18, label %sw.bb65
    i8 20, label %sw.bb66
    i8 21, label %sw.bb67
    i8 22, label %sw.bb68
    i8 23, label %sw.bb69
    i8 24, label %sw.bb70
    i8 25, label %sw.bb71
    i8 26, label %sw.bb72
    i8 27, label %sw.bb73
    i8 28, label %sw.bb74
    i8 29, label %sw.bb75
    i8 30, label %sw.bb76
    i8 31, label %sw.bb77
    i8 32, label %sw.bb78
    i8 33, label %sw.bb79
    i8 34, label %sw.bb80
    i8 35, label %sw.bb81
    i8 36, label %sw.bb82
    i8 40, label %sw.bb83
  ]

sw.default:                                       ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_SetFwPstdma(ptr noundef %pBtCoexist, i8 noundef zeroext 81, i8 noundef zeroext 26, i8 noundef zeroext 26, i8 noundef zeroext 0, i8 noundef zeroext %spec.select167)
  br label %if.end91

sw.bb:                                            ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  %conv46 = add nsw i8 %nWiFiDurationAdjust.0, 58
  call fastcc void @halbtc8723b1ant_SetFwPstdma(ptr noundef %pBtCoexist, i8 noundef zeroext %psTdmaByte0Val.0, i8 noundef zeroext %conv46, i8 noundef zeroext 3, i8 noundef zeroext %psTdmaByte3Val.0, i8 noundef zeroext %spec.select167)
  br label %if.end91

sw.bb47:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  %conv50 = add nsw i8 %nWiFiDurationAdjust.0, 45
  call fastcc void @halbtc8723b1ant_SetFwPstdma(ptr noundef %pBtCoexist, i8 noundef zeroext %psTdmaByte0Val.0, i8 noundef zeroext %conv50, i8 noundef zeroext 3, i8 noundef zeroext %psTdmaByte3Val.0, i8 noundef zeroext %spec.select167)
  br label %if.end91

sw.bb51:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_SetFwPstdma(ptr noundef %pBtCoexist, i8 noundef zeroext 81, i8 noundef zeroext 29, i8 noundef zeroext 29, i8 noundef zeroext 0, i8 noundef zeroext 16)
  br label %if.end91

sw.bb52:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_SetFwPstdma(ptr noundef %pBtCoexist, i8 noundef zeroext -109, i8 noundef zeroext 21, i8 noundef zeroext 3, i8 noundef zeroext 20, i8 noundef zeroext 0)
  br label %if.end91

sw.bb53:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_SetFwPstdma(ptr noundef %pBtCoexist, i8 noundef zeroext 97, i8 noundef zeroext 21, i8 noundef zeroext 3, i8 noundef zeroext 17, i8 noundef zeroext 16)
  br label %if.end91

sw.bb54:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_SetFwPstdma(ptr noundef %pBtCoexist, i8 noundef zeroext 97, i8 noundef zeroext 32, i8 noundef zeroext 3, i8 noundef zeroext 17, i8 noundef zeroext 17)
  br label %if.end91

sw.bb55:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_SetFwPstdma(ptr noundef %pBtCoexist, i8 noundef zeroext 19, i8 noundef zeroext 12, i8 noundef zeroext 5, i8 noundef zeroext 0, i8 noundef zeroext 0)
  br label %if.end91

sw.bb56:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_SetFwPstdma(ptr noundef %pBtCoexist, i8 noundef zeroext -109, i8 noundef zeroext 37, i8 noundef zeroext 3, i8 noundef zeroext 16, i8 noundef zeroext 0)
  br label %if.end91

sw.bb57:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_SetFwPstdma(ptr noundef %pBtCoexist, i8 noundef zeroext %psTdmaByte0Val.0, i8 noundef zeroext 33, i8 noundef zeroext 3, i8 noundef zeroext %psTdmaByte3Val.0, i8 noundef zeroext %spec.select167)
  br label %if.end91

sw.bb58:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_SetFwPstdma(ptr noundef %pBtCoexist, i8 noundef zeroext 19, i8 noundef zeroext 10, i8 noundef zeroext 10, i8 noundef zeroext 0, i8 noundef zeroext 64)
  br label %if.end91

sw.bb59:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_SetFwPstdma(ptr noundef %pBtCoexist, i8 noundef zeroext %psTdmaByte0Val.0, i8 noundef zeroext 33, i8 noundef zeroext 3, i8 noundef zeroext %psTdmaByte3Val.0, i8 noundef zeroext %spec.select167)
  br label %if.end91

sw.bb60:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_SetFwPstdma(ptr noundef %pBtCoexist, i8 noundef zeroext 81, i8 noundef zeroext 10, i8 noundef zeroext 10, i8 noundef zeroext 0, i8 noundef zeroext 80)
  br label %if.end91

sw.bb61:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_SetFwPstdma(ptr noundef %pBtCoexist, i8 noundef zeroext 81, i8 noundef zeroext 18, i8 noundef zeroext 18, i8 noundef zeroext 0, i8 noundef zeroext 16)
  br label %if.end91

sw.bb62:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_SetFwPstdma(ptr noundef %pBtCoexist, i8 noundef zeroext 81, i8 noundef zeroext 33, i8 noundef zeroext 3, i8 noundef zeroext 16, i8 noundef zeroext %spec.select167)
  br label %if.end91

sw.bb63:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_SetFwPstdma(ptr noundef %pBtCoexist, i8 noundef zeroext 19, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 8, i8 noundef zeroext 0)
  br label %if.end91

sw.bb64:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_SetFwPstdma(ptr noundef %pBtCoexist, i8 noundef zeroext -109, i8 noundef zeroext 21, i8 noundef zeroext 3, i8 noundef zeroext 16, i8 noundef zeroext 0)
  br label %if.end91

sw.bb65:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_SetFwPstdma(ptr noundef %pBtCoexist, i8 noundef zeroext -109, i8 noundef zeroext 37, i8 noundef zeroext 3, i8 noundef zeroext 16, i8 noundef zeroext 0)
  br label %if.end91

sw.bb66:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_SetFwPstdma(ptr noundef %pBtCoexist, i8 noundef zeroext 97, i8 noundef zeroext 63, i8 noundef zeroext 3, i8 noundef zeroext 17, i8 noundef zeroext 16)
  br label %if.end91

sw.bb67:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_SetFwPstdma(ptr noundef %pBtCoexist, i8 noundef zeroext 97, i8 noundef zeroext 37, i8 noundef zeroext 3, i8 noundef zeroext 17, i8 noundef zeroext 17)
  br label %if.end91

sw.bb68:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_SetFwPstdma(ptr noundef %pBtCoexist, i8 noundef zeroext 97, i8 noundef zeroext 37, i8 noundef zeroext 3, i8 noundef zeroext 17, i8 noundef zeroext 16)
  br label %if.end91

sw.bb69:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_SetFwPstdma(ptr noundef %pBtCoexist, i8 noundef zeroext -29, i8 noundef zeroext 37, i8 noundef zeroext 3, i8 noundef zeroext 49, i8 noundef zeroext 24)
  br label %if.end91

sw.bb70:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_SetFwPstdma(ptr noundef %pBtCoexist, i8 noundef zeroext -29, i8 noundef zeroext 21, i8 noundef zeroext 3, i8 noundef zeroext 49, i8 noundef zeroext 24)
  br label %if.end91

sw.bb71:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_SetFwPstdma(ptr noundef %pBtCoexist, i8 noundef zeroext -29, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 49, i8 noundef zeroext 24)
  br label %if.end91

sw.bb72:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_SetFwPstdma(ptr noundef %pBtCoexist, i8 noundef zeroext -29, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 49, i8 noundef zeroext 24)
  br label %if.end91

sw.bb73:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_SetFwPstdma(ptr noundef %pBtCoexist, i8 noundef zeroext -29, i8 noundef zeroext 37, i8 noundef zeroext 3, i8 noundef zeroext 49, i8 noundef zeroext -104)
  br label %if.end91

sw.bb74:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_SetFwPstdma(ptr noundef %pBtCoexist, i8 noundef zeroext 105, i8 noundef zeroext 37, i8 noundef zeroext 3, i8 noundef zeroext 49, i8 noundef zeroext 0)
  br label %if.end91

sw.bb75:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_SetFwPstdma(ptr noundef %pBtCoexist, i8 noundef zeroext -85, i8 noundef zeroext 26, i8 noundef zeroext 26, i8 noundef zeroext 1, i8 noundef zeroext 16)
  br label %if.end91

sw.bb76:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_SetFwPstdma(ptr noundef %pBtCoexist, i8 noundef zeroext 81, i8 noundef zeroext 48, i8 noundef zeroext 3, i8 noundef zeroext 16, i8 noundef zeroext 16)
  br label %if.end91

sw.bb77:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_SetFwPstdma(ptr noundef %pBtCoexist, i8 noundef zeroext -45, i8 noundef zeroext 26, i8 noundef zeroext 26, i8 noundef zeroext 0, i8 noundef zeroext 88)
  br label %if.end91

sw.bb78:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_SetFwPstdma(ptr noundef %pBtCoexist, i8 noundef zeroext 97, i8 noundef zeroext 53, i8 noundef zeroext 3, i8 noundef zeroext 17, i8 noundef zeroext 17)
  br label %if.end91

sw.bb79:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_SetFwPstdma(ptr noundef %pBtCoexist, i8 noundef zeroext -93, i8 noundef zeroext 37, i8 noundef zeroext 3, i8 noundef zeroext 48, i8 noundef zeroext -112)
  br label %if.end91

sw.bb80:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_SetFwPstdma(ptr noundef %pBtCoexist, i8 noundef zeroext 83, i8 noundef zeroext 26, i8 noundef zeroext 26, i8 noundef zeroext 0, i8 noundef zeroext 16)
  br label %if.end91

sw.bb81:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_SetFwPstdma(ptr noundef %pBtCoexist, i8 noundef zeroext 99, i8 noundef zeroext 26, i8 noundef zeroext 26, i8 noundef zeroext 0, i8 noundef zeroext 16)
  br label %if.end91

sw.bb82:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_SetFwPstdma(ptr noundef %pBtCoexist, i8 noundef zeroext -45, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 20, i8 noundef zeroext 80)
  br label %if.end91

sw.bb83:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_SetFwPstdma(ptr noundef %pBtCoexist, i8 noundef zeroext 35, i8 noundef zeroext 24, i8 noundef zeroext 0, i8 noundef zeroext 16, i8 noundef zeroext 36)
  br label %if.end91

if.else84:                                        ; preds = %if.end33
  %12 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %type, label %sw.default88 [
    i8 8, label %sw.bb86
    i8 9, label %sw.bb89
  ]

sw.bb86:                                          ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %H2C_Parameter.i) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bApEnable.i) #4
  %13 = ptrtoint ptr %bApEnable.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %bApEnable.i, align 1
  %14 = ptrtoint ptr %fBtcGet to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fBtcGet, align 4
  %call.i = call zeroext i8 %15(ptr noundef %pBtCoexist, i8 noundef zeroext 8, ptr noundef nonnull %bApEnable.i) #4
  %16 = ptrtoint ptr %H2C_Parameter.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 8, ptr %H2C_Parameter.i, align 1
  %arrayidx18.i = getelementptr inbounds [5 x i8], ptr %H2C_Parameter.i, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 0, ptr %arrayidx18.i, align 1
  store i8 8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 4), align 4
  %fBtcFillH2c.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 24
  store i32 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 4, i32 1), align 1
  %18 = ptrtoint ptr %fBtcFillH2c.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fBtcFillH2c.i, align 4
  call void %19(ptr noundef %pBtCoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %H2C_Parameter.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bApEnable.i) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %H2C_Parameter.i) #4
  call fastcc void @halbtc8723b1ant_SetAntPath(ptr noundef %pBtCoexist, i8 noundef zeroext 2, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %if.end91

sw.default88:                                     ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %H2C_Parameter.i168) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bApEnable.i169) #4
  %20 = ptrtoint ptr %bApEnable.i169 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %bApEnable.i169, align 1
  %21 = ptrtoint ptr %fBtcGet to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fBtcGet, align 4
  %call.i171 = call zeroext i8 %22(ptr noundef %pBtCoexist, i8 noundef zeroext 8, ptr noundef nonnull %bApEnable.i169) #4
  %23 = call ptr @memset(ptr %H2C_Parameter.i168, i32 0, i32 5)
  %fBtcFillH2c.i177 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 24
  %24 = call ptr @memset(ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 4), i32 0, i32 5)
  %25 = ptrtoint ptr %fBtcFillH2c.i177 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fBtcFillH2c.i177, align 4
  call void %26(ptr noundef %pBtCoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %H2C_Parameter.i168) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bApEnable.i169) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %H2C_Parameter.i168) #4
  call fastcc void @halbtc8723b1ant_SetAntPath(ptr noundef %pBtCoexist, i8 noundef zeroext 1, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %if.end91

sw.bb89:                                          ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %H2C_Parameter.i178) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bApEnable.i179) #4
  %27 = ptrtoint ptr %bApEnable.i179 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %bApEnable.i179, align 1
  %28 = ptrtoint ptr %fBtcGet to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fBtcGet, align 4
  %call.i181 = call zeroext i8 %29(ptr noundef %pBtCoexist, i8 noundef zeroext 8, ptr noundef nonnull %bApEnable.i179) #4
  %30 = call ptr @memset(ptr %H2C_Parameter.i178, i32 0, i32 5)
  %fBtcFillH2c.i187 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 24
  %31 = call ptr @memset(ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 4), i32 0, i32 5)
  %32 = ptrtoint ptr %fBtcFillH2c.i187 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fBtcFillH2c.i187, align 4
  call void %33(ptr noundef %pBtCoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %H2C_Parameter.i178) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bApEnable.i179) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %H2C_Parameter.i178) #4
  call fastcc void @halbtc8723b1ant_SetAntPath(ptr noundef %pBtCoexist, i8 noundef zeroext 0, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %if.end91

if.end91:                                         ; preds = %sw.bb89, %sw.default88, %sw.bb86, %sw.bb83, %sw.bb82, %sw.bb81, %sw.bb80, %sw.bb79, %sw.bb78, %sw.bb77, %sw.bb76, %sw.bb75, %sw.bb74, %sw.bb73, %sw.bb72, %sw.bb71, %sw.bb70, %sw.bb69, %sw.bb68, %sw.bb67, %sw.bb66, %sw.bb65, %sw.bb64, %sw.bb63, %sw.bb62, %sw.bb61, %sw.bb60, %sw.bb59, %sw.bb58, %sw.bb57, %sw.bb56, %sw.bb55, %sw.bb54, %sw.bb53, %sw.bb52, %sw.bb51, %sw.bb47, %sw.bb, %sw.default
  %34 = ptrtoint ptr %rssiAdjustVal to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %rssiAdjustVal, align 1
  %fBtcSet = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 26
  %35 = ptrtoint ptr %fBtcSet to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fBtcSet, align 4
  %call92 = call zeroext i8 %36(ptr noundef %pBtCoexist, i8 noundef zeroext 12, ptr noundef nonnull %rssiAdjustVal) #4
  %37 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 8), align 4, !range !39
  store i8 %37, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 7), align 1
  %38 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 3), align 1
  store i8 %38, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 2), align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end91, %land.lhs.true.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rssiAdjustVal) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bWifiBusy) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @halbtc8723b1ant_CoexTableWithType(ptr noundef %pBtCoexist, i1 noundef zeroext %bForceExec, i8 noundef zeroext %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  store i8 %type, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 36), align 2
  %0 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %type, label %entry.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb1
    i8 2, label %sw.bb3
    i8 3, label %sw.bb5
    i8 4, label %sw.bb7
    i8 5, label %sw.bb9
    i8 6, label %sw.bb11
    i8 7, label %sw.bb13
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  store i32 1431655765, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 1431655765, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 16777215, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  br i1 %bForceExec, label %sw.bb.sw.epilog.sink.split_crit_edge, label %if.then.i

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

if.then.i:                                        ; preds = %sw.bb
  %1 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1431655765, i32 %1)
  %cmp.i = icmp eq i32 %1, 1431655765
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then.i.sw.epilog.sink.split_crit_edge

if.then.i.sw.epilog.sink.split_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

land.lhs.true.i:                                  ; preds = %if.then.i
  %2 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1431655765, i32 %2)
  %cmp3.i = icmp eq i32 %2, 1431655765
  br i1 %cmp3.i, label %land.lhs.true4.i, label %land.lhs.true.i.sw.epilog.sink.split_crit_edge

land.lhs.true.i.sw.epilog.sink.split_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %3 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %3)
  %cmp6.i = icmp eq i32 %3, 16777215
  br i1 %cmp6.i, label %land.lhs.true7.i, label %land.lhs.true4.i.sw.epilog.sink.split_crit_edge

land.lhs.true4.i.sw.epilog.sink.split_crit_edge:  ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

land.lhs.true7.i:                                 ; preds = %land.lhs.true4.i
  %4 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %4)
  %cmp10.i = icmp eq i8 %4, 3
  br i1 %cmp10.i, label %land.lhs.true7.i.sw.epilog_crit_edge, label %land.lhs.true7.i.sw.epilog.sink.split_crit_edge

land.lhs.true7.i.sw.epilog.sink.split_crit_edge:  ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

land.lhs.true7.i.sw.epilog_crit_edge:             ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  store i32 1431655765, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 1515870810, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 16777215, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  br i1 %bForceExec, label %sw.bb1.sw.epilog.sink.split_crit_edge, label %if.then.i31

sw.bb1.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

if.then.i31:                                      ; preds = %sw.bb1
  %5 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1431655765, i32 %5)
  %cmp.i30 = icmp eq i32 %5, 1431655765
  br i1 %cmp.i30, label %land.lhs.true.i33, label %if.then.i31.sw.epilog.sink.split_crit_edge

if.then.i31.sw.epilog.sink.split_crit_edge:       ; preds = %if.then.i31
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

land.lhs.true.i33:                                ; preds = %if.then.i31
  %6 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1515870810, i32 %6)
  %cmp3.i32 = icmp eq i32 %6, 1515870810
  br i1 %cmp3.i32, label %land.lhs.true4.i35, label %land.lhs.true.i33.sw.epilog.sink.split_crit_edge

land.lhs.true.i33.sw.epilog.sink.split_crit_edge: ; preds = %land.lhs.true.i33
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

land.lhs.true4.i35:                               ; preds = %land.lhs.true.i33
  %7 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %7)
  %cmp6.i34 = icmp eq i32 %7, 16777215
  br i1 %cmp6.i34, label %land.lhs.true7.i37, label %land.lhs.true4.i35.sw.epilog.sink.split_crit_edge

land.lhs.true4.i35.sw.epilog.sink.split_crit_edge: ; preds = %land.lhs.true4.i35
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

land.lhs.true7.i37:                               ; preds = %land.lhs.true4.i35
  %8 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %8)
  %cmp10.i36 = icmp eq i8 %8, 3
  br i1 %cmp10.i36, label %land.lhs.true7.i37.sw.epilog_crit_edge, label %land.lhs.true7.i37.sw.epilog.sink.split_crit_edge

land.lhs.true7.i37.sw.epilog.sink.split_crit_edge: ; preds = %land.lhs.true7.i37
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

land.lhs.true7.i37.sw.epilog_crit_edge:           ; preds = %land.lhs.true7.i37
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  store i32 1515870810, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 1515870810, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 16777215, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  br i1 %bForceExec, label %sw.bb3.sw.epilog.sink.split_crit_edge, label %if.then.i43

sw.bb3.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

if.then.i43:                                      ; preds = %sw.bb3
  %9 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1515870810, i32 %9)
  %cmp.i42 = icmp eq i32 %9, 1515870810
  br i1 %cmp.i42, label %land.lhs.true.i45, label %if.then.i43.sw.epilog.sink.split_crit_edge

if.then.i43.sw.epilog.sink.split_crit_edge:       ; preds = %if.then.i43
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

land.lhs.true.i45:                                ; preds = %if.then.i43
  %10 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1515870810, i32 %10)
  %cmp3.i44 = icmp eq i32 %10, 1515870810
  br i1 %cmp3.i44, label %land.lhs.true4.i47, label %land.lhs.true.i45.sw.epilog.sink.split_crit_edge

land.lhs.true.i45.sw.epilog.sink.split_crit_edge: ; preds = %land.lhs.true.i45
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

land.lhs.true4.i47:                               ; preds = %land.lhs.true.i45
  %11 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %11)
  %cmp6.i46 = icmp eq i32 %11, 16777215
  br i1 %cmp6.i46, label %land.lhs.true7.i49, label %land.lhs.true4.i47.sw.epilog.sink.split_crit_edge

land.lhs.true4.i47.sw.epilog.sink.split_crit_edge: ; preds = %land.lhs.true4.i47
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

land.lhs.true7.i49:                               ; preds = %land.lhs.true4.i47
  %12 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %12)
  %cmp10.i48 = icmp eq i8 %12, 3
  br i1 %cmp10.i48, label %land.lhs.true7.i49.sw.epilog_crit_edge, label %land.lhs.true7.i49.sw.epilog.sink.split_crit_edge

land.lhs.true7.i49.sw.epilog.sink.split_crit_edge: ; preds = %land.lhs.true7.i49
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

land.lhs.true7.i49.sw.epilog_crit_edge:           ; preds = %land.lhs.true7.i49
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  store i32 -1431677611, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 -1431676326, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 16777215, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  br i1 %bForceExec, label %sw.bb5.sw.epilog.sink.split_crit_edge, label %if.then.i55

sw.bb5.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

if.then.i55:                                      ; preds = %sw.bb5
  %13 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1431677611, i32 %13)
  %cmp.i54 = icmp eq i32 %13, -1431677611
  br i1 %cmp.i54, label %land.lhs.true.i57, label %if.then.i55.sw.epilog.sink.split_crit_edge

if.then.i55.sw.epilog.sink.split_crit_edge:       ; preds = %if.then.i55
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

land.lhs.true.i57:                                ; preds = %if.then.i55
  %14 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1431676326, i32 %14)
  %cmp3.i56 = icmp eq i32 %14, -1431676326
  br i1 %cmp3.i56, label %land.lhs.true4.i59, label %land.lhs.true.i57.sw.epilog.sink.split_crit_edge

land.lhs.true.i57.sw.epilog.sink.split_crit_edge: ; preds = %land.lhs.true.i57
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

land.lhs.true4.i59:                               ; preds = %land.lhs.true.i57
  %15 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %15)
  %cmp6.i58 = icmp eq i32 %15, 16777215
  br i1 %cmp6.i58, label %land.lhs.true7.i61, label %land.lhs.true4.i59.sw.epilog.sink.split_crit_edge

land.lhs.true4.i59.sw.epilog.sink.split_crit_edge: ; preds = %land.lhs.true4.i59
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

land.lhs.true7.i61:                               ; preds = %land.lhs.true4.i59
  %16 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %16)
  %cmp10.i60 = icmp eq i8 %16, 3
  br i1 %cmp10.i60, label %land.lhs.true7.i61.sw.epilog_crit_edge, label %land.lhs.true7.i61.sw.epilog.sink.split_crit_edge

land.lhs.true7.i61.sw.epilog.sink.split_crit_edge: ; preds = %land.lhs.true7.i61
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

land.lhs.true7.i61.sw.epilog_crit_edge:           ; preds = %land.lhs.true7.i61
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  store i32 1431655765, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 -1431676326, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 16777215, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  br i1 %bForceExec, label %sw.bb7.sw.epilog.sink.split_crit_edge, label %if.then.i67

sw.bb7.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

if.then.i67:                                      ; preds = %sw.bb7
  %17 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1431655765, i32 %17)
  %cmp.i66 = icmp eq i32 %17, 1431655765
  br i1 %cmp.i66, label %land.lhs.true.i69, label %if.then.i67.sw.epilog.sink.split_crit_edge

if.then.i67.sw.epilog.sink.split_crit_edge:       ; preds = %if.then.i67
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

land.lhs.true.i69:                                ; preds = %if.then.i67
  %18 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1431676326, i32 %18)
  %cmp3.i68 = icmp eq i32 %18, -1431676326
  br i1 %cmp3.i68, label %land.lhs.true4.i71, label %land.lhs.true.i69.sw.epilog.sink.split_crit_edge

land.lhs.true.i69.sw.epilog.sink.split_crit_edge: ; preds = %land.lhs.true.i69
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

land.lhs.true4.i71:                               ; preds = %land.lhs.true.i69
  %19 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %19)
  %cmp6.i70 = icmp eq i32 %19, 16777215
  br i1 %cmp6.i70, label %land.lhs.true7.i73, label %land.lhs.true4.i71.sw.epilog.sink.split_crit_edge

land.lhs.true4.i71.sw.epilog.sink.split_crit_edge: ; preds = %land.lhs.true4.i71
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

land.lhs.true7.i73:                               ; preds = %land.lhs.true4.i71
  %20 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %20)
  %cmp10.i72 = icmp eq i8 %20, 3
  br i1 %cmp10.i72, label %land.lhs.true7.i73.sw.epilog_crit_edge, label %land.lhs.true7.i73.sw.epilog.sink.split_crit_edge

land.lhs.true7.i73.sw.epilog.sink.split_crit_edge: ; preds = %land.lhs.true7.i73
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

land.lhs.true7.i73.sw.epilog_crit_edge:           ; preds = %land.lhs.true7.i73
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  store i32 1515870810, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 -1431676326, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 16777215, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  br i1 %bForceExec, label %sw.bb9.sw.epilog.sink.split_crit_edge, label %if.then.i79

sw.bb9.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

if.then.i79:                                      ; preds = %sw.bb9
  %21 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1515870810, i32 %21)
  %cmp.i78 = icmp eq i32 %21, 1515870810
  br i1 %cmp.i78, label %land.lhs.true.i81, label %if.then.i79.sw.epilog.sink.split_crit_edge

if.then.i79.sw.epilog.sink.split_crit_edge:       ; preds = %if.then.i79
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

land.lhs.true.i81:                                ; preds = %if.then.i79
  %22 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1431676326, i32 %22)
  %cmp3.i80 = icmp eq i32 %22, -1431676326
  br i1 %cmp3.i80, label %land.lhs.true4.i83, label %land.lhs.true.i81.sw.epilog.sink.split_crit_edge

land.lhs.true.i81.sw.epilog.sink.split_crit_edge: ; preds = %land.lhs.true.i81
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

land.lhs.true4.i83:                               ; preds = %land.lhs.true.i81
  %23 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %23)
  %cmp6.i82 = icmp eq i32 %23, 16777215
  br i1 %cmp6.i82, label %land.lhs.true7.i85, label %land.lhs.true4.i83.sw.epilog.sink.split_crit_edge

land.lhs.true4.i83.sw.epilog.sink.split_crit_edge: ; preds = %land.lhs.true4.i83
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

land.lhs.true7.i85:                               ; preds = %land.lhs.true4.i83
  %24 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %24)
  %cmp10.i84 = icmp eq i8 %24, 3
  br i1 %cmp10.i84, label %land.lhs.true7.i85.sw.epilog_crit_edge, label %land.lhs.true7.i85.sw.epilog.sink.split_crit_edge

land.lhs.true7.i85.sw.epilog.sink.split_crit_edge: ; preds = %land.lhs.true7.i85
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

land.lhs.true7.i85.sw.epilog_crit_edge:           ; preds = %land.lhs.true7.i85
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  store i32 1431655765, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 -1431655766, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 16777215, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  br i1 %bForceExec, label %sw.bb11.sw.epilog.sink.split_crit_edge, label %if.then.i91

sw.bb11.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

if.then.i91:                                      ; preds = %sw.bb11
  %25 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1431655765, i32 %25)
  %cmp.i90 = icmp eq i32 %25, 1431655765
  br i1 %cmp.i90, label %land.lhs.true.i93, label %if.then.i91.sw.epilog.sink.split_crit_edge

if.then.i91.sw.epilog.sink.split_crit_edge:       ; preds = %if.then.i91
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

land.lhs.true.i93:                                ; preds = %if.then.i91
  %26 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1431655766, i32 %26)
  %cmp3.i92 = icmp eq i32 %26, -1431655766
  br i1 %cmp3.i92, label %land.lhs.true4.i95, label %land.lhs.true.i93.sw.epilog.sink.split_crit_edge

land.lhs.true.i93.sw.epilog.sink.split_crit_edge: ; preds = %land.lhs.true.i93
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

land.lhs.true4.i95:                               ; preds = %land.lhs.true.i93
  %27 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %27)
  %cmp6.i94 = icmp eq i32 %27, 16777215
  br i1 %cmp6.i94, label %land.lhs.true7.i97, label %land.lhs.true4.i95.sw.epilog.sink.split_crit_edge

land.lhs.true4.i95.sw.epilog.sink.split_crit_edge: ; preds = %land.lhs.true4.i95
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

land.lhs.true7.i97:                               ; preds = %land.lhs.true4.i95
  %28 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %28)
  %cmp10.i96 = icmp eq i8 %28, 3
  br i1 %cmp10.i96, label %land.lhs.true7.i97.sw.epilog_crit_edge, label %land.lhs.true7.i97.sw.epilog.sink.split_crit_edge

land.lhs.true7.i97.sw.epilog.sink.split_crit_edge: ; preds = %land.lhs.true7.i97
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

land.lhs.true7.i97.sw.epilog_crit_edge:           ; preds = %land.lhs.true7.i97
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  store i32 -1431655766, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 -1431655766, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 16777215, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  br i1 %bForceExec, label %sw.bb13.sw.epilog.sink.split_crit_edge, label %if.then.i103

sw.bb13.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

if.then.i103:                                     ; preds = %sw.bb13
  %29 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1431655766, i32 %29)
  %cmp.i102 = icmp eq i32 %29, -1431655766
  br i1 %cmp.i102, label %land.lhs.true.i105, label %if.then.i103.sw.epilog.sink.split_crit_edge

if.then.i103.sw.epilog.sink.split_crit_edge:      ; preds = %if.then.i103
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

land.lhs.true.i105:                               ; preds = %if.then.i103
  %30 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1431655766, i32 %30)
  %cmp3.i104 = icmp eq i32 %30, -1431655766
  br i1 %cmp3.i104, label %land.lhs.true4.i107, label %land.lhs.true.i105.sw.epilog.sink.split_crit_edge

land.lhs.true.i105.sw.epilog.sink.split_crit_edge: ; preds = %land.lhs.true.i105
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

land.lhs.true4.i107:                              ; preds = %land.lhs.true.i105
  %31 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %31)
  %cmp6.i106 = icmp eq i32 %31, 16777215
  br i1 %cmp6.i106, label %land.lhs.true7.i109, label %land.lhs.true4.i107.sw.epilog.sink.split_crit_edge

land.lhs.true4.i107.sw.epilog.sink.split_crit_edge: ; preds = %land.lhs.true4.i107
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

land.lhs.true7.i109:                              ; preds = %land.lhs.true4.i107
  %32 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %32)
  %cmp10.i108 = icmp eq i8 %32, 3
  br i1 %cmp10.i108, label %land.lhs.true7.i109.sw.epilog_crit_edge, label %land.lhs.true7.i109.sw.epilog.sink.split_crit_edge

land.lhs.true7.i109.sw.epilog.sink.split_crit_edge: ; preds = %land.lhs.true7.i109
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

land.lhs.true7.i109.sw.epilog_crit_edge:          ; preds = %land.lhs.true7.i109
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %land.lhs.true7.i109.sw.epilog.sink.split_crit_edge, %land.lhs.true4.i107.sw.epilog.sink.split_crit_edge, %land.lhs.true.i105.sw.epilog.sink.split_crit_edge, %if.then.i103.sw.epilog.sink.split_crit_edge, %sw.bb13.sw.epilog.sink.split_crit_edge, %land.lhs.true7.i97.sw.epilog.sink.split_crit_edge, %land.lhs.true4.i95.sw.epilog.sink.split_crit_edge, %land.lhs.true.i93.sw.epilog.sink.split_crit_edge, %if.then.i91.sw.epilog.sink.split_crit_edge, %sw.bb11.sw.epilog.sink.split_crit_edge, %land.lhs.true7.i85.sw.epilog.sink.split_crit_edge, %land.lhs.true4.i83.sw.epilog.sink.split_crit_edge, %land.lhs.true.i81.sw.epilog.sink.split_crit_edge, %if.then.i79.sw.epilog.sink.split_crit_edge, %sw.bb9.sw.epilog.sink.split_crit_edge, %land.lhs.true7.i73.sw.epilog.sink.split_crit_edge, %land.lhs.true4.i71.sw.epilog.sink.split_crit_edge, %land.lhs.true.i69.sw.epilog.sink.split_crit_edge, %if.then.i67.sw.epilog.sink.split_crit_edge, %sw.bb7.sw.epilog.sink.split_crit_edge, %land.lhs.true7.i61.sw.epilog.sink.split_crit_edge, %land.lhs.true4.i59.sw.epilog.sink.split_crit_edge, %land.lhs.true.i57.sw.epilog.sink.split_crit_edge, %if.then.i55.sw.epilog.sink.split_crit_edge, %sw.bb5.sw.epilog.sink.split_crit_edge, %land.lhs.true7.i49.sw.epilog.sink.split_crit_edge, %land.lhs.true4.i47.sw.epilog.sink.split_crit_edge, %land.lhs.true.i45.sw.epilog.sink.split_crit_edge, %if.then.i43.sw.epilog.sink.split_crit_edge, %sw.bb3.sw.epilog.sink.split_crit_edge, %land.lhs.true7.i37.sw.epilog.sink.split_crit_edge, %land.lhs.true4.i35.sw.epilog.sink.split_crit_edge, %land.lhs.true.i33.sw.epilog.sink.split_crit_edge, %if.then.i31.sw.epilog.sink.split_crit_edge, %sw.bb1.sw.epilog.sink.split_crit_edge, %land.lhs.true7.i.sw.epilog.sink.split_crit_edge, %land.lhs.true4.i.sw.epilog.sink.split_crit_edge, %land.lhs.true.i.sw.epilog.sink.split_crit_edge, %if.then.i.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge
  %.sink116 = phi i32 [ 1431655765, %land.lhs.true7.i.sw.epilog.sink.split_crit_edge ], [ 1431655765, %land.lhs.true4.i.sw.epilog.sink.split_crit_edge ], [ 1431655765, %land.lhs.true.i.sw.epilog.sink.split_crit_edge ], [ 1431655765, %if.then.i.sw.epilog.sink.split_crit_edge ], [ 1431655765, %sw.bb.sw.epilog.sink.split_crit_edge ], [ 1431655765, %land.lhs.true7.i37.sw.epilog.sink.split_crit_edge ], [ 1431655765, %land.lhs.true4.i35.sw.epilog.sink.split_crit_edge ], [ 1431655765, %land.lhs.true.i33.sw.epilog.sink.split_crit_edge ], [ 1431655765, %if.then.i31.sw.epilog.sink.split_crit_edge ], [ 1431655765, %sw.bb1.sw.epilog.sink.split_crit_edge ], [ 1515870810, %land.lhs.true7.i49.sw.epilog.sink.split_crit_edge ], [ 1515870810, %land.lhs.true4.i47.sw.epilog.sink.split_crit_edge ], [ 1515870810, %land.lhs.true.i45.sw.epilog.sink.split_crit_edge ], [ 1515870810, %if.then.i43.sw.epilog.sink.split_crit_edge ], [ 1515870810, %sw.bb3.sw.epilog.sink.split_crit_edge ], [ -1431677611, %land.lhs.true7.i61.sw.epilog.sink.split_crit_edge ], [ -1431677611, %land.lhs.true4.i59.sw.epilog.sink.split_crit_edge ], [ -1431677611, %land.lhs.true.i57.sw.epilog.sink.split_crit_edge ], [ -1431677611, %if.then.i55.sw.epilog.sink.split_crit_edge ], [ -1431677611, %sw.bb5.sw.epilog.sink.split_crit_edge ], [ 1431655765, %land.lhs.true7.i73.sw.epilog.sink.split_crit_edge ], [ 1431655765, %land.lhs.true4.i71.sw.epilog.sink.split_crit_edge ], [ 1431655765, %land.lhs.true.i69.sw.epilog.sink.split_crit_edge ], [ 1431655765, %if.then.i67.sw.epilog.sink.split_crit_edge ], [ 1431655765, %sw.bb7.sw.epilog.sink.split_crit_edge ], [ 1515870810, %land.lhs.true7.i85.sw.epilog.sink.split_crit_edge ], [ 1515870810, %land.lhs.true4.i83.sw.epilog.sink.split_crit_edge ], [ 1515870810, %land.lhs.true.i81.sw.epilog.sink.split_crit_edge ], [ 1515870810, %if.then.i79.sw.epilog.sink.split_crit_edge ], [ 1515870810, %sw.bb9.sw.epilog.sink.split_crit_edge ], [ 1431655765, %land.lhs.true7.i97.sw.epilog.sink.split_crit_edge ], [ 1431655765, %land.lhs.true4.i95.sw.epilog.sink.split_crit_edge ], [ 1431655765, %land.lhs.true.i93.sw.epilog.sink.split_crit_edge ], [ 1431655765, %if.then.i91.sw.epilog.sink.split_crit_edge ], [ 1431655765, %sw.bb11.sw.epilog.sink.split_crit_edge ], [ -1431655766, %land.lhs.true7.i109.sw.epilog.sink.split_crit_edge ], [ -1431655766, %land.lhs.true4.i107.sw.epilog.sink.split_crit_edge ], [ -1431655766, %land.lhs.true.i105.sw.epilog.sink.split_crit_edge ], [ -1431655766, %if.then.i103.sw.epilog.sink.split_crit_edge ], [ -1431655766, %sw.bb13.sw.epilog.sink.split_crit_edge ]
  %.sink = phi i32 [ 1431655765, %land.lhs.true7.i.sw.epilog.sink.split_crit_edge ], [ 1431655765, %land.lhs.true4.i.sw.epilog.sink.split_crit_edge ], [ 1431655765, %land.lhs.true.i.sw.epilog.sink.split_crit_edge ], [ 1431655765, %if.then.i.sw.epilog.sink.split_crit_edge ], [ 1431655765, %sw.bb.sw.epilog.sink.split_crit_edge ], [ 1515870810, %land.lhs.true7.i37.sw.epilog.sink.split_crit_edge ], [ 1515870810, %land.lhs.true4.i35.sw.epilog.sink.split_crit_edge ], [ 1515870810, %land.lhs.true.i33.sw.epilog.sink.split_crit_edge ], [ 1515870810, %if.then.i31.sw.epilog.sink.split_crit_edge ], [ 1515870810, %sw.bb1.sw.epilog.sink.split_crit_edge ], [ 1515870810, %land.lhs.true7.i49.sw.epilog.sink.split_crit_edge ], [ 1515870810, %land.lhs.true4.i47.sw.epilog.sink.split_crit_edge ], [ 1515870810, %land.lhs.true.i45.sw.epilog.sink.split_crit_edge ], [ 1515870810, %if.then.i43.sw.epilog.sink.split_crit_edge ], [ 1515870810, %sw.bb3.sw.epilog.sink.split_crit_edge ], [ -1431676326, %land.lhs.true7.i61.sw.epilog.sink.split_crit_edge ], [ -1431676326, %land.lhs.true4.i59.sw.epilog.sink.split_crit_edge ], [ -1431676326, %land.lhs.true.i57.sw.epilog.sink.split_crit_edge ], [ -1431676326, %if.then.i55.sw.epilog.sink.split_crit_edge ], [ -1431676326, %sw.bb5.sw.epilog.sink.split_crit_edge ], [ -1431676326, %land.lhs.true7.i73.sw.epilog.sink.split_crit_edge ], [ -1431676326, %land.lhs.true4.i71.sw.epilog.sink.split_crit_edge ], [ -1431676326, %land.lhs.true.i69.sw.epilog.sink.split_crit_edge ], [ -1431676326, %if.then.i67.sw.epilog.sink.split_crit_edge ], [ -1431676326, %sw.bb7.sw.epilog.sink.split_crit_edge ], [ -1431676326, %land.lhs.true7.i85.sw.epilog.sink.split_crit_edge ], [ -1431676326, %land.lhs.true4.i83.sw.epilog.sink.split_crit_edge ], [ -1431676326, %land.lhs.true.i81.sw.epilog.sink.split_crit_edge ], [ -1431676326, %if.then.i79.sw.epilog.sink.split_crit_edge ], [ -1431676326, %sw.bb9.sw.epilog.sink.split_crit_edge ], [ -1431655766, %land.lhs.true7.i97.sw.epilog.sink.split_crit_edge ], [ -1431655766, %land.lhs.true4.i95.sw.epilog.sink.split_crit_edge ], [ -1431655766, %land.lhs.true.i93.sw.epilog.sink.split_crit_edge ], [ -1431655766, %if.then.i91.sw.epilog.sink.split_crit_edge ], [ -1431655766, %sw.bb11.sw.epilog.sink.split_crit_edge ], [ -1431655766, %land.lhs.true7.i109.sw.epilog.sink.split_crit_edge ], [ -1431655766, %land.lhs.true4.i107.sw.epilog.sink.split_crit_edge ], [ -1431655766, %land.lhs.true.i105.sw.epilog.sink.split_crit_edge ], [ -1431655766, %if.then.i103.sw.epilog.sink.split_crit_edge ], [ -1431655766, %sw.bb13.sw.epilog.sink.split_crit_edge ]
  %fBtcWrite4Byte.i.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 18
  %33 = ptrtoint ptr %fBtcWrite4Byte.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fBtcWrite4Byte.i.i, align 4
  tail call void %34(ptr noundef %pBtCoexist, i32 noundef 1728, i32 noundef %.sink116) #4
  %35 = ptrtoint ptr %fBtcWrite4Byte.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fBtcWrite4Byte.i.i, align 4
  tail call void %36(ptr noundef %pBtCoexist, i32 noundef 1732, i32 noundef %.sink) #4
  %37 = ptrtoint ptr %fBtcWrite4Byte.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fBtcWrite4Byte.i.i, align 4
  tail call void %38(ptr noundef %pBtCoexist, i32 noundef 1736, i32 noundef 16777215) #4
  %fBtcWrite1Byte.i.i111 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 13
  %39 = ptrtoint ptr %fBtcWrite1Byte.i.i111 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fBtcWrite1Byte.i.i111, align 4
  tail call void %40(ptr noundef %pBtCoexist, i32 noundef 1740, i8 noundef zeroext 3) #4
  %41 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 %41, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  %42 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 %42, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  %43 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i32 %43, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  %44 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  store i8 %44, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %land.lhs.true7.i109.sw.epilog_crit_edge, %land.lhs.true7.i97.sw.epilog_crit_edge, %land.lhs.true7.i85.sw.epilog_crit_edge, %land.lhs.true7.i73.sw.epilog_crit_edge, %land.lhs.true7.i61.sw.epilog_crit_edge, %land.lhs.true7.i49.sw.epilog_crit_edge, %land.lhs.true7.i37.sw.epilog_crit_edge, %land.lhs.true7.i.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @halbtc8723b1ant_SetAntPath(ptr noundef %pBtCoexist, i8 noundef zeroext %antPosType, i1 noundef zeroext %bInitHwCfg, i1 noundef zeroext %bWifiOff) unnamed_addr #0 align 64 {
entry:
  %fwVer = alloca i32, align 4
  %bPgExtSwitch = alloca i8, align 1
  %bIsInMpMode = alloca i8, align 1
  %H2C_Parameter = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fwVer) #4
  %0 = ptrtoint ptr %fwVer to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %fwVer, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bPgExtSwitch) #4
  %1 = ptrtoint ptr %bPgExtSwitch to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %bPgExtSwitch, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bIsInMpMode) #4
  %2 = ptrtoint ptr %bIsInMpMode to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %bIsInMpMode, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %H2C_Parameter) #4
  %3 = ptrtoint ptr %H2C_Parameter to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %H2C_Parameter, align 2
  %fBtcGet = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 25
  %4 = ptrtoint ptr %fBtcGet to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fBtcGet, align 4
  %call = call zeroext i8 %5(ptr noundef %pBtCoexist, i8 noundef zeroext 11, ptr noundef nonnull %bPgExtSwitch) #4
  %6 = ptrtoint ptr %fBtcGet to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fBtcGet, align 4
  %call3 = call zeroext i8 %7(ptr noundef %pBtCoexist, i8 noundef zeroext 17, ptr noundef nonnull %fwVer) #4
  %8 = ptrtoint ptr %fwVer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fwVer, align 4
  %10 = add i32 %9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 786431, i32 %10)
  %11 = icmp ult i32 %10, 786431
  br i1 %11, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %12 = ptrtoint ptr %bPgExtSwitch to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bPgExtSwitch, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %bUseExtSwitch.0.off0 = phi i1 [ true, %if.then ], [ false, %lor.lhs.false.if.end_crit_edge ]
  br i1 %bInitHwCfg, label %if.then6, label %if.else15

if.then6:                                         ; preds = %if.end
  %fBtcSetRfReg = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 22
  %14 = ptrtoint ptr %fBtcSetRfReg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fBtcSetRfReg, align 4
  call void %15(ptr noundef %pBtCoexist, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 1048575, i32 noundef 1920) #4
  %fBtcSetBtReg = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 28
  %16 = ptrtoint ptr %fBtcSetBtReg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fBtcSetBtReg, align 4
  call void %17(ptr noundef %pBtCoexist, i8 noundef zeroext 0, i32 noundef 60, i32 noundef 21) #4
  %18 = ptrtoint ptr %fwVer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fwVer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572863, i32 %19)
  %cmp7 = icmp ugt i32 %19, 1572863
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %H2C_Parameter to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %H2C_Parameter, align 2
  %fBtcFillH2c = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 24
  %21 = ptrtoint ptr %fBtcFillH2c to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fBtcFillH2c, align 4
  call void %22(ptr noundef %pBtCoexist, i8 noundef zeroext 110, i32 noundef 1, ptr noundef nonnull %H2C_Parameter) #4
  br label %if.end74.thread303

if.else:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  %fBtcWrite1Byte = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 13
  %23 = ptrtoint ptr %fBtcWrite1Byte to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fBtcWrite1Byte, align 4
  call void %24(ptr noundef %pBtCoexist, i32 noundef 1893, i8 noundef zeroext 24) #4
  br label %if.end74.thread303

if.else15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572863, i32 %9)
  %cmp18 = icmp ugt i32 %9, 1572863
  br i1 %bWifiOff, label %if.then17, label %if.else37

if.then17:                                        ; preds = %if.else15
  br i1 %cmp18, label %if.then19, label %if.else23

if.then19:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %H2C_Parameter to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %H2C_Parameter, align 2
  %fBtcFillH2c21 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 24
  %26 = ptrtoint ptr %fBtcFillH2c21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fBtcFillH2c21, align 4
  call void %27(ptr noundef %pBtCoexist, i8 noundef zeroext 110, i32 noundef 1, ptr noundef nonnull %H2C_Parameter) #4
  br label %if.end25

if.else23:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #6
  %fBtcWrite1Byte24 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 13
  %28 = ptrtoint ptr %fBtcWrite1Byte24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fBtcWrite1Byte24, align 4
  call void %29(ptr noundef %pBtCoexist, i32 noundef 1893, i8 noundef zeroext 24) #4
  br label %if.end25

if.end25:                                         ; preds = %if.else23, %if.then19
  %fBtcWrite1Byte26 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 13
  %30 = ptrtoint ptr %fBtcWrite1Byte26 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fBtcWrite1Byte26, align 4
  call void %31(ptr noundef %pBtCoexist, i32 noundef 1902, i8 noundef zeroext 4) #4
  %32 = ptrtoint ptr %fBtcGet to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fBtcGet, align 4
  %call28 = call zeroext i8 %33(ptr noundef %pBtCoexist, i8 noundef zeroext 12, ptr noundef nonnull %bIsInMpMode) #4
  %34 = ptrtoint ptr %bIsInMpMode to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bIsInMpMode, align 1, !range !39
  %fBtcWrite1ByteBitMask31 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 14
  %36 = ptrtoint ptr %fBtcWrite1ByteBitMask31 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fBtcWrite1ByteBitMask31, align 4
  call void %37(ptr noundef %pBtCoexist, i32 noundef 103, i8 noundef zeroext 32, i8 noundef zeroext %35) #4
  %fBtcRead4Byte = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 17
  %38 = ptrtoint ptr %fBtcRead4Byte to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fBtcRead4Byte, align 4
  %call35 = call i32 %39(ptr noundef %pBtCoexist, i32 noundef 76) #4
  %and36 = and i32 %call35, -25165825
  %fBtcWrite4Byte = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 18
  %40 = ptrtoint ptr %fBtcWrite4Byte to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fBtcWrite4Byte, align 4
  call void %41(ptr noundef %pBtCoexist, i32 noundef 76, i32 noundef %and36) #4
  br i1 %bUseExtSwitch.0.off0, label %if.end25.if.end98_crit_edge, label %if.end25.if.end153_crit_edge

if.end25.if.end153_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end153

if.end25.if.end98_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end98

if.else37:                                        ; preds = %if.else15
  %fBtcRead1Byte = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 12
  br i1 %cmp18, label %if.then39, label %if.else37.while.body_crit_edge

if.else37.while.body_crit_edge:                   ; preds = %if.else37
  br label %while.body

if.then39:                                        ; preds = %if.else37
  %42 = ptrtoint ptr %fBtcRead1Byte to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fBtcRead1Byte, align 4
  %call40 = call zeroext i8 %43(ptr noundef %pBtCoexist, i32 noundef 1893) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call40)
  %cmp41.not = icmp eq i8 %call40, 0
  br i1 %cmp41.not, label %if.then39.if.end64_crit_edge, label %if.then43

if.then39.if.end64_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end64

if.then43:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #6
  %44 = ptrtoint ptr %H2C_Parameter to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %H2C_Parameter, align 2
  %fBtcFillH2c45 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 24
  %45 = ptrtoint ptr %fBtcFillH2c45 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fBtcFillH2c45, align 4
  call void %46(ptr noundef %pBtCoexist, i8 noundef zeroext 110, i32 noundef 1, ptr noundef nonnull %H2C_Parameter) #4
  br label %if.end64

while.cond.loopexit:                              ; preds = %while.body59
  %exitcond.not = icmp eq i32 %inc, 21
  br i1 %exitcond.not, label %while.cond.loopexit.while.end62_crit_edge, label %while.cond.loopexit.while.body_crit_edge

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.cond.loopexit.while.end62_crit_edge:        ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end62

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %if.else37.while.body_crit_edge
  %cntBtCalChk.0307 = phi i32 [ %inc, %while.cond.loopexit.while.body_crit_edge ], [ 0, %if.else37.while.body_crit_edge ]
  %47 = ptrtoint ptr %fBtcRead1Byte to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fBtcRead1Byte, align 4
  %call52 = call zeroext i8 %48(ptr noundef %pBtCoexist, i32 noundef 1181) #4
  %inc = add nuw nsw i32 %cntBtCalChk.0307, 1
  %49 = and i8 %call52, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool55.not = icmp eq i8 %49, 0
  br i1 %tobool55.not, label %while.body.while.end62_crit_edge, label %while.body.while.body59_crit_edge

while.body.while.body59_crit_edge:                ; preds = %while.body
  br label %while.body59

while.body.while.end62_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end62

while.body59:                                     ; preds = %while.body59.while.body59_crit_edge, %while.body.while.body59_crit_edge
  %__ms.0306 = phi i32 [ %dec, %while.body59.while.body59_crit_edge ], [ 50, %while.body.while.body59_crit_edge ]
  %dec = add nsw i32 %__ms.0306, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %50(i32 noundef 214748000) #4
  %tobool58.not = icmp eq i32 %dec, 0
  br i1 %tobool58.not, label %while.cond.loopexit, label %while.body59.while.body59_crit_edge

while.body59.while.body59_crit_edge:              ; preds = %while.body59
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body59

while.end62:                                      ; preds = %while.body.while.end62_crit_edge, %while.cond.loopexit.while.end62_crit_edge
  %fBtcWrite1Byte63 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 13
  %51 = ptrtoint ptr %fBtcWrite1Byte63 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %fBtcWrite1Byte63, align 4
  call void %52(ptr noundef %pBtCoexist, i32 noundef 1893, i8 noundef zeroext 0) #4
  br label %if.end64

if.end64:                                         ; preds = %while.end62, %if.then43, %if.then39.if.end64_crit_edge
  %fBtcRead1Byte65 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 12
  %53 = ptrtoint ptr %fBtcRead1Byte65 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fBtcRead1Byte65, align 4
  %call66 = call zeroext i8 %54(ptr noundef %pBtCoexist, i32 noundef 1902) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %call66)
  %cmp68.not = icmp eq i8 %call66, 12
  br i1 %cmp68.not, label %if.end64.if.end74_crit_edge, label %if.then70

if.end64.if.end74_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end74

if.then70:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #6
  %fBtcWrite1Byte71 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 13
  %55 = ptrtoint ptr %fBtcWrite1Byte71 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %fBtcWrite1Byte71, align 4
  call void %56(ptr noundef %pBtCoexist, i32 noundef 1902, i8 noundef zeroext 12) #4
  br label %if.end74

if.end74:                                         ; preds = %if.then70, %if.end64.if.end74_crit_edge
  br i1 %bUseExtSwitch.0.off0, label %if.end74.if.end98_crit_edge, label %if.end74.if.end153_crit_edge

if.end74.if.end153_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end153

if.end74.if.end98_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end98

if.end74.thread303:                               ; preds = %if.else, %if.then8
  %fBtcWrite1Byte10 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 13
  %57 = ptrtoint ptr %fBtcWrite1Byte10 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fBtcWrite1Byte10, align 4
  call void %58(ptr noundef %pBtCoexist, i32 noundef 1902, i8 noundef zeroext 4) #4
  %fBtcWrite1ByteBitMask = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 14
  %59 = ptrtoint ptr %fBtcWrite1ByteBitMask to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %fBtcWrite1ByteBitMask, align 4
  call void %60(ptr noundef %pBtCoexist, i32 noundef 103, i8 noundef zeroext 32, i8 noundef zeroext 1) #4
  %61 = ptrtoint ptr %fBtcWrite1ByteBitMask to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %fBtcWrite1ByteBitMask, align 4
  call void %62(ptr noundef %pBtCoexist, i32 noundef 57, i8 noundef zeroext 8, i8 noundef zeroext 1) #4
  %63 = ptrtoint ptr %fBtcWrite1Byte10 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %fBtcWrite1Byte10, align 4
  call void %64(ptr noundef %pBtCoexist, i32 noundef 2420, i8 noundef zeroext -1) #4
  %65 = ptrtoint ptr %fBtcWrite1ByteBitMask to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %fBtcWrite1ByteBitMask, align 4
  call void %66(ptr noundef %pBtCoexist, i32 noundef 2372, i8 noundef zeroext 3, i8 noundef zeroext 3) #4
  %67 = ptrtoint ptr %fBtcWrite1Byte10 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %fBtcWrite1Byte10, align 4
  call void %68(ptr noundef %pBtCoexist, i32 noundef 2352, i8 noundef zeroext 119) #4
  %fBtcRead4Byte79 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 17
  %69 = ptrtoint ptr %fBtcRead4Byte79 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %fBtcRead4Byte79, align 4
  %call80 = call i32 %70(ptr noundef %pBtCoexist, i32 noundef 76) #4
  %and81 = and i32 %call80, -25165825
  br i1 %bUseExtSwitch.0.off0, label %if.then78, label %if.then131

if.then78:                                        ; preds = %if.end74.thread303
  call void @__sanitizer_cov_trace_pc() #6
  %or = or i32 %and81, 16777216
  %fBtcWrite4Byte82 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 18
  %71 = ptrtoint ptr %fBtcWrite4Byte82 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %fBtcWrite4Byte82, align 4
  call void %72(ptr noundef %pBtCoexist, i32 noundef 76, i32 noundef %or) #4
  %73 = ptrtoint ptr %fBtcWrite4Byte82 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %fBtcWrite4Byte82, align 4
  call void %74(ptr noundef %pBtCoexist, i32 noundef 2376, i32 noundef 0) #4
  %btdmAntPos = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 2, i32 3
  %75 = ptrtoint ptr %btdmAntPos to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %btdmAntPos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %76)
  %cmp85 = icmp ne i8 %76, 1
  %. = zext i1 %cmp85 to i8
  %77 = ptrtoint ptr %H2C_Parameter to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %., ptr %H2C_Parameter, align 2
  %arrayidx89 = getelementptr inbounds [2 x i8], ptr %H2C_Parameter, i32 0, i32 1
  %78 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %arrayidx89, align 1
  %fBtcFillH2c90 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 24
  %79 = ptrtoint ptr %fBtcFillH2c90 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %fBtcFillH2c90, align 4
  call void %80(ptr noundef %pBtCoexist, i8 noundef zeroext 101, i32 noundef 2, ptr noundef nonnull %H2C_Parameter) #4
  br label %if.end98

if.end98:                                         ; preds = %if.then78, %if.end74.if.end98_crit_edge, %if.end25.if.end98_crit_edge
  %81 = zext i8 %antPosType to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %antPosType, label %sw.bb119 [
    i8 0, label %sw.bb
    i8 1, label %sw.bb109
  ]

sw.bb:                                            ; preds = %if.end98
  %btdmAntPos100 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 2, i32 3
  %82 = ptrtoint ptr %btdmAntPos100 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %btdmAntPos100, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %83)
  %cmp102 = icmp eq i8 %83, 1
  %fBtcWrite1ByteBitMask105 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 14
  %84 = ptrtoint ptr %fBtcWrite1ByteBitMask105 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %fBtcWrite1ByteBitMask105, align 4
  br i1 %cmp102, label %if.then104, label %if.else106

if.then104:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  call void %85(ptr noundef %pBtCoexist, i32 noundef 2348, i8 noundef zeroext 3, i8 noundef zeroext 1) #4
  br label %if.end187

if.else106:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  call void %85(ptr noundef %pBtCoexist, i32 noundef 2348, i8 noundef zeroext 3, i8 noundef zeroext 2) #4
  br label %if.end187

sw.bb109:                                         ; preds = %if.end98
  %btdmAntPos110 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 2, i32 3
  %86 = ptrtoint ptr %btdmAntPos110 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %btdmAntPos110, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %87)
  %cmp112 = icmp eq i8 %87, 1
  %fBtcWrite1ByteBitMask115 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 14
  %88 = ptrtoint ptr %fBtcWrite1ByteBitMask115 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %fBtcWrite1ByteBitMask115, align 4
  br i1 %cmp112, label %if.then114, label %if.else116

if.then114:                                       ; preds = %sw.bb109
  call void @__sanitizer_cov_trace_pc() #6
  call void %89(ptr noundef %pBtCoexist, i32 noundef 2348, i8 noundef zeroext 3, i8 noundef zeroext 2) #4
  br label %if.end187

if.else116:                                       ; preds = %sw.bb109
  call void @__sanitizer_cov_trace_pc() #6
  call void %89(ptr noundef %pBtCoexist, i32 noundef 2348, i8 noundef zeroext 3, i8 noundef zeroext 1) #4
  br label %if.end187

sw.bb119:                                         ; preds = %if.end98
  %btdmAntPos120 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 2, i32 3
  %90 = ptrtoint ptr %btdmAntPos120 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %btdmAntPos120, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %91)
  %cmp122 = icmp eq i8 %91, 1
  %fBtcWrite1ByteBitMask125 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 14
  %92 = ptrtoint ptr %fBtcWrite1ByteBitMask125 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %fBtcWrite1ByteBitMask125, align 4
  br i1 %cmp122, label %if.then124, label %if.else126

if.then124:                                       ; preds = %sw.bb119
  call void @__sanitizer_cov_trace_pc() #6
  call void %93(ptr noundef %pBtCoexist, i32 noundef 2348, i8 noundef zeroext 3, i8 noundef zeroext 1) #4
  br label %if.end187

if.else126:                                       ; preds = %sw.bb119
  call void @__sanitizer_cov_trace_pc() #6
  call void %93(ptr noundef %pBtCoexist, i32 noundef 2348, i8 noundef zeroext 3, i8 noundef zeroext 2) #4
  br label %if.end187

if.then131:                                       ; preds = %if.end74.thread303
  call void @__sanitizer_cov_trace_pc() #6
  %and135 = or i32 %and81, 8388608
  %fBtcWrite4Byte136 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 18
  %94 = ptrtoint ptr %fBtcWrite4Byte136 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %fBtcWrite4Byte136, align 4
  call void %95(ptr noundef %pBtCoexist, i32 noundef 76, i32 noundef %and135) #4
  %fBtcWrite1ByteBitMask137 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 14
  %96 = ptrtoint ptr %fBtcWrite1ByteBitMask137 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %fBtcWrite1ByteBitMask137, align 4
  call void %97(ptr noundef %pBtCoexist, i32 noundef 100, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  %btdmAntPos138 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 2, i32 3
  %98 = ptrtoint ptr %btdmAntPos138 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %btdmAntPos138, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %99)
  %cmp140 = icmp ne i8 %99, 1
  %.311 = zext i1 %cmp140 to i8
  %100 = ptrtoint ptr %H2C_Parameter to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %.311, ptr %H2C_Parameter, align 2
  %arrayidx144 = getelementptr inbounds [2 x i8], ptr %H2C_Parameter, i32 0, i32 1
  %101 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %arrayidx144, align 1
  %fBtcFillH2c145 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 24
  %102 = ptrtoint ptr %fBtcFillH2c145 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %fBtcFillH2c145, align 4
  call void %103(ptr noundef %pBtCoexist, i8 noundef zeroext 101, i32 noundef 2, ptr noundef nonnull %H2C_Parameter) #4
  br label %if.end153

if.end153:                                        ; preds = %if.then131, %if.end74.if.end153_crit_edge, %if.end25.if.end153_crit_edge
  %104 = zext i8 %antPosType to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values.7)
  switch i8 %antPosType, label %sw.bb176 [
    i8 0, label %sw.bb155
    i8 1, label %sw.bb165
  ]

sw.bb155:                                         ; preds = %if.end153
  %btdmAntPos156 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 2, i32 3
  %105 = ptrtoint ptr %btdmAntPos156 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %btdmAntPos156, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %106)
  %cmp158 = icmp eq i8 %106, 1
  %fBtcWrite4Byte161 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 18
  %107 = ptrtoint ptr %fBtcWrite4Byte161 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %fBtcWrite4Byte161, align 4
  br i1 %cmp158, label %if.then160, label %if.else162

if.then160:                                       ; preds = %sw.bb155
  call void @__sanitizer_cov_trace_pc() #6
  call void %108(ptr noundef %pBtCoexist, i32 noundef 2376, i32 noundef 0) #4
  br label %if.end187

if.else162:                                       ; preds = %sw.bb155
  call void @__sanitizer_cov_trace_pc() #6
  call void %108(ptr noundef %pBtCoexist, i32 noundef 2376, i32 noundef 640) #4
  br label %if.end187

sw.bb165:                                         ; preds = %if.end153
  %btdmAntPos166 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 2, i32 3
  %109 = ptrtoint ptr %btdmAntPos166 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %btdmAntPos166, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %110)
  %cmp168 = icmp eq i8 %110, 1
  %fBtcWrite4Byte171 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 18
  %111 = ptrtoint ptr %fBtcWrite4Byte171 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %fBtcWrite4Byte171, align 4
  br i1 %cmp168, label %if.then170, label %if.else172

if.then170:                                       ; preds = %sw.bb165
  call void @__sanitizer_cov_trace_pc() #6
  call void %112(ptr noundef %pBtCoexist, i32 noundef 2376, i32 noundef 640) #4
  br label %if.end187

if.else172:                                       ; preds = %sw.bb165
  call void @__sanitizer_cov_trace_pc() #6
  call void %112(ptr noundef %pBtCoexist, i32 noundef 2376, i32 noundef 0) #4
  br label %if.end187

sw.bb176:                                         ; preds = %if.end153
  %btdmAntPos177 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 2, i32 3
  %113 = ptrtoint ptr %btdmAntPos177 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %btdmAntPos177, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %114)
  %cmp179 = icmp eq i8 %114, 1
  %fBtcWrite4Byte182 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 18
  %115 = ptrtoint ptr %fBtcWrite4Byte182 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %fBtcWrite4Byte182, align 4
  br i1 %cmp179, label %if.then181, label %if.else183

if.then181:                                       ; preds = %sw.bb176
  call void @__sanitizer_cov_trace_pc() #6
  call void %116(ptr noundef %pBtCoexist, i32 noundef 2376, i32 noundef 512) #4
  br label %if.end187

if.else183:                                       ; preds = %sw.bb176
  call void @__sanitizer_cov_trace_pc() #6
  call void %116(ptr noundef %pBtCoexist, i32 noundef 2376, i32 noundef 128) #4
  br label %if.end187

if.end187:                                        ; preds = %if.else183, %if.then181, %if.else172, %if.then170, %if.else162, %if.then160, %if.else126, %if.then124, %if.else116, %if.then114, %if.else106, %if.then104
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %H2C_Parameter) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bIsInMpMode) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bPgExtSwitch) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fwVer) #4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @EXhalbtc8723b1ant_LpsNotify(ptr nocapture noundef readonly %pBtCoexist, i8 noundef zeroext %type) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bManualControl = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 9
  %0 = ptrtoint ptr %bManualControl to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bManualControl, align 2, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

lor.lhs.false:                                    ; preds = %entry
  %bStopCoexDm = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 8
  %2 = ptrtoint ptr %bStopCoexDm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bStopCoexDm, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %type)
  %switch = icmp ult i8 %type, 2
  %or.cond = and i1 %tobool1.not, %switch
  br i1 %or.cond, label %if.end10.sink.split, label %lor.lhs.false.if.end10_crit_edge

lor.lhs.false.if.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.end10.sink.split:                              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  store i8 %type, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 5), align 1
  br label %if.end10

if.end10:                                         ; preds = %if.end10.sink.split, %lor.lhs.false.if.end10_crit_edge, %entry.if.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @EXhalbtc8723b1ant_ScanNotify(ptr noundef %pBtCoexist, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  %bRejectRxAgg.i = alloca i8, align 1
  %bBtCtrlRxAggSize.i = alloca i8, align 1
  %rxAggSize.i = alloca i8, align 1
  %H2C_Parameter.i = alloca [1 x i8], align 1
  %bWifiConnected = alloca i8, align 1
  %bBtHsOn = alloca i8, align 1
  %wifiLinkStatus = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bWifiConnected) #4
  %0 = ptrtoint ptr %bWifiConnected to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %bWifiConnected, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bBtHsOn) #4
  %1 = ptrtoint ptr %bBtHsOn to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %bBtHsOn, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifiLinkStatus) #4
  %2 = ptrtoint ptr %wifiLinkStatus to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %wifiLinkStatus, align 4
  %bManualControl = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 9
  %3 = ptrtoint ptr %bManualControl to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bManualControl, align 2, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %bStopCoexDm = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 8
  %5 = ptrtoint ptr %bStopCoexDm to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bStopCoexDm, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not = icmp eq i8 %6, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %type)
  %cmp = icmp eq i8 %type, 1
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 21), align 2
  tail call fastcc void @halbtc8723b1ant_PsTdma(ptr noundef %pBtCoexist, i1 noundef zeroext true, i1 noundef zeroext false, i8 noundef zeroext 8)
  %fBtcRead4Byte = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 17
  %7 = ptrtoint ptr %fBtcRead4Byte to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fBtcRead4Byte, align 4
  %call = tail call i32 %8(ptr noundef %pBtCoexist, i32 noundef 2376) #4
  %fBtcRead1Byte = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 12
  %9 = ptrtoint ptr %fBtcRead1Byte to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fBtcRead1Byte, align 4
  %call4 = tail call zeroext i8 %10(ptr noundef %pBtCoexist, i32 noundef 1893) #4
  %11 = ptrtoint ptr %fBtcRead1Byte to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fBtcRead1Byte, align 4
  %call6 = tail call zeroext i8 %12(ptr noundef %pBtCoexist, i32 noundef 103) #4
  br label %if.end9

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 21), align 2
  %fBtcGet = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 25
  %13 = ptrtoint ptr %fBtcGet to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fBtcGet, align 4
  %call8 = tail call zeroext i8 %14(ptr noundef %pBtCoexist, i8 noundef zeroext 24, ptr noundef getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 25)) #4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then3
  %btInfo = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 3
  %15 = ptrtoint ptr %btInfo to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %btInfo, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool10.not = icmp eq i8 %16, 0
  br i1 %tobool10.not, label %if.end12, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %fBtcGet13 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 25
  %17 = ptrtoint ptr %fBtcGet13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fBtcGet13, align 4
  %call14 = call zeroext i8 %18(ptr noundef %pBtCoexist, i8 noundef zeroext 0, ptr noundef nonnull %bBtHsOn) #4
  %19 = ptrtoint ptr %fBtcGet13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fBtcGet13, align 4
  %call16 = call zeroext i8 %20(ptr noundef %pBtCoexist, i8 noundef zeroext 2, ptr noundef nonnull %bWifiConnected) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %H2C_Parameter.i) #4
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 16), align 1
  %21 = ptrtoint ptr %H2C_Parameter.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %H2C_Parameter.i, align 1
  %fBtcFillH2c.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 24
  %22 = ptrtoint ptr %fBtcFillH2c.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fBtcFillH2c.i, align 4
  call void %23(ptr noundef %pBtCoexist, i8 noundef zeroext 97, i32 noundef 1, ptr noundef nonnull %H2C_Parameter.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %H2C_Parameter.i) #4
  %24 = ptrtoint ptr %fBtcGet13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fBtcGet13, align 4
  %call18 = call zeroext i8 %25(ptr noundef %pBtCoexist, i8 noundef zeroext 18, ptr noundef nonnull %wifiLinkStatus) #4
  %26 = ptrtoint ptr %wifiLinkStatus to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %wifiLinkStatus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131071, i32 %27)
  %cmp19 = icmp ugt i32 %27, 131071
  br i1 %cmp19, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_LimitedTx(ptr noundef %pBtCoexist, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bRejectRxAgg.i) #4
  %28 = ptrtoint ptr %bRejectRxAgg.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %bRejectRxAgg.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bBtCtrlRxAggSize.i) #4
  %29 = ptrtoint ptr %bBtCtrlRxAggSize.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %bBtCtrlRxAggSize.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rxAggSize.i) #4
  %30 = ptrtoint ptr %rxAggSize.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 5, ptr %rxAggSize.i, align 1
  %fBtcSet.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 26
  %31 = ptrtoint ptr %fBtcSet.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fBtcSet.i, align 4
  %call.i = call zeroext i8 %32(ptr noundef %pBtCoexist, i8 noundef zeroext 4, ptr noundef nonnull %bRejectRxAgg.i) #4
  %33 = ptrtoint ptr %fBtcSet.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fBtcSet.i, align 4
  %call7.i = call zeroext i8 %34(ptr noundef %pBtCoexist, i8 noundef zeroext 5, ptr noundef nonnull %bBtCtrlRxAggSize.i) #4
  %35 = ptrtoint ptr %fBtcSet.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fBtcSet.i, align 4
  %call9.i = call zeroext i8 %36(ptr noundef %pBtCoexist, i8 noundef zeroext 9, ptr noundef nonnull %rxAggSize.i) #4
  %37 = ptrtoint ptr %fBtcSet.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fBtcSet.i, align 4
  %call11.i = call zeroext i8 %38(ptr noundef %pBtCoexist, i8 noundef zeroext 11, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rxAggSize.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bBtCtrlRxAggSize.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bRejectRxAgg.i) #4
  call fastcc void @halbtc8723b1ant_ActionWifiMultiPort(ptr noundef %pBtCoexist)
  br label %cleanup

if.end23:                                         ; preds = %if.end12
  %39 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 19), align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool24.not = icmp eq i8 %39, 0
  br i1 %tobool24.not, label %if.else26, label %if.then25

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_ActionBtInquiry(ptr noundef %pBtCoexist)
  br label %cleanup

if.else26:                                        ; preds = %if.end23
  %40 = ptrtoint ptr %bBtHsOn to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %bBtHsOn, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool27.not = icmp eq i8 %41, 0
  br i1 %tobool27.not, label %if.end30, label %if.then28

if.then28:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_ActionHs(ptr noundef %pBtCoexist)
  br label %cleanup

if.end30:                                         ; preds = %if.else26
  br i1 %cmp, label %if.then34, label %if.else39

if.then34:                                        ; preds = %if.end30
  %42 = ptrtoint ptr %bWifiConnected to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %bWifiConnected, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool35.not = icmp eq i8 %43, 0
  br i1 %tobool35.not, label %if.then36, label %if.else37

if.then36:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_ActionWifiNotConnectedScan(ptr noundef %pBtCoexist)
  br label %cleanup

if.else37:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_ActionWifiConnectedScan(ptr noundef %pBtCoexist)
  br label %cleanup

if.else39:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %type)
  %cmp41 = icmp eq i8 %type, 0
  br i1 %cmp41, label %if.then43, label %if.else39.cleanup_crit_edge

if.else39.cleanup_crit_edge:                      ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then43:                                        ; preds = %if.else39
  %44 = ptrtoint ptr %bWifiConnected to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %bWifiConnected, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool44.not = icmp eq i8 %45, 0
  br i1 %tobool44.not, label %if.then45, label %if.else46

if.then45:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_ActionWifiNotConnected(ptr noundef %pBtCoexist)
  br label %cleanup

if.else46:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_ActionWifiConnected(ptr noundef %pBtCoexist)
  br label %cleanup

cleanup:                                          ; preds = %if.else46, %if.then45, %if.else39.cleanup_crit_edge, %if.else37, %if.then36, %if.then28, %if.then25, %if.then21, %if.end9.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifiLinkStatus) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bBtHsOn) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bWifiConnected) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @halbtc8723b1ant_LimitedTx(ptr noundef %pBtCoexist, i8 noundef zeroext %raMaskType, i8 noundef zeroext %arfrType, i8 noundef zeroext %ampduTimeType) unnamed_addr #0 align 64 {
entry:
  %bWifiUnderBMode.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %raMaskType to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %raMaskType, label %entry.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  store i32 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 35), align 4
  %1 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 34), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 0
  br i1 %cmp.not.i, label %sw.bb.sw.epilog.sink.split_crit_edge, label %sw.bb.sw.epilog.sink.split.sink.split_crit_edge

sw.bb.sw.epilog.sink.split.sink.split_crit_edge:  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.sink.split

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %entry
  store i32 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 35), align 4
  %2 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 34), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %cmp.not.i1 = icmp eq i32 %2, 3
  br i1 %cmp.not.i1, label %sw.bb1.sw.epilog.sink.split_crit_edge, label %sw.bb1.sw.epilog.sink.split.sink.split_crit_edge

sw.bb1.sw.epilog.sink.split.sink.split_crit_edge: ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.sink.split

sw.bb1.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

sw.epilog.sink.split.sink.split:                  ; preds = %sw.bb1.sw.epilog.sink.split.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split.sink.split_crit_edge
  %fBtcSet.i2 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 26
  %3 = ptrtoint ptr %fBtcSet.i2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fBtcSet.i2, align 4
  %call.i3 = tail call zeroext i8 %4(ptr noundef %pBtCoexist, i8 noundef zeroext 19, ptr noundef getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 35)) #4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.epilog.sink.split.sink.split, %sw.bb1.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge
  %5 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 35), align 4
  store i32 %5, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 34), align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bWifiUnderBMode.i) #4
  %6 = ptrtoint ptr %bWifiUnderBMode.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %bWifiUnderBMode.i, align 1
  store i8 %arfrType, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 37), align 1
  %7 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 36), align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %arfrType)
  %cmp.not.i6 = icmp eq i8 %7, %arfrType
  br i1 %cmp.not.i6, label %sw.epilog.halbtc8723b1ant_AutoRateFallbackRetry.exit_crit_edge, label %if.then.i7

sw.epilog.halbtc8723b1ant_AutoRateFallbackRetry.exit_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_AutoRateFallbackRetry.exit

if.then.i7:                                       ; preds = %sw.epilog
  %8 = zext i8 %arfrType to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.9)
  switch i8 %arfrType, label %if.then.i7.halbtc8723b1ant_AutoRateFallbackRetry.exit_crit_edge [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb7.i
  ]

if.then.i7.halbtc8723b1ant_AutoRateFallbackRetry.exit_crit_edge: ; preds = %if.then.i7
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_AutoRateFallbackRetry.exit

sw.bb.i:                                          ; preds = %if.then.i7
  call void @__sanitizer_cov_trace_pc() #6
  %fBtcWrite4Byte.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 18
  %9 = ptrtoint ptr %fBtcWrite4Byte.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fBtcWrite4Byte.i, align 4
  %11 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 26), align 4
  tail call void %10(ptr noundef %pBtCoexist, i32 noundef 1072, i32 noundef %11) #4
  %12 = ptrtoint ptr %fBtcWrite4Byte.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fBtcWrite4Byte.i, align 4
  %14 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 27), align 4
  tail call void %13(ptr noundef %pBtCoexist, i32 noundef 1076, i32 noundef %14) #4
  br label %halbtc8723b1ant_AutoRateFallbackRetry.exit

sw.bb7.i:                                         ; preds = %if.then.i7
  %fBtcGet.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 25
  %15 = ptrtoint ptr %fBtcGet.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fBtcGet.i, align 4
  %call.i8 = call zeroext i8 %16(ptr noundef %pBtCoexist, i8 noundef zeroext 10, ptr noundef nonnull %bWifiUnderBMode.i) #4
  %17 = ptrtoint ptr %bWifiUnderBMode.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bWifiUnderBMode.i, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool8.not.i = icmp eq i8 %18, 0
  %fBtcWrite4Byte12.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 18
  %19 = ptrtoint ptr %fBtcWrite4Byte12.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fBtcWrite4Byte12.i, align 4
  call void %20(ptr noundef %pBtCoexist, i32 noundef 1072, i32 noundef 0) #4
  %21 = ptrtoint ptr %fBtcWrite4Byte12.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fBtcWrite4Byte12.i, align 4
  br i1 %tobool8.not.i, label %if.else.i, label %if.then9.i

if.then9.i:                                       ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #6
  call void %22(ptr noundef %pBtCoexist, i32 noundef 1076, i32 noundef 16843009) #4
  br label %halbtc8723b1ant_AutoRateFallbackRetry.exit

if.else.i:                                        ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #6
  call void %22(ptr noundef %pBtCoexist, i32 noundef 1076, i32 noundef 67305985) #4
  br label %halbtc8723b1ant_AutoRateFallbackRetry.exit

halbtc8723b1ant_AutoRateFallbackRetry.exit:       ; preds = %if.else.i, %if.then9.i, %sw.bb.i, %if.then.i7.halbtc8723b1ant_AutoRateFallbackRetry.exit_crit_edge, %sw.epilog.halbtc8723b1ant_AutoRateFallbackRetry.exit_crit_edge
  %23 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 37), align 1
  store i8 %23, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 36), align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bWifiUnderBMode.i) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 39), align 1
  %24 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 38), align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp.not.i9 = icmp eq i8 %24, 0
  br i1 %cmp.not.i9, label %halbtc8723b1ant_AutoRateFallbackRetry.exit.halbtc8723b1ant_RetryLimit.exit_crit_edge, label %sw.bb.i10

halbtc8723b1ant_AutoRateFallbackRetry.exit.halbtc8723b1ant_RetryLimit.exit_crit_edge: ; preds = %halbtc8723b1ant_AutoRateFallbackRetry.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_RetryLimit.exit

sw.bb.i10:                                        ; preds = %halbtc8723b1ant_AutoRateFallbackRetry.exit
  call void @__sanitizer_cov_trace_pc() #6
  %fBtcWrite2Byte.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 16
  %25 = ptrtoint ptr %fBtcWrite2Byte.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fBtcWrite2Byte.i, align 4
  %27 = load i16, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 28), align 4
  call void %26(ptr noundef %pBtCoexist, i32 noundef 1066, i16 noundef zeroext %27) #4
  br label %halbtc8723b1ant_RetryLimit.exit

halbtc8723b1ant_RetryLimit.exit:                  ; preds = %sw.bb.i10, %halbtc8723b1ant_AutoRateFallbackRetry.exit.halbtc8723b1ant_RetryLimit.exit_crit_edge
  %28 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 39), align 1
  store i8 %28, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 38), align 2
  store i8 %ampduTimeType, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 41), align 1
  %29 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 40), align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %ampduTimeType)
  %cmp.not.i11 = icmp eq i8 %29, %ampduTimeType
  br i1 %cmp.not.i11, label %halbtc8723b1ant_RetryLimit.exit.halbtc8723b1ant_AmpduMaxTime.exit_crit_edge, label %if.then.i12

halbtc8723b1ant_RetryLimit.exit.halbtc8723b1ant_AmpduMaxTime.exit_crit_edge: ; preds = %halbtc8723b1ant_RetryLimit.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_AmpduMaxTime.exit

if.then.i12:                                      ; preds = %halbtc8723b1ant_RetryLimit.exit
  %30 = zext i8 %ampduTimeType to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.10)
  switch i8 %ampduTimeType, label %if.then.i12.halbtc8723b1ant_AmpduMaxTime.exit_crit_edge [
    i8 0, label %sw.bb.i13
    i8 1, label %sw.bb6.i
  ]

if.then.i12.halbtc8723b1ant_AmpduMaxTime.exit_crit_edge: ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_AmpduMaxTime.exit

sw.bb.i13:                                        ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #6
  %fBtcWrite1Byte.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 13
  %31 = ptrtoint ptr %fBtcWrite1Byte.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fBtcWrite1Byte.i, align 4
  %33 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 29), align 2
  call void %32(ptr noundef %pBtCoexist, i32 noundef 1110, i8 noundef zeroext %33) #4
  br label %halbtc8723b1ant_AmpduMaxTime.exit

sw.bb6.i:                                         ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #6
  %fBtcWrite1Byte7.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 13
  %34 = ptrtoint ptr %fBtcWrite1Byte7.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fBtcWrite1Byte7.i, align 4
  call void %35(ptr noundef %pBtCoexist, i32 noundef 1110, i8 noundef zeroext 56) #4
  br label %halbtc8723b1ant_AmpduMaxTime.exit

halbtc8723b1ant_AmpduMaxTime.exit:                ; preds = %sw.bb6.i, %sw.bb.i13, %if.then.i12.halbtc8723b1ant_AmpduMaxTime.exit_crit_edge, %halbtc8723b1ant_RetryLimit.exit.halbtc8723b1ant_AmpduMaxTime.exit_crit_edge
  %36 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 41), align 1
  store i8 %36, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 40), align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @halbtc8723b1ant_LimitedRx(ptr noundef %pBtCoexist, i1 noundef zeroext %bBtCtrlAggBufSize, i8 noundef zeroext %aggBufSize) unnamed_addr #0 align 64 {
entry:
  %bRejectRxAgg = alloca i8, align 1
  %bBtCtrlRxAggSize = alloca i8, align 1
  %rxAggSize = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool2 = zext i1 %bBtCtrlAggBufSize to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bRejectRxAgg) #4
  %0 = ptrtoint ptr %bRejectRxAgg to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %bRejectRxAgg, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bBtCtrlRxAggSize) #4
  %1 = ptrtoint ptr %bBtCtrlRxAggSize to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %frombool2, ptr %bBtCtrlRxAggSize, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rxAggSize) #4
  %2 = ptrtoint ptr %rxAggSize to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %aggBufSize, ptr %rxAggSize, align 1
  %fBtcSet = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 26
  %3 = ptrtoint ptr %fBtcSet to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fBtcSet, align 4
  %call = call zeroext i8 %4(ptr noundef %pBtCoexist, i8 noundef zeroext 4, ptr noundef nonnull %bRejectRxAgg) #4
  %5 = ptrtoint ptr %fBtcSet to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fBtcSet, align 4
  %call7 = call zeroext i8 %6(ptr noundef %pBtCoexist, i8 noundef zeroext 5, ptr noundef nonnull %bBtCtrlRxAggSize) #4
  %7 = ptrtoint ptr %fBtcSet to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fBtcSet, align 4
  %call9 = call zeroext i8 %8(ptr noundef %pBtCoexist, i8 noundef zeroext 9, ptr noundef nonnull %rxAggSize) #4
  %9 = ptrtoint ptr %fBtcSet to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fBtcSet, align 4
  %call11 = call zeroext i8 %10(ptr noundef %pBtCoexist, i8 noundef zeroext 11, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rxAggSize) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bBtCtrlRxAggSize) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bRejectRxAgg) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @halbtc8723b1ant_ActionWifiMultiPort(ptr noundef %pBtCoexist) unnamed_addr #0 align 64 {
entry:
  %bLowPwrDisable.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bLowPwrDisable.i) #4
  %0 = ptrtoint ptr %bLowPwrDisable.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %bLowPwrDisable.i, align 1
  %fBtcSet.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 26
  %1 = ptrtoint ptr %fBtcSet.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fBtcSet.i, align 4
  %call5.i = call zeroext i8 %2(ptr noundef %pBtCoexist, i8 noundef zeroext 18, ptr noundef nonnull %bLowPwrDisable.i) #4
  %3 = ptrtoint ptr %fBtcSet.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fBtcSet.i, align 4
  %call7.i = call zeroext i8 %4(ptr noundef %pBtCoexist, i8 noundef zeroext 17, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 37), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bLowPwrDisable.i) #4
  call fastcc void @halbtc8723b1ant_PsTdma(ptr noundef %pBtCoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 8)
  store i8 2, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 36), align 2
  store i32 1515870810, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 1515870810, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 16777215, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  %5 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1515870810, i32 %5)
  %cmp.i42.i = icmp eq i32 %5, 1515870810
  br i1 %cmp.i42.i, label %land.lhs.true.i45.i, label %entry.sw.epilog.sink.split.i_crit_edge

entry.sw.epilog.sink.split.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

land.lhs.true.i45.i:                              ; preds = %entry
  %6 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1515870810, i32 %6)
  %cmp3.i44.i = icmp eq i32 %6, 1515870810
  br i1 %cmp3.i44.i, label %land.lhs.true4.i47.i, label %land.lhs.true.i45.i.sw.epilog.sink.split.i_crit_edge

land.lhs.true.i45.i.sw.epilog.sink.split.i_crit_edge: ; preds = %land.lhs.true.i45.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

land.lhs.true4.i47.i:                             ; preds = %land.lhs.true.i45.i
  %7 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %7)
  %cmp6.i46.i = icmp eq i32 %7, 16777215
  br i1 %cmp6.i46.i, label %land.lhs.true7.i49.i, label %land.lhs.true4.i47.i.sw.epilog.sink.split.i_crit_edge

land.lhs.true4.i47.i.sw.epilog.sink.split.i_crit_edge: ; preds = %land.lhs.true4.i47.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

land.lhs.true7.i49.i:                             ; preds = %land.lhs.true4.i47.i
  %8 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %8)
  %cmp10.i48.i = icmp eq i8 %8, 3
  br i1 %cmp10.i48.i, label %land.lhs.true7.i49.i.halbtc8723b1ant_CoexTableWithType.exit_crit_edge, label %land.lhs.true7.i49.i.sw.epilog.sink.split.i_crit_edge

land.lhs.true7.i49.i.sw.epilog.sink.split.i_crit_edge: ; preds = %land.lhs.true7.i49.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

land.lhs.true7.i49.i.halbtc8723b1ant_CoexTableWithType.exit_crit_edge: ; preds = %land.lhs.true7.i49.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_CoexTableWithType.exit

sw.epilog.sink.split.i:                           ; preds = %land.lhs.true7.i49.i.sw.epilog.sink.split.i_crit_edge, %land.lhs.true4.i47.i.sw.epilog.sink.split.i_crit_edge, %land.lhs.true.i45.i.sw.epilog.sink.split.i_crit_edge, %entry.sw.epilog.sink.split.i_crit_edge
  %fBtcWrite4Byte.i.i.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 18
  %9 = ptrtoint ptr %fBtcWrite4Byte.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fBtcWrite4Byte.i.i.i, align 4
  call void %10(ptr noundef %pBtCoexist, i32 noundef 1728, i32 noundef 1515870810) #4
  %11 = ptrtoint ptr %fBtcWrite4Byte.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fBtcWrite4Byte.i.i.i, align 4
  call void %12(ptr noundef %pBtCoexist, i32 noundef 1732, i32 noundef 1515870810) #4
  %13 = ptrtoint ptr %fBtcWrite4Byte.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fBtcWrite4Byte.i.i.i, align 4
  call void %14(ptr noundef %pBtCoexist, i32 noundef 1736, i32 noundef 16777215) #4
  %fBtcWrite1Byte.i.i111.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 13
  %15 = ptrtoint ptr %fBtcWrite1Byte.i.i111.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fBtcWrite1Byte.i.i111.i, align 4
  call void %16(ptr noundef %pBtCoexist, i32 noundef 1740, i8 noundef zeroext 3) #4
  %17 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 %17, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  %18 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 %18, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  %19 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i32 %19, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  %20 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  store i8 %20, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  br label %halbtc8723b1ant_CoexTableWithType.exit

halbtc8723b1ant_CoexTableWithType.exit:           ; preds = %sw.epilog.sink.split.i, %land.lhs.true7.i49.i.halbtc8723b1ant_CoexTableWithType.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @halbtc8723b1ant_ActionBtInquiry(ptr noundef %pBtCoexist) unnamed_addr #0 align 64 {
entry:
  %bLowPwrDisable.i68 = alloca i8, align 1
  %bLowPwrDisable.i52 = alloca i8, align 1
  %bLowPwrDisable.i43 = alloca i8, align 1
  %bLowPwrDisable.i = alloca i8, align 1
  %bWifiConnected = alloca i8, align 1
  %bApEnable = alloca i8, align 1
  %bWifiBusy = alloca i8, align 1
  %bBtBusy = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bWifiConnected) #4
  %0 = ptrtoint ptr %bWifiConnected to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %bWifiConnected, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bApEnable) #4
  %1 = ptrtoint ptr %bApEnable to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %bApEnable, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bWifiBusy) #4
  %2 = ptrtoint ptr %bWifiBusy to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %bWifiBusy, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bBtBusy) #4
  %3 = ptrtoint ptr %bBtBusy to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %bBtBusy, align 1
  %fBtcGet = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 25
  %4 = ptrtoint ptr %fBtcGet to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fBtcGet, align 4
  %call = call zeroext i8 %5(ptr noundef %pBtCoexist, i8 noundef zeroext 8, ptr noundef nonnull %bApEnable) #4
  %6 = ptrtoint ptr %fBtcGet to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fBtcGet, align 4
  %call2 = call zeroext i8 %7(ptr noundef %pBtCoexist, i8 noundef zeroext 2, ptr noundef nonnull %bWifiConnected) #4
  %8 = ptrtoint ptr %fBtcGet to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fBtcGet, align 4
  %call4 = call zeroext i8 %9(ptr noundef %pBtCoexist, i8 noundef zeroext 3, ptr noundef nonnull %bWifiBusy) #4
  %fBtcSet = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 26
  %10 = ptrtoint ptr %fBtcSet to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fBtcSet, align 4
  %call5 = call zeroext i8 %11(ptr noundef %pBtCoexist, i8 noundef zeroext 1, ptr noundef nonnull %bBtBusy) #4
  %12 = ptrtoint ptr %bWifiConnected to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bWifiConnected, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %14 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 21), align 2, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool6.not = icmp eq i8 %14, 0
  br i1 %tobool6.not, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bLowPwrDisable.i) #4
  %15 = ptrtoint ptr %bLowPwrDisable.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %bLowPwrDisable.i, align 1
  %16 = ptrtoint ptr %fBtcSet to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fBtcSet, align 4
  %call5.i = call zeroext i8 %17(ptr noundef %pBtCoexist, i8 noundef zeroext 18, ptr noundef nonnull %bLowPwrDisable.i) #4
  %18 = ptrtoint ptr %fBtcSet to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fBtcSet, align 4
  %call7.i = call zeroext i8 %19(ptr noundef %pBtCoexist, i8 noundef zeroext 17, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 37), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bLowPwrDisable.i) #4
  call fastcc void @halbtc8723b1ant_PsTdma(ptr noundef %pBtCoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 8)
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 36), align 2
  store i32 1431655765, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 1431655765, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 16777215, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  %20 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1431655765, i32 %20)
  %cmp.i.i = icmp eq i32 %20, 1431655765
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.then.sw.epilog.sink.split.i_crit_edge

if.then.sw.epilog.sink.split.i_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

land.lhs.true.i.i:                                ; preds = %if.then
  %21 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1431655765, i32 %21)
  %cmp3.i.i = icmp eq i32 %21, 1431655765
  br i1 %cmp3.i.i, label %land.lhs.true4.i.i, label %land.lhs.true.i.i.sw.epilog.sink.split.i_crit_edge

land.lhs.true.i.i.sw.epilog.sink.split.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %22 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %22)
  %cmp6.i.i = icmp eq i32 %22, 16777215
  br i1 %cmp6.i.i, label %land.lhs.true7.i.i, label %land.lhs.true4.i.i.sw.epilog.sink.split.i_crit_edge

land.lhs.true4.i.i.sw.epilog.sink.split.i_crit_edge: ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

land.lhs.true7.i.i:                               ; preds = %land.lhs.true4.i.i
  %23 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %23)
  %cmp10.i.i = icmp eq i8 %23, 3
  br i1 %cmp10.i.i, label %land.lhs.true7.i.i.if.end19_crit_edge, label %land.lhs.true7.i.i.sw.epilog.sink.split.i_crit_edge

land.lhs.true7.i.i.sw.epilog.sink.split.i_crit_edge: ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

land.lhs.true7.i.i.if.end19_crit_edge:            ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

sw.epilog.sink.split.i:                           ; preds = %land.lhs.true7.i.i.sw.epilog.sink.split.i_crit_edge, %land.lhs.true4.i.i.sw.epilog.sink.split.i_crit_edge, %land.lhs.true.i.i.sw.epilog.sink.split.i_crit_edge, %if.then.sw.epilog.sink.split.i_crit_edge
  %fBtcWrite4Byte.i.i.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 18
  %24 = ptrtoint ptr %fBtcWrite4Byte.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fBtcWrite4Byte.i.i.i, align 4
  call void %25(ptr noundef %pBtCoexist, i32 noundef 1728, i32 noundef 1431655765) #4
  %26 = ptrtoint ptr %fBtcWrite4Byte.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fBtcWrite4Byte.i.i.i, align 4
  call void %27(ptr noundef %pBtCoexist, i32 noundef 1732, i32 noundef 1431655765) #4
  %28 = ptrtoint ptr %fBtcWrite4Byte.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fBtcWrite4Byte.i.i.i, align 4
  call void %29(ptr noundef %pBtCoexist, i32 noundef 1736, i32 noundef 16777215) #4
  %fBtcWrite1Byte.i.i111.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 13
  %30 = ptrtoint ptr %fBtcWrite1Byte.i.i111.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fBtcWrite1Byte.i.i111.i, align 4
  call void %31(ptr noundef %pBtCoexist, i32 noundef 1740, i8 noundef zeroext 3) #4
  %32 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 %32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  %33 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 %33, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  %34 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i32 %34, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  %35 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  store i8 %35, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  br label %if.end19

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %bScoExist = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 5, i32 1
  %36 = ptrtoint ptr %bScoExist to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %bScoExist, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool7.not = icmp eq i8 %37, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %if.else.if.then11_crit_edge

if.else.if.then11_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then11

lor.lhs.false:                                    ; preds = %if.else
  %bHidExist = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 5, i32 5
  %38 = ptrtoint ptr %bHidExist to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %bHidExist, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool8.not = icmp eq i8 %39, 0
  br i1 %tobool8.not, label %lor.lhs.false9, label %lor.lhs.false.if.then11_crit_edge

lor.lhs.false.if.then11_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then11

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %bA2dpExist = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 5, i32 3
  %40 = ptrtoint ptr %bA2dpExist to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %bA2dpExist, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool10.not = icmp eq i8 %41, 0
  br i1 %tobool10.not, label %if.else12, label %lor.lhs.false9.if.then11_crit_edge

lor.lhs.false9.if.then11_crit_edge:               ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then11

if.then11:                                        ; preds = %lor.lhs.false9.if.then11_crit_edge, %lor.lhs.false.if.then11_crit_edge, %if.else.if.then11_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bLowPwrDisable.i43) #4
  %42 = ptrtoint ptr %bLowPwrDisable.i43 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %bLowPwrDisable.i43, align 1
  %43 = ptrtoint ptr %fBtcSet to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fBtcSet, align 4
  %call5.i45 = call zeroext i8 %44(ptr noundef %pBtCoexist, i8 noundef zeroext 18, ptr noundef nonnull %bLowPwrDisable.i43) #4
  %45 = ptrtoint ptr %fBtcSet to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fBtcSet, align 4
  %call7.i46 = call zeroext i8 %46(ptr noundef %pBtCoexist, i8 noundef zeroext 17, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 37), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bLowPwrDisable.i43) #4
  call fastcc void @halbtc8723b1ant_PsTdma(ptr noundef %pBtCoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 32)
  store i8 4, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 36), align 2
  store i32 1431655765, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 -1431676326, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 16777215, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  %47 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1431655765, i32 %47)
  %cmp.i66.i = icmp eq i32 %47, 1431655765
  br i1 %cmp.i66.i, label %land.lhs.true.i69.i, label %if.then11.sw.epilog.sink.split.i50_crit_edge

if.then11.sw.epilog.sink.split.i50_crit_edge:     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i50

land.lhs.true.i69.i:                              ; preds = %if.then11
  %48 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1431676326, i32 %48)
  %cmp3.i68.i = icmp eq i32 %48, -1431676326
  br i1 %cmp3.i68.i, label %land.lhs.true4.i71.i, label %land.lhs.true.i69.i.sw.epilog.sink.split.i50_crit_edge

land.lhs.true.i69.i.sw.epilog.sink.split.i50_crit_edge: ; preds = %land.lhs.true.i69.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i50

land.lhs.true4.i71.i:                             ; preds = %land.lhs.true.i69.i
  %49 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %49)
  %cmp6.i70.i = icmp eq i32 %49, 16777215
  br i1 %cmp6.i70.i, label %land.lhs.true7.i73.i, label %land.lhs.true4.i71.i.sw.epilog.sink.split.i50_crit_edge

land.lhs.true4.i71.i.sw.epilog.sink.split.i50_crit_edge: ; preds = %land.lhs.true4.i71.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i50

land.lhs.true7.i73.i:                             ; preds = %land.lhs.true4.i71.i
  %50 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %50)
  %cmp10.i72.i = icmp eq i8 %50, 3
  br i1 %cmp10.i72.i, label %land.lhs.true7.i73.i.if.end19_crit_edge, label %land.lhs.true7.i73.i.sw.epilog.sink.split.i50_crit_edge

land.lhs.true7.i73.i.sw.epilog.sink.split.i50_crit_edge: ; preds = %land.lhs.true7.i73.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i50

land.lhs.true7.i73.i.if.end19_crit_edge:          ; preds = %land.lhs.true7.i73.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

sw.epilog.sink.split.i50:                         ; preds = %land.lhs.true7.i73.i.sw.epilog.sink.split.i50_crit_edge, %land.lhs.true4.i71.i.sw.epilog.sink.split.i50_crit_edge, %land.lhs.true.i69.i.sw.epilog.sink.split.i50_crit_edge, %if.then11.sw.epilog.sink.split.i50_crit_edge
  %fBtcWrite4Byte.i.i.i48 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 18
  %51 = ptrtoint ptr %fBtcWrite4Byte.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %fBtcWrite4Byte.i.i.i48, align 4
  call void %52(ptr noundef %pBtCoexist, i32 noundef 1728, i32 noundef 1431655765) #4
  %53 = ptrtoint ptr %fBtcWrite4Byte.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fBtcWrite4Byte.i.i.i48, align 4
  call void %54(ptr noundef %pBtCoexist, i32 noundef 1732, i32 noundef -1431676326) #4
  %55 = ptrtoint ptr %fBtcWrite4Byte.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %fBtcWrite4Byte.i.i.i48, align 4
  call void %56(ptr noundef %pBtCoexist, i32 noundef 1736, i32 noundef 16777215) #4
  %fBtcWrite1Byte.i.i111.i49 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 13
  %57 = ptrtoint ptr %fBtcWrite1Byte.i.i111.i49 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fBtcWrite1Byte.i.i111.i49, align 4
  call void %58(ptr noundef %pBtCoexist, i32 noundef 1740, i8 noundef zeroext 3) #4
  %59 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 %59, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  %60 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 %60, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  %61 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i32 %61, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  %62 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  store i8 %62, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  br label %if.end19

if.else12:                                        ; preds = %lor.lhs.false9
  %bPanExist = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 5, i32 7
  %63 = ptrtoint ptr %bPanExist to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %bPanExist, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool13.not = icmp eq i8 %64, 0
  br i1 %tobool13.not, label %lor.lhs.false14, label %if.else12.if.then16_crit_edge

if.else12.if.then16_crit_edge:                    ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then16

lor.lhs.false14:                                  ; preds = %if.else12
  %65 = ptrtoint ptr %bWifiBusy to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %bWifiBusy, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool15.not = icmp eq i8 %66, 0
  br i1 %tobool15.not, label %if.else17, label %lor.lhs.false14.if.then16_crit_edge

lor.lhs.false14.if.then16_crit_edge:              ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then16

if.then16:                                        ; preds = %lor.lhs.false14.if.then16_crit_edge, %if.else12.if.then16_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bLowPwrDisable.i52) #4
  %67 = ptrtoint ptr %bLowPwrDisable.i52 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %bLowPwrDisable.i52, align 1
  %68 = ptrtoint ptr %fBtcSet to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %fBtcSet, align 4
  %call5.i54 = call zeroext i8 %69(ptr noundef %pBtCoexist, i8 noundef zeroext 18, ptr noundef nonnull %bLowPwrDisable.i52) #4
  %70 = ptrtoint ptr %fBtcSet to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %fBtcSet, align 4
  %call7.i55 = call zeroext i8 %71(ptr noundef %pBtCoexist, i8 noundef zeroext 17, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 37), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bLowPwrDisable.i52) #4
  call fastcc void @halbtc8723b1ant_PsTdma(ptr noundef %pBtCoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 20)
  store i8 4, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 36), align 2
  store i32 1431655765, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 -1431676326, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 16777215, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  %72 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1431655765, i32 %72)
  %cmp.i66.i57 = icmp eq i32 %72, 1431655765
  br i1 %cmp.i66.i57, label %land.lhs.true.i69.i59, label %if.then16.sw.epilog.sink.split.i66_crit_edge

if.then16.sw.epilog.sink.split.i66_crit_edge:     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i66

land.lhs.true.i69.i59:                            ; preds = %if.then16
  %73 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1431676326, i32 %73)
  %cmp3.i68.i58 = icmp eq i32 %73, -1431676326
  br i1 %cmp3.i68.i58, label %land.lhs.true4.i71.i61, label %land.lhs.true.i69.i59.sw.epilog.sink.split.i66_crit_edge

land.lhs.true.i69.i59.sw.epilog.sink.split.i66_crit_edge: ; preds = %land.lhs.true.i69.i59
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i66

land.lhs.true4.i71.i61:                           ; preds = %land.lhs.true.i69.i59
  %74 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %74)
  %cmp6.i70.i60 = icmp eq i32 %74, 16777215
  br i1 %cmp6.i70.i60, label %land.lhs.true7.i73.i63, label %land.lhs.true4.i71.i61.sw.epilog.sink.split.i66_crit_edge

land.lhs.true4.i71.i61.sw.epilog.sink.split.i66_crit_edge: ; preds = %land.lhs.true4.i71.i61
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i66

land.lhs.true7.i73.i63:                           ; preds = %land.lhs.true4.i71.i61
  %75 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %75)
  %cmp10.i72.i62 = icmp eq i8 %75, 3
  br i1 %cmp10.i72.i62, label %land.lhs.true7.i73.i63.if.end19_crit_edge, label %land.lhs.true7.i73.i63.sw.epilog.sink.split.i66_crit_edge

land.lhs.true7.i73.i63.sw.epilog.sink.split.i66_crit_edge: ; preds = %land.lhs.true7.i73.i63
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i66

land.lhs.true7.i73.i63.if.end19_crit_edge:        ; preds = %land.lhs.true7.i73.i63
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

sw.epilog.sink.split.i66:                         ; preds = %land.lhs.true7.i73.i63.sw.epilog.sink.split.i66_crit_edge, %land.lhs.true4.i71.i61.sw.epilog.sink.split.i66_crit_edge, %land.lhs.true.i69.i59.sw.epilog.sink.split.i66_crit_edge, %if.then16.sw.epilog.sink.split.i66_crit_edge
  %fBtcWrite4Byte.i.i.i64 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 18
  %76 = ptrtoint ptr %fBtcWrite4Byte.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %fBtcWrite4Byte.i.i.i64, align 4
  call void %77(ptr noundef %pBtCoexist, i32 noundef 1728, i32 noundef 1431655765) #4
  %78 = ptrtoint ptr %fBtcWrite4Byte.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %fBtcWrite4Byte.i.i.i64, align 4
  call void %79(ptr noundef %pBtCoexist, i32 noundef 1732, i32 noundef -1431676326) #4
  %80 = ptrtoint ptr %fBtcWrite4Byte.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %fBtcWrite4Byte.i.i.i64, align 4
  call void %81(ptr noundef %pBtCoexist, i32 noundef 1736, i32 noundef 16777215) #4
  %fBtcWrite1Byte.i.i111.i65 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 13
  %82 = ptrtoint ptr %fBtcWrite1Byte.i.i111.i65 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %fBtcWrite1Byte.i.i111.i65, align 4
  call void %83(ptr noundef %pBtCoexist, i32 noundef 1740, i8 noundef zeroext 3) #4
  %84 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 %84, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  %85 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 %85, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  %86 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i32 %86, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  %87 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  store i8 %87, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  br label %if.end19

if.else17:                                        ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bLowPwrDisable.i68) #4
  %88 = ptrtoint ptr %bLowPwrDisable.i68 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %bLowPwrDisable.i68, align 1
  %89 = ptrtoint ptr %fBtcSet to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %fBtcSet, align 4
  %call5.i70 = call zeroext i8 %90(ptr noundef %pBtCoexist, i8 noundef zeroext 18, ptr noundef nonnull %bLowPwrDisable.i68) #4
  %91 = ptrtoint ptr %fBtcSet to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %fBtcSet, align 4
  %call7.i71 = call zeroext i8 %92(ptr noundef %pBtCoexist, i8 noundef zeroext 17, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 37), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bLowPwrDisable.i68) #4
  call fastcc void @halbtc8723b1ant_PsTdma(ptr noundef %pBtCoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 8)
  call fastcc void @halbtc8723b1ant_CoexTableWithType(ptr noundef %pBtCoexist, i1 noundef zeroext false, i8 noundef zeroext 7)
  br label %if.end19

if.end19:                                         ; preds = %if.else17, %sw.epilog.sink.split.i66, %land.lhs.true7.i73.i63.if.end19_crit_edge, %sw.epilog.sink.split.i50, %land.lhs.true7.i73.i.if.end19_crit_edge, %sw.epilog.sink.split.i, %land.lhs.true7.i.i.if.end19_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bBtBusy) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bWifiBusy) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bApEnable) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bWifiConnected) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @halbtc8723b1ant_ActionHs(ptr noundef %pBtCoexist) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @halbtc8723b1ant_PsTdma(ptr noundef %pBtCoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 5)
  store i8 2, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 36), align 2
  store i32 1515870810, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 1515870810, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 16777215, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  %0 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1515870810, i32 %0)
  %cmp.i42.i = icmp eq i32 %0, 1515870810
  br i1 %cmp.i42.i, label %land.lhs.true.i45.i, label %entry.sw.epilog.sink.split.i_crit_edge

entry.sw.epilog.sink.split.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

land.lhs.true.i45.i:                              ; preds = %entry
  %1 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1515870810, i32 %1)
  %cmp3.i44.i = icmp eq i32 %1, 1515870810
  br i1 %cmp3.i44.i, label %land.lhs.true4.i47.i, label %land.lhs.true.i45.i.sw.epilog.sink.split.i_crit_edge

land.lhs.true.i45.i.sw.epilog.sink.split.i_crit_edge: ; preds = %land.lhs.true.i45.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

land.lhs.true4.i47.i:                             ; preds = %land.lhs.true.i45.i
  %2 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %2)
  %cmp6.i46.i = icmp eq i32 %2, 16777215
  br i1 %cmp6.i46.i, label %land.lhs.true7.i49.i, label %land.lhs.true4.i47.i.sw.epilog.sink.split.i_crit_edge

land.lhs.true4.i47.i.sw.epilog.sink.split.i_crit_edge: ; preds = %land.lhs.true4.i47.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

land.lhs.true7.i49.i:                             ; preds = %land.lhs.true4.i47.i
  %3 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp10.i48.i = icmp eq i8 %3, 3
  br i1 %cmp10.i48.i, label %land.lhs.true7.i49.i.halbtc8723b1ant_CoexTableWithType.exit_crit_edge, label %land.lhs.true7.i49.i.sw.epilog.sink.split.i_crit_edge

land.lhs.true7.i49.i.sw.epilog.sink.split.i_crit_edge: ; preds = %land.lhs.true7.i49.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

land.lhs.true7.i49.i.halbtc8723b1ant_CoexTableWithType.exit_crit_edge: ; preds = %land.lhs.true7.i49.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_CoexTableWithType.exit

sw.epilog.sink.split.i:                           ; preds = %land.lhs.true7.i49.i.sw.epilog.sink.split.i_crit_edge, %land.lhs.true4.i47.i.sw.epilog.sink.split.i_crit_edge, %land.lhs.true.i45.i.sw.epilog.sink.split.i_crit_edge, %entry.sw.epilog.sink.split.i_crit_edge
  %fBtcWrite4Byte.i.i.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 18
  %4 = ptrtoint ptr %fBtcWrite4Byte.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fBtcWrite4Byte.i.i.i, align 4
  tail call void %5(ptr noundef %pBtCoexist, i32 noundef 1728, i32 noundef 1515870810) #4
  %6 = ptrtoint ptr %fBtcWrite4Byte.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fBtcWrite4Byte.i.i.i, align 4
  tail call void %7(ptr noundef %pBtCoexist, i32 noundef 1732, i32 noundef 1515870810) #4
  %8 = ptrtoint ptr %fBtcWrite4Byte.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fBtcWrite4Byte.i.i.i, align 4
  tail call void %9(ptr noundef %pBtCoexist, i32 noundef 1736, i32 noundef 16777215) #4
  %fBtcWrite1Byte.i.i111.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 13
  %10 = ptrtoint ptr %fBtcWrite1Byte.i.i111.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fBtcWrite1Byte.i.i111.i, align 4
  tail call void %11(ptr noundef %pBtCoexist, i32 noundef 1740, i8 noundef zeroext 3) #4
  %12 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 %12, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  %13 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 %13, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  %14 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i32 %14, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  %15 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  store i8 %15, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  br label %halbtc8723b1ant_CoexTableWithType.exit

halbtc8723b1ant_CoexTableWithType.exit:           ; preds = %sw.epilog.sink.split.i, %land.lhs.true7.i49.i.halbtc8723b1ant_CoexTableWithType.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @halbtc8723b1ant_ActionWifiNotConnectedScan(ptr noundef %pBtCoexist) unnamed_addr #0 align 64 {
entry:
  %bLowPwrDisable.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bLowPwrDisable.i) #4
  %0 = ptrtoint ptr %bLowPwrDisable.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %bLowPwrDisable.i, align 1
  %fBtcSet.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 26
  %1 = ptrtoint ptr %fBtcSet.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fBtcSet.i, align 4
  %call5.i = call zeroext i8 %2(ptr noundef %pBtCoexist, i8 noundef zeroext 18, ptr noundef nonnull %bLowPwrDisable.i) #4
  %3 = ptrtoint ptr %fBtcSet.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fBtcSet.i, align 4
  %call7.i = call zeroext i8 %4(ptr noundef %pBtCoexist, i8 noundef zeroext 17, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 37), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bLowPwrDisable.i) #4
  %5 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 32), align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.11)
  switch i8 %5, label %if.else21 [
    i8 3, label %if.then
    i8 4, label %entry.if.then20_crit_edge
    i8 5, label %entry.if.then20_crit_edge51
  ]

entry.if.then20_crit_edge51:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then20

entry.if.then20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then20

if.then:                                          ; preds = %entry
  %bA2dpExist = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 5, i32 3
  %7 = ptrtoint ptr %bA2dpExist to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bA2dpExist, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.else9, label %if.then2

if.then2:                                         ; preds = %if.then
  call fastcc void @halbtc8723b1ant_PsTdma(ptr noundef %pBtCoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 32)
  store i8 4, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 36), align 2
  store i32 1431655765, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 -1431676326, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 16777215, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  %9 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1431655765, i32 %9)
  %cmp.i66.i = icmp eq i32 %9, 1431655765
  br i1 %cmp.i66.i, label %land.lhs.true.i69.i, label %if.then2.sw.epilog.sink.split.i_crit_edge

if.then2.sw.epilog.sink.split.i_crit_edge:        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

land.lhs.true.i69.i:                              ; preds = %if.then2
  %10 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1431676326, i32 %10)
  %cmp3.i68.i = icmp eq i32 %10, -1431676326
  br i1 %cmp3.i68.i, label %land.lhs.true4.i71.i, label %land.lhs.true.i69.i.sw.epilog.sink.split.i_crit_edge

land.lhs.true.i69.i.sw.epilog.sink.split.i_crit_edge: ; preds = %land.lhs.true.i69.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

land.lhs.true4.i71.i:                             ; preds = %land.lhs.true.i69.i
  %11 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %11)
  %cmp6.i70.i = icmp eq i32 %11, 16777215
  br i1 %cmp6.i70.i, label %land.lhs.true7.i73.i, label %land.lhs.true4.i71.i.sw.epilog.sink.split.i_crit_edge

land.lhs.true4.i71.i.sw.epilog.sink.split.i_crit_edge: ; preds = %land.lhs.true4.i71.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

land.lhs.true7.i73.i:                             ; preds = %land.lhs.true4.i71.i
  %12 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %12)
  %cmp10.i72.i = icmp eq i8 %12, 3
  br i1 %cmp10.i72.i, label %land.lhs.true7.i73.i.if.end23_crit_edge, label %land.lhs.true7.i73.i.sw.epilog.sink.split.i_crit_edge

land.lhs.true7.i73.i.sw.epilog.sink.split.i_crit_edge: ; preds = %land.lhs.true7.i73.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

land.lhs.true7.i73.i.if.end23_crit_edge:          ; preds = %land.lhs.true7.i73.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

sw.epilog.sink.split.i:                           ; preds = %land.lhs.true7.i73.i.sw.epilog.sink.split.i_crit_edge, %land.lhs.true4.i71.i.sw.epilog.sink.split.i_crit_edge, %land.lhs.true.i69.i.sw.epilog.sink.split.i_crit_edge, %if.then2.sw.epilog.sink.split.i_crit_edge
  %fBtcWrite4Byte.i.i.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 18
  %13 = ptrtoint ptr %fBtcWrite4Byte.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fBtcWrite4Byte.i.i.i, align 4
  call void %14(ptr noundef %pBtCoexist, i32 noundef 1728, i32 noundef 1431655765) #4
  %15 = ptrtoint ptr %fBtcWrite4Byte.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fBtcWrite4Byte.i.i.i, align 4
  call void %16(ptr noundef %pBtCoexist, i32 noundef 1732, i32 noundef -1431676326) #4
  %17 = ptrtoint ptr %fBtcWrite4Byte.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fBtcWrite4Byte.i.i.i, align 4
  call void %18(ptr noundef %pBtCoexist, i32 noundef 1736, i32 noundef 16777215) #4
  %fBtcWrite1Byte.i.i111.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 13
  %19 = ptrtoint ptr %fBtcWrite1Byte.i.i111.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fBtcWrite1Byte.i.i111.i, align 4
  call void %20(ptr noundef %pBtCoexist, i32 noundef 1740, i8 noundef zeroext 3) #4
  %21 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 %21, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  %22 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 %22, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  %23 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i32 %23, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  %24 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  store i8 %24, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  br label %if.end23

if.else9:                                         ; preds = %if.then
  call fastcc void @halbtc8723b1ant_PsTdma(ptr noundef %pBtCoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 20)
  store i8 4, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 36), align 2
  store i32 1431655765, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 -1431676326, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 16777215, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  %25 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1431655765, i32 %25)
  %cmp.i66.i36 = icmp eq i32 %25, 1431655765
  br i1 %cmp.i66.i36, label %land.lhs.true.i69.i38, label %if.else9.sw.epilog.sink.split.i45_crit_edge

if.else9.sw.epilog.sink.split.i45_crit_edge:      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i45

land.lhs.true.i69.i38:                            ; preds = %if.else9
  %26 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1431676326, i32 %26)
  %cmp3.i68.i37 = icmp eq i32 %26, -1431676326
  br i1 %cmp3.i68.i37, label %land.lhs.true4.i71.i40, label %land.lhs.true.i69.i38.sw.epilog.sink.split.i45_crit_edge

land.lhs.true.i69.i38.sw.epilog.sink.split.i45_crit_edge: ; preds = %land.lhs.true.i69.i38
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i45

land.lhs.true4.i71.i40:                           ; preds = %land.lhs.true.i69.i38
  %27 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %27)
  %cmp6.i70.i39 = icmp eq i32 %27, 16777215
  br i1 %cmp6.i70.i39, label %land.lhs.true7.i73.i42, label %land.lhs.true4.i71.i40.sw.epilog.sink.split.i45_crit_edge

land.lhs.true4.i71.i40.sw.epilog.sink.split.i45_crit_edge: ; preds = %land.lhs.true4.i71.i40
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i45

land.lhs.true7.i73.i42:                           ; preds = %land.lhs.true4.i71.i40
  %28 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %28)
  %cmp10.i72.i41 = icmp eq i8 %28, 3
  br i1 %cmp10.i72.i41, label %land.lhs.true7.i73.i42.if.end23_crit_edge, label %land.lhs.true7.i73.i42.sw.epilog.sink.split.i45_crit_edge

land.lhs.true7.i73.i42.sw.epilog.sink.split.i45_crit_edge: ; preds = %land.lhs.true7.i73.i42
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i45

land.lhs.true7.i73.i42.if.end23_crit_edge:        ; preds = %land.lhs.true7.i73.i42
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

sw.epilog.sink.split.i45:                         ; preds = %land.lhs.true7.i73.i42.sw.epilog.sink.split.i45_crit_edge, %land.lhs.true4.i71.i40.sw.epilog.sink.split.i45_crit_edge, %land.lhs.true.i69.i38.sw.epilog.sink.split.i45_crit_edge, %if.else9.sw.epilog.sink.split.i45_crit_edge
  %fBtcWrite4Byte.i.i.i43 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 18
  %29 = ptrtoint ptr %fBtcWrite4Byte.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fBtcWrite4Byte.i.i.i43, align 4
  call void %30(ptr noundef %pBtCoexist, i32 noundef 1728, i32 noundef 1431655765) #4
  %31 = ptrtoint ptr %fBtcWrite4Byte.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fBtcWrite4Byte.i.i.i43, align 4
  call void %32(ptr noundef %pBtCoexist, i32 noundef 1732, i32 noundef -1431676326) #4
  %33 = ptrtoint ptr %fBtcWrite4Byte.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fBtcWrite4Byte.i.i.i43, align 4
  call void %34(ptr noundef %pBtCoexist, i32 noundef 1736, i32 noundef 16777215) #4
  %fBtcWrite1Byte.i.i111.i44 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 13
  %35 = ptrtoint ptr %fBtcWrite1Byte.i.i111.i44 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fBtcWrite1Byte.i.i111.i44, align 4
  call void %36(ptr noundef %pBtCoexist, i32 noundef 1740, i8 noundef zeroext 3) #4
  %37 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 %37, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  %38 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 %38, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  %39 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i32 %39, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  %40 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  store i8 %40, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  br label %if.end23

if.then20:                                        ; preds = %entry.if.then20_crit_edge, %entry.if.then20_crit_edge51
  call fastcc void @halbtc8723b1ant_ActionBtScoHidOnlyBusy(ptr noundef %pBtCoexist)
  br label %if.end23

if.else21:                                        ; preds = %entry
  call fastcc void @halbtc8723b1ant_PsTdma(ptr noundef %pBtCoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 8)
  store i8 2, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 36), align 2
  store i32 1515870810, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 1515870810, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 16777215, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  %41 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1515870810, i32 %41)
  %cmp.i42.i = icmp eq i32 %41, 1515870810
  br i1 %cmp.i42.i, label %land.lhs.true.i45.i, label %if.else21.sw.epilog.sink.split.i49_crit_edge

if.else21.sw.epilog.sink.split.i49_crit_edge:     ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i49

land.lhs.true.i45.i:                              ; preds = %if.else21
  %42 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1515870810, i32 %42)
  %cmp3.i44.i = icmp eq i32 %42, 1515870810
  br i1 %cmp3.i44.i, label %land.lhs.true4.i47.i, label %land.lhs.true.i45.i.sw.epilog.sink.split.i49_crit_edge

land.lhs.true.i45.i.sw.epilog.sink.split.i49_crit_edge: ; preds = %land.lhs.true.i45.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i49

land.lhs.true4.i47.i:                             ; preds = %land.lhs.true.i45.i
  %43 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %43)
  %cmp6.i46.i = icmp eq i32 %43, 16777215
  br i1 %cmp6.i46.i, label %land.lhs.true7.i49.i, label %land.lhs.true4.i47.i.sw.epilog.sink.split.i49_crit_edge

land.lhs.true4.i47.i.sw.epilog.sink.split.i49_crit_edge: ; preds = %land.lhs.true4.i47.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i49

land.lhs.true7.i49.i:                             ; preds = %land.lhs.true4.i47.i
  %44 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %44)
  %cmp10.i48.i = icmp eq i8 %44, 3
  br i1 %cmp10.i48.i, label %land.lhs.true7.i49.i.if.end23_crit_edge, label %land.lhs.true7.i49.i.sw.epilog.sink.split.i49_crit_edge

land.lhs.true7.i49.i.sw.epilog.sink.split.i49_crit_edge: ; preds = %land.lhs.true7.i49.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i49

land.lhs.true7.i49.i.if.end23_crit_edge:          ; preds = %land.lhs.true7.i49.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

sw.epilog.sink.split.i49:                         ; preds = %land.lhs.true7.i49.i.sw.epilog.sink.split.i49_crit_edge, %land.lhs.true4.i47.i.sw.epilog.sink.split.i49_crit_edge, %land.lhs.true.i45.i.sw.epilog.sink.split.i49_crit_edge, %if.else21.sw.epilog.sink.split.i49_crit_edge
  %fBtcWrite4Byte.i.i.i47 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 18
  %45 = ptrtoint ptr %fBtcWrite4Byte.i.i.i47 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fBtcWrite4Byte.i.i.i47, align 4
  call void %46(ptr noundef %pBtCoexist, i32 noundef 1728, i32 noundef 1515870810) #4
  %47 = ptrtoint ptr %fBtcWrite4Byte.i.i.i47 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fBtcWrite4Byte.i.i.i47, align 4
  call void %48(ptr noundef %pBtCoexist, i32 noundef 1732, i32 noundef 1515870810) #4
  %49 = ptrtoint ptr %fBtcWrite4Byte.i.i.i47 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fBtcWrite4Byte.i.i.i47, align 4
  call void %50(ptr noundef %pBtCoexist, i32 noundef 1736, i32 noundef 16777215) #4
  %fBtcWrite1Byte.i.i111.i48 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 13
  %51 = ptrtoint ptr %fBtcWrite1Byte.i.i111.i48 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %fBtcWrite1Byte.i.i111.i48, align 4
  call void %52(ptr noundef %pBtCoexist, i32 noundef 1740, i8 noundef zeroext 3) #4
  %53 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 %53, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  %54 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 %54, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  %55 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i32 %55, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  %56 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  store i8 %56, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  br label %if.end23

if.end23:                                         ; preds = %sw.epilog.sink.split.i49, %land.lhs.true7.i49.i.if.end23_crit_edge, %if.then20, %sw.epilog.sink.split.i45, %land.lhs.true7.i73.i42.if.end23_crit_edge, %sw.epilog.sink.split.i, %land.lhs.true7.i73.i.if.end23_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @halbtc8723b1ant_ActionWifiConnectedScan(ptr noundef %pBtCoexist) unnamed_addr #0 align 64 {
entry:
  %bLowPwrDisable.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bLowPwrDisable.i) #4
  %0 = ptrtoint ptr %bLowPwrDisable.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %bLowPwrDisable.i, align 1
  %fBtcSet.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 26
  %1 = ptrtoint ptr %fBtcSet.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fBtcSet.i, align 4
  %call5.i = call zeroext i8 %2(ptr noundef %pBtCoexist, i8 noundef zeroext 18, ptr noundef nonnull %bLowPwrDisable.i) #4
  %3 = ptrtoint ptr %fBtcSet.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fBtcSet.i, align 4
  %call7.i = call zeroext i8 %4(ptr noundef %pBtCoexist, i8 noundef zeroext 17, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 37), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bLowPwrDisable.i) #4
  %5 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 32), align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.12)
  switch i8 %5, label %if.else21 [
    i8 3, label %if.then
    i8 4, label %entry.if.then20_crit_edge
    i8 5, label %entry.if.then20_crit_edge51
  ]

entry.if.then20_crit_edge51:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then20

entry.if.then20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then20

if.then:                                          ; preds = %entry
  %bA2dpExist = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 5, i32 3
  %7 = ptrtoint ptr %bA2dpExist to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bA2dpExist, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.else9, label %if.then2

if.then2:                                         ; preds = %if.then
  call fastcc void @halbtc8723b1ant_PsTdma(ptr noundef %pBtCoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 32)
  store i8 4, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 36), align 2
  store i32 1431655765, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 -1431676326, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 16777215, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  %9 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1431655765, i32 %9)
  %cmp.i66.i = icmp eq i32 %9, 1431655765
  br i1 %cmp.i66.i, label %land.lhs.true.i69.i, label %if.then2.sw.epilog.sink.split.i_crit_edge

if.then2.sw.epilog.sink.split.i_crit_edge:        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

land.lhs.true.i69.i:                              ; preds = %if.then2
  %10 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1431676326, i32 %10)
  %cmp3.i68.i = icmp eq i32 %10, -1431676326
  br i1 %cmp3.i68.i, label %land.lhs.true4.i71.i, label %land.lhs.true.i69.i.sw.epilog.sink.split.i_crit_edge

land.lhs.true.i69.i.sw.epilog.sink.split.i_crit_edge: ; preds = %land.lhs.true.i69.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

land.lhs.true4.i71.i:                             ; preds = %land.lhs.true.i69.i
  %11 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %11)
  %cmp6.i70.i = icmp eq i32 %11, 16777215
  br i1 %cmp6.i70.i, label %land.lhs.true7.i73.i, label %land.lhs.true4.i71.i.sw.epilog.sink.split.i_crit_edge

land.lhs.true4.i71.i.sw.epilog.sink.split.i_crit_edge: ; preds = %land.lhs.true4.i71.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

land.lhs.true7.i73.i:                             ; preds = %land.lhs.true4.i71.i
  %12 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %12)
  %cmp10.i72.i = icmp eq i8 %12, 3
  br i1 %cmp10.i72.i, label %land.lhs.true7.i73.i.if.end23_crit_edge, label %land.lhs.true7.i73.i.sw.epilog.sink.split.i_crit_edge

land.lhs.true7.i73.i.sw.epilog.sink.split.i_crit_edge: ; preds = %land.lhs.true7.i73.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

land.lhs.true7.i73.i.if.end23_crit_edge:          ; preds = %land.lhs.true7.i73.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

sw.epilog.sink.split.i:                           ; preds = %land.lhs.true7.i73.i.sw.epilog.sink.split.i_crit_edge, %land.lhs.true4.i71.i.sw.epilog.sink.split.i_crit_edge, %land.lhs.true.i69.i.sw.epilog.sink.split.i_crit_edge, %if.then2.sw.epilog.sink.split.i_crit_edge
  %fBtcWrite4Byte.i.i.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 18
  %13 = ptrtoint ptr %fBtcWrite4Byte.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fBtcWrite4Byte.i.i.i, align 4
  call void %14(ptr noundef %pBtCoexist, i32 noundef 1728, i32 noundef 1431655765) #4
  %15 = ptrtoint ptr %fBtcWrite4Byte.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fBtcWrite4Byte.i.i.i, align 4
  call void %16(ptr noundef %pBtCoexist, i32 noundef 1732, i32 noundef -1431676326) #4
  %17 = ptrtoint ptr %fBtcWrite4Byte.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fBtcWrite4Byte.i.i.i, align 4
  call void %18(ptr noundef %pBtCoexist, i32 noundef 1736, i32 noundef 16777215) #4
  %fBtcWrite1Byte.i.i111.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 13
  %19 = ptrtoint ptr %fBtcWrite1Byte.i.i111.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fBtcWrite1Byte.i.i111.i, align 4
  call void %20(ptr noundef %pBtCoexist, i32 noundef 1740, i8 noundef zeroext 3) #4
  %21 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 %21, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  %22 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 %22, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  %23 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i32 %23, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  %24 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  store i8 %24, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  br label %if.end23

if.else9:                                         ; preds = %if.then
  call fastcc void @halbtc8723b1ant_PsTdma(ptr noundef %pBtCoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 20)
  store i8 4, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 36), align 2
  store i32 1431655765, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 -1431676326, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 16777215, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  %25 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1431655765, i32 %25)
  %cmp.i66.i36 = icmp eq i32 %25, 1431655765
  br i1 %cmp.i66.i36, label %land.lhs.true.i69.i38, label %if.else9.sw.epilog.sink.split.i45_crit_edge

if.else9.sw.epilog.sink.split.i45_crit_edge:      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i45

land.lhs.true.i69.i38:                            ; preds = %if.else9
  %26 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1431676326, i32 %26)
  %cmp3.i68.i37 = icmp eq i32 %26, -1431676326
  br i1 %cmp3.i68.i37, label %land.lhs.true4.i71.i40, label %land.lhs.true.i69.i38.sw.epilog.sink.split.i45_crit_edge

land.lhs.true.i69.i38.sw.epilog.sink.split.i45_crit_edge: ; preds = %land.lhs.true.i69.i38
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i45

land.lhs.true4.i71.i40:                           ; preds = %land.lhs.true.i69.i38
  %27 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %27)
  %cmp6.i70.i39 = icmp eq i32 %27, 16777215
  br i1 %cmp6.i70.i39, label %land.lhs.true7.i73.i42, label %land.lhs.true4.i71.i40.sw.epilog.sink.split.i45_crit_edge

land.lhs.true4.i71.i40.sw.epilog.sink.split.i45_crit_edge: ; preds = %land.lhs.true4.i71.i40
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i45

land.lhs.true7.i73.i42:                           ; preds = %land.lhs.true4.i71.i40
  %28 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %28)
  %cmp10.i72.i41 = icmp eq i8 %28, 3
  br i1 %cmp10.i72.i41, label %land.lhs.true7.i73.i42.if.end23_crit_edge, label %land.lhs.true7.i73.i42.sw.epilog.sink.split.i45_crit_edge

land.lhs.true7.i73.i42.sw.epilog.sink.split.i45_crit_edge: ; preds = %land.lhs.true7.i73.i42
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i45

land.lhs.true7.i73.i42.if.end23_crit_edge:        ; preds = %land.lhs.true7.i73.i42
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

sw.epilog.sink.split.i45:                         ; preds = %land.lhs.true7.i73.i42.sw.epilog.sink.split.i45_crit_edge, %land.lhs.true4.i71.i40.sw.epilog.sink.split.i45_crit_edge, %land.lhs.true.i69.i38.sw.epilog.sink.split.i45_crit_edge, %if.else9.sw.epilog.sink.split.i45_crit_edge
  %fBtcWrite4Byte.i.i.i43 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 18
  %29 = ptrtoint ptr %fBtcWrite4Byte.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fBtcWrite4Byte.i.i.i43, align 4
  call void %30(ptr noundef %pBtCoexist, i32 noundef 1728, i32 noundef 1431655765) #4
  %31 = ptrtoint ptr %fBtcWrite4Byte.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fBtcWrite4Byte.i.i.i43, align 4
  call void %32(ptr noundef %pBtCoexist, i32 noundef 1732, i32 noundef -1431676326) #4
  %33 = ptrtoint ptr %fBtcWrite4Byte.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fBtcWrite4Byte.i.i.i43, align 4
  call void %34(ptr noundef %pBtCoexist, i32 noundef 1736, i32 noundef 16777215) #4
  %fBtcWrite1Byte.i.i111.i44 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 13
  %35 = ptrtoint ptr %fBtcWrite1Byte.i.i111.i44 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fBtcWrite1Byte.i.i111.i44, align 4
  call void %36(ptr noundef %pBtCoexist, i32 noundef 1740, i8 noundef zeroext 3) #4
  %37 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 %37, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  %38 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 %38, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  %39 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i32 %39, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  %40 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  store i8 %40, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  br label %if.end23

if.then20:                                        ; preds = %entry.if.then20_crit_edge, %entry.if.then20_crit_edge51
  call fastcc void @halbtc8723b1ant_ActionBtScoHidOnlyBusy(ptr noundef %pBtCoexist)
  br label %if.end23

if.else21:                                        ; preds = %entry
  call fastcc void @halbtc8723b1ant_PsTdma(ptr noundef %pBtCoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 8)
  store i8 2, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 36), align 2
  store i32 1515870810, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 1515870810, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 16777215, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  %41 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1515870810, i32 %41)
  %cmp.i42.i = icmp eq i32 %41, 1515870810
  br i1 %cmp.i42.i, label %land.lhs.true.i45.i, label %if.else21.sw.epilog.sink.split.i49_crit_edge

if.else21.sw.epilog.sink.split.i49_crit_edge:     ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i49

land.lhs.true.i45.i:                              ; preds = %if.else21
  %42 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1515870810, i32 %42)
  %cmp3.i44.i = icmp eq i32 %42, 1515870810
  br i1 %cmp3.i44.i, label %land.lhs.true4.i47.i, label %land.lhs.true.i45.i.sw.epilog.sink.split.i49_crit_edge

land.lhs.true.i45.i.sw.epilog.sink.split.i49_crit_edge: ; preds = %land.lhs.true.i45.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i49

land.lhs.true4.i47.i:                             ; preds = %land.lhs.true.i45.i
  %43 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %43)
  %cmp6.i46.i = icmp eq i32 %43, 16777215
  br i1 %cmp6.i46.i, label %land.lhs.true7.i49.i, label %land.lhs.true4.i47.i.sw.epilog.sink.split.i49_crit_edge

land.lhs.true4.i47.i.sw.epilog.sink.split.i49_crit_edge: ; preds = %land.lhs.true4.i47.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i49

land.lhs.true7.i49.i:                             ; preds = %land.lhs.true4.i47.i
  %44 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %44)
  %cmp10.i48.i = icmp eq i8 %44, 3
  br i1 %cmp10.i48.i, label %land.lhs.true7.i49.i.if.end23_crit_edge, label %land.lhs.true7.i49.i.sw.epilog.sink.split.i49_crit_edge

land.lhs.true7.i49.i.sw.epilog.sink.split.i49_crit_edge: ; preds = %land.lhs.true7.i49.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i49

land.lhs.true7.i49.i.if.end23_crit_edge:          ; preds = %land.lhs.true7.i49.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

sw.epilog.sink.split.i49:                         ; preds = %land.lhs.true7.i49.i.sw.epilog.sink.split.i49_crit_edge, %land.lhs.true4.i47.i.sw.epilog.sink.split.i49_crit_edge, %land.lhs.true.i45.i.sw.epilog.sink.split.i49_crit_edge, %if.else21.sw.epilog.sink.split.i49_crit_edge
  %fBtcWrite4Byte.i.i.i47 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 18
  %45 = ptrtoint ptr %fBtcWrite4Byte.i.i.i47 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fBtcWrite4Byte.i.i.i47, align 4
  call void %46(ptr noundef %pBtCoexist, i32 noundef 1728, i32 noundef 1515870810) #4
  %47 = ptrtoint ptr %fBtcWrite4Byte.i.i.i47 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fBtcWrite4Byte.i.i.i47, align 4
  call void %48(ptr noundef %pBtCoexist, i32 noundef 1732, i32 noundef 1515870810) #4
  %49 = ptrtoint ptr %fBtcWrite4Byte.i.i.i47 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fBtcWrite4Byte.i.i.i47, align 4
  call void %50(ptr noundef %pBtCoexist, i32 noundef 1736, i32 noundef 16777215) #4
  %fBtcWrite1Byte.i.i111.i48 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 13
  %51 = ptrtoint ptr %fBtcWrite1Byte.i.i111.i48 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %fBtcWrite1Byte.i.i111.i48, align 4
  call void %52(ptr noundef %pBtCoexist, i32 noundef 1740, i8 noundef zeroext 3) #4
  %53 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 %53, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  %54 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 %54, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  %55 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i32 %55, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  %56 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  store i8 %56, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  br label %if.end23

if.end23:                                         ; preds = %sw.epilog.sink.split.i49, %land.lhs.true7.i49.i.if.end23_crit_edge, %if.then20, %sw.epilog.sink.split.i45, %land.lhs.true7.i73.i42.if.end23_crit_edge, %sw.epilog.sink.split.i, %land.lhs.true7.i73.i.if.end23_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @halbtc8723b1ant_ActionWifiNotConnected(ptr noundef %pBtCoexist) unnamed_addr #0 align 64 {
entry:
  %bLowPwrDisable.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bLowPwrDisable.i) #4
  %0 = ptrtoint ptr %bLowPwrDisable.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %bLowPwrDisable.i, align 1
  %fBtcSet.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 26
  %1 = ptrtoint ptr %fBtcSet.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fBtcSet.i, align 4
  %call5.i = call zeroext i8 %2(ptr noundef %pBtCoexist, i8 noundef zeroext 18, ptr noundef nonnull %bLowPwrDisable.i) #4
  %3 = ptrtoint ptr %fBtcSet.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fBtcSet.i, align 4
  %call7.i = call zeroext i8 %4(ptr noundef %pBtCoexist, i8 noundef zeroext 17, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 37), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bLowPwrDisable.i) #4
  call fastcc void @halbtc8723b1ant_PsTdma(ptr noundef %pBtCoexist, i1 noundef zeroext true, i1 noundef zeroext false, i8 noundef zeroext 8)
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 36), align 2
  store i32 1431655765, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 1431655765, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 16777215, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  %5 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1431655765, i32 %5)
  %cmp.i.i = icmp eq i32 %5, 1431655765
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %entry.sw.epilog.sink.split.i_crit_edge

entry.sw.epilog.sink.split.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

land.lhs.true.i.i:                                ; preds = %entry
  %6 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1431655765, i32 %6)
  %cmp3.i.i = icmp eq i32 %6, 1431655765
  br i1 %cmp3.i.i, label %land.lhs.true4.i.i, label %land.lhs.true.i.i.sw.epilog.sink.split.i_crit_edge

land.lhs.true.i.i.sw.epilog.sink.split.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %7 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %7)
  %cmp6.i.i = icmp eq i32 %7, 16777215
  br i1 %cmp6.i.i, label %land.lhs.true7.i.i, label %land.lhs.true4.i.i.sw.epilog.sink.split.i_crit_edge

land.lhs.true4.i.i.sw.epilog.sink.split.i_crit_edge: ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

land.lhs.true7.i.i:                               ; preds = %land.lhs.true4.i.i
  %8 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %8)
  %cmp10.i.i = icmp eq i8 %8, 3
  br i1 %cmp10.i.i, label %land.lhs.true7.i.i.halbtc8723b1ant_CoexTableWithType.exit_crit_edge, label %land.lhs.true7.i.i.sw.epilog.sink.split.i_crit_edge

land.lhs.true7.i.i.sw.epilog.sink.split.i_crit_edge: ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

land.lhs.true7.i.i.halbtc8723b1ant_CoexTableWithType.exit_crit_edge: ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_CoexTableWithType.exit

sw.epilog.sink.split.i:                           ; preds = %land.lhs.true7.i.i.sw.epilog.sink.split.i_crit_edge, %land.lhs.true4.i.i.sw.epilog.sink.split.i_crit_edge, %land.lhs.true.i.i.sw.epilog.sink.split.i_crit_edge, %entry.sw.epilog.sink.split.i_crit_edge
  %fBtcWrite4Byte.i.i.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 18
  %9 = ptrtoint ptr %fBtcWrite4Byte.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fBtcWrite4Byte.i.i.i, align 4
  call void %10(ptr noundef %pBtCoexist, i32 noundef 1728, i32 noundef 1431655765) #4
  %11 = ptrtoint ptr %fBtcWrite4Byte.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fBtcWrite4Byte.i.i.i, align 4
  call void %12(ptr noundef %pBtCoexist, i32 noundef 1732, i32 noundef 1431655765) #4
  %13 = ptrtoint ptr %fBtcWrite4Byte.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fBtcWrite4Byte.i.i.i, align 4
  call void %14(ptr noundef %pBtCoexist, i32 noundef 1736, i32 noundef 16777215) #4
  %fBtcWrite1Byte.i.i111.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 13
  %15 = ptrtoint ptr %fBtcWrite1Byte.i.i111.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fBtcWrite1Byte.i.i111.i, align 4
  call void %16(ptr noundef %pBtCoexist, i32 noundef 1740, i8 noundef zeroext 3) #4
  %17 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 %17, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  %18 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 %18, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  %19 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i32 %19, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  %20 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  store i8 %20, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  br label %halbtc8723b1ant_CoexTableWithType.exit

halbtc8723b1ant_CoexTableWithType.exit:           ; preds = %sw.epilog.sink.split.i, %land.lhs.true7.i.i.halbtc8723b1ant_CoexTableWithType.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @halbtc8723b1ant_ActionWifiConnected(ptr noundef %pBtCoexist) unnamed_addr #0 align 64 {
entry:
  %bLowPwrDisable.i150 = alloca i8, align 1
  %bLowPwrDisable.i146 = alloca i8, align 1
  %bLowPwrDisable.i142 = alloca i8, align 1
  %bLowPwrDisable.i = alloca i8, align 1
  %bWifiBusy = alloca i8, align 1
  %bScan = alloca i8, align 1
  %bLink = alloca i8, align 1
  %bRoam = alloca i8, align 1
  %bUnder4way = alloca i8, align 1
  %bApEnable = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bWifiBusy) #4
  %0 = ptrtoint ptr %bWifiBusy to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %bWifiBusy, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bScan) #4
  %1 = ptrtoint ptr %bScan to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %bScan, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bLink) #4
  %2 = ptrtoint ptr %bLink to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %bLink, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bRoam) #4
  %3 = ptrtoint ptr %bRoam to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %bRoam, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bUnder4way) #4
  %4 = ptrtoint ptr %bUnder4way to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %bUnder4way, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bApEnable) #4
  %5 = ptrtoint ptr %bApEnable to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %bApEnable, align 1
  %fBtcGet = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 25
  %6 = ptrtoint ptr %fBtcGet to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fBtcGet, align 4
  %call = call zeroext i8 %7(ptr noundef %pBtCoexist, i8 noundef zeroext 7, ptr noundef nonnull %bUnder4way) #4
  %8 = ptrtoint ptr %bUnder4way to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bUnder4way, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_ActionWifiConnectedSpecialPacket(ptr noundef %pBtCoexist)
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %fBtcGet to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fBtcGet, align 4
  %call2 = call zeroext i8 %11(ptr noundef %pBtCoexist, i8 noundef zeroext 4, ptr noundef nonnull %bScan) #4
  %12 = ptrtoint ptr %fBtcGet to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fBtcGet, align 4
  %call4 = call zeroext i8 %13(ptr noundef %pBtCoexist, i8 noundef zeroext 5, ptr noundef nonnull %bLink) #4
  %14 = ptrtoint ptr %fBtcGet to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fBtcGet, align 4
  %call6 = call zeroext i8 %15(ptr noundef %pBtCoexist, i8 noundef zeroext 6, ptr noundef nonnull %bRoam) #4
  %16 = ptrtoint ptr %bScan to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bScan, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool7.not = icmp eq i8 %17, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %if.then13

lor.lhs.false:                                    ; preds = %if.end
  %18 = ptrtoint ptr %bLink to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bLink, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool8.not = icmp eq i8 %19, 0
  br i1 %tobool8.not, label %lor.lhs.false9, label %lor.lhs.false.if.else_crit_edge

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %20 = ptrtoint ptr %bRoam to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bRoam, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool10.not = icmp eq i8 %21, 0
  br i1 %tobool10.not, label %if.end15, label %lor.lhs.false9.if.else_crit_edge

lor.lhs.false9.if.else_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_ActionWifiConnectedScan(ptr noundef %pBtCoexist)
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false9.if.else_crit_edge, %lor.lhs.false.if.else_crit_edge
  call fastcc void @halbtc8723b1ant_ActionWifiConnectedSpecialPacket(ptr noundef %pBtCoexist)
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false9
  %22 = ptrtoint ptr %fBtcGet to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fBtcGet, align 4
  %call17 = call zeroext i8 %23(ptr noundef %pBtCoexist, i8 noundef zeroext 8, ptr noundef nonnull %bApEnable) #4
  %24 = ptrtoint ptr %fBtcGet to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fBtcGet, align 4
  %call19 = call zeroext i8 %25(ptr noundef %pBtCoexist, i8 noundef zeroext 3, ptr noundef nonnull %bWifiBusy) #4
  %26 = ptrtoint ptr %bApEnable to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bApEnable, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool20.not = icmp eq i8 %27, 0
  br i1 %tobool20.not, label %land.lhs.true, label %if.end15.if.else48_crit_edge

if.end15.if.else48_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else48

land.lhs.true:                                    ; preds = %if.end15
  %28 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 32), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %28)
  %cmp = icmp eq i8 %28, 3
  br i1 %cmp, label %land.lhs.true22, label %land.lhs.true.if.else48_crit_edge

land.lhs.true.if.else48_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else48

land.lhs.true22:                                  ; preds = %land.lhs.true
  %bHidOnly = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 5, i32 6
  %29 = ptrtoint ptr %bHidOnly to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bHidOnly, align 2, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool23.not = icmp eq i8 %30, 0
  br i1 %tobool23.not, label %if.then24, label %land.lhs.true22.if.else48_crit_edge

land.lhs.true22.if.else48_crit_edge:              ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else48

if.then24:                                        ; preds = %land.lhs.true22
  %bA2dpOnly = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 5, i32 4
  %31 = ptrtoint ptr %bA2dpOnly to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bA2dpOnly, align 2, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool26.not = icmp eq i8 %32, 0
  br i1 %tobool26.not, label %if.else38, label %if.then27

if.then27:                                        ; preds = %if.then24
  %33 = ptrtoint ptr %bWifiBusy to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bWifiBusy, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool28.not = icmp eq i8 %34, 0
  br i1 %tobool28.not, label %if.then29, label %if.else30

if.then29:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bLowPwrDisable.i) #4
  %35 = ptrtoint ptr %bLowPwrDisable.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %bLowPwrDisable.i, align 1
  %fBtcSet.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 26
  %36 = ptrtoint ptr %fBtcSet.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fBtcSet.i, align 4
  %call5.i = call zeroext i8 %37(ptr noundef %pBtCoexist, i8 noundef zeroext 18, ptr noundef nonnull %bLowPwrDisable.i) #4
  %38 = ptrtoint ptr %fBtcSet.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fBtcSet.i, align 4
  %call7.i = call zeroext i8 %39(ptr noundef %pBtCoexist, i8 noundef zeroext 17, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 37), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bLowPwrDisable.i) #4
  br label %if.end49

if.else30:                                        ; preds = %if.then27
  %40 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 25), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 29, i8 %40)
  %cmp32 = icmp ugt i8 %40, 29
  br i1 %cmp32, label %if.then34, label %if.else35

if.then34:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bLowPwrDisable.i142) #4
  %41 = ptrtoint ptr %bLowPwrDisable.i142 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %bLowPwrDisable.i142, align 1
  %fBtcSet.i143 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 26
  %42 = ptrtoint ptr %fBtcSet.i143 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fBtcSet.i143, align 4
  %call5.i144 = call zeroext i8 %43(ptr noundef %pBtCoexist, i8 noundef zeroext 18, ptr noundef nonnull %bLowPwrDisable.i142) #4
  %44 = ptrtoint ptr %fBtcSet.i143 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fBtcSet.i143, align 4
  %call7.i145 = call zeroext i8 %45(ptr noundef %pBtCoexist, i8 noundef zeroext 17, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 37), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bLowPwrDisable.i142) #4
  br label %if.end49

if.else35:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_PowerSaveState(ptr noundef %pBtCoexist, i8 noundef zeroext 1, i8 noundef zeroext 80, i8 noundef zeroext 4)
  br label %if.end49

if.else38:                                        ; preds = %if.then24
  %46 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 4), align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool39.not = icmp eq i8 %46, 0
  br i1 %tobool39.not, label %land.lhs.true40, label %if.else38.if.else45_crit_edge

if.else38.if.else45_crit_edge:                    ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else45

land.lhs.true40:                                  ; preds = %if.else38
  %47 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 2), align 2, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool41.not = icmp eq i8 %47, 0
  br i1 %tobool41.not, label %land.lhs.true42, label %land.lhs.true40.if.else45_crit_edge

land.lhs.true40.if.else45_crit_edge:              ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else45

land.lhs.true42:                                  ; preds = %land.lhs.true40
  %48 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 3), align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool43.not = icmp eq i8 %48, 0
  br i1 %tobool43.not, label %if.then44, label %land.lhs.true42.if.else45_crit_edge

land.lhs.true42.if.else45_crit_edge:              ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else45

if.then44:                                        ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bLowPwrDisable.i146) #4
  %49 = ptrtoint ptr %bLowPwrDisable.i146 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %bLowPwrDisable.i146, align 1
  %fBtcSet.i147 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 26
  %50 = ptrtoint ptr %fBtcSet.i147 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fBtcSet.i147, align 4
  %call5.i148 = call zeroext i8 %51(ptr noundef %pBtCoexist, i8 noundef zeroext 18, ptr noundef nonnull %bLowPwrDisable.i146) #4
  %52 = ptrtoint ptr %fBtcSet.i147 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fBtcSet.i147, align 4
  %call7.i149 = call zeroext i8 %53(ptr noundef %pBtCoexist, i8 noundef zeroext 17, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 37), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bLowPwrDisable.i146) #4
  br label %if.end49

if.else45:                                        ; preds = %land.lhs.true42.if.else45_crit_edge, %land.lhs.true40.if.else45_crit_edge, %if.else38.if.else45_crit_edge
  call fastcc void @halbtc8723b1ant_PowerSaveState(ptr noundef %pBtCoexist, i8 noundef zeroext 1, i8 noundef zeroext 80, i8 noundef zeroext 4)
  br label %if.end49

if.else48:                                        ; preds = %land.lhs.true22.if.else48_crit_edge, %land.lhs.true.if.else48_crit_edge, %if.end15.if.else48_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bLowPwrDisable.i150) #4
  %54 = ptrtoint ptr %bLowPwrDisable.i150 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %bLowPwrDisable.i150, align 1
  %fBtcSet.i151 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 26
  %55 = ptrtoint ptr %fBtcSet.i151 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %fBtcSet.i151, align 4
  %call5.i152 = call zeroext i8 %56(ptr noundef %pBtCoexist, i8 noundef zeroext 18, ptr noundef nonnull %bLowPwrDisable.i150) #4
  %57 = ptrtoint ptr %fBtcSet.i151 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fBtcSet.i151, align 4
  %call7.i153 = call zeroext i8 %58(ptr noundef %pBtCoexist, i8 noundef zeroext 17, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 37), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bLowPwrDisable.i150) #4
  br label %if.end49

if.end49:                                         ; preds = %if.else48, %if.else45, %if.then44, %if.else35, %if.then34, %if.then29
  %59 = ptrtoint ptr %bWifiBusy to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %bWifiBusy, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool50.not = icmp eq i8 %60, 0
  %61 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 32), align 1
  br i1 %tobool50.not, label %if.then51, label %if.else76

if.then51:                                        ; preds = %if.end49
  %62 = zext i8 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.13)
  switch i8 %61, label %if.else68 [
    i8 3, label %if.then56
    i8 4, label %if.then51.if.then67_crit_edge
    i8 5, label %if.then51.if.then67_crit_edge154
  ]

if.then51.if.then67_crit_edge154:                 ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then67

if.then51.if.then67_crit_edge:                    ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then67

if.then56:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_ActionWifiConnectedBtAclBusy(ptr noundef %pBtCoexist, i8 noundef zeroext 4)
  br label %cleanup

if.then67:                                        ; preds = %if.then51.if.then67_crit_edge, %if.then51.if.then67_crit_edge154
  call fastcc void @halbtc8723b1ant_ActionBtScoHidOnlyBusy(ptr noundef %pBtCoexist)
  br label %cleanup

if.else68:                                        ; preds = %if.then51
  call fastcc void @halbtc8723b1ant_PsTdma(ptr noundef %pBtCoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 8)
  %63 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 8), align 4
  %64 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 9), align 4
  %add = add i32 %64, %63
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %add)
  %cmp69 = icmp ult i32 %add, 61
  br i1 %cmp69, label %if.then71, label %if.else72

if.then71:                                        ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_CoexTableWithType(ptr noundef %pBtCoexist, i1 noundef zeroext false, i8 noundef zeroext 2)
  br label %cleanup

if.else72:                                        ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_CoexTableWithType(ptr noundef %pBtCoexist, i1 noundef zeroext false, i8 noundef zeroext 7)
  br label %cleanup

if.else76:                                        ; preds = %if.end49
  %65 = zext i8 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.14)
  switch i8 %61, label %if.else93 [
    i8 3, label %if.then81
    i8 4, label %if.else76.if.then92_crit_edge
    i8 5, label %if.else76.if.then92_crit_edge155
  ]

if.else76.if.then92_crit_edge155:                 ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then92

if.else76.if.then92_crit_edge:                    ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then92

if.then81:                                        ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_ActionWifiConnectedBtAclBusy(ptr noundef %pBtCoexist, i8 noundef zeroext 5)
  br label %cleanup

if.then92:                                        ; preds = %if.else76.if.then92_crit_edge, %if.else76.if.then92_crit_edge155
  call fastcc void @halbtc8723b1ant_ActionBtScoHidOnlyBusy(ptr noundef %pBtCoexist)
  br label %cleanup

if.else93:                                        ; preds = %if.else76
  call fastcc void @halbtc8723b1ant_PsTdma(ptr noundef %pBtCoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 8)
  %66 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 8), align 4
  %67 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 9), align 4
  %add96 = add i32 %67, %66
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %add96)
  %cmp97 = icmp ult i32 %add96, 61
  br i1 %cmp97, label %if.then99, label %if.else100

if.then99:                                        ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_CoexTableWithType(ptr noundef %pBtCoexist, i1 noundef zeroext false, i8 noundef zeroext 2)
  br label %cleanup

if.else100:                                       ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_CoexTableWithType(ptr noundef %pBtCoexist, i1 noundef zeroext false, i8 noundef zeroext 7)
  br label %cleanup

cleanup:                                          ; preds = %if.else100, %if.then99, %if.then92, %if.then81, %if.else72, %if.then71, %if.then67, %if.then56, %if.else, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bApEnable) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bUnder4way) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bRoam) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bLink) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bScan) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bWifiBusy) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @EXhalbtc8723b1ant_ConnectNotify(ptr noundef %pBtCoexist, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  %bRejectRxAgg.i = alloca i8, align 1
  %bBtCtrlRxAggSize.i = alloca i8, align 1
  %rxAggSize.i = alloca i8, align 1
  %bWifiConnected = alloca i8, align 1
  %bBtHsOn = alloca i8, align 1
  %wifiLinkStatus = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bWifiConnected) #4
  %0 = ptrtoint ptr %bWifiConnected to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %bWifiConnected, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bBtHsOn) #4
  %1 = ptrtoint ptr %bBtHsOn to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %bBtHsOn, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifiLinkStatus) #4
  %2 = ptrtoint ptr %wifiLinkStatus to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %wifiLinkStatus, align 4
  %bManualControl = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 9
  %3 = ptrtoint ptr %bManualControl to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bManualControl, align 2, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %bStopCoexDm = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 8
  %5 = ptrtoint ptr %bStopCoexDm to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bStopCoexDm, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not = icmp eq i8 %6, 0
  br i1 %tobool1.not, label %lor.lhs.false2, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %btInfo = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 3
  %7 = ptrtoint ptr %btInfo to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %btInfo, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not = icmp eq i8 %8, 0
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %type)
  %cmp = icmp eq i8 %type, 1
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 21), align 2
  store i32 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 42), align 4
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 21), align 2
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then5
  %fBtcGet = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 25
  %9 = ptrtoint ptr %fBtcGet to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fBtcGet, align 4
  %call = call zeroext i8 %10(ptr noundef %pBtCoexist, i8 noundef zeroext 18, ptr noundef nonnull %wifiLinkStatus) #4
  %11 = ptrtoint ptr %wifiLinkStatus to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wifiLinkStatus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131071, i32 %12)
  %cmp8 = icmp ugt i32 %12, 131071
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_LimitedTx(ptr noundef %pBtCoexist, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bRejectRxAgg.i) #4
  %13 = ptrtoint ptr %bRejectRxAgg.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %bRejectRxAgg.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bBtCtrlRxAggSize.i) #4
  %14 = ptrtoint ptr %bBtCtrlRxAggSize.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %bBtCtrlRxAggSize.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rxAggSize.i) #4
  %15 = ptrtoint ptr %rxAggSize.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 5, ptr %rxAggSize.i, align 1
  %fBtcSet.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 26
  %16 = ptrtoint ptr %fBtcSet.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fBtcSet.i, align 4
  %call.i = call zeroext i8 %17(ptr noundef %pBtCoexist, i8 noundef zeroext 4, ptr noundef nonnull %bRejectRxAgg.i) #4
  %18 = ptrtoint ptr %fBtcSet.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fBtcSet.i, align 4
  %call7.i = call zeroext i8 %19(ptr noundef %pBtCoexist, i8 noundef zeroext 5, ptr noundef nonnull %bBtCtrlRxAggSize.i) #4
  %20 = ptrtoint ptr %fBtcSet.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fBtcSet.i, align 4
  %call9.i = call zeroext i8 %21(ptr noundef %pBtCoexist, i8 noundef zeroext 9, ptr noundef nonnull %rxAggSize.i) #4
  %22 = ptrtoint ptr %fBtcSet.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fBtcSet.i, align 4
  %call11.i = call zeroext i8 %23(ptr noundef %pBtCoexist, i8 noundef zeroext 11, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rxAggSize.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bBtCtrlRxAggSize.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bRejectRxAgg.i) #4
  call fastcc void @halbtc8723b1ant_ActionWifiMultiPort(ptr noundef %pBtCoexist)
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %24 = ptrtoint ptr %fBtcGet to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fBtcGet, align 4
  %call14 = call zeroext i8 %25(ptr noundef %pBtCoexist, i8 noundef zeroext 0, ptr noundef nonnull %bBtHsOn) #4
  %26 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 19), align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool15.not = icmp eq i8 %26, 0
  br i1 %tobool15.not, label %if.else17, label %if.then16

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_ActionBtInquiry(ptr noundef %pBtCoexist)
  br label %cleanup

if.else17:                                        ; preds = %if.end12
  %27 = ptrtoint ptr %bBtHsOn to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bBtHsOn, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool18.not = icmp eq i8 %28, 0
  br i1 %tobool18.not, label %if.end21, label %if.then19

if.then19:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_ActionHs(ptr noundef %pBtCoexist)
  br label %cleanup

if.end21:                                         ; preds = %if.else17
  br i1 %cmp, label %if.then25, label %if.else26

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_ActionWifiNotConnectedAssoAuth(ptr noundef %pBtCoexist)
  br label %cleanup

if.else26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %type)
  %cmp28 = icmp eq i8 %type, 0
  br i1 %cmp28, label %if.then30, label %if.else26.cleanup_crit_edge

if.else26.cleanup_crit_edge:                      ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then30:                                        ; preds = %if.else26
  %29 = ptrtoint ptr %fBtcGet to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fBtcGet, align 4
  %call32 = call zeroext i8 %30(ptr noundef %pBtCoexist, i8 noundef zeroext 2, ptr noundef nonnull %bWifiConnected) #4
  %31 = ptrtoint ptr %bWifiConnected to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bWifiConnected, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool33.not = icmp eq i8 %32, 0
  br i1 %tobool33.not, label %if.then34, label %if.else35

if.then34:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_ActionWifiNotConnected(ptr noundef %pBtCoexist)
  br label %cleanup

if.else35:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_ActionWifiConnected(ptr noundef %pBtCoexist)
  br label %cleanup

cleanup:                                          ; preds = %if.else35, %if.then34, %if.else26.cleanup_crit_edge, %if.then25, %if.then19, %if.then16, %if.then10, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifiLinkStatus) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bBtHsOn) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bWifiConnected) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @halbtc8723b1ant_ActionWifiNotConnectedAssoAuth(ptr noundef %pBtCoexist) unnamed_addr #0 align 64 {
entry:
  %bLowPwrDisable.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bLowPwrDisable.i) #4
  %0 = ptrtoint ptr %bLowPwrDisable.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %bLowPwrDisable.i, align 1
  %fBtcSet.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 26
  %1 = ptrtoint ptr %fBtcSet.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fBtcSet.i, align 4
  %call5.i = call zeroext i8 %2(ptr noundef %pBtCoexist, i8 noundef zeroext 18, ptr noundef nonnull %bLowPwrDisable.i) #4
  %3 = ptrtoint ptr %fBtcSet.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fBtcSet.i, align 4
  %call7.i = call zeroext i8 %4(ptr noundef %pBtCoexist, i8 noundef zeroext 17, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 37), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bLowPwrDisable.i) #4
  %bScoExist = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 5, i32 1
  %5 = ptrtoint ptr %bScoExist to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bScoExist, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %bHidExist = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 5, i32 5
  %7 = ptrtoint ptr %bHidExist to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bHidExist, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not = icmp eq i8 %8, 0
  br i1 %tobool1.not, label %lor.lhs.false2, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %bA2dpExist = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 5, i32 3
  %9 = ptrtoint ptr %bA2dpExist to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bA2dpExist, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool3.not = icmp eq i8 %10, 0
  br i1 %tobool3.not, label %if.else, label %lor.lhs.false2.if.then_crit_edge

lor.lhs.false2.if.then_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false2.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  call fastcc void @halbtc8723b1ant_PsTdma(ptr noundef %pBtCoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 32)
  store i8 4, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 36), align 2
  store i32 1431655765, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 -1431676326, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 16777215, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  %11 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1431655765, i32 %11)
  %cmp.i66.i = icmp eq i32 %11, 1431655765
  br i1 %cmp.i66.i, label %land.lhs.true.i69.i, label %if.then.if.end7.sink.split_crit_edge

if.then.if.end7.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.sink.split

land.lhs.true.i69.i:                              ; preds = %if.then
  %12 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1431676326, i32 %12)
  %cmp3.i68.i = icmp eq i32 %12, -1431676326
  br i1 %cmp3.i68.i, label %land.lhs.true4.i71.i, label %land.lhs.true.i69.i.if.end7.sink.split_crit_edge

land.lhs.true.i69.i.if.end7.sink.split_crit_edge: ; preds = %land.lhs.true.i69.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.sink.split

land.lhs.true4.i71.i:                             ; preds = %land.lhs.true.i69.i
  %13 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %13)
  %cmp6.i70.i = icmp eq i32 %13, 16777215
  br i1 %cmp6.i70.i, label %land.lhs.true7.i73.i, label %land.lhs.true4.i71.i.if.end7.sink.split_crit_edge

land.lhs.true4.i71.i.if.end7.sink.split_crit_edge: ; preds = %land.lhs.true4.i71.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.sink.split

land.lhs.true7.i73.i:                             ; preds = %land.lhs.true4.i71.i
  %14 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %14)
  %cmp10.i72.i = icmp eq i8 %14, 3
  br i1 %cmp10.i72.i, label %land.lhs.true7.i73.i.if.end7_crit_edge, label %land.lhs.true7.i73.i.if.end7.sink.split_crit_edge

land.lhs.true7.i73.i.if.end7.sink.split_crit_edge: ; preds = %land.lhs.true7.i73.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.sink.split

land.lhs.true7.i73.i.if.end7_crit_edge:           ; preds = %land.lhs.true7.i73.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.else:                                          ; preds = %lor.lhs.false2
  %bPanExist = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 5, i32 7
  %15 = ptrtoint ptr %bPanExist to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bPanExist, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool4.not = icmp eq i8 %16, 0
  br i1 %tobool4.not, label %if.else6, label %if.then5

if.then5:                                         ; preds = %if.else
  call fastcc void @halbtc8723b1ant_PsTdma(ptr noundef %pBtCoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 20)
  store i8 4, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 36), align 2
  store i32 1431655765, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 -1431676326, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 16777215, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  %17 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1431655765, i32 %17)
  %cmp.i66.i18 = icmp eq i32 %17, 1431655765
  br i1 %cmp.i66.i18, label %land.lhs.true.i69.i20, label %if.then5.if.end7.sink.split_crit_edge

if.then5.if.end7.sink.split_crit_edge:            ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.sink.split

land.lhs.true.i69.i20:                            ; preds = %if.then5
  %18 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1431676326, i32 %18)
  %cmp3.i68.i19 = icmp eq i32 %18, -1431676326
  br i1 %cmp3.i68.i19, label %land.lhs.true4.i71.i22, label %land.lhs.true.i69.i20.if.end7.sink.split_crit_edge

land.lhs.true.i69.i20.if.end7.sink.split_crit_edge: ; preds = %land.lhs.true.i69.i20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.sink.split

land.lhs.true4.i71.i22:                           ; preds = %land.lhs.true.i69.i20
  %19 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %19)
  %cmp6.i70.i21 = icmp eq i32 %19, 16777215
  br i1 %cmp6.i70.i21, label %land.lhs.true7.i73.i24, label %land.lhs.true4.i71.i22.if.end7.sink.split_crit_edge

land.lhs.true4.i71.i22.if.end7.sink.split_crit_edge: ; preds = %land.lhs.true4.i71.i22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.sink.split

land.lhs.true7.i73.i24:                           ; preds = %land.lhs.true4.i71.i22
  %20 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %20)
  %cmp10.i72.i23 = icmp eq i8 %20, 3
  br i1 %cmp10.i72.i23, label %land.lhs.true7.i73.i24.if.end7_crit_edge, label %land.lhs.true7.i73.i24.if.end7.sink.split_crit_edge

land.lhs.true7.i73.i24.if.end7.sink.split_crit_edge: ; preds = %land.lhs.true7.i73.i24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.sink.split

land.lhs.true7.i73.i24.if.end7_crit_edge:         ; preds = %land.lhs.true7.i73.i24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.else6:                                         ; preds = %if.else
  call fastcc void @halbtc8723b1ant_PsTdma(ptr noundef %pBtCoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 8)
  store i8 2, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 36), align 2
  store i32 1515870810, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 1515870810, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 16777215, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  %21 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1515870810, i32 %21)
  %cmp.i42.i = icmp eq i32 %21, 1515870810
  br i1 %cmp.i42.i, label %land.lhs.true.i45.i, label %if.else6.if.end7.sink.split_crit_edge

if.else6.if.end7.sink.split_crit_edge:            ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.sink.split

land.lhs.true.i45.i:                              ; preds = %if.else6
  %22 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1515870810, i32 %22)
  %cmp3.i44.i = icmp eq i32 %22, 1515870810
  br i1 %cmp3.i44.i, label %land.lhs.true4.i47.i, label %land.lhs.true.i45.i.if.end7.sink.split_crit_edge

land.lhs.true.i45.i.if.end7.sink.split_crit_edge: ; preds = %land.lhs.true.i45.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.sink.split

land.lhs.true4.i47.i:                             ; preds = %land.lhs.true.i45.i
  %23 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %23)
  %cmp6.i46.i = icmp eq i32 %23, 16777215
  br i1 %cmp6.i46.i, label %land.lhs.true7.i49.i, label %land.lhs.true4.i47.i.if.end7.sink.split_crit_edge

land.lhs.true4.i47.i.if.end7.sink.split_crit_edge: ; preds = %land.lhs.true4.i47.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.sink.split

land.lhs.true7.i49.i:                             ; preds = %land.lhs.true4.i47.i
  %24 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %24)
  %cmp10.i48.i = icmp eq i8 %24, 3
  br i1 %cmp10.i48.i, label %land.lhs.true7.i49.i.if.end7_crit_edge, label %land.lhs.true7.i49.i.if.end7.sink.split_crit_edge

land.lhs.true7.i49.i.if.end7.sink.split_crit_edge: ; preds = %land.lhs.true7.i49.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.sink.split

land.lhs.true7.i49.i.if.end7_crit_edge:           ; preds = %land.lhs.true7.i49.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.end7.sink.split:                               ; preds = %land.lhs.true7.i49.i.if.end7.sink.split_crit_edge, %land.lhs.true4.i47.i.if.end7.sink.split_crit_edge, %land.lhs.true.i45.i.if.end7.sink.split_crit_edge, %if.else6.if.end7.sink.split_crit_edge, %land.lhs.true7.i73.i24.if.end7.sink.split_crit_edge, %land.lhs.true4.i71.i22.if.end7.sink.split_crit_edge, %land.lhs.true.i69.i20.if.end7.sink.split_crit_edge, %if.then5.if.end7.sink.split_crit_edge, %land.lhs.true7.i73.i.if.end7.sink.split_crit_edge, %land.lhs.true4.i71.i.if.end7.sink.split_crit_edge, %land.lhs.true.i69.i.if.end7.sink.split_crit_edge, %if.then.if.end7.sink.split_crit_edge
  %.sink35 = phi i32 [ 1431655765, %land.lhs.true7.i73.i.if.end7.sink.split_crit_edge ], [ 1431655765, %land.lhs.true4.i71.i.if.end7.sink.split_crit_edge ], [ 1431655765, %land.lhs.true.i69.i.if.end7.sink.split_crit_edge ], [ 1431655765, %if.then.if.end7.sink.split_crit_edge ], [ 1431655765, %land.lhs.true7.i73.i24.if.end7.sink.split_crit_edge ], [ 1431655765, %land.lhs.true4.i71.i22.if.end7.sink.split_crit_edge ], [ 1431655765, %land.lhs.true.i69.i20.if.end7.sink.split_crit_edge ], [ 1431655765, %if.then5.if.end7.sink.split_crit_edge ], [ 1515870810, %land.lhs.true7.i49.i.if.end7.sink.split_crit_edge ], [ 1515870810, %land.lhs.true4.i47.i.if.end7.sink.split_crit_edge ], [ 1515870810, %land.lhs.true.i45.i.if.end7.sink.split_crit_edge ], [ 1515870810, %if.else6.if.end7.sink.split_crit_edge ]
  %.sink = phi i32 [ -1431676326, %land.lhs.true7.i73.i.if.end7.sink.split_crit_edge ], [ -1431676326, %land.lhs.true4.i71.i.if.end7.sink.split_crit_edge ], [ -1431676326, %land.lhs.true.i69.i.if.end7.sink.split_crit_edge ], [ -1431676326, %if.then.if.end7.sink.split_crit_edge ], [ -1431676326, %land.lhs.true7.i73.i24.if.end7.sink.split_crit_edge ], [ -1431676326, %land.lhs.true4.i71.i22.if.end7.sink.split_crit_edge ], [ -1431676326, %land.lhs.true.i69.i20.if.end7.sink.split_crit_edge ], [ -1431676326, %if.then5.if.end7.sink.split_crit_edge ], [ 1515870810, %land.lhs.true7.i49.i.if.end7.sink.split_crit_edge ], [ 1515870810, %land.lhs.true4.i47.i.if.end7.sink.split_crit_edge ], [ 1515870810, %land.lhs.true.i45.i.if.end7.sink.split_crit_edge ], [ 1515870810, %if.else6.if.end7.sink.split_crit_edge ]
  %fBtcWrite4Byte.i.i.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 18
  %25 = ptrtoint ptr %fBtcWrite4Byte.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fBtcWrite4Byte.i.i.i, align 4
  call void %26(ptr noundef %pBtCoexist, i32 noundef 1728, i32 noundef %.sink35) #4
  %27 = ptrtoint ptr %fBtcWrite4Byte.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fBtcWrite4Byte.i.i.i, align 4
  call void %28(ptr noundef %pBtCoexist, i32 noundef 1732, i32 noundef %.sink) #4
  %29 = ptrtoint ptr %fBtcWrite4Byte.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fBtcWrite4Byte.i.i.i, align 4
  call void %30(ptr noundef %pBtCoexist, i32 noundef 1736, i32 noundef 16777215) #4
  %fBtcWrite1Byte.i.i111.i30 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 13
  %31 = ptrtoint ptr %fBtcWrite1Byte.i.i111.i30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fBtcWrite1Byte.i.i111.i30, align 4
  call void %32(ptr noundef %pBtCoexist, i32 noundef 1740, i8 noundef zeroext 3) #4
  %33 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 %33, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  %34 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 %34, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  %35 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i32 %35, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  %36 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  store i8 %36, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end7.sink.split, %land.lhs.true7.i49.i.if.end7_crit_edge, %land.lhs.true7.i73.i24.if.end7_crit_edge, %land.lhs.true7.i73.i.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @EXhalbtc8723b1ant_MediaStatusNotify(ptr noundef %pBtCoexist, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  %H2C_Parameter = alloca [3 x i8], align 1
  %wifiBw = alloca i32, align 4
  %wifiCentralChnl = alloca i8, align 1
  %bWifiUnderBMode = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %H2C_Parameter) #4
  %0 = call ptr @memset(ptr %H2C_Parameter, i32 0, i32 3)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifiBw) #4
  %1 = ptrtoint ptr %wifiBw to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %wifiBw, align 4, !annotation !40
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifiCentralChnl) #4
  %2 = ptrtoint ptr %wifiCentralChnl to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %wifiCentralChnl, align 1, !annotation !40
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bWifiUnderBMode) #4
  %3 = ptrtoint ptr %bWifiUnderBMode to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %bWifiUnderBMode, align 1
  %bManualControl = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 9
  %4 = ptrtoint ptr %bManualControl to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bManualControl, align 2, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %bStopCoexDm = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 8
  %6 = ptrtoint ptr %bStopCoexDm to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bStopCoexDm, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %lor.lhs.false2, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %btInfo = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 3
  %8 = ptrtoint ptr %btInfo to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %btInfo, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %type)
  %cmp = icmp eq i8 %type, 1
  br i1 %cmp, label %if.then5, label %if.end20

if.then5:                                         ; preds = %if.end
  %fBtcGet = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 25
  %10 = ptrtoint ptr %fBtcGet to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fBtcGet, align 4
  %call = call zeroext i8 %11(ptr noundef %pBtCoexist, i8 noundef zeroext 10, ptr noundef nonnull %bWifiUnderBMode) #4
  %12 = ptrtoint ptr %bWifiUnderBMode to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bWifiUnderBMode, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool6.not = icmp eq i8 %13, 0
  %fBtcWrite1Byte9 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 13
  %14 = ptrtoint ptr %fBtcWrite1Byte9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fBtcWrite1Byte9, align 4
  %. = select i1 %tobool6.not, i8 16, i8 0
  call void %15(ptr noundef %pBtCoexist, i32 noundef 1741, i8 noundef zeroext %.) #4
  %16 = ptrtoint ptr %fBtcWrite1Byte9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fBtcWrite1Byte9, align 4
  call void %17(ptr noundef %pBtCoexist, i32 noundef 1743, i8 noundef zeroext %.) #4
  %fBtcRead4Byte = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 17
  %18 = ptrtoint ptr %fBtcRead4Byte to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fBtcRead4Byte, align 4
  %call12 = call i32 %19(ptr noundef %pBtCoexist, i32 noundef 1072) #4
  store i32 %call12, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 26), align 4
  %20 = ptrtoint ptr %fBtcRead4Byte to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fBtcRead4Byte, align 4
  %call14 = call i32 %21(ptr noundef %pBtCoexist, i32 noundef 1076) #4
  store i32 %call14, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 27), align 4
  %fBtcRead2Byte = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 15
  %22 = ptrtoint ptr %fBtcRead2Byte to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fBtcRead2Byte, align 4
  %call15 = call zeroext i16 %23(ptr noundef %pBtCoexist, i32 noundef 1066) #4
  store i16 %call15, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 28), align 4
  %fBtcRead1Byte = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 12
  %24 = ptrtoint ptr %fBtcRead1Byte to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fBtcRead1Byte, align 4
  %call16 = call zeroext i8 %25(ptr noundef %pBtCoexist, i32 noundef 1110) #4
  store i8 %call16, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 29), align 2
  %26 = ptrtoint ptr %fBtcGet to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fBtcGet, align 4
  %call2284 = call zeroext i8 %27(ptr noundef %pBtCoexist, i8 noundef zeroext 21, ptr noundef nonnull %wifiCentralChnl) #4
  %28 = ptrtoint ptr %wifiCentralChnl to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %wifiCentralChnl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %29)
  %cmp27 = icmp ult i8 %29, 15
  br i1 %cmp27, label %if.then29, label %if.then5.if.end40_crit_edge

if.then5.if.end40_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end40

if.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  store i32 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 42), align 4
  %fBtcWrite1Byte18 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 13
  %30 = ptrtoint ptr %fBtcWrite1Byte18 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fBtcWrite1Byte18, align 4
  tail call void %31(ptr noundef %pBtCoexist, i32 noundef 1741, i8 noundef zeroext 0) #4
  %32 = ptrtoint ptr %fBtcWrite1Byte18 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fBtcWrite1Byte18, align 4
  tail call void %33(ptr noundef %pBtCoexist, i32 noundef 1743, i8 noundef zeroext 0) #4
  %fBtcGet21 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 25
  %34 = ptrtoint ptr %fBtcGet21 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fBtcGet21, align 4
  %call22 = call zeroext i8 %35(ptr noundef %pBtCoexist, i8 noundef zeroext 21, ptr noundef nonnull %wifiCentralChnl) #4
  br label %if.end40

if.then29:                                        ; preds = %if.then5
  %36 = ptrtoint ptr %H2C_Parameter to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %H2C_Parameter, align 1
  %arrayidx30 = getelementptr inbounds [3 x i8], ptr %H2C_Parameter, i32 0, i32 1
  %37 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %29, ptr %arrayidx30, align 1
  %38 = ptrtoint ptr %fBtcGet to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fBtcGet, align 4
  %call32 = call zeroext i8 %39(ptr noundef %pBtCoexist, i8 noundef zeroext 15, ptr noundef nonnull %wifiBw) #4
  %40 = ptrtoint ptr %wifiBw to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %wifiBw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %41)
  %cmp33 = icmp eq i32 %41, 2
  %arrayidx36 = getelementptr inbounds [3 x i8], ptr %H2C_Parameter, i32 0, i32 2
  br i1 %cmp33, label %if.then35, label %if.else37

if.then35:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  %42 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 48, ptr %arrayidx36, align 1
  br label %if.end40

if.else37:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  %43 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 32, ptr %arrayidx36, align 1
  br label %if.end40

if.end40:                                         ; preds = %if.else37, %if.then35, %if.end20, %if.then5.if.end40_crit_edge
  %44 = ptrtoint ptr %H2C_Parameter to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %H2C_Parameter, align 1
  store i8 %45, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 33), align 2
  %arrayidx43 = getelementptr inbounds [3 x i8], ptr %H2C_Parameter, i32 0, i32 1
  %46 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx43, align 1
  store i8 %47, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 33, i32 1), align 1
  %arrayidx46 = getelementptr inbounds [3 x i8], ptr %H2C_Parameter, i32 0, i32 2
  %48 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx46, align 1
  store i8 %49, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 33, i32 2), align 4
  %fBtcFillH2c = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 24
  %50 = ptrtoint ptr %fBtcFillH2c to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fBtcFillH2c, align 4
  call void %51(ptr noundef %pBtCoexist, i8 noundef zeroext 102, i32 noundef 3, ptr noundef nonnull %H2C_Parameter) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bWifiUnderBMode) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifiCentralChnl) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifiBw) #4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %H2C_Parameter) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @EXhalbtc8723b1ant_SpecialPacketNotify(ptr noundef %pBtCoexist, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  %bRejectRxAgg.i = alloca i8, align 1
  %bBtCtrlRxAggSize.i = alloca i8, align 1
  %rxAggSize.i = alloca i8, align 1
  %bBtHsOn = alloca i8, align 1
  %wifiLinkStatus = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bBtHsOn) #4
  %0 = ptrtoint ptr %bBtHsOn to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %bBtHsOn, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifiLinkStatus) #4
  %1 = ptrtoint ptr %wifiLinkStatus to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %wifiLinkStatus, align 4
  %bManualControl = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 9
  %2 = ptrtoint ptr %bManualControl to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bManualControl, align 2, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %bStopCoexDm = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 8
  %4 = ptrtoint ptr %bStopCoexDm to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bStopCoexDm, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false2, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %btInfo = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 3
  %6 = ptrtoint ptr %btInfo to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %btInfo, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %8 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %type, label %if.else27 [
    i8 2, label %if.then17
    i8 1, label %if.end.if.end29_crit_edge
    i8 3, label %if.end.if.end29_crit_edge84
  ]

if.end.if.end29_crit_edge84:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %9 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 42), align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 42), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc)
  %cmp19 = icmp ult i32 %inc, 10
  %. = zext i1 %cmp19 to i8
  br label %if.end29

if.else27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

if.end29:                                         ; preds = %if.else27, %if.then17, %if.end.if.end29_crit_edge, %if.end.if.end29_crit_edge84
  %.sink = phi i8 [ 0, %if.else27 ], [ %., %if.then17 ], [ 1, %if.end.if.end29_crit_edge ], [ 1, %if.end.if.end29_crit_edge84 ]
  store i8 %.sink, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 21), align 2
  store i32 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 7), align 4
  %fBtcGet = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 25
  %10 = ptrtoint ptr %fBtcGet to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fBtcGet, align 4
  %call = call zeroext i8 %11(ptr noundef %pBtCoexist, i8 noundef zeroext 18, ptr noundef nonnull %wifiLinkStatus) #4
  %12 = ptrtoint ptr %wifiLinkStatus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wifiLinkStatus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131071, i32 %13)
  %cmp30 = icmp ugt i32 %13, 131071
  br i1 %cmp30, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_LimitedTx(ptr noundef %pBtCoexist, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bRejectRxAgg.i) #4
  %14 = ptrtoint ptr %bRejectRxAgg.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %bRejectRxAgg.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bBtCtrlRxAggSize.i) #4
  %15 = ptrtoint ptr %bBtCtrlRxAggSize.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %bBtCtrlRxAggSize.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rxAggSize.i) #4
  %16 = ptrtoint ptr %rxAggSize.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 5, ptr %rxAggSize.i, align 1
  %fBtcSet.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 26
  %17 = ptrtoint ptr %fBtcSet.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fBtcSet.i, align 4
  %call.i = call zeroext i8 %18(ptr noundef %pBtCoexist, i8 noundef zeroext 4, ptr noundef nonnull %bRejectRxAgg.i) #4
  %19 = ptrtoint ptr %fBtcSet.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fBtcSet.i, align 4
  %call7.i = call zeroext i8 %20(ptr noundef %pBtCoexist, i8 noundef zeroext 5, ptr noundef nonnull %bBtCtrlRxAggSize.i) #4
  %21 = ptrtoint ptr %fBtcSet.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fBtcSet.i, align 4
  %call9.i = call zeroext i8 %22(ptr noundef %pBtCoexist, i8 noundef zeroext 9, ptr noundef nonnull %rxAggSize.i) #4
  %23 = ptrtoint ptr %fBtcSet.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fBtcSet.i, align 4
  %call11.i = call zeroext i8 %24(ptr noundef %pBtCoexist, i8 noundef zeroext 11, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rxAggSize.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bBtCtrlRxAggSize.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bRejectRxAgg.i) #4
  call fastcc void @halbtc8723b1ant_ActionWifiMultiPort(ptr noundef %pBtCoexist)
  br label %cleanup

if.end34:                                         ; preds = %if.end29
  %25 = ptrtoint ptr %fBtcGet to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fBtcGet, align 4
  %call36 = call zeroext i8 %26(ptr noundef %pBtCoexist, i8 noundef zeroext 0, ptr noundef nonnull %bBtHsOn) #4
  %27 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 19), align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool37.not = icmp eq i8 %27, 0
  br i1 %tobool37.not, label %if.else39, label %if.then38

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_ActionBtInquiry(ptr noundef %pBtCoexist)
  br label %cleanup

if.else39:                                        ; preds = %if.end34
  %28 = ptrtoint ptr %bBtHsOn to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bBtHsOn, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool40.not = icmp eq i8 %29, 0
  br i1 %tobool40.not, label %if.end43, label %if.then41

if.then41:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_ActionHs(ptr noundef %pBtCoexist)
  br label %cleanup

if.end43:                                         ; preds = %if.else39
  %30 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.16)
  switch i8 %type, label %if.end43.cleanup_crit_edge [
    i8 3, label %if.end43.if.then58_crit_edge
    i8 1, label %if.end43.if.then58_crit_edge85
    i8 2, label %land.lhs.true
  ]

if.end43.if.then58_crit_edge85:                   ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then58

if.end43.if.then58_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then58

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end43
  %31 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 21), align 2, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool56.not = icmp eq i8 %31, 0
  br i1 %tobool56.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.then58_crit_edge

land.lhs.true.if.then58_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then58

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then58:                                        ; preds = %land.lhs.true.if.then58_crit_edge, %if.end43.if.then58_crit_edge, %if.end43.if.then58_crit_edge85
  call fastcc void @halbtc8723b1ant_ActionWifiConnectedSpecialPacket(ptr noundef %pBtCoexist)
  br label %cleanup

cleanup:                                          ; preds = %if.then58, %land.lhs.true.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %if.then41, %if.then38, %if.then32, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifiLinkStatus) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bBtHsOn) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @halbtc8723b1ant_ActionWifiConnectedSpecialPacket(ptr noundef %pBtCoexist) unnamed_addr #0 align 64 {
entry:
  %bLowPwrDisable.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bLowPwrDisable.i) #4
  %0 = ptrtoint ptr %bLowPwrDisable.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %bLowPwrDisable.i, align 1
  %fBtcSet.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 26
  %1 = ptrtoint ptr %fBtcSet.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fBtcSet.i, align 4
  %call5.i = call zeroext i8 %2(ptr noundef %pBtCoexist, i8 noundef zeroext 18, ptr noundef nonnull %bLowPwrDisable.i) #4
  %3 = ptrtoint ptr %fBtcSet.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fBtcSet.i, align 4
  %call7.i = call zeroext i8 %4(ptr noundef %pBtCoexist, i8 noundef zeroext 17, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 37), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bLowPwrDisable.i) #4
  %bScoExist = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 5, i32 1
  %5 = ptrtoint ptr %bScoExist to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bScoExist, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %bHidExist = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 5, i32 5
  %7 = ptrtoint ptr %bHidExist to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bHidExist, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not = icmp eq i8 %8, 0
  br i1 %tobool1.not, label %lor.lhs.false2, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %bA2dpExist = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 5, i32 3
  %9 = ptrtoint ptr %bA2dpExist to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bA2dpExist, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool3.not = icmp eq i8 %10, 0
  br i1 %tobool3.not, label %if.else, label %lor.lhs.false2.if.then_crit_edge

lor.lhs.false2.if.then_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false2.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  call fastcc void @halbtc8723b1ant_PsTdma(ptr noundef %pBtCoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 32)
  store i8 4, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 36), align 2
  store i32 1431655765, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 -1431676326, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 16777215, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  %11 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1431655765, i32 %11)
  %cmp.i66.i = icmp eq i32 %11, 1431655765
  br i1 %cmp.i66.i, label %land.lhs.true.i69.i, label %if.then.if.end7.sink.split_crit_edge

if.then.if.end7.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.sink.split

land.lhs.true.i69.i:                              ; preds = %if.then
  %12 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1431676326, i32 %12)
  %cmp3.i68.i = icmp eq i32 %12, -1431676326
  br i1 %cmp3.i68.i, label %land.lhs.true4.i71.i, label %land.lhs.true.i69.i.if.end7.sink.split_crit_edge

land.lhs.true.i69.i.if.end7.sink.split_crit_edge: ; preds = %land.lhs.true.i69.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.sink.split

land.lhs.true4.i71.i:                             ; preds = %land.lhs.true.i69.i
  %13 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %13)
  %cmp6.i70.i = icmp eq i32 %13, 16777215
  br i1 %cmp6.i70.i, label %land.lhs.true7.i73.i, label %land.lhs.true4.i71.i.if.end7.sink.split_crit_edge

land.lhs.true4.i71.i.if.end7.sink.split_crit_edge: ; preds = %land.lhs.true4.i71.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.sink.split

land.lhs.true7.i73.i:                             ; preds = %land.lhs.true4.i71.i
  %14 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %14)
  %cmp10.i72.i = icmp eq i8 %14, 3
  br i1 %cmp10.i72.i, label %land.lhs.true7.i73.i.if.end7_crit_edge, label %land.lhs.true7.i73.i.if.end7.sink.split_crit_edge

land.lhs.true7.i73.i.if.end7.sink.split_crit_edge: ; preds = %land.lhs.true7.i73.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.sink.split

land.lhs.true7.i73.i.if.end7_crit_edge:           ; preds = %land.lhs.true7.i73.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.else:                                          ; preds = %lor.lhs.false2
  %bPanExist = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 5, i32 7
  %15 = ptrtoint ptr %bPanExist to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bPanExist, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool4.not = icmp eq i8 %16, 0
  br i1 %tobool4.not, label %if.else6, label %if.then5

if.then5:                                         ; preds = %if.else
  call fastcc void @halbtc8723b1ant_PsTdma(ptr noundef %pBtCoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 20)
  store i8 4, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 36), align 2
  store i32 1431655765, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 -1431676326, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 16777215, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  %17 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1431655765, i32 %17)
  %cmp.i66.i18 = icmp eq i32 %17, 1431655765
  br i1 %cmp.i66.i18, label %land.lhs.true.i69.i20, label %if.then5.if.end7.sink.split_crit_edge

if.then5.if.end7.sink.split_crit_edge:            ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.sink.split

land.lhs.true.i69.i20:                            ; preds = %if.then5
  %18 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1431676326, i32 %18)
  %cmp3.i68.i19 = icmp eq i32 %18, -1431676326
  br i1 %cmp3.i68.i19, label %land.lhs.true4.i71.i22, label %land.lhs.true.i69.i20.if.end7.sink.split_crit_edge

land.lhs.true.i69.i20.if.end7.sink.split_crit_edge: ; preds = %land.lhs.true.i69.i20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.sink.split

land.lhs.true4.i71.i22:                           ; preds = %land.lhs.true.i69.i20
  %19 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %19)
  %cmp6.i70.i21 = icmp eq i32 %19, 16777215
  br i1 %cmp6.i70.i21, label %land.lhs.true7.i73.i24, label %land.lhs.true4.i71.i22.if.end7.sink.split_crit_edge

land.lhs.true4.i71.i22.if.end7.sink.split_crit_edge: ; preds = %land.lhs.true4.i71.i22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.sink.split

land.lhs.true7.i73.i24:                           ; preds = %land.lhs.true4.i71.i22
  %20 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %20)
  %cmp10.i72.i23 = icmp eq i8 %20, 3
  br i1 %cmp10.i72.i23, label %land.lhs.true7.i73.i24.if.end7_crit_edge, label %land.lhs.true7.i73.i24.if.end7.sink.split_crit_edge

land.lhs.true7.i73.i24.if.end7.sink.split_crit_edge: ; preds = %land.lhs.true7.i73.i24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.sink.split

land.lhs.true7.i73.i24.if.end7_crit_edge:         ; preds = %land.lhs.true7.i73.i24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.else6:                                         ; preds = %if.else
  call fastcc void @halbtc8723b1ant_PsTdma(ptr noundef %pBtCoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 8)
  store i8 2, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 36), align 2
  store i32 1515870810, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 1515870810, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 16777215, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  %21 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1515870810, i32 %21)
  %cmp.i42.i = icmp eq i32 %21, 1515870810
  br i1 %cmp.i42.i, label %land.lhs.true.i45.i, label %if.else6.if.end7.sink.split_crit_edge

if.else6.if.end7.sink.split_crit_edge:            ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.sink.split

land.lhs.true.i45.i:                              ; preds = %if.else6
  %22 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1515870810, i32 %22)
  %cmp3.i44.i = icmp eq i32 %22, 1515870810
  br i1 %cmp3.i44.i, label %land.lhs.true4.i47.i, label %land.lhs.true.i45.i.if.end7.sink.split_crit_edge

land.lhs.true.i45.i.if.end7.sink.split_crit_edge: ; preds = %land.lhs.true.i45.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.sink.split

land.lhs.true4.i47.i:                             ; preds = %land.lhs.true.i45.i
  %23 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %23)
  %cmp6.i46.i = icmp eq i32 %23, 16777215
  br i1 %cmp6.i46.i, label %land.lhs.true7.i49.i, label %land.lhs.true4.i47.i.if.end7.sink.split_crit_edge

land.lhs.true4.i47.i.if.end7.sink.split_crit_edge: ; preds = %land.lhs.true4.i47.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.sink.split

land.lhs.true7.i49.i:                             ; preds = %land.lhs.true4.i47.i
  %24 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %24)
  %cmp10.i48.i = icmp eq i8 %24, 3
  br i1 %cmp10.i48.i, label %land.lhs.true7.i49.i.if.end7_crit_edge, label %land.lhs.true7.i49.i.if.end7.sink.split_crit_edge

land.lhs.true7.i49.i.if.end7.sink.split_crit_edge: ; preds = %land.lhs.true7.i49.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.sink.split

land.lhs.true7.i49.i.if.end7_crit_edge:           ; preds = %land.lhs.true7.i49.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.end7.sink.split:                               ; preds = %land.lhs.true7.i49.i.if.end7.sink.split_crit_edge, %land.lhs.true4.i47.i.if.end7.sink.split_crit_edge, %land.lhs.true.i45.i.if.end7.sink.split_crit_edge, %if.else6.if.end7.sink.split_crit_edge, %land.lhs.true7.i73.i24.if.end7.sink.split_crit_edge, %land.lhs.true4.i71.i22.if.end7.sink.split_crit_edge, %land.lhs.true.i69.i20.if.end7.sink.split_crit_edge, %if.then5.if.end7.sink.split_crit_edge, %land.lhs.true7.i73.i.if.end7.sink.split_crit_edge, %land.lhs.true4.i71.i.if.end7.sink.split_crit_edge, %land.lhs.true.i69.i.if.end7.sink.split_crit_edge, %if.then.if.end7.sink.split_crit_edge
  %.sink35 = phi i32 [ 1431655765, %land.lhs.true7.i73.i.if.end7.sink.split_crit_edge ], [ 1431655765, %land.lhs.true4.i71.i.if.end7.sink.split_crit_edge ], [ 1431655765, %land.lhs.true.i69.i.if.end7.sink.split_crit_edge ], [ 1431655765, %if.then.if.end7.sink.split_crit_edge ], [ 1431655765, %land.lhs.true7.i73.i24.if.end7.sink.split_crit_edge ], [ 1431655765, %land.lhs.true4.i71.i22.if.end7.sink.split_crit_edge ], [ 1431655765, %land.lhs.true.i69.i20.if.end7.sink.split_crit_edge ], [ 1431655765, %if.then5.if.end7.sink.split_crit_edge ], [ 1515870810, %land.lhs.true7.i49.i.if.end7.sink.split_crit_edge ], [ 1515870810, %land.lhs.true4.i47.i.if.end7.sink.split_crit_edge ], [ 1515870810, %land.lhs.true.i45.i.if.end7.sink.split_crit_edge ], [ 1515870810, %if.else6.if.end7.sink.split_crit_edge ]
  %.sink = phi i32 [ -1431676326, %land.lhs.true7.i73.i.if.end7.sink.split_crit_edge ], [ -1431676326, %land.lhs.true4.i71.i.if.end7.sink.split_crit_edge ], [ -1431676326, %land.lhs.true.i69.i.if.end7.sink.split_crit_edge ], [ -1431676326, %if.then.if.end7.sink.split_crit_edge ], [ -1431676326, %land.lhs.true7.i73.i24.if.end7.sink.split_crit_edge ], [ -1431676326, %land.lhs.true4.i71.i22.if.end7.sink.split_crit_edge ], [ -1431676326, %land.lhs.true.i69.i20.if.end7.sink.split_crit_edge ], [ -1431676326, %if.then5.if.end7.sink.split_crit_edge ], [ 1515870810, %land.lhs.true7.i49.i.if.end7.sink.split_crit_edge ], [ 1515870810, %land.lhs.true4.i47.i.if.end7.sink.split_crit_edge ], [ 1515870810, %land.lhs.true.i45.i.if.end7.sink.split_crit_edge ], [ 1515870810, %if.else6.if.end7.sink.split_crit_edge ]
  %fBtcWrite4Byte.i.i.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 18
  %25 = ptrtoint ptr %fBtcWrite4Byte.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fBtcWrite4Byte.i.i.i, align 4
  call void %26(ptr noundef %pBtCoexist, i32 noundef 1728, i32 noundef %.sink35) #4
  %27 = ptrtoint ptr %fBtcWrite4Byte.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fBtcWrite4Byte.i.i.i, align 4
  call void %28(ptr noundef %pBtCoexist, i32 noundef 1732, i32 noundef %.sink) #4
  %29 = ptrtoint ptr %fBtcWrite4Byte.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fBtcWrite4Byte.i.i.i, align 4
  call void %30(ptr noundef %pBtCoexist, i32 noundef 1736, i32 noundef 16777215) #4
  %fBtcWrite1Byte.i.i111.i30 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 13
  %31 = ptrtoint ptr %fBtcWrite1Byte.i.i111.i30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fBtcWrite1Byte.i.i111.i30, align 4
  call void %32(ptr noundef %pBtCoexist, i32 noundef 1740, i8 noundef zeroext 3) #4
  %33 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 %33, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  %34 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 %34, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  %35 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i32 %35, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  %36 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  store i8 %36, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end7.sink.split, %land.lhs.true7.i49.i.if.end7_crit_edge, %land.lhs.true7.i73.i24.if.end7_crit_edge, %land.lhs.true7.i73.i.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @EXhalbtc8723b1ant_BtInfoNotify(ptr noundef %pBtCoexist, ptr nocapture noundef readonly %tmpBuf, i8 noundef zeroext %length) local_unnamed_addr #0 align 64 {
entry:
  %bBtHsOn.i = alloca i8, align 1
  %H2C_Parameter.i.i = alloca [1 x i8], align 1
  %H2C_Parameter.i = alloca [3 x i8], align 1
  %wifiCentralChnl.i = alloca i8, align 1
  %bWifiConnected = alloca i8, align 1
  %bBtBusy = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bWifiConnected) #4
  %0 = ptrtoint ptr %bWifiConnected to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %bWifiConnected, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bBtBusy) #4
  %1 = ptrtoint ptr %bBtBusy to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %bBtBusy, align 1
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 16), align 1
  %2 = ptrtoint ptr %tmpBuf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tmpBuf, align 1
  %4 = and i8 %3, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %cmp = icmp ugt i8 %4, 2
  %spec.store.select = select i1 %cmp, i8 0, i8 %4
  %idxprom = zext i8 %spec.store.select to i32
  %arrayidx4 = getelementptr %struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 18, i32 %idxprom
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx4, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %length)
  %cmp7249.not = icmp eq i8 %length, 0
  br i1 %cmp7249.not, label %entry.for.end_crit_edge, label %for.inc.peel

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.peel:                                     ; preds = %entry
  %wide.trip.count = zext i8 %length to i32
  %7 = ptrtoint ptr %tmpBuf to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tmpBuf, align 1
  %arrayidx14.peel = getelementptr %struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 17, i32 %idxprom, i32 0
  %9 = ptrtoint ptr %arrayidx14.peel to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %arrayidx14.peel, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %length)
  %exitcond.peel.not = icmp eq i8 %length, 1
  br i1 %exitcond.peel.not, label %for.inc.peel.for.end_crit_edge, label %for.inc.peel258

for.inc.peel.for.end_crit_edge:                   ; preds = %for.inc.peel
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.peel258:                                  ; preds = %for.inc.peel
  %arrayidx10.peel254 = getelementptr i8, ptr %tmpBuf, i32 1
  %10 = ptrtoint ptr %arrayidx10.peel254 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx10.peel254, align 1
  %arrayidx14.peel255 = getelementptr %struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 17, i32 %idxprom, i32 1
  %12 = ptrtoint ptr %arrayidx14.peel255 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %arrayidx14.peel255, align 1
  %13 = load i8, ptr %arrayidx10.peel254, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %length)
  %exitcond.peel261.not = icmp eq i8 %length, 2
  br i1 %exitcond.peel261.not, label %for.inc.peel258.for.end_crit_edge, label %for.inc.peel258.for.inc_crit_edge

for.inc.peel258.for.inc_crit_edge:                ; preds = %for.inc.peel258
  br label %for.inc

for.inc.peel258.for.end_crit_edge:                ; preds = %for.inc.peel258
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc:                                          ; preds = %for.inc.for.inc_crit_edge, %for.inc.peel258.for.inc_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc.for.inc_crit_edge ], [ 2, %for.inc.peel258.for.inc_crit_edge ]
  %arrayidx10 = getelementptr i8, ptr %tmpBuf, i32 %indvars.iv
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx10, align 1
  %arrayidx14 = getelementptr %struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 17, i32 %idxprom, i32 %indvars.iv
  %16 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %arrayidx14, align 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.inc_crit_edge, !llvm.loop !41

for.inc.for.inc_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.inc.peel258.for.end_crit_edge, %for.inc.peel.for.end_crit_edge, %entry.for.end_crit_edge
  %btInfo.0.lcssa = phi i8 [ 0, %entry.for.end_crit_edge ], [ 0, %for.inc.peel.for.end_crit_edge ], [ %13, %for.inc.peel258.for.end_crit_edge ], [ %13, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.store.select)
  %cmp24.not = icmp eq i8 %spec.store.select, 0
  br i1 %cmp24.not, label %for.end.if.end94_crit_edge, label %if.then26

for.end.if.end94_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end94

if.then26:                                        ; preds = %for.end
  %arrayidx30 = getelementptr %struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 17, i32 %idxprom, i32 2
  %17 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx30, align 2
  %19 = and i8 %18, 15
  store i8 %19, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 22), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp36.not = icmp eq i8 %19, 0
  br i1 %cmp36.not, label %if.then26.if.end40_crit_edge, label %if.then38

if.then26.if.end40_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end40

if.then38:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  %20 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 24), align 4
  %inc39 = add i32 %20, 1
  store i32 %inc39, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 24), align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.then26.if.end40_crit_edge
  %21 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx30, align 2
  %23 = lshr i8 %22, 5
  %.lobit248 = and i8 %23, 1
  store i8 %.lobit248, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 20), align 1
  %arrayidx53 = getelementptr %struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 17, i32 %idxprom, i32 3
  %24 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx53, align 1
  %mul = shl i8 %25, 1
  %sub = add i8 %mul, -90
  store i8 %sub, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 12), align 4
  %arrayidx59 = getelementptr %struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 17, i32 %idxprom, i32 4
  %26 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx59, align 2
  store i8 %27, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 23), align 4
  %28 = load i8, ptr %arrayidx30, align 2
  %29 = lshr i8 %28, 6
  %.lobit = and i8 %29, 1
  store i8 %.lobit, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 13), align 1
  %fBtcSet = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 26
  %30 = ptrtoint ptr %fBtcSet to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fBtcSet, align 4
  %call = tail call zeroext i8 %31(ptr noundef %pBtCoexist, i8 noundef zeroext 7, ptr noundef getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 13)) #4
  %32 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 13), align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool69.not = icmp eq i8 %32, 0
  br i1 %tobool69.not, label %if.then70, label %if.end40.if.end71_crit_edge

if.end40.if.end71_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end71

if.then70:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  %fBtcSetBtReg = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 28
  %33 = ptrtoint ptr %fBtcSetBtReg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fBtcSetBtReg, align 4
  tail call void %34(ptr noundef %pBtCoexist, i8 noundef zeroext 0, i32 noundef 60, i32 noundef 21) #4
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %if.end40.if.end71_crit_edge
  %35 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 23), align 4
  %36 = and i8 %35, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool75.not = icmp eq i8 %36, 0
  br i1 %tobool75.not, label %if.end71.if.end82_crit_edge, label %if.then76

if.end71.if.end82_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end82

if.then76:                                        ; preds = %if.end71
  %fBtcGet = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 25
  %37 = ptrtoint ptr %fBtcGet to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fBtcGet, align 4
  %call77 = call zeroext i8 %38(ptr noundef %pBtCoexist, i8 noundef zeroext 2, ptr noundef nonnull %bWifiConnected) #4
  %39 = ptrtoint ptr %bWifiConnected to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %bWifiConnected, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool78.not = icmp eq i8 %40, 0
  br i1 %tobool78.not, label %if.else80, label %if.then79

if.then79:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #6
  call void @EXhalbtc8723b1ant_MediaStatusNotify(ptr noundef %pBtCoexist, i8 noundef zeroext 1)
  br label %if.end82

if.else80:                                        ; preds = %if.then76
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %H2C_Parameter.i) #4
  %41 = call ptr @memset(ptr %H2C_Parameter.i, i32 0, i32 3)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifiCentralChnl.i) #4
  %42 = ptrtoint ptr %wifiCentralChnl.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -1, ptr %wifiCentralChnl.i, align 1, !annotation !40
  %bManualControl.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 9
  %43 = ptrtoint ptr %bManualControl.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %bManualControl.i, align 2, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i = icmp eq i8 %44, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.else80.EXhalbtc8723b1ant_MediaStatusNotify.exit_crit_edge

if.else80.EXhalbtc8723b1ant_MediaStatusNotify.exit_crit_edge: ; preds = %if.else80
  call void @__sanitizer_cov_trace_pc() #6
  br label %EXhalbtc8723b1ant_MediaStatusNotify.exit

lor.lhs.false.i:                                  ; preds = %if.else80
  %bStopCoexDm.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 8
  %45 = ptrtoint ptr %bStopCoexDm.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %bStopCoexDm.i, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool1.not.i = icmp eq i8 %46, 0
  br i1 %tobool1.not.i, label %lor.lhs.false2.i, label %lor.lhs.false.i.EXhalbtc8723b1ant_MediaStatusNotify.exit_crit_edge

lor.lhs.false.i.EXhalbtc8723b1ant_MediaStatusNotify.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %EXhalbtc8723b1ant_MediaStatusNotify.exit

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %btInfo.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 3
  %47 = ptrtoint ptr %btInfo.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %btInfo.i, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool3.not.i = icmp eq i8 %48, 0
  br i1 %tobool3.not.i, label %if.end.i, label %lor.lhs.false2.i.EXhalbtc8723b1ant_MediaStatusNotify.exit_crit_edge

lor.lhs.false2.i.EXhalbtc8723b1ant_MediaStatusNotify.exit_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %EXhalbtc8723b1ant_MediaStatusNotify.exit

if.end.i:                                         ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #6
  store i32 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 42), align 4
  %fBtcWrite1Byte18.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 13
  %49 = ptrtoint ptr %fBtcWrite1Byte18.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fBtcWrite1Byte18.i, align 4
  call void %50(ptr noundef %pBtCoexist, i32 noundef 1741, i8 noundef zeroext 0) #4
  %51 = ptrtoint ptr %fBtcWrite1Byte18.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %fBtcWrite1Byte18.i, align 4
  call void %52(ptr noundef %pBtCoexist, i32 noundef 1743, i8 noundef zeroext 0) #4
  %53 = ptrtoint ptr %fBtcGet to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fBtcGet, align 4
  %call22.i = call zeroext i8 %54(ptr noundef %pBtCoexist, i8 noundef zeroext 21, ptr noundef nonnull %wifiCentralChnl.i) #4
  %55 = ptrtoint ptr %H2C_Parameter.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %H2C_Parameter.i, align 1
  store i8 %56, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 33), align 2
  %arrayidx43.i = getelementptr inbounds [3 x i8], ptr %H2C_Parameter.i, i32 0, i32 1
  %57 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx43.i, align 1
  store i8 %58, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 33, i32 1), align 1
  %arrayidx46.i = getelementptr inbounds [3 x i8], ptr %H2C_Parameter.i, i32 0, i32 2
  %59 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx46.i, align 1
  store i8 %60, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 33, i32 2), align 4
  %fBtcFillH2c.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 24
  %61 = ptrtoint ptr %fBtcFillH2c.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %fBtcFillH2c.i, align 4
  call void %62(ptr noundef %pBtCoexist, i8 noundef zeroext 102, i32 noundef 3, ptr noundef nonnull %H2C_Parameter.i) #4
  br label %EXhalbtc8723b1ant_MediaStatusNotify.exit

EXhalbtc8723b1ant_MediaStatusNotify.exit:         ; preds = %if.end.i, %lor.lhs.false2.i.EXhalbtc8723b1ant_MediaStatusNotify.exit_crit_edge, %lor.lhs.false.i.EXhalbtc8723b1ant_MediaStatusNotify.exit_crit_edge, %if.else80.EXhalbtc8723b1ant_MediaStatusNotify.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifiCentralChnl.i) #4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %H2C_Parameter.i) #4
  br label %if.end82

if.end82:                                         ; preds = %EXhalbtc8723b1ant_MediaStatusNotify.exit, %if.then79, %if.end71.if.end82_crit_edge
  %63 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 23), align 4
  %64 = and i8 %63, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool86.not = icmp eq i8 %64, 0
  br i1 %tobool86.not, label %if.end82.if.end94_crit_edge, label %if.then87

if.end82.if.end94_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end94

if.then87:                                        ; preds = %if.end82
  %bManualControl = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 9
  %65 = ptrtoint ptr %bManualControl to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %bManualControl, align 2, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool88.not = icmp eq i8 %66, 0
  br i1 %tobool88.not, label %land.lhs.true, label %if.then87.if.end94_crit_edge

if.then87.if.end94_crit_edge:                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end94

land.lhs.true:                                    ; preds = %if.then87
  %bStopCoexDm = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 8
  %67 = ptrtoint ptr %bStopCoexDm to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %bStopCoexDm, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool89.not = icmp eq i8 %68, 0
  br i1 %tobool89.not, label %if.then90, label %land.lhs.true.if.end94_crit_edge

land.lhs.true.if.end94_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end94

if.then90:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  store i8 0, ptr @GLCoexDm8723b1Ant, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %H2C_Parameter.i.i) #4
  %69 = ptrtoint ptr %H2C_Parameter.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %H2C_Parameter.i.i, align 1
  %fBtcFillH2c.i.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 24
  %70 = ptrtoint ptr %fBtcFillH2c.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %fBtcFillH2c.i.i, align 4
  call void %71(ptr noundef %pBtCoexist, i8 noundef zeroext 99, i32 noundef 1, ptr noundef nonnull %H2C_Parameter.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %H2C_Parameter.i.i) #4
  %72 = load i8, ptr @GLCoexDm8723b1Ant, align 4, !range !39
  store i8 %72, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 1), align 1
  br label %if.end94

if.end94:                                         ; preds = %if.then90, %land.lhs.true.if.end94_crit_edge, %if.then87.if.end94_crit_edge, %if.end82.if.end94_crit_edge, %for.end.if.end94_crit_edge
  %conv95 = zext i8 %btInfo.0.lcssa to i32
  %and96 = lshr i8 %btInfo.0.lcssa, 2
  %and96.lobit = and i8 %and96, 1
  store i8 %and96.lobit, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 19), align 4
  %and103 = and i32 %conv95, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %if.then105, label %if.else106

if.then105:                                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #6
  %73 = call ptr @memset(ptr @GLCoexSta8723b1Ant, i32 0, i32 5)
  br label %if.end140

if.else106:                                       ; preds = %if.end94
  store i8 1, ptr @GLCoexSta8723b1Ant, align 4
  %and109.lobit = lshr i8 %btInfo.0.lcssa, 7
  store i8 %and109.lobit, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 4), align 4
  %and117 = lshr i8 %btInfo.0.lcssa, 6
  %and117.lobit = and i8 %and117, 1
  store i8 %and117.lobit, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 2), align 2
  %and125 = lshr i8 %btInfo.0.lcssa, 5
  %and125.lobit = and i8 %and125, 1
  store i8 %and125.lobit, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 3), align 1
  %and133 = and i32 %conv95, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133)
  %tobool134.not = icmp eq i32 %and133, 0
  br i1 %tobool134.not, label %if.else137, label %if.then135

if.then135:                                       ; preds = %if.else106
  call void @__sanitizer_cov_trace_pc() #6
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 1), align 1
  br label %if.end140

if.else137:                                       ; preds = %if.else106
  call void @__sanitizer_cov_trace_pc() #6
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 1), align 1
  br label %if.end140

if.end140:                                        ; preds = %if.else137, %if.then135, %if.then105
  %btLinkInfo.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bBtHsOn.i) #4
  %74 = ptrtoint ptr %bBtHsOn.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %bBtHsOn.i, align 1
  %fBtcGet.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 25
  %75 = ptrtoint ptr %fBtcGet.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %fBtcGet.i, align 4
  %call.i = call zeroext i8 %76(ptr noundef %pBtCoexist, i8 noundef zeroext 0, ptr noundef nonnull %bBtHsOn.i) #4
  %77 = load i8, ptr @GLCoexSta8723b1Ant, align 4, !range !39
  %78 = ptrtoint ptr %btLinkInfo.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %btLinkInfo.i, align 1
  %79 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 1), align 1, !range !39
  %bScoExist3.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 5, i32 1
  %80 = ptrtoint ptr %bScoExist3.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %bScoExist3.i, align 1
  %81 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 2), align 2, !range !39
  %bA2dpExist6.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 5, i32 3
  %82 = ptrtoint ptr %bA2dpExist6.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %bA2dpExist6.i, align 1
  %83 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 4), align 4, !range !39
  %bPanExist9.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 5, i32 7
  %84 = ptrtoint ptr %bPanExist9.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %bPanExist9.i, align 1
  %85 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 3), align 1, !range !39
  %bHidExist12.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 5, i32 5
  %86 = ptrtoint ptr %bHidExist12.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %bHidExist12.i, align 1
  %87 = ptrtoint ptr %bBtHsOn.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %bBtHsOn.i, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool14.not.i = icmp eq i8 %88, 0
  br i1 %tobool14.not.i, label %if.end140.if.end.i247_crit_edge, label %if.then.i

if.end140.if.end.i247_crit_edge:                  ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i247

if.then.i:                                        ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #6
  %89 = ptrtoint ptr %bPanExist9.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %bPanExist9.i, align 1
  %90 = ptrtoint ptr %btLinkInfo.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %btLinkInfo.i, align 1
  br label %if.end.i247

if.end.i247:                                      ; preds = %if.then.i, %if.end140.if.end.i247_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool18.not.i = icmp eq i8 %79, 0
  br i1 %tobool18.not.i, label %land.lhs.true32.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end.i247
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool20.not.i = icmp eq i8 %81, 0
  br i1 %tobool20.not.i, label %land.lhs.true21.i, label %land.lhs.true.i.if.end29.thread107.i_crit_edge

land.lhs.true.i.if.end29.thread107.i_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29.thread107.i

land.lhs.true21.i:                                ; preds = %land.lhs.true.i
  %91 = ptrtoint ptr %bPanExist9.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %bPanExist9.i, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool23.not.i = icmp eq i8 %92, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool26.not.i = icmp eq i8 %85, 0
  %or.cond.i = select i1 %tobool23.not.i, i1 %tobool26.not.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true21.i.if.end59.i_crit_edge, label %land.lhs.true21.i.if.end29.thread107.i_crit_edge

land.lhs.true21.i.if.end29.thread107.i_crit_edge: ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29.thread107.i

land.lhs.true21.i.if.end59.i_crit_edge:           ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end59.i

if.end29.thread107.i:                             ; preds = %land.lhs.true21.i.if.end29.thread107.i_crit_edge, %land.lhs.true.i.if.end29.thread107.i_crit_edge
  br label %if.end59.i

land.lhs.true32.i:                                ; preds = %if.end.i247
  %bScoOnly28.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 5, i32 2
  %93 = ptrtoint ptr %bScoOnly28.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %bScoOnly28.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool34.not.i = icmp eq i8 %81, 0
  br i1 %tobool34.not.i, label %land.lhs.true50.i, label %land.lhs.true35.i

land.lhs.true35.i:                                ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #6
  %94 = ptrtoint ptr %bPanExist9.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %bPanExist9.i, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool37.not.i = icmp eq i8 %95, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool40.not.i = icmp eq i8 %85, 0
  %or.cond126.i = select i1 %tobool37.not.i, i1 %tobool40.not.i, i1 false
  %spec.select.i = zext i1 %or.cond126.i to i8
  %96 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 5, i32 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %spec.select.i, ptr %96, align 1
  %bPanOnly58116.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 5, i32 8
  %98 = ptrtoint ptr %bPanOnly58116.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %bPanOnly58116.i, align 1
  br label %if.else72.i

land.lhs.true50.i:                                ; preds = %land.lhs.true32.i
  %bA2dpOnly43110.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 5, i32 4
  %99 = ptrtoint ptr %bA2dpOnly43110.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %bA2dpOnly43110.i, align 1
  %100 = ptrtoint ptr %bPanExist9.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %bPanExist9.i, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool52.not.i = icmp eq i8 %101, 0
  br i1 %tobool52.not.i, label %land.lhs.true68.i, label %land.lhs.true53.i

land.lhs.true53.i:                                ; preds = %land.lhs.true50.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool55.not.i = icmp eq i8 %85, 0
  %bPanOnly.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 5, i32 8
  br i1 %tobool55.not.i, label %land.lhs.true65.thread.i, label %land.lhs.true65.i

if.end59.i:                                       ; preds = %if.end29.thread107.i, %land.lhs.true21.i.if.end59.i_crit_edge
  %.sink127.i = phi i8 [ 0, %if.end29.thread107.i ], [ 1, %land.lhs.true21.i.if.end59.i_crit_edge ]
  %bScoOnly28108.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 5, i32 2
  %102 = ptrtoint ptr %bScoOnly28108.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %.sink127.i, ptr %bScoOnly28108.i, align 1
  %bA2dpOnly43.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 5, i32 4
  %103 = ptrtoint ptr %bA2dpOnly43.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %bA2dpOnly43.i, align 1
  %bPanOnly58.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 5, i32 8
  %104 = ptrtoint ptr %bPanOnly58.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %bPanOnly58.i, align 1
  br label %if.else72.i

land.lhs.true65.i:                                ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #6
  %105 = ptrtoint ptr %bPanOnly.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %bPanOnly.i, align 1
  br label %if.else72.i

land.lhs.true65.thread.i:                         ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #6
  %106 = ptrtoint ptr %bPanOnly.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 1, ptr %bPanOnly.i, align 1
  br label %if.else72.i

land.lhs.true68.i:                                ; preds = %land.lhs.true50.i
  %bPanOnly58116119124.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 5, i32 8
  %107 = ptrtoint ptr %bPanOnly58116119124.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %bPanOnly58116119124.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool70.not.i = icmp eq i8 %85, 0
  br i1 %tobool70.not.i, label %land.lhs.true68.i.if.else72.i_crit_edge, label %land.lhs.true68.i.halbtc8723b1ant_UpdateBtLinkInfo.exit_crit_edge

land.lhs.true68.i.halbtc8723b1ant_UpdateBtLinkInfo.exit_crit_edge: ; preds = %land.lhs.true68.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_UpdateBtLinkInfo.exit

land.lhs.true68.i.if.else72.i_crit_edge:          ; preds = %land.lhs.true68.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else72.i

if.else72.i:                                      ; preds = %land.lhs.true68.i.if.else72.i_crit_edge, %land.lhs.true65.thread.i, %land.lhs.true65.i, %if.end59.i, %land.lhs.true35.i
  br label %halbtc8723b1ant_UpdateBtLinkInfo.exit

halbtc8723b1ant_UpdateBtLinkInfo.exit:            ; preds = %if.else72.i, %land.lhs.true68.i.halbtc8723b1ant_UpdateBtLinkInfo.exit_crit_edge
  %.sink.i = phi i8 [ 0, %if.else72.i ], [ 1, %land.lhs.true68.i.halbtc8723b1ant_UpdateBtLinkInfo.exit_crit_edge ]
  %bHidOnly73.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 5, i32 6
  %108 = ptrtoint ptr %bHidOnly73.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %.sink.i, ptr %bHidOnly73.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bBtHsOn.i) #4
  %and142 = and i8 %btInfo.0.lcssa, 31
  %conv144 = zext i8 %and142 to i32
  %and145 = and i32 %conv144, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145)
  %tobool146.not = icmp eq i32 %and145, 0
  br i1 %tobool146.not, label %halbtc8723b1ant_UpdateBtLinkInfo.exit.if.end180_crit_edge, label %if.else148

halbtc8723b1ant_UpdateBtLinkInfo.exit.if.end180_crit_edge: ; preds = %halbtc8723b1ant_UpdateBtLinkInfo.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end180

if.else148:                                       ; preds = %halbtc8723b1ant_UpdateBtLinkInfo.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %and142)
  %cmp150 = icmp eq i8 %and142, 1
  br i1 %cmp150, label %if.else148.if.end180_crit_edge, label %if.else154

if.else148.if.end180_crit_edge:                   ; preds = %if.else148
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end180

if.else154:                                       ; preds = %if.else148
  %109 = and i32 %conv144, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %if.else163, label %if.else154.if.end180_crit_edge

if.else154.if.end180_crit_edge:                   ; preds = %if.else154
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end180

if.else163:                                       ; preds = %if.else154
  %and165 = and i32 %conv144, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and165)
  %tobool166.not = icmp eq i32 %and165, 0
  br i1 %tobool166.not, label %if.else163.if.end180_crit_edge, label %if.then167

if.else163.if.end180_crit_edge:                   ; preds = %if.else163
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end180

if.then167:                                       ; preds = %if.else163
  %111 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 32), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %111)
  %cmp170.not = icmp eq i8 %111, 3
  br i1 %cmp170.not, label %if.then167.if.end180_crit_edge, label %if.then172

if.then167.if.end180_crit_edge:                   ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end180

if.then172:                                       ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #6
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 6), align 2
  br label %if.end180

if.end180:                                        ; preds = %if.then172, %if.then167.if.end180_crit_edge, %if.else163.if.end180_crit_edge, %if.else154.if.end180_crit_edge, %if.else148.if.end180_crit_edge, %halbtc8723b1ant_UpdateBtLinkInfo.exit.if.end180_crit_edge
  %.sink = phi i8 [ 0, %halbtc8723b1ant_UpdateBtLinkInfo.exit.if.end180_crit_edge ], [ 1, %if.else148.if.end180_crit_edge ], [ 4, %if.else154.if.end180_crit_edge ], [ 3, %if.then172 ], [ 3, %if.then167.if.end180_crit_edge ], [ 6, %if.else163.if.end180_crit_edge ]
  store i8 %.sink, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 32), align 1
  %.off = add nsw i8 %.sink, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off)
  %switch = icmp ult i8 %.off, 3
  %spec.select = zext i1 %switch to i8
  %112 = ptrtoint ptr %bBtBusy to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %spec.select, ptr %bBtBusy, align 1
  %fBtcSet198 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 26
  %113 = ptrtoint ptr %fBtcSet198 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %fBtcSet198, align 4
  %call199 = call zeroext i8 %114(ptr noundef %pBtCoexist, i8 noundef zeroext 1, ptr noundef nonnull %bBtBusy) #4
  call fastcc void @halbtc8723b1ant_RunCoexistMechanism(ptr noundef %pBtCoexist)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bBtBusy) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bWifiConnected) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @halbtc8723b1ant_RunCoexistMechanism(ptr noundef %pBtCoexist) unnamed_addr #0 align 64 {
entry:
  %H2C_Parameter.i.i.i = alloca [6 x i8], align 1
  %bRejectRxAgg.i = alloca i8, align 1
  %bBtCtrlRxAggSize.i = alloca i8, align 1
  %rxAggSize.i = alloca i8, align 1
  %bWifiConnected = alloca i8, align 1
  %bBtHsOn = alloca i8, align 1
  %bIncreaseScanDevNum = alloca i8, align 1
  %wifiLinkStatus = alloca i32, align 4
  %bScan = alloca i8, align 1
  %bLink = alloca i8, align 1
  %bRoam = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %btLinkInfo = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bWifiConnected) #4
  %0 = ptrtoint ptr %bWifiConnected to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %bWifiConnected, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bBtHsOn) #4
  %1 = ptrtoint ptr %bBtHsOn to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %bBtHsOn, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bIncreaseScanDevNum) #4
  %2 = ptrtoint ptr %bIncreaseScanDevNum to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %bIncreaseScanDevNum, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifiLinkStatus) #4
  %3 = ptrtoint ptr %wifiLinkStatus to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %wifiLinkStatus, align 4
  %bManualControl = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 9
  %4 = ptrtoint ptr %bManualControl to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bManualControl, align 2, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %bStopCoexDm = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 8
  %6 = ptrtoint ptr %bStopCoexDm to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bStopCoexDm, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %8 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 6), align 2, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %9 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 32), align 1
  %.off = add i8 %9, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off)
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %if.then17, label %if.end6.if.end18_crit_edge

if.end6.if.end18_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.then17:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %bIncreaseScanDevNum to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %bIncreaseScanDevNum, align 1
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end6.if.end18_crit_edge
  %fBtcSet = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 26
  %11 = ptrtoint ptr %fBtcSet to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fBtcSet, align 4
  %call = call zeroext i8 %12(ptr noundef %pBtCoexist, i8 noundef zeroext 6, ptr noundef nonnull %bIncreaseScanDevNum) #4
  %fBtcGet = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 25
  %13 = ptrtoint ptr %fBtcGet to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fBtcGet, align 4
  %call19 = call zeroext i8 %14(ptr noundef %pBtCoexist, i8 noundef zeroext 2, ptr noundef nonnull %bWifiConnected) #4
  %15 = ptrtoint ptr %fBtcGet to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fBtcGet, align 4
  %call21 = call zeroext i8 %16(ptr noundef %pBtCoexist, i8 noundef zeroext 18, ptr noundef nonnull %wifiLinkStatus) #4
  %17 = ptrtoint ptr %wifiLinkStatus to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wifiLinkStatus, align 4
  %19 = and i32 %18, -131064
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %if.end34, label %if.then26

if.then26:                                        ; preds = %if.end18
  call fastcc void @halbtc8723b1ant_LimitedTx(ptr noundef %pBtCoexist, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bRejectRxAgg.i) #4
  %21 = ptrtoint ptr %bRejectRxAgg.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %bRejectRxAgg.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bBtCtrlRxAggSize.i) #4
  %22 = ptrtoint ptr %bBtCtrlRxAggSize.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %bBtCtrlRxAggSize.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rxAggSize.i) #4
  %23 = ptrtoint ptr %rxAggSize.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 5, ptr %rxAggSize.i, align 1
  %24 = ptrtoint ptr %fBtcSet to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fBtcSet, align 4
  %call.i = call zeroext i8 %25(ptr noundef %pBtCoexist, i8 noundef zeroext 4, ptr noundef nonnull %bRejectRxAgg.i) #4
  %26 = ptrtoint ptr %fBtcSet to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fBtcSet, align 4
  %call7.i = call zeroext i8 %27(ptr noundef %pBtCoexist, i8 noundef zeroext 5, ptr noundef nonnull %bBtCtrlRxAggSize.i) #4
  %28 = ptrtoint ptr %fBtcSet to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fBtcSet, align 4
  %call9.i = call zeroext i8 %29(ptr noundef %pBtCoexist, i8 noundef zeroext 9, ptr noundef nonnull %rxAggSize.i) #4
  %30 = ptrtoint ptr %fBtcSet to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fBtcSet, align 4
  %call11.i = call zeroext i8 %31(ptr noundef %pBtCoexist, i8 noundef zeroext 11, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rxAggSize.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bBtCtrlRxAggSize.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bRejectRxAgg.i) #4
  %bA2dpExist = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 5, i32 3
  %32 = ptrtoint ptr %bA2dpExist to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %bA2dpExist, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool28.not = icmp eq i8 %33, 0
  br i1 %tobool28.not, label %if.then26.if.else_crit_edge, label %land.lhs.true

if.then26.if.else_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true:                                    ; preds = %if.then26
  %34 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 19), align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool30.not = icmp eq i8 %34, 0
  br i1 %tobool30.not, label %land.lhs.true.if.else_crit_edge, label %if.then32

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.then32:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_ActionBtInquiry(ptr noundef %pBtCoexist)
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then26.if.else_crit_edge
  call fastcc void @halbtc8723b1ant_ActionWifiMultiPort(ptr noundef %pBtCoexist)
  br label %cleanup

if.end34:                                         ; preds = %if.end18
  %35 = ptrtoint ptr %btLinkInfo to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %btLinkInfo, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool35.not = icmp eq i8 %36, 0
  br i1 %tobool35.not, label %if.end34.if.else45_crit_edge, label %land.lhs.true37

if.end34.if.else45_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else45

land.lhs.true37:                                  ; preds = %if.end34
  %37 = ptrtoint ptr %bWifiConnected to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %bWifiConnected, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool38.not = icmp eq i8 %38, 0
  br i1 %tobool38.not, label %land.lhs.true37.if.else45_crit_edge, label %if.then40

land.lhs.true37.if.else45_crit_edge:              ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else45

if.then40:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_LimitedTx(ptr noundef %pBtCoexist, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1)
  %bScoExist = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 5, i32 1
  %39 = ptrtoint ptr %bScoExist to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %bScoExist, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool41.not = icmp eq i8 %40, 0
  %. = select i1 %tobool41.not, i8 8, i8 5
  call fastcc void @halbtc8723b1ant_LimitedRx(ptr noundef %pBtCoexist, i1 noundef zeroext true, i8 noundef zeroext %.)
  call fastcc void @halbtc8723b1ant_SwMechanism(ptr noundef %pBtCoexist, i1 noundef zeroext true)
  br label %if.end46

if.else45:                                        ; preds = %land.lhs.true37.if.else45_crit_edge, %if.end34.if.else45_crit_edge
  call fastcc void @halbtc8723b1ant_LimitedTx(ptr noundef %pBtCoexist, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0)
  call fastcc void @halbtc8723b1ant_LimitedRx(ptr noundef %pBtCoexist, i1 noundef zeroext false, i8 noundef zeroext 5)
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 16), align 4
  %41 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 15), align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp.i.i = icmp eq i8 %41, 0
  br i1 %cmp.i.i, label %if.else45.if.end46_crit_edge, label %if.end10.i.i

if.else45.if.end46_crit_edge:                     ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end46

if.end10.i.i:                                     ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %H2C_Parameter.i.i.i) #4
  %42 = getelementptr inbounds i8, ptr %H2C_Parameter.i.i.i, i32 1
  %43 = call ptr @memset(ptr %42, i32 0, i32 5)
  %44 = ptrtoint ptr %H2C_Parameter.i.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 6, ptr %H2C_Parameter.i.i.i, align 1
  %fBtcFillH2c.i.i.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 24
  %45 = ptrtoint ptr %fBtcFillH2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fBtcFillH2c.i.i.i, align 4
  call void %46(ptr noundef %pBtCoexist, i8 noundef zeroext 105, i32 noundef 6, ptr noundef nonnull %H2C_Parameter.i.i.i) #4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %H2C_Parameter.i.i.i) #4
  %47 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 16), align 4, !range !39
  store i8 %47, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 15), align 1
  br label %if.end46

if.end46:                                         ; preds = %if.end10.i.i, %if.else45.if.end46_crit_edge, %if.then40
  call fastcc void @halbtc8723b1ant_RunSwCoexistMechanism(ptr noundef %pBtCoexist)
  %48 = ptrtoint ptr %fBtcGet to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fBtcGet, align 4
  %call48 = call zeroext i8 %49(ptr noundef %pBtCoexist, i8 noundef zeroext 0, ptr noundef nonnull %bBtHsOn) #4
  %50 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 19), align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool50.not = icmp eq i8 %50, 0
  br i1 %tobool50.not, label %if.else52, label %if.then51

if.then51:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_ActionBtInquiry(ptr noundef %pBtCoexist)
  br label %cleanup

if.else52:                                        ; preds = %if.end46
  %51 = ptrtoint ptr %bBtHsOn to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %bBtHsOn, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool53.not = icmp eq i8 %52, 0
  br i1 %tobool53.not, label %if.end56, label %if.then54

if.then54:                                        ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_ActionHs(ptr noundef %pBtCoexist)
  br label %cleanup

if.end56:                                         ; preds = %if.else52
  %53 = ptrtoint ptr %bWifiConnected to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %bWifiConnected, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool57.not = icmp eq i8 %54, 0
  br i1 %tobool57.not, label %if.then58, label %if.else80

if.then58:                                        ; preds = %if.end56
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bScan) #4
  %55 = ptrtoint ptr %bScan to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %bScan, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bLink) #4
  %56 = ptrtoint ptr %bLink to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %bLink, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bRoam) #4
  %57 = ptrtoint ptr %bRoam to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %bRoam, align 1
  %58 = ptrtoint ptr %fBtcGet to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %fBtcGet, align 4
  %call60 = call zeroext i8 %59(ptr noundef %pBtCoexist, i8 noundef zeroext 4, ptr noundef nonnull %bScan) #4
  %60 = ptrtoint ptr %fBtcGet to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %fBtcGet, align 4
  %call62 = call zeroext i8 %61(ptr noundef %pBtCoexist, i8 noundef zeroext 5, ptr noundef nonnull %bLink) #4
  %62 = ptrtoint ptr %fBtcGet to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %fBtcGet, align 4
  %call64 = call zeroext i8 %63(ptr noundef %pBtCoexist, i8 noundef zeroext 6, ptr noundef nonnull %bRoam) #4
  %64 = ptrtoint ptr %bScan to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %bScan, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool65.not = icmp eq i8 %65, 0
  br i1 %tobool65.not, label %lor.lhs.false67, label %if.then75

lor.lhs.false67:                                  ; preds = %if.then58
  %66 = ptrtoint ptr %bLink to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %bLink, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool68.not = icmp eq i8 %67, 0
  br i1 %tobool68.not, label %lor.lhs.false70, label %lor.lhs.false67.if.else76_crit_edge

lor.lhs.false67.if.else76_crit_edge:              ; preds = %lor.lhs.false67
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else76

lor.lhs.false70:                                  ; preds = %lor.lhs.false67
  %68 = ptrtoint ptr %bRoam to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %bRoam, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool71.not = icmp eq i8 %69, 0
  br i1 %tobool71.not, label %if.else78, label %lor.lhs.false70.if.else76_crit_edge

lor.lhs.false70.if.else76_crit_edge:              ; preds = %lor.lhs.false70
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else76

if.then75:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_ActionWifiNotConnectedScan(ptr noundef %pBtCoexist)
  br label %if.end79

if.else76:                                        ; preds = %lor.lhs.false70.if.else76_crit_edge, %lor.lhs.false67.if.else76_crit_edge
  call fastcc void @halbtc8723b1ant_ActionWifiNotConnectedAssoAuth(ptr noundef %pBtCoexist)
  br label %if.end79

if.else78:                                        ; preds = %lor.lhs.false70
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_ActionWifiNotConnected(ptr noundef %pBtCoexist)
  br label %if.end79

if.end79:                                         ; preds = %if.else78, %if.else76, %if.then75
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bRoam) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bLink) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bScan) #4
  br label %cleanup

if.else80:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_ActionWifiConnected(ptr noundef %pBtCoexist)
  br label %cleanup

cleanup:                                          ; preds = %if.else80, %if.end79, %if.then54, %if.then51, %if.else, %if.then32, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifiLinkStatus) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bIncreaseScanDevNum) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bBtHsOn) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bWifiConnected) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @EXhalbtc8723b1ant_HaltNotify(ptr noundef %pBtCoexist) local_unnamed_addr #0 align 64 {
entry:
  %H2C_Parameter.i = alloca [3 x i8], align 1
  %wifiCentralChnl.i = alloca i8, align 1
  %H2C_Parameter.i.i = alloca [1 x i8], align 1
  %bLowPwrDisable.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bLowPwrDisable.i) #4
  %0 = ptrtoint ptr %bLowPwrDisable.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %bLowPwrDisable.i, align 1
  %fBtcSet.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 26
  %1 = ptrtoint ptr %fBtcSet.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fBtcSet.i, align 4
  %call5.i = call zeroext i8 %2(ptr noundef %pBtCoexist, i8 noundef zeroext 18, ptr noundef nonnull %bLowPwrDisable.i) #4
  %3 = ptrtoint ptr %fBtcSet.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fBtcSet.i, align 4
  %call7.i = call zeroext i8 %4(ptr noundef %pBtCoexist, i8 noundef zeroext 17, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 37), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bLowPwrDisable.i) #4
  call fastcc void @halbtc8723b1ant_PsTdma(ptr noundef %pBtCoexist, i1 noundef zeroext true, i1 noundef zeroext false, i8 noundef zeroext 0)
  call fastcc void @halbtc8723b1ant_SetAntPath(ptr noundef %pBtCoexist, i8 noundef zeroext 1, i1 noundef zeroext false, i1 noundef zeroext true)
  store i8 1, ptr @GLCoexDm8723b1Ant, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %H2C_Parameter.i.i) #4
  %5 = ptrtoint ptr %H2C_Parameter.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %H2C_Parameter.i.i, align 1
  %fBtcFillH2c.i.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 24
  %6 = ptrtoint ptr %fBtcFillH2c.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fBtcFillH2c.i.i, align 4
  call void %7(ptr noundef %pBtCoexist, i8 noundef zeroext 99, i32 noundef 1, ptr noundef nonnull %H2C_Parameter.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %H2C_Parameter.i.i) #4
  %8 = load i8, ptr @GLCoexDm8723b1Ant, align 4, !range !39
  store i8 %8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 1), align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %H2C_Parameter.i) #4
  %9 = call ptr @memset(ptr %H2C_Parameter.i, i32 0, i32 3)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifiCentralChnl.i) #4
  %10 = ptrtoint ptr %wifiCentralChnl.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %wifiCentralChnl.i, align 1, !annotation !40
  %bManualControl.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 9
  %11 = ptrtoint ptr %bManualControl.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bManualControl.i, align 2, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.EXhalbtc8723b1ant_MediaStatusNotify.exit_crit_edge

entry.EXhalbtc8723b1ant_MediaStatusNotify.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %EXhalbtc8723b1ant_MediaStatusNotify.exit

lor.lhs.false.i:                                  ; preds = %entry
  %bStopCoexDm.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 8
  %13 = ptrtoint ptr %bStopCoexDm.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bStopCoexDm.i, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool1.not.i = icmp eq i8 %14, 0
  br i1 %tobool1.not.i, label %lor.lhs.false2.i, label %lor.lhs.false.i.EXhalbtc8723b1ant_MediaStatusNotify.exit_crit_edge

lor.lhs.false.i.EXhalbtc8723b1ant_MediaStatusNotify.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %EXhalbtc8723b1ant_MediaStatusNotify.exit

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %btInfo.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 3
  %15 = ptrtoint ptr %btInfo.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %btInfo.i, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool3.not.i = icmp eq i8 %16, 0
  br i1 %tobool3.not.i, label %if.end.i, label %lor.lhs.false2.i.EXhalbtc8723b1ant_MediaStatusNotify.exit_crit_edge

lor.lhs.false2.i.EXhalbtc8723b1ant_MediaStatusNotify.exit_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %EXhalbtc8723b1ant_MediaStatusNotify.exit

if.end.i:                                         ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #6
  store i32 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 42), align 4
  %fBtcWrite1Byte18.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 13
  %17 = ptrtoint ptr %fBtcWrite1Byte18.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fBtcWrite1Byte18.i, align 4
  call void %18(ptr noundef %pBtCoexist, i32 noundef 1741, i8 noundef zeroext 0) #4
  %19 = ptrtoint ptr %fBtcWrite1Byte18.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fBtcWrite1Byte18.i, align 4
  call void %20(ptr noundef %pBtCoexist, i32 noundef 1743, i8 noundef zeroext 0) #4
  %fBtcGet21.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 25
  %21 = ptrtoint ptr %fBtcGet21.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fBtcGet21.i, align 4
  %call22.i = call zeroext i8 %22(ptr noundef %pBtCoexist, i8 noundef zeroext 21, ptr noundef nonnull %wifiCentralChnl.i) #4
  %23 = ptrtoint ptr %H2C_Parameter.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %H2C_Parameter.i, align 1
  store i8 %24, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 33), align 2
  %arrayidx43.i = getelementptr inbounds [3 x i8], ptr %H2C_Parameter.i, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx43.i, align 1
  store i8 %26, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 33, i32 1), align 1
  %arrayidx46.i = getelementptr inbounds [3 x i8], ptr %H2C_Parameter.i, i32 0, i32 2
  %27 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx46.i, align 1
  store i8 %28, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 33, i32 2), align 4
  %29 = ptrtoint ptr %fBtcFillH2c.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fBtcFillH2c.i.i, align 4
  call void %30(ptr noundef %pBtCoexist, i8 noundef zeroext 102, i32 noundef 3, ptr noundef nonnull %H2C_Parameter.i) #4
  br label %EXhalbtc8723b1ant_MediaStatusNotify.exit

EXhalbtc8723b1ant_MediaStatusNotify.exit:         ; preds = %if.end.i, %lor.lhs.false2.i.EXhalbtc8723b1ant_MediaStatusNotify.exit_crit_edge, %lor.lhs.false.i.EXhalbtc8723b1ant_MediaStatusNotify.exit_crit_edge, %entry.EXhalbtc8723b1ant_MediaStatusNotify.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifiCentralChnl.i) #4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %H2C_Parameter.i) #4
  %bStopCoexDm = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 8
  %31 = ptrtoint ptr %bStopCoexDm to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %bStopCoexDm, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @halbtc8723b1ant_PowerSaveState(ptr noundef %pBtCoexist, i8 noundef zeroext %psType, i8 noundef zeroext %lpsVal, i8 noundef zeroext %rpwmVal) unnamed_addr #0 align 64 {
entry:
  %lps.i.i = alloca i8, align 1
  %rpwm.i.i = alloca i8, align 1
  %lpsMode.i = alloca i8, align 1
  %bLowPwrDisable = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bLowPwrDisable) #4
  %0 = ptrtoint ptr %bLowPwrDisable to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %bLowPwrDisable, align 1
  %1 = zext i8 %psType to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %psType, label %entry.sw.epilog_crit_edge [
    i8 0, label %entry.sw.epilog.sink.split_crit_edge
    i8 1, label %sw.bb3
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %lpsMode.i) #4
  %2 = ptrtoint ptr %lpsMode.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %lpsMode.i, align 1
  %fBtcGet.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 25
  %3 = ptrtoint ptr %fBtcGet.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fBtcGet.i, align 4
  %call.i = call zeroext i8 %4(ptr noundef %pBtCoexist, i8 noundef zeroext 25, ptr noundef nonnull %lpsMode.i) #4
  %5 = ptrtoint ptr %lpsMode.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %lpsMode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %if.then5.i, label %sw.bb3.halbtc8723b1ant_PsTdmaCheckForPowerSaveState.exit_crit_edge

sw.bb3.halbtc8723b1ant_PsTdmaCheckForPowerSaveState.exit_crit_edge: ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_PsTdmaCheckForPowerSaveState.exit

if.then5.i:                                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @halbtc8723b1ant_PsTdma(ptr noundef %pBtCoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 0) #4
  br label %halbtc8723b1ant_PsTdmaCheckForPowerSaveState.exit

halbtc8723b1ant_PsTdmaCheckForPowerSaveState.exit: ; preds = %if.then5.i, %sw.bb3.halbtc8723b1ant_PsTdmaCheckForPowerSaveState.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lpsMode.i) #4
  store i8 %lpsVal, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 12), align 4
  store i8 %rpwmVal, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 14), align 2
  %7 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 11), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %lpsVal)
  %cmp.i = icmp eq i8 %7, %lpsVal
  br i1 %cmp.i, label %land.lhs.true.i, label %halbtc8723b1ant_PsTdmaCheckForPowerSaveState.exit.if.end10.i_crit_edge

halbtc8723b1ant_PsTdmaCheckForPowerSaveState.exit.if.end10.i_crit_edge: ; preds = %halbtc8723b1ant_PsTdmaCheckForPowerSaveState.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.i

land.lhs.true.i:                                  ; preds = %halbtc8723b1ant_PsTdmaCheckForPowerSaveState.exit
  %8 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 13), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %rpwmVal)
  %cmp7.i = icmp eq i8 %8, %rpwmVal
  br i1 %cmp7.i, label %land.lhs.true.i.halbtc8723b1ant_LpsRpwm.exit_crit_edge, label %land.lhs.true.i.if.end10.i_crit_edge

land.lhs.true.i.if.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.i

land.lhs.true.i.halbtc8723b1ant_LpsRpwm.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_LpsRpwm.exit

if.end10.i:                                       ; preds = %land.lhs.true.i.if.end10.i_crit_edge, %halbtc8723b1ant_PsTdmaCheckForPowerSaveState.exit.if.end10.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %lps.i.i) #4
  %9 = ptrtoint ptr %lps.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %lpsVal, ptr %lps.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rpwm.i.i) #4
  %10 = ptrtoint ptr %rpwm.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %rpwmVal, ptr %rpwm.i.i, align 1
  %fBtcSet.i.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 26
  %11 = ptrtoint ptr %fBtcSet.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fBtcSet.i.i, align 4
  %call.i.i = call zeroext i8 %12(ptr noundef %pBtCoexist, i8 noundef zeroext 13, ptr noundef nonnull %lps.i.i) #4
  %13 = ptrtoint ptr %fBtcSet.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fBtcSet.i.i, align 4
  %call2.i.i = call zeroext i8 %14(ptr noundef %pBtCoexist, i8 noundef zeroext 14, ptr noundef nonnull %rpwm.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rpwm.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lps.i.i) #4
  %15 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 12), align 4
  store i8 %15, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 11), align 1
  %16 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 14), align 2
  store i8 %16, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 13), align 1
  br label %halbtc8723b1ant_LpsRpwm.exit

halbtc8723b1ant_LpsRpwm.exit:                     ; preds = %if.end10.i, %land.lhs.true.i.halbtc8723b1ant_LpsRpwm.exit_crit_edge
  %17 = ptrtoint ptr %bLowPwrDisable to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %bLowPwrDisable, align 1
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %halbtc8723b1ant_LpsRpwm.exit, %entry.sw.epilog.sink.split_crit_edge
  %.sink25 = phi i8 [ 16, %halbtc8723b1ant_LpsRpwm.exit ], [ 17, %entry.sw.epilog.sink.split_crit_edge ]
  %fBtcSet = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 26
  %18 = ptrtoint ptr %fBtcSet to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fBtcSet, align 4
  %call5 = call zeroext i8 %19(ptr noundef %pBtCoexist, i8 noundef zeroext 18, ptr noundef nonnull %bLowPwrDisable) #4
  %20 = ptrtoint ptr %fBtcSet to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fBtcSet, align 4
  %call7 = call zeroext i8 %21(ptr noundef %pBtCoexist, i8 noundef zeroext %.sink25, ptr noundef null) #4
  store i8 %psType, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 37), align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bLowPwrDisable) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @EXhalbtc8723b1ant_PnpNotify(ptr noundef %pBtCoexist, i8 noundef zeroext %pnpState) local_unnamed_addr #0 align 64 {
entry:
  %H2C_Parameter.i = alloca [1 x i8], align 1
  %H2C_Parameter.i.i.i.i = alloca [6 x i8], align 1
  %bLowPwrDisable.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %pnpState to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %pnpState, label %entry.if.end7_crit_edge [
    i8 1, label %if.then
    i8 0, label %if.then5
  ]

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bLowPwrDisable.i) #4
  %1 = ptrtoint ptr %bLowPwrDisable.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %bLowPwrDisable.i, align 1
  %fBtcSet.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 26
  %2 = ptrtoint ptr %fBtcSet.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fBtcSet.i, align 4
  %call5.i = call zeroext i8 %3(ptr noundef %pBtCoexist, i8 noundef zeroext 18, ptr noundef nonnull %bLowPwrDisable.i) #4
  %4 = ptrtoint ptr %fBtcSet.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fBtcSet.i, align 4
  %call7.i = call zeroext i8 %5(ptr noundef %pBtCoexist, i8 noundef zeroext 17, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 37), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bLowPwrDisable.i) #4
  call fastcc void @halbtc8723b1ant_PsTdma(ptr noundef %pBtCoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 0)
  store i8 2, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 36), align 2
  store i32 1515870810, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 1515870810, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 16777215, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  %6 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1515870810, i32 %6)
  %cmp.i42.i = icmp eq i32 %6, 1515870810
  br i1 %cmp.i42.i, label %land.lhs.true.i45.i, label %if.then.sw.epilog.sink.split.i_crit_edge

if.then.sw.epilog.sink.split.i_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

land.lhs.true.i45.i:                              ; preds = %if.then
  %7 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1515870810, i32 %7)
  %cmp3.i44.i = icmp eq i32 %7, 1515870810
  br i1 %cmp3.i44.i, label %land.lhs.true4.i47.i, label %land.lhs.true.i45.i.sw.epilog.sink.split.i_crit_edge

land.lhs.true.i45.i.sw.epilog.sink.split.i_crit_edge: ; preds = %land.lhs.true.i45.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

land.lhs.true4.i47.i:                             ; preds = %land.lhs.true.i45.i
  %8 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %8)
  %cmp6.i46.i = icmp eq i32 %8, 16777215
  br i1 %cmp6.i46.i, label %land.lhs.true7.i49.i, label %land.lhs.true4.i47.i.sw.epilog.sink.split.i_crit_edge

land.lhs.true4.i47.i.sw.epilog.sink.split.i_crit_edge: ; preds = %land.lhs.true4.i47.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

land.lhs.true7.i49.i:                             ; preds = %land.lhs.true4.i47.i
  %9 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp10.i48.i = icmp eq i8 %9, 3
  br i1 %cmp10.i48.i, label %land.lhs.true7.i49.i.halbtc8723b1ant_CoexTableWithType.exit_crit_edge, label %land.lhs.true7.i49.i.sw.epilog.sink.split.i_crit_edge

land.lhs.true7.i49.i.sw.epilog.sink.split.i_crit_edge: ; preds = %land.lhs.true7.i49.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

land.lhs.true7.i49.i.halbtc8723b1ant_CoexTableWithType.exit_crit_edge: ; preds = %land.lhs.true7.i49.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_CoexTableWithType.exit

sw.epilog.sink.split.i:                           ; preds = %land.lhs.true7.i49.i.sw.epilog.sink.split.i_crit_edge, %land.lhs.true4.i47.i.sw.epilog.sink.split.i_crit_edge, %land.lhs.true.i45.i.sw.epilog.sink.split.i_crit_edge, %if.then.sw.epilog.sink.split.i_crit_edge
  %fBtcWrite4Byte.i.i.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 18
  %10 = ptrtoint ptr %fBtcWrite4Byte.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fBtcWrite4Byte.i.i.i, align 4
  call void %11(ptr noundef %pBtCoexist, i32 noundef 1728, i32 noundef 1515870810) #4
  %12 = ptrtoint ptr %fBtcWrite4Byte.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fBtcWrite4Byte.i.i.i, align 4
  call void %13(ptr noundef %pBtCoexist, i32 noundef 1732, i32 noundef 1515870810) #4
  %14 = ptrtoint ptr %fBtcWrite4Byte.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fBtcWrite4Byte.i.i.i, align 4
  call void %15(ptr noundef %pBtCoexist, i32 noundef 1736, i32 noundef 16777215) #4
  %fBtcWrite1Byte.i.i111.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 13
  %16 = ptrtoint ptr %fBtcWrite1Byte.i.i111.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fBtcWrite1Byte.i.i111.i, align 4
  call void %17(ptr noundef %pBtCoexist, i32 noundef 1740, i8 noundef zeroext 3) #4
  %18 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 %18, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  %19 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 %19, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  %20 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i32 %20, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  %21 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  store i8 %21, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  br label %halbtc8723b1ant_CoexTableWithType.exit

halbtc8723b1ant_CoexTableWithType.exit:           ; preds = %sw.epilog.sink.split.i, %land.lhs.true7.i49.i.halbtc8723b1ant_CoexTableWithType.exit_crit_edge
  call fastcc void @halbtc8723b1ant_SetAntPath(ptr noundef %pBtCoexist, i8 noundef zeroext 1, i1 noundef zeroext false, i1 noundef zeroext true)
  %bStopCoexDm = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 8
  %22 = ptrtoint ptr %bStopCoexDm to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %bStopCoexDm, align 1
  br label %if.end7

if.then5:                                         ; preds = %entry
  %bStopCoexDm6 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 8
  %23 = ptrtoint ptr %bStopCoexDm6 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %bStopCoexDm6, align 1
  tail call fastcc void @halbtc8723b1ant_InitHwConfig(ptr noundef %pBtCoexist, i1 noundef zeroext false)
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 16), align 4
  %24 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 15), align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp.i.i.i = icmp eq i8 %24, 0
  br i1 %cmp.i.i.i, label %if.then5.halbtc8723b1ant_InitCoexDm.exit_crit_edge, label %if.end10.i.i.i

if.then5.halbtc8723b1ant_InitCoexDm.exit_crit_edge: ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_InitCoexDm.exit

if.end10.i.i.i:                                   ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %H2C_Parameter.i.i.i.i) #4
  %25 = getelementptr inbounds i8, ptr %H2C_Parameter.i.i.i.i, i32 1
  %26 = call ptr @memset(ptr %25, i32 0, i32 5)
  %27 = ptrtoint ptr %H2C_Parameter.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 6, ptr %H2C_Parameter.i.i.i.i, align 1
  %fBtcFillH2c.i.i.i.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 24
  %28 = ptrtoint ptr %fBtcFillH2c.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fBtcFillH2c.i.i.i.i, align 4
  call void %29(ptr noundef %pBtCoexist, i8 noundef zeroext 105, i32 noundef 6, ptr noundef nonnull %H2C_Parameter.i.i.i.i) #4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %H2C_Parameter.i.i.i.i) #4
  %30 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 16), align 4, !range !39
  store i8 %30, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 15), align 1
  br label %halbtc8723b1ant_InitCoexDm.exit

halbtc8723b1ant_InitCoexDm.exit:                  ; preds = %if.end10.i.i.i, %if.then5.halbtc8723b1ant_InitCoexDm.exit_crit_edge
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 36), align 2
  store i32 1431655765, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 1431655765, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 16777215, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  %fBtcWrite4Byte.i.i.i.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 18
  %31 = ptrtoint ptr %fBtcWrite4Byte.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fBtcWrite4Byte.i.i.i.i, align 4
  call void %32(ptr noundef %pBtCoexist, i32 noundef 1728, i32 noundef 1431655765) #4
  %33 = ptrtoint ptr %fBtcWrite4Byte.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fBtcWrite4Byte.i.i.i.i, align 4
  call void %34(ptr noundef %pBtCoexist, i32 noundef 1732, i32 noundef 1431655765) #4
  %35 = ptrtoint ptr %fBtcWrite4Byte.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fBtcWrite4Byte.i.i.i.i, align 4
  call void %36(ptr noundef %pBtCoexist, i32 noundef 1736, i32 noundef 16777215) #4
  %fBtcWrite1Byte.i.i111.i.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 13
  %37 = ptrtoint ptr %fBtcWrite1Byte.i.i111.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fBtcWrite1Byte.i.i111.i.i, align 4
  call void %38(ptr noundef %pBtCoexist, i32 noundef 1740, i8 noundef zeroext 3) #4
  %39 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 %39, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  %40 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 %40, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  %41 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i32 %41, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  %42 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  store i8 %42, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  store i32 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 24), align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %H2C_Parameter.i) #4
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 16), align 1
  %43 = ptrtoint ptr %H2C_Parameter.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %H2C_Parameter.i, align 1
  %fBtcFillH2c.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 24
  %44 = ptrtoint ptr %fBtcFillH2c.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fBtcFillH2c.i, align 4
  call void %45(ptr noundef %pBtCoexist, i8 noundef zeroext 97, i32 noundef 1, ptr noundef nonnull %H2C_Parameter.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %H2C_Parameter.i) #4
  br label %if.end7

if.end7:                                          ; preds = %halbtc8723b1ant_InitCoexDm.exit, %halbtc8723b1ant_CoexTableWithType.exit, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @EXhalbtc8723b1ant_Periodical(ptr noundef %pBtCoexist) local_unnamed_addr #0 align 64 {
entry:
  %bWifiBusy.i26 = alloca i8, align 1
  %bUnder4way.i = alloca i8, align 1
  %bBtHsOn.i = alloca i8, align 1
  %bWifiConnected.i = alloca i8, align 1
  %wifiRssi.i = alloca i32, align 4
  %bWifiBusy.i = alloca i8, align 1
  %bWifiUnderBMode.i = alloca i8, align 1
  %H2C_Parameter.i.i = alloca [1 x i8], align 1
  %fwVer = alloca i32, align 4
  %btPatchVer = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fwVer) #4
  %0 = ptrtoint ptr %fwVer to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %fwVer, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %btPatchVer) #4
  %1 = ptrtoint ptr %btPatchVer to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %btPatchVer, align 4
  %2 = load i8, ptr @EXhalbtc8723b1ant_Periodical.disVerInfoCnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %2)
  %cmp = icmp ult i8 %2, 6
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add = add nuw nsw i8 %2, 1
  store i8 %add, ptr @EXhalbtc8723b1ant_Periodical.disVerInfoCnt, align 1
  %fBtcGet = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 25
  %3 = ptrtoint ptr %fBtcGet to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fBtcGet, align 4
  %call = call zeroext i8 %4(ptr noundef %pBtCoexist, i8 noundef zeroext 19, ptr noundef nonnull %btPatchVer) #4
  %5 = ptrtoint ptr %fBtcGet to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fBtcGet, align 4
  %call5 = call zeroext i8 %6(ptr noundef %pBtCoexist, i8 noundef zeroext 17, ptr noundef nonnull %fwVer) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 6), align 2, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  store i32 65535, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 8), align 4
  store i32 65535, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 9), align 4
  store i32 65535, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 10), align 4
  store i32 65535, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 11), align 4
  br label %halbtc8723b1ant_MonitorBtCtr.exit

if.end.i:                                         ; preds = %if.end
  %fBtcRead4Byte.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 17
  %8 = ptrtoint ptr %fBtcRead4Byte.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fBtcRead4Byte.i, align 4
  %call.i = call i32 %9(ptr noundef %pBtCoexist, i32 noundef 1904) #4
  %and.i = and i32 %call.i, 65535
  %shr.i = lshr i32 %call.i, 16
  %10 = ptrtoint ptr %fBtcRead4Byte.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fBtcRead4Byte.i, align 4
  %call3.i = call i32 %11(ptr noundef %pBtCoexist, i32 noundef 1908) #4
  %and4.i = and i32 %call3.i, 65535
  %shr6.i = lshr i32 %call3.i, 16
  store i32 %and.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 8), align 4
  store i32 %shr.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 9), align 4
  store i32 %and4.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 10), align 4
  store i32 %shr6.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 11), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1049, i32 %and4.i)
  %cmp.i = icmp ugt i32 %and4.i, 1049
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i.if.end14.i_crit_edge

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %12 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 19), align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool12.not.i = icmp eq i8 %12, 0
  br i1 %tobool12.not.i, label %if.then13.i, label %land.lhs.true.i.if.end14.i_crit_edge

land.lhs.true.i.if.end14.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14.i

if.then13.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %13 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 24), align 4
  %inc.i = add i32 %13, 1
  store i32 %inc.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 24), align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then13.i, %land.lhs.true.i.if.end14.i_crit_edge, %if.end.i.if.end14.i_crit_edge
  %fBtcWrite1Byte.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 13
  %14 = ptrtoint ptr %fBtcWrite1Byte.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fBtcWrite1Byte.i, align 4
  call void %15(ptr noundef %pBtCoexist, i32 noundef 1902, i8 noundef zeroext 12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %16 = icmp eq i32 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %cmp19.i = icmp eq i32 %and4.i, 0
  %or.cond48.i = select i1 %16, i1 %cmp19.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %call3.i)
  %cmp21.i = icmp ult i32 %call3.i, 65536
  %or.cond49.i = select i1 %or.cond48.i, i1 %cmp21.i, i1 false
  br i1 %or.cond49.i, label %if.then22.i, label %if.end14.i.halbtc8723b1ant_MonitorBtCtr.exit_crit_edge

if.end14.i.halbtc8723b1ant_MonitorBtCtr.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_MonitorBtCtr.exit

if.then22.i:                                      ; preds = %if.end14.i
  %17 = load i8, ptr @halbtc8723b1ant_MonitorBtCtr.NumOfBtCounterChk, align 1
  %inc23.i = add i8 %17, 1
  store i8 %inc23.i, ptr @halbtc8723b1ant_MonitorBtCtr.NumOfBtCounterChk, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %inc23.i)
  %cmp24.i = icmp ugt i8 %inc23.i, 2
  br i1 %cmp24.i, label %if.then26.i, label %if.then22.i.halbtc8723b1ant_MonitorBtCtr.exit_crit_edge

if.then22.i.halbtc8723b1ant_MonitorBtCtr.exit_crit_edge: ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_MonitorBtCtr.exit

if.then26.i:                                      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %H2C_Parameter.i.i) #4
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 16), align 1
  %18 = ptrtoint ptr %H2C_Parameter.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %H2C_Parameter.i.i, align 1
  %fBtcFillH2c.i.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 24
  %19 = ptrtoint ptr %fBtcFillH2c.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fBtcFillH2c.i.i, align 4
  call void %20(ptr noundef %pBtCoexist, i8 noundef zeroext 97, i32 noundef 1, ptr noundef nonnull %H2C_Parameter.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %H2C_Parameter.i.i) #4
  store i8 0, ptr @halbtc8723b1ant_MonitorBtCtr.NumOfBtCounterChk, align 1
  br label %halbtc8723b1ant_MonitorBtCtr.exit

halbtc8723b1ant_MonitorBtCtr.exit:                ; preds = %if.then26.i, %if.then22.i.halbtc8723b1ant_MonitorBtCtr.exit_crit_edge, %if.end14.i.halbtc8723b1ant_MonitorBtCtr.exit_crit_edge, %if.then.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifiRssi.i) #4
  %21 = ptrtoint ptr %wifiRssi.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %wifiRssi.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bWifiBusy.i) #4
  %22 = ptrtoint ptr %bWifiBusy.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %bWifiBusy.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bWifiUnderBMode.i) #4
  %23 = ptrtoint ptr %bWifiUnderBMode.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %bWifiUnderBMode.i, align 1
  %fBtcGet.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 25
  %24 = ptrtoint ptr %fBtcGet.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fBtcGet.i, align 4
  %call.i18 = call zeroext i8 %25(ptr noundef %pBtCoexist, i8 noundef zeroext 3, ptr noundef nonnull %bWifiBusy.i) #4
  %26 = ptrtoint ptr %fBtcGet.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fBtcGet.i, align 4
  %call2.i = call zeroext i8 %27(ptr noundef %pBtCoexist, i8 noundef zeroext 13, ptr noundef nonnull %wifiRssi.i) #4
  %28 = ptrtoint ptr %fBtcGet.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fBtcGet.i, align 4
  %call4.i = call zeroext i8 %29(ptr noundef %pBtCoexist, i8 noundef zeroext 10, ptr noundef nonnull %bWifiUnderBMode.i) #4
  %30 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 6), align 2, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i19 = icmp eq i8 %30, 0
  br i1 %tobool.not.i19, label %if.else.i, label %if.then.i20

if.then.i20:                                      ; preds = %halbtc8723b1ant_MonitorBtCtr.exit
  call void @__sanitizer_cov_trace_pc() #6
  %31 = call ptr @memset(ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 26), i32 0, i32 28)
  br label %if.end.i22

if.else.i:                                        ; preds = %halbtc8723b1ant_MonitorBtCtr.exit
  call void @__sanitizer_cov_trace_pc() #6
  %fBtcRead4Byte.i21 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 17
  %32 = ptrtoint ptr %fBtcRead4Byte.i21 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fBtcRead4Byte.i21, align 4
  %call5.i = call i32 %33(ptr noundef %pBtCoexist, i32 noundef 3976) #4
  store i32 %call5.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 26), align 4
  %fBtcRead2Byte.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 15
  %34 = ptrtoint ptr %fBtcRead2Byte.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fBtcRead2Byte.i, align 4
  %call7.i = call zeroext i16 %35(ptr noundef %pBtCoexist, i32 noundef 3988) #4
  %conv.i = zext i16 %call7.i to i32
  store i32 %conv.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 27), align 4
  %36 = ptrtoint ptr %fBtcRead2Byte.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fBtcRead2Byte.i, align 4
  %call10.i = call zeroext i16 %37(ptr noundef %pBtCoexist, i32 noundef 3984) #4
  %conv11.i = zext i16 %call10.i to i32
  store i32 %conv11.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 28), align 4
  %38 = ptrtoint ptr %fBtcRead2Byte.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fBtcRead2Byte.i, align 4
  %call14.i = call zeroext i16 %39(ptr noundef %pBtCoexist, i32 noundef 4024) #4
  %conv15.i = zext i16 %call14.i to i32
  store i32 %conv15.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 29), align 4
  %40 = ptrtoint ptr %fBtcRead4Byte.i21 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fBtcRead4Byte.i21, align 4
  %call18.i = call i32 %41(ptr noundef %pBtCoexist, i32 noundef 3972) #4
  store i32 %call18.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 30), align 4
  %42 = ptrtoint ptr %fBtcRead2Byte.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fBtcRead2Byte.i, align 4
  %call21.i = call zeroext i16 %43(ptr noundef %pBtCoexist, i32 noundef 3990) #4
  %conv22.i = zext i16 %call21.i to i32
  store i32 %conv22.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 31), align 4
  %44 = ptrtoint ptr %fBtcRead2Byte.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fBtcRead2Byte.i, align 4
  %call25.i = call zeroext i16 %45(ptr noundef %pBtCoexist, i32 noundef 3986) #4
  %conv26.i = zext i16 %call25.i to i32
  store i32 %conv26.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 32), align 4
  %46 = ptrtoint ptr %fBtcRead2Byte.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fBtcRead2Byte.i, align 4
  %call29.i = call zeroext i16 %47(ptr noundef %pBtCoexist, i32 noundef 4026) #4
  %conv30.i = zext i16 %call29.i to i32
  br label %if.end.i22

if.end.i22:                                       ; preds = %if.else.i, %if.then.i20
  %storemerge.i = phi i32 [ %conv30.i, %if.else.i ], [ 0, %if.then.i20 ]
  store i32 %storemerge.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 33), align 4
  %fBtcWrite1ByteBitMask.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 14
  %48 = ptrtoint ptr %fBtcWrite1ByteBitMask.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fBtcWrite1ByteBitMask.i, align 4
  call void %49(ptr noundef %pBtCoexist, i32 noundef 3862, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %50 = ptrtoint ptr %fBtcWrite1ByteBitMask.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fBtcWrite1ByteBitMask.i, align 4
  call void %51(ptr noundef %pBtCoexist, i32 noundef 3862, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  %52 = ptrtoint ptr %bWifiBusy.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %bWifiBusy.i, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool33.not.i = icmp eq i8 %53, 0
  br i1 %tobool33.not.i, label %if.end.i22.if.else80.i_crit_edge, label %land.lhs.true.i24

if.end.i22.if.else80.i_crit_edge:                 ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else80.i

land.lhs.true.i24:                                ; preds = %if.end.i22
  %54 = ptrtoint ptr %wifiRssi.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %wifiRssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %55)
  %cmp.i23 = icmp sgt i32 %55, 29
  br i1 %cmp.i23, label %land.lhs.true36.i, label %land.lhs.true.i24.if.else80.i_crit_edge

land.lhs.true.i24.if.else80.i_crit_edge:          ; preds = %land.lhs.true.i24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else80.i

land.lhs.true36.i:                                ; preds = %land.lhs.true.i24
  %56 = ptrtoint ptr %bWifiUnderBMode.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %bWifiUnderBMode.i, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool37.not.i = icmp eq i8 %57, 0
  br i1 %tobool37.not.i, label %if.then38.i, label %land.lhs.true36.i.if.else80.i_crit_edge

land.lhs.true36.i.if.else80.i_crit_edge:          ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else80.i

if.then38.i:                                      ; preds = %land.lhs.true36.i
  %58 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 32), align 1
  %.off.i = add i8 %58, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 3
  br i1 %switch.i, label %if.then51.i, label %if.else72.i

if.then51.i:                                      ; preds = %if.then38.i
  %59 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 26), align 4
  %60 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 27), align 4
  %61 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 28), align 4
  %add.i = add i32 %61, %60
  %62 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 29), align 4
  %add56.i = add i32 %add.i, %62
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %add56.i)
  %cmp57.i = icmp ugt i32 %59, %add56.i
  %63 = load i8, ptr @halbtc8723b1ant_MonitorWiFiCtr.nCCKLockCounter, align 1
  br i1 %cmp57.i, label %if.then59.i, label %if.else65.i

if.then59.i:                                      ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %63)
  %cmp61.i = icmp ult i8 %63, 5
  br i1 %cmp61.i, label %if.then63.i, label %if.then59.i.halbtc8723b1ant_MonitorWiFiCtr.exit_crit_edge

if.then59.i.halbtc8723b1ant_MonitorWiFiCtr.exit_crit_edge: ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_MonitorWiFiCtr.exit

if.then63.i:                                      ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #6
  %inc.i25 = add nuw nsw i8 %63, 1
  br label %if.end87.sink.split.i

if.else65.i:                                      ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %cmp67.not.i = icmp eq i8 %63, 0
  br i1 %cmp67.not.i, label %if.else65.i.halbtc8723b1ant_MonitorWiFiCtr.exit_crit_edge, label %if.then69.i

if.else65.i.halbtc8723b1ant_MonitorWiFiCtr.exit_crit_edge: ; preds = %if.else65.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_MonitorWiFiCtr.exit

if.then69.i:                                      ; preds = %if.else65.i
  call void @__sanitizer_cov_trace_pc() #6
  %dec.i = add i8 %63, -1
  br label %if.end87.sink.split.i

if.else72.i:                                      ; preds = %if.then38.i
  %64 = load i8, ptr @halbtc8723b1ant_MonitorWiFiCtr.nCCKLockCounter, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %cmp74.not.i = icmp eq i8 %64, 0
  br i1 %cmp74.not.i, label %if.else72.i.halbtc8723b1ant_MonitorWiFiCtr.exit_crit_edge, label %if.then76.i

if.else72.i.halbtc8723b1ant_MonitorWiFiCtr.exit_crit_edge: ; preds = %if.else72.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_MonitorWiFiCtr.exit

if.then76.i:                                      ; preds = %if.else72.i
  call void @__sanitizer_cov_trace_pc() #6
  %dec77.i = add i8 %64, -1
  br label %if.end87.sink.split.i

if.else80.i:                                      ; preds = %land.lhs.true36.i.if.else80.i_crit_edge, %land.lhs.true.i24.if.else80.i_crit_edge, %if.end.i22.if.else80.i_crit_edge
  %65 = load i8, ptr @halbtc8723b1ant_MonitorWiFiCtr.nCCKLockCounter, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %cmp82.not.i = icmp eq i8 %65, 0
  br i1 %cmp82.not.i, label %if.else80.i.halbtc8723b1ant_MonitorWiFiCtr.exit_crit_edge, label %if.then84.i

if.else80.i.halbtc8723b1ant_MonitorWiFiCtr.exit_crit_edge: ; preds = %if.else80.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_MonitorWiFiCtr.exit

if.then84.i:                                      ; preds = %if.else80.i
  call void @__sanitizer_cov_trace_pc() #6
  %dec85.i = add i8 %65, -1
  br label %if.end87.sink.split.i

if.end87.sink.split.i:                            ; preds = %if.then84.i, %if.then76.i, %if.then69.i, %if.then63.i
  %dec85.sink.i = phi i8 [ %dec85.i, %if.then84.i ], [ %dec.i, %if.then69.i ], [ %inc.i25, %if.then63.i ], [ %dec77.i, %if.then76.i ]
  store i8 %dec85.sink.i, ptr @halbtc8723b1ant_MonitorWiFiCtr.nCCKLockCounter, align 1
  br label %halbtc8723b1ant_MonitorWiFiCtr.exit

halbtc8723b1ant_MonitorWiFiCtr.exit:              ; preds = %if.end87.sink.split.i, %if.else80.i.halbtc8723b1ant_MonitorWiFiCtr.exit_crit_edge, %if.else72.i.halbtc8723b1ant_MonitorWiFiCtr.exit_crit_edge, %if.else65.i.halbtc8723b1ant_MonitorWiFiCtr.exit_crit_edge, %if.then59.i.halbtc8723b1ant_MonitorWiFiCtr.exit_crit_edge
  %66 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 35), align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool88.not.i = icmp eq i8 %66, 0
  %67 = load i8, ptr @halbtc8723b1ant_MonitorWiFiCtr.nCCKLockCounter, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %67)
  %cmp91.i = icmp ugt i8 %67, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %cmp99.i = icmp ne i8 %67, 0
  %.sink.v.i = select i1 %tobool88.not.i, i1 %cmp91.i, i1 %cmp99.i
  %.sink.i = zext i1 %.sink.v.i to i8
  store i8 %.sink.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 34), align 4
  store i8 %.sink.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 35), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bWifiUnderBMode.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bWifiBusy.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifiRssi.i) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bWifiBusy.i26) #4
  %68 = ptrtoint ptr %bWifiBusy.i26 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %bWifiBusy.i26, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bUnder4way.i) #4
  %69 = ptrtoint ptr %bUnder4way.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %bUnder4way.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bBtHsOn.i) #4
  %70 = ptrtoint ptr %bBtHsOn.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %bBtHsOn.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bWifiConnected.i) #4
  %71 = ptrtoint ptr %bWifiConnected.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %bWifiConnected.i, align 1
  %72 = ptrtoint ptr %fBtcGet.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %fBtcGet.i, align 4
  %call.i28 = call zeroext i8 %73(ptr noundef %pBtCoexist, i8 noundef zeroext 2, ptr noundef nonnull %bWifiConnected.i) #4
  %74 = ptrtoint ptr %fBtcGet.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %fBtcGet.i, align 4
  %call2.i29 = call zeroext i8 %75(ptr noundef %pBtCoexist, i8 noundef zeroext 3, ptr noundef nonnull %bWifiBusy.i26) #4
  %76 = ptrtoint ptr %fBtcGet.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %fBtcGet.i, align 4
  %call4.i30 = call zeroext i8 %77(ptr noundef %pBtCoexist, i8 noundef zeroext 0, ptr noundef nonnull %bBtHsOn.i) #4
  %78 = ptrtoint ptr %fBtcGet.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %fBtcGet.i, align 4
  %call6.i = call zeroext i8 %79(ptr noundef %pBtCoexist, i8 noundef zeroext 7, ptr noundef nonnull %bUnder4way.i) #4
  %80 = ptrtoint ptr %bWifiConnected.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %bWifiConnected.i, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool.not.i31 = icmp eq i8 %81, 0
  br i1 %tobool.not.i31, label %halbtc8723b1ant_MonitorWiFiCtr.exit.lor.lhs.false_crit_edge, label %if.then.i32

halbtc8723b1ant_MonitorWiFiCtr.exit.lor.lhs.false_crit_edge: ; preds = %halbtc8723b1ant_MonitorWiFiCtr.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false

if.then.i32:                                      ; preds = %halbtc8723b1ant_MonitorWiFiCtr.exit
  %82 = ptrtoint ptr %bWifiBusy.i26 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %bWifiBusy.i26, align 1, !range !39
  %84 = load i8, ptr @halbtc8723b1ant_IsWifiStatusChanged.bPreWifiBusy, align 1, !range !39
  call void @__sanitizer_cov_trace_cmp1(i8 %83, i8 %84)
  %cmp.not.i = icmp eq i8 %83, %84
  br i1 %cmp.not.i, label %if.end.i33, label %if.then11.i

if.then11.i:                                      ; preds = %if.then.i32
  call void @__sanitizer_cov_trace_pc() #6
  store i8 %83, ptr @halbtc8723b1ant_IsWifiStatusChanged.bPreWifiBusy, align 1
  br label %halbtc8723b1ant_IsWifiStatusChanged.exit.thread

if.end.i33:                                       ; preds = %if.then.i32
  %85 = ptrtoint ptr %bUnder4way.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %bUnder4way.i, align 1, !range !39
  %87 = load i8, ptr @halbtc8723b1ant_IsWifiStatusChanged.bPreUnder4way, align 1, !range !39
  call void @__sanitizer_cov_trace_cmp1(i8 %86, i8 %87)
  %cmp17.not.i = icmp eq i8 %86, %87
  br i1 %cmp17.not.i, label %if.end22.i, label %if.then19.i

if.then19.i:                                      ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #6
  store i8 %86, ptr @halbtc8723b1ant_IsWifiStatusChanged.bPreUnder4way, align 1
  br label %halbtc8723b1ant_IsWifiStatusChanged.exit.thread

if.end22.i:                                       ; preds = %if.end.i33
  %88 = ptrtoint ptr %bBtHsOn.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %bBtHsOn.i, align 1, !range !39
  %90 = load i8, ptr @halbtc8723b1ant_IsWifiStatusChanged.bPreBtHsOn, align 1, !range !39
  call void @__sanitizer_cov_trace_cmp1(i8 %89, i8 %90)
  %cmp27.not.i = icmp eq i8 %89, %90
  br i1 %cmp27.not.i, label %if.end22.i.lor.lhs.false_crit_edge, label %if.then29.i

if.end22.i.lor.lhs.false_crit_edge:               ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false

if.then29.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #6
  store i8 %89, ptr @halbtc8723b1ant_IsWifiStatusChanged.bPreBtHsOn, align 1
  br label %halbtc8723b1ant_IsWifiStatusChanged.exit.thread

halbtc8723b1ant_IsWifiStatusChanged.exit.thread:  ; preds = %if.then29.i, %if.then19.i, %if.then11.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bWifiConnected.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bBtHsOn.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bUnder4way.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bWifiBusy.i26) #4
  br label %if.then9

lor.lhs.false:                                    ; preds = %if.end22.i.lor.lhs.false_crit_edge, %halbtc8723b1ant_MonitorWiFiCtr.exit.lor.lhs.false_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bWifiConnected.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bBtHsOn.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bUnder4way.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bWifiBusy.i26) #4
  %91 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 6), align 2, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool.not = icmp eq i8 %91, 0
  br i1 %tobool.not, label %lor.lhs.false.if.end10_crit_edge, label %lor.lhs.false.if.then9_crit_edge

lor.lhs.false.if.then9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then9

lor.lhs.false.if.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then9:                                         ; preds = %lor.lhs.false.if.then9_crit_edge, %halbtc8723b1ant_IsWifiStatusChanged.exit.thread
  call fastcc void @halbtc8723b1ant_RunCoexistMechanism(ptr noundef %pBtCoexist)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %lor.lhs.false.if.end10_crit_edge
  %92 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 7), align 4
  %inc = add i32 %92, 1
  store i32 %inc, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 7), align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %btPatchVer) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fwVer) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @halbtc8723b1ant_SwMechanism(ptr noundef %pBtCoexist, i1 noundef zeroext %bLowPenaltyRA) unnamed_addr #0 align 64 {
entry:
  %H2C_Parameter.i.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool1.i = zext i1 %bLowPenaltyRA to i8
  store i8 %frombool1.i, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 16), align 4
  %0 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 15), align 1, !range !39
  call void @__sanitizer_cov_trace_cmp1(i8 %0, i8 %frombool1.i)
  %cmp.i = icmp eq i8 %0, %frombool1.i
  br i1 %cmp.i, label %entry.halbtc8723b1ant_LowPenaltyRa.exit_crit_edge, label %if.end10.i

entry.halbtc8723b1ant_LowPenaltyRa.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_LowPenaltyRa.exit

if.end10.i:                                       ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %H2C_Parameter.i.i) #4
  %1 = getelementptr inbounds i8, ptr %H2C_Parameter.i.i, i32 1
  %2 = call ptr @memset(ptr %1, i32 0, i32 5)
  %3 = ptrtoint ptr %H2C_Parameter.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 6, ptr %H2C_Parameter.i.i, align 1
  br i1 %bLowPenaltyRA, label %if.then.i.i, label %if.end10.i.halbtc8723b1ant_SetSwPenaltyTxRateAdaptive.exit.i_crit_edge

if.end10.i.halbtc8723b1ant_SetSwPenaltyTxRateAdaptive.exit.i_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_SetSwPenaltyTxRateAdaptive.exit.i

if.then.i.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 1
  %6 = or i8 %5, 1
  store i8 %6, ptr %1, align 1
  %arrayidx4.i.i = getelementptr inbounds [6 x i8], ptr %H2C_Parameter.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -9, ptr %arrayidx4.i.i, align 1
  %arrayidx5.i.i = getelementptr inbounds [6 x i8], ptr %H2C_Parameter.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -8, ptr %arrayidx5.i.i, align 1
  %arrayidx6.i.i = getelementptr inbounds [6 x i8], ptr %H2C_Parameter.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -7, ptr %arrayidx6.i.i, align 1
  br label %halbtc8723b1ant_SetSwPenaltyTxRateAdaptive.exit.i

halbtc8723b1ant_SetSwPenaltyTxRateAdaptive.exit.i: ; preds = %if.then.i.i, %if.end10.i.halbtc8723b1ant_SetSwPenaltyTxRateAdaptive.exit.i_crit_edge
  %fBtcFillH2c.i.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 24
  %10 = ptrtoint ptr %fBtcFillH2c.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fBtcFillH2c.i.i, align 4
  call void %11(ptr noundef %pBtCoexist, i8 noundef zeroext 105, i32 noundef 6, ptr noundef nonnull %H2C_Parameter.i.i) #4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %H2C_Parameter.i.i) #4
  %12 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 16), align 4, !range !39
  store i8 %12, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 15), align 1
  br label %halbtc8723b1ant_LowPenaltyRa.exit

halbtc8723b1ant_LowPenaltyRa.exit:                ; preds = %halbtc8723b1ant_SetSwPenaltyTxRateAdaptive.exit.i, %entry.halbtc8723b1ant_LowPenaltyRa.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @halbtc8723b1ant_SetFwPstdma(ptr noundef %pBtCoexist, i8 noundef zeroext %byte1, i8 noundef zeroext %byte2, i8 noundef zeroext %byte3, i8 noundef zeroext %byte4, i8 noundef zeroext %byte5) unnamed_addr #0 align 64 {
entry:
  %H2C_Parameter = alloca [5 x i8], align 1
  %bApEnable = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %H2C_Parameter) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bApEnable) #4
  %0 = ptrtoint ptr %bApEnable to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %bApEnable, align 1
  %fBtcGet = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 25
  %1 = ptrtoint ptr %fBtcGet to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fBtcGet, align 4
  %call = call zeroext i8 %2(ptr noundef %pBtCoexist, i8 noundef zeroext 8, ptr noundef nonnull %bApEnable) #4
  %3 = ptrtoint ptr %bApEnable to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bApEnable, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp ne i8 %4, 0
  %5 = and i8 %byte1, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %5)
  %6 = icmp eq i8 %5, 16
  %or.cond = and i1 %6, %tobool.not
  %and7 = and i8 %byte1, -49
  %7 = or i8 %and7, 32
  %8 = and i8 %byte5, -97
  %9 = or i8 %8, 32
  %realByte1.0 = select i1 %or.cond, i8 %7, i8 %byte1
  %realByte5.0 = select i1 %or.cond, i8 %9, i8 %byte5
  %10 = ptrtoint ptr %H2C_Parameter to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %realByte1.0, ptr %H2C_Parameter, align 1
  %arrayidx18 = getelementptr inbounds [5 x i8], ptr %H2C_Parameter, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %byte2, ptr %arrayidx18, align 1
  %arrayidx19 = getelementptr inbounds [5 x i8], ptr %H2C_Parameter, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %byte3, ptr %arrayidx19, align 1
  %arrayidx20 = getelementptr inbounds [5 x i8], ptr %H2C_Parameter, i32 0, i32 3
  %13 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %byte4, ptr %arrayidx20, align 1
  %arrayidx21 = getelementptr inbounds [5 x i8], ptr %H2C_Parameter, i32 0, i32 4
  %14 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %realByte5.0, ptr %arrayidx21, align 1
  store i8 %realByte1.0, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 4), align 4
  store i8 %byte2, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 4, i32 1), align 1
  store i8 %byte3, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 4, i32 2), align 2
  store i8 %byte4, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 4, i32 3), align 1
  store i8 %realByte5.0, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 4, i32 4), align 4
  %fBtcFillH2c = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 24
  %15 = ptrtoint ptr %fBtcFillH2c to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fBtcFillH2c, align 4
  call void %16(ptr noundef %pBtCoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %H2C_Parameter) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bApEnable) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %H2C_Parameter) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @halbtc8723b1ant_ActionBtScoHidOnlyBusy(ptr noundef %pBtCoexist) unnamed_addr #0 align 64 {
entry:
  %bWifiConnected = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bWifiConnected) #4
  %0 = ptrtoint ptr %bWifiConnected to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %bWifiConnected, align 1
  %fBtcGet = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 25
  %1 = ptrtoint ptr %fBtcGet to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fBtcGet, align 4
  %call = call zeroext i8 %2(ptr noundef %pBtCoexist, i8 noundef zeroext 2, ptr noundef nonnull %bWifiConnected) #4
  %bScoExist = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 5, i32 1
  %3 = ptrtoint ptr %bScoExist to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bScoExist, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @halbtc8723b1ant_PsTdma(ptr noundef %pBtCoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 5)
  store i8 5, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 36), align 2
  store i32 1515870810, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 -1431676326, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 16777215, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  %5 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1515870810, i32 %5)
  %cmp.i78.i = icmp eq i32 %5, 1515870810
  br i1 %cmp.i78.i, label %land.lhs.true.i81.i, label %if.then.if.end.sink.split_crit_edge

if.then.if.end.sink.split_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.sink.split

land.lhs.true.i81.i:                              ; preds = %if.then
  %6 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1431676326, i32 %6)
  %cmp3.i80.i = icmp eq i32 %6, -1431676326
  br i1 %cmp3.i80.i, label %land.lhs.true4.i83.i, label %land.lhs.true.i81.i.if.end.sink.split_crit_edge

land.lhs.true.i81.i.if.end.sink.split_crit_edge:  ; preds = %land.lhs.true.i81.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.sink.split

land.lhs.true4.i83.i:                             ; preds = %land.lhs.true.i81.i
  %7 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %7)
  %cmp6.i82.i = icmp eq i32 %7, 16777215
  br i1 %cmp6.i82.i, label %land.lhs.true7.i85.i, label %land.lhs.true4.i83.i.if.end.sink.split_crit_edge

land.lhs.true4.i83.i.if.end.sink.split_crit_edge: ; preds = %land.lhs.true4.i83.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.sink.split

land.lhs.true7.i85.i:                             ; preds = %land.lhs.true4.i83.i
  %8 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %8)
  %cmp10.i84.i = icmp eq i8 %8, 3
  br i1 %cmp10.i84.i, label %land.lhs.true7.i85.i.if.end_crit_edge, label %land.lhs.true7.i85.i.if.end.sink.split_crit_edge

land.lhs.true7.i85.i.if.end.sink.split_crit_edge: ; preds = %land.lhs.true7.i85.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.sink.split

land.lhs.true7.i85.i.if.end_crit_edge:            ; preds = %land.lhs.true7.i85.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.else:                                          ; preds = %entry
  call fastcc void @halbtc8723b1ant_PsTdma(ptr noundef %pBtCoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 6)
  store i8 5, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 36), align 2
  store i32 1515870810, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 -1431676326, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 16777215, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  %9 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1515870810, i32 %9)
  %cmp.i78.i1 = icmp eq i32 %9, 1515870810
  br i1 %cmp.i78.i1, label %land.lhs.true.i81.i3, label %if.else.if.end.sink.split_crit_edge

if.else.if.end.sink.split_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.sink.split

land.lhs.true.i81.i3:                             ; preds = %if.else
  %10 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1431676326, i32 %10)
  %cmp3.i80.i2 = icmp eq i32 %10, -1431676326
  br i1 %cmp3.i80.i2, label %land.lhs.true4.i83.i5, label %land.lhs.true.i81.i3.if.end.sink.split_crit_edge

land.lhs.true.i81.i3.if.end.sink.split_crit_edge: ; preds = %land.lhs.true.i81.i3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.sink.split

land.lhs.true4.i83.i5:                            ; preds = %land.lhs.true.i81.i3
  %11 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %11)
  %cmp6.i82.i4 = icmp eq i32 %11, 16777215
  br i1 %cmp6.i82.i4, label %land.lhs.true7.i85.i7, label %land.lhs.true4.i83.i5.if.end.sink.split_crit_edge

land.lhs.true4.i83.i5.if.end.sink.split_crit_edge: ; preds = %land.lhs.true4.i83.i5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.sink.split

land.lhs.true7.i85.i7:                            ; preds = %land.lhs.true4.i83.i5
  %12 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %12)
  %cmp10.i84.i6 = icmp eq i8 %12, 3
  br i1 %cmp10.i84.i6, label %land.lhs.true7.i85.i7.if.end_crit_edge, label %land.lhs.true7.i85.i7.if.end.sink.split_crit_edge

land.lhs.true7.i85.i7.if.end.sink.split_crit_edge: ; preds = %land.lhs.true7.i85.i7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.sink.split

land.lhs.true7.i85.i7.if.end_crit_edge:           ; preds = %land.lhs.true7.i85.i7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end.sink.split:                                ; preds = %land.lhs.true7.i85.i7.if.end.sink.split_crit_edge, %land.lhs.true4.i83.i5.if.end.sink.split_crit_edge, %land.lhs.true.i81.i3.if.end.sink.split_crit_edge, %if.else.if.end.sink.split_crit_edge, %land.lhs.true7.i85.i.if.end.sink.split_crit_edge, %land.lhs.true4.i83.i.if.end.sink.split_crit_edge, %land.lhs.true.i81.i.if.end.sink.split_crit_edge, %if.then.if.end.sink.split_crit_edge
  %fBtcWrite4Byte.i.i.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 18
  %13 = ptrtoint ptr %fBtcWrite4Byte.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fBtcWrite4Byte.i.i.i, align 4
  call void %14(ptr noundef %pBtCoexist, i32 noundef 1728, i32 noundef 1515870810) #4
  %15 = ptrtoint ptr %fBtcWrite4Byte.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fBtcWrite4Byte.i.i.i, align 4
  call void %16(ptr noundef %pBtCoexist, i32 noundef 1732, i32 noundef -1431676326) #4
  %17 = ptrtoint ptr %fBtcWrite4Byte.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fBtcWrite4Byte.i.i.i, align 4
  call void %18(ptr noundef %pBtCoexist, i32 noundef 1736, i32 noundef 16777215) #4
  %fBtcWrite1Byte.i.i111.i9 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 13
  %19 = ptrtoint ptr %fBtcWrite1Byte.i.i111.i9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fBtcWrite1Byte.i.i111.i9, align 4
  call void %20(ptr noundef %pBtCoexist, i32 noundef 1740, i8 noundef zeroext 3) #4
  %21 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 %21, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  %22 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 %22, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  %23 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i32 %23, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  %24 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  store i8 %24, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %land.lhs.true7.i85.i7.if.end_crit_edge, %land.lhs.true7.i85.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bWifiConnected) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @halbtc8723b1ant_ActionWifiConnectedBtAclBusy(ptr noundef %pBtCoexist, i8 noundef zeroext %wifiStatus) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 12), align 4
  %1 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 14), align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %1, label %if.else17.i [
    i8 2, label %entry.if.then12.i_crit_edge
    i8 5, label %entry.if.then12.i_crit_edge132
  ]

entry.if.then12.i_crit_edge132:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i

entry.if.then12.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i

if.then12.i:                                      ; preds = %entry.if.then12.i_crit_edge, %entry.if.then12.i_crit_edge132
  call void @__sanitizer_cov_trace_const_cmp1(i8 29, i8 %0)
  %cmp14.i = icmp sgt i8 %0, 29
  %..i = select i1 %cmp14.i, i8 0, i8 5
  br label %halbtc8723b1ant_BtRssiState.exit

if.else17.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %0)
  %cmp19.i = icmp slt i8 %0, 28
  %.1.i = select i1 %cmp19.i, i8 2, i8 3
  br label %halbtc8723b1ant_BtRssiState.exit

halbtc8723b1ant_BtRssiState.exit:                 ; preds = %if.else17.i, %if.then12.i
  %btRssiState.0.i = phi i8 [ %..i, %if.then12.i ], [ %.1.i, %if.else17.i ]
  store i8 %btRssiState.0.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 14), align 2
  %3 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 11), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %3)
  %cmp = icmp ugt i32 %3, 999
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %3)
  %cmp2.not = icmp ne i32 %3, 65535
  %not.or.cond = and i1 %cmp, %cmp2.not
  %spec.select = zext i1 %not.or.cond to i8
  %4 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 5, i32 9
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %spec.select, ptr %4, align 1
  %bHidOnly = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 5, i32 6
  %6 = ptrtoint ptr %bHidOnly to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bHidOnly, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.else5, label %if.then4

if.then4:                                         ; preds = %halbtc8723b1ant_BtRssiState.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @halbtc8723b1ant_ActionBtScoHidOnlyBusy(ptr noundef %pBtCoexist)
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 6), align 2
  br label %cleanup

if.else5:                                         ; preds = %halbtc8723b1ant_BtRssiState.exit
  %bA2dpOnly = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 5, i32 4
  %8 = ptrtoint ptr %bA2dpOnly to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bA2dpOnly, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not = icmp eq i8 %9, 0
  br i1 %tobool6.not, label %if.else15, label %if.then7

if.then7:                                         ; preds = %if.else5
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %wifiStatus)
  %cmp8 = icmp eq i8 %wifiStatus, 4
  br i1 %cmp8, label %if.then10, label %if.else12

if.then10:                                        ; preds = %if.then7
  tail call fastcc void @halbtc8723b1ant_PsTdma(ptr noundef %pBtCoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 32)
  store i8 4, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 36), align 2
  store i32 1431655765, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 -1431676326, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 16777215, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  %10 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1431655765, i32 %10)
  %cmp.i66.i = icmp eq i32 %10, 1431655765
  br i1 %cmp.i66.i, label %land.lhs.true.i69.i, label %if.then10.sw.epilog.sink.split.i_crit_edge

if.then10.sw.epilog.sink.split.i_crit_edge:       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

land.lhs.true.i69.i:                              ; preds = %if.then10
  %11 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1431676326, i32 %11)
  %cmp3.i68.i = icmp eq i32 %11, -1431676326
  br i1 %cmp3.i68.i, label %land.lhs.true4.i71.i, label %land.lhs.true.i69.i.sw.epilog.sink.split.i_crit_edge

land.lhs.true.i69.i.sw.epilog.sink.split.i_crit_edge: ; preds = %land.lhs.true.i69.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

land.lhs.true4.i71.i:                             ; preds = %land.lhs.true.i69.i
  %12 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %12)
  %cmp6.i70.i = icmp eq i32 %12, 16777215
  br i1 %cmp6.i70.i, label %land.lhs.true7.i73.i, label %land.lhs.true4.i71.i.sw.epilog.sink.split.i_crit_edge

land.lhs.true4.i71.i.sw.epilog.sink.split.i_crit_edge: ; preds = %land.lhs.true4.i71.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

land.lhs.true7.i73.i:                             ; preds = %land.lhs.true4.i71.i
  %13 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %cmp10.i72.i = icmp eq i8 %13, 3
  br i1 %cmp10.i72.i, label %land.lhs.true7.i73.i.halbtc8723b1ant_CoexTableWithType.exit_crit_edge, label %land.lhs.true7.i73.i.sw.epilog.sink.split.i_crit_edge

land.lhs.true7.i73.i.sw.epilog.sink.split.i_crit_edge: ; preds = %land.lhs.true7.i73.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

land.lhs.true7.i73.i.halbtc8723b1ant_CoexTableWithType.exit_crit_edge: ; preds = %land.lhs.true7.i73.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_CoexTableWithType.exit

sw.epilog.sink.split.i:                           ; preds = %land.lhs.true7.i73.i.sw.epilog.sink.split.i_crit_edge, %land.lhs.true4.i71.i.sw.epilog.sink.split.i_crit_edge, %land.lhs.true.i69.i.sw.epilog.sink.split.i_crit_edge, %if.then10.sw.epilog.sink.split.i_crit_edge
  %fBtcWrite4Byte.i.i.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 18
  %14 = ptrtoint ptr %fBtcWrite4Byte.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fBtcWrite4Byte.i.i.i, align 4
  tail call void %15(ptr noundef %pBtCoexist, i32 noundef 1728, i32 noundef 1431655765) #4
  %16 = ptrtoint ptr %fBtcWrite4Byte.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fBtcWrite4Byte.i.i.i, align 4
  tail call void %17(ptr noundef %pBtCoexist, i32 noundef 1732, i32 noundef -1431676326) #4
  %18 = ptrtoint ptr %fBtcWrite4Byte.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fBtcWrite4Byte.i.i.i, align 4
  tail call void %19(ptr noundef %pBtCoexist, i32 noundef 1736, i32 noundef 16777215) #4
  %fBtcWrite1Byte.i.i111.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 13
  %20 = ptrtoint ptr %fBtcWrite1Byte.i.i111.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fBtcWrite1Byte.i.i111.i, align 4
  tail call void %21(ptr noundef %pBtCoexist, i32 noundef 1740, i8 noundef zeroext 3) #4
  %22 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 %22, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  %23 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 %23, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  %24 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i32 %24, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  %25 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  store i8 %25, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  br label %halbtc8723b1ant_CoexTableWithType.exit

halbtc8723b1ant_CoexTableWithType.exit:           ; preds = %sw.epilog.sink.split.i, %land.lhs.true7.i73.i.halbtc8723b1ant_CoexTableWithType.exit_crit_edge
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 6), align 2
  br label %cleanup

if.else12:                                        ; preds = %if.then7
  %26 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 6), align 2, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i, label %if.then28.i, label %if.else.i

if.then28.i:                                      ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #6
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 6), align 2
  tail call fastcc void @halbtc8723b1ant_PsTdma(ptr noundef %pBtCoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 2) #4
  store i8 2, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 5), align 1
  store i32 0, ptr @halbtc8723b1ant_TdmaDurationAdjustForAcl.up, align 4
  store i32 0, ptr @halbtc8723b1ant_TdmaDurationAdjustForAcl.dn, align 4
  store i32 1, ptr @halbtc8723b1ant_TdmaDurationAdjustForAcl.m, align 4
  store i32 3, ptr @halbtc8723b1ant_TdmaDurationAdjustForAcl.n, align 4
  store i32 0, ptr @halbtc8723b1ant_TdmaDurationAdjustForAcl.WaitCount, align 4
  br label %halbtc8723b1ant_TdmaDurationAdjustForAcl.exit

if.else.i:                                        ; preds = %if.else12
  %27 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 22), align 1
  %28 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 23), align 4
  %29 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 10), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1050, i32 %29)
  %cmp32.i = icmp ugt i32 %29, 1050
  call void @__sanitizer_cov_trace_const_cmp4(i32 1250, i32 %3)
  %cmp35.i = icmp ugt i32 %3, 1250
  %or.cond131 = select i1 %cmp32.i, i1 true, i1 %cmp35.i
  %inc.i = zext i1 %or.cond131 to i8
  %retryCount.0.i = add i8 %27, %inc.i
  %30 = load i32, ptr @halbtc8723b1ant_TdmaDurationAdjustForAcl.WaitCount, align 4
  %inc39.i = add i32 %30, 1
  store i32 %inc39.i, ptr @halbtc8723b1ant_TdmaDurationAdjustForAcl.WaitCount, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retryCount.0.i)
  %cmp41.i = icmp eq i8 %retryCount.0.i, 0
  br i1 %cmp41.i, label %if.then43.i, label %if.else53.i

if.then43.i:                                      ; preds = %if.else.i
  %31 = load i32, ptr @halbtc8723b1ant_TdmaDurationAdjustForAcl.up, align 4
  %inc44.i = add i32 %31, 1
  store i32 %inc44.i, ptr @halbtc8723b1ant_TdmaDurationAdjustForAcl.up, align 4
  %32 = load i32, ptr @halbtc8723b1ant_TdmaDurationAdjustForAcl.dn, align 4
  %dec.i = add i32 %32, -1
  %33 = tail call i32 @llvm.smax.i32(i32 %dec.i, i32 0) #4
  store i32 %33, ptr @halbtc8723b1ant_TdmaDurationAdjustForAcl.dn, align 4
  %34 = load i32, ptr @halbtc8723b1ant_TdmaDurationAdjustForAcl.n, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc44.i, i32 %34)
  %cmp49.not.i = icmp slt i32 %inc44.i, %34
  br i1 %cmp49.not.i, label %if.then43.i.if.end181.ithread-pre-split_crit_edge, label %if.then137.i

if.then43.i.if.end181.ithread-pre-split_crit_edge: ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end181.ithread-pre-split

if.else53.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %retryCount.0.i)
  %cmp55.i = icmp ult i8 %retryCount.0.i, 4
  br i1 %cmp55.i, label %if.then57.i, label %if.else78.i

if.then57.i:                                      ; preds = %if.else53.i
  %35 = load i32, ptr @halbtc8723b1ant_TdmaDurationAdjustForAcl.up, align 4
  %dec58.i = add i32 %35, -1
  store i32 %dec58.i, ptr @halbtc8723b1ant_TdmaDurationAdjustForAcl.up, align 4
  %36 = load i32, ptr @halbtc8723b1ant_TdmaDurationAdjustForAcl.dn, align 4
  %inc59.i = add i32 %36, 1
  store i32 %inc59.i, ptr @halbtc8723b1ant_TdmaDurationAdjustForAcl.dn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec58.i)
  %cmp60.i = icmp slt i32 %dec58.i, 1
  br i1 %cmp60.i, label %if.then62.i, label %if.then57.i.if.end63.i_crit_edge

if.then57.i.if.end63.i_crit_edge:                 ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end63.i

if.then62.i:                                      ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #6
  store i32 0, ptr @halbtc8723b1ant_TdmaDurationAdjustForAcl.up, align 4
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then62.i, %if.then57.i.if.end63.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc59.i)
  %cmp64.i = icmp eq i32 %inc59.i, 2
  br i1 %cmp64.i, label %if.then66.i, label %if.end63.i.if.end181.ithread-pre-split_crit_edge

if.end63.i.if.end181.ithread-pre-split_crit_edge: ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end181.ithread-pre-split

if.then66.i:                                      ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc39.i)
  %cmp67.i = icmp slt i32 %inc39.i, 3
  br i1 %cmp67.i, label %if.then66.i.if.then94.sink.split.i_crit_edge, label %if.then66.i.if.then94.i_crit_edge

if.then66.i.if.then94.i_crit_edge:                ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then94.i

if.then66.i.if.then94.sink.split.i_crit_edge:     ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then94.sink.split.i

if.else78.i:                                      ; preds = %if.else53.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp79.i = icmp eq i32 %30, 0
  br i1 %cmp79.i, label %if.else78.i.if.then94.sink.split.i_crit_edge, label %if.else78.i.if.then94.i_crit_edge

if.else78.i.if.then94.i_crit_edge:                ; preds = %if.else78.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then94.i

if.else78.i.if.then94.sink.split.i_crit_edge:     ; preds = %if.else78.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then94.sink.split.i

if.then94.sink.split.i:                           ; preds = %if.else78.i.if.then94.sink.split.i_crit_edge, %if.then66.i.if.then94.sink.split.i_crit_edge
  %37 = load i32, ptr @halbtc8723b1ant_TdmaDurationAdjustForAcl.m, align 4
  %inc82.i = add i32 %37, 1
  %38 = tail call i32 @llvm.smin.i32(i32 %inc82.i, i32 20) #4
  br label %if.then94.i

if.then94.i:                                      ; preds = %if.then94.sink.split.i, %if.else78.i.if.then94.i_crit_edge, %if.then66.i.if.then94.i_crit_edge
  %storemerge.in.i = phi i32 [ 1, %if.then66.i.if.then94.i_crit_edge ], [ 1, %if.else78.i.if.then94.i_crit_edge ], [ %38, %if.then94.sink.split.i ]
  store i32 %storemerge.in.i, ptr @halbtc8723b1ant_TdmaDurationAdjustForAcl.m, align 4
  %storemerge.i = mul i32 %storemerge.in.i, 3
  store i32 %storemerge.i, ptr @halbtc8723b1ant_TdmaDurationAdjustForAcl.n, align 4
  store i32 0, ptr @halbtc8723b1ant_TdmaDurationAdjustForAcl.up, align 4
  store i32 0, ptr @halbtc8723b1ant_TdmaDurationAdjustForAcl.dn, align 4
  store i32 0, ptr @halbtc8723b1ant_TdmaDurationAdjustForAcl.WaitCount, align 4
  %39 = and i8 %28, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool96.not.i = icmp ne i8 %39, 0
  %.pr.i = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 3), align 1
  %.off.i = add i8 %.pr.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 2
  %or.cond241.i = select i1 %tobool96.not.i, i1 %switch.i, i1 false
  br i1 %or.cond241.i, label %if.then94.i.if.end181.sink.split.i_crit_edge, label %if.else109.i

if.then94.i.if.end181.sink.split.i_crit_edge:     ; preds = %if.then94.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end181.sink.split.i

if.else109.i:                                     ; preds = %if.then94.i
  %40 = zext i8 %.pr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %.pr.i, label %if.else109.i.if.end181.i_crit_edge [
    i8 1, label %if.else109.i.if.end181.sink.split.i_crit_edge
    i8 2, label %if.then121.i
    i8 9, label %if.then128.i
  ]

if.else109.i.if.end181.sink.split.i_crit_edge:    ; preds = %if.else109.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end181.sink.split.i

if.else109.i.if.end181.i_crit_edge:               ; preds = %if.else109.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end181.i

if.then121.i:                                     ; preds = %if.else109.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end181.sink.split.i

if.then128.i:                                     ; preds = %if.else109.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end181.sink.split.i

if.then137.i:                                     ; preds = %if.then43.i
  store i32 0, ptr @halbtc8723b1ant_TdmaDurationAdjustForAcl.WaitCount, align 4
  store i32 3, ptr @halbtc8723b1ant_TdmaDurationAdjustForAcl.n, align 4
  store i32 0, ptr @halbtc8723b1ant_TdmaDurationAdjustForAcl.up, align 4
  store i32 0, ptr @halbtc8723b1ant_TdmaDurationAdjustForAcl.dn, align 4
  %41 = and i8 %28, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool140.not.i = icmp ne i8 %41, 0
  %.pr237.i = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 3), align 1
  %.off227.i = add i8 %.pr237.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off227.i)
  %switch228.i = icmp ult i8 %.off227.i, 2
  %or.cond.i = select i1 %tobool140.not.i, i1 %switch228.i, i1 false
  br i1 %or.cond.i, label %if.then137.i.if.end181.sink.split.i_crit_edge, label %if.else155.i

if.then137.i.if.end181.sink.split.i_crit_edge:    ; preds = %if.then137.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end181.sink.split.i

if.else155.i:                                     ; preds = %if.then137.i
  %42 = zext i8 %.pr237.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %.pr237.i, label %if.else155.i.if.end181.i_crit_edge [
    i8 11, label %if.else155.i.if.end181.sink.split.i_crit_edge
    i8 9, label %if.then167.i
    i8 2, label %if.then174.i
  ]

if.else155.i.if.end181.sink.split.i_crit_edge:    ; preds = %if.else155.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end181.sink.split.i

if.else155.i.if.end181.i_crit_edge:               ; preds = %if.else155.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end181.i

if.then167.i:                                     ; preds = %if.else155.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end181.sink.split.i

if.then174.i:                                     ; preds = %if.else155.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end181.sink.split.i

if.end181.sink.split.i:                           ; preds = %if.then174.i, %if.then167.i, %if.else155.i.if.end181.sink.split.i_crit_edge, %if.then137.i.if.end181.sink.split.i_crit_edge, %if.then128.i, %if.then121.i, %if.else109.i.if.end181.sink.split.i_crit_edge, %if.then94.i.if.end181.sink.split.i_crit_edge
  %.sink240.i = phi i8 [ 1, %if.then174.i ], [ 2, %if.then167.i ], [ 9, %if.then121.i ], [ 11, %if.then128.i ], [ 2, %if.else109.i.if.end181.sink.split.i_crit_edge ], [ 9, %if.then137.i.if.end181.sink.split.i_crit_edge ], [ 9, %if.else155.i.if.end181.sink.split.i_crit_edge ], [ 9, %if.then94.i.if.end181.sink.split.i_crit_edge ]
  tail call fastcc void @halbtc8723b1ant_PsTdma(ptr noundef %pBtCoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext %.sink240.i) #4
  store i8 %.sink240.i, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 5), align 1
  br label %if.end181.ithread-pre-split

if.end181.ithread-pre-split:                      ; preds = %if.end181.sink.split.i, %if.end63.i.if.end181.ithread-pre-split_crit_edge, %if.then43.i.if.end181.ithread-pre-split_crit_edge
  %.pr = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 3), align 1
  br label %if.end181.i

if.end181.i:                                      ; preds = %if.end181.ithread-pre-split, %if.else155.i.if.end181.i_crit_edge, %if.else109.i.if.end181.i_crit_edge
  %43 = phi i8 [ %.pr, %if.end181.ithread-pre-split ], [ %.pr237.i, %if.else155.i.if.end181.i_crit_edge ], [ %.pr.i, %if.else109.i.if.end181.i_crit_edge ]
  %44 = zext i8 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %43, label %if.then201.i [
    i8 1, label %if.end181.i.halbtc8723b1ant_TdmaDurationAdjustForAcl.exit_crit_edge
    i8 2, label %if.end181.i.halbtc8723b1ant_TdmaDurationAdjustForAcl.exit_crit_edge133
    i8 9, label %if.end181.i.halbtc8723b1ant_TdmaDurationAdjustForAcl.exit_crit_edge134
    i8 11, label %if.end181.i.halbtc8723b1ant_TdmaDurationAdjustForAcl.exit_crit_edge135
  ]

if.end181.i.halbtc8723b1ant_TdmaDurationAdjustForAcl.exit_crit_edge135: ; preds = %if.end181.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_TdmaDurationAdjustForAcl.exit

if.end181.i.halbtc8723b1ant_TdmaDurationAdjustForAcl.exit_crit_edge134: ; preds = %if.end181.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_TdmaDurationAdjustForAcl.exit

if.end181.i.halbtc8723b1ant_TdmaDurationAdjustForAcl.exit_crit_edge133: ; preds = %if.end181.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_TdmaDurationAdjustForAcl.exit

if.end181.i.halbtc8723b1ant_TdmaDurationAdjustForAcl.exit_crit_edge: ; preds = %if.end181.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_TdmaDurationAdjustForAcl.exit

if.then201.i:                                     ; preds = %if.end181.i
  call void @__sanitizer_cov_trace_pc() #6
  %45 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 5), align 1
  tail call fastcc void @halbtc8723b1ant_PsTdma(ptr noundef %pBtCoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext %45) #4
  br label %halbtc8723b1ant_TdmaDurationAdjustForAcl.exit

halbtc8723b1ant_TdmaDurationAdjustForAcl.exit:    ; preds = %if.then201.i, %if.end181.i.halbtc8723b1ant_TdmaDurationAdjustForAcl.exit_crit_edge, %if.end181.i.halbtc8723b1ant_TdmaDurationAdjustForAcl.exit_crit_edge133, %if.end181.i.halbtc8723b1ant_TdmaDurationAdjustForAcl.exit_crit_edge134, %if.end181.i.halbtc8723b1ant_TdmaDurationAdjustForAcl.exit_crit_edge135, %if.then28.i
  store i8 4, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 36), align 2
  store i32 1431655765, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 -1431676326, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 16777215, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  %46 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1431655765, i32 %46)
  %cmp.i66.i91 = icmp eq i32 %46, 1431655765
  br i1 %cmp.i66.i91, label %land.lhs.true.i69.i93, label %halbtc8723b1ant_TdmaDurationAdjustForAcl.exit.sw.epilog.sink.split.i100_crit_edge

halbtc8723b1ant_TdmaDurationAdjustForAcl.exit.sw.epilog.sink.split.i100_crit_edge: ; preds = %halbtc8723b1ant_TdmaDurationAdjustForAcl.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i100

land.lhs.true.i69.i93:                            ; preds = %halbtc8723b1ant_TdmaDurationAdjustForAcl.exit
  %47 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1431676326, i32 %47)
  %cmp3.i68.i92 = icmp eq i32 %47, -1431676326
  br i1 %cmp3.i68.i92, label %land.lhs.true4.i71.i95, label %land.lhs.true.i69.i93.sw.epilog.sink.split.i100_crit_edge

land.lhs.true.i69.i93.sw.epilog.sink.split.i100_crit_edge: ; preds = %land.lhs.true.i69.i93
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i100

land.lhs.true4.i71.i95:                           ; preds = %land.lhs.true.i69.i93
  %48 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %48)
  %cmp6.i70.i94 = icmp eq i32 %48, 16777215
  br i1 %cmp6.i70.i94, label %land.lhs.true7.i73.i97, label %land.lhs.true4.i71.i95.sw.epilog.sink.split.i100_crit_edge

land.lhs.true4.i71.i95.sw.epilog.sink.split.i100_crit_edge: ; preds = %land.lhs.true4.i71.i95
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i100

land.lhs.true7.i73.i97:                           ; preds = %land.lhs.true4.i71.i95
  %49 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %49)
  %cmp10.i72.i96 = icmp eq i8 %49, 3
  br i1 %cmp10.i72.i96, label %land.lhs.true7.i73.i97.halbtc8723b1ant_CoexTableWithType.exit101_crit_edge, label %land.lhs.true7.i73.i97.sw.epilog.sink.split.i100_crit_edge

land.lhs.true7.i73.i97.sw.epilog.sink.split.i100_crit_edge: ; preds = %land.lhs.true7.i73.i97
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i100

land.lhs.true7.i73.i97.halbtc8723b1ant_CoexTableWithType.exit101_crit_edge: ; preds = %land.lhs.true7.i73.i97
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_CoexTableWithType.exit101

sw.epilog.sink.split.i100:                        ; preds = %land.lhs.true7.i73.i97.sw.epilog.sink.split.i100_crit_edge, %land.lhs.true4.i71.i95.sw.epilog.sink.split.i100_crit_edge, %land.lhs.true.i69.i93.sw.epilog.sink.split.i100_crit_edge, %halbtc8723b1ant_TdmaDurationAdjustForAcl.exit.sw.epilog.sink.split.i100_crit_edge
  %fBtcWrite4Byte.i.i.i98 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 18
  %50 = ptrtoint ptr %fBtcWrite4Byte.i.i.i98 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fBtcWrite4Byte.i.i.i98, align 4
  tail call void %51(ptr noundef %pBtCoexist, i32 noundef 1728, i32 noundef 1431655765) #4
  %52 = ptrtoint ptr %fBtcWrite4Byte.i.i.i98 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fBtcWrite4Byte.i.i.i98, align 4
  tail call void %53(ptr noundef %pBtCoexist, i32 noundef 1732, i32 noundef -1431676326) #4
  %54 = ptrtoint ptr %fBtcWrite4Byte.i.i.i98 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %fBtcWrite4Byte.i.i.i98, align 4
  tail call void %55(ptr noundef %pBtCoexist, i32 noundef 1736, i32 noundef 16777215) #4
  %fBtcWrite1Byte.i.i111.i99 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 13
  %56 = ptrtoint ptr %fBtcWrite1Byte.i.i111.i99 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %fBtcWrite1Byte.i.i111.i99, align 4
  tail call void %57(ptr noundef %pBtCoexist, i32 noundef 1740, i8 noundef zeroext 3) #4
  %58 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 %58, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  %59 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 %59, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  %60 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i32 %60, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  %61 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  store i8 %61, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  br label %halbtc8723b1ant_CoexTableWithType.exit101

halbtc8723b1ant_CoexTableWithType.exit101:        ; preds = %sw.epilog.sink.split.i100, %land.lhs.true7.i73.i97.halbtc8723b1ant_CoexTableWithType.exit101_crit_edge
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 6), align 2
  br label %cleanup

if.else15:                                        ; preds = %if.else5
  %bHidExist = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 5, i32 5
  %62 = ptrtoint ptr %bHidExist to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %bHidExist, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool16.not = icmp eq i8 %63, 0
  br i1 %tobool16.not, label %if.else23, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %if.else15
  %bA2dpExist = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 5, i32 3
  %64 = ptrtoint ptr %bA2dpExist to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %bA2dpExist, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool19.not = icmp eq i8 %65, 0
  br i1 %tobool19.not, label %if.else23.thread, label %if.then21

if.then21:                                        ; preds = %land.lhs.true18
  tail call fastcc void @halbtc8723b1ant_PsTdma(ptr noundef %pBtCoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 14)
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 6), align 2
  store i8 4, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 36), align 2
  store i32 1431655765, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 -1431676326, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 16777215, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  %66 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1431655765, i32 %66)
  %cmp.i66.i102 = icmp eq i32 %66, 1431655765
  br i1 %cmp.i66.i102, label %land.lhs.true.i69.i104, label %if.then21.sw.epilog.sink.split.i111_crit_edge

if.then21.sw.epilog.sink.split.i111_crit_edge:    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i111

land.lhs.true.i69.i104:                           ; preds = %if.then21
  %67 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1431676326, i32 %67)
  %cmp3.i68.i103 = icmp eq i32 %67, -1431676326
  br i1 %cmp3.i68.i103, label %land.lhs.true4.i71.i106, label %land.lhs.true.i69.i104.sw.epilog.sink.split.i111_crit_edge

land.lhs.true.i69.i104.sw.epilog.sink.split.i111_crit_edge: ; preds = %land.lhs.true.i69.i104
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i111

land.lhs.true4.i71.i106:                          ; preds = %land.lhs.true.i69.i104
  %68 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %68)
  %cmp6.i70.i105 = icmp eq i32 %68, 16777215
  br i1 %cmp6.i70.i105, label %land.lhs.true7.i73.i108, label %land.lhs.true4.i71.i106.sw.epilog.sink.split.i111_crit_edge

land.lhs.true4.i71.i106.sw.epilog.sink.split.i111_crit_edge: ; preds = %land.lhs.true4.i71.i106
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i111

land.lhs.true7.i73.i108:                          ; preds = %land.lhs.true4.i71.i106
  %69 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %69)
  %cmp10.i72.i107 = icmp eq i8 %69, 3
  br i1 %cmp10.i72.i107, label %land.lhs.true7.i73.i108.cleanup_crit_edge, label %land.lhs.true7.i73.i108.sw.epilog.sink.split.i111_crit_edge

land.lhs.true7.i73.i108.sw.epilog.sink.split.i111_crit_edge: ; preds = %land.lhs.true7.i73.i108
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i111

land.lhs.true7.i73.i108.cleanup_crit_edge:        ; preds = %land.lhs.true7.i73.i108
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.epilog.sink.split.i111:                        ; preds = %land.lhs.true7.i73.i108.sw.epilog.sink.split.i111_crit_edge, %land.lhs.true4.i71.i106.sw.epilog.sink.split.i111_crit_edge, %land.lhs.true.i69.i104.sw.epilog.sink.split.i111_crit_edge, %if.then21.sw.epilog.sink.split.i111_crit_edge
  %fBtcWrite4Byte.i.i.i109 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 18
  %70 = ptrtoint ptr %fBtcWrite4Byte.i.i.i109 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %fBtcWrite4Byte.i.i.i109, align 4
  tail call void %71(ptr noundef %pBtCoexist, i32 noundef 1728, i32 noundef 1431655765) #4
  %72 = ptrtoint ptr %fBtcWrite4Byte.i.i.i109 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %fBtcWrite4Byte.i.i.i109, align 4
  tail call void %73(ptr noundef %pBtCoexist, i32 noundef 1732, i32 noundef -1431676326) #4
  %74 = ptrtoint ptr %fBtcWrite4Byte.i.i.i109 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %fBtcWrite4Byte.i.i.i109, align 4
  tail call void %75(ptr noundef %pBtCoexist, i32 noundef 1736, i32 noundef 16777215) #4
  %fBtcWrite1Byte.i.i111.i110 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 13
  %76 = ptrtoint ptr %fBtcWrite1Byte.i.i111.i110 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %fBtcWrite1Byte.i.i111.i110, align 4
  tail call void %77(ptr noundef %pBtCoexist, i32 noundef 1740, i8 noundef zeroext 3) #4
  %78 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 %78, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  %79 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 %79, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  %80 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i32 %80, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  %81 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  store i8 %81, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  br label %cleanup

if.else23:                                        ; preds = %if.else15
  %bPanOnly = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 5, i32 8
  %82 = ptrtoint ptr %bPanOnly to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %bPanOnly, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool24.not = icmp eq i8 %83, 0
  br i1 %tobool24.not, label %if.else34, label %if.else23.if.then32_crit_edge

if.else23.if.then32_crit_edge:                    ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then32

if.else23.thread:                                 ; preds = %land.lhs.true18
  %bPanOnly124 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 5, i32 8
  %84 = ptrtoint ptr %bPanOnly124 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %bPanOnly124, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool24.not125 = icmp eq i8 %85, 0
  br i1 %tobool24.not125, label %land.lhs.true29, label %if.else23.thread.if.then32_crit_edge

if.else23.thread.if.then32_crit_edge:             ; preds = %if.else23.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then32

land.lhs.true29:                                  ; preds = %if.else23.thread
  %bPanExist = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 5, i32 7
  %86 = ptrtoint ptr %bPanExist to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %bPanExist, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool30.not = icmp eq i8 %87, 0
  br i1 %tobool30.not, label %if.else34.thread, label %land.lhs.true29.if.then32_crit_edge

land.lhs.true29.if.then32_crit_edge:              ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then32

if.then32:                                        ; preds = %land.lhs.true29.if.then32_crit_edge, %if.else23.thread.if.then32_crit_edge, %if.else23.if.then32_crit_edge
  tail call fastcc void @halbtc8723b1ant_PsTdma(ptr noundef %pBtCoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 3)
  store i8 4, ptr getelementptr inbounds (%struct.coex_sta_8723b_1ant, ptr @GLCoexSta8723b1Ant, i32 0, i32 36), align 2
  store i32 1431655765, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 -1431676326, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 16777215, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  %88 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1431655765, i32 %88)
  %cmp.i66.i113 = icmp eq i32 %88, 1431655765
  br i1 %cmp.i66.i113, label %land.lhs.true.i69.i115, label %if.then32.sw.epilog.sink.split.i122_crit_edge

if.then32.sw.epilog.sink.split.i122_crit_edge:    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i122

land.lhs.true.i69.i115:                           ; preds = %if.then32
  %89 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1431676326, i32 %89)
  %cmp3.i68.i114 = icmp eq i32 %89, -1431676326
  br i1 %cmp3.i68.i114, label %land.lhs.true4.i71.i117, label %land.lhs.true.i69.i115.sw.epilog.sink.split.i122_crit_edge

land.lhs.true.i69.i115.sw.epilog.sink.split.i122_crit_edge: ; preds = %land.lhs.true.i69.i115
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i122

land.lhs.true4.i71.i117:                          ; preds = %land.lhs.true.i69.i115
  %90 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %90)
  %cmp6.i70.i116 = icmp eq i32 %90, 16777215
  br i1 %cmp6.i70.i116, label %land.lhs.true7.i73.i119, label %land.lhs.true4.i71.i117.sw.epilog.sink.split.i122_crit_edge

land.lhs.true4.i71.i117.sw.epilog.sink.split.i122_crit_edge: ; preds = %land.lhs.true4.i71.i117
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i122

land.lhs.true7.i73.i119:                          ; preds = %land.lhs.true4.i71.i117
  %91 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %91)
  %cmp10.i72.i118 = icmp eq i8 %91, 3
  br i1 %cmp10.i72.i118, label %land.lhs.true7.i73.i119.halbtc8723b1ant_CoexTableWithType.exit123_crit_edge, label %land.lhs.true7.i73.i119.sw.epilog.sink.split.i122_crit_edge

land.lhs.true7.i73.i119.sw.epilog.sink.split.i122_crit_edge: ; preds = %land.lhs.true7.i73.i119
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i122

land.lhs.true7.i73.i119.halbtc8723b1ant_CoexTableWithType.exit123_crit_edge: ; preds = %land.lhs.true7.i73.i119
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_CoexTableWithType.exit123

sw.epilog.sink.split.i122:                        ; preds = %land.lhs.true7.i73.i119.sw.epilog.sink.split.i122_crit_edge, %land.lhs.true4.i71.i117.sw.epilog.sink.split.i122_crit_edge, %land.lhs.true.i69.i115.sw.epilog.sink.split.i122_crit_edge, %if.then32.sw.epilog.sink.split.i122_crit_edge
  %fBtcWrite4Byte.i.i.i120 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 18
  %92 = ptrtoint ptr %fBtcWrite4Byte.i.i.i120 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %fBtcWrite4Byte.i.i.i120, align 4
  tail call void %93(ptr noundef %pBtCoexist, i32 noundef 1728, i32 noundef 1431655765) #4
  %94 = ptrtoint ptr %fBtcWrite4Byte.i.i.i120 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %fBtcWrite4Byte.i.i.i120, align 4
  tail call void %95(ptr noundef %pBtCoexist, i32 noundef 1732, i32 noundef -1431676326) #4
  %96 = ptrtoint ptr %fBtcWrite4Byte.i.i.i120 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %fBtcWrite4Byte.i.i.i120, align 4
  tail call void %97(ptr noundef %pBtCoexist, i32 noundef 1736, i32 noundef 16777215) #4
  %fBtcWrite1Byte.i.i111.i121 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 13
  %98 = ptrtoint ptr %fBtcWrite1Byte.i.i111.i121 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %fBtcWrite1Byte.i.i111.i121, align 4
  tail call void %99(ptr noundef %pBtCoexist, i32 noundef 1740, i8 noundef zeroext 3) #4
  %100 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 18), align 4
  store i32 %100, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 17), align 4
  %101 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 20), align 4
  store i32 %101, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 19), align 4
  %102 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 22), align 4
  store i32 %102, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 21), align 4
  %103 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 24), align 1
  store i8 %103, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 23), align 4
  br label %halbtc8723b1ant_CoexTableWithType.exit123

halbtc8723b1ant_CoexTableWithType.exit123:        ; preds = %sw.epilog.sink.split.i122, %land.lhs.true7.i73.i119.halbtc8723b1ant_CoexTableWithType.exit123_crit_edge
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 6), align 2
  br label %cleanup

if.else34:                                        ; preds = %if.else23
  %bA2dpExist35 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 5, i32 3
  %104 = ptrtoint ptr %bA2dpExist35 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %bA2dpExist35, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool36.not = icmp eq i8 %105, 0
  br i1 %tobool36.not, label %if.else34.if.else56_crit_edge, label %land.lhs.true38

if.else34.if.else56_crit_edge:                    ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else56

if.else34.thread:                                 ; preds = %land.lhs.true29
  %106 = ptrtoint ptr %bA2dpExist to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %bA2dpExist, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool36.not127 = icmp eq i8 %107, 0
  br i1 %tobool36.not127, label %if.else34.thread.if.else56_crit_edge, label %land.lhs.true38.thread

if.else34.thread.if.else56_crit_edge:             ; preds = %if.else34.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else56

land.lhs.true38:                                  ; preds = %if.else34
  %bPanExist39 = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 5, i32 7
  %108 = ptrtoint ptr %bPanExist39 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %bPanExist39, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool40.not = icmp eq i8 %109, 0
  br i1 %tobool40.not, label %land.lhs.true38.if.else56_crit_edge, label %land.lhs.true38.if.then54_crit_edge

land.lhs.true38.if.then54_crit_edge:              ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then54

land.lhs.true38.if.else56_crit_edge:              ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else56

land.lhs.true38.thread:                           ; preds = %if.else34.thread
  %110 = ptrtoint ptr %bPanExist to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %bPanExist, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool40.not130 = icmp eq i8 %111, 0
  br i1 %tobool40.not130, label %land.lhs.true50, label %land.lhs.true38.thread.if.then54_crit_edge

land.lhs.true38.thread.if.then54_crit_edge:       ; preds = %land.lhs.true38.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then54

land.lhs.true50:                                  ; preds = %land.lhs.true38.thread
  %112 = ptrtoint ptr %bPanExist to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %bPanExist, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool52.not = icmp eq i8 %113, 0
  br i1 %tobool52.not, label %land.lhs.true50.if.else56_crit_edge, label %land.lhs.true50.if.then54_crit_edge

land.lhs.true50.if.then54_crit_edge:              ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then54

land.lhs.true50.if.else56_crit_edge:              ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else56

if.then54:                                        ; preds = %land.lhs.true50.if.then54_crit_edge, %land.lhs.true38.thread.if.then54_crit_edge, %land.lhs.true38.if.then54_crit_edge
  tail call fastcc void @halbtc8723b1ant_PsTdma(ptr noundef %pBtCoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 13)
  tail call fastcc void @halbtc8723b1ant_CoexTableWithType(ptr noundef %pBtCoexist, i1 noundef zeroext false, i8 noundef zeroext 4)
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 6), align 2
  br label %cleanup

if.else56:                                        ; preds = %land.lhs.true50.if.else56_crit_edge, %land.lhs.true38.if.else56_crit_edge, %if.else34.thread.if.else56_crit_edge, %if.else34.if.else56_crit_edge
  tail call fastcc void @halbtc8723b1ant_PsTdma(ptr noundef %pBtCoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 32)
  tail call fastcc void @halbtc8723b1ant_CoexTableWithType(ptr noundef %pBtCoexist, i1 noundef zeroext false, i8 noundef zeroext 4)
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 6), align 2
  br label %cleanup

cleanup:                                          ; preds = %if.else56, %if.then54, %halbtc8723b1ant_CoexTableWithType.exit123, %sw.epilog.sink.split.i111, %land.lhs.true7.i73.i108.cleanup_crit_edge, %halbtc8723b1ant_CoexTableWithType.exit101, %halbtc8723b1ant_CoexTableWithType.exit, %if.then4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @halbtc8723b1ant_RunSwCoexistMechanism(ptr noundef %pBtCoexist) unnamed_addr #0 align 64 {
entry:
  %bWifiConnected.i = alloca i8, align 1
  %bWifiBusy.i = alloca i8, align 1
  %bBtHsOn.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %btLinkInfo.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bBtHsOn.i) #4
  %0 = ptrtoint ptr %bBtHsOn.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %bBtHsOn.i, align 1
  %fBtcGet.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 25
  %1 = ptrtoint ptr %fBtcGet.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fBtcGet.i, align 4
  %call.i = call zeroext i8 %2(ptr noundef %pBtCoexist, i8 noundef zeroext 0, ptr noundef nonnull %bBtHsOn.i) #4
  %3 = ptrtoint ptr %btLinkInfo.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %btLinkInfo.i, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %entry.halbtc8723b1ant_ActionAlgorithm.exit_crit_edge, label %if.end.i

entry.halbtc8723b1ant_ActionAlgorithm.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_ActionAlgorithm.exit

if.end.i:                                         ; preds = %entry
  %bScoExist.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 5, i32 1
  %5 = ptrtoint ptr %bScoExist.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bScoExist.i, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not.i = icmp eq i8 %6, 0
  %not.tobool1.not.i = xor i1 %tobool1.not.i, true
  %spec.select.i = zext i1 %not.tobool1.not.i to i8
  %bHidExist.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 5, i32 5
  %7 = ptrtoint ptr %bHidExist.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bHidExist.i, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not.i = icmp eq i8 %8, 0
  %inc6.i = select i1 %tobool1.not.i, i8 1, i8 2
  %numOfDiffProfile.1.i = select i1 %tobool4.not.i, i8 %spec.select.i, i8 %inc6.i
  %bPanExist.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 5, i32 7
  %9 = ptrtoint ptr %bPanExist.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bPanExist.i, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool8.not.i = icmp eq i8 %10, 0
  %not.tobool8.not.i = xor i1 %tobool8.not.i, true
  %inc10.i = zext i1 %not.tobool8.not.i to i8
  %numOfDiffProfile.2.i = add nuw nsw i8 %numOfDiffProfile.1.i, %inc10.i
  %bA2dpExist.i = getelementptr inbounds %struct.btc_coexist, ptr %pBtCoexist, i32 0, i32 5, i32 3
  %11 = ptrtoint ptr %bA2dpExist.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bA2dpExist.i, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool12.not.i = icmp eq i8 %12, 0
  %not.tobool12.not.i = xor i1 %tobool12.not.i, true
  %inc14.i = zext i1 %not.tobool12.not.i to i8
  %numOfDiffProfile.3.i = add nuw nsw i8 %numOfDiffProfile.2.i, %inc14.i
  %trunc.i = trunc i8 %numOfDiffProfile.3.i to i4
  %13 = zext i4 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.23)
  switch i4 %trunc.i, label %if.else168.i [
    i4 1, label %if.then17.i
    i4 2, label %if.then44.i
    i4 3, label %if.then108.i
  ]

if.then17.i:                                      ; preds = %if.end.i
  %14 = select i1 %tobool1.not.i, i1 %tobool4.not.i, i1 false
  %.mux.i = select i1 %tobool1.not.i, i8 2, i8 1
  %15 = select i1 %14, i1 %tobool12.not.i, i1 false
  %brmerge249.i = xor i1 %15, true
  %.mux.mux.i = select i1 %14, i8 3, i8 %.mux.i
  %brmerge250.i = select i1 %brmerge249.i, i1 true, i1 %tobool8.not.i
  %.mux.mux.mux.i = select i1 %15, i8 0, i8 %.mux.mux.i
  br i1 %brmerge250.i, label %if.then17.i.halbtc8723b1ant_ActionAlgorithm.exit_crit_edge, label %if.then31.i

if.then17.i.halbtc8723b1ant_ActionAlgorithm.exit_crit_edge: ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_ActionAlgorithm.exit

if.then31.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %bBtHsOn.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bBtHsOn.i, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool32.not.i = icmp eq i8 %17, 0
  %..i = select i1 %tobool32.not.i, i8 5, i8 6
  br label %halbtc8723b1ant_ActionAlgorithm.exit

if.then44.i:                                      ; preds = %if.end.i
  br i1 %tobool1.not.i, label %if.else66.i, label %if.then47.i

if.then47.i:                                      ; preds = %if.then44.i
  %18 = select i1 %tobool4.not.i, i1 %tobool12.not.i, i1 false
  %brmerge253.i = xor i1 %18, true
  %.mux254.i = select i1 %tobool4.not.i, i8 1, i8 2
  %brmerge255.i = select i1 %brmerge253.i, i1 true, i1 %tobool8.not.i
  %.mux254.mux.i = select i1 %18, i8 0, i8 %.mux254.i
  br i1 %brmerge255.i, label %if.then47.i.halbtc8723b1ant_ActionAlgorithm.exit_crit_edge, label %if.then58.i

if.then47.i.halbtc8723b1ant_ActionAlgorithm.exit_crit_edge: ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_ActionAlgorithm.exit

if.then58.i:                                      ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %bBtHsOn.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bBtHsOn.i, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool59.not.i = icmp eq i8 %20, 0
  %.242.i = select i1 %tobool59.not.i, i8 8, i8 1
  br label %halbtc8723b1ant_ActionAlgorithm.exit

if.else66.i:                                      ; preds = %if.then44.i
  br i1 %tobool4.not.i, label %if.else87.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.else66.i
  %brmerge257.i = select i1 %not.tobool12.not.i, i1 true, i1 %tobool8.not.i
  %.mux258.i = select i1 %tobool12.not.i, i8 0, i8 10
  br i1 %brmerge257.i, label %land.lhs.true.i.halbtc8723b1ant_ActionAlgorithm.exit_crit_edge, label %if.then82.i

land.lhs.true.i.halbtc8723b1ant_ActionAlgorithm.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_ActionAlgorithm.exit

if.then82.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %bBtHsOn.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bBtHsOn.i, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool83.not.i = icmp eq i8 %22, 0
  %.243.i = select i1 %tobool83.not.i, i8 8, i8 10
  br label %halbtc8723b1ant_ActionAlgorithm.exit

if.else87.i:                                      ; preds = %if.else66.i
  %brmerge259.i = select i1 %tobool8.not.i, i1 true, i1 %tobool12.not.i
  br i1 %brmerge259.i, label %if.else87.i.halbtc8723b1ant_ActionAlgorithm.exit_crit_edge, label %if.then95.i

if.else87.i.halbtc8723b1ant_ActionAlgorithm.exit_crit_edge: ; preds = %if.else87.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_ActionAlgorithm.exit

if.then95.i:                                      ; preds = %if.else87.i
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %bBtHsOn.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bBtHsOn.i, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool96.not.i = icmp eq i8 %24, 0
  %.244.i = select i1 %tobool96.not.i, i8 7, i8 4
  br label %halbtc8723b1ant_ActionAlgorithm.exit

if.then108.i:                                     ; preds = %if.end.i
  br i1 %tobool1.not.i, label %if.else149.i, label %if.then111.i

if.then111.i:                                     ; preds = %if.then108.i
  br i1 %tobool4.not.i, label %if.else133.i, label %land.lhs.true115.i

land.lhs.true115.i:                               ; preds = %if.then111.i
  %brmerge261.i = select i1 %not.tobool12.not.i, i1 true, i1 %tobool8.not.i
  %.mux262.i = select i1 %tobool12.not.i, i8 0, i8 2
  br i1 %brmerge261.i, label %land.lhs.true115.i.halbtc8723b1ant_ActionAlgorithm.exit_crit_edge, label %if.then128.i

land.lhs.true115.i.halbtc8723b1ant_ActionAlgorithm.exit_crit_edge: ; preds = %land.lhs.true115.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_ActionAlgorithm.exit

if.then128.i:                                     ; preds = %land.lhs.true115.i
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %bBtHsOn.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bBtHsOn.i, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool129.not.i = icmp eq i8 %26, 0
  %.245.i = select i1 %tobool129.not.i, i8 8, i8 10
  br label %halbtc8723b1ant_ActionAlgorithm.exit

if.else133.i:                                     ; preds = %if.then111.i
  %brmerge263.i = select i1 %tobool8.not.i, i1 true, i1 %tobool12.not.i
  br i1 %brmerge263.i, label %if.else133.i.halbtc8723b1ant_ActionAlgorithm.exit_crit_edge, label %if.then141.i

if.else133.i.halbtc8723b1ant_ActionAlgorithm.exit_crit_edge: ; preds = %if.else133.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_ActionAlgorithm.exit

if.then141.i:                                     ; preds = %if.else133.i
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %bBtHsOn.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bBtHsOn.i, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool142.not.i = icmp eq i8 %28, 0
  %.246.i = select i1 %tobool142.not.i, i8 8, i8 1
  br label %halbtc8723b1ant_ActionAlgorithm.exit

if.else149.i:                                     ; preds = %if.then108.i
  %brmerge264.i = select i1 %tobool4.not.i, i1 true, i1 %tobool8.not.i
  %brmerge265.i = select i1 %brmerge264.i, i1 true, i1 %tobool12.not.i
  br i1 %brmerge265.i, label %if.else149.i.halbtc8723b1ant_ActionAlgorithm.exit_crit_edge, label %if.then161.i

if.else149.i.halbtc8723b1ant_ActionAlgorithm.exit_crit_edge: ; preds = %if.else149.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_ActionAlgorithm.exit

if.then161.i:                                     ; preds = %if.else149.i
  call void @__sanitizer_cov_trace_pc() #6
  %29 = ptrtoint ptr %bBtHsOn.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bBtHsOn.i, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool162.not.i = icmp eq i8 %30, 0
  %.247.i = select i1 %tobool162.not.i, i8 9, i8 10
  br label %halbtc8723b1ant_ActionAlgorithm.exit

if.else168.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %numOfDiffProfile.3.i)
  %cmp170.i = icmp ult i8 %numOfDiffProfile.3.i, 3
  %brmerge266.i = select i1 %cmp170.i, i1 true, i1 %tobool1.not.i
  %brmerge267.i = select i1 %brmerge266.i, i1 true, i1 %tobool4.not.i
  %brmerge268.i = select i1 %brmerge267.i, i1 true, i1 %tobool8.not.i
  %brmerge269.i = select i1 %brmerge268.i, i1 true, i1 %tobool12.not.i
  br i1 %brmerge269.i, label %if.else168.i.halbtc8723b1ant_ActionAlgorithm.exit_crit_edge, label %if.then187.i

if.else168.i.halbtc8723b1ant_ActionAlgorithm.exit_crit_edge: ; preds = %if.else168.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %halbtc8723b1ant_ActionAlgorithm.exit

if.then187.i:                                     ; preds = %if.else168.i
  call void @__sanitizer_cov_trace_pc() #6
  %31 = ptrtoint ptr %bBtHsOn.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bBtHsOn.i, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool188.not.i = icmp eq i8 %32, 0
  %spec.select248.i = select i1 %tobool188.not.i, i8 8, i8 0
  br label %halbtc8723b1ant_ActionAlgorithm.exit

halbtc8723b1ant_ActionAlgorithm.exit:             ; preds = %if.then187.i, %if.else168.i.halbtc8723b1ant_ActionAlgorithm.exit_crit_edge, %if.then161.i, %if.else149.i.halbtc8723b1ant_ActionAlgorithm.exit_crit_edge, %if.then141.i, %if.else133.i.halbtc8723b1ant_ActionAlgorithm.exit_crit_edge, %if.then128.i, %land.lhs.true115.i.halbtc8723b1ant_ActionAlgorithm.exit_crit_edge, %if.then95.i, %if.else87.i.halbtc8723b1ant_ActionAlgorithm.exit_crit_edge, %if.then82.i, %land.lhs.true.i.halbtc8723b1ant_ActionAlgorithm.exit_crit_edge, %if.then58.i, %if.then47.i.halbtc8723b1ant_ActionAlgorithm.exit_crit_edge, %if.then31.i, %if.then17.i.halbtc8723b1ant_ActionAlgorithm.exit_crit_edge, %entry.halbtc8723b1ant_ActionAlgorithm.exit_crit_edge
  %retval.0.i = phi i8 [ 0, %entry.halbtc8723b1ant_ActionAlgorithm.exit_crit_edge ], [ 0, %if.else87.i.halbtc8723b1ant_ActionAlgorithm.exit_crit_edge ], [ 0, %if.else133.i.halbtc8723b1ant_ActionAlgorithm.exit_crit_edge ], [ 0, %if.else149.i.halbtc8723b1ant_ActionAlgorithm.exit_crit_edge ], [ 0, %if.else168.i.halbtc8723b1ant_ActionAlgorithm.exit_crit_edge ], [ %.mux.mux.mux.i, %if.then17.i.halbtc8723b1ant_ActionAlgorithm.exit_crit_edge ], [ %..i, %if.then31.i ], [ %.mux254.mux.i, %if.then47.i.halbtc8723b1ant_ActionAlgorithm.exit_crit_edge ], [ %.242.i, %if.then58.i ], [ %.mux258.i, %land.lhs.true.i.halbtc8723b1ant_ActionAlgorithm.exit_crit_edge ], [ %.243.i, %if.then82.i ], [ %.244.i, %if.then95.i ], [ %.mux262.i, %land.lhs.true115.i.halbtc8723b1ant_ActionAlgorithm.exit_crit_edge ], [ %.245.i, %if.then128.i ], [ %.246.i, %if.then141.i ], [ %.247.i, %if.then161.i ], [ %spec.select248.i, %if.then187.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bBtHsOn.i) #4
  store i8 %retval.0.i, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 31), align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bWifiConnected.i) #4
  %33 = ptrtoint ptr %bWifiConnected.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %bWifiConnected.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bWifiBusy.i) #4
  %34 = ptrtoint ptr %bWifiBusy.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %bWifiBusy.i, align 1
  %35 = ptrtoint ptr %fBtcGet.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fBtcGet.i, align 4
  %call.i6 = call zeroext i8 %36(ptr noundef %pBtCoexist, i8 noundef zeroext 2, ptr noundef nonnull %bWifiConnected.i) #4
  %37 = ptrtoint ptr %fBtcGet.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fBtcGet.i, align 4
  %call2.i = call zeroext i8 %38(ptr noundef %pBtCoexist, i8 noundef zeroext 3, ptr noundef nonnull %bWifiBusy.i) #4
  %39 = ptrtoint ptr %bWifiConnected.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %bWifiConnected.i, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i7 = icmp eq i8 %40, 0
  %41 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 32), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %41)
  %switch = icmp ult i8 %41, 2
  %or.cond = select i1 %tobool.not.i7, i1 true, i1 %switch
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bWifiBusy.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bWifiConnected.i) #4
  br i1 %or.cond, label %halbtc8723b1ant_ActionAlgorithm.exit.if.end_crit_edge, label %if.else

halbtc8723b1ant_ActionAlgorithm.exit.if.end_crit_edge: ; preds = %halbtc8723b1ant_ActionAlgorithm.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.else:                                          ; preds = %halbtc8723b1ant_ActionAlgorithm.exit
  call void @__sanitizer_cov_trace_pc() #6
  %42 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 31), align 4
  store i8 %42, ptr getelementptr inbounds (%struct.coex_dm_8723b_1ant, ptr @GLCoexDm8723b1Ant, i32 0, i32 30), align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %halbtc8723b1ant_ActionAlgorithm.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @EXhalbtc8723b1ant_Periodical.disVerInfoCnt, !1, !"disVerInfoCnt", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c", i32 2647, i32 12}
!2 = distinct !{null, !3, !"pCoexSta", i1 false, i1 false}
!3 = !{!"../drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c", i32 14, i32 36}
!4 = !{ptr @GLCoexSta8723b1Ant, !5, !"GLCoexSta8723b1Ant", i1 false, i1 false}
!5 = !{!"../drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c", i32 13, i32 35}
!6 = !{ptr @halbtc8723b1ant_TdmaDurationAdjustForAcl.up, !7, !"up", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c", i32 1356, i32 13}
!8 = !{ptr @halbtc8723b1ant_TdmaDurationAdjustForAcl.dn, !9, !"dn", i1 false, i1 false}
!9 = !{!"../drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c", i32 1356, i32 17}
!10 = !{ptr @halbtc8723b1ant_TdmaDurationAdjustForAcl.m, !11, !"m", i1 false, i1 false}
!11 = !{!"../drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c", i32 1356, i32 21}
!12 = !{ptr @halbtc8723b1ant_TdmaDurationAdjustForAcl.n, !13, !"n", i1 false, i1 false}
!13 = !{!"../drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c", i32 1356, i32 24}
!14 = !{ptr @halbtc8723b1ant_TdmaDurationAdjustForAcl.WaitCount, !15, !"WaitCount", i1 false, i1 false}
!15 = !{!"../drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c", i32 1356, i32 27}
!16 = distinct !{null, !17, !"pCoexDm", i1 false, i1 false}
!17 = !{!"../drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c", i32 12, i32 35}
!18 = !{ptr @GLCoexDm8723b1Ant, !19, !"GLCoexDm8723b1Ant", i1 false, i1 false}
!19 = !{!"../drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c", i32 11, i32 34}
!20 = !{ptr @halbtc8723b1ant_MonitorBtCtr.NumOfBtCounterChk, !21, !"NumOfBtCounterChk", i1 false, i1 false}
!21 = !{!"../drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c", i32 257, i32 12}
!22 = !{ptr @halbtc8723b1ant_MonitorWiFiCtr.nCCKLockCounter, !23, !"nCCKLockCounter", i1 false, i1 false}
!23 = !{!"../drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c", i32 306, i32 12}
!24 = !{ptr @halbtc8723b1ant_IsWifiStatusChanged.bPreWifiBusy, !25, !"bPreWifiBusy", i1 false, i1 false}
!25 = !{!"../drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c", i32 390, i32 14}
!26 = !{ptr @halbtc8723b1ant_IsWifiStatusChanged.bPreUnder4way, !27, !"bPreUnder4way", i1 false, i1 false}
!27 = !{!"../drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c", i32 390, i32 28}
!28 = !{ptr @halbtc8723b1ant_IsWifiStatusChanged.bPreBtHsOn, !29, !"bPreBtHsOn", i1 false, i1 false}
!29 = !{!"../drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c", i32 390, i32 43}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{i8 0, i8 2}
!40 = !{!"auto-init"}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.peeled.count", i32 2}
