; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.coex_dm_8192e_2ant = type { i8, i8, i8, i8, i8, i8, i8, i8, [5 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i32, i8, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i16, i8, i8, i8, i8, [3 x i8], i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.coex_sta_8192e_2ant = type { i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, [4 x i8], i8, [3 x [10 x i8]], [3 x i32], i8, i8, i8 }
%struct.btc_coexist = type { i8, ptr, %struct.btc_board_info, %struct.btc_bt_info, %struct.btc_stack_info, i32, %struct.btc_bt_link_info, i8, i8, i8, i8, i8, i8, i8, %struct.btc_statistics, [10 x i8], %struct.completion, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.btc_board_info = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.btc_bt_info = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i16, i32, i32, i32, i32, i8, i8, i32 }
%struct.btc_stack_info = type { i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.btc_bt_link_info = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.btc_statistics = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }

@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[BTCoex], Coex Mechanism Init!!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\0A ============[BT Coexist info]============\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\0A ===========[Under Manual Control]===========\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\0A ==========================================\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\0A %-35s = %d/ %d \00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Ant PG number/ Ant mechanism:\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\0A %-35s = %s / %d\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"BT stack/ hci ext ver\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Yes\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"No\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\0A %-35s = %d_%d/ 0x%x/ 0x%x(%d)\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CoexVer/ FwVer/ PatchVer\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\0A %-35s = %d / %d(%d)\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Dot11 channel / HsMode(HsChnl)\00", [33 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\0A %-35s = %3ph \00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"H2C Wifi inform bt chnl Info\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\0A %-35s = %d/ %d\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Wifi rssi/ HS rssi\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\0A %-35s = %d/ %d/ %d \00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Wifi link/ roam/ scan\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\0A %-35s = %s / %s/ %s \00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Wifi status\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"5G\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"2.4G\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Legacy\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HT40\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HT20\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"idle\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"uplink\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"downlink\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\0A %-35s = [%s/ %d/ %d] \00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"BT [status/ rssi/ retryCnt]\00", [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"inquiry/page scan\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"non-connected idle\00", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"connected-idle\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"busy\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\0A %-35s = %d / %d / %d / %d\00", [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SCO/HID/PAN/A2DP\00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\0A %-35s = %s\00", [19 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"BT Info A2DP rate\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Basic rate\00", [21 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"EDR rate\00", [23 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\0A %-35s = %7ph(%d)\00", [45 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\0A %-35s = %s/%s\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PS state, IPS/LPS\00", [46 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"IPS ON\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IPS OFF\00", [24 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LPS ON\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LPS OFF\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\0A %-35s = 0x%x \00", [16 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SS Type\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\0A %-35s\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"============[Sw mechanism]============\00", [57 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SM1[ShRf/ LpRA/ LimDig]\00", [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\0A %-35s = %d/ %d/ %d(0x%x) \00", [36 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"SM2[AgcT/ AdcB/ SwDacSwing(lvl)]\00", [63 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Rate Mask\00", [22 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"============[Fw mechanism]============\00", [57 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\0A %-35s = %5ph case-%d (auto:%d)\00", [63 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PS TDMA\00", [24 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DecBtPwr/ IgnWlanAct\00", [43 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"============[Hw setting]============\00", [59 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\0A %-35s = 0x%x\00", [17 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RF-A, 0x1e initVal\00", [45 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\0A %-35s = 0x%x/0x%x/0x%x/0x%x\00", [34 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"backup ARFR1/ARFR2/RL/AMaxTime\00", [33 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"0x430/0x434/0x42a/0x456\00", [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\0A %-35s = 0x%x/ 0x%x/ 0x%x\00", [37 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"0xc04/ 0xd04/ 0x90c\00", [44 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0x778\00", [26 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\0A %-35s = 0x%x/ 0x%x\00", [43 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"0x92c/ 0x930\00", [19 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0x40/ 0x4f\00", [21 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"0x550(bcn ctrl)/0x522\00", [42 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0xc50(dig)\00", [21 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\0A %-35s = 0x%x/ 0x%x/ 0x%x/ 0x%x\00", [63 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"0x6c0/0x6c4/0x6c8/0x6cc(coexTable)\00", [61 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"0x770(hp rx[31:16]/tx[15:0])\00", [35 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"0x774(lp rx[31:16]/tx[15:0])\00", [35 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[BTCoex], IPS ENTER notify\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[BTCoex], IPS LEAVE notify\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[BTCoex], LPS ENABLE notify\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[BTCoex], LPS DISABLE notify\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[BTCoex], SCAN START notify\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[BTCoex], SCAN FINISH notify\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[BTCoex], CONNECT START notify\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[BTCoex], CONNECT FINISH notify\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[BTCoex], MEDIA connect notify\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[BTCoex], MEDIA disconnect notify\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[BTCoex], FW write 0x66 = 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[BTCoex], DHCP Packet notify\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"[BTCoex], Bt info[%d], length=%d, hex data = [\00", [49 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"0x%02x]\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"0x%02x, \00", [23 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bit1, send wifi BW&Chnl to BT!!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"bit3, BT NOT ignore Wlan active!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[BTCoex], BT Non-Connected idle!!!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"[BTCoex], bt_infoNotify(), BT Connected-idle!!!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[BTCoex], bt_infoNotify(), BT SCO busy!!!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[BTCoex], bt_infoNotify(), BT ACL busy!!!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[BTCoex]bt_infoNotify(), BT Non-Defined state!!!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[BTCoex], Halt notify\0A\00", [41 x i8] zeroinitializer }, align 32
@ex_btc8192e2ant_periodical.dis_ver_info_cnt = internal global { i8, [31 x i8] } zeroinitializer, align 32
@.str.103 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"=======================Periodical=======================\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"************************************************\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Ant PG Num/ Ant Mech/ Ant Pos = %d/ %d/ %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"BT stack/ hci ext ver = %s / %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"CoexVer/ FwVer/ PatchVer = %d_%x/ 0x%x/ 0x%x(%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[BTCoex], 2Ant Init HW Config!!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[BTCoex], %s write Coex Table 0x6c0 = 0x%x, \00", [51 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"force to\00", [23 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.112 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"0x6c4 = 0x%x, 0x6c8 = 0x%x, 0x6cc = 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"[BTCoex], preVal0x6c0 = 0x%x, preVal0x6c4 = 0x%x, \00", [45 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"preVal0x6c8 = 0x%x, preVal0x6cc = 0x%x !!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[BTCoex], curVal0x6c0 = 0x%x, curVal0x6c4 = 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"curVal0x6c8 = 0x%x, curVal0x6cc = 0x%x !!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[BTCoex], set coex table, set 0x6c0 = 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[BTCoex], set coex table, set 0x6c4 = 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[BTCoex], set coex table, set 0x6c8 = 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[BTCoex], set coex table, set 0x6cc = 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[BTCoex], %s turn %s PS TDMA, type=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ON\00", [29 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OFF\00", [28 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[BTCoex], bPrePsTdmaOn = %d, bCurPsTdmaOn = %d!!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[BTCoex], prePsTdma = %d, curPsTdma = %d!!\0A\00", [52 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.126 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[BTCoex], FW write 0x60(5bytes) = 0x%x%08x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[BTCoex], %s set FW Dac Swing level = %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"[BTCoex] preFwDacSwingLvl=%d, curFwDacSwingLvl=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[BTCoex], Set Dac Swing Level = 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[BTCoex], FW write 0x64 = 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[BTCoex], %s Dec BT power level = %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[BTCoex], preBtDecPwrLvl=%d, curBtDecPwrLvl=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"[BTCoex] decrease Bt Power level = %d, FW write 0x62 = 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[BTCoex], %s Switch SS Type = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[BTCoex], REAL set SS Type = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[BTCoex], %s turn Rx RF Shrink = %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"[BTCoex]bPreRfRxLpfShrink=%d,bCurRfRxLpfShrink=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[BTCoex], Shrink RF Rx LPF corner!!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[BTCoex], Resume RF Rx LPF corner!!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[BTCoex], %s %s Agc Table\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Enable\00", [25 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Disable\00", [24 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[BTCoex], bPreAgcTableEn=%d, bCurAgcTableEn=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[BTCoex], BB Agc Table On!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[BTCoex], BB Agc Table Off!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"[BTCoex], %s turn DacSwing=%s, dac_swing_lvl = 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"[BTCoex], bPreDacSwingOn=%d, preDacSwingLvl = 0x%x, \00", [43 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"bCurDacSwingOn=%d, curDacSwingLvl = 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[BTCoex], Write SwDacSwing = 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@glcoex_dm_8192e_2ant = internal global { %struct.coex_dm_8192e_2ant, [48 x i8] } zeroinitializer, align 32
@glcoex_sta_8192e_2ant = internal global { %struct.coex_sta_8192e_2ant, [48 x i8] } zeroinitializer, align 32
@.str.150 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"BT Info[wifi fw]\00", [47 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"BT Info[bt rsp]\00", [16 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"BT Info[bt auto report]\00", [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"[BTCoex] High Priority Tx/Rx (reg 0x%x) = 0x%x(%d)/0x%x(%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"[BTCoex] Low Priority Tx/Rx (reg 0x%x) = 0x%x(%d)/0x%x(%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[BTCoex], %s turn Ignore WlanAct %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"[BTCoex]set FW for BT Ignore Wlan_Act, FW write 0x63 = 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[BTCoex], %s BT Auto report = %s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"[BTCoex], BT FW auto report : %s, FW write 0x68 = 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Enabled!!\00", [22 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[BTCoex], RunCoexistMechanism()===>\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[BTCoex], return for Manual CTRL <===\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[BTCoex], wifi is under IPS !!!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[BTCoex], BT is under inquiry/page scan !!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[BTCoex], Algorithm = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[BTCoex], Action 2-Ant common\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[BTCoex] preAlgorithm=%d, curAlgorithm=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Action 2-Ant, algorithm = SCO\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Action 2-Ant, algorithm = SCO+PAN(EDR)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Action 2-Ant, algorithm = HID\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Action 2-Ant, algorithm = A2DP\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Action 2-Ant, algorithm = A2DP+PAN(HS)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Action 2-Ant, algorithm = PAN(EDR)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Action 2-Ant, algorithm = HS mode\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Action 2-Ant, algorithm = PAN+A2DP\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Action 2-Ant, algorithm = PAN(EDR)+HID\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Action 2-Ant, algorithm = HID+A2DP+PAN\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Action 2-Ant, algorithm = HID+A2DP\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Action 2-Ant, algorithm = unknown!!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"No BT link exists!!!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SCO only\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HID only\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"A2DP only\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PAN(HS) only\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PAN(EDR) only\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SCO + HID\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SCO + A2DP ==> SCO\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SCO + PAN(HS)\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SCO + PAN(EDR)\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HID*2 + A2DP\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HID + A2DP\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HID + PAN(HS)\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"HID + PAN(EDR)\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"A2DP + PAN(HS)\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"A2DP + PAN(EDR)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SCO + HID + A2DP ==> HID\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SCO + HID + PAN(HS)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SCO + HID + PAN(EDR)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SCO + A2DP + PAN(HS)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SCO + A2DP + PAN(EDR)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HID + A2DP + PAN(HS)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HID + A2DP + PAN(EDR)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ErrorSCO+HID+A2DP+PAN(HS)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SCO+HID+A2DP+PAN(EDR)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[BTCoex], Wifi non-connected idle!!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Wifi connected + BT non connected-idle!!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Wifi connected + BT connected-idle!!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Wifi Connected-Busy + BT Busy!!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Wifi Connected-Idle + BT Busy!!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[BTCoex], A2dp, wifi/bt rssi both LOW!!\0A\00", [55 x i8] zeroinitializer }, align 32
@btc8192e2ant_tdma_duration_adjust.up = internal global { i32, [28 x i8] } zeroinitializer, align 32
@btc8192e2ant_tdma_duration_adjust.dn = internal global { i32, [28 x i8] } zeroinitializer, align 32
@btc8192e2ant_tdma_duration_adjust.m = internal global { i32, [28 x i8] } zeroinitializer, align 32
@btc8192e2ant_tdma_duration_adjust.n = internal global { i32, [28 x i8] } zeroinitializer, align 32
@btc8192e2ant_tdma_duration_adjust.wait_cnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.218 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[BTCoex], TdmaDurationAdjust()\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[BTCoex], first run TdmaDurationAdjust()!!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[BTCoex], retry_cnt = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"[BTCoex], up=%d, dn=%d, m=%d, n=%d, wait_cnt=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[BTCoex]Increase wifi duration!!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Reduce wifi duration for retry<3\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Decrease wifi duration for retryCounter>3!!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[BTCoex], max Interval = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[BTCoex], PsTdma type mismatch!!!, \00", [60 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"curPsTdma=%d, recordPsTdma=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"[BTCoex], roaming/link/scan is under progress, will adjust next time!!!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"[BTCoex], Query Bt Info, FW write 0x61 = 0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@btc8192e2ant_monitor_bt_enable_disable.pre_bt_disabled = internal global { i8, [31 x i8] } zeroinitializer, align 32
@btc8192e2ant_monitor_bt_enable_disable.bt_disable_cnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.230 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[BTCoex], BT is enabled !!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[BTCoex], bt all counters = 0, %d times!!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[BTCoex], BT is disabled !!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[BTCoex], BT is from %s to %s!!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@btc8192e2ant_is_wifi_status_changed.pre_wifi_busy = internal global { i8, [31 x i8] } zeroinitializer, align 32
@btc8192e2ant_is_wifi_status_changed.pre_under_4way = internal global { i8, [31 x i8] } zeroinitializer, align 32
@btc8192e2ant_is_wifi_status_changed.pre_bt_hs_on = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.235 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.236 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.237 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.238 = internal global [5 x i64] [i64 3, i64 4, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.239 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.240 = internal global [13 x i64] [i64 11, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.241 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.242 = internal global [23 x i64] [i64 21, i64 8, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 71]
@__sancov_gen_cov_switch_values.243 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.244 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.245 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.246 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.247 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.248 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.249 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.250 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.251 = internal global [8 x i64] [i64 6, i64 3, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.252 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.253 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.254 = internal global [4 x i64] [i64 2, i64 3, i64 2, i64 5]
@__sancov_gen_cov_switch_values.255 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.256 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.257 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.258 = internal global [8 x i64] [i64 6, i64 3, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.259 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.260 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.261 = internal global [8 x i64] [i64 6, i64 3, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.262 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.263 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.264 = internal global [8 x i64] [i64 6, i64 3, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.265 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.266 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.267 = internal global [8 x i64] [i64 6, i64 3, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.268 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.269 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.270 = internal global [8 x i64] [i64 6, i64 3, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.271 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.272 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.273 = internal global [8 x i64] [i64 6, i64 3, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.274 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.275 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.276 = internal global [8 x i64] [i64 6, i64 3, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2662, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2682, i32 14 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2685, i32 15 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2686, i32 15 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2689, i32 16 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2689, i32 38 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2692, i32 16 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2692, i32 38 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2693, i32 40 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2693, i32 48 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2698, i32 16 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2699, i32 6 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2707, i32 16 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2708, i32 6 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2711, i32 16 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2712, i32 6 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2716, i32 16 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2717, i32 6 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2722, i32 16 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2723, i32 6 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2730, i32 16 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2731, i32 6 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2731, i32 38 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2731, i32 45 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2732, i32 41 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2733, i32 38 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2733, i32 47 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2734, i32 22 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2736, i32 5 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2736, i32 16 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2738, i32 16 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2739, i32 6 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2740, i32 43 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2742, i32 9 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2744, i32 26 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2746, i32 29 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2746, i32 48 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2749, i32 16 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2750, i32 6 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2756, i32 16 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2757, i32 6 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2758, i32 27 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2758, i32 42 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2762, i32 18 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2769, i32 16 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2770, i32 6 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2771, i32 30 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2771, i32 41 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2772, i32 30 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2772, i32 41 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2775, i32 16 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2775, i32 36 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2779, i32 16 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2780, i32 6 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2782, i32 6 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2784, i32 16 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2785, i32 6 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2789, i32 36 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2794, i32 6 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2798, i32 6 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2799, i32 6 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2803, i32 6 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2808, i32 6 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2810, i32 16 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2811, i32 6 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2813, i32 16 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2814, i32 6 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2823, i32 6 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2829, i32 16 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2830, i32 6 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2833, i32 35 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2837, i32 16 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2838, i32 6 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2843, i32 6 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2848, i32 6 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2851, i32 35 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2859, i32 6 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2860, i32 6 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2864, i32 6 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2867, i32 6 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2879, i32 3 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2884, i32 3 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2895, i32 3 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2899, i32 3 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2910, i32 3 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2913, i32 3 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2922, i32 3 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2925, i32 3 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2943, i32 3 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2946, i32 3 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2967, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2981, i32 3 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 3001, i32 2 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 3009, i32 4 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 3012, i32 4 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 3031, i32 4 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 3048, i32 5 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 3105, i32 3 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 3109, i32 3 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 3114, i32 3 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 3118, i32 3 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 3122, i32 3 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 3148, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant [17 x i8] c"dis_ver_info_cnt\00", align 1
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 3157, i32 12 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 3162, i32 2 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 3166, i32 3 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 3168, i32 3 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 3172, i32 3 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 3179, i32 3 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2580, i32 2 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 1038, i32 2 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 1041, i32 2 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 1050, i32 3 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 1053, i32 3 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 1056, i32 3 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 1059, i32 3 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 1015, i32 2 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 1019, i32 2 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 1023, i32 2 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 1027, i32 2 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 1199, i32 2 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 1207, i32 3 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 1210, i32 3 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 1169, i32 2 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 828, i32 2 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 834, i32 3 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 734, i32 2 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 736, i32 2 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 762, i32 2 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 768, i32 3 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 750, i32 2 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 1375, i32 2 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 1340, i32 2 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 880, i32 2 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 887, i32 3 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 857, i32 3 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 866, i32 4 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 989, i32 2 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 996, i32 3 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 964, i32 3 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 973, i32 3 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 929, i32 2 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 937, i32 3 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 941, i32 3 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 908, i32 2 }
@___asan_gen_.730 = private unnamed_addr constant [21 x i8] c"glcoex_dm_8192e_2ant\00", align 1
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 11, i32 34 }
@___asan_gen_.733 = private unnamed_addr constant [22 x i8] c"glcoex_sta_8192e_2ant\00", align 1
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 13, i32 35 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 17, i32 2 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 18, i32 2 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 19, i32 2 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 401, i32 2 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 404, i32 2 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 1128, i32 2 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 1116, i32 2 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 802, i32 2 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 788, i32 2 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2467, i32 2 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2471, i32 3 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2477, i32 3 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2485, i32 3 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2492, i32 2 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2496, i32 3 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2501, i32 4 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2509, i32 4 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2514, i32 4 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2519, i32 4 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2524, i32 4 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2529, i32 4 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2534, i32 4 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2539, i32 4 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2544, i32 4 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2549, i32 4 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2554, i32 4 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2559, i32 4 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 2564, i32 4 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 529, i32 3 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 545, i32 4 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 550, i32 5 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 554, i32 5 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 559, i32 6 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 565, i32 6 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 576, i32 5 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 580, i32 5 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 585, i32 6 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 590, i32 6 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 601, i32 6 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 607, i32 6 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 616, i32 6 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 621, i32 6 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 630, i32 6 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 636, i32 6 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 648, i32 5 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 654, i32 6 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 659, i32 6 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 668, i32 6 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 673, i32 6 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 685, i32 6 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 691, i32 6 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 705, i32 6 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 710, i32 6 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 1459, i32 3 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 1494, i32 4 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 1520, i32 4 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 1546, i32 5 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 1550, i32 5 }
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 1965, i32 3 }
@___asan_gen_.919 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 1580, i32 13 }
@___asan_gen_.922 = private unnamed_addr constant [3 x i8] c"dn\00", align 1
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 1580, i32 17 }
@___asan_gen_.925 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 1580, i32 21 }
@___asan_gen_.928 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 1580, i32 24 }
@___asan_gen_.931 = private unnamed_addr constant [9 x i8] c"wait_cnt\00", align 1
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 1580, i32 27 }
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 1583, i32 2 }
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 1588, i32 3 }
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 1672, i32 3 }
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 1674, i32 3 }
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 1691, i32 5 }
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 1714, i32 5 }
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 1730, i32 4 }
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 1734, i32 3 }
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 1745, i32 3 }
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 1747, i32 3 }
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 1759, i32 4 }
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 421, i32 2 }
@___asan_gen_.970 = private unnamed_addr constant [16 x i8] c"pre_bt_disabled\00", align 1
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 163, i32 14 }
@___asan_gen_.973 = private unnamed_addr constant [15 x i8] c"bt_disable_cnt\00", align 1
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 164, i32 13 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 186, i32 3 }
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 190, i32 3 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 197, i32 4 }
@___asan_gen_.988 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 202, i32 3 }
@___asan_gen_.991 = private unnamed_addr constant [14 x i8] c"pre_wifi_busy\00", align 1
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 431, i32 14 }
@___asan_gen_.994 = private unnamed_addr constant [15 x i8] c"pre_under_4way\00", align 1
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 431, i32 37 }
@___asan_gen_.997 = private unnamed_addr constant [13 x i8] c"pre_bt_hs_on\00", align 1
@___asan_gen_.998 = private constant [68 x i8] c"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c\00", align 1
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.998, i32 432, i32 7 }
@llvm.compiler.used = appending global [241 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @ex_btc8192e2ant_periodical.dis_ver_info_cnt, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @glcoex_dm_8192e_2ant, ptr @glcoex_sta_8192e_2ant, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.163, ptr @.str.164, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.217, ptr @btc8192e2ant_tdma_duration_adjust.up, ptr @btc8192e2ant_tdma_duration_adjust.dn, ptr @btc8192e2ant_tdma_duration_adjust.m, ptr @btc8192e2ant_tdma_duration_adjust.n, ptr @btc8192e2ant_tdma_duration_adjust.wait_cnt, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @btc8192e2ant_monitor_bt_enable_disable.pre_bt_disabled, ptr @btc8192e2ant_monitor_bt_enable_disable.bt_disable_cnt, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @btc8192e2ant_is_wifi_status_changed.pre_wifi_busy, ptr @btc8192e2ant_is_wifi_status_changed.pre_under_4way, ptr @btc8192e2ant_is_wifi_status_changed.pre_bt_hs_on], section "llvm.metadata"
@0 = internal global [241 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ex_btc8192e2ant_periodical.dis_ver_info_cnt to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @glcoex_dm_8192e_2ant to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @glcoex_sta_8192e_2ant to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btc8192e2ant_tdma_duration_adjust.up to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btc8192e2ant_tdma_duration_adjust.dn to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btc8192e2ant_tdma_duration_adjust.m to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btc8192e2ant_tdma_duration_adjust.n to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btc8192e2ant_tdma_duration_adjust.wait_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btc8192e2ant_monitor_bt_enable_disable.pre_bt_disabled to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btc8192e2ant_monitor_bt_enable_disable.bt_disable_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btc8192e2ant_is_wifi_status_changed.pre_wifi_busy to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btc8192e2ant_is_wifi_status_changed.pre_under_4way to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btc8192e2ant_is_wifi_status_changed.pre_bt_hs_on to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8192e2ant_init_hwconfig(ptr noundef %btcoexist) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.108) #4
  %btc_get_rf_reg.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 28
  %2 = ptrtoint ptr %btc_get_rf_reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %btc_get_rf_reg.i, align 4
  %call.i = tail call i32 %3(ptr noundef %btcoexist, i8 noundef zeroext 0, i32 noundef 30, i32 noundef 1048575) #4
  store i32 %call.i, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 18), align 4
  %btc_read_4byte.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 22
  %4 = ptrtoint ptr %btc_read_4byte.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %btc_read_4byte.i, align 4
  %call1.i = tail call i32 %5(ptr noundef %btcoexist, i32 noundef 1072) #4
  store i32 %call1.i, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 38), align 4
  %6 = ptrtoint ptr %btc_read_4byte.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %btc_read_4byte.i, align 4
  %call3.i = tail call i32 %7(ptr noundef %btcoexist, i32 noundef 1076) #4
  store i32 %call3.i, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 39), align 4
  %btc_read_2byte.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 20
  %8 = ptrtoint ptr %btc_read_2byte.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %btc_read_2byte.i, align 4
  %call4.i = tail call zeroext i16 %9(ptr noundef %btcoexist, i32 noundef 1066) #4
  store i16 %call4.i, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 40), align 4
  %btc_read_1byte.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 17
  %10 = ptrtoint ptr %btc_read_1byte.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %btc_read_1byte.i, align 4
  %call5.i = tail call zeroext i8 %11(ptr noundef %btcoexist, i32 noundef 1110) #4
  store i8 %call5.i, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 41), align 2
  %btc_write_1byte.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %12 = ptrtoint ptr %btc_write_1byte.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %btc_write_1byte.i, align 4
  tail call void %13(ptr noundef %btcoexist, i32 noundef 79, i32 noundef 6) #4
  %14 = ptrtoint ptr %btc_write_1byte.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %btc_write_1byte.i, align 4
  tail call void %15(ptr noundef %btcoexist, i32 noundef 2372, i32 noundef 36) #4
  %btc_write_4byte.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 23
  %16 = ptrtoint ptr %btc_write_4byte.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %btc_write_4byte.i, align 4
  tail call void %17(ptr noundef %btcoexist, i32 noundef 2352, i32 noundef 7341824) #4
  %18 = ptrtoint ptr %btc_write_1byte.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %btc_write_1byte.i, align 4
  tail call void %19(ptr noundef %btcoexist, i32 noundef 2348, i32 noundef 32) #4
  %chip_interface.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 5
  %20 = ptrtoint ptr %chip_interface.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %chip_interface.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp.i = icmp eq i32 %21, 2
  %22 = ptrtoint ptr %btc_write_4byte.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %btc_write_4byte.i, align 4
  %..i = select i1 %cmp.i, i32 809697284, i32 805502980
  tail call void %23(ptr noundef %btcoexist, i32 noundef 100, i32 noundef %..i) #4
  tail call fastcc void @btc8192e2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext true, i32 noundef 1431655765, i32 noundef 1515870810) #4
  %24 = ptrtoint ptr %btc_write_4byte.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %btc_write_4byte.i, align 4
  tail call void %25(ptr noundef %btcoexist, i32 noundef 2136, i32 noundef 1431655765) #4
  %26 = ptrtoint ptr %btc_write_1byte.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %btc_write_1byte.i, align 4
  tail call void %27(ptr noundef %btcoexist, i32 noundef 1912, i32 noundef 3) #4
  %28 = ptrtoint ptr %btc_read_1byte.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %btc_read_1byte.i, align 4
  %call15.i = tail call zeroext i8 %29(ptr noundef %btcoexist, i32 noundef 1936) #4
  %30 = and i8 %call15.i, -64
  %31 = or i8 %30, 5
  %32 = ptrtoint ptr %btc_write_1byte.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %btc_write_1byte.i, align 4
  %conv20.i = zext i8 %31 to i32
  tail call void %33(ptr noundef %btcoexist, i32 noundef 1936, i32 noundef %conv20.i) #4
  %34 = ptrtoint ptr %btc_write_1byte.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %btc_write_1byte.i, align 4
  tail call void %35(ptr noundef %btcoexist, i32 noundef 1902, i32 noundef 4) #4
  %36 = ptrtoint ptr %btc_write_1byte.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %btc_write_1byte.i, align 4
  tail call void %37(ptr noundef %btcoexist, i32 noundef 64, i32 noundef 32) #4
  %38 = ptrtoint ptr %btc_read_2byte.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %btc_read_2byte.i, align 4
  %call24.i = tail call zeroext i16 %39(ptr noundef %btcoexist, i32 noundef 64) #4
  %40 = or i16 %call24.i, 512
  %btc_write_2byte.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 21
  %41 = ptrtoint ptr %btc_write_2byte.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %btc_write_2byte.i, align 4
  tail call void %42(ptr noundef %btcoexist, i32 noundef 64, i16 noundef zeroext %40) #4
  %43 = ptrtoint ptr %btc_read_1byte.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %btc_read_1byte.i, align 4
  %call29.i = tail call zeroext i8 %44(ptr noundef %btcoexist, i32 noundef 257) #4
  %45 = or i8 %call29.i, 16
  %46 = ptrtoint ptr %btc_write_1byte.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %btc_write_1byte.i, align 4
  %conv34.i = zext i8 %45 to i32
  tail call void %47(ptr noundef %btcoexist, i32 noundef 257, i32 noundef %conv34.i) #4
  %48 = ptrtoint ptr %btc_read_1byte.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %btc_read_1byte.i, align 4
  %call36.i = tail call zeroext i8 %49(ptr noundef %btcoexist, i32 noundef 147) #4
  %50 = or i8 %call36.i, 1
  %51 = ptrtoint ptr %btc_write_1byte.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %btc_write_1byte.i, align 4
  %conv41.i = zext i8 %50 to i32
  tail call void %52(ptr noundef %btcoexist, i32 noundef 147, i32 noundef %conv41.i) #4
  %53 = ptrtoint ptr %btc_read_1byte.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %btc_read_1byte.i, align 4
  %call43.i = tail call zeroext i8 %54(ptr noundef %btcoexist, i32 noundef 7) #4
  %55 = or i8 %call43.i, 1
  %56 = ptrtoint ptr %btc_write_1byte.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %btc_write_1byte.i, align 4
  %conv48.i = zext i8 %55 to i32
  tail call void %57(ptr noundef %btcoexist, i32 noundef 7, i32 noundef %conv48.i) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8192e2ant_init_coex_dm(ptr noundef %btcoexist) local_unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i.i7.i = alloca [1 x i8], align 1
  %h2c_parameter.i.i.i = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str) #4
  tail call fastcc void @btc8192e2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext true, i1 noundef zeroext false, i8 noundef zeroext 1) #4
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %3, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.110, i32 noundef 6) #4
  store i8 6, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 3), align 1
  %4 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i.i) #4
  %6 = ptrtoint ptr %h2c_parameter.i.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 6, ptr %h2c_parameter.i.i.i, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %5, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.129, i32 noundef 6) #4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %5, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.130, i32 noundef 6) #4
  %btc_fill_h2c.i.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %7 = ptrtoint ptr %btc_fill_h2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %btc_fill_h2c.i.i.i, align 4
  call void %8(ptr noundef %btcoexist, i8 noundef zeroext 100, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i.i) #4
  %9 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 3), align 1
  store i8 %9, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 2), align 2
  %10 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.110, i32 noundef 0) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %12 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i7.i) #4
  %14 = ptrtoint ptr %h2c_parameter.i.i7.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %h2c_parameter.i.i7.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %13, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef 0, i32 noundef 0) #4
  %15 = ptrtoint ptr %btc_fill_h2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %btc_fill_h2c.i.i.i, align 4
  call void %16(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i7.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i7.i) #4
  %17 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  store i8 %17, ptr @glcoex_dm_8192e_2ant, align 4
  call fastcc void @btc8192e2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext true, i32 noundef 1431655765, i32 noundef 1515870810) #4
  call fastcc void @btc8192e2ant_switch_ss_type(ptr noundef %btcoexist, i1 noundef zeroext true, i8 noundef zeroext 2) #4
  call fastcc void @btc8192e2ant_sw_mechanism1(ptr noundef %btcoexist, i1 noundef zeroext false) #4
  call fastcc void @btc8192e2ant_sw_mechanism2(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 24) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8192e2ant_display_coex_info(ptr noundef %btcoexist, ptr noundef %m) local_unnamed_addr #0 align 64 {
entry:
  %roam = alloca i8, align 1
  %scan = alloca i8, align 1
  %link = alloca i8, align 1
  %wifi_under_5g = alloca i8, align 1
  %bt_hs_on = alloca i8, align 1
  %wifi_busy = alloca i8, align 1
  %wifi_rssi = alloca i32, align 4
  %bt_hs_rssi = alloca i32, align 4
  %wifi_bw = alloca i32, align 4
  %wifi_traffic_dir = alloca i32, align 4
  %wifi_dot11_chnl = alloca i8, align 1
  %wifi_hs_chnl = alloca i8, align 1
  %fw_ver = alloca i32, align 4
  %bt_patch_ver = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %stack_info2 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %roam) #4
  %0 = ptrtoint ptr %roam to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %roam, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %scan) #4
  %1 = ptrtoint ptr %scan to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %scan, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link) #4
  %2 = ptrtoint ptr %link to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %link, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_under_5g) #4
  %3 = ptrtoint ptr %wifi_under_5g to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %wifi_under_5g, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_hs_on) #4
  %4 = ptrtoint ptr %bt_hs_on to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %bt_hs_on, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_busy) #4
  %5 = ptrtoint ptr %wifi_busy to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %wifi_busy, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_rssi) #4
  %6 = ptrtoint ptr %wifi_rssi to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %wifi_rssi, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bt_hs_rssi) #4
  %7 = ptrtoint ptr %bt_hs_rssi to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %bt_hs_rssi, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_bw) #4
  %8 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %wifi_bw, align 4, !annotation !504
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_traffic_dir) #4
  %9 = ptrtoint ptr %wifi_traffic_dir to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %wifi_traffic_dir, align 4, !annotation !504
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_dot11_chnl) #4
  %10 = ptrtoint ptr %wifi_dot11_chnl to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %wifi_dot11_chnl, align 1, !annotation !504
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_hs_chnl) #4
  %11 = ptrtoint ptr %wifi_hs_chnl to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %wifi_hs_chnl, align 1, !annotation !504
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_ver) #4
  %12 = ptrtoint ptr %fw_ver to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %fw_ver, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bt_patch_ver) #4
  %13 = ptrtoint ptr %bt_patch_ver to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %bt_patch_ver, align 4
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.1) #4
  %manual_control = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 13
  %14 = ptrtoint ptr %manual_control to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %manual_control, align 2, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.2) #4
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.3) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pg_ant_num = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %pg_ant_num to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pg_ant_num, align 1
  %conv = zext i8 %17 to i32
  %btdm_ant_num = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %btdm_ant_num to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %btdm_ant_num, align 1
  %conv3 = zext i8 %19 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef %conv, i32 noundef %conv3) #4
  %20 = ptrtoint ptr %stack_info2 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %stack_info2, align 2, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool4.not = icmp eq i8 %21, 0
  %cond = select i1 %tobool4.not, ptr @.str.9, ptr @.str.8
  %hci_version = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %hci_version to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %hci_version, align 2
  %conv6 = zext i16 %23 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull %cond, i32 noundef %conv6) #4
  %btc_get = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %24 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %btc_get, align 4
  %call = call zeroext i1 %25(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %bt_patch_ver) #4
  %26 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %btc_get, align 4
  %call8 = call zeroext i1 %27(ptr noundef %btcoexist, i8 noundef zeroext 26, ptr noundef nonnull %fw_ver) #4
  %28 = ptrtoint ptr %fw_ver to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fw_ver, align 4
  %30 = ptrtoint ptr %bt_patch_ver to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bt_patch_ver, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 20130902, i32 noundef 52, i32 noundef %29, i32 noundef %31, i32 noundef %31) #4
  %32 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %btc_get, align 4
  %call10 = call zeroext i1 %33(ptr noundef %btcoexist, i8 noundef zeroext 0, ptr noundef nonnull %bt_hs_on) #4
  %34 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %btc_get, align 4
  %call12 = call zeroext i1 %35(ptr noundef %btcoexist, i8 noundef zeroext 37, ptr noundef nonnull %wifi_dot11_chnl) #4
  %36 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %btc_get, align 4
  %call14 = call zeroext i1 %37(ptr noundef %btcoexist, i8 noundef zeroext 39, ptr noundef nonnull %wifi_hs_chnl) #4
  %38 = ptrtoint ptr %wifi_dot11_chnl to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %wifi_dot11_chnl, align 1
  %conv15 = zext i8 %39 to i32
  %40 = ptrtoint ptr %bt_hs_on to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %bt_hs_on, align 1, !range !505
  %42 = zext i8 %41 to i32
  %43 = ptrtoint ptr %wifi_hs_chnl to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %wifi_hs_chnl, align 1
  %conv18 = zext i8 %44 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %conv15, i32 noundef %42, i32 noundef %conv18) #4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 45)) #4
  %45 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %btc_get, align 4
  %call20 = call zeroext i1 %46(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi) #4
  %47 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %btc_get, align 4
  %call22 = call zeroext i1 %48(ptr noundef %btcoexist, i8 noundef zeroext 23, ptr noundef nonnull %bt_hs_rssi) #4
  %49 = ptrtoint ptr %wifi_rssi to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %wifi_rssi, align 4
  %51 = ptrtoint ptr %bt_hs_rssi to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %bt_hs_rssi, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef %50, i32 noundef %52) #4
  %53 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %btc_get, align 4
  %call24 = call zeroext i1 %54(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %scan) #4
  %55 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %btc_get, align 4
  %call26 = call zeroext i1 %56(ptr noundef %btcoexist, i8 noundef zeroext 6, ptr noundef nonnull %link) #4
  %57 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %btc_get, align 4
  %call28 = call zeroext i1 %58(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %roam) #4
  %59 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %link, align 1, !range !505
  %61 = zext i8 %60 to i32
  %62 = ptrtoint ptr %roam to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %roam, align 1, !range !505
  %64 = zext i8 %63 to i32
  %65 = ptrtoint ptr %scan to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %scan, align 1, !range !505
  %67 = zext i8 %66 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef %61, i32 noundef %64, i32 noundef %67) #4
  %68 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %btc_get, align 4
  %call36 = call zeroext i1 %69(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef nonnull %wifi_under_5g) #4
  %70 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %btc_get, align 4
  %call38 = call zeroext i1 %71(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef nonnull %wifi_bw) #4
  %72 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %btc_get, align 4
  %call40 = call zeroext i1 %73(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %wifi_busy) #4
  %74 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %btc_get, align 4
  %call42 = call zeroext i1 %75(ptr noundef %btcoexist, i8 noundef zeroext 25, ptr noundef nonnull %wifi_traffic_dir) #4
  %76 = ptrtoint ptr %wifi_under_5g to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %wifi_under_5g, align 1, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool43.not = icmp eq i8 %77, 0
  %cond45 = select i1 %tobool43.not, ptr @.str.23, ptr @.str.22
  %78 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %wifi_bw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp = icmp eq i32 %79, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %79)
  %cmp47 = icmp eq i32 %79, 2
  %cond49 = select i1 %cmp47, ptr @.str.25, ptr @.str.26
  %cond50 = select i1 %cmp, ptr @.str.24, ptr %cond49
  %80 = ptrtoint ptr %wifi_busy to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %wifi_busy, align 1, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool51.not = icmp eq i8 %81, 0
  br i1 %tobool51.not, label %if.end.cond.end57_crit_edge, label %cond.false53

if.end.cond.end57_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end57

cond.false53:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %82 = ptrtoint ptr %wifi_traffic_dir to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %wifi_traffic_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp54 = icmp eq i32 %83, 0
  %cond56 = select i1 %cmp54, ptr @.str.28, ptr @.str.29
  br label %cond.end57

cond.end57:                                       ; preds = %cond.false53, %if.end.cond.end57_crit_edge
  %cond58 = phi ptr [ %cond56, %cond.false53 ], [ @.str.27, %if.end.cond.end57_crit_edge ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, ptr noundef nonnull %cond45, ptr noundef nonnull %cond50, ptr noundef nonnull %cond58) #4
  %bt_info = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 3
  %84 = ptrtoint ptr %bt_info to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %bt_info, align 4, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool59.not = icmp eq i8 %85, 0
  br i1 %tobool59.not, label %cond.false62, label %cond.end57.cond.end81_crit_edge

cond.end57.cond.end81_crit_edge:                  ; preds = %cond.end57
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end81

cond.false62:                                     ; preds = %cond.end57
  %86 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 17), align 4, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool63.not = icmp eq i8 %86, 0
  br i1 %tobool63.not, label %cond.false66, label %cond.false62.cond.end81_crit_edge

cond.false62.cond.end81_crit_edge:                ; preds = %cond.false62
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end81

cond.false66:                                     ; preds = %cond.false62
  %87 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 44), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %cmp68 = icmp eq i8 %87, 0
  br i1 %cmp68, label %cond.false66.cond.end81_crit_edge, label %cond.false71

cond.false66.cond.end81_crit_edge:                ; preds = %cond.false66
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end81

cond.false71:                                     ; preds = %cond.false66
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %87)
  %cmp74 = icmp eq i8 %87, 1
  %cond76 = select i1 %cmp74, ptr @.str.35, ptr @.str.36
  br label %cond.end81

cond.end81:                                       ; preds = %cond.false71, %cond.false66.cond.end81_crit_edge, %cond.false62.cond.end81_crit_edge, %cond.end57.cond.end81_crit_edge
  %cond82 = phi ptr [ @.str.32, %cond.end57.cond.end81_crit_edge ], [ @.str.33, %cond.false62.cond.end81_crit_edge ], [ %cond76, %cond.false71 ], [ @.str.34, %cond.false66.cond.end81_crit_edge ]
  %88 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 11), align 4
  %conv83 = zext i8 %88 to i32
  %89 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 18), align 1
  %conv84 = zext i8 %89 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, ptr noundef nonnull %cond82, i32 noundef %conv83, i32 noundef %conv84) #4
  %sco_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 4, i32 4
  %90 = ptrtoint ptr %sco_exist to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %sco_exist, align 2, !range !505
  %92 = zext i8 %91 to i32
  %hid_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 4, i32 7
  %93 = ptrtoint ptr %hid_exist to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %hid_exist, align 1, !range !505
  %95 = zext i8 %94 to i32
  %pan_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 4, i32 9
  %96 = ptrtoint ptr %pan_exist to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %pan_exist, align 1, !range !505
  %98 = zext i8 %97 to i32
  %a2dp_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 4, i32 6
  %99 = ptrtoint ptr %a2dp_exist to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %a2dp_exist, align 2, !range !505
  %101 = zext i8 %100 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef %92, i32 noundef %95, i32 noundef %98, i32 noundef %101) #4
  %btc_disp_dbg_msg = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 30
  %102 = ptrtoint ptr %btc_disp_dbg_msg to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %btc_disp_dbg_msg, align 4
  call void %103(ptr noundef %btcoexist, i8 noundef zeroext 1, ptr noundef %m) #4
  %104 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 19), align 2
  %105 = and i8 %104, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool95.not = icmp eq i8 %105, 0
  %cond96 = select i1 %tobool95.not, ptr @.str.42, ptr @.str.41
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef nonnull %cond96) #4
  %106 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 16, i32 0), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool100.not = icmp eq i32 %106, 0
  br i1 %tobool100.not, label %cond.end81.for.inc_crit_edge, label %if.then101

cond.end81.for.inc_crit_edge:                     ; preds = %cond.end81
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then101:                                       ; preds = %cond.end81
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.150, ptr noundef getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 15, i32 0), i32 noundef %106) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then101, %cond.end81.for.inc_crit_edge
  %107 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 16, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool100.not.1 = icmp eq i32 %107, 0
  br i1 %tobool100.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then101.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

if.then101.1:                                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.151, ptr noundef getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 15, i32 1), i32 noundef %107) #4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then101.1, %for.inc.for.inc.1_crit_edge
  %108 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 16, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool100.not.2 = icmp eq i32 %108, 0
  br i1 %tobool100.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then101.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2

if.then101.2:                                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.152, ptr noundef getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 15, i32 2), i32 noundef %108) #4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then101.2, %for.inc.1.for.inc.2_crit_edge
  %109 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 6), align 2, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool111.not = icmp eq i8 %109, 0
  %cond113 = select i1 %tobool111.not, ptr @.str.47, ptr @.str.46
  %110 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 5), align 1, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool114.not = icmp eq i8 %110, 0
  %cond116 = select i1 %tobool114.not, ptr @.str.49, ptr @.str.48
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, ptr noundef nonnull %cond113, ptr noundef nonnull %cond116) #4
  %111 = ptrtoint ptr %btc_disp_dbg_msg to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %btc_disp_dbg_msg, align 4
  call void %112(ptr noundef %btcoexist, i8 noundef zeroext 3, ptr noundef %m) #4
  %113 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 47), align 2
  %conv118 = zext i8 %113 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, i32 noundef %conv118) #4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53) #4
  %114 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 17), align 1, !range !505
  %115 = zext i8 %114 to i32
  %116 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 20), align 1, !range !505
  %117 = zext i8 %116 to i32
  %118 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 37), align 2, !range !505
  %119 = zext i8 %118 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.54, i32 noundef %115, i32 noundef %117, i32 noundef %119) #4
  %120 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 28), align 1, !range !505
  %121 = zext i8 %120 to i32
  %122 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 26), align 1, !range !505
  %123 = zext i8 %122 to i32
  %124 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 23), align 4, !range !505
  %125 = zext i8 %124 to i32
  %126 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 24), align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, i32 noundef %121, i32 noundef %123, i32 noundef %125, i32 noundef %126) #4
  %ra_mask = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 3, i32 27
  %127 = ptrtoint ptr %ra_mask to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %ra_mask, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.57, i32 noundef %128) #4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.58) #4
  %129 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 7), align 1
  %conv133 = zext i8 %129 to i32
  %130 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 11), align 1, !range !505
  %131 = zext i8 %130 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, ptr noundef getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8), i32 noundef %conv133, i32 noundef %131) #4
  %132 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %conv136 = zext i8 %132 to i32
  %133 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 4), align 4, !range !505
  %134 = zext i8 %133 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.61, i32 noundef %conv136, i32 noundef %134) #4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.62) #4
  %135 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 18), align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, i32 noundef %135) #4
  %136 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 38), align 4
  %137 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 39), align 4
  %138 = load i16, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 40), align 4
  %conv139 = zext i16 %138 to i32
  %139 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 41), align 2
  %conv140 = zext i8 %139 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, i32 noundef %136, i32 noundef %137, i32 noundef %conv139, i32 noundef %conv140) #4
  %btc_read_4byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 22
  %140 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %btc_read_4byte, align 4
  %call141 = call i32 %141(ptr noundef %btcoexist, i32 noundef 1072) #4
  %142 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %btc_read_4byte, align 4
  %call144 = call i32 %143(ptr noundef %btcoexist, i32 noundef 1076) #4
  %btc_read_2byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 20
  %144 = ptrtoint ptr %btc_read_2byte to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %btc_read_2byte, align 4
  %call146 = call zeroext i16 %145(ptr noundef %btcoexist, i32 noundef 1066) #4
  %btc_read_1byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 17
  %146 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %btc_read_1byte, align 4
  %call148 = call zeroext i8 %147(ptr noundef %btcoexist, i32 noundef 1110) #4
  %conv153 = zext i16 %call146 to i32
  %conv155 = zext i8 %call148 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.67, i32 noundef %call141, i32 noundef %call144, i32 noundef %conv153, i32 noundef %conv155) #4
  %148 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %btc_read_4byte, align 4
  %call157 = call i32 %149(ptr noundef %btcoexist, i32 noundef 3076) #4
  %150 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %btc_read_4byte, align 4
  %call160 = call i32 %151(ptr noundef %btcoexist, i32 noundef 3332) #4
  %152 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %btc_read_4byte, align 4
  %call163 = call i32 %153(ptr noundef %btcoexist, i32 noundef 2316) #4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69, i32 noundef %call157, i32 noundef %call160, i32 noundef %call163) #4
  %154 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %btc_read_1byte, align 4
  %call169 = call zeroext i8 %155(ptr noundef %btcoexist, i32 noundef 1912) #4
  %conv172 = zext i8 %call169 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.70, i32 noundef %conv172) #4
  %156 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %btc_read_1byte, align 4
  %call174 = call zeroext i8 %157(ptr noundef %btcoexist, i32 noundef 2348) #4
  %158 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %btc_read_4byte, align 4
  %call177 = call i32 %159(ptr noundef %btcoexist, i32 noundef 2352) #4
  %conv180 = zext i8 %call174 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, i32 noundef %conv180, i32 noundef %call177) #4
  %160 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %btc_read_1byte, align 4
  %call183 = call zeroext i8 %161(ptr noundef %btcoexist, i32 noundef 64) #4
  %162 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %btc_read_1byte, align 4
  %call186 = call zeroext i8 %163(ptr noundef %btcoexist, i32 noundef 79) #4
  %conv189 = zext i8 %call183 to i32
  %conv191 = zext i8 %call186 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.73, i32 noundef %conv189, i32 noundef %conv191) #4
  %164 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %btc_read_4byte, align 4
  %call193 = call i32 %165(ptr noundef %btcoexist, i32 noundef 1360) #4
  %166 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %btc_read_1byte, align 4
  %call196 = call zeroext i8 %167(ptr noundef %btcoexist, i32 noundef 1314) #4
  %conv200 = zext i8 %call196 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.74, i32 noundef %call193, i32 noundef %conv200) #4
  %168 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %btc_read_4byte, align 4
  %call202 = call i32 %169(ptr noundef %btcoexist, i32 noundef 3152) #4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.75, i32 noundef %call202) #4
  %170 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %btc_read_4byte, align 4
  %call206 = call i32 %171(ptr noundef %btcoexist, i32 noundef 1728) #4
  %172 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %btc_read_4byte, align 4
  %call209 = call i32 %173(ptr noundef %btcoexist, i32 noundef 1732) #4
  %174 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %btc_read_4byte, align 4
  %call212 = call i32 %175(ptr noundef %btcoexist, i32 noundef 1736) #4
  %176 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %btc_read_1byte, align 4
  %call215 = call zeroext i8 %177(ptr noundef %btcoexist, i32 noundef 1740) #4
  %conv221 = zext i8 %call215 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77, i32 noundef %call206, i32 noundef %call209, i32 noundef %call212, i32 noundef %conv221) #4
  %178 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 8), align 4
  %179 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 7), align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.78, i32 noundef %178, i32 noundef %179) #4
  %180 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 10), align 4
  %181 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 9), align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.79, i32 noundef %180, i32 noundef %181) #4
  %auto_report_2ant = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 8
  %182 = ptrtoint ptr %auto_report_2ant to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %auto_report_2ant, align 1, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %183)
  %tobool222.not = icmp eq i8 %183, 0
  br i1 %tobool222.not, label %for.inc.2.if.end224_crit_edge, label %if.then223

for.inc.2.if.end224_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end224

if.then223:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %184 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %adapter.i, align 4
  %186 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %btc_read_4byte, align 4
  %call.i = call i32 %187(ptr noundef %btcoexist, i32 noundef 1904) #4
  %and.i = and i32 %call.i, 65535
  %shr.i = lshr i32 %call.i, 16
  %188 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %btc_read_4byte, align 4
  %call3.i = call i32 %189(ptr noundef %btcoexist, i32 noundef 1908) #4
  %and4.i = and i32 %call3.i, 65535
  %shr6.i = lshr i32 %call3.i, 16
  store i32 %and.i, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 7), align 4
  store i32 %shr.i, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 8), align 4
  store i32 %and4.i, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 9), align 4
  store i32 %shr6.i, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 10), align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %185, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.153, i32 noundef 1904, i32 noundef %and.i, i32 noundef %and.i, i32 noundef %shr.i, i32 noundef %shr.i) #4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %185, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.154, i32 noundef 1908, i32 noundef %and4.i, i32 noundef %and4.i, i32 noundef %shr6.i, i32 noundef %shr6.i) #4
  %btc_write_1byte.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %190 = ptrtoint ptr %btc_write_1byte.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %btc_write_1byte.i, align 4
  call void %191(ptr noundef %btcoexist, i32 noundef 1902, i32 noundef 12) #4
  br label %if.end224

if.end224:                                        ; preds = %if.then223, %for.inc.2.if.end224_crit_edge
  %192 = ptrtoint ptr %btc_disp_dbg_msg to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %btc_disp_dbg_msg, align 4
  call void %193(ptr noundef %btcoexist, i8 noundef zeroext 0, ptr noundef %m) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bt_patch_ver) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_ver) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_hs_chnl) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_dot11_chnl) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_traffic_dir) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_bw) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bt_hs_rssi) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_busy) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_hs_on) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_under_5g) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %scan) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %roam) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8192e2ant_ips_notify(ptr noundef %btcoexist, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i.i.i = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %2 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %type, label %entry.if.end7_crit_edge [
    i8 1, label %if.then
    i8 0, label %if.then5
  ]

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.80) #4
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 6), align 2
  tail call fastcc void @btc8192e2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 1) #4
  tail call fastcc void @btc8192e2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext false) #4
  %3 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adapter, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %4, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.111, i32 noundef 0) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %5 = load i8, ptr @glcoex_dm_8192e_2ant, align 4
  %conv2.i.i = zext i8 %5 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %4, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %conv2.i.i, i32 noundef 0) #4
  %6 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %7 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i.i) #4
  %9 = ptrtoint ptr %h2c_parameter.i.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %6, ptr %h2c_parameter.i.i.i, align 1
  %conv.i.i.i = zext i8 %6 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %8, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef %conv.i.i.i, i32 noundef %conv.i.i.i) #4
  %btc_fill_h2c.i.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %10 = ptrtoint ptr %btc_fill_h2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %btc_fill_h2c.i.i.i, align 4
  call void %11(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i.i) #4
  %12 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  store i8 %12, ptr @glcoex_dm_8192e_2ant, align 4
  call fastcc void @btc8192e2ant_sw_mechanism1(ptr noundef %btcoexist, i1 noundef zeroext false) #4
  call fastcc void @btc8192e2ant_sw_mechanism2(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 24) #4
  call fastcc void @btc8192e2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1515870810) #4
  br label %if.end7

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.81) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 6), align 2
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8192e2ant_lps_notify(ptr nocapture noundef readonly %btcoexist, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %2 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.235)
  switch i8 %type, label %entry.if.end7_crit_edge [
    i8 1, label %entry.if.end7.sink.split_crit_edge
    i8 0, label %if.then5
  ]

entry.if.end7.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.sink.split

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.sink.split

if.end7.sink.split:                               ; preds = %if.then5, %entry.if.end7.sink.split_crit_edge
  %.str.83.sink = phi ptr [ @.str.83, %if.then5 ], [ @.str.82, %entry.if.end7.sink.split_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.83.sink) #4
  store i8 %type, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 5), align 1
  br label %if.end7

if.end7:                                          ; preds = %if.end7.sink.split, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8192e2ant_scan_notify(ptr nocapture noundef readonly %btcoexist, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %2 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.236)
  switch i8 %type, label %entry.if.end6_crit_edge [
    i8 1, label %entry.if.end6.sink.split_crit_edge
    i8 0, label %if.then5
  ]

entry.if.end6.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6.sink.split

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6.sink.split

if.end6.sink.split:                               ; preds = %if.then5, %entry.if.end6.sink.split_crit_edge
  %.str.85.sink = phi ptr [ @.str.85, %if.then5 ], [ @.str.84, %entry.if.end6.sink.split_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.85.sink) #4
  br label %if.end6

if.end6:                                          ; preds = %if.end6.sink.split, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8192e2ant_connect_notify(ptr nocapture noundef readonly %btcoexist, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %2 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.237)
  switch i8 %type, label %entry.if.end6_crit_edge [
    i8 1, label %entry.if.end6.sink.split_crit_edge
    i8 0, label %if.then5
  ]

entry.if.end6.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6.sink.split

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6.sink.split

if.end6.sink.split:                               ; preds = %if.then5, %entry.if.end6.sink.split_crit_edge
  %.str.87.sink = phi ptr [ @.str.87, %if.then5 ], [ @.str.86, %entry.if.end6.sink.split_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.87.sink) #4
  br label %if.end6

if.end6:                                          ; preds = %if.end6.sink.split, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8192e2ant_media_status_notify(ptr noundef %btcoexist, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  %h2c_parameter = alloca [3 x i8], align 1
  %wifi_bw = alloca i32, align 4
  %wifi_center_chnl = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %h2c_parameter) #4
  %2 = call ptr @memset(ptr %h2c_parameter, i32 0, i32 3)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_bw) #4
  %3 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %wifi_bw, align 4, !annotation !504
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_center_chnl) #4
  %4 = ptrtoint ptr %wifi_center_chnl to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %wifi_center_chnl, align 1, !annotation !504
  %manual_control = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 13
  %5 = ptrtoint ptr %manual_control to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %manual_control, align 2, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %stop_coex_dm = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 12
  %7 = ptrtoint ptr %stop_coex_dm to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %stop_coex_dm, align 1, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not = icmp eq i8 %8, 0
  br i1 %tobool1.not, label %lor.lhs.false2, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %bt_info = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 3
  %9 = ptrtoint ptr %bt_info to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bt_info, align 4, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool3.not = icmp eq i8 %10, 0
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %type)
  %cmp = icmp eq i8 %type, 1
  br i1 %cmp, label %land.lhs.true, label %if.end6

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.89) #4
  %btc_get = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %11 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %btc_get, align 4
  %call = call zeroext i1 %12(ptr noundef %btcoexist, i8 noundef zeroext 38, ptr noundef nonnull %wifi_center_chnl) #4
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.88) #4
  %btc_get56 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %13 = ptrtoint ptr %btc_get56 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %btc_get56, align 4
  %call57 = call zeroext i1 %14(ptr noundef %btcoexist, i8 noundef zeroext 38, ptr noundef nonnull %wifi_center_chnl) #4
  %15 = ptrtoint ptr %wifi_center_chnl to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %wifi_center_chnl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %16)
  %cmp11 = icmp ult i8 %16, 15
  br i1 %cmp11, label %if.then13, label %land.lhs.true.if.end24_crit_edge

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

if.then13:                                        ; preds = %land.lhs.true
  %17 = ptrtoint ptr %h2c_parameter to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %h2c_parameter, align 1
  %arrayidx14 = getelementptr inbounds [3 x i8], ptr %h2c_parameter, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %16, ptr %arrayidx14, align 1
  %19 = ptrtoint ptr %btc_get56 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %btc_get56, align 4
  %call16 = call zeroext i1 %20(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef nonnull %wifi_bw) #4
  %21 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %wifi_bw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp17 = icmp eq i32 %22, 2
  %arrayidx20 = getelementptr inbounds [3 x i8], ptr %h2c_parameter, i32 0, i32 2
  br i1 %cmp17, label %if.then19, label %if.else21

if.then19:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 48, ptr %arrayidx20, align 1
  br label %if.end24

if.else21:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 32, ptr %arrayidx20, align 1
  br label %if.end24

if.end24:                                         ; preds = %if.else21, %if.then19, %land.lhs.true.if.end24_crit_edge, %if.end6
  %25 = ptrtoint ptr %h2c_parameter to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %h2c_parameter, align 1
  store i8 %26, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 45), align 2
  %arrayidx27 = getelementptr inbounds [3 x i8], ptr %h2c_parameter, i32 0, i32 1
  %27 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx27, align 1
  store i8 %28, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 45, i32 1), align 1
  %arrayidx30 = getelementptr inbounds [3 x i8], ptr %h2c_parameter, i32 0, i32 2
  %29 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx30, align 1
  store i8 %30, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 45, i32 2), align 4
  %conv34 = zext i8 %26 to i32
  %shl = shl nuw nsw i32 %conv34, 16
  %conv36 = zext i8 %28 to i32
  %shl37 = shl nuw nsw i32 %conv36, 8
  %or = or i32 %shl37, %shl
  %conv39 = zext i8 %30 to i32
  %or40 = or i32 %or, %conv39
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.90, i32 noundef %or40) #4
  %btc_fill_h2c = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %31 = ptrtoint ptr %btc_fill_h2c to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %btc_fill_h2c, align 4
  call void %32(ptr noundef %btcoexist, i8 noundef zeroext 102, i32 noundef 3, ptr noundef nonnull %h2c_parameter) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_center_chnl) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_bw) #4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %h2c_parameter) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8192e2ant_special_packet_notify(ptr nocapture noundef readonly %btcoexist, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %type)
  %cmp = icmp eq i8 %type, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.91) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8192e2ant_bt_info_notify(ptr noundef %btcoexist, ptr nocapture noundef readonly %tmp_buf, i8 noundef zeroext %length) local_unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i.i249 = alloca [1 x i8], align 1
  %h2c_parameter.i.i = alloca [1 x i8], align 1
  %bt_busy = alloca i8, align 1
  %limited_dig = alloca i8, align 1
  %wifi_connected = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_busy) #4
  %2 = ptrtoint ptr %bt_busy to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %bt_busy, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %limited_dig) #4
  %3 = ptrtoint ptr %limited_dig to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %limited_dig, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_connected) #4
  %4 = ptrtoint ptr %wifi_connected to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %wifi_connected, align 1
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 14), align 2
  %5 = ptrtoint ptr %tmp_buf to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tmp_buf, align 1
  %7 = and i8 %6, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp = icmp ugt i8 %7, 2
  %spec.store.select = select i1 %cmp, i8 0, i8 %7
  %idxprom = zext i8 %spec.store.select to i32
  %arrayidx4 = getelementptr %struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 16, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %arrayidx4, align 4
  %conv6 = zext i8 %length to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.92, i32 noundef %idxprom, i32 noundef %conv6) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %length)
  %cmp9252.not = icmp eq i8 %length, 0
  br i1 %cmp9252.not, label %entry.for.end_crit_edge, label %if.end23.peel

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end23.peel:                                    ; preds = %entry
  %sub = add nsw i32 %conv6, -1
  %10 = ptrtoint ptr %tmp_buf to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tmp_buf, align 1
  %arrayidx16.peel = getelementptr %struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 15, i32 %idxprom, i32 0
  %12 = ptrtoint ptr %arrayidx16.peel to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %arrayidx16.peel, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp26.peel = icmp eq i32 %sub, 0
  %13 = ptrtoint ptr %tmp_buf to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %tmp_buf, align 1
  %conv31.peel = zext i8 %14 to i32
  br i1 %cmp26.peel, label %for.inc.peel.thread, label %for.inc.peel

for.inc.peel:                                     ; preds = %if.end23.peel
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.94, i32 noundef %conv31.peel) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %length)
  %exitcond.peel.not = icmp eq i8 %length, 1
  br i1 %exitcond.peel.not, label %for.inc.peel.for.end_crit_edge, label %if.end23.peel262

for.inc.peel.for.end_crit_edge:                   ; preds = %for.inc.peel
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.peel.thread:                              ; preds = %if.end23.peel
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.93, i32 noundef %conv31.peel) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %length)
  %exitcond.peel.not273 = icmp eq i8 %length, 1
  br i1 %exitcond.peel.not273, label %for.inc.peel.thread.for.end_crit_edge, label %if.end23.peel262.thread

for.inc.peel.thread.for.end_crit_edge:            ; preds = %for.inc.peel.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end23.peel262.thread:                          ; preds = %for.inc.peel.thread
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx12.peel258274 = getelementptr i8, ptr %tmp_buf, i32 1
  %15 = ptrtoint ptr %arrayidx12.peel258274 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx12.peel258274, align 1
  %arrayidx16.peel259275 = getelementptr %struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 15, i32 %idxprom, i32 1
  %17 = ptrtoint ptr %arrayidx16.peel259275 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %arrayidx16.peel259275, align 2
  br label %for.inc.peel269

if.end23.peel262:                                 ; preds = %for.inc.peel
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx12.peel258 = getelementptr i8, ptr %tmp_buf, i32 1
  %18 = ptrtoint ptr %arrayidx12.peel258 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx12.peel258, align 1
  %arrayidx16.peel259 = getelementptr %struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 15, i32 %idxprom, i32 1
  %20 = ptrtoint ptr %arrayidx16.peel259 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %arrayidx16.peel259, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp26.peel264 = icmp eq i32 %sub, 1
  %spec.select283 = select i1 %cmp26.peel264, ptr @.str.93, ptr @.str.94
  br label %for.inc.peel269

for.inc.peel269:                                  ; preds = %if.end23.peel262, %if.end23.peel262.thread
  %arrayidx12.peel258.sink = phi ptr [ %arrayidx12.peel258274, %if.end23.peel262.thread ], [ %arrayidx12.peel258, %if.end23.peel262 ]
  %.str.93.sink = phi ptr [ @.str.94, %if.end23.peel262.thread ], [ %spec.select283, %if.end23.peel262 ]
  %21 = ptrtoint ptr %arrayidx12.peel258.sink to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx12.peel258.sink, align 1
  %conv31.peel268 = zext i8 %22 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.93.sink, i32 noundef %conv31.peel268) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %length)
  %exitcond.peel271.not = icmp eq i8 %length, 2
  br i1 %exitcond.peel271.not, label %for.inc.peel269.for.end_crit_edge, label %for.inc.peel269.if.end23_crit_edge

for.inc.peel269.if.end23_crit_edge:               ; preds = %for.inc.peel269
  br label %if.end23

for.inc.peel269.for.end_crit_edge:                ; preds = %for.inc.peel269
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end23:                                         ; preds = %if.end23.if.end23_crit_edge, %for.inc.peel269.if.end23_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %if.end23.if.end23_crit_edge ], [ 2, %for.inc.peel269.if.end23_crit_edge ]
  %arrayidx12 = getelementptr i8, ptr %tmp_buf, i32 %indvars.iv
  %23 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx12, align 1
  %arrayidx16 = getelementptr %struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 15, i32 %idxprom, i32 %indvars.iv
  %25 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %arrayidx16, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %indvars.iv)
  %cmp26 = icmp eq i32 %sub, %indvars.iv
  %26 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx12, align 1
  %conv31 = zext i8 %27 to i32
  %.str.93..str.94 = select i1 %cmp26, ptr @.str.93, ptr @.str.94
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.93..str.94, i32 noundef %conv31) #4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %conv6
  br i1 %exitcond.not, label %if.end23.for.end_crit_edge, label %if.end23.if.end23_crit_edge, !llvm.loop !506

if.end23.if.end23_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

if.end23.for.end_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %if.end23.for.end_crit_edge, %for.inc.peel269.for.end_crit_edge, %for.inc.peel.thread.for.end_crit_edge, %for.inc.peel.for.end_crit_edge, %entry.for.end_crit_edge
  %bt_info.0.lcssa = phi i8 [ 0, %entry.for.end_crit_edge ], [ 0, %for.inc.peel.for.end_crit_edge ], [ %22, %for.inc.peel269.for.end_crit_edge ], [ 0, %for.inc.peel.thread.for.end_crit_edge ], [ %22, %if.end23.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.store.select)
  %cmp38.not = icmp eq i8 %spec.store.select, 0
  br i1 %cmp38.not, label %for.end.if.end87_crit_edge, label %if.then40

for.end.if.end87_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end87

if.then40:                                        ; preds = %for.end
  %arrayidx44 = getelementptr %struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 15, i32 %idxprom, i32 2
  %28 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx44, align 1
  %30 = and i8 %29, 15
  store i8 %30, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 18), align 1
  %arrayidx51 = getelementptr %struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 15, i32 %idxprom, i32 3
  %31 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx51, align 2
  %mul = shl i8 %32, 1
  %add = add i8 %mul, 10
  store i8 %add, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 11), align 4
  %arrayidx57 = getelementptr %struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 15, i32 %idxprom, i32 4
  %33 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx57, align 1
  store i8 %34, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 19), align 2
  %35 = and i8 %34, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not = icmp eq i8 %35, 0
  br i1 %tobool.not, label %if.then40.if.end66_crit_edge, label %if.then61

if.then40.if.end66_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end66

if.then61:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.95) #4
  %btc_get = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %36 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %btc_get, align 4
  %call = call zeroext i1 %37(ptr noundef %btcoexist, i8 noundef zeroext 2, ptr noundef nonnull %wifi_connected) #4
  %38 = ptrtoint ptr %wifi_connected to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %wifi_connected, align 1, !range !505
  call void @ex_btc8192e2ant_media_status_notify(ptr noundef %btcoexist, i8 noundef zeroext %39)
  br label %if.end66

if.end66:                                         ; preds = %if.then61, %if.then40.if.end66_crit_edge
  %40 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 19), align 2
  %41 = and i8 %40, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool70.not = icmp eq i8 %41, 0
  br i1 %tobool70.not, label %if.end66.if.end77_crit_edge, label %if.then71

if.end66.if.end77_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end77

if.then71:                                        ; preds = %if.end66
  %manual_control = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 13
  %42 = ptrtoint ptr %manual_control to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %manual_control, align 2, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool72.not = icmp eq i8 %43, 0
  br i1 %tobool72.not, label %land.lhs.true, label %if.then71.if.end77_crit_edge

if.then71.if.end77_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end77

land.lhs.true:                                    ; preds = %if.then71
  %stop_coex_dm = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 12
  %44 = ptrtoint ptr %stop_coex_dm to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %stop_coex_dm, align 1, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool73.not = icmp eq i8 %45, 0
  br i1 %tobool73.not, label %if.then74, label %land.lhs.true.if.end77_crit_edge

land.lhs.true.if.end77_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end77

if.then74:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.96) #4
  %46 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %adapter, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %47, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.123) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 4), align 4
  %48 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  %50 = ptrtoint ptr %h2c_parameter.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %h2c_parameter.i.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %49, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.158, i32 noundef 0) #4
  %btc_fill_h2c.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %51 = ptrtoint ptr %btc_fill_h2c.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %btc_fill_h2c.i.i, align 4
  call void %52(ptr noundef %btcoexist, i8 noundef zeroext 99, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  %53 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 4), align 4, !range !505
  store i8 %53, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 5), align 1
  br label %if.end77

if.end77:                                         ; preds = %if.then74, %land.lhs.true.if.end77_crit_edge, %if.then71.if.end77_crit_edge, %if.end66.if.end77_crit_edge
  %auto_report_2ant = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 8
  %54 = ptrtoint ptr %auto_report_2ant to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %auto_report_2ant, align 1, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool78.not = icmp eq i8 %55, 0
  br i1 %tobool78.not, label %if.then79, label %if.end77.if.end87_crit_edge

if.end77.if.end87_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end87

if.then79:                                        ; preds = %if.end77
  %56 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 19), align 2
  %57 = and i8 %56, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool83.not = icmp eq i8 %57, 0
  br i1 %tobool83.not, label %if.then84, label %if.then79.if.end87_crit_edge

if.then79.if.end87_crit_edge:                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end87

if.then84:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #6
  %58 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %adapter, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %59, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.160) #4
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 15), align 1
  %60 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i249) #4
  %62 = ptrtoint ptr %h2c_parameter.i.i249 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %h2c_parameter.i.i249, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %61, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.164, i32 noundef 1) #4
  %btc_fill_h2c.i.i251 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %63 = ptrtoint ptr %btc_fill_h2c.i.i251 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %btc_fill_h2c.i.i251, align 4
  call void %64(ptr noundef %btcoexist, i8 noundef zeroext 104, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i249) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i249) #4
  %65 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 15), align 1, !range !505
  store i8 %65, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 14), align 2
  br label %if.end87

if.end87:                                         ; preds = %if.then84, %if.then79.if.end87_crit_edge, %if.end77.if.end87_crit_edge, %for.end.if.end87_crit_edge
  %conv88 = zext i8 %bt_info.0.lcssa to i32
  %and89 = lshr i8 %bt_info.0.lcssa, 2
  %and89.lobit = and i8 %and89, 1
  store i8 %and89.lobit, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 17), align 4
  %and96 = and i32 %conv88, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %if.then98, label %if.else99

if.then98:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #6
  %66 = call ptr @memset(ptr @glcoex_sta_8192e_2ant, i32 0, i32 5)
  call fastcc void @btc8192e2ant_update_bt_link_info(ptr noundef %btcoexist)
  br label %if.end164

if.else99:                                        ; preds = %if.end87
  store i8 1, ptr @glcoex_sta_8192e_2ant, align 4
  %and102.lobit = lshr i8 %bt_info.0.lcssa, 7
  store i8 %and102.lobit, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 4), align 4
  %and110 = lshr i8 %bt_info.0.lcssa, 6
  %and110.lobit = and i8 %and110, 1
  store i8 %and110.lobit, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 2), align 2
  %and118 = lshr i8 %bt_info.0.lcssa, 5
  %and118.lobit = and i8 %and118, 1
  store i8 %and118.lobit, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 3), align 1
  %and126 = lshr i8 %bt_info.0.lcssa, 1
  %and126.lobit = and i8 %and126, 1
  store i8 %and126.lobit, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 1), align 1
  call fastcc void @btc8192e2ant_update_bt_link_info(ptr noundef %btcoexist)
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bt_info.0.lcssa)
  %cmp140 = icmp eq i8 %bt_info.0.lcssa, 1
  br i1 %cmp140, label %if.else99.if.end164_crit_edge, label %if.else144

if.else99.if.end164_crit_edge:                    ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end164

if.else144:                                       ; preds = %if.else99
  %67 = and i32 %conv88, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %if.else153, label %if.else144.if.end164_crit_edge

if.else144.if.end164_crit_edge:                   ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end164

if.else153:                                       ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #6
  %and155 = and i32 %conv88, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155)
  %tobool156.not = icmp eq i32 %and155, 0
  %.282 = select i1 %tobool156.not, i8 6, i8 3
  %.str.101..str.100 = select i1 %tobool156.not, ptr @.str.101, ptr @.str.100
  br label %if.end164

if.end164:                                        ; preds = %if.else153, %if.else144.if.end164_crit_edge, %if.else99.if.end164_crit_edge, %if.then98
  %.sink280 = phi i8 [ 0, %if.then98 ], [ 1, %if.else99.if.end164_crit_edge ], [ 4, %if.else144.if.end164_crit_edge ], [ %.282, %if.else153 ]
  %.str.98.sink = phi ptr [ @.str.97, %if.then98 ], [ @.str.98, %if.else99.if.end164_crit_edge ], [ @.str.99, %if.else144.if.end164_crit_edge ], [ %.str.101..str.100, %if.else153 ]
  store i8 %.sink280, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 44), align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.98.sink) #4
  %69 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 44), align 1
  %.off = add i8 %69, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off)
  %switch = icmp ult i8 %.off, 3
  %spec.select = zext i1 %switch to i8
  %70 = ptrtoint ptr %bt_busy to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %spec.select, ptr %bt_busy, align 1
  %71 = ptrtoint ptr %limited_dig to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %spec.select, ptr %limited_dig, align 1
  %btc_set = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %72 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %btc_set, align 4
  %call182 = call zeroext i1 %73(ptr noundef %btcoexist, i8 noundef zeroext 1, ptr noundef nonnull %bt_busy) #4
  store i8 %spec.select, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 37), align 2
  %74 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %btc_set, align 4
  %call186 = call zeroext i1 %75(ptr noundef %btcoexist, i8 noundef zeroext 2, ptr noundef nonnull %limited_dig) #4
  call fastcc void @btc8192e2ant_run_coexist_mechanism(ptr noundef %btcoexist)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_connected) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %limited_dig) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_busy) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8192e2ant_update_bt_link_info(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %bt_hs_on = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bt_link_info1 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_hs_on) #4
  %0 = ptrtoint ptr %bt_hs_on to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %bt_hs_on, align 1
  %btc_get = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %1 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %btc_get, align 4
  %call = call zeroext i1 %2(ptr noundef %btcoexist, i8 noundef zeroext 0, ptr noundef nonnull %bt_hs_on) #4
  %3 = load i8, ptr @glcoex_sta_8192e_2ant, align 4, !range !505
  %4 = ptrtoint ptr %bt_link_info1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %bt_link_info1, align 1
  %5 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 1), align 1, !range !505
  %sco_exist4 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 2
  %6 = ptrtoint ptr %sco_exist4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %sco_exist4, align 1
  %7 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 2), align 2, !range !505
  %a2dp_exist7 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 4
  %8 = ptrtoint ptr %a2dp_exist7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %a2dp_exist7, align 1
  %9 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 4), align 4, !range !505
  %pan_exist10 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 8
  %10 = ptrtoint ptr %pan_exist10 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %pan_exist10, align 1
  %11 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 3), align 1, !range !505
  %hid_exist13 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 6
  %12 = ptrtoint ptr %hid_exist13 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %hid_exist13, align 1
  %13 = ptrtoint ptr %bt_hs_on to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bt_hs_on, align 1, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool15.not = icmp eq i8 %14, 0
  br i1 %tobool15.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %pan_exist10 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %pan_exist10, align 1
  %16 = ptrtoint ptr %bt_link_info1 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %bt_link_info1, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool19.not = icmp eq i8 %5, 0
  br i1 %tobool19.not, label %land.lhs.true33, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool21.not = icmp eq i8 %7, 0
  br i1 %tobool21.not, label %land.lhs.true22, label %land.lhs.true.if.end30.thread108_crit_edge

land.lhs.true.if.end30.thread108_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30.thread108

land.lhs.true22:                                  ; preds = %land.lhs.true
  %17 = ptrtoint ptr %pan_exist10 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pan_exist10, align 1, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool24.not = icmp eq i8 %18, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool27.not = icmp eq i8 %11, 0
  %or.cond = select i1 %tobool24.not, i1 %tobool27.not, i1 false
  br i1 %or.cond, label %land.lhs.true22.if.end60_crit_edge, label %land.lhs.true22.if.end30.thread108_crit_edge

land.lhs.true22.if.end30.thread108_crit_edge:     ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30.thread108

land.lhs.true22.if.end60_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60

if.end30.thread108:                               ; preds = %land.lhs.true22.if.end30.thread108_crit_edge, %land.lhs.true.if.end30.thread108_crit_edge
  br label %if.end60

land.lhs.true33:                                  ; preds = %if.end
  %sco_only29 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 3
  %19 = ptrtoint ptr %sco_only29 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %sco_only29, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool35.not = icmp eq i8 %7, 0
  br i1 %tobool35.not, label %land.lhs.true51, label %land.lhs.true36

land.lhs.true36:                                  ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %pan_exist10 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %pan_exist10, align 1, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool38.not = icmp eq i8 %21, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool41.not = icmp eq i8 %11, 0
  %or.cond127 = select i1 %tobool38.not, i1 %tobool41.not, i1 false
  %spec.select = zext i1 %or.cond127 to i8
  %22 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 5
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %spec.select, ptr %22, align 1
  %pan_only59117 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 9
  %24 = ptrtoint ptr %pan_only59117 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %pan_only59117, align 1
  br label %if.else73

land.lhs.true51:                                  ; preds = %land.lhs.true33
  %a2dp_only44111 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 5
  %25 = ptrtoint ptr %a2dp_only44111 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %a2dp_only44111, align 1
  %26 = ptrtoint ptr %pan_exist10 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %pan_exist10, align 1, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool53.not = icmp eq i8 %27, 0
  br i1 %tobool53.not, label %land.lhs.true69, label %land.lhs.true54

land.lhs.true54:                                  ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool56.not = icmp eq i8 %11, 0
  %pan_only = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 9
  br i1 %tobool56.not, label %land.lhs.true66.thread, label %land.lhs.true66

if.end60:                                         ; preds = %if.end30.thread108, %land.lhs.true22.if.end60_crit_edge
  %.sink128 = phi i8 [ 0, %if.end30.thread108 ], [ 1, %land.lhs.true22.if.end60_crit_edge ]
  %sco_only29109 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 3
  %28 = ptrtoint ptr %sco_only29109 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %.sink128, ptr %sco_only29109, align 1
  %a2dp_only44 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 5
  %29 = ptrtoint ptr %a2dp_only44 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %a2dp_only44, align 1
  %pan_only59 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 9
  %30 = ptrtoint ptr %pan_only59 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %pan_only59, align 1
  br label %if.else73

land.lhs.true66:                                  ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #6
  %31 = ptrtoint ptr %pan_only to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %pan_only, align 1
  br label %if.else73

land.lhs.true66.thread:                           ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #6
  %32 = ptrtoint ptr %pan_only to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %pan_only, align 1
  br label %if.else73

land.lhs.true69:                                  ; preds = %land.lhs.true51
  %pan_only59117120125 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 9
  %33 = ptrtoint ptr %pan_only59117120125 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %pan_only59117120125, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool71.not = icmp eq i8 %11, 0
  br i1 %tobool71.not, label %land.lhs.true69.if.else73_crit_edge, label %land.lhs.true69.if.end75_crit_edge

land.lhs.true69.if.end75_crit_edge:               ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end75

land.lhs.true69.if.else73_crit_edge:              ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else73

if.else73:                                        ; preds = %land.lhs.true69.if.else73_crit_edge, %land.lhs.true66.thread, %land.lhs.true66, %if.end60, %land.lhs.true36
  br label %if.end75

if.end75:                                         ; preds = %if.else73, %land.lhs.true69.if.end75_crit_edge
  %.sink = phi i8 [ 0, %if.else73 ], [ 1, %land.lhs.true69.if.end75_crit_edge ]
  %hid_only74 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 7
  %34 = ptrtoint ptr %hid_only74 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %.sink, ptr %hid_only74, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_hs_on) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8192e2ant_run_coexist_mechanism(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i.i118.i = alloca [1 x i8], align 1
  %h2c_parameter.i.i113.i = alloca [1 x i8], align 1
  %h2c_parameter.i.i108.i = alloca [1 x i8], align 1
  %h2c_parameter.i.i.i75 = alloca [1 x i8], align 1
  %wifi_connected.i = alloca i8, align 1
  %wifi_busy.i = alloca i8, align 1
  %bt_hs_on.i76 = alloca i8, align 1
  %low_pwr_disable.i77 = alloca i8, align 1
  %h2c_parameter.i.i.i = alloca [1 x i8], align 1
  %low_pwr_disable.i = alloca i8, align 1
  %bt_hs_on.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.166) #4
  %manual_control = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 13
  %2 = ptrtoint ptr %manual_control to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %manual_control, align 2, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.167) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 6), align 2, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.168) #4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %5 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adapter, align 4
  %bt_link_info1.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_hs_on.i) #4
  %7 = ptrtoint ptr %bt_hs_on.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %bt_hs_on.i, align 1
  %btc_get.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %8 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %btc_get.i, align 4
  %call.i = call zeroext i1 %9(ptr noundef %btcoexist, i8 noundef zeroext 0, ptr noundef nonnull %bt_hs_on.i) #4
  %10 = ptrtoint ptr %bt_link_info1.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bt_link_info1.i, align 1, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.end3.cleanup.sink.split.i_crit_edge, label %if.end.i

if.end3.cleanup.sink.split.i_crit_edge:           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %if.end3
  %sco_exist.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 2
  %12 = ptrtoint ptr %sco_exist.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sco_exist.i, align 1, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool3.not.i = icmp eq i8 %13, 0
  %not.tobool3.not.i = xor i1 %tobool3.not.i, true
  %spec.select.i = zext i1 %not.tobool3.not.i to i8
  %hid_exist.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 6
  %14 = ptrtoint ptr %hid_exist.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %hid_exist.i, align 1, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool6.not.i = icmp eq i8 %15, 0
  %inc8.i = select i1 %tobool3.not.i, i8 1, i8 2
  %num_of_diff_profile.1.i = select i1 %tobool6.not.i, i8 %spec.select.i, i8 %inc8.i
  %pan_exist.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 8
  %16 = ptrtoint ptr %pan_exist.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pan_exist.i, align 1, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool10.not.i = icmp eq i8 %17, 0
  %not.tobool10.not.i = xor i1 %tobool10.not.i, true
  %inc12.i = zext i1 %not.tobool10.not.i to i8
  %num_of_diff_profile.2.i = add nuw nsw i8 %num_of_diff_profile.1.i, %inc12.i
  %a2dp_exist.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 4
  %18 = ptrtoint ptr %a2dp_exist.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %a2dp_exist.i, align 1, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool14.not.i = icmp eq i8 %19, 0
  %not.tobool14.not.i = xor i1 %tobool14.not.i, true
  %inc16.i = zext i1 %not.tobool14.not.i to i8
  %num_of_diff_profile.3.i = add nuw nsw i8 %num_of_diff_profile.2.i, %inc16.i
  %trunc.i = trunc i8 %num_of_diff_profile.3.i to i4
  %20 = zext i4 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.238)
  switch i4 %trunc.i, label %if.else176.i [
    i4 1, label %if.then19.i
    i4 2, label %if.then46.i
    i4 3, label %if.then116.i
  ]

if.then19.i:                                      ; preds = %if.end.i
  %21 = select i1 %tobool3.not.i, i1 %tobool6.not.i, i1 false
  %.str.186.mux.i = select i1 %tobool3.not.i, ptr @.str.187, ptr @.str.186
  %.mux.i = select i1 %tobool3.not.i, i8 3, i8 1
  %22 = select i1 %21, i1 %tobool14.not.i, i1 false
  %.str.186.mux.mux.i = select i1 %21, ptr @.str.188, ptr %.str.186.mux.i
  %.mux.mux.i = select i1 %21, i8 4, i8 %.mux.i
  br i1 %22, label %if.else30.i, label %if.then19.i.cleanup.sink.split.i_crit_edge

if.then19.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

if.else30.i:                                      ; preds = %if.then19.i
  br i1 %tobool10.not.i, label %if.else30.i.btc8192e2ant_action_algorithm.exit_crit_edge, label %if.then33.i

if.else30.i.btc8192e2ant_action_algorithm.exit_crit_edge: ; preds = %if.else30.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8192e2ant_action_algorithm.exit

if.then33.i:                                      ; preds = %if.else30.i
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %bt_hs_on.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bt_hs_on.i, align 1, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool34.not.i = icmp eq i8 %24, 0
  %.str.190..str.189.i = select i1 %tobool34.not.i, ptr @.str.190, ptr @.str.189
  %..i = select i1 %tobool34.not.i, i8 6, i8 7
  br label %cleanup.sink.split.i

if.then46.i:                                      ; preds = %if.end.i
  br i1 %tobool3.not.i, label %if.else68.i, label %if.then49.i

if.then49.i:                                      ; preds = %if.then46.i
  %25 = select i1 %tobool6.not.i, i1 %tobool14.not.i, i1 false
  %.str.191.mux.i = select i1 %tobool6.not.i, ptr @.str.192, ptr @.str.191
  %.mux299.i = select i1 %tobool6.not.i, i8 9, i8 1
  br i1 %25, label %if.else57.i, label %if.then49.i.cleanup.sink.split.i_crit_edge

if.then49.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

if.else57.i:                                      ; preds = %if.then49.i
  br i1 %tobool10.not.i, label %if.else57.i.btc8192e2ant_action_algorithm.exit_crit_edge, label %if.then60.i

if.else57.i.btc8192e2ant_action_algorithm.exit_crit_edge: ; preds = %if.else57.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8192e2ant_action_algorithm.exit

if.then60.i:                                      ; preds = %if.else57.i
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %bt_hs_on.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bt_hs_on.i, align 1, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool61.not.i = icmp eq i8 %27, 0
  %.str.194..str.193.i = select i1 %tobool61.not.i, ptr @.str.194, ptr @.str.193
  %.286.i = select i1 %tobool61.not.i, i8 2, i8 1
  br label %cleanup.sink.split.i

if.else68.i:                                      ; preds = %if.then46.i
  br i1 %tobool6.not.i, label %if.else95.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.else68.i
  br i1 %tobool14.not.i, label %land.lhs.true86.i, label %if.then75.i

if.then75.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %num_of_hid.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 4, i32 8
  %28 = ptrtoint ptr %num_of_hid.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %num_of_hid.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %cmp77.i = icmp ugt i8 %29, 1
  %.str.195..str.196.i = select i1 %cmp77.i, ptr @.str.195, ptr @.str.196
  %.287.i = select i1 %cmp77.i, i8 10, i8 11
  br label %cleanup.sink.split.i

land.lhs.true86.i:                                ; preds = %land.lhs.true.i
  br i1 %tobool10.not.i, label %land.lhs.true86.i.btc8192e2ant_action_algorithm.exit_crit_edge, label %if.then90.i

land.lhs.true86.i.btc8192e2ant_action_algorithm.exit_crit_edge: ; preds = %land.lhs.true86.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8192e2ant_action_algorithm.exit

if.then90.i:                                      ; preds = %land.lhs.true86.i
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %bt_hs_on.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bt_hs_on.i, align 1, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool91.not.i = icmp eq i8 %31, 0
  %.str.198..str.197.i = select i1 %tobool91.not.i, ptr @.str.198, ptr @.str.197
  %.288.i = select i1 %tobool91.not.i, i8 9, i8 3
  br label %cleanup.sink.split.i

if.else95.i:                                      ; preds = %if.else68.i
  %brmerge.i = select i1 %tobool10.not.i, i1 true, i1 %tobool14.not.i
  br i1 %brmerge.i, label %if.else95.i.btc8192e2ant_action_algorithm.exit_crit_edge, label %if.then103.i

if.else95.i.btc8192e2ant_action_algorithm.exit_crit_edge: ; preds = %if.else95.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8192e2ant_action_algorithm.exit

if.then103.i:                                     ; preds = %if.else95.i
  call void @__sanitizer_cov_trace_pc() #6
  %32 = ptrtoint ptr %bt_hs_on.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %bt_hs_on.i, align 1, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool104.not.i = icmp eq i8 %33, 0
  %.str.200..str.199.i = select i1 %tobool104.not.i, ptr @.str.200, ptr @.str.199
  %.289.i = select i1 %tobool104.not.i, i8 8, i8 5
  br label %cleanup.sink.split.i

if.then116.i:                                     ; preds = %if.end.i
  br i1 %tobool3.not.i, label %if.else157.i, label %if.then119.i

if.then119.i:                                     ; preds = %if.then116.i
  br i1 %tobool6.not.i, label %if.else141.i, label %land.lhs.true123.i

land.lhs.true123.i:                               ; preds = %if.then119.i
  br i1 %tobool14.not.i, label %land.lhs.true132.i, label %land.lhs.true123.i.cleanup.sink.split.i_crit_edge

land.lhs.true123.i.cleanup.sink.split.i_crit_edge: ; preds = %land.lhs.true123.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

land.lhs.true132.i:                               ; preds = %land.lhs.true123.i
  br i1 %tobool10.not.i, label %land.lhs.true132.i.btc8192e2ant_action_algorithm.exit_crit_edge, label %if.then136.i

land.lhs.true132.i.btc8192e2ant_action_algorithm.exit_crit_edge: ; preds = %land.lhs.true132.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8192e2ant_action_algorithm.exit

if.then136.i:                                     ; preds = %land.lhs.true132.i
  call void @__sanitizer_cov_trace_pc() #6
  %34 = ptrtoint ptr %bt_hs_on.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bt_hs_on.i, align 1, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool137.not.i = icmp eq i8 %35, 0
  %.str.203..str.202.i = select i1 %tobool137.not.i, ptr @.str.203, ptr @.str.202
  %.290.i = select i1 %tobool137.not.i, i8 2, i8 1
  br label %cleanup.sink.split.i

if.else141.i:                                     ; preds = %if.then119.i
  %brmerge279.i = select i1 %tobool10.not.i, i1 true, i1 %tobool14.not.i
  br i1 %brmerge279.i, label %if.else141.i.btc8192e2ant_action_algorithm.exit_crit_edge, label %if.then149.i

if.else141.i.btc8192e2ant_action_algorithm.exit_crit_edge: ; preds = %if.else141.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8192e2ant_action_algorithm.exit

if.then149.i:                                     ; preds = %if.else141.i
  call void @__sanitizer_cov_trace_pc() #6
  %36 = ptrtoint ptr %bt_hs_on.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %bt_hs_on.i, align 1, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool150.not.i = icmp eq i8 %37, 0
  %.str.205..str.204.i = select i1 %tobool150.not.i, ptr @.str.205, ptr @.str.204
  %.291.i = select i1 %tobool150.not.i, i8 9, i8 1
  br label %cleanup.sink.split.i

if.else157.i:                                     ; preds = %if.then116.i
  %brmerge280.i = select i1 %tobool6.not.i, i1 true, i1 %tobool10.not.i
  %brmerge281.i = select i1 %brmerge280.i, i1 true, i1 %tobool14.not.i
  br i1 %brmerge281.i, label %if.else157.i.btc8192e2ant_action_algorithm.exit_crit_edge, label %if.then169.i

if.else157.i.btc8192e2ant_action_algorithm.exit_crit_edge: ; preds = %if.else157.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8192e2ant_action_algorithm.exit

if.then169.i:                                     ; preds = %if.else157.i
  call void @__sanitizer_cov_trace_pc() #6
  %38 = ptrtoint ptr %bt_hs_on.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %bt_hs_on.i, align 1, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool170.not.i = icmp eq i8 %39, 0
  %.str.207..str.206.i = select i1 %tobool170.not.i, ptr @.str.207, ptr @.str.206
  %.292.i = select i1 %tobool170.not.i, i8 10, i8 11
  br label %cleanup.sink.split.i

if.else176.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %num_of_diff_profile.3.i)
  %cmp178.i = icmp ult i8 %num_of_diff_profile.3.i, 3
  %brmerge282.i = select i1 %cmp178.i, i1 true, i1 %tobool3.not.i
  %brmerge283.i = select i1 %brmerge282.i, i1 true, i1 %tobool6.not.i
  %brmerge284.i = select i1 %brmerge283.i, i1 true, i1 %tobool10.not.i
  %brmerge285.i = select i1 %brmerge284.i, i1 true, i1 %tobool14.not.i
  br i1 %brmerge285.i, label %if.else176.i.btc8192e2ant_action_algorithm.exit_crit_edge, label %if.then195.i

if.else176.i.btc8192e2ant_action_algorithm.exit_crit_edge: ; preds = %if.else176.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8192e2ant_action_algorithm.exit

if.then195.i:                                     ; preds = %if.else176.i
  call void @__sanitizer_cov_trace_pc() #6
  %40 = ptrtoint ptr %bt_hs_on.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %bt_hs_on.i, align 1, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool196.not.i = icmp eq i8 %41, 0
  %.str.209..str.208.i = select i1 %tobool196.not.i, ptr @.str.209, ptr @.str.208
  %.293.i = select i1 %tobool196.not.i, i8 9, i8 0
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then195.i, %if.then169.i, %if.then149.i, %if.then136.i, %land.lhs.true123.i.cleanup.sink.split.i_crit_edge, %if.then103.i, %if.then90.i, %if.then75.i, %if.then60.i, %if.then49.i.cleanup.sink.split.i_crit_edge, %if.then33.i, %if.then19.i.cleanup.sink.split.i_crit_edge, %if.end3.cleanup.sink.split.i_crit_edge
  %.str.187.sink.i = phi ptr [ @.str.185, %if.end3.cleanup.sink.split.i_crit_edge ], [ %.str.186.mux.mux.i, %if.then19.i.cleanup.sink.split.i_crit_edge ], [ %.str.190..str.189.i, %if.then33.i ], [ %.str.191.mux.i, %if.then49.i.cleanup.sink.split.i_crit_edge ], [ %.str.194..str.193.i, %if.then60.i ], [ %.str.195..str.196.i, %if.then75.i ], [ %.str.198..str.197.i, %if.then90.i ], [ %.str.200..str.199.i, %if.then103.i ], [ @.str.201, %land.lhs.true123.i.cleanup.sink.split.i_crit_edge ], [ %.str.203..str.202.i, %if.then136.i ], [ %.str.205..str.204.i, %if.then149.i ], [ %.str.207..str.206.i, %if.then169.i ], [ %.str.209..str.208.i, %if.then195.i ]
  %retval.0.ph.i = phi i8 [ 0, %if.end3.cleanup.sink.split.i_crit_edge ], [ %.mux.mux.i, %if.then19.i.cleanup.sink.split.i_crit_edge ], [ %..i, %if.then33.i ], [ %.mux299.i, %if.then49.i.cleanup.sink.split.i_crit_edge ], [ %.286.i, %if.then60.i ], [ %.287.i, %if.then75.i ], [ %.288.i, %if.then90.i ], [ %.289.i, %if.then103.i ], [ 9, %land.lhs.true123.i.cleanup.sink.split.i_crit_edge ], [ %.290.i, %if.then136.i ], [ %.291.i, %if.then149.i ], [ %.292.i, %if.then169.i ], [ %.293.i, %if.then195.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %6, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.187.sink.i) #4
  br label %btc8192e2ant_action_algorithm.exit

btc8192e2ant_action_algorithm.exit:               ; preds = %cleanup.sink.split.i, %if.else176.i.btc8192e2ant_action_algorithm.exit_crit_edge, %if.else157.i.btc8192e2ant_action_algorithm.exit_crit_edge, %if.else141.i.btc8192e2ant_action_algorithm.exit_crit_edge, %land.lhs.true132.i.btc8192e2ant_action_algorithm.exit_crit_edge, %if.else95.i.btc8192e2ant_action_algorithm.exit_crit_edge, %land.lhs.true86.i.btc8192e2ant_action_algorithm.exit_crit_edge, %if.else57.i.btc8192e2ant_action_algorithm.exit_crit_edge, %if.else30.i.btc8192e2ant_action_algorithm.exit_crit_edge
  %retval.0.i = phi i8 [ 0, %if.else30.i.btc8192e2ant_action_algorithm.exit_crit_edge ], [ 0, %if.else57.i.btc8192e2ant_action_algorithm.exit_crit_edge ], [ 0, %if.else95.i.btc8192e2ant_action_algorithm.exit_crit_edge ], [ 0, %if.else141.i.btc8192e2ant_action_algorithm.exit_crit_edge ], [ 0, %if.else157.i.btc8192e2ant_action_algorithm.exit_crit_edge ], [ 0, %if.else176.i.btc8192e2ant_action_algorithm.exit_crit_edge ], [ 0, %land.lhs.true86.i.btc8192e2ant_action_algorithm.exit_crit_edge ], [ 0, %land.lhs.true132.i.btc8192e2ant_action_algorithm.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_hs_on.i) #4
  %42 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 17), align 4, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool4.not = icmp eq i8 %42, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %retval.0.i)
  %cmp.not = icmp eq i8 %retval.0.i, 7
  %or.cond = select i1 %tobool4.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %if.end7, label %if.then6

if.then6:                                         ; preds = %btc8192e2ant_action_algorithm.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.169) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  %43 = ptrtoint ptr %low_pwr_disable.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %low_pwr_disable.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %44 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %btc_set.i, align 4
  %call.i74 = call zeroext i1 %45(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i) #4
  call fastcc void @btc8192e2ant_switch_ss_type(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 1) #4
  call fastcc void @btc8192e2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1610309627) #4
  call fastcc void @btc8192e2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 3) #4
  call fastcc void @btc8192e2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext false) #4
  %46 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %adapter, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %47, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.111, i32 noundef 0) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %48 = load i8, ptr @glcoex_dm_8192e_2ant, align 4
  %conv2.i.i = zext i8 %48 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %47, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %conv2.i.i, i32 noundef 0) #4
  %49 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %50 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i.i) #4
  %52 = ptrtoint ptr %h2c_parameter.i.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %49, ptr %h2c_parameter.i.i.i, align 1
  %conv.i.i.i = zext i8 %49 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %51, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef %conv.i.i.i, i32 noundef %conv.i.i.i) #4
  %btc_fill_h2c.i.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %53 = ptrtoint ptr %btc_fill_h2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %btc_fill_h2c.i.i.i, align 4
  call void %54(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i.i) #4
  %55 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  store i8 %55, ptr @glcoex_dm_8192e_2ant, align 4
  call fastcc void @btc8192e2ant_sw_mechanism1(ptr noundef %btcoexist, i1 noundef zeroext false) #4
  call fastcc void @btc8192e2ant_sw_mechanism2(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 24) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  br label %cleanup

if.end7:                                          ; preds = %btc8192e2ant_action_algorithm.exit
  store i8 %retval.0.i, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 43), align 4
  %conv9 = zext i8 %retval.0.i to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.170, i32 noundef %conv9) #4
  %56 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_connected.i) #4
  %58 = ptrtoint ptr %wifi_connected.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %wifi_connected.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_busy.i) #4
  %59 = ptrtoint ptr %wifi_busy.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %wifi_busy.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_hs_on.i76) #4
  %60 = ptrtoint ptr %bt_hs_on.i76 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %bt_hs_on.i76, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i77) #4
  %61 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %btc_get.i, align 4
  %call.i80 = call zeroext i1 %62(ptr noundef %btcoexist, i8 noundef zeroext 0, ptr noundef nonnull %bt_hs_on.i76) #4
  %63 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %btc_get.i, align 4
  %call3.i = call zeroext i1 %64(ptr noundef %btcoexist, i8 noundef zeroext 2, ptr noundef nonnull %wifi_connected.i) #4
  %65 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %btc_get.i, align 4
  %call5.i = call zeroext i1 %66(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %wifi_busy.i) #4
  %sco_exist.i81 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 2
  %67 = ptrtoint ptr %sco_exist.i81 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %sco_exist.i81, align 1, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i82 = icmp eq i8 %68, 0
  br i1 %tobool.not.i82, label %if.end.i84, label %if.end.i84.thread

if.end.i84.thread:                                ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 50), align 4
  %69 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 47), align 2
  br label %sw.bb2.i.i

if.end.i84:                                       ; preds = %if.end7
  %hid_exist.i83 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 6
  %70 = ptrtoint ptr %hid_exist.i83 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %hid_exist.i83, align 1, !range !505
  store i8 %71, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 50), align 4
  %72 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 47), align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %71)
  %switch.not = icmp eq i8 %71, 1
  br i1 %switch.not, label %if.end.i84.sw.bb2.i.i_crit_edge, label %sw.bb.i.i

if.end.i84.sw.bb2.i.i_crit_edge:                  ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb2.i.i

sw.bb.i.i:                                        ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %72)
  %cmp.i.i = icmp eq i8 %72, 2
  %..i.i = select i1 %cmp.i.i, i32 0, i32 -1048576
  br label %btc8192e2ant_decide_ra_mask.exit.i

sw.bb2.i.i:                                       ; preds = %if.end.i84.sw.bb2.i.i_crit_edge, %if.end.i84.thread
  %73 = phi i8 [ %69, %if.end.i84.thread ], [ %72, %if.end.i84.sw.bb2.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %73)
  %cmp4.i.i = icmp eq i8 %73, 2
  %.1.i.i = select i1 %cmp4.i.i, i32 3, i32 -1048573
  br label %btc8192e2ant_decide_ra_mask.exit.i

btc8192e2ant_decide_ra_mask.exit.i:               ; preds = %sw.bb2.i.i, %sw.bb.i.i
  %dis_ra_mask.0.i.i = phi i32 [ %..i.i, %sw.bb.i.i ], [ %.1.i.i, %sw.bb2.i.i ]
  store i32 %dis_ra_mask.0.i.i, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 49), align 4
  %74 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 48), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %dis_ra_mask.0.i.i)
  %cmp.not.i.i = icmp eq i32 %74, %dis_ra_mask.0.i.i
  br i1 %cmp.not.i.i, label %btc8192e2ant_decide_ra_mask.exit.i.btc8192e2ant_update_ra_mask.exit.i_crit_edge, label %if.then.i.i

btc8192e2ant_decide_ra_mask.exit.i.btc8192e2ant_update_ra_mask.exit.i_crit_edge: ; preds = %btc8192e2ant_decide_ra_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8192e2ant_update_ra_mask.exit.i

if.then.i.i:                                      ; preds = %btc8192e2ant_decide_ra_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %btc_set.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %75 = ptrtoint ptr %btc_set.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %btc_set.i.i, align 4
  %call.i.i = call zeroext i1 %76(ptr noundef %btcoexist, i8 noundef zeroext 30, ptr noundef getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 49)) #4
  br label %btc8192e2ant_update_ra_mask.exit.i

btc8192e2ant_update_ra_mask.exit.i:               ; preds = %if.then.i.i, %btc8192e2ant_decide_ra_mask.exit.i.btc8192e2ant_update_ra_mask.exit.i_crit_edge
  %77 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 49), align 4
  store i32 %77, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 48), align 4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 52), align 2
  %78 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 51), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %cmp.not.i1.i = icmp eq i8 %78, 0
  br i1 %cmp.not.i1.i, label %btc8192e2ant_update_ra_mask.exit.i.btc8192e2ant_auto_rate_fallback_retry.exit.i_crit_edge, label %sw.bb.i2.i

btc8192e2ant_update_ra_mask.exit.i.btc8192e2ant_auto_rate_fallback_retry.exit.i_crit_edge: ; preds = %btc8192e2ant_update_ra_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8192e2ant_auto_rate_fallback_retry.exit.i

sw.bb.i2.i:                                       ; preds = %btc8192e2ant_update_ra_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %btc_write_4byte.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 23
  %79 = ptrtoint ptr %btc_write_4byte.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %btc_write_4byte.i.i, align 4
  %81 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 38), align 4
  call void %80(ptr noundef %btcoexist, i32 noundef 1072, i32 noundef %81) #4
  %82 = ptrtoint ptr %btc_write_4byte.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %btc_write_4byte.i.i, align 4
  %84 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 39), align 4
  call void %83(ptr noundef %btcoexist, i32 noundef 1076, i32 noundef %84) #4
  br label %btc8192e2ant_auto_rate_fallback_retry.exit.i

btc8192e2ant_auto_rate_fallback_retry.exit.i:     ; preds = %sw.bb.i2.i, %btc8192e2ant_update_ra_mask.exit.i.btc8192e2ant_auto_rate_fallback_retry.exit.i_crit_edge
  %85 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 52), align 2
  store i8 %85, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 51), align 1
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 54), align 4
  %86 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 53), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %cmp.not.i3.i = icmp eq i8 %86, 0
  br i1 %cmp.not.i3.i, label %btc8192e2ant_auto_rate_fallback_retry.exit.i.btc8192e2ant_retry_limit.exit.i_crit_edge, label %sw.bb.i4.i

btc8192e2ant_auto_rate_fallback_retry.exit.i.btc8192e2ant_retry_limit.exit.i_crit_edge: ; preds = %btc8192e2ant_auto_rate_fallback_retry.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8192e2ant_retry_limit.exit.i

sw.bb.i4.i:                                       ; preds = %btc8192e2ant_auto_rate_fallback_retry.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %btc_write_2byte.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 21
  %87 = ptrtoint ptr %btc_write_2byte.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %btc_write_2byte.i.i, align 4
  %89 = load i16, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 40), align 4
  call void %88(ptr noundef %btcoexist, i32 noundef 1066, i16 noundef zeroext %89) #4
  br label %btc8192e2ant_retry_limit.exit.i

btc8192e2ant_retry_limit.exit.i:                  ; preds = %sw.bb.i4.i, %btc8192e2ant_auto_rate_fallback_retry.exit.i.btc8192e2ant_retry_limit.exit.i_crit_edge
  %90 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 54), align 4
  store i8 %90, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 53), align 1
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 56), align 2
  %91 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 55), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %cmp.not.i5.i = icmp eq i8 %91, 0
  br i1 %cmp.not.i5.i, label %btc8192e2ant_retry_limit.exit.i.btc8192e2ant_limited_tx.exit_crit_edge, label %sw.bb.i6.i

btc8192e2ant_retry_limit.exit.i.btc8192e2ant_limited_tx.exit_crit_edge: ; preds = %btc8192e2ant_retry_limit.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8192e2ant_limited_tx.exit

sw.bb.i6.i:                                       ; preds = %btc8192e2ant_retry_limit.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %btc_write_1byte.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %92 = ptrtoint ptr %btc_write_1byte.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %btc_write_1byte.i.i, align 4
  %94 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 41), align 2
  %conv6.i.i = zext i8 %94 to i32
  call void %93(ptr noundef %btcoexist, i32 noundef 1110, i32 noundef %conv6.i.i) #4
  br label %btc8192e2ant_limited_tx.exit

btc8192e2ant_limited_tx.exit:                     ; preds = %sw.bb.i6.i, %btc8192e2ant_retry_limit.exit.i.btc8192e2ant_limited_tx.exit_crit_edge
  %95 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 56), align 2
  store i8 %95, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 55), align 1
  %96 = ptrtoint ptr %wifi_connected.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %wifi_connected.i, align 1, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool7.not.i = icmp eq i8 %97, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %if.else19.i

if.then8.i:                                       ; preds = %btc8192e2ant_limited_tx.exit
  call void @__sanitizer_cov_trace_pc() #6
  %98 = ptrtoint ptr %low_pwr_disable.i77 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %low_pwr_disable.i77, align 1
  %btc_set.i85 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %99 = ptrtoint ptr %btc_set.i85 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %btc_set.i85, align 4
  %call9.i = call zeroext i1 %100(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i77) #4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %57, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.210) #4
  %101 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 44), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %101)
  %switch.i = icmp ult i8 %101, 2
  %..i86 = select i1 %switch.i, i8 2, i8 1
  %.126.i = select i1 %switch.i, i32 1515870810, i32 1431655765
  %not.switch.i = xor i1 %switch.i, true
  %.127.i = zext i1 %not.switch.i to i8
  call fastcc void @btc8192e2ant_switch_ss_type(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext %..i86) #4
  call fastcc void @btc8192e2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef %.126.i, i32 noundef 1515870810) #4
  call fastcc void @btc8192e2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext %.127.i) #4
  call fastcc void @btc8192e2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext false) #4
  %102 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %adapter, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %103, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.111, i32 noundef 0) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %104 = load i8, ptr @glcoex_dm_8192e_2ant, align 4
  %conv2.i.i87 = zext i8 %104 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %103, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %conv2.i.i87, i32 noundef 0) #4
  %105 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %106 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i.i75) #4
  %108 = ptrtoint ptr %h2c_parameter.i.i.i75 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %105, ptr %h2c_parameter.i.i.i75, align 1
  %conv.i.i.i88 = zext i8 %105 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %107, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef %conv.i.i.i88, i32 noundef %conv.i.i.i88) #4
  %btc_fill_h2c.i.i.i89 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %109 = ptrtoint ptr %btc_fill_h2c.i.i.i89 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %btc_fill_h2c.i.i.i89, align 4
  call void %110(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i.i75) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i.i75) #4
  br label %if.then11

if.else19.i:                                      ; preds = %btc8192e2ant_limited_tx.exit
  %111 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 44), align 1
  %112 = zext i8 %111 to i64
  call void @__sanitizer_cov_trace_switch(i64 %112, ptr @__sancov_gen_cov_switch_values.239)
  switch i8 %111, label %if.else38.i [
    i8 0, label %if.then24.i
    i8 1, label %if.then32.i
  ]

if.then24.i:                                      ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #6
  %113 = ptrtoint ptr %low_pwr_disable.i77 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 0, ptr %low_pwr_disable.i77, align 1
  %btc_set25.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %114 = ptrtoint ptr %btc_set25.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %btc_set25.i, align 4
  %call26.i = call zeroext i1 %115(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i77) #4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %57, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.211) #4
  call fastcc void @btc8192e2ant_switch_ss_type(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 2) #4
  call fastcc void @btc8192e2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1515870810, i32 noundef 1515870810) #4
  call fastcc void @btc8192e2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 0) #4
  call fastcc void @btc8192e2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext false) #4
  %116 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %adapter, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %117, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.111, i32 noundef 0) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %118 = load i8, ptr @glcoex_dm_8192e_2ant, align 4
  %conv2.i110.i = zext i8 %118 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %117, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %conv2.i110.i, i32 noundef 0) #4
  %119 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %120 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i108.i) #4
  %122 = ptrtoint ptr %h2c_parameter.i.i108.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %119, ptr %h2c_parameter.i.i108.i, align 1
  %conv.i.i111.i = zext i8 %119 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %121, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef %conv.i.i111.i, i32 noundef %conv.i.i111.i) #4
  %btc_fill_h2c.i.i112.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %123 = ptrtoint ptr %btc_fill_h2c.i.i112.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %btc_fill_h2c.i.i112.i, align 4
  call void %124(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i108.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i108.i) #4
  br label %if.then11

if.then32.i:                                      ; preds = %if.else19.i
  %125 = ptrtoint ptr %low_pwr_disable.i77 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 1, ptr %low_pwr_disable.i77, align 1
  %btc_set33.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %126 = ptrtoint ptr %btc_set33.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %btc_set33.i, align 4
  %call34.i = call zeroext i1 %127(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i77) #4
  %128 = ptrtoint ptr %bt_hs_on.i76 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %bt_hs_on.i76, align 1, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool35.not.i = icmp eq i8 %129, 0
  br i1 %tobool35.not.i, label %if.end37.i, label %if.then32.i.if.else_crit_edge

if.then32.i.if.else_crit_edge:                    ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.end37.i:                                       ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %57, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.212) #4
  call fastcc void @btc8192e2ant_switch_ss_type(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 2) #4
  call fastcc void @btc8192e2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1515870810, i32 noundef 1515870810) #4
  call fastcc void @btc8192e2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 0) #4
  call fastcc void @btc8192e2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext false) #4
  %130 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %adapter, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %131, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.111, i32 noundef 0) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %132 = load i8, ptr @glcoex_dm_8192e_2ant, align 4
  %conv2.i115.i = zext i8 %132 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %131, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %conv2.i115.i, i32 noundef 0) #4
  %133 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %134 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i113.i) #4
  %136 = ptrtoint ptr %h2c_parameter.i.i113.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %133, ptr %h2c_parameter.i.i113.i, align 1
  %conv.i.i116.i = zext i8 %133 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %135, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef %conv.i.i116.i, i32 noundef %conv.i.i116.i) #4
  %btc_fill_h2c.i.i117.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %137 = ptrtoint ptr %btc_fill_h2c.i.i117.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %btc_fill_h2c.i.i117.i, align 4
  call void %138(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i113.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i113.i) #4
  br label %if.then11

if.else38.i:                                      ; preds = %if.else19.i
  %139 = ptrtoint ptr %low_pwr_disable.i77 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 1, ptr %low_pwr_disable.i77, align 1
  %btc_set39.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %140 = ptrtoint ptr %btc_set39.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %btc_set39.i, align 4
  %call40.i = call zeroext i1 %141(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i77) #4
  %142 = ptrtoint ptr %wifi_busy.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %wifi_busy.i, align 1, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool41.not.i = icmp eq i8 %143, 0
  br i1 %tobool41.not.i, label %if.else43.i, label %if.then42.i

if.then42.i:                                      ; preds = %if.else38.i
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %57, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.213) #4
  br label %if.else

if.else43.i:                                      ; preds = %if.else38.i
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %57, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.214) #4
  call fastcc void @btc8192e2ant_switch_ss_type(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 1) #4
  call fastcc void @btc8192e2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1610309627) #4
  call fastcc void @btc8192e2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 21) #4
  call fastcc void @btc8192e2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext false) #4
  %144 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %adapter, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %145, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.111, i32 noundef 0) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %146 = load i8, ptr @glcoex_dm_8192e_2ant, align 4
  %conv2.i120.i = zext i8 %146 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %145, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %conv2.i120.i, i32 noundef 0) #4
  %147 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %148 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i118.i) #4
  %150 = ptrtoint ptr %h2c_parameter.i.i118.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %147, ptr %h2c_parameter.i.i118.i, align 1
  %conv.i.i121.i = zext i8 %147 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %149, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef %conv.i.i121.i, i32 noundef %conv.i.i121.i) #4
  %btc_fill_h2c.i.i122.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %151 = ptrtoint ptr %btc_fill_h2c.i.i122.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %btc_fill_h2c.i.i122.i, align 4
  call void %152(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i118.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i118.i) #4
  br label %if.then11

if.then11:                                        ; preds = %if.else43.i, %if.end37.i, %if.then24.i, %if.then8.i
  %.sink = phi i1 [ false, %if.then24.i ], [ true, %if.end37.i ], [ false, %if.else43.i ], [ false, %if.then8.i ]
  %153 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  store i8 %153, ptr @glcoex_dm_8192e_2ant, align 4
  call fastcc void @btc8192e2ant_sw_mechanism1(ptr noundef %btcoexist, i1 noundef zeroext %.sink) #4
  call fastcc void @btc8192e2ant_sw_mechanism2(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 24) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i77) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_hs_on.i76) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_busy.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_connected.i) #4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.171) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 11), align 1
  br label %cleanup

if.else:                                          ; preds = %if.then42.i, %if.then32.i.if.else_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i77) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_hs_on.i76) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_busy.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_connected.i) #4
  %154 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 43), align 4
  %155 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 42), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %154, i8 %155)
  %cmp15.not = icmp eq i8 %154, %155
  br i1 %cmp15.not, label %if.else.if.end23_crit_edge, label %if.then17

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %conv14 = zext i8 %155 to i32
  %conv13 = zext i8 %154 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.172, i32 noundef %conv14, i32 noundef %conv13) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 11), align 1
  %.pr = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 43), align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then17, %if.else.if.end23_crit_edge
  %156 = phi i8 [ %.pr, %if.then17 ], [ %154, %if.else.if.end23_crit_edge ]
  %157 = zext i8 %156 to i64
  call void @__sanitizer_cov_trace_switch(i64 %157, ptr @__sancov_gen_cov_switch_values.240)
  switch i8 %156, label %sw.default [
    i8 1, label %sw.bb
    i8 2, label %sw.bb26
    i8 3, label %sw.bb27
    i8 4, label %sw.bb28
    i8 5, label %sw.bb29
    i8 6, label %sw.bb30
    i8 7, label %sw.bb31
    i8 8, label %sw.bb32
    i8 9, label %sw.bb33
    i8 10, label %sw.bb34
    i8 11, label %sw.bb35
  ]

sw.bb:                                            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.173) #4
  call fastcc void @btc8192e2ant_action_sco(ptr noundef %btcoexist)
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.174) #4
  call fastcc void @btc8192e2ant_action_sco_pan(ptr noundef %btcoexist)
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.175) #4
  call fastcc void @btc8192e2ant_action_hid(ptr noundef %btcoexist)
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.176) #4
  call fastcc void @btc8192e2ant_action_a2dp(ptr noundef %btcoexist)
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.177) #4
  call fastcc void @btc8192e2ant_action_a2dp_pan_hs(ptr noundef %btcoexist)
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.178) #4
  call fastcc void @btc8192e2ant_action_pan_edr(ptr noundef %btcoexist)
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.179) #4
  call fastcc void @btc8192e2ant_action_pan_hs(ptr noundef %btcoexist)
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.180) #4
  call fastcc void @btc8192e2ant_action_pan_edr_a2dp(ptr noundef %btcoexist)
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.181) #4
  call fastcc void @btc8192e2ant_action_pan_edr_hid(ptr noundef %btcoexist)
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.182) #4
  call fastcc void @btc8192e2ant_action_hid_a2dp_pan_edr(ptr noundef %btcoexist)
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.183) #4
  call fastcc void @btc8192e2ant_action_hid_a2dp(ptr noundef %btcoexist)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.184) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb35, %sw.bb34, %sw.bb33, %sw.bb32, %sw.bb31, %sw.bb30, %sw.bb29, %sw.bb28, %sw.bb27, %sw.bb26, %sw.bb
  %158 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 43), align 4
  store i8 %158, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 42), align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then11, %if.then6, %if.then2, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8192e2ant_halt_notify(ptr noundef %btcoexist) local_unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i.i = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.102) #4
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %3, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.122) #4
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 4), align 4
  %4 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  %6 = ptrtoint ptr %h2c_parameter.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %h2c_parameter.i.i, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %5, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.158, i32 noundef 1) #4
  %btc_fill_h2c.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %7 = ptrtoint ptr %btc_fill_h2c.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %btc_fill_h2c.i.i, align 4
  call void %8(ptr noundef %btcoexist, i8 noundef zeroext 99, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  %9 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 4), align 4, !range !505
  store i8 %9, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 5), align 1
  call void @ex_btc8192e2ant_media_status_notify(ptr noundef %btcoexist, i8 noundef zeroext 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8192e2ant_periodical(ptr noundef %btcoexist) local_unnamed_addr #0 align 64 {
entry:
  %wifi_busy.i = alloca i8, align 1
  %under_4way.i = alloca i8, align 1
  %bt_hs_on.i = alloca i8, align 1
  %wifi_connected.i = alloca i8, align 1
  %bt_disabled.i = alloca i8, align 1
  %h2c_parameter.i = alloca [1 x i8], align 1
  %fw_ver = alloca i32, align 4
  %bt_patch_ver = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_ver) #4
  %2 = ptrtoint ptr %fw_ver to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %fw_ver, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bt_patch_ver) #4
  %3 = ptrtoint ptr %bt_patch_ver to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %bt_patch_ver, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.103) #4
  %4 = load i8, ptr @ex_btc8192e2ant_periodical.dis_ver_info_cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %4)
  %cmp = icmp ult i8 %4, 6
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %stack_info2 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 4
  %add = add nuw nsw i8 %4, 1
  store i8 %add, ptr @ex_btc8192e2ant_periodical.dis_ver_info_cnt, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.104) #4
  %pg_ant_num = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %pg_ant_num to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pg_ant_num, align 1
  %conv6 = zext i8 %6 to i32
  %btdm_ant_num = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 2
  %7 = ptrtoint ptr %btdm_ant_num to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %btdm_ant_num, align 1
  %conv7 = zext i8 %8 to i32
  %btdm_ant_pos = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 3
  %9 = ptrtoint ptr %btdm_ant_pos to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %btdm_ant_pos, align 1
  %conv8 = zext i8 %10 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.105, i32 noundef %conv6, i32 noundef %conv7, i32 noundef %conv8) #4
  %11 = ptrtoint ptr %stack_info2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %stack_info2, align 2, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  %cond = select i1 %tobool.not, ptr @.str.9, ptr @.str.8
  %hci_version = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %hci_version to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %hci_version, align 2
  %conv10 = zext i16 %14 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.106, ptr noundef nonnull %cond, i32 noundef %conv10) #4
  %btc_get = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %15 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %btc_get, align 4
  %call = call zeroext i1 %16(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %bt_patch_ver) #4
  %17 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %btc_get, align 4
  %call12 = call zeroext i1 %18(ptr noundef %btcoexist, i8 noundef zeroext 26, ptr noundef nonnull %fw_ver) #4
  %19 = ptrtoint ptr %fw_ver to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fw_ver, align 4
  %21 = ptrtoint ptr %bt_patch_ver to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bt_patch_ver, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.107, i32 noundef 20130902, i32 noundef 52, i32 noundef %20, i32 noundef %22, i32 noundef %22) #4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.104) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %auto_report_2ant = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 8
  %23 = ptrtoint ptr %auto_report_2ant to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %auto_report_2ant, align 1, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool13.not = icmp eq i8 %24, 0
  br i1 %tobool13.not, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end
  %25 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i) #4
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 14), align 2
  %27 = ptrtoint ptr %h2c_parameter.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %h2c_parameter.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %26, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.229, i32 noundef 1) #4
  %btc_fill_h2c.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %28 = ptrtoint ptr %btc_fill_h2c.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %btc_fill_h2c.i, align 4
  call void %29(ptr noundef %btcoexist, i8 noundef zeroext 97, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i) #4
  %30 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %adapter, align 4
  %btc_read_4byte.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 22
  %32 = ptrtoint ptr %btc_read_4byte.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %btc_read_4byte.i, align 4
  %call.i = call i32 %33(ptr noundef %btcoexist, i32 noundef 1904) #4
  %and.i = and i32 %call.i, 65535
  %shr.i = lshr i32 %call.i, 16
  %34 = ptrtoint ptr %btc_read_4byte.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %btc_read_4byte.i, align 4
  %call3.i = call i32 %35(ptr noundef %btcoexist, i32 noundef 1908) #4
  %and4.i = and i32 %call3.i, 65535
  %shr6.i = lshr i32 %call3.i, 16
  store i32 %and.i, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 7), align 4
  store i32 %shr.i, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 8), align 4
  store i32 %and4.i, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 9), align 4
  store i32 %shr6.i, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 10), align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %31, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.153, i32 noundef 1904, i32 noundef %and.i, i32 noundef %and.i, i32 noundef %shr.i, i32 noundef %shr.i) #4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %31, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.154, i32 noundef 1908, i32 noundef %and4.i, i32 noundef %and4.i, i32 noundef %shr6.i, i32 noundef %shr6.i) #4
  %btc_write_1byte.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %36 = ptrtoint ptr %btc_write_1byte.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %btc_write_1byte.i, align 4
  call void %37(ptr noundef %btcoexist, i32 noundef 1902, i32 noundef 12) #4
  %38 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_disabled.i) #4
  %40 = ptrtoint ptr %bt_disabled.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %bt_disabled.i, align 1
  %41 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 7), align 4
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.241)
  switch i32 %41, label %if.then14.if.then19.i_crit_edge [
    i32 0, label %land.lhs.true.i
    i32 65535, label %land.lhs.true8.i
  ]

if.then14.if.then19.i_crit_edge:                  ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19.i

land.lhs.true.i:                                  ; preds = %if.then14
  %43 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 8), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp1.i = icmp eq i32 %43, 0
  br i1 %cmp1.i, label %land.lhs.true2.i, label %land.lhs.true.i.if.then19.i_crit_edge

land.lhs.true.i.if.then19.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %44 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 9), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp3.i = icmp eq i32 %44, 0
  br i1 %cmp3.i, label %if.end18.i, label %land.lhs.true2.i.if.then19.i_crit_edge

land.lhs.true2.i.if.then19.i_crit_edge:           ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19.i

land.lhs.true8.i:                                 ; preds = %if.then14
  %45 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 8), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %45)
  %cmp10.i = icmp eq i32 %45, 65535
  br i1 %cmp10.i, label %land.lhs.true11.i, label %land.lhs.true8.i.if.then19.i_crit_edge

land.lhs.true8.i.if.then19.i_crit_edge:           ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19.i

land.lhs.true11.i:                                ; preds = %land.lhs.true8.i
  %46 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 9), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %46)
  %cmp13.i = icmp eq i32 %46, 65535
  br i1 %cmp13.i, label %land.lhs.true14.i, label %land.lhs.true11.i.if.then19.i_crit_edge

land.lhs.true11.i.if.then19.i_crit_edge:          ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19.i

land.lhs.true14.i:                                ; preds = %land.lhs.true11.i
  %47 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 10), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %47)
  %cmp16.not.i = icmp eq i32 %47, 65535
  br i1 %cmp16.not.i, label %land.lhs.true14.i.if.else.i_crit_edge, label %land.lhs.true14.i.if.then19.i_crit_edge

land.lhs.true14.i.if.then19.i_crit_edge:          ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19.i

land.lhs.true14.i.if.else.i_crit_edge:            ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

if.end18.i:                                       ; preds = %land.lhs.true2.i
  %48 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 10), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp5.not.i = icmp eq i32 %48, 0
  br i1 %cmp5.not.i, label %if.end18.i.if.else.i_crit_edge, label %if.end18.i.if.then19.i_crit_edge

if.end18.i.if.then19.i_crit_edge:                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19.i

if.end18.i.if.else.i_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

if.then19.i:                                      ; preds = %if.end18.i.if.then19.i_crit_edge, %land.lhs.true14.i.if.then19.i_crit_edge, %land.lhs.true11.i.if.then19.i_crit_edge, %land.lhs.true8.i.if.then19.i_crit_edge, %land.lhs.true2.i.if.then19.i_crit_edge, %land.lhs.true.i.if.then19.i_crit_edge, %if.then14.if.then19.i_crit_edge
  store i32 0, ptr @btc8192e2ant_monitor_bt_enable_disable.bt_disable_cnt, align 4
  br label %if.end25.sink.split.i

if.else.i:                                        ; preds = %if.end18.i.if.else.i_crit_edge, %land.lhs.true14.i.if.else.i_crit_edge
  %49 = load i32, ptr @btc8192e2ant_monitor_bt_enable_disable.bt_disable_cnt, align 4
  %inc.i = add i32 %49, 1
  store i32 %inc.i, ptr @btc8192e2ant_monitor_bt_enable_disable.bt_disable_cnt, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.231, i32 noundef %inc.i) #4
  %50 = load i32, ptr @btc8192e2ant_monitor_bt_enable_disable.bt_disable_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp20.i = icmp ugt i32 %50, 1
  br i1 %cmp20.i, label %if.then21.i, label %if.else.i.if.end25.i_crit_edge

if.else.i.if.end25.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25.i

if.then21.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  %51 = ptrtoint ptr %bt_disabled.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %bt_disabled.i, align 1
  br label %if.end25.sink.split.i

if.end25.sink.split.i:                            ; preds = %if.then21.i, %if.then19.i
  %.str.232.sink.i = phi ptr [ @.str.232, %if.then21.i ], [ @.str.230, %if.then19.i ]
  %btc_set22.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %52 = ptrtoint ptr %btc_set22.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %btc_set22.i, align 4
  %call23.i = call zeroext i1 %53(ptr noundef %btcoexist, i8 noundef zeroext 0, ptr noundef nonnull %bt_disabled.i) #4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.232.sink.i) #4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.end25.sink.split.i, %if.else.i.if.end25.i_crit_edge
  %54 = load i8, ptr @btc8192e2ant_monitor_bt_enable_disable.pre_bt_disabled, align 1, !range !505
  %55 = ptrtoint ptr %bt_disabled.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %bt_disabled.i, align 1, !range !505
  call void @__sanitizer_cov_trace_cmp1(i8 %54, i8 %56)
  %cmp29.not.i = icmp eq i8 %54, %56
  br i1 %cmp29.not.i, label %if.end25.i.btc8192e2ant_monitor_bt_enable_disable.exit_crit_edge, label %if.then31.i

if.end25.i.btc8192e2ant_monitor_bt_enable_disable.exit_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8192e2ant_monitor_bt_enable_disable.exit

if.then31.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool27.not.i = icmp eq i8 %56, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool26.not.i = icmp eq i8 %54, 0
  %cond.i = select i1 %tobool26.not.i, ptr @.str.234, ptr @.str.32
  %cond36.i = select i1 %tobool27.not.i, ptr @.str.234, ptr @.str.32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.233, ptr noundef nonnull %cond.i, ptr noundef nonnull %cond36.i) #4
  %57 = ptrtoint ptr %bt_disabled.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %bt_disabled.i, align 1, !range !505
  store i8 %58, ptr @btc8192e2ant_monitor_bt_enable_disable.pre_bt_disabled, align 1
  br label %btc8192e2ant_monitor_bt_enable_disable.exit

btc8192e2ant_monitor_bt_enable_disable.exit:      ; preds = %if.then31.i, %if.end25.i.btc8192e2ant_monitor_bt_enable_disable.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_disabled.i) #4
  br label %if.end21

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_busy.i) #4
  %59 = ptrtoint ptr %wifi_busy.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %wifi_busy.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %under_4way.i) #4
  %60 = ptrtoint ptr %under_4way.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %under_4way.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_hs_on.i) #4
  %61 = ptrtoint ptr %bt_hs_on.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %bt_hs_on.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_connected.i) #4
  %62 = ptrtoint ptr %wifi_connected.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %wifi_connected.i, align 1
  %btc_get.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %63 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %btc_get.i, align 4
  %call.i44 = call zeroext i1 %64(ptr noundef %btcoexist, i8 noundef zeroext 2, ptr noundef nonnull %wifi_connected.i) #4
  %65 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %btc_get.i, align 4
  %call2.i = call zeroext i1 %66(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %wifi_busy.i) #4
  %67 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %btc_get.i, align 4
  %call4.i = call zeroext i1 %68(ptr noundef %btcoexist, i8 noundef zeroext 0, ptr noundef nonnull %bt_hs_on.i) #4
  %69 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %btc_get.i, align 4
  %call6.i = call zeroext i1 %70(ptr noundef %btcoexist, i8 noundef zeroext 12, ptr noundef nonnull %under_4way.i) #4
  %71 = ptrtoint ptr %wifi_connected.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %wifi_connected.i, align 1, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool.not.i = icmp eq i8 %72, 0
  br i1 %tobool.not.i, label %if.else.lor.lhs.false_crit_edge, label %if.then.i

if.else.lor.lhs.false_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false

if.then.i:                                        ; preds = %if.else
  %73 = ptrtoint ptr %wifi_busy.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %wifi_busy.i, align 1, !range !505
  %75 = load i8, ptr @btc8192e2ant_is_wifi_status_changed.pre_wifi_busy, align 1, !range !505
  call void @__sanitizer_cov_trace_cmp1(i8 %74, i8 %75)
  %cmp.not.i = icmp eq i8 %74, %75
  br i1 %cmp.not.i, label %if.end.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  store i8 %74, ptr @btc8192e2ant_is_wifi_status_changed.pre_wifi_busy, align 1
  br label %btc8192e2ant_is_wifi_status_changed.exit.thread

if.end.i:                                         ; preds = %if.then.i
  %76 = ptrtoint ptr %under_4way.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %under_4way.i, align 1, !range !505
  %78 = load i8, ptr @btc8192e2ant_is_wifi_status_changed.pre_under_4way, align 1, !range !505
  call void @__sanitizer_cov_trace_cmp1(i8 %77, i8 %78)
  %cmp17.not.i = icmp eq i8 %77, %78
  br i1 %cmp17.not.i, label %if.end22.i, label %if.then19.i45

if.then19.i45:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  store i8 %77, ptr @btc8192e2ant_is_wifi_status_changed.pre_under_4way, align 1
  br label %btc8192e2ant_is_wifi_status_changed.exit.thread

if.end22.i:                                       ; preds = %if.end.i
  %79 = ptrtoint ptr %bt_hs_on.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %bt_hs_on.i, align 1, !range !505
  %81 = load i8, ptr @btc8192e2ant_is_wifi_status_changed.pre_bt_hs_on, align 1, !range !505
  call void @__sanitizer_cov_trace_cmp1(i8 %80, i8 %81)
  %cmp27.not.i = icmp eq i8 %80, %81
  br i1 %cmp27.not.i, label %if.end22.i.lor.lhs.false_crit_edge, label %if.then29.i

if.end22.i.lor.lhs.false_crit_edge:               ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false

if.then29.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #6
  store i8 %80, ptr @btc8192e2ant_is_wifi_status_changed.pre_bt_hs_on, align 1
  br label %btc8192e2ant_is_wifi_status_changed.exit.thread

btc8192e2ant_is_wifi_status_changed.exit.thread:  ; preds = %if.then29.i, %if.then19.i45, %if.then11.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_connected.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_hs_on.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %under_4way.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_busy.i) #4
  br label %if.then19

lor.lhs.false:                                    ; preds = %if.end22.i.lor.lhs.false_crit_edge, %if.else.lor.lhs.false_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_connected.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_hs_on.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %under_4way.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_busy.i) #4
  %82 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 11), align 1, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool17.not = icmp eq i8 %82, 0
  br i1 %tobool17.not, label %lor.lhs.false.if.end21_crit_edge, label %lor.lhs.false.if.then19_crit_edge

lor.lhs.false.if.then19_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19

lor.lhs.false.if.end21_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

if.then19:                                        ; preds = %lor.lhs.false.if.then19_crit_edge, %btc8192e2ant_is_wifi_status_changed.exit.thread
  call fastcc void @btc8192e2ant_run_coexist_mechanism(ptr noundef %btcoexist)
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %lor.lhs.false.if.end21_crit_edge, %btc8192e2ant_monitor_bt_enable_disable.exit
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bt_patch_ver) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_ver) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8192e2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext %force_exec, i32 noundef %val0x6c0, i32 noundef %val0x6c4) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %cond = select i1 %force_exec, ptr @.str.110, ptr @.str.111
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.109, ptr noundef nonnull %cond, i32 noundef %val0x6c0) #4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.112, i32 noundef %val0x6c4, i32 noundef 16777215, i32 noundef 3) #4
  store i32 %val0x6c0, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 30), align 4
  store i32 %val0x6c4, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 32), align 4
  store i32 16777215, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 34), align 4
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 36), align 1
  br i1 %force_exec, label %entry.if.end28_crit_edge, label %if.then

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

if.then:                                          ; preds = %entry
  %2 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 29), align 4
  %3 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 31), align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.113, i32 noundef %2, i32 noundef %3) #4
  %4 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 33), align 4
  %5 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 35), align 4
  %conv2 = zext i8 %5 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.114, i32 noundef %4, i32 noundef %conv2) #4
  %6 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 30), align 4
  %7 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 32), align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.115, i32 noundef %6, i32 noundef %7) #4
  %8 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 34), align 4
  %9 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 36), align 1
  %conv7 = zext i8 %9 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.116, i32 noundef %8, i32 noundef %conv7) #4
  %10 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 29), align 4
  %11 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 30), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %11)
  %cmp = icmp eq i32 %10, %11
  br i1 %cmp, label %land.lhs.true, label %if.then.if.end28_crit_edge

if.then.if.end28_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

land.lhs.true:                                    ; preds = %if.then
  %12 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 31), align 4
  %13 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 32), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %13)
  %cmp13 = icmp eq i32 %12, %13
  br i1 %cmp13, label %land.lhs.true15, label %land.lhs.true.if.end28_crit_edge

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

land.lhs.true15:                                  ; preds = %land.lhs.true
  %14 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 33), align 4
  %15 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 34), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %15)
  %cmp18 = icmp eq i32 %14, %15
  br i1 %cmp18, label %land.lhs.true20, label %land.lhs.true15.if.end28_crit_edge

land.lhs.true15.if.end28_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

land.lhs.true20:                                  ; preds = %land.lhs.true15
  %16 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 35), align 4
  %17 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 36), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %17)
  %cmp25 = icmp eq i8 %16, %17
  br i1 %cmp25, label %land.lhs.true20.cleanup_crit_edge, label %land.lhs.true20.if.end28_crit_edge

land.lhs.true20.if.end28_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

land.lhs.true20.cleanup_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end28:                                         ; preds = %land.lhs.true20.if.end28_crit_edge, %land.lhs.true15.if.end28_crit_edge, %land.lhs.true.if.end28_crit_edge, %if.then.if.end28_crit_edge, %entry.if.end28_crit_edge
  %18 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.117, i32 noundef %val0x6c0) #4
  %btc_write_4byte.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 23
  %20 = ptrtoint ptr %btc_write_4byte.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %btc_write_4byte.i, align 4
  tail call void %21(ptr noundef %btcoexist, i32 noundef 1728, i32 noundef %val0x6c0) #4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.118, i32 noundef %val0x6c4) #4
  %22 = ptrtoint ptr %btc_write_4byte.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %btc_write_4byte.i, align 4
  tail call void %23(ptr noundef %btcoexist, i32 noundef 1732, i32 noundef %val0x6c4) #4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.119, i32 noundef 16777215) #4
  %24 = ptrtoint ptr %btc_write_4byte.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %btc_write_4byte.i, align 4
  tail call void %25(ptr noundef %btcoexist, i32 noundef 1736, i32 noundef 16777215) #4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.120, i32 noundef 3) #4
  %btc_write_1byte.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %26 = ptrtoint ptr %btc_write_1byte.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %btc_write_1byte.i, align 4
  tail call void %27(ptr noundef %btcoexist, i32 noundef 1740, i32 noundef 3) #4
  %28 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 30), align 4
  store i32 %28, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 29), align 4
  %29 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 32), align 4
  store i32 %29, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 31), align 4
  %30 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 34), align 4
  store i32 %30, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 33), align 4
  %31 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 36), align 1
  store i8 %31, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 35), align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %land.lhs.true20.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8192e2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext %force_exec, i1 noundef zeroext %turn_on, i8 noundef zeroext %type) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i259 = alloca [5 x i8], align 1
  %h2c_parameter.i252 = alloca [5 x i8], align 1
  %h2c_parameter.i245 = alloca [5 x i8], align 1
  %h2c_parameter.i238 = alloca [5 x i8], align 1
  %h2c_parameter.i231 = alloca [5 x i8], align 1
  %h2c_parameter.i224 = alloca [5 x i8], align 1
  %h2c_parameter.i217 = alloca [5 x i8], align 1
  %h2c_parameter.i210 = alloca [5 x i8], align 1
  %h2c_parameter.i203 = alloca [5 x i8], align 1
  %h2c_parameter.i196 = alloca [5 x i8], align 1
  %h2c_parameter.i189 = alloca [5 x i8], align 1
  %h2c_parameter.i182 = alloca [5 x i8], align 1
  %h2c_parameter.i175 = alloca [5 x i8], align 1
  %h2c_parameter.i168 = alloca [5 x i8], align 1
  %h2c_parameter.i161 = alloca [5 x i8], align 1
  %h2c_parameter.i154 = alloca [5 x i8], align 1
  %h2c_parameter.i147 = alloca [5 x i8], align 1
  %h2c_parameter.i140 = alloca [5 x i8], align 1
  %h2c_parameter.i133 = alloca [5 x i8], align 1
  %h2c_parameter.i126 = alloca [5 x i8], align 1
  %h2c_parameter.i119 = alloca [5 x i8], align 1
  %h2c_parameter.i112 = alloca [5 x i8], align 1
  %h2c_parameter.i105 = alloca [5 x i8], align 1
  %h2c_parameter.i = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool1 = zext i1 %turn_on to i8
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %cond = select i1 %force_exec, ptr @.str.110, ptr @.str.111
  %cond3 = select i1 %turn_on, ptr @.str.122, ptr @.str.123
  %conv = zext i8 %type to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.121, ptr noundef nonnull %cond, ptr noundef nonnull %cond3, i32 noundef %conv) #4
  store i8 %frombool1, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 13), align 1
  store i8 %type, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 7), align 1
  br i1 %force_exec, label %entry.if.end29_crit_edge, label %if.then

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

if.then:                                          ; preds = %entry
  %2 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 12), align 4, !range !505
  %3 = zext i8 %2 to i32
  %4 = zext i1 %turn_on to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.124, i32 noundef %3, i32 noundef %4) #4
  %5 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 6), align 2
  %conv12 = zext i8 %5 to i32
  %6 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 7), align 1
  %conv14 = zext i8 %6 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.125, i32 noundef %conv12, i32 noundef %conv14) #4
  %7 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 12), align 4, !range !505
  %8 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 13), align 1, !range !505
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %8)
  %cmp = icmp eq i8 %7, %8
  br i1 %cmp, label %land.lhs.true, label %if.then.if.end29_crit_edge

if.then.if.end29_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

land.lhs.true:                                    ; preds = %if.then
  %9 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 6), align 2
  %10 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 7), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %10)
  %cmp26 = icmp eq i8 %9, %10
  br i1 %cmp26, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end29_crit_edge

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end29:                                         ; preds = %land.lhs.true.if.end29_crit_edge, %if.then.if.end29_crit_edge, %entry.if.end29_crit_edge
  br i1 %turn_on, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.end29
  %11 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.242)
  switch i8 %type, label %sw.default [
    i8 71, label %sw.bb53
    i8 2, label %sw.bb33
    i8 3, label %sw.bb34
    i8 4, label %sw.bb35
    i8 5, label %sw.bb36
    i8 6, label %sw.bb37
    i8 7, label %sw.bb38
    i8 8, label %sw.bb39
    i8 9, label %sw.bb40
    i8 10, label %sw.bb41
    i8 11, label %sw.bb42
    i8 12, label %sw.bb43
    i8 13, label %sw.bb44
    i8 14, label %sw.bb45
    i8 15, label %sw.bb46
    i8 16, label %sw.bb47
    i8 17, label %sw.bb48
    i8 18, label %sw.bb49
    i8 19, label %sw.bb50
    i8 20, label %sw.bb51
    i8 21, label %sw.bb52
  ]

sw.default:                                       ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i) #4
  %14 = ptrtoint ptr %h2c_parameter.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -29, ptr %h2c_parameter.i, align 1
  %arrayidx1.i = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 26, ptr %arrayidx1.i, align 1
  %arrayidx2.i = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i, i32 0, i32 2
  %16 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 26, ptr %arrayidx2.i, align 1
  %arrayidx3.i = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -31, ptr %arrayidx3.i, align 1
  %arrayidx4.i = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i, i32 0, i32 4
  %18 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -112, ptr %arrayidx4.i, align 1
  store i8 -29, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8), align 4
  store i8 26, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 1), align 1
  store i8 26, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 2), align 2
  store i8 -31, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 3), align 1
  store i8 -112, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 4), align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %13, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.126, i32 noundef 227, i32 noundef 437969296) #4
  %btc_fill_h2c.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %19 = ptrtoint ptr %btc_fill_h2c.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %btc_fill_h2c.i, align 4
  call void %20(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i) #4
  br label %if.end61

sw.bb33:                                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i105) #4
  %23 = ptrtoint ptr %h2c_parameter.i105 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -29, ptr %h2c_parameter.i105, align 1
  %arrayidx1.i107 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i105, i32 0, i32 1
  %24 = ptrtoint ptr %arrayidx1.i107 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 18, ptr %arrayidx1.i107, align 1
  %arrayidx2.i108 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i105, i32 0, i32 2
  %25 = ptrtoint ptr %arrayidx2.i108 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 18, ptr %arrayidx2.i108, align 1
  %arrayidx3.i109 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i105, i32 0, i32 3
  %26 = ptrtoint ptr %arrayidx3.i109 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -31, ptr %arrayidx3.i109, align 1
  %arrayidx4.i110 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i105, i32 0, i32 4
  %27 = ptrtoint ptr %arrayidx4.i110 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -112, ptr %arrayidx4.i110, align 1
  store i8 -29, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8), align 4
  store i8 18, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 1), align 1
  store i8 18, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 2), align 2
  store i8 -31, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 3), align 1
  store i8 -112, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 4), align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %22, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.126, i32 noundef 227, i32 noundef 303227280) #4
  %btc_fill_h2c.i111 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %28 = ptrtoint ptr %btc_fill_h2c.i111 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %btc_fill_h2c.i111, align 4
  call void %29(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i105) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i105) #4
  br label %if.end61

sw.bb34:                                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i112) #4
  %32 = ptrtoint ptr %h2c_parameter.i112 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -29, ptr %h2c_parameter.i112, align 1
  %arrayidx1.i114 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i112, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx1.i114 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 28, ptr %arrayidx1.i114, align 1
  %arrayidx2.i115 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i112, i32 0, i32 2
  %34 = ptrtoint ptr %arrayidx2.i115 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 3, ptr %arrayidx2.i115, align 1
  %arrayidx3.i116 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i112, i32 0, i32 3
  %35 = ptrtoint ptr %arrayidx3.i116 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -15, ptr %arrayidx3.i116, align 1
  %arrayidx4.i117 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i112, i32 0, i32 4
  %36 = ptrtoint ptr %arrayidx4.i117 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -112, ptr %arrayidx4.i117, align 1
  store i8 -29, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8), align 4
  store i8 28, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 1), align 1
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 2), align 2
  store i8 -15, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 3), align 1
  store i8 -112, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 4), align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %31, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.126, i32 noundef 227, i32 noundef 470020496) #4
  %btc_fill_h2c.i118 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %37 = ptrtoint ptr %btc_fill_h2c.i118 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %btc_fill_h2c.i118, align 4
  call void %38(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i112) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i112) #4
  br label %if.end61

sw.bb35:                                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  %39 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i119) #4
  %41 = ptrtoint ptr %h2c_parameter.i119 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -29, ptr %h2c_parameter.i119, align 1
  %arrayidx1.i121 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i119, i32 0, i32 1
  %42 = ptrtoint ptr %arrayidx1.i121 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 16, ptr %arrayidx1.i121, align 1
  %arrayidx2.i122 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i119, i32 0, i32 2
  %43 = ptrtoint ptr %arrayidx2.i122 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 3, ptr %arrayidx2.i122, align 1
  %arrayidx3.i123 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i119, i32 0, i32 3
  %44 = ptrtoint ptr %arrayidx3.i123 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -15, ptr %arrayidx3.i123, align 1
  %arrayidx4.i124 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i119, i32 0, i32 4
  %45 = ptrtoint ptr %arrayidx4.i124 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -112, ptr %arrayidx4.i124, align 1
  store i8 -29, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8), align 4
  store i8 16, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 1), align 1
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 2), align 2
  store i8 -15, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 3), align 1
  store i8 -112, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 4), align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %40, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.126, i32 noundef 227, i32 noundef 268693904) #4
  %btc_fill_h2c.i125 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %46 = ptrtoint ptr %btc_fill_h2c.i125 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %btc_fill_h2c.i125, align 4
  call void %47(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i119) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i119) #4
  br label %if.end61

sw.bb36:                                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  %48 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i126) #4
  %50 = ptrtoint ptr %h2c_parameter.i126 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 -29, ptr %h2c_parameter.i126, align 1
  %arrayidx1.i128 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i126, i32 0, i32 1
  %51 = ptrtoint ptr %arrayidx1.i128 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 26, ptr %arrayidx1.i128, align 1
  %arrayidx2.i129 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i126, i32 0, i32 2
  %52 = ptrtoint ptr %arrayidx2.i129 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 26, ptr %arrayidx2.i129, align 1
  %arrayidx3.i130 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i126, i32 0, i32 3
  %53 = ptrtoint ptr %arrayidx3.i130 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 96, ptr %arrayidx3.i130, align 1
  %arrayidx4.i131 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i126, i32 0, i32 4
  %54 = ptrtoint ptr %arrayidx4.i131 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -112, ptr %arrayidx4.i131, align 1
  store i8 -29, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8), align 4
  store i8 26, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 1), align 1
  store i8 26, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 2), align 2
  store i8 96, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 3), align 1
  store i8 -112, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 4), align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %49, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.126, i32 noundef 227, i32 noundef 437936272) #4
  %btc_fill_h2c.i132 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %55 = ptrtoint ptr %btc_fill_h2c.i132 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %btc_fill_h2c.i132, align 4
  call void %56(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i126) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i126) #4
  br label %if.end61

sw.bb37:                                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  %57 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i133) #4
  %59 = ptrtoint ptr %h2c_parameter.i133 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 -29, ptr %h2c_parameter.i133, align 1
  %arrayidx1.i135 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i133, i32 0, i32 1
  %60 = ptrtoint ptr %arrayidx1.i135 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 18, ptr %arrayidx1.i135, align 1
  %arrayidx2.i136 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i133, i32 0, i32 2
  %61 = ptrtoint ptr %arrayidx2.i136 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 18, ptr %arrayidx2.i136, align 1
  %arrayidx3.i137 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i133, i32 0, i32 3
  %62 = ptrtoint ptr %arrayidx3.i137 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 96, ptr %arrayidx3.i137, align 1
  %arrayidx4.i138 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i133, i32 0, i32 4
  %63 = ptrtoint ptr %arrayidx4.i138 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 -112, ptr %arrayidx4.i138, align 1
  store i8 -29, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8), align 4
  store i8 18, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 1), align 1
  store i8 18, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 2), align 2
  store i8 96, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 3), align 1
  store i8 -112, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 4), align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %58, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.126, i32 noundef 227, i32 noundef 303194256) #4
  %btc_fill_h2c.i139 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %64 = ptrtoint ptr %btc_fill_h2c.i139 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %btc_fill_h2c.i139, align 4
  call void %65(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i133) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i133) #4
  br label %if.end61

sw.bb38:                                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  %66 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i140) #4
  %68 = ptrtoint ptr %h2c_parameter.i140 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 -29, ptr %h2c_parameter.i140, align 1
  %arrayidx1.i142 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i140, i32 0, i32 1
  %69 = ptrtoint ptr %arrayidx1.i142 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 28, ptr %arrayidx1.i142, align 1
  %arrayidx2.i143 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i140, i32 0, i32 2
  %70 = ptrtoint ptr %arrayidx2.i143 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 3, ptr %arrayidx2.i143, align 1
  %arrayidx3.i144 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i140, i32 0, i32 3
  %71 = ptrtoint ptr %arrayidx3.i144 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 112, ptr %arrayidx3.i144, align 1
  %arrayidx4.i145 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i140, i32 0, i32 4
  %72 = ptrtoint ptr %arrayidx4.i145 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 -112, ptr %arrayidx4.i145, align 1
  store i8 -29, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8), align 4
  store i8 28, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 1), align 1
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 2), align 2
  store i8 112, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 3), align 1
  store i8 -112, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 4), align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %67, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.126, i32 noundef 227, i32 noundef 469987472) #4
  %btc_fill_h2c.i146 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %73 = ptrtoint ptr %btc_fill_h2c.i146 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %btc_fill_h2c.i146, align 4
  call void %74(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i140) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i140) #4
  br label %if.end61

sw.bb39:                                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  %75 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i147) #4
  %77 = ptrtoint ptr %h2c_parameter.i147 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 -93, ptr %h2c_parameter.i147, align 1
  %arrayidx1.i149 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i147, i32 0, i32 1
  %78 = ptrtoint ptr %arrayidx1.i149 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 16, ptr %arrayidx1.i149, align 1
  %arrayidx2.i150 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i147, i32 0, i32 2
  %79 = ptrtoint ptr %arrayidx2.i150 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 3, ptr %arrayidx2.i150, align 1
  %arrayidx3.i151 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i147, i32 0, i32 3
  %80 = ptrtoint ptr %arrayidx3.i151 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 112, ptr %arrayidx3.i151, align 1
  %arrayidx4.i152 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i147, i32 0, i32 4
  %81 = ptrtoint ptr %arrayidx4.i152 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 -112, ptr %arrayidx4.i152, align 1
  store i8 -93, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8), align 4
  store i8 16, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 1), align 1
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 2), align 2
  store i8 112, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 3), align 1
  store i8 -112, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 4), align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %76, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.126, i32 noundef 163, i32 noundef 268660880) #4
  %btc_fill_h2c.i153 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %82 = ptrtoint ptr %btc_fill_h2c.i153 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %btc_fill_h2c.i153, align 4
  call void %83(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i147) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i147) #4
  br label %if.end61

sw.bb40:                                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  %84 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i154) #4
  %86 = ptrtoint ptr %h2c_parameter.i154 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 -29, ptr %h2c_parameter.i154, align 1
  %arrayidx1.i156 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i154, i32 0, i32 1
  %87 = ptrtoint ptr %arrayidx1.i156 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 26, ptr %arrayidx1.i156, align 1
  %arrayidx2.i157 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i154, i32 0, i32 2
  %88 = ptrtoint ptr %arrayidx2.i157 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 26, ptr %arrayidx2.i157, align 1
  %arrayidx3.i158 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i154, i32 0, i32 3
  %89 = ptrtoint ptr %arrayidx3.i158 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 -31, ptr %arrayidx3.i158, align 1
  %arrayidx4.i159 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i154, i32 0, i32 4
  %90 = ptrtoint ptr %arrayidx4.i159 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 16, ptr %arrayidx4.i159, align 1
  store i8 -29, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8), align 4
  store i8 26, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 1), align 1
  store i8 26, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 2), align 2
  store i8 -31, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 3), align 1
  store i8 16, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 4), align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %85, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.126, i32 noundef 227, i32 noundef 437969168) #4
  %btc_fill_h2c.i160 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %91 = ptrtoint ptr %btc_fill_h2c.i160 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %btc_fill_h2c.i160, align 4
  call void %92(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i154) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i154) #4
  br label %if.end61

sw.bb41:                                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  %93 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i161) #4
  %95 = ptrtoint ptr %h2c_parameter.i161 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 -29, ptr %h2c_parameter.i161, align 1
  %arrayidx1.i163 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i161, i32 0, i32 1
  %96 = ptrtoint ptr %arrayidx1.i163 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 18, ptr %arrayidx1.i163, align 1
  %arrayidx2.i164 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i161, i32 0, i32 2
  %97 = ptrtoint ptr %arrayidx2.i164 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 18, ptr %arrayidx2.i164, align 1
  %arrayidx3.i165 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i161, i32 0, i32 3
  %98 = ptrtoint ptr %arrayidx3.i165 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 -31, ptr %arrayidx3.i165, align 1
  %arrayidx4.i166 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i161, i32 0, i32 4
  %99 = ptrtoint ptr %arrayidx4.i166 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 16, ptr %arrayidx4.i166, align 1
  store i8 -29, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8), align 4
  store i8 18, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 1), align 1
  store i8 18, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 2), align 2
  store i8 -31, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 3), align 1
  store i8 16, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 4), align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %94, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.126, i32 noundef 227, i32 noundef 303227152) #4
  %btc_fill_h2c.i167 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %100 = ptrtoint ptr %btc_fill_h2c.i167 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %btc_fill_h2c.i167, align 4
  call void %101(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i161) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i161) #4
  br label %if.end61

sw.bb42:                                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  %102 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i168) #4
  %104 = ptrtoint ptr %h2c_parameter.i168 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 -29, ptr %h2c_parameter.i168, align 1
  %arrayidx1.i170 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i168, i32 0, i32 1
  %105 = ptrtoint ptr %arrayidx1.i170 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 28, ptr %arrayidx1.i170, align 1
  %arrayidx2.i171 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i168, i32 0, i32 2
  %106 = ptrtoint ptr %arrayidx2.i171 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 3, ptr %arrayidx2.i171, align 1
  %arrayidx3.i172 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i168, i32 0, i32 3
  %107 = ptrtoint ptr %arrayidx3.i172 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 -15, ptr %arrayidx3.i172, align 1
  %arrayidx4.i173 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i168, i32 0, i32 4
  %108 = ptrtoint ptr %arrayidx4.i173 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 16, ptr %arrayidx4.i173, align 1
  store i8 -29, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8), align 4
  store i8 28, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 1), align 1
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 2), align 2
  store i8 -15, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 3), align 1
  store i8 16, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 4), align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %103, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.126, i32 noundef 227, i32 noundef 470020368) #4
  %btc_fill_h2c.i174 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %109 = ptrtoint ptr %btc_fill_h2c.i174 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %btc_fill_h2c.i174, align 4
  call void %110(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i168) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i168) #4
  br label %if.end61

sw.bb43:                                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  %111 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i175) #4
  %113 = ptrtoint ptr %h2c_parameter.i175 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 -29, ptr %h2c_parameter.i175, align 1
  %arrayidx1.i177 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i175, i32 0, i32 1
  %114 = ptrtoint ptr %arrayidx1.i177 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 16, ptr %arrayidx1.i177, align 1
  %arrayidx2.i178 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i175, i32 0, i32 2
  %115 = ptrtoint ptr %arrayidx2.i178 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 3, ptr %arrayidx2.i178, align 1
  %arrayidx3.i179 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i175, i32 0, i32 3
  %116 = ptrtoint ptr %arrayidx3.i179 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 -15, ptr %arrayidx3.i179, align 1
  %arrayidx4.i180 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i175, i32 0, i32 4
  %117 = ptrtoint ptr %arrayidx4.i180 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 16, ptr %arrayidx4.i180, align 1
  store i8 -29, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8), align 4
  store i8 16, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 1), align 1
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 2), align 2
  store i8 -15, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 3), align 1
  store i8 16, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 4), align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %112, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.126, i32 noundef 227, i32 noundef 268693776) #4
  %btc_fill_h2c.i181 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %118 = ptrtoint ptr %btc_fill_h2c.i181 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %btc_fill_h2c.i181, align 4
  call void %119(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i175) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i175) #4
  br label %if.end61

sw.bb44:                                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  %120 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i182) #4
  %122 = ptrtoint ptr %h2c_parameter.i182 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 -29, ptr %h2c_parameter.i182, align 1
  %arrayidx1.i184 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i182, i32 0, i32 1
  %123 = ptrtoint ptr %arrayidx1.i184 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 26, ptr %arrayidx1.i184, align 1
  %arrayidx2.i185 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i182, i32 0, i32 2
  %124 = ptrtoint ptr %arrayidx2.i185 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 26, ptr %arrayidx2.i185, align 1
  %arrayidx3.i186 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i182, i32 0, i32 3
  %125 = ptrtoint ptr %arrayidx3.i186 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 -32, ptr %arrayidx3.i186, align 1
  %arrayidx4.i187 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i182, i32 0, i32 4
  %126 = ptrtoint ptr %arrayidx4.i187 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 16, ptr %arrayidx4.i187, align 1
  store i8 -29, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8), align 4
  store i8 26, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 1), align 1
  store i8 26, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 2), align 2
  store i8 -32, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 3), align 1
  store i8 16, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 4), align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %121, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.126, i32 noundef 227, i32 noundef 437968912) #4
  %btc_fill_h2c.i188 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %127 = ptrtoint ptr %btc_fill_h2c.i188 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %btc_fill_h2c.i188, align 4
  call void %128(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i182) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i182) #4
  br label %if.end61

sw.bb45:                                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  %129 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i189) #4
  %131 = ptrtoint ptr %h2c_parameter.i189 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 -29, ptr %h2c_parameter.i189, align 1
  %arrayidx1.i191 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i189, i32 0, i32 1
  %132 = ptrtoint ptr %arrayidx1.i191 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 18, ptr %arrayidx1.i191, align 1
  %arrayidx2.i192 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i189, i32 0, i32 2
  %133 = ptrtoint ptr %arrayidx2.i192 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 18, ptr %arrayidx2.i192, align 1
  %arrayidx3.i193 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i189, i32 0, i32 3
  %134 = ptrtoint ptr %arrayidx3.i193 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 -32, ptr %arrayidx3.i193, align 1
  %arrayidx4.i194 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i189, i32 0, i32 4
  %135 = ptrtoint ptr %arrayidx4.i194 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 16, ptr %arrayidx4.i194, align 1
  store i8 -29, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8), align 4
  store i8 18, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 1), align 1
  store i8 18, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 2), align 2
  store i8 -32, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 3), align 1
  store i8 16, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 4), align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %130, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.126, i32 noundef 227, i32 noundef 303226896) #4
  %btc_fill_h2c.i195 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %136 = ptrtoint ptr %btc_fill_h2c.i195 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %btc_fill_h2c.i195, align 4
  call void %137(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i189) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i189) #4
  br label %if.end61

sw.bb46:                                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  %138 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i196) #4
  %140 = ptrtoint ptr %h2c_parameter.i196 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 -29, ptr %h2c_parameter.i196, align 1
  %arrayidx1.i198 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i196, i32 0, i32 1
  %141 = ptrtoint ptr %arrayidx1.i198 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 28, ptr %arrayidx1.i198, align 1
  %arrayidx2.i199 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i196, i32 0, i32 2
  %142 = ptrtoint ptr %arrayidx2.i199 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 3, ptr %arrayidx2.i199, align 1
  %arrayidx3.i200 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i196, i32 0, i32 3
  %143 = ptrtoint ptr %arrayidx3.i200 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 -16, ptr %arrayidx3.i200, align 1
  %arrayidx4.i201 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i196, i32 0, i32 4
  %144 = ptrtoint ptr %arrayidx4.i201 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 16, ptr %arrayidx4.i201, align 1
  store i8 -29, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8), align 4
  store i8 28, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 1), align 1
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 2), align 2
  store i8 -16, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 3), align 1
  store i8 16, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 4), align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %139, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.126, i32 noundef 227, i32 noundef 470020112) #4
  %btc_fill_h2c.i202 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %145 = ptrtoint ptr %btc_fill_h2c.i202 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %btc_fill_h2c.i202, align 4
  call void %146(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i196) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i196) #4
  br label %if.end61

sw.bb47:                                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  %147 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i203) #4
  %149 = ptrtoint ptr %h2c_parameter.i203 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 -29, ptr %h2c_parameter.i203, align 1
  %arrayidx1.i205 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i203, i32 0, i32 1
  %150 = ptrtoint ptr %arrayidx1.i205 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 18, ptr %arrayidx1.i205, align 1
  %arrayidx2.i206 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i203, i32 0, i32 2
  %151 = ptrtoint ptr %arrayidx2.i206 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 3, ptr %arrayidx2.i206, align 1
  %arrayidx3.i207 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i203, i32 0, i32 3
  %152 = ptrtoint ptr %arrayidx3.i207 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 -16, ptr %arrayidx3.i207, align 1
  %arrayidx4.i208 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i203, i32 0, i32 4
  %153 = ptrtoint ptr %arrayidx4.i208 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 16, ptr %arrayidx4.i208, align 1
  store i8 -29, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8), align 4
  store i8 18, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 1), align 1
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 2), align 2
  store i8 -16, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 3), align 1
  store i8 16, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 4), align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %148, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.126, i32 noundef 227, i32 noundef 302247952) #4
  %btc_fill_h2c.i209 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %154 = ptrtoint ptr %btc_fill_h2c.i209 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %btc_fill_h2c.i209, align 4
  call void %155(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i203) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i203) #4
  br label %if.end61

sw.bb48:                                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  %156 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i210) #4
  %158 = ptrtoint ptr %h2c_parameter.i210 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 97, ptr %h2c_parameter.i210, align 1
  %arrayidx1.i212 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i210, i32 0, i32 1
  %159 = ptrtoint ptr %arrayidx1.i212 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 32, ptr %arrayidx1.i212, align 1
  %arrayidx2.i213 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i210, i32 0, i32 2
  %160 = ptrtoint ptr %arrayidx2.i213 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 3, ptr %arrayidx2.i213, align 1
  %arrayidx3.i214 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i210, i32 0, i32 3
  %161 = ptrtoint ptr %arrayidx3.i214 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 16, ptr %arrayidx3.i214, align 1
  %arrayidx4.i215 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i210, i32 0, i32 4
  %162 = ptrtoint ptr %arrayidx4.i215 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 16, ptr %arrayidx4.i215, align 1
  store i8 97, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8), align 4
  store i8 32, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 1), align 1
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 2), align 2
  store i8 16, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 3), align 1
  store i8 16, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 4), align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %157, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.126, i32 noundef 97, i32 noundef 537071632) #4
  %btc_fill_h2c.i216 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %163 = ptrtoint ptr %btc_fill_h2c.i216 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %btc_fill_h2c.i216, align 4
  call void %164(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i210) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i210) #4
  br label %if.end61

sw.bb49:                                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  %165 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i217) #4
  %167 = ptrtoint ptr %h2c_parameter.i217 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 -29, ptr %h2c_parameter.i217, align 1
  %arrayidx1.i219 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i217, i32 0, i32 1
  %168 = ptrtoint ptr %arrayidx1.i219 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 5, ptr %arrayidx1.i219, align 1
  %arrayidx2.i220 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i217, i32 0, i32 2
  %169 = ptrtoint ptr %arrayidx2.i220 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 5, ptr %arrayidx2.i220, align 1
  %arrayidx3.i221 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i217, i32 0, i32 3
  %170 = ptrtoint ptr %arrayidx3.i221 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 -31, ptr %arrayidx3.i221, align 1
  %arrayidx4.i222 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i217, i32 0, i32 4
  %171 = ptrtoint ptr %arrayidx4.i222 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 -112, ptr %arrayidx4.i222, align 1
  store i8 -29, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8), align 4
  store i8 5, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 1), align 1
  store i8 5, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 2), align 2
  store i8 -31, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 3), align 1
  store i8 -112, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 4), align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %166, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.126, i32 noundef 227, i32 noundef 84271504) #4
  %btc_fill_h2c.i223 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %172 = ptrtoint ptr %btc_fill_h2c.i223 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %btc_fill_h2c.i223, align 4
  call void %173(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i217) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i217) #4
  br label %if.end61

sw.bb50:                                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  %174 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i224) #4
  %176 = ptrtoint ptr %h2c_parameter.i224 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 -29, ptr %h2c_parameter.i224, align 1
  %arrayidx1.i226 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i224, i32 0, i32 1
  %177 = ptrtoint ptr %arrayidx1.i226 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 37, ptr %arrayidx1.i226, align 1
  %arrayidx2.i227 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i224, i32 0, i32 2
  %178 = ptrtoint ptr %arrayidx2.i227 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 37, ptr %arrayidx2.i227, align 1
  %arrayidx3.i228 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i224, i32 0, i32 3
  %179 = ptrtoint ptr %arrayidx3.i228 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 -31, ptr %arrayidx3.i228, align 1
  %arrayidx4.i229 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i224, i32 0, i32 4
  %180 = ptrtoint ptr %arrayidx4.i229 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 -112, ptr %arrayidx4.i229, align 1
  store i8 -29, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8), align 4
  store i8 37, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 1), align 1
  store i8 37, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 2), align 2
  store i8 -31, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 3), align 1
  store i8 -112, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 4), align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %175, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.126, i32 noundef 227, i32 noundef 623239568) #4
  %btc_fill_h2c.i230 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %181 = ptrtoint ptr %btc_fill_h2c.i230 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %btc_fill_h2c.i230, align 4
  call void %182(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i224) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i224) #4
  br label %if.end61

sw.bb51:                                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  %183 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i231) #4
  %185 = ptrtoint ptr %h2c_parameter.i231 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 -29, ptr %h2c_parameter.i231, align 1
  %arrayidx1.i233 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i231, i32 0, i32 1
  %186 = ptrtoint ptr %arrayidx1.i233 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 37, ptr %arrayidx1.i233, align 1
  %arrayidx2.i234 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i231, i32 0, i32 2
  %187 = ptrtoint ptr %arrayidx2.i234 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 37, ptr %arrayidx2.i234, align 1
  %arrayidx3.i235 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i231, i32 0, i32 3
  %188 = ptrtoint ptr %arrayidx3.i235 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 96, ptr %arrayidx3.i235, align 1
  %arrayidx4.i236 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i231, i32 0, i32 4
  %189 = ptrtoint ptr %arrayidx4.i236 to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 -112, ptr %arrayidx4.i236, align 1
  store i8 -29, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8), align 4
  store i8 37, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 1), align 1
  store i8 37, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 2), align 2
  store i8 96, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 3), align 1
  store i8 -112, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 4), align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %184, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.126, i32 noundef 227, i32 noundef 623206544) #4
  %btc_fill_h2c.i237 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %190 = ptrtoint ptr %btc_fill_h2c.i237 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %btc_fill_h2c.i237, align 4
  call void %191(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i231) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i231) #4
  br label %if.end61

sw.bb52:                                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  %192 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i238) #4
  %194 = ptrtoint ptr %h2c_parameter.i238 to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 -29, ptr %h2c_parameter.i238, align 1
  %arrayidx1.i240 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i238, i32 0, i32 1
  %195 = ptrtoint ptr %arrayidx1.i240 to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 21, ptr %arrayidx1.i240, align 1
  %arrayidx2.i241 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i238, i32 0, i32 2
  %196 = ptrtoint ptr %arrayidx2.i241 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 3, ptr %arrayidx2.i241, align 1
  %arrayidx3.i242 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i238, i32 0, i32 3
  %197 = ptrtoint ptr %arrayidx3.i242 to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 112, ptr %arrayidx3.i242, align 1
  %arrayidx4.i243 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i238, i32 0, i32 4
  %198 = ptrtoint ptr %arrayidx4.i243 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 -112, ptr %arrayidx4.i243, align 1
  store i8 -29, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8), align 4
  store i8 21, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 1), align 1
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 2), align 2
  store i8 112, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 3), align 1
  store i8 -112, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 4), align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %193, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.126, i32 noundef 227, i32 noundef 352546960) #4
  %btc_fill_h2c.i244 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %199 = ptrtoint ptr %btc_fill_h2c.i244 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %btc_fill_h2c.i244, align 4
  call void %200(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i238) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i238) #4
  br label %if.end61

sw.bb53:                                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  %201 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i245) #4
  %203 = ptrtoint ptr %h2c_parameter.i245 to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 -29, ptr %h2c_parameter.i245, align 1
  %arrayidx1.i247 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i245, i32 0, i32 1
  %204 = ptrtoint ptr %arrayidx1.i247 to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 26, ptr %arrayidx1.i247, align 1
  %arrayidx2.i248 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i245, i32 0, i32 2
  %205 = ptrtoint ptr %arrayidx2.i248 to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 26, ptr %arrayidx2.i248, align 1
  %arrayidx3.i249 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i245, i32 0, i32 3
  %206 = ptrtoint ptr %arrayidx3.i249 to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 -31, ptr %arrayidx3.i249, align 1
  %arrayidx4.i250 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i245, i32 0, i32 4
  %207 = ptrtoint ptr %arrayidx4.i250 to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 -112, ptr %arrayidx4.i250, align 1
  store i8 -29, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8), align 4
  store i8 26, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 1), align 1
  store i8 26, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 2), align 2
  store i8 -31, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 3), align 1
  store i8 -112, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 4), align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %202, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.126, i32 noundef 227, i32 noundef 437969296) #4
  %btc_fill_h2c.i251 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %208 = ptrtoint ptr %btc_fill_h2c.i251 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %btc_fill_h2c.i251, align 4
  call void %209(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i245) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i245) #4
  br label %if.end61

if.else:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %type)
  %cond68 = icmp eq i8 %type, 1
  %210 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %adapter, align 4
  br i1 %cond68, label %sw.bb57, label %sw.bb56

sw.bb56:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i252) #4
  %212 = ptrtoint ptr %h2c_parameter.i252 to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 8, ptr %h2c_parameter.i252, align 1
  %arrayidx1.i254 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i252, i32 0, i32 1
  %213 = ptrtoint ptr %arrayidx1.i254 to i32
  call void @__asan_storeN_noabort(i32 %213, i32 4)
  store i32 0, ptr %arrayidx1.i254, align 1
  store i8 8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8), align 4
  store i32 0, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 1), align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %211, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.126, i32 noundef 8, i32 noundef 0) #4
  %btc_fill_h2c.i258 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %214 = ptrtoint ptr %btc_fill_h2c.i258 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %btc_fill_h2c.i258, align 4
  call void %215(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i252) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i252) #4
  %btc_write_1byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %216 = ptrtoint ptr %btc_write_1byte to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %btc_write_1byte, align 4
  call void %217(ptr noundef %btcoexist, i32 noundef 2348, i32 noundef 4) #4
  br label %if.end61

sw.bb57:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i259) #4
  %218 = ptrtoint ptr %h2c_parameter.i259 to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 0, ptr %h2c_parameter.i259, align 1
  %arrayidx1.i261 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i259, i32 0, i32 1
  %219 = ptrtoint ptr %arrayidx1.i261 to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 0, ptr %arrayidx1.i261, align 1
  %arrayidx2.i262 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i259, i32 0, i32 2
  %220 = ptrtoint ptr %arrayidx2.i262 to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 0, ptr %arrayidx2.i262, align 1
  %arrayidx3.i263 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i259, i32 0, i32 3
  %221 = ptrtoint ptr %arrayidx3.i263 to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 8, ptr %arrayidx3.i263, align 1
  %arrayidx4.i264 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i259, i32 0, i32 4
  %222 = ptrtoint ptr %arrayidx4.i264 to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 0, ptr %arrayidx4.i264, align 1
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8), align 4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 1), align 1
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 2), align 2
  store i8 8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 3), align 1
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 4), align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %211, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.126, i32 noundef 0, i32 noundef 2048) #4
  %btc_fill_h2c.i265 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %223 = ptrtoint ptr %btc_fill_h2c.i265 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %btc_fill_h2c.i265, align 4
  call void %224(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i259) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i259) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %225 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %225(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %226 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %226(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %227 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %227(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %228 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %228(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %229 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %229(i32 noundef 214748000) #4
  %btc_write_1byte59 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %230 = ptrtoint ptr %btc_write_1byte59 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %btc_write_1byte59, align 4
  call void %231(ptr noundef %btcoexist, i32 noundef 2348, i32 noundef 32) #4
  br label %if.end61

if.end61:                                         ; preds = %sw.bb57, %sw.bb56, %sw.bb53, %sw.bb52, %sw.bb51, %sw.bb50, %sw.bb49, %sw.bb48, %sw.bb47, %sw.bb46, %sw.bb45, %sw.bb44, %sw.bb43, %sw.bb42, %sw.bb41, %sw.bb40, %sw.bb39, %sw.bb38, %sw.bb37, %sw.bb36, %sw.bb35, %sw.bb34, %sw.bb33, %sw.default
  %232 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 13), align 1, !range !505
  store i8 %232, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 12), align 4
  %233 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 7), align 1
  store i8 %233, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 6), align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8192e2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext %force_exec) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %cond = select i1 %force_exec, ptr @.str.110, ptr @.str.111
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.127, ptr noundef nonnull %cond, i32 noundef 6) #4
  store i8 6, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 3), align 1
  br i1 %force_exec, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then:                                          ; preds = %entry
  %2 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 2), align 2
  %conv2 = zext i8 %2 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.128, i32 noundef %conv2, i32 noundef 6) #4
  %3 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 2), align 2
  %4 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 3), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %4)
  %cmp = icmp eq i8 %3, %4
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end11_crit_edge

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %if.then.if.end11_crit_edge, %entry.if.end11_crit_edge
  %5 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 3), align 1
  %6 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i) #4
  %8 = ptrtoint ptr %h2c_parameter.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %5, ptr %h2c_parameter.i, align 1
  %conv.i = zext i8 %5 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.129, i32 noundef %conv.i) #4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.130, i32 noundef %conv.i) #4
  %btc_fill_h2c.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %9 = ptrtoint ptr %btc_fill_h2c.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %btc_fill_h2c.i, align 4
  call void %10(ptr noundef %btcoexist, i8 noundef zeroext 100, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i) #4
  %11 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 3), align 1
  store i8 %11, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 2), align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8192e2ant_switch_ss_type(ptr noundef %btcoexist, i1 noundef zeroext %force_exec, i8 noundef zeroext %new_ss_type) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i252.i.i = alloca [5 x i8], align 1
  %mimops.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %cond = select i1 %force_exec, ptr @.str.110, ptr @.str.111
  %conv = zext i8 %new_ss_type to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.134, ptr noundef nonnull %cond, i32 noundef %conv) #4
  store i8 %new_ss_type, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 47), align 2
  br i1 %force_exec, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then:                                          ; preds = %entry
  %2 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 46), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %new_ss_type)
  %cmp = icmp eq i8 %2, %new_ss_type
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %3 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mimops.i) #4
  %5 = ptrtoint ptr %mimops.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %mimops.i, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %4, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.135, i32 noundef %conv) #4
  %6 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 50), align 4
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.243)
  switch i8 %6, label %if.end7.btc8192e2ant_decide_ra_mask.exit.i_crit_edge [
    i8 0, label %sw.bb.i.i
    i8 1, label %sw.bb2.i.i
    i8 2, label %sw.bb9.i.i
  ]

if.end7.btc8192e2ant_decide_ra_mask.exit.i_crit_edge: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8192e2ant_decide_ra_mask.exit.i

sw.bb.i.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %new_ss_type)
  %cmp.i.i = icmp eq i8 %new_ss_type, 2
  %..i.i = select i1 %cmp.i.i, i32 0, i32 -1048576
  br label %btc8192e2ant_decide_ra_mask.exit.i

sw.bb2.i.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %new_ss_type)
  %cmp4.i.i = icmp eq i8 %new_ss_type, 2
  %.1.i.i = select i1 %cmp4.i.i, i32 3, i32 -1048573
  br label %btc8192e2ant_decide_ra_mask.exit.i

sw.bb9.i.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %new_ss_type)
  %cmp11.i.i = icmp eq i8 %new_ss_type, 2
  %.2.i.i = select i1 %cmp11.i.i, i32 127479, i32 -921097
  br label %btc8192e2ant_decide_ra_mask.exit.i

btc8192e2ant_decide_ra_mask.exit.i:               ; preds = %sw.bb9.i.i, %sw.bb2.i.i, %sw.bb.i.i, %if.end7.btc8192e2ant_decide_ra_mask.exit.i_crit_edge
  %dis_ra_mask.0.i.i = phi i32 [ 0, %if.end7.btc8192e2ant_decide_ra_mask.exit.i_crit_edge ], [ %..i.i, %sw.bb.i.i ], [ %.1.i.i, %sw.bb2.i.i ], [ %.2.i.i, %sw.bb9.i.i ]
  store i32 %dis_ra_mask.0.i.i, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 49), align 4
  %btc_set.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %8 = ptrtoint ptr %btc_set.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %btc_set.i.i, align 4
  %call.i.i = tail call zeroext i1 %9(ptr noundef %btcoexist, i8 noundef zeroext 30, ptr noundef getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 49)) #4
  %10 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 49), align 4
  store i32 %10, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 48), align 4
  %11 = zext i8 %new_ss_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.244)
  switch i8 %new_ss_type, label %btc8192e2ant_decide_ra_mask.exit.i.btc8192e2ant_set_switch_ss_type.exit_crit_edge [
    i8 1, label %if.then.i
    i8 2, label %if.then9.i
  ]

btc8192e2ant_decide_ra_mask.exit.i.btc8192e2ant_set_switch_ss_type.exit_crit_edge: ; preds = %btc8192e2ant_decide_ra_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8192e2ant_set_switch_ss_type.exit

if.then.i:                                        ; preds = %btc8192e2ant_decide_ra_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8192e2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext true, i1 noundef zeroext false, i8 noundef zeroext 1) #4
  %btc_write_1byte.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %12 = ptrtoint ptr %btc_write_1byte.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %btc_write_1byte.i, align 4
  tail call void %13(ptr noundef %btcoexist, i32 noundef 3076, i32 noundef 17) #4
  %14 = ptrtoint ptr %btc_write_1byte.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %btc_write_1byte.i, align 4
  tail call void %15(ptr noundef %btcoexist, i32 noundef 3332, i32 noundef 1) #4
  %btc_write_4byte.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 23
  %16 = ptrtoint ptr %btc_write_4byte.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %btc_write_4byte.i, align 4
  tail call void %17(ptr noundef %btcoexist, i32 noundef 2316, i32 noundef -2129587951) #4
  %btc_write_1byte_bitmask.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 19
  %18 = ptrtoint ptr %btc_write_1byte_bitmask.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %btc_write_1byte_bitmask.i, align 4
  tail call void %19(ptr noundef %btcoexist, i32 noundef 3703, i32 noundef 4, i8 noundef zeroext 1) #4
  %20 = ptrtoint ptr %btc_write_1byte.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %btc_write_1byte.i, align 4
  tail call void %21(ptr noundef %btcoexist, i32 noundef 2567, i32 noundef 129) #4
  %22 = ptrtoint ptr %mimops.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %mimops.i, align 1
  br label %btc8192e2ant_set_switch_ss_type.exit

if.then9.i:                                       ; preds = %btc8192e2ant_decide_ra_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %24, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.123, i32 noundef 0) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 13), align 1
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 7), align 1
  %25 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i252.i.i) #4
  %27 = ptrtoint ptr %h2c_parameter.i252.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 8, ptr %h2c_parameter.i252.i.i, align 1
  %arrayidx1.i254.i.i = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i252.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx1.i254.i.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 0, ptr %arrayidx1.i254.i.i, align 1
  store i8 8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8), align 4
  store i32 0, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 8, i32 1), align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %26, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.126, i32 noundef 8, i32 noundef 0) #4
  %btc_fill_h2c.i258.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %29 = ptrtoint ptr %btc_fill_h2c.i258.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %btc_fill_h2c.i258.i.i, align 4
  call void %30(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i252.i.i) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i252.i.i) #4
  %btc_write_1byte.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %31 = ptrtoint ptr %btc_write_1byte.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %btc_write_1byte.i.i, align 4
  call void %32(ptr noundef %btcoexist, i32 noundef 2348, i32 noundef 4) #4
  %33 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 13), align 1, !range !505
  store i8 %33, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 12), align 4
  %34 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 7), align 1
  store i8 %34, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 6), align 2
  %35 = ptrtoint ptr %btc_write_1byte.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %btc_write_1byte.i.i, align 4
  call void %36(ptr noundef %btcoexist, i32 noundef 3076, i32 noundef 51) #4
  %37 = ptrtoint ptr %btc_write_1byte.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %btc_write_1byte.i.i, align 4
  call void %38(ptr noundef %btcoexist, i32 noundef 3332, i32 noundef 3) #4
  %btc_write_4byte12.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 23
  %39 = ptrtoint ptr %btc_write_4byte12.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %btc_write_4byte12.i, align 4
  call void %40(ptr noundef %btcoexist, i32 noundef 2316, i32 noundef -2129521901) #4
  %btc_write_1byte_bitmask13.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 19
  %41 = ptrtoint ptr %btc_write_1byte_bitmask13.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %btc_write_1byte_bitmask13.i, align 4
  call void %42(ptr noundef %btcoexist, i32 noundef 3703, i32 noundef 4, i8 noundef zeroext 0) #4
  %43 = ptrtoint ptr %btc_write_1byte.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %btc_write_1byte.i.i, align 4
  call void %44(ptr noundef %btcoexist, i32 noundef 2567, i32 noundef 65) #4
  %45 = ptrtoint ptr %mimops.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %mimops.i, align 1
  br label %btc8192e2ant_set_switch_ss_type.exit

btc8192e2ant_set_switch_ss_type.exit:             ; preds = %if.then9.i, %if.then.i, %btc8192e2ant_decide_ra_mask.exit.i.btc8192e2ant_set_switch_ss_type.exit_crit_edge
  %46 = ptrtoint ptr %btc_set.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %btc_set.i.i, align 4
  %call16.i = call zeroext i1 %47(ptr noundef %btcoexist, i8 noundef zeroext 31, ptr noundef nonnull %mimops.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mimops.i) #4
  %48 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 47), align 2
  store i8 %48, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 46), align 1
  br label %cleanup

cleanup:                                          ; preds = %btc8192e2ant_set_switch_ss_type.exit, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8192e2ant_sw_mechanism1(ptr noundef %btcoexist, i1 noundef zeroext %shrink_rx_lpf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool1.i = zext i1 %shrink_rx_lpf to i8
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter.i, align 4
  %cond3.i = select i1 %shrink_rx_lpf, ptr @.str.122, ptr @.str.123
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.111, ptr noundef nonnull %cond3.i) #4
  store i8 %frombool1.i, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 17), align 1
  %2 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 16), align 4, !range !505
  %3 = zext i8 %2 to i32
  %4 = zext i1 %shrink_rx_lpf to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.137, i32 noundef %3, i32 noundef %4) #4
  %5 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 16), align 4, !range !505
  %6 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 17), align 1, !range !505
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %6)
  %cmp.i = icmp eq i8 %5, %6
  br i1 %cmp.i, label %entry.btc8192e2ant_rf_shrink.exit_crit_edge, label %if.end19.i

entry.btc8192e2ant_rf_shrink.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8192e2ant_rf_shrink.exit

if.end19.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool21.not.i = icmp eq i8 %6, 0
  %7 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter.i, align 4
  br i1 %tobool21.not.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %8, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.138) #4
  %btc_set_rf_reg.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 27
  %9 = ptrtoint ptr %btc_set_rf_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %btc_set_rf_reg.i.i, align 4
  tail call void %10(ptr noundef %btcoexist, i8 noundef zeroext 0, i32 noundef 30, i32 noundef 1048575, i32 noundef 1048572) #4
  br label %btc8192e2ant_set_sw_rf_rx_lpf_corner.exit.i

if.else.i.i:                                      ; preds = %if.end19.i
  %initialized.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 11
  %11 = ptrtoint ptr %initialized.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %initialized.i.i, align 4, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool1.not.i.i = icmp eq i8 %12, 0
  br i1 %tobool1.not.i.i, label %if.else.i.i.btc8192e2ant_set_sw_rf_rx_lpf_corner.exit.i_crit_edge, label %if.then2.i.i

if.else.i.i.btc8192e2ant_set_sw_rf_rx_lpf_corner.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8192e2ant_set_sw_rf_rx_lpf_corner.exit.i

if.then2.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %8, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.139) #4
  %btc_set_rf_reg3.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 27
  %13 = ptrtoint ptr %btc_set_rf_reg3.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %btc_set_rf_reg3.i.i, align 4
  %15 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 18), align 4
  tail call void %14(ptr noundef %btcoexist, i8 noundef zeroext 0, i32 noundef 30, i32 noundef 1048575, i32 noundef %15) #4
  br label %btc8192e2ant_set_sw_rf_rx_lpf_corner.exit.i

btc8192e2ant_set_sw_rf_rx_lpf_corner.exit.i:      ; preds = %if.then2.i.i, %if.else.i.i.btc8192e2ant_set_sw_rf_rx_lpf_corner.exit.i_crit_edge, %if.then.i.i
  %16 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 17), align 1, !range !505
  store i8 %16, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 16), align 4
  br label %btc8192e2ant_rf_shrink.exit

btc8192e2ant_rf_shrink.exit:                      ; preds = %btc8192e2ant_set_sw_rf_rx_lpf_corner.exit.i, %entry.btc8192e2ant_rf_shrink.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8192e2ant_sw_mechanism2(ptr noundef %btcoexist, i1 noundef zeroext %agc_table_shift, i1 noundef zeroext %sw_dac_swing, i32 noundef %dac_swing_lvl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool1.i = zext i1 %agc_table_shift to i8
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter.i, align 4
  %cond3.i = select i1 %agc_table_shift, ptr @.str.141, ptr @.str.142
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.111, ptr noundef nonnull %cond3.i) #4
  store i8 %frombool1.i, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 28), align 1
  %2 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 27), align 2, !range !505
  %3 = zext i8 %2 to i32
  %4 = zext i1 %agc_table_shift to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.143, i32 noundef %3, i32 noundef %4) #4
  %5 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 27), align 2, !range !505
  %6 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 28), align 1, !range !505
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %6)
  %cmp.i = icmp eq i8 %5, %6
  br i1 %cmp.i, label %entry.btc8192e2ant_agc_table.exit_crit_edge, label %if.end19.i

entry.btc8192e2ant_agc_table.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8192e2ant_agc_table.exit

if.end19.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter.i, align 4
  %.str.144..str.145.i.i = select i1 %agc_table_shift, ptr @.str.144, ptr @.str.145
  %..i.i = select i1 %agc_table_shift, i32 169476097, i32 -1441136639
  %.53.i.i = select i1 %agc_table_shift, i32 152764417, i32 -1457848319
  %.54.i.i = select i1 %agc_table_shift, i32 136052737, i32 -1474559999
  %.55.i.i = select i1 %agc_table_shift, i32 119341057, i32 -1491271679
  %.56.i.i = select i1 %agc_table_shift, i32 102629377, i32 -1507983359
  %.57.i.i = select i1 %agc_table_shift, i32 85917697, i32 -1524695039
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %8, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.144..str.145.i.i) #4
  %btc_write_4byte6.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 23
  %9 = ptrtoint ptr %btc_write_4byte6.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %btc_write_4byte6.i.i, align 4
  tail call void %10(ptr noundef %btcoexist, i32 noundef 3192, i32 noundef %..i.i) #4
  %11 = ptrtoint ptr %btc_write_4byte6.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %btc_write_4byte6.i.i, align 4
  tail call void %12(ptr noundef %btcoexist, i32 noundef 3192, i32 noundef %.53.i.i) #4
  %13 = ptrtoint ptr %btc_write_4byte6.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %btc_write_4byte6.i.i, align 4
  tail call void %14(ptr noundef %btcoexist, i32 noundef 3192, i32 noundef %.54.i.i) #4
  %15 = ptrtoint ptr %btc_write_4byte6.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %btc_write_4byte6.i.i, align 4
  tail call void %16(ptr noundef %btcoexist, i32 noundef 3192, i32 noundef %.55.i.i) #4
  %17 = ptrtoint ptr %btc_write_4byte6.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %btc_write_4byte6.i.i, align 4
  tail call void %18(ptr noundef %btcoexist, i32 noundef 3192, i32 noundef %.56.i.i) #4
  %19 = ptrtoint ptr %btc_write_4byte6.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %btc_write_4byte6.i.i, align 4
  tail call void %20(ptr noundef %btcoexist, i32 noundef 3192, i32 noundef %.57.i.i) #4
  %21 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 28), align 1, !range !505
  store i8 %21, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 27), align 2
  br label %btc8192e2ant_agc_table.exit

btc8192e2ant_agc_table.exit:                      ; preds = %if.end19.i, %entry.btc8192e2ant_agc_table.exit_crit_edge
  %frombool1.i1 = zext i1 %sw_dac_swing to i8
  %22 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter.i, align 4
  %cond3.i3 = select i1 %sw_dac_swing, ptr @.str.122, ptr @.str.123
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %23, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.111, ptr noundef nonnull %cond3.i3, i32 noundef %dac_swing_lvl) #4
  store i8 %frombool1.i1, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 23), align 4
  store i32 %dac_swing_lvl, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 24), align 4
  %24 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 21), align 2, !range !505
  %25 = zext i8 %24 to i32
  %26 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 22), align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %23, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.147, i32 noundef %25, i32 noundef %26) #4
  %27 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 23), align 4, !range !505
  %28 = zext i8 %27 to i32
  %29 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 24), align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %23, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.148, i32 noundef %28, i32 noundef %29) #4
  %30 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 21), align 2, !range !505
  %31 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 23), align 4, !range !505
  call void @__sanitizer_cov_trace_cmp1(i8 %30, i8 %31)
  %cmp.i4 = icmp eq i8 %30, %31
  br i1 %cmp.i4, label %land.lhs.true.i, label %btc8192e2ant_agc_table.exit.if.end24.i_crit_edge

btc8192e2ant_agc_table.exit.if.end24.i_crit_edge: ; preds = %btc8192e2ant_agc_table.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24.i

land.lhs.true.i:                                  ; preds = %btc8192e2ant_agc_table.exit
  %32 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 22), align 4
  %33 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 24), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %33)
  %cmp21.i = icmp eq i32 %32, %33
  br i1 %cmp21.i, label %land.lhs.true.i.btc8192e2ant_dac_swing.exit_crit_edge, label %land.lhs.true.i.if.end24.i_crit_edge

land.lhs.true.i.if.end24.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24.i

land.lhs.true.i.btc8192e2ant_dac_swing.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8192e2ant_dac_swing.exit

if.end24.i:                                       ; preds = %land.lhs.true.i.if.end24.i_crit_edge, %btc8192e2ant_agc_table.exit.if.end24.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 214748000) #4
  %64 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %adapter.i, align 4
  %conv.i.i.i = trunc i32 %dac_swing_lvl to i8
  %.sink5.i.i = select i1 %sw_dac_swing, i32 %dac_swing_lvl, i32 24
  %.sink.i.i = select i1 %sw_dac_swing, i8 %conv.i.i.i, i8 24
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %65, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.149, i32 noundef %.sink5.i.i) #4
  %btc_write_1byte_bitmask.i3.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 19
  %66 = ptrtoint ptr %btc_write_1byte_bitmask.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %btc_write_1byte_bitmask.i3.i.i, align 4
  tail call void %67(ptr noundef %btcoexist, i32 noundef 2179, i32 noundef 62, i8 noundef zeroext %.sink.i.i) #4
  %68 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 23), align 4, !range !505
  store i8 %68, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 21), align 2
  %69 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 24), align 4
  store i32 %69, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 22), align 4
  br label %btc8192e2ant_dac_swing.exit

btc8192e2ant_dac_swing.exit:                      ; preds = %if.end24.i, %land.lhs.true.i.btc8192e2ant_dac_swing.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8192e2ant_action_sco(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i.i88 = alloca [1 x i8], align 1
  %h2c_parameter.i.i83 = alloca [1 x i8], align 1
  %h2c_parameter.i.i = alloca [1 x i8], align 1
  %reject_rx_agg.i = alloca i8, align 1
  %bt_ctrl_rx_agg_size.i = alloca i8, align 1
  %rx_agg_size.i = alloca i8, align 1
  %wifi_rssi.i = alloca i32, align 4
  %wifi_bw = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_bw) #4
  %0 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wifi_bw, align 4, !annotation !504
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %1 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %wifi_rssi.i, align 4
  %btc_get.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %2 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %btc_get.i, align 4
  %call.i = call zeroext i1 %3(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi.i) #4
  %4 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 13), align 2
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.245)
  switch i8 %4, label %if.else19.i [
    i8 2, label %entry.if.then14.i_crit_edge
    i8 5, label %entry.if.then14.i_crit_edge107
  ]

entry.if.then14.i_crit_edge107:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

entry.if.then14.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

if.then14.i:                                      ; preds = %entry.if.then14.i_crit_edge, %entry.if.then14.i_crit_edge107
  %6 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %7)
  %cmp16.i = icmp sgt i32 %7, 16
  %..i = select i1 %cmp16.i, i8 0, i8 5
  br label %btc8192e2ant_wifi_rssi_state.exit

if.else19.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %9)
  %cmp21.i = icmp slt i32 %9, 15
  %.1.i = select i1 %cmp21.i, i8 2, i8 3
  br label %btc8192e2ant_wifi_rssi_state.exit

btc8192e2ant_wifi_rssi_state.exit:                ; preds = %if.else19.i, %if.then14.i
  %wifi_rssi_state.0.i = phi i8 [ %..i, %if.then14.i ], [ %.1.i, %if.else19.i ]
  store i8 %wifi_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 13), align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  call fastcc void @btc8192e2ant_switch_ss_type(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 1)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  %10 = ptrtoint ptr %reject_rx_agg.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %reject_rx_agg.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  %11 = ptrtoint ptr %bt_ctrl_rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %bt_ctrl_rx_agg_size.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  %12 = ptrtoint ptr %rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 8, ptr %rx_agg_size.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %13 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %btc_set.i, align 4
  %call.i80 = call zeroext i1 %14(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %reject_rx_agg.i) #4
  %15 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %btc_set.i, align 4
  %call7.i = call zeroext i1 %16(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %bt_ctrl_rx_agg_size.i) #4
  %17 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %btc_set.i, align 4
  %call9.i = call zeroext i1 %18(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %rx_agg_size.i) #4
  %19 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %btc_set.i, align 4
  %call11.i = call zeroext i1 %20(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  call fastcc void @btc8192e2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext false)
  call fastcc void @btc8192e2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef -536879105, i32 noundef 1610309627) #4
  %21 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 12), align 1
  %22 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 11), align 4
  %23 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.246)
  switch i8 %21, label %if.else78.i [
    i8 2, label %btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge
    i8 5, label %btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge108
    i8 1, label %btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge
    i8 4, label %btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge109
  ]

btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge109: ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then64.i

btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge: ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then64.i

btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge108: ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then46.i

btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge: ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then46.i

if.then46.i:                                      ; preds = %btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge, %btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge108
  call void @__sanitizer_cov_trace_const_cmp1(i8 35, i8 %22)
  %cmp49.i = icmp ugt i8 %22, 35
  br i1 %cmp49.i, label %if.then46.i.if.then13_crit_edge, label %if.then46.i.if.then_crit_edge

if.then46.i.if.then_crit_edge:                    ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then46.i.if.then13_crit_edge:                  ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then13

if.then64.i:                                      ; preds = %btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge, %btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge109
  call void @__sanitizer_cov_trace_const_cmp1(i8 43, i8 %22)
  %cmp67.i = icmp ugt i8 %22, 43
  br i1 %cmp67.i, label %if.then64.i.if.then22_crit_edge, label %if.else70.i

if.then64.i.if.then22_crit_edge:                  ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then22

if.else70.i:                                      ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %22)
  %cmp72.i = icmp ult i8 %22, 34
  br i1 %cmp72.i, label %if.else70.i.if.then_crit_edge, label %if.else70.i.if.then13_crit_edge

if.else70.i.if.then13_crit_edge:                  ; preds = %if.else70.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then13

if.else70.i.if.then_crit_edge:                    ; preds = %if.else70.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.else78.i:                                      ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %22)
  %cmp80.i = icmp ult i8 %22, 42
  br i1 %cmp80.i, label %if.else78.i.if.then13_crit_edge, label %if.else78.i.if.then22_crit_edge

if.else78.i.if.then22_crit_edge:                  ; preds = %if.else78.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then22

if.else78.i.if.then13_crit_edge:                  ; preds = %if.else78.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then13

if.then:                                          ; preds = %if.else70.i.if.then_crit_edge, %if.then46.i.if.then_crit_edge
  %bt_rssi_state.0.i.ph97 = phi i8 [ 5, %if.then46.i.if.then_crit_edge ], [ 2, %if.else70.i.if.then_crit_edge ]
  store i8 %bt_rssi_state.0.i.ph97, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 12), align 1
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %24 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adapter.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %25, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.111, i32 noundef 0) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %26 = load i8, ptr @glcoex_dm_8192e_2ant, align 4
  %conv2.i = zext i8 %26 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %25, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %conv2.i, i32 noundef 0) #4
  %27 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %28 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  %30 = ptrtoint ptr %h2c_parameter.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %27, ptr %h2c_parameter.i.i, align 1
  %conv.i.i = zext i8 %27 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %29, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef %conv.i.i, i32 noundef %conv.i.i) #4
  %btc_fill_h2c.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %31 = ptrtoint ptr %btc_fill_h2c.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %btc_fill_h2c.i.i, align 4
  call void %32(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  br label %if.end24

if.then13:                                        ; preds = %if.else78.i.if.then13_crit_edge, %if.else70.i.if.then13_crit_edge, %if.then46.i.if.then13_crit_edge
  %bt_rssi_state.0.i.ph = phi i8 [ 4, %if.else70.i.if.then13_crit_edge ], [ 1, %if.then46.i.if.then13_crit_edge ], [ 1, %if.else78.i.if.then13_crit_edge ]
  store i8 %bt_rssi_state.0.i.ph, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 12), align 1
  %adapter.i84 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %33 = ptrtoint ptr %adapter.i84 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %adapter.i84, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %34, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.111, i32 noundef 2) #4
  store i8 2, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %35 = load i8, ptr @glcoex_dm_8192e_2ant, align 4
  %conv2.i85 = zext i8 %35 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %34, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %conv2.i85, i32 noundef 2) #4
  %36 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %37 = ptrtoint ptr %adapter.i84 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %adapter.i84, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i83) #4
  %39 = ptrtoint ptr %h2c_parameter.i.i83 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %36, ptr %h2c_parameter.i.i83, align 1
  %conv.i.i86 = zext i8 %36 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %38, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef %conv.i.i86, i32 noundef %conv.i.i86) #4
  %btc_fill_h2c.i.i87 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %40 = ptrtoint ptr %btc_fill_h2c.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %btc_fill_h2c.i.i87, align 4
  call void %41(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i83) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i83) #4
  br label %if.end24

if.then22:                                        ; preds = %if.else78.i.if.then22_crit_edge, %if.then64.i.if.then22_crit_edge
  %bt_rssi_state.0.i = phi i8 [ 0, %if.then64.i.if.then22_crit_edge ], [ 3, %if.else78.i.if.then22_crit_edge ]
  store i8 %bt_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 12), align 1
  %adapter.i89 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %42 = ptrtoint ptr %adapter.i89 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %adapter.i89, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %43, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.111, i32 noundef 4) #4
  store i8 4, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %44 = load i8, ptr @glcoex_dm_8192e_2ant, align 4
  %conv2.i90 = zext i8 %44 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %43, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %conv2.i90, i32 noundef 4) #4
  %45 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %46 = ptrtoint ptr %adapter.i89 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %adapter.i89, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i88) #4
  %48 = ptrtoint ptr %h2c_parameter.i.i88 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %45, ptr %h2c_parameter.i.i88, align 1
  %conv.i.i91 = zext i8 %45 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %47, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef %conv.i.i91, i32 noundef %conv.i.i91) #4
  %btc_fill_h2c.i.i92 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %49 = ptrtoint ptr %btc_fill_h2c.i.i92 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %btc_fill_h2c.i.i92, align 4
  call void %50(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i88) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i88) #4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.then13, %if.then
  %.sink = phi i8 [ 9, %if.then13 ], [ 9, %if.then22 ], [ 13, %if.then ]
  %51 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  store i8 %51, ptr @glcoex_dm_8192e_2ant, align 4
  call fastcc void @btc8192e2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext %.sink)
  %52 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %btc_get.i, align 4
  %call25 = call zeroext i1 %53(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef nonnull %wifi_bw) #4
  %54 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %wifi_bw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %55)
  %cmp26 = icmp eq i32 %55, 2
  %trunc100 = trunc i8 %wifi_rssi_state.0.i to i3
  %56 = sext i3 %trunc100 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %switch.selectcmp.case1104 = icmp eq i3 %trunc100, 0
  %57 = sext i3 %trunc100 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %57)
  %switch.selectcmp.case2105 = icmp eq i3 %trunc100, 3
  %switch.selectcmp106 = or i1 %switch.selectcmp.case1104, %switch.selectcmp.case2105
  call fastcc void @btc8192e2ant_sw_mechanism1(ptr noundef %btcoexist, i1 noundef zeroext %cmp26)
  call fastcc void @btc8192e2ant_sw_mechanism2(ptr noundef %btcoexist, i1 noundef zeroext %switch.selectcmp106, i1 noundef zeroext false, i32 noundef 6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_bw) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8192e2ant_action_sco_pan(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i.i88 = alloca [1 x i8], align 1
  %h2c_parameter.i.i83 = alloca [1 x i8], align 1
  %h2c_parameter.i.i = alloca [1 x i8], align 1
  %reject_rx_agg.i = alloca i8, align 1
  %bt_ctrl_rx_agg_size.i = alloca i8, align 1
  %rx_agg_size.i = alloca i8, align 1
  %wifi_rssi.i = alloca i32, align 4
  %wifi_bw = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_bw) #4
  %0 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wifi_bw, align 4, !annotation !504
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %1 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %wifi_rssi.i, align 4
  %btc_get.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %2 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %btc_get.i, align 4
  %call.i = call zeroext i1 %3(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi.i) #4
  %4 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 13), align 2
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.247)
  switch i8 %4, label %if.else19.i [
    i8 2, label %entry.if.then14.i_crit_edge
    i8 5, label %entry.if.then14.i_crit_edge107
  ]

entry.if.then14.i_crit_edge107:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

entry.if.then14.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

if.then14.i:                                      ; preds = %entry.if.then14.i_crit_edge, %entry.if.then14.i_crit_edge107
  %6 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %7)
  %cmp16.i = icmp sgt i32 %7, 16
  %..i = select i1 %cmp16.i, i8 0, i8 5
  br label %btc8192e2ant_wifi_rssi_state.exit

if.else19.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %9)
  %cmp21.i = icmp slt i32 %9, 15
  %.1.i = select i1 %cmp21.i, i8 2, i8 3
  br label %btc8192e2ant_wifi_rssi_state.exit

btc8192e2ant_wifi_rssi_state.exit:                ; preds = %if.else19.i, %if.then14.i
  %wifi_rssi_state.0.i = phi i8 [ %..i, %if.then14.i ], [ %.1.i, %if.else19.i ]
  store i8 %wifi_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 13), align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  call fastcc void @btc8192e2ant_switch_ss_type(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 1)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  %10 = ptrtoint ptr %reject_rx_agg.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %reject_rx_agg.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  %11 = ptrtoint ptr %bt_ctrl_rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %bt_ctrl_rx_agg_size.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  %12 = ptrtoint ptr %rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 8, ptr %rx_agg_size.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %13 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %btc_set.i, align 4
  %call.i80 = call zeroext i1 %14(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %reject_rx_agg.i) #4
  %15 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %btc_set.i, align 4
  %call7.i = call zeroext i1 %16(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %bt_ctrl_rx_agg_size.i) #4
  %17 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %btc_set.i, align 4
  %call9.i = call zeroext i1 %18(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %rx_agg_size.i) #4
  %19 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %btc_set.i, align 4
  %call11.i = call zeroext i1 %20(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  call fastcc void @btc8192e2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext false)
  call fastcc void @btc8192e2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef -536879105, i32 noundef 1610309627) #4
  %21 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 12), align 1
  %22 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 11), align 4
  %23 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.248)
  switch i8 %21, label %if.else78.i [
    i8 2, label %btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge
    i8 5, label %btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge108
    i8 1, label %btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge
    i8 4, label %btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge109
  ]

btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge109: ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then64.i

btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge: ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then64.i

btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge108: ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then46.i

btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge: ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then46.i

if.then46.i:                                      ; preds = %btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge, %btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge108
  call void @__sanitizer_cov_trace_const_cmp1(i8 35, i8 %22)
  %cmp49.i = icmp ugt i8 %22, 35
  br i1 %cmp49.i, label %if.then46.i.if.then13_crit_edge, label %if.then46.i.if.then_crit_edge

if.then46.i.if.then_crit_edge:                    ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then46.i.if.then13_crit_edge:                  ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then13

if.then64.i:                                      ; preds = %btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge, %btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge109
  call void @__sanitizer_cov_trace_const_cmp1(i8 43, i8 %22)
  %cmp67.i = icmp ugt i8 %22, 43
  br i1 %cmp67.i, label %if.then64.i.if.then22_crit_edge, label %if.else70.i

if.then64.i.if.then22_crit_edge:                  ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then22

if.else70.i:                                      ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %22)
  %cmp72.i = icmp ult i8 %22, 34
  br i1 %cmp72.i, label %if.else70.i.if.then_crit_edge, label %if.else70.i.if.then13_crit_edge

if.else70.i.if.then13_crit_edge:                  ; preds = %if.else70.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then13

if.else70.i.if.then_crit_edge:                    ; preds = %if.else70.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.else78.i:                                      ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %22)
  %cmp80.i = icmp ult i8 %22, 42
  br i1 %cmp80.i, label %if.else78.i.if.then13_crit_edge, label %if.else78.i.if.then22_crit_edge

if.else78.i.if.then22_crit_edge:                  ; preds = %if.else78.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then22

if.else78.i.if.then13_crit_edge:                  ; preds = %if.else78.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then13

if.then:                                          ; preds = %if.else70.i.if.then_crit_edge, %if.then46.i.if.then_crit_edge
  %bt_rssi_state.0.i.ph97 = phi i8 [ 5, %if.then46.i.if.then_crit_edge ], [ 2, %if.else70.i.if.then_crit_edge ]
  store i8 %bt_rssi_state.0.i.ph97, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 12), align 1
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %24 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adapter.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %25, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.111, i32 noundef 0) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %26 = load i8, ptr @glcoex_dm_8192e_2ant, align 4
  %conv2.i = zext i8 %26 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %25, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %conv2.i, i32 noundef 0) #4
  %27 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %28 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  %30 = ptrtoint ptr %h2c_parameter.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %27, ptr %h2c_parameter.i.i, align 1
  %conv.i.i = zext i8 %27 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %29, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef %conv.i.i, i32 noundef %conv.i.i) #4
  %btc_fill_h2c.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %31 = ptrtoint ptr %btc_fill_h2c.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %btc_fill_h2c.i.i, align 4
  call void %32(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  br label %if.end24

if.then13:                                        ; preds = %if.else78.i.if.then13_crit_edge, %if.else70.i.if.then13_crit_edge, %if.then46.i.if.then13_crit_edge
  %bt_rssi_state.0.i.ph = phi i8 [ 4, %if.else70.i.if.then13_crit_edge ], [ 1, %if.then46.i.if.then13_crit_edge ], [ 1, %if.else78.i.if.then13_crit_edge ]
  store i8 %bt_rssi_state.0.i.ph, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 12), align 1
  %adapter.i84 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %33 = ptrtoint ptr %adapter.i84 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %adapter.i84, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %34, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.111, i32 noundef 2) #4
  store i8 2, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %35 = load i8, ptr @glcoex_dm_8192e_2ant, align 4
  %conv2.i85 = zext i8 %35 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %34, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %conv2.i85, i32 noundef 2) #4
  %36 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %37 = ptrtoint ptr %adapter.i84 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %adapter.i84, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i83) #4
  %39 = ptrtoint ptr %h2c_parameter.i.i83 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %36, ptr %h2c_parameter.i.i83, align 1
  %conv.i.i86 = zext i8 %36 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %38, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef %conv.i.i86, i32 noundef %conv.i.i86) #4
  %btc_fill_h2c.i.i87 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %40 = ptrtoint ptr %btc_fill_h2c.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %btc_fill_h2c.i.i87, align 4
  call void %41(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i83) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i83) #4
  br label %if.end24

if.then22:                                        ; preds = %if.else78.i.if.then22_crit_edge, %if.then64.i.if.then22_crit_edge
  %bt_rssi_state.0.i = phi i8 [ 0, %if.then64.i.if.then22_crit_edge ], [ 3, %if.else78.i.if.then22_crit_edge ]
  store i8 %bt_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 12), align 1
  %adapter.i89 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %42 = ptrtoint ptr %adapter.i89 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %adapter.i89, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %43, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.111, i32 noundef 4) #4
  store i8 4, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %44 = load i8, ptr @glcoex_dm_8192e_2ant, align 4
  %conv2.i90 = zext i8 %44 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %43, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %conv2.i90, i32 noundef 4) #4
  %45 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %46 = ptrtoint ptr %adapter.i89 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %adapter.i89, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i88) #4
  %48 = ptrtoint ptr %h2c_parameter.i.i88 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %45, ptr %h2c_parameter.i.i88, align 1
  %conv.i.i91 = zext i8 %45 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %47, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef %conv.i.i91, i32 noundef %conv.i.i91) #4
  %btc_fill_h2c.i.i92 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %49 = ptrtoint ptr %btc_fill_h2c.i.i92 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %btc_fill_h2c.i.i92, align 4
  call void %50(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i88) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i88) #4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.then13, %if.then
  %.sink = phi i8 [ 10, %if.then13 ], [ 10, %if.then22 ], [ 14, %if.then ]
  %51 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  store i8 %51, ptr @glcoex_dm_8192e_2ant, align 4
  call fastcc void @btc8192e2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext %.sink)
  %52 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %btc_get.i, align 4
  %call25 = call zeroext i1 %53(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef nonnull %wifi_bw) #4
  %54 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %wifi_bw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %55)
  %cmp26 = icmp eq i32 %55, 2
  %trunc100 = trunc i8 %wifi_rssi_state.0.i to i3
  %56 = sext i3 %trunc100 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %switch.selectcmp.case1104 = icmp eq i3 %trunc100, 0
  %57 = sext i3 %trunc100 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %57)
  %switch.selectcmp.case2105 = icmp eq i3 %trunc100, 3
  %switch.selectcmp106 = or i1 %switch.selectcmp.case1104, %switch.selectcmp.case2105
  call fastcc void @btc8192e2ant_sw_mechanism1(ptr noundef %btcoexist, i1 noundef zeroext %cmp26)
  call fastcc void @btc8192e2ant_sw_mechanism2(ptr noundef %btcoexist, i1 noundef zeroext %switch.selectcmp106, i1 noundef zeroext false, i32 noundef 6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_bw) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8192e2ant_action_hid(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i.i88 = alloca [1 x i8], align 1
  %h2c_parameter.i.i83 = alloca [1 x i8], align 1
  %h2c_parameter.i.i = alloca [1 x i8], align 1
  %reject_rx_agg.i = alloca i8, align 1
  %bt_ctrl_rx_agg_size.i = alloca i8, align 1
  %rx_agg_size.i = alloca i8, align 1
  %wifi_rssi.i = alloca i32, align 4
  %wifi_bw = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_bw) #4
  %0 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wifi_bw, align 4, !annotation !504
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %1 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %wifi_rssi.i, align 4
  %btc_get.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %2 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %btc_get.i, align 4
  %call.i = call zeroext i1 %3(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi.i) #4
  %4 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 13), align 2
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.249)
  switch i8 %4, label %if.else19.i [
    i8 2, label %entry.if.then14.i_crit_edge
    i8 5, label %entry.if.then14.i_crit_edge105
  ]

entry.if.then14.i_crit_edge105:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

entry.if.then14.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

if.then14.i:                                      ; preds = %entry.if.then14.i_crit_edge, %entry.if.then14.i_crit_edge105
  %6 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %7)
  %cmp16.i = icmp sgt i32 %7, 16
  %..i = select i1 %cmp16.i, i8 0, i8 5
  br label %btc8192e2ant_wifi_rssi_state.exit

if.else19.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %9)
  %cmp21.i = icmp slt i32 %9, 15
  %.1.i = select i1 %cmp21.i, i8 2, i8 3
  br label %btc8192e2ant_wifi_rssi_state.exit

btc8192e2ant_wifi_rssi_state.exit:                ; preds = %if.else19.i, %if.then14.i
  %wifi_rssi_state.0.i = phi i8 [ %..i, %if.then14.i ], [ %.1.i, %if.else19.i ]
  store i8 %wifi_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 13), align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %10 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 12), align 1
  %11 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 11), align 4
  %12 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.250)
  switch i8 %10, label %if.else78.i [
    i8 2, label %btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge
    i8 5, label %btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge106
    i8 1, label %btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge
    i8 4, label %btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge107
  ]

btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge107: ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then64.i

btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge: ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then64.i

btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge106: ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then46.i

btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge: ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then46.i

if.then46.i:                                      ; preds = %btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge, %btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge106
  call void @__sanitizer_cov_trace_const_cmp1(i8 35, i8 %11)
  %cmp49.i = icmp ugt i8 %11, 35
  %spec.select = select i1 %cmp49.i, i8 1, i8 5
  br label %btc8192e2ant_bt_rssi_state.exit

if.then64.i:                                      ; preds = %btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge, %btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge107
  call void @__sanitizer_cov_trace_const_cmp1(i8 43, i8 %11)
  %cmp67.i = icmp ugt i8 %11, 43
  br i1 %cmp67.i, label %if.then64.i.btc8192e2ant_bt_rssi_state.exit_crit_edge, label %if.else70.i

if.then64.i.btc8192e2ant_bt_rssi_state.exit_crit_edge: ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8192e2ant_bt_rssi_state.exit

if.else70.i:                                      ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %11)
  %cmp72.i = icmp ult i8 %11, 34
  %spec.select95 = select i1 %cmp72.i, i8 2, i8 4
  br label %btc8192e2ant_bt_rssi_state.exit

if.else78.i:                                      ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %11)
  %cmp80.i = icmp ult i8 %11, 42
  %spec.select96 = select i1 %cmp80.i, i8 1, i8 3
  br label %btc8192e2ant_bt_rssi_state.exit

btc8192e2ant_bt_rssi_state.exit:                  ; preds = %if.else78.i, %if.else70.i, %if.then64.i.btc8192e2ant_bt_rssi_state.exit_crit_edge, %if.then46.i
  %bt_rssi_state.0.i = phi i8 [ 0, %if.then64.i.btc8192e2ant_bt_rssi_state.exit_crit_edge ], [ %spec.select, %if.then46.i ], [ %spec.select95, %if.else70.i ], [ %spec.select96, %if.else78.i ]
  store i8 %bt_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 12), align 1
  call fastcc void @btc8192e2ant_switch_ss_type(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 1)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  %13 = ptrtoint ptr %reject_rx_agg.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %reject_rx_agg.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  %14 = ptrtoint ptr %bt_ctrl_rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %bt_ctrl_rx_agg_size.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  %15 = ptrtoint ptr %rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 8, ptr %rx_agg_size.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %16 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %btc_set.i, align 4
  %call.i82 = call zeroext i1 %17(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %reject_rx_agg.i) #4
  %18 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %btc_set.i, align 4
  %call7.i = call zeroext i1 %19(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %bt_ctrl_rx_agg_size.i) #4
  %20 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %btc_set.i, align 4
  %call9.i = call zeroext i1 %21(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %rx_agg_size.i) #4
  %22 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %btc_set.i, align 4
  %call11.i = call zeroext i1 %23(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  call fastcc void @btc8192e2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext false)
  %24 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %btc_get.i, align 4
  %call2 = call zeroext i1 %25(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef nonnull %wifi_bw) #4
  call fastcc void @btc8192e2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef -536879105, i32 noundef 1608212443) #4
  %trunc = trunc i8 %bt_rssi_state.0.i to i3
  %26 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.251)
  switch i3 %trunc, label %btc8192e2ant_bt_rssi_state.exit.if.end25_crit_edge [
    i3 2, label %btc8192e2ant_bt_rssi_state.exit.if.then_crit_edge
    i3 -3, label %btc8192e2ant_bt_rssi_state.exit.if.then_crit_edge108
    i3 1, label %btc8192e2ant_bt_rssi_state.exit.if.then14_crit_edge
    i3 -4, label %btc8192e2ant_bt_rssi_state.exit.if.then14_crit_edge109
    i3 0, label %btc8192e2ant_bt_rssi_state.exit.if.then23_crit_edge
    i3 3, label %btc8192e2ant_bt_rssi_state.exit.if.then23_crit_edge110
  ]

btc8192e2ant_bt_rssi_state.exit.if.then23_crit_edge110: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then23

btc8192e2ant_bt_rssi_state.exit.if.then23_crit_edge: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then23

btc8192e2ant_bt_rssi_state.exit.if.then14_crit_edge109: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14

btc8192e2ant_bt_rssi_state.exit.if.then14_crit_edge: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14

btc8192e2ant_bt_rssi_state.exit.if.then_crit_edge108: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

btc8192e2ant_bt_rssi_state.exit.if.then_crit_edge: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

btc8192e2ant_bt_rssi_state.exit.if.end25_crit_edge: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then:                                          ; preds = %btc8192e2ant_bt_rssi_state.exit.if.then_crit_edge, %btc8192e2ant_bt_rssi_state.exit.if.then_crit_edge108
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %27 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adapter.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %28, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.111, i32 noundef 0) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %29 = load i8, ptr @glcoex_dm_8192e_2ant, align 4
  %conv2.i = zext i8 %29 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %28, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %conv2.i, i32 noundef 0) #4
  %30 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %31 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  %33 = ptrtoint ptr %h2c_parameter.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %30, ptr %h2c_parameter.i.i, align 1
  %conv.i.i = zext i8 %30 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %32, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef %conv.i.i, i32 noundef %conv.i.i) #4
  %btc_fill_h2c.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %34 = ptrtoint ptr %btc_fill_h2c.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %btc_fill_h2c.i.i, align 4
  call void %35(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  br label %if.end25.sink.split

if.then14:                                        ; preds = %btc8192e2ant_bt_rssi_state.exit.if.then14_crit_edge, %btc8192e2ant_bt_rssi_state.exit.if.then14_crit_edge109
  %adapter.i84 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %36 = ptrtoint ptr %adapter.i84 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %adapter.i84, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %37, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.111, i32 noundef 2) #4
  store i8 2, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %38 = load i8, ptr @glcoex_dm_8192e_2ant, align 4
  %conv2.i85 = zext i8 %38 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %37, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %conv2.i85, i32 noundef 2) #4
  %39 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %40 = ptrtoint ptr %adapter.i84 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %adapter.i84, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i83) #4
  %42 = ptrtoint ptr %h2c_parameter.i.i83 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %39, ptr %h2c_parameter.i.i83, align 1
  %conv.i.i86 = zext i8 %39 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %41, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef %conv.i.i86, i32 noundef %conv.i.i86) #4
  %btc_fill_h2c.i.i87 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %43 = ptrtoint ptr %btc_fill_h2c.i.i87 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %btc_fill_h2c.i.i87, align 4
  call void %44(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i83) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i83) #4
  br label %if.end25.sink.split

if.then23:                                        ; preds = %btc8192e2ant_bt_rssi_state.exit.if.then23_crit_edge, %btc8192e2ant_bt_rssi_state.exit.if.then23_crit_edge110
  %adapter.i89 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %45 = ptrtoint ptr %adapter.i89 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %adapter.i89, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %46, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.111, i32 noundef 4) #4
  store i8 4, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %47 = load i8, ptr @glcoex_dm_8192e_2ant, align 4
  %conv2.i90 = zext i8 %47 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %46, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %conv2.i90, i32 noundef 4) #4
  %48 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %49 = ptrtoint ptr %adapter.i89 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %adapter.i89, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i88) #4
  %51 = ptrtoint ptr %h2c_parameter.i.i88 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %48, ptr %h2c_parameter.i.i88, align 1
  %conv.i.i91 = zext i8 %48 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %50, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef %conv.i.i91, i32 noundef %conv.i.i91) #4
  %btc_fill_h2c.i.i92 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %52 = ptrtoint ptr %btc_fill_h2c.i.i92 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %btc_fill_h2c.i.i92, align 4
  call void %53(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i88) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i88) #4
  br label %if.end25.sink.split

if.end25.sink.split:                              ; preds = %if.then23, %if.then14, %if.then
  %.sink = phi i8 [ 9, %if.then14 ], [ 9, %if.then23 ], [ 13, %if.then ]
  %54 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  store i8 %54, ptr @glcoex_dm_8192e_2ant, align 4
  call fastcc void @btc8192e2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext %.sink)
  br label %if.end25

if.end25:                                         ; preds = %if.end25.sink.split, %btc8192e2ant_bt_rssi_state.exit.if.end25_crit_edge
  %55 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %wifi_bw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %56)
  %cmp26 = icmp eq i32 %56, 2
  %trunc98 = trunc i8 %wifi_rssi_state.0.i to i3
  %57 = sext i3 %trunc98 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %switch.selectcmp.case1102 = icmp eq i3 %trunc98, 0
  %58 = sext i3 %trunc98 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %58)
  %switch.selectcmp.case2103 = icmp eq i3 %trunc98, 3
  %switch.selectcmp104 = or i1 %switch.selectcmp.case1102, %switch.selectcmp.case2103
  call fastcc void @btc8192e2ant_sw_mechanism1(ptr noundef %btcoexist, i1 noundef zeroext %cmp26)
  call fastcc void @btc8192e2ant_sw_mechanism2(ptr noundef %btcoexist, i1 noundef zeroext %switch.selectcmp104, i1 noundef zeroext false, i32 noundef 24)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_bw) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8192e2ant_action_a2dp(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i.i141 = alloca [1 x i8], align 1
  %h2c_parameter.i.i136 = alloca [1 x i8], align 1
  %h2c_parameter.i.i131 = alloca [1 x i8], align 1
  %reject_rx_agg.i123 = alloca i8, align 1
  %bt_ctrl_rx_agg_size.i124 = alloca i8, align 1
  %rx_agg_size.i125 = alloca i8, align 1
  %h2c_parameter.i.i = alloca [1 x i8], align 1
  %reject_rx_agg.i = alloca i8, align 1
  %bt_ctrl_rx_agg_size.i = alloca i8, align 1
  %rx_agg_size.i = alloca i8, align 1
  %wifi_rssi.i = alloca i32, align 4
  %wifi_bw = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_bw) #4
  %2 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %wifi_bw, align 4, !annotation !504
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %3 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %wifi_rssi.i, align 4
  %btc_get.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %4 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %btc_get.i, align 4
  %call.i = call zeroext i1 %5(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi.i) #4
  %6 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 13), align 2
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.252)
  switch i8 %6, label %if.else19.i [
    i8 2, label %entry.if.then14.i_crit_edge
    i8 5, label %entry.if.then14.i_crit_edge156
  ]

entry.if.then14.i_crit_edge156:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

entry.if.then14.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

if.then14.i:                                      ; preds = %entry.if.then14.i_crit_edge, %entry.if.then14.i_crit_edge156
  %8 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %9)
  %cmp16.i = icmp sgt i32 %9, 16
  %..i = select i1 %cmp16.i, i8 0, i8 5
  br label %btc8192e2ant_wifi_rssi_state.exit

if.else19.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %11)
  %cmp21.i = icmp slt i32 %11, 15
  %.1.i = select i1 %cmp21.i, i8 2, i8 3
  br label %btc8192e2ant_wifi_rssi_state.exit

btc8192e2ant_wifi_rssi_state.exit:                ; preds = %if.else19.i, %if.then14.i
  %wifi_rssi_state.0.i = phi i8 [ %..i, %if.then14.i ], [ %.1.i, %if.else19.i ]
  store i8 %wifi_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 13), align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %12 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 12), align 1
  %13 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 11), align 4
  %14 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.253)
  switch i8 %12, label %if.else78.i [
    i8 2, label %btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge
    i8 5, label %btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge157
    i8 1, label %btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge
    i8 4, label %btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge158
  ]

btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge158: ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then64.i

btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge: ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then64.i

btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge157: ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then46.i

btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge: ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then46.i

if.then46.i:                                      ; preds = %btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge, %btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge157
  call void @__sanitizer_cov_trace_const_cmp1(i8 35, i8 %13)
  %cmp49.i = icmp ugt i8 %13, 35
  br i1 %cmp49.i, label %if.then46.i.btc8192e2ant_bt_rssi_state.exit.thread_crit_edge, label %if.then46.i.land.lhs.true_crit_edge

if.then46.i.land.lhs.true_crit_edge:              ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

if.then46.i.btc8192e2ant_bt_rssi_state.exit.thread_crit_edge: ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8192e2ant_bt_rssi_state.exit.thread

if.then64.i:                                      ; preds = %btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge, %btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge158
  call void @__sanitizer_cov_trace_const_cmp1(i8 43, i8 %13)
  %cmp67.i = icmp ugt i8 %13, 43
  br i1 %cmp67.i, label %if.then64.i.btc8192e2ant_bt_rssi_state.exit.thread_crit_edge, label %if.else70.i

if.then64.i.btc8192e2ant_bt_rssi_state.exit.thread_crit_edge: ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8192e2ant_bt_rssi_state.exit.thread

if.else70.i:                                      ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %13)
  %cmp72.i = icmp ult i8 %13, 34
  br i1 %cmp72.i, label %if.else70.i.land.lhs.true_crit_edge, label %if.else70.i.btc8192e2ant_bt_rssi_state.exit.thread_crit_edge

if.else70.i.btc8192e2ant_bt_rssi_state.exit.thread_crit_edge: ; preds = %if.else70.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8192e2ant_bt_rssi_state.exit.thread

if.else70.i.land.lhs.true_crit_edge:              ; preds = %if.else70.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

if.else78.i:                                      ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %13)
  %cmp80.i = icmp ult i8 %13, 42
  %spec.select = select i1 %cmp80.i, i8 1, i8 3
  br label %btc8192e2ant_bt_rssi_state.exit.thread

btc8192e2ant_bt_rssi_state.exit.thread:           ; preds = %if.else78.i, %if.else70.i.btc8192e2ant_bt_rssi_state.exit.thread_crit_edge, %if.then64.i.btc8192e2ant_bt_rssi_state.exit.thread_crit_edge, %if.then46.i.btc8192e2ant_bt_rssi_state.exit.thread_crit_edge
  %bt_rssi_state.0.i.ph = phi i8 [ 4, %if.else70.i.btc8192e2ant_bt_rssi_state.exit.thread_crit_edge ], [ 0, %if.then64.i.btc8192e2ant_bt_rssi_state.exit.thread_crit_edge ], [ 1, %if.then46.i.btc8192e2ant_bt_rssi_state.exit.thread_crit_edge ], [ %spec.select, %if.else78.i ]
  store i8 %bt_rssi_state.0.i.ph, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 12), align 1
  br label %if.else

land.lhs.true:                                    ; preds = %if.else70.i.land.lhs.true_crit_edge, %if.then46.i.land.lhs.true_crit_edge
  %bt_rssi_state.0.i = phi i8 [ 5, %if.then46.i.land.lhs.true_crit_edge ], [ 2, %if.else70.i.land.lhs.true_crit_edge ]
  store i8 %bt_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 12), align 1
  %trunc151 = trunc i8 %wifi_rssi_state.0.i to i3
  %15 = zext i3 %trunc151 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.254)
  switch i3 %trunc151, label %land.lhs.true.if.else_crit_edge [
    i3 2, label %land.lhs.true.if.then_crit_edge
    i3 -3, label %land.lhs.true.if.then_crit_edge159
  ]

land.lhs.true.if.then_crit_edge159:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %land.lhs.true.if.then_crit_edge159
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.217) #4
  call fastcc void @btc8192e2ant_switch_ss_type(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 2)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  %16 = ptrtoint ptr %reject_rx_agg.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %reject_rx_agg.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  %17 = ptrtoint ptr %bt_ctrl_rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %bt_ctrl_rx_agg_size.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  %18 = ptrtoint ptr %rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 4, ptr %rx_agg_size.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %19 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %btc_set.i, align 4
  %call.i122 = call zeroext i1 %20(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %reject_rx_agg.i) #4
  %21 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %btc_set.i, align 4
  %call7.i = call zeroext i1 %22(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %bt_ctrl_rx_agg_size.i) #4
  %23 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %btc_set.i, align 4
  %call9.i = call zeroext i1 %24(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %rx_agg_size.i) #4
  %25 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %btc_set.i, align 4
  %call11.i = call zeroext i1 %26(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  call fastcc void @btc8192e2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext false)
  call fastcc void @btc8192e2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1515870810) #4
  call fastcc void @btc8192e2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 17)
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 11), align 1
  %27 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adapter, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %28, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.111, i32 noundef 0) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %29 = load i8, ptr @glcoex_dm_8192e_2ant, align 4
  %conv2.i = zext i8 %29 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %28, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %conv2.i, i32 noundef 0) #4
  %30 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %31 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  %33 = ptrtoint ptr %h2c_parameter.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %30, ptr %h2c_parameter.i.i, align 1
  %conv.i.i = zext i8 %30 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %32, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef %conv.i.i, i32 noundef %conv.i.i) #4
  %btc_fill_h2c.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %34 = ptrtoint ptr %btc_fill_h2c.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %btc_fill_h2c.i.i, align 4
  call void %35(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  br label %if.end51.sink.split

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %btc8192e2ant_bt_rssi_state.exit.thread
  %bt_rssi_state.0.i149 = phi i8 [ %bt_rssi_state.0.i.ph, %btc8192e2ant_bt_rssi_state.exit.thread ], [ %bt_rssi_state.0.i, %land.lhs.true.if.else_crit_edge ]
  call fastcc void @btc8192e2ant_switch_ss_type(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 1)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reject_rx_agg.i123) #4
  %36 = ptrtoint ptr %reject_rx_agg.i123 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %reject_rx_agg.i123, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i124) #4
  %37 = ptrtoint ptr %bt_ctrl_rx_agg_size.i124 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %bt_ctrl_rx_agg_size.i124, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rx_agg_size.i125) #4
  %38 = ptrtoint ptr %rx_agg_size.i125 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 8, ptr %rx_agg_size.i125, align 1
  %btc_set.i126 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %39 = ptrtoint ptr %btc_set.i126 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %btc_set.i126, align 4
  %call.i127 = call zeroext i1 %40(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %reject_rx_agg.i123) #4
  %41 = ptrtoint ptr %btc_set.i126 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %btc_set.i126, align 4
  %call7.i128 = call zeroext i1 %42(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %bt_ctrl_rx_agg_size.i124) #4
  %43 = ptrtoint ptr %btc_set.i126 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %btc_set.i126, align 4
  %call9.i129 = call zeroext i1 %44(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %rx_agg_size.i125) #4
  %45 = ptrtoint ptr %btc_set.i126 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %btc_set.i126, align 4
  %call11.i130 = call zeroext i1 %46(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rx_agg_size.i125) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i124) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reject_rx_agg.i123) #4
  call fastcc void @btc8192e2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext false)
  call fastcc void @btc8192e2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1610309627) #4
  %47 = zext i8 %bt_rssi_state.0.i149 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.255)
  switch i8 %bt_rssi_state.0.i149, label %if.else.if.end51_crit_edge [
    i8 5, label %if.else.if.then29_crit_edge
    i8 2, label %if.else.if.then29_crit_edge160
    i8 1, label %if.else.if.then38_crit_edge
    i8 4, label %if.else.if.then38_crit_edge161
    i8 0, label %if.else.if.then47_crit_edge
    i8 3, label %if.else.if.then47_crit_edge162
  ]

if.else.if.then47_crit_edge162:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then47

if.else.if.then47_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then47

if.else.if.then38_crit_edge161:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then38

if.else.if.then38_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then38

if.else.if.then29_crit_edge160:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then29

if.else.if.then29_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then29

if.else.if.end51_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end51

if.then29:                                        ; preds = %if.else.if.then29_crit_edge, %if.else.if.then29_crit_edge160
  call fastcc void @btc8192e2ant_tdma_duration_adjust(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 1)
  %48 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %adapter, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %49, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.111, i32 noundef 0) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %50 = load i8, ptr @glcoex_dm_8192e_2ant, align 4
  %conv2.i133 = zext i8 %50 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %49, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %conv2.i133, i32 noundef 0) #4
  %51 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %52 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i131) #4
  %54 = ptrtoint ptr %h2c_parameter.i.i131 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %51, ptr %h2c_parameter.i.i131, align 1
  %conv.i.i134 = zext i8 %51 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %53, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef %conv.i.i134, i32 noundef %conv.i.i134) #4
  %btc_fill_h2c.i.i135 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %55 = ptrtoint ptr %btc_fill_h2c.i.i135 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %btc_fill_h2c.i.i135, align 4
  call void %56(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i131) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i131) #4
  br label %if.end51.sink.split

if.then38:                                        ; preds = %if.else.if.then38_crit_edge, %if.else.if.then38_crit_edge161
  call fastcc void @btc8192e2ant_tdma_duration_adjust(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 1)
  %57 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %adapter, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %58, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.111, i32 noundef 2) #4
  store i8 2, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %59 = load i8, ptr @glcoex_dm_8192e_2ant, align 4
  %conv2.i138 = zext i8 %59 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %58, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %conv2.i138, i32 noundef 2) #4
  %60 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %61 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i136) #4
  %63 = ptrtoint ptr %h2c_parameter.i.i136 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %60, ptr %h2c_parameter.i.i136, align 1
  %conv.i.i139 = zext i8 %60 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %62, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef %conv.i.i139, i32 noundef %conv.i.i139) #4
  %btc_fill_h2c.i.i140 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %64 = ptrtoint ptr %btc_fill_h2c.i.i140 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %btc_fill_h2c.i.i140, align 4
  call void %65(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i136) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i136) #4
  br label %if.end51.sink.split

if.then47:                                        ; preds = %if.else.if.then47_crit_edge, %if.else.if.then47_crit_edge162
  call fastcc void @btc8192e2ant_tdma_duration_adjust(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 1)
  %66 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %adapter, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %67, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.111, i32 noundef 4) #4
  store i8 4, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %68 = load i8, ptr @glcoex_dm_8192e_2ant, align 4
  %conv2.i143 = zext i8 %68 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %67, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %conv2.i143, i32 noundef 4) #4
  %69 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %70 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i141) #4
  %72 = ptrtoint ptr %h2c_parameter.i.i141 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %69, ptr %h2c_parameter.i.i141, align 1
  %conv.i.i144 = zext i8 %69 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %71, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef %conv.i.i144, i32 noundef %conv.i.i144) #4
  %btc_fill_h2c.i.i145 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %73 = ptrtoint ptr %btc_fill_h2c.i.i145 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %btc_fill_h2c.i.i145, align 4
  call void %74(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i141) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i141) #4
  br label %if.end51.sink.split

if.end51.sink.split:                              ; preds = %if.then47, %if.then38, %if.then29, %if.then
  %75 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  store i8 %75, ptr @glcoex_dm_8192e_2ant, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.end51.sink.split, %if.else.if.end51_crit_edge
  %76 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %btc_get.i, align 4
  %call52 = call zeroext i1 %77(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef nonnull %wifi_bw) #4
  %78 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %wifi_bw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %79)
  %cmp53 = icmp eq i32 %79, 2
  %trunc150 = trunc i8 %wifi_rssi_state.0.i to i3
  %80 = sext i3 %trunc150 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %switch.selectcmp.case1153 = icmp eq i3 %trunc150, 0
  %81 = sext i3 %trunc150 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %81)
  %switch.selectcmp.case2154 = icmp eq i3 %trunc150, 3
  %switch.selectcmp155 = or i1 %switch.selectcmp.case1153, %switch.selectcmp.case2154
  call fastcc void @btc8192e2ant_sw_mechanism1(ptr noundef %btcoexist, i1 noundef zeroext %cmp53)
  call fastcc void @btc8192e2ant_sw_mechanism2(ptr noundef %btcoexist, i1 noundef zeroext %switch.selectcmp155, i1 noundef zeroext false, i32 noundef 24)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_bw) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8192e2ant_action_a2dp_pan_hs(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i.i88 = alloca [1 x i8], align 1
  %h2c_parameter.i.i83 = alloca [1 x i8], align 1
  %h2c_parameter.i.i = alloca [1 x i8], align 1
  %reject_rx_agg.i = alloca i8, align 1
  %bt_ctrl_rx_agg_size.i = alloca i8, align 1
  %rx_agg_size.i = alloca i8, align 1
  %wifi_rssi.i = alloca i32, align 4
  %wifi_bw = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_bw) #4
  %0 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wifi_bw, align 4, !annotation !504
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %1 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %wifi_rssi.i, align 4
  %btc_get.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %2 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %btc_get.i, align 4
  %call.i = call zeroext i1 %3(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi.i) #4
  %4 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 13), align 2
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.256)
  switch i8 %4, label %if.else19.i [
    i8 2, label %entry.if.then14.i_crit_edge
    i8 5, label %entry.if.then14.i_crit_edge103
  ]

entry.if.then14.i_crit_edge103:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

entry.if.then14.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

if.then14.i:                                      ; preds = %entry.if.then14.i_crit_edge, %entry.if.then14.i_crit_edge103
  %6 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %7)
  %cmp16.i = icmp sgt i32 %7, 16
  %..i = select i1 %cmp16.i, i8 0, i8 5
  br label %btc8192e2ant_wifi_rssi_state.exit

if.else19.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %9)
  %cmp21.i = icmp slt i32 %9, 15
  %.1.i = select i1 %cmp21.i, i8 2, i8 3
  br label %btc8192e2ant_wifi_rssi_state.exit

btc8192e2ant_wifi_rssi_state.exit:                ; preds = %if.else19.i, %if.then14.i
  %wifi_rssi_state.0.i = phi i8 [ %..i, %if.then14.i ], [ %.1.i, %if.else19.i ]
  store i8 %wifi_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 13), align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %10 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 12), align 1
  %11 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 11), align 4
  %12 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.257)
  switch i8 %10, label %if.else78.i [
    i8 2, label %btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge
    i8 5, label %btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge104
    i8 1, label %btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge
    i8 4, label %btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge105
  ]

btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge105: ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then64.i

btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge: ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then64.i

btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge104: ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then46.i

btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge: ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then46.i

if.then46.i:                                      ; preds = %btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge, %btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge104
  call void @__sanitizer_cov_trace_const_cmp1(i8 35, i8 %11)
  %cmp49.i = icmp ugt i8 %11, 35
  %spec.select = select i1 %cmp49.i, i8 1, i8 5
  br label %btc8192e2ant_bt_rssi_state.exit

if.then64.i:                                      ; preds = %btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge, %btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge105
  call void @__sanitizer_cov_trace_const_cmp1(i8 43, i8 %11)
  %cmp67.i = icmp ugt i8 %11, 43
  br i1 %cmp67.i, label %if.then64.i.btc8192e2ant_bt_rssi_state.exit_crit_edge, label %if.else70.i

if.then64.i.btc8192e2ant_bt_rssi_state.exit_crit_edge: ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8192e2ant_bt_rssi_state.exit

if.else70.i:                                      ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %11)
  %cmp72.i = icmp ult i8 %11, 34
  %spec.select95 = select i1 %cmp72.i, i8 2, i8 4
  br label %btc8192e2ant_bt_rssi_state.exit

if.else78.i:                                      ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %11)
  %cmp80.i = icmp ult i8 %11, 42
  %spec.select96 = select i1 %cmp80.i, i8 1, i8 3
  br label %btc8192e2ant_bt_rssi_state.exit

btc8192e2ant_bt_rssi_state.exit:                  ; preds = %if.else78.i, %if.else70.i, %if.then64.i.btc8192e2ant_bt_rssi_state.exit_crit_edge, %if.then46.i
  %bt_rssi_state.0.i = phi i8 [ 0, %if.then64.i.btc8192e2ant_bt_rssi_state.exit_crit_edge ], [ %spec.select, %if.then46.i ], [ %spec.select95, %if.else70.i ], [ %spec.select96, %if.else78.i ]
  store i8 %bt_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 12), align 1
  call fastcc void @btc8192e2ant_switch_ss_type(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 1)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  %13 = ptrtoint ptr %reject_rx_agg.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %reject_rx_agg.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  %14 = ptrtoint ptr %bt_ctrl_rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %bt_ctrl_rx_agg_size.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  %15 = ptrtoint ptr %rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 8, ptr %rx_agg_size.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %16 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %btc_set.i, align 4
  %call.i82 = call zeroext i1 %17(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %reject_rx_agg.i) #4
  %18 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %btc_set.i, align 4
  %call7.i = call zeroext i1 %19(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %bt_ctrl_rx_agg_size.i) #4
  %20 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %btc_set.i, align 4
  %call9.i = call zeroext i1 %21(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %rx_agg_size.i) #4
  %22 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %btc_set.i, align 4
  %call11.i = call zeroext i1 %23(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  call fastcc void @btc8192e2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext false)
  call fastcc void @btc8192e2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1610309627) #4
  %trunc = trunc i8 %bt_rssi_state.0.i to i3
  %24 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.258)
  switch i3 %trunc, label %btc8192e2ant_bt_rssi_state.exit.if.end24_crit_edge [
    i3 2, label %btc8192e2ant_bt_rssi_state.exit.if.then_crit_edge
    i3 -3, label %btc8192e2ant_bt_rssi_state.exit.if.then_crit_edge106
    i3 1, label %btc8192e2ant_bt_rssi_state.exit.if.then13_crit_edge
    i3 -4, label %btc8192e2ant_bt_rssi_state.exit.if.then13_crit_edge107
    i3 0, label %btc8192e2ant_bt_rssi_state.exit.if.then22_crit_edge
    i3 3, label %btc8192e2ant_bt_rssi_state.exit.if.then22_crit_edge108
  ]

btc8192e2ant_bt_rssi_state.exit.if.then22_crit_edge108: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then22

btc8192e2ant_bt_rssi_state.exit.if.then22_crit_edge: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then22

btc8192e2ant_bt_rssi_state.exit.if.then13_crit_edge107: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then13

btc8192e2ant_bt_rssi_state.exit.if.then13_crit_edge: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then13

btc8192e2ant_bt_rssi_state.exit.if.then_crit_edge106: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

btc8192e2ant_bt_rssi_state.exit.if.then_crit_edge: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

btc8192e2ant_bt_rssi_state.exit.if.end24_crit_edge: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

if.then:                                          ; preds = %btc8192e2ant_bt_rssi_state.exit.if.then_crit_edge, %btc8192e2ant_bt_rssi_state.exit.if.then_crit_edge106
  call fastcc void @btc8192e2ant_tdma_duration_adjust(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 2)
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %25 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %26, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.111, i32 noundef 0) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %27 = load i8, ptr @glcoex_dm_8192e_2ant, align 4
  %conv2.i = zext i8 %27 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %26, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %conv2.i, i32 noundef 0) #4
  %28 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %29 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  %31 = ptrtoint ptr %h2c_parameter.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %28, ptr %h2c_parameter.i.i, align 1
  %conv.i.i = zext i8 %28 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %30, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef %conv.i.i, i32 noundef %conv.i.i) #4
  %btc_fill_h2c.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %32 = ptrtoint ptr %btc_fill_h2c.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %btc_fill_h2c.i.i, align 4
  call void %33(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  br label %if.end24.sink.split

if.then13:                                        ; preds = %btc8192e2ant_bt_rssi_state.exit.if.then13_crit_edge, %btc8192e2ant_bt_rssi_state.exit.if.then13_crit_edge107
  call fastcc void @btc8192e2ant_tdma_duration_adjust(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 2)
  %adapter.i84 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %34 = ptrtoint ptr %adapter.i84 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adapter.i84, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %35, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.111, i32 noundef 2) #4
  store i8 2, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %36 = load i8, ptr @glcoex_dm_8192e_2ant, align 4
  %conv2.i85 = zext i8 %36 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %35, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %conv2.i85, i32 noundef 2) #4
  %37 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %38 = ptrtoint ptr %adapter.i84 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %adapter.i84, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i83) #4
  %40 = ptrtoint ptr %h2c_parameter.i.i83 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %37, ptr %h2c_parameter.i.i83, align 1
  %conv.i.i86 = zext i8 %37 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef %conv.i.i86, i32 noundef %conv.i.i86) #4
  %btc_fill_h2c.i.i87 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %41 = ptrtoint ptr %btc_fill_h2c.i.i87 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %btc_fill_h2c.i.i87, align 4
  call void %42(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i83) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i83) #4
  br label %if.end24.sink.split

if.then22:                                        ; preds = %btc8192e2ant_bt_rssi_state.exit.if.then22_crit_edge, %btc8192e2ant_bt_rssi_state.exit.if.then22_crit_edge108
  call fastcc void @btc8192e2ant_tdma_duration_adjust(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 2)
  %adapter.i89 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %43 = ptrtoint ptr %adapter.i89 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %adapter.i89, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %44, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.111, i32 noundef 4) #4
  store i8 4, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %45 = load i8, ptr @glcoex_dm_8192e_2ant, align 4
  %conv2.i90 = zext i8 %45 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %44, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %conv2.i90, i32 noundef 4) #4
  %46 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %47 = ptrtoint ptr %adapter.i89 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %adapter.i89, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i88) #4
  %49 = ptrtoint ptr %h2c_parameter.i.i88 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %46, ptr %h2c_parameter.i.i88, align 1
  %conv.i.i91 = zext i8 %46 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %48, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef %conv.i.i91, i32 noundef %conv.i.i91) #4
  %btc_fill_h2c.i.i92 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %50 = ptrtoint ptr %btc_fill_h2c.i.i92 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %btc_fill_h2c.i.i92, align 4
  call void %51(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i88) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i88) #4
  br label %if.end24.sink.split

if.end24.sink.split:                              ; preds = %if.then22, %if.then13, %if.then
  %52 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  store i8 %52, ptr @glcoex_dm_8192e_2ant, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end24.sink.split, %btc8192e2ant_bt_rssi_state.exit.if.end24_crit_edge
  %53 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %btc_get.i, align 4
  %call25 = call zeroext i1 %54(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef nonnull %wifi_bw) #4
  %55 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %wifi_bw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %56)
  %cmp26 = icmp eq i32 %56, 2
  %trunc98 = trunc i8 %wifi_rssi_state.0.i to i3
  %57 = sext i3 %trunc98 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %switch.selectcmp.case1100 = icmp eq i3 %trunc98, 0
  %58 = sext i3 %trunc98 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %58)
  %switch.selectcmp.case2101 = icmp eq i3 %trunc98, 3
  %switch.selectcmp102 = or i1 %switch.selectcmp.case1100, %switch.selectcmp.case2101
  call fastcc void @btc8192e2ant_sw_mechanism1(ptr noundef %btcoexist, i1 noundef zeroext %cmp26)
  call fastcc void @btc8192e2ant_sw_mechanism2(ptr noundef %btcoexist, i1 noundef zeroext %switch.selectcmp102, i1 noundef zeroext true, i32 noundef 6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_bw) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8192e2ant_action_pan_edr(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i.i88 = alloca [1 x i8], align 1
  %h2c_parameter.i.i83 = alloca [1 x i8], align 1
  %h2c_parameter.i.i = alloca [1 x i8], align 1
  %reject_rx_agg.i = alloca i8, align 1
  %bt_ctrl_rx_agg_size.i = alloca i8, align 1
  %rx_agg_size.i = alloca i8, align 1
  %wifi_rssi.i = alloca i32, align 4
  %wifi_bw = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_bw) #4
  %0 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wifi_bw, align 4, !annotation !504
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %1 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %wifi_rssi.i, align 4
  %btc_get.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %2 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %btc_get.i, align 4
  %call.i = call zeroext i1 %3(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi.i) #4
  %4 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 13), align 2
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.259)
  switch i8 %4, label %if.else19.i [
    i8 2, label %entry.if.then14.i_crit_edge
    i8 5, label %entry.if.then14.i_crit_edge105
  ]

entry.if.then14.i_crit_edge105:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

entry.if.then14.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

if.then14.i:                                      ; preds = %entry.if.then14.i_crit_edge, %entry.if.then14.i_crit_edge105
  %6 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %7)
  %cmp16.i = icmp sgt i32 %7, 16
  %..i = select i1 %cmp16.i, i8 0, i8 5
  br label %btc8192e2ant_wifi_rssi_state.exit

if.else19.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %9)
  %cmp21.i = icmp slt i32 %9, 15
  %.1.i = select i1 %cmp21.i, i8 2, i8 3
  br label %btc8192e2ant_wifi_rssi_state.exit

btc8192e2ant_wifi_rssi_state.exit:                ; preds = %if.else19.i, %if.then14.i
  %wifi_rssi_state.0.i = phi i8 [ %..i, %if.then14.i ], [ %.1.i, %if.else19.i ]
  store i8 %wifi_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 13), align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %10 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 12), align 1
  %11 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 11), align 4
  %12 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.260)
  switch i8 %10, label %if.else78.i [
    i8 2, label %btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge
    i8 5, label %btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge106
    i8 1, label %btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge
    i8 4, label %btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge107
  ]

btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge107: ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then64.i

btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge: ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then64.i

btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge106: ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then46.i

btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge: ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then46.i

if.then46.i:                                      ; preds = %btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge, %btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge106
  call void @__sanitizer_cov_trace_const_cmp1(i8 35, i8 %11)
  %cmp49.i = icmp ugt i8 %11, 35
  %spec.select = select i1 %cmp49.i, i8 1, i8 5
  br label %btc8192e2ant_bt_rssi_state.exit

if.then64.i:                                      ; preds = %btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge, %btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge107
  call void @__sanitizer_cov_trace_const_cmp1(i8 43, i8 %11)
  %cmp67.i = icmp ugt i8 %11, 43
  br i1 %cmp67.i, label %if.then64.i.btc8192e2ant_bt_rssi_state.exit_crit_edge, label %if.else70.i

if.then64.i.btc8192e2ant_bt_rssi_state.exit_crit_edge: ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8192e2ant_bt_rssi_state.exit

if.else70.i:                                      ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %11)
  %cmp72.i = icmp ult i8 %11, 34
  %spec.select95 = select i1 %cmp72.i, i8 2, i8 4
  br label %btc8192e2ant_bt_rssi_state.exit

if.else78.i:                                      ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %11)
  %cmp80.i = icmp ult i8 %11, 42
  %spec.select96 = select i1 %cmp80.i, i8 1, i8 3
  br label %btc8192e2ant_bt_rssi_state.exit

btc8192e2ant_bt_rssi_state.exit:                  ; preds = %if.else78.i, %if.else70.i, %if.then64.i.btc8192e2ant_bt_rssi_state.exit_crit_edge, %if.then46.i
  %bt_rssi_state.0.i = phi i8 [ 0, %if.then64.i.btc8192e2ant_bt_rssi_state.exit_crit_edge ], [ %spec.select, %if.then46.i ], [ %spec.select95, %if.else70.i ], [ %spec.select96, %if.else78.i ]
  store i8 %bt_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 12), align 1
  call fastcc void @btc8192e2ant_switch_ss_type(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 1)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  %13 = ptrtoint ptr %reject_rx_agg.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %reject_rx_agg.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  %14 = ptrtoint ptr %bt_ctrl_rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %bt_ctrl_rx_agg_size.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  %15 = ptrtoint ptr %rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 8, ptr %rx_agg_size.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %16 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %btc_set.i, align 4
  %call.i82 = call zeroext i1 %17(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %reject_rx_agg.i) #4
  %18 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %btc_set.i, align 4
  %call7.i = call zeroext i1 %19(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %bt_ctrl_rx_agg_size.i) #4
  %20 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %btc_set.i, align 4
  %call9.i = call zeroext i1 %21(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %rx_agg_size.i) #4
  %22 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %btc_set.i, align 4
  %call11.i = call zeroext i1 %23(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  call fastcc void @btc8192e2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext false)
  call fastcc void @btc8192e2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1610309627) #4
  %trunc = trunc i8 %bt_rssi_state.0.i to i3
  %24 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.261)
  switch i3 %trunc, label %btc8192e2ant_bt_rssi_state.exit.if.end24_crit_edge [
    i3 2, label %btc8192e2ant_bt_rssi_state.exit.if.then_crit_edge
    i3 -3, label %btc8192e2ant_bt_rssi_state.exit.if.then_crit_edge108
    i3 1, label %btc8192e2ant_bt_rssi_state.exit.if.then13_crit_edge
    i3 -4, label %btc8192e2ant_bt_rssi_state.exit.if.then13_crit_edge109
    i3 0, label %btc8192e2ant_bt_rssi_state.exit.if.then22_crit_edge
    i3 3, label %btc8192e2ant_bt_rssi_state.exit.if.then22_crit_edge110
  ]

btc8192e2ant_bt_rssi_state.exit.if.then22_crit_edge110: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then22

btc8192e2ant_bt_rssi_state.exit.if.then22_crit_edge: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then22

btc8192e2ant_bt_rssi_state.exit.if.then13_crit_edge109: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then13

btc8192e2ant_bt_rssi_state.exit.if.then13_crit_edge: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then13

btc8192e2ant_bt_rssi_state.exit.if.then_crit_edge108: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

btc8192e2ant_bt_rssi_state.exit.if.then_crit_edge: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

btc8192e2ant_bt_rssi_state.exit.if.end24_crit_edge: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

if.then:                                          ; preds = %btc8192e2ant_bt_rssi_state.exit.if.then_crit_edge, %btc8192e2ant_bt_rssi_state.exit.if.then_crit_edge108
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %25 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %26, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.111, i32 noundef 0) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %27 = load i8, ptr @glcoex_dm_8192e_2ant, align 4
  %conv2.i = zext i8 %27 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %26, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %conv2.i, i32 noundef 0) #4
  %28 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %29 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  %31 = ptrtoint ptr %h2c_parameter.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %28, ptr %h2c_parameter.i.i, align 1
  %conv.i.i = zext i8 %28 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %30, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef %conv.i.i, i32 noundef %conv.i.i) #4
  %btc_fill_h2c.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %32 = ptrtoint ptr %btc_fill_h2c.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %btc_fill_h2c.i.i, align 4
  call void %33(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  br label %if.end24.sink.split

if.then13:                                        ; preds = %btc8192e2ant_bt_rssi_state.exit.if.then13_crit_edge, %btc8192e2ant_bt_rssi_state.exit.if.then13_crit_edge109
  %adapter.i84 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %34 = ptrtoint ptr %adapter.i84 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adapter.i84, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %35, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.111, i32 noundef 2) #4
  store i8 2, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %36 = load i8, ptr @glcoex_dm_8192e_2ant, align 4
  %conv2.i85 = zext i8 %36 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %35, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %conv2.i85, i32 noundef 2) #4
  %37 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %38 = ptrtoint ptr %adapter.i84 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %adapter.i84, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i83) #4
  %40 = ptrtoint ptr %h2c_parameter.i.i83 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %37, ptr %h2c_parameter.i.i83, align 1
  %conv.i.i86 = zext i8 %37 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef %conv.i.i86, i32 noundef %conv.i.i86) #4
  %btc_fill_h2c.i.i87 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %41 = ptrtoint ptr %btc_fill_h2c.i.i87 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %btc_fill_h2c.i.i87, align 4
  call void %42(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i83) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i83) #4
  br label %if.end24.sink.split

if.then22:                                        ; preds = %btc8192e2ant_bt_rssi_state.exit.if.then22_crit_edge, %btc8192e2ant_bt_rssi_state.exit.if.then22_crit_edge110
  %adapter.i89 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %43 = ptrtoint ptr %adapter.i89 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %adapter.i89, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %44, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.111, i32 noundef 4) #4
  store i8 4, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %45 = load i8, ptr @glcoex_dm_8192e_2ant, align 4
  %conv2.i90 = zext i8 %45 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %44, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %conv2.i90, i32 noundef 4) #4
  %46 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %47 = ptrtoint ptr %adapter.i89 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %adapter.i89, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i88) #4
  %49 = ptrtoint ptr %h2c_parameter.i.i88 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %46, ptr %h2c_parameter.i.i88, align 1
  %conv.i.i91 = zext i8 %46 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %48, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef %conv.i.i91, i32 noundef %conv.i.i91) #4
  %btc_fill_h2c.i.i92 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %50 = ptrtoint ptr %btc_fill_h2c.i.i92 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %btc_fill_h2c.i.i92, align 4
  call void %51(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i88) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i88) #4
  br label %if.end24.sink.split

if.end24.sink.split:                              ; preds = %if.then22, %if.then13, %if.then
  %.sink = phi i8 [ 1, %if.then13 ], [ 1, %if.then22 ], [ 5, %if.then ]
  %52 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  store i8 %52, ptr @glcoex_dm_8192e_2ant, align 4
  call fastcc void @btc8192e2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext %.sink)
  br label %if.end24

if.end24:                                         ; preds = %if.end24.sink.split, %btc8192e2ant_bt_rssi_state.exit.if.end24_crit_edge
  %53 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %btc_get.i, align 4
  %call25 = call zeroext i1 %54(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef nonnull %wifi_bw) #4
  %55 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %wifi_bw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %56)
  %cmp26 = icmp eq i32 %56, 2
  %trunc98 = trunc i8 %wifi_rssi_state.0.i to i3
  %57 = sext i3 %trunc98 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %switch.selectcmp.case1102 = icmp eq i3 %trunc98, 0
  %58 = sext i3 %trunc98 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %58)
  %switch.selectcmp.case2103 = icmp eq i3 %trunc98, 3
  %switch.selectcmp104 = or i1 %switch.selectcmp.case1102, %switch.selectcmp.case2103
  call fastcc void @btc8192e2ant_sw_mechanism1(ptr noundef %btcoexist, i1 noundef zeroext %cmp26)
  call fastcc void @btc8192e2ant_sw_mechanism2(ptr noundef %btcoexist, i1 noundef zeroext %switch.selectcmp104, i1 noundef zeroext false, i32 noundef 24)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_bw) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8192e2ant_action_pan_hs(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i.i86 = alloca [1 x i8], align 1
  %h2c_parameter.i.i81 = alloca [1 x i8], align 1
  %h2c_parameter.i.i = alloca [1 x i8], align 1
  %reject_rx_agg.i = alloca i8, align 1
  %bt_ctrl_rx_agg_size.i = alloca i8, align 1
  %rx_agg_size.i = alloca i8, align 1
  %wifi_rssi.i = alloca i32, align 4
  %wifi_bw = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_bw) #4
  %0 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wifi_bw, align 4, !annotation !504
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %1 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %wifi_rssi.i, align 4
  %btc_get.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %2 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %btc_get.i, align 4
  %call.i = call zeroext i1 %3(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi.i) #4
  %4 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 13), align 2
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.262)
  switch i8 %4, label %if.else19.i [
    i8 2, label %entry.if.then14.i_crit_edge
    i8 5, label %entry.if.then14.i_crit_edge101
  ]

entry.if.then14.i_crit_edge101:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

entry.if.then14.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

if.then14.i:                                      ; preds = %entry.if.then14.i_crit_edge, %entry.if.then14.i_crit_edge101
  %6 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %7)
  %cmp16.i = icmp sgt i32 %7, 16
  %..i = select i1 %cmp16.i, i8 0, i8 5
  br label %btc8192e2ant_wifi_rssi_state.exit

if.else19.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %9)
  %cmp21.i = icmp slt i32 %9, 15
  %.1.i = select i1 %cmp21.i, i8 2, i8 3
  br label %btc8192e2ant_wifi_rssi_state.exit

btc8192e2ant_wifi_rssi_state.exit:                ; preds = %if.else19.i, %if.then14.i
  %wifi_rssi_state.0.i = phi i8 [ %..i, %if.then14.i ], [ %.1.i, %if.else19.i ]
  store i8 %wifi_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 13), align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %10 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 12), align 1
  %11 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 11), align 4
  %12 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.263)
  switch i8 %10, label %if.else78.i [
    i8 2, label %btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge
    i8 5, label %btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge102
    i8 1, label %btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge
    i8 4, label %btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge103
  ]

btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge103: ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then64.i

btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge: ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then64.i

btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge102: ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then46.i

btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge: ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then46.i

if.then46.i:                                      ; preds = %btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge, %btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge102
  call void @__sanitizer_cov_trace_const_cmp1(i8 35, i8 %11)
  %cmp49.i = icmp ugt i8 %11, 35
  %spec.select = select i1 %cmp49.i, i8 1, i8 5
  br label %btc8192e2ant_bt_rssi_state.exit

if.then64.i:                                      ; preds = %btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge, %btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge103
  call void @__sanitizer_cov_trace_const_cmp1(i8 43, i8 %11)
  %cmp67.i = icmp ugt i8 %11, 43
  br i1 %cmp67.i, label %if.then64.i.btc8192e2ant_bt_rssi_state.exit_crit_edge, label %if.else70.i

if.then64.i.btc8192e2ant_bt_rssi_state.exit_crit_edge: ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8192e2ant_bt_rssi_state.exit

if.else70.i:                                      ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %11)
  %cmp72.i = icmp ult i8 %11, 34
  %spec.select93 = select i1 %cmp72.i, i8 2, i8 4
  br label %btc8192e2ant_bt_rssi_state.exit

if.else78.i:                                      ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %11)
  %cmp80.i = icmp ult i8 %11, 42
  %spec.select94 = select i1 %cmp80.i, i8 1, i8 3
  br label %btc8192e2ant_bt_rssi_state.exit

btc8192e2ant_bt_rssi_state.exit:                  ; preds = %if.else78.i, %if.else70.i, %if.then64.i.btc8192e2ant_bt_rssi_state.exit_crit_edge, %if.then46.i
  %bt_rssi_state.0.i = phi i8 [ 0, %if.then64.i.btc8192e2ant_bt_rssi_state.exit_crit_edge ], [ %spec.select, %if.then46.i ], [ %spec.select93, %if.else70.i ], [ %spec.select94, %if.else78.i ]
  store i8 %bt_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 12), align 1
  call fastcc void @btc8192e2ant_switch_ss_type(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 1)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  %13 = ptrtoint ptr %reject_rx_agg.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %reject_rx_agg.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  %14 = ptrtoint ptr %bt_ctrl_rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %bt_ctrl_rx_agg_size.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  %15 = ptrtoint ptr %rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 8, ptr %rx_agg_size.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %16 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %btc_set.i, align 4
  %call.i80 = call zeroext i1 %17(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %reject_rx_agg.i) #4
  %18 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %btc_set.i, align 4
  %call7.i = call zeroext i1 %19(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %bt_ctrl_rx_agg_size.i) #4
  %20 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %btc_set.i, align 4
  %call9.i = call zeroext i1 %21(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %rx_agg_size.i) #4
  %22 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %btc_set.i, align 4
  %call11.i = call zeroext i1 %23(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  call fastcc void @btc8192e2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext false)
  call fastcc void @btc8192e2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1610309627) #4
  %trunc = trunc i8 %bt_rssi_state.0.i to i3
  %24 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.264)
  switch i3 %trunc, label %btc8192e2ant_bt_rssi_state.exit.if.end24_crit_edge [
    i3 2, label %btc8192e2ant_bt_rssi_state.exit.if.then_crit_edge
    i3 -3, label %btc8192e2ant_bt_rssi_state.exit.if.then_crit_edge104
    i3 1, label %btc8192e2ant_bt_rssi_state.exit.if.then13_crit_edge
    i3 -4, label %btc8192e2ant_bt_rssi_state.exit.if.then13_crit_edge105
    i3 0, label %btc8192e2ant_bt_rssi_state.exit.if.then22_crit_edge
    i3 3, label %btc8192e2ant_bt_rssi_state.exit.if.then22_crit_edge106
  ]

btc8192e2ant_bt_rssi_state.exit.if.then22_crit_edge106: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then22

btc8192e2ant_bt_rssi_state.exit.if.then22_crit_edge: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then22

btc8192e2ant_bt_rssi_state.exit.if.then13_crit_edge105: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then13

btc8192e2ant_bt_rssi_state.exit.if.then13_crit_edge: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then13

btc8192e2ant_bt_rssi_state.exit.if.then_crit_edge104: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

btc8192e2ant_bt_rssi_state.exit.if.then_crit_edge: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

btc8192e2ant_bt_rssi_state.exit.if.end24_crit_edge: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

if.then:                                          ; preds = %btc8192e2ant_bt_rssi_state.exit.if.then_crit_edge, %btc8192e2ant_bt_rssi_state.exit.if.then_crit_edge104
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %25 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %26, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.111, i32 noundef 0) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %27 = load i8, ptr @glcoex_dm_8192e_2ant, align 4
  %conv2.i = zext i8 %27 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %26, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %conv2.i, i32 noundef 0) #4
  %28 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %29 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  %31 = ptrtoint ptr %h2c_parameter.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %28, ptr %h2c_parameter.i.i, align 1
  %conv.i.i = zext i8 %28 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %30, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef %conv.i.i, i32 noundef %conv.i.i) #4
  %btc_fill_h2c.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %32 = ptrtoint ptr %btc_fill_h2c.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %btc_fill_h2c.i.i, align 4
  call void %33(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  br label %if.end24.sink.split

if.then13:                                        ; preds = %btc8192e2ant_bt_rssi_state.exit.if.then13_crit_edge, %btc8192e2ant_bt_rssi_state.exit.if.then13_crit_edge105
  %adapter.i82 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %34 = ptrtoint ptr %adapter.i82 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adapter.i82, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %35, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.111, i32 noundef 2) #4
  store i8 2, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %36 = load i8, ptr @glcoex_dm_8192e_2ant, align 4
  %conv2.i83 = zext i8 %36 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %35, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %conv2.i83, i32 noundef 2) #4
  %37 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %38 = ptrtoint ptr %adapter.i82 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %adapter.i82, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i81) #4
  %40 = ptrtoint ptr %h2c_parameter.i.i81 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %37, ptr %h2c_parameter.i.i81, align 1
  %conv.i.i84 = zext i8 %37 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef %conv.i.i84, i32 noundef %conv.i.i84) #4
  %btc_fill_h2c.i.i85 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %41 = ptrtoint ptr %btc_fill_h2c.i.i85 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %btc_fill_h2c.i.i85, align 4
  call void %42(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i81) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i81) #4
  br label %if.end24.sink.split

if.then22:                                        ; preds = %btc8192e2ant_bt_rssi_state.exit.if.then22_crit_edge, %btc8192e2ant_bt_rssi_state.exit.if.then22_crit_edge106
  %adapter.i87 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %43 = ptrtoint ptr %adapter.i87 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %adapter.i87, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %44, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.111, i32 noundef 4) #4
  store i8 4, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %45 = load i8, ptr @glcoex_dm_8192e_2ant, align 4
  %conv2.i88 = zext i8 %45 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %44, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %conv2.i88, i32 noundef 4) #4
  %46 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %47 = ptrtoint ptr %adapter.i87 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %adapter.i87, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i86) #4
  %49 = ptrtoint ptr %h2c_parameter.i.i86 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %46, ptr %h2c_parameter.i.i86, align 1
  %conv.i.i89 = zext i8 %46 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %48, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef %conv.i.i89, i32 noundef %conv.i.i89) #4
  %btc_fill_h2c.i.i90 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %50 = ptrtoint ptr %btc_fill_h2c.i.i90 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %btc_fill_h2c.i.i90, align 4
  call void %51(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i86) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i86) #4
  br label %if.end24.sink.split

if.end24.sink.split:                              ; preds = %if.then22, %if.then13, %if.then
  %52 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  store i8 %52, ptr @glcoex_dm_8192e_2ant, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end24.sink.split, %btc8192e2ant_bt_rssi_state.exit.if.end24_crit_edge
  call fastcc void @btc8192e2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 1)
  %53 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %btc_get.i, align 4
  %call25 = call zeroext i1 %54(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef nonnull %wifi_bw) #4
  %55 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %wifi_bw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %56)
  %cmp26 = icmp eq i32 %56, 2
  %trunc96 = trunc i8 %wifi_rssi_state.0.i to i3
  %57 = sext i3 %trunc96 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %switch.selectcmp.case198 = icmp eq i3 %trunc96, 0
  %58 = sext i3 %trunc96 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %58)
  %switch.selectcmp.case299 = icmp eq i3 %trunc96, 3
  %switch.selectcmp100 = or i1 %switch.selectcmp.case198, %switch.selectcmp.case299
  call fastcc void @btc8192e2ant_sw_mechanism1(ptr noundef %btcoexist, i1 noundef zeroext %cmp26)
  call fastcc void @btc8192e2ant_sw_mechanism2(ptr noundef %btcoexist, i1 noundef zeroext %switch.selectcmp100, i1 noundef zeroext false, i32 noundef 24)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_bw) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8192e2ant_action_pan_edr_a2dp(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i.i88 = alloca [1 x i8], align 1
  %h2c_parameter.i.i83 = alloca [1 x i8], align 1
  %h2c_parameter.i.i = alloca [1 x i8], align 1
  %reject_rx_agg.i = alloca i8, align 1
  %bt_ctrl_rx_agg_size.i = alloca i8, align 1
  %rx_agg_size.i = alloca i8, align 1
  %wifi_rssi.i = alloca i32, align 4
  %wifi_bw = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_bw) #4
  %0 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wifi_bw, align 4, !annotation !504
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %1 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %wifi_rssi.i, align 4
  %btc_get.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %2 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %btc_get.i, align 4
  %call.i = call zeroext i1 %3(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi.i) #4
  %4 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 13), align 2
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.265)
  switch i8 %4, label %if.else19.i [
    i8 2, label %entry.if.then14.i_crit_edge
    i8 5, label %entry.if.then14.i_crit_edge105
  ]

entry.if.then14.i_crit_edge105:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

entry.if.then14.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

if.then14.i:                                      ; preds = %entry.if.then14.i_crit_edge, %entry.if.then14.i_crit_edge105
  %6 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %7)
  %cmp16.i = icmp sgt i32 %7, 16
  %..i = select i1 %cmp16.i, i8 0, i8 5
  br label %btc8192e2ant_wifi_rssi_state.exit

if.else19.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %9)
  %cmp21.i = icmp slt i32 %9, 15
  %.1.i = select i1 %cmp21.i, i8 2, i8 3
  br label %btc8192e2ant_wifi_rssi_state.exit

btc8192e2ant_wifi_rssi_state.exit:                ; preds = %if.else19.i, %if.then14.i
  %wifi_rssi_state.0.i = phi i8 [ %..i, %if.then14.i ], [ %.1.i, %if.else19.i ]
  store i8 %wifi_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 13), align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %10 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 12), align 1
  %11 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 11), align 4
  %12 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.266)
  switch i8 %10, label %if.else78.i [
    i8 2, label %btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge
    i8 5, label %btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge106
    i8 1, label %btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge
    i8 4, label %btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge107
  ]

btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge107: ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then64.i

btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge: ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then64.i

btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge106: ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then46.i

btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge: ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then46.i

if.then46.i:                                      ; preds = %btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge, %btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge106
  call void @__sanitizer_cov_trace_const_cmp1(i8 35, i8 %11)
  %cmp49.i = icmp ugt i8 %11, 35
  %spec.select = select i1 %cmp49.i, i8 1, i8 5
  br label %btc8192e2ant_bt_rssi_state.exit

if.then64.i:                                      ; preds = %btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge, %btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge107
  call void @__sanitizer_cov_trace_const_cmp1(i8 43, i8 %11)
  %cmp67.i = icmp ugt i8 %11, 43
  br i1 %cmp67.i, label %if.then64.i.btc8192e2ant_bt_rssi_state.exit_crit_edge, label %if.else70.i

if.then64.i.btc8192e2ant_bt_rssi_state.exit_crit_edge: ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8192e2ant_bt_rssi_state.exit

if.else70.i:                                      ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %11)
  %cmp72.i = icmp ult i8 %11, 34
  %spec.select95 = select i1 %cmp72.i, i8 2, i8 4
  br label %btc8192e2ant_bt_rssi_state.exit

if.else78.i:                                      ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %11)
  %cmp80.i = icmp ult i8 %11, 42
  %spec.select96 = select i1 %cmp80.i, i8 1, i8 3
  br label %btc8192e2ant_bt_rssi_state.exit

btc8192e2ant_bt_rssi_state.exit:                  ; preds = %if.else78.i, %if.else70.i, %if.then64.i.btc8192e2ant_bt_rssi_state.exit_crit_edge, %if.then46.i
  %bt_rssi_state.0.i = phi i8 [ 0, %if.then64.i.btc8192e2ant_bt_rssi_state.exit_crit_edge ], [ %spec.select, %if.then46.i ], [ %spec.select95, %if.else70.i ], [ %spec.select96, %if.else78.i ]
  store i8 %bt_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 12), align 1
  call fastcc void @btc8192e2ant_switch_ss_type(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 1)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  %13 = ptrtoint ptr %reject_rx_agg.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %reject_rx_agg.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  %14 = ptrtoint ptr %bt_ctrl_rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %bt_ctrl_rx_agg_size.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  %15 = ptrtoint ptr %rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 8, ptr %rx_agg_size.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %16 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %btc_set.i, align 4
  %call.i82 = call zeroext i1 %17(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %reject_rx_agg.i) #4
  %18 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %btc_set.i, align 4
  %call7.i = call zeroext i1 %19(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %bt_ctrl_rx_agg_size.i) #4
  %20 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %btc_set.i, align 4
  %call9.i = call zeroext i1 %21(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %rx_agg_size.i) #4
  %22 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %btc_set.i, align 4
  %call11.i = call zeroext i1 %23(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  call fastcc void @btc8192e2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext false)
  call fastcc void @btc8192e2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1610309627) #4
  %24 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %btc_get.i, align 4
  %call2 = call zeroext i1 %25(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef nonnull %wifi_bw) #4
  %trunc = trunc i8 %bt_rssi_state.0.i to i3
  %26 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.267)
  switch i3 %trunc, label %btc8192e2ant_bt_rssi_state.exit.if.end25_crit_edge [
    i3 2, label %btc8192e2ant_bt_rssi_state.exit.if.then_crit_edge
    i3 -3, label %btc8192e2ant_bt_rssi_state.exit.if.then_crit_edge108
    i3 1, label %btc8192e2ant_bt_rssi_state.exit.if.then14_crit_edge
    i3 -4, label %btc8192e2ant_bt_rssi_state.exit.if.then14_crit_edge109
    i3 0, label %btc8192e2ant_bt_rssi_state.exit.if.then23_crit_edge
    i3 3, label %btc8192e2ant_bt_rssi_state.exit.if.then23_crit_edge110
  ]

btc8192e2ant_bt_rssi_state.exit.if.then23_crit_edge110: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then23

btc8192e2ant_bt_rssi_state.exit.if.then23_crit_edge: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then23

btc8192e2ant_bt_rssi_state.exit.if.then14_crit_edge109: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14

btc8192e2ant_bt_rssi_state.exit.if.then14_crit_edge: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14

btc8192e2ant_bt_rssi_state.exit.if.then_crit_edge108: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

btc8192e2ant_bt_rssi_state.exit.if.then_crit_edge: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

btc8192e2ant_bt_rssi_state.exit.if.end25_crit_edge: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then:                                          ; preds = %btc8192e2ant_bt_rssi_state.exit.if.then_crit_edge, %btc8192e2ant_bt_rssi_state.exit.if.then_crit_edge108
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %27 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adapter.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %28, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.111, i32 noundef 0) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %29 = load i8, ptr @glcoex_dm_8192e_2ant, align 4
  %conv2.i = zext i8 %29 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %28, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %conv2.i, i32 noundef 0) #4
  %30 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %31 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  %33 = ptrtoint ptr %h2c_parameter.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %30, ptr %h2c_parameter.i.i, align 1
  %conv.i.i = zext i8 %30 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %32, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef %conv.i.i, i32 noundef %conv.i.i) #4
  %btc_fill_h2c.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %34 = ptrtoint ptr %btc_fill_h2c.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %btc_fill_h2c.i.i, align 4
  call void %35(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  br label %if.end25.sink.split

if.then14:                                        ; preds = %btc8192e2ant_bt_rssi_state.exit.if.then14_crit_edge, %btc8192e2ant_bt_rssi_state.exit.if.then14_crit_edge109
  %adapter.i84 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %36 = ptrtoint ptr %adapter.i84 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %adapter.i84, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %37, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.111, i32 noundef 2) #4
  store i8 2, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %38 = load i8, ptr @glcoex_dm_8192e_2ant, align 4
  %conv2.i85 = zext i8 %38 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %37, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %conv2.i85, i32 noundef 2) #4
  %39 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %40 = ptrtoint ptr %adapter.i84 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %adapter.i84, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i83) #4
  %42 = ptrtoint ptr %h2c_parameter.i.i83 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %39, ptr %h2c_parameter.i.i83, align 1
  %conv.i.i86 = zext i8 %39 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %41, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef %conv.i.i86, i32 noundef %conv.i.i86) #4
  %btc_fill_h2c.i.i87 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %43 = ptrtoint ptr %btc_fill_h2c.i.i87 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %btc_fill_h2c.i.i87, align 4
  call void %44(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i83) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i83) #4
  br label %if.end25.sink.split

if.then23:                                        ; preds = %btc8192e2ant_bt_rssi_state.exit.if.then23_crit_edge, %btc8192e2ant_bt_rssi_state.exit.if.then23_crit_edge110
  %adapter.i89 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %45 = ptrtoint ptr %adapter.i89 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %adapter.i89, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %46, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.111, i32 noundef 4) #4
  store i8 4, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %47 = load i8, ptr @glcoex_dm_8192e_2ant, align 4
  %conv2.i90 = zext i8 %47 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %46, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %conv2.i90, i32 noundef 4) #4
  %48 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %49 = ptrtoint ptr %adapter.i89 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %adapter.i89, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i88) #4
  %51 = ptrtoint ptr %h2c_parameter.i.i88 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %48, ptr %h2c_parameter.i.i88, align 1
  %conv.i.i91 = zext i8 %48 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %50, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef %conv.i.i91, i32 noundef %conv.i.i91) #4
  %btc_fill_h2c.i.i92 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %52 = ptrtoint ptr %btc_fill_h2c.i.i92 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %btc_fill_h2c.i.i92, align 4
  call void %53(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i88) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i88) #4
  br label %if.end25.sink.split

if.end25.sink.split:                              ; preds = %if.then23, %if.then14, %if.then
  %.sink = phi i1 [ false, %if.then14 ], [ false, %if.then23 ], [ true, %if.then ]
  %54 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  store i8 %54, ptr @glcoex_dm_8192e_2ant, align 4
  call fastcc void @btc8192e2ant_tdma_duration_adjust(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext %.sink, i8 noundef zeroext 3)
  br label %if.end25

if.end25:                                         ; preds = %if.end25.sink.split, %btc8192e2ant_bt_rssi_state.exit.if.end25_crit_edge
  %55 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %wifi_bw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %56)
  %cmp26 = icmp eq i32 %56, 2
  %trunc98 = trunc i8 %wifi_rssi_state.0.i to i3
  %57 = sext i3 %trunc98 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %switch.selectcmp.case1102 = icmp eq i3 %trunc98, 0
  %58 = sext i3 %trunc98 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %58)
  %switch.selectcmp.case2103 = icmp eq i3 %trunc98, 3
  %switch.selectcmp104 = or i1 %switch.selectcmp.case1102, %switch.selectcmp.case2103
  call fastcc void @btc8192e2ant_sw_mechanism1(ptr noundef %btcoexist, i1 noundef zeroext %cmp26)
  call fastcc void @btc8192e2ant_sw_mechanism2(ptr noundef %btcoexist, i1 noundef zeroext %switch.selectcmp104, i1 noundef zeroext false, i32 noundef 24)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_bw) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8192e2ant_action_pan_edr_hid(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i.i88 = alloca [1 x i8], align 1
  %h2c_parameter.i.i83 = alloca [1 x i8], align 1
  %h2c_parameter.i.i = alloca [1 x i8], align 1
  %reject_rx_agg.i = alloca i8, align 1
  %bt_ctrl_rx_agg_size.i = alloca i8, align 1
  %rx_agg_size.i = alloca i8, align 1
  %wifi_rssi.i = alloca i32, align 4
  %wifi_bw = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_bw) #4
  %0 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wifi_bw, align 4, !annotation !504
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %1 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %wifi_rssi.i, align 4
  %btc_get.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %2 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %btc_get.i, align 4
  %call.i = call zeroext i1 %3(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi.i) #4
  %4 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 13), align 2
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.268)
  switch i8 %4, label %if.else19.i [
    i8 2, label %entry.if.then14.i_crit_edge
    i8 5, label %entry.if.then14.i_crit_edge105
  ]

entry.if.then14.i_crit_edge105:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

entry.if.then14.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

if.then14.i:                                      ; preds = %entry.if.then14.i_crit_edge, %entry.if.then14.i_crit_edge105
  %6 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %7)
  %cmp16.i = icmp sgt i32 %7, 16
  %..i = select i1 %cmp16.i, i8 0, i8 5
  br label %btc8192e2ant_wifi_rssi_state.exit

if.else19.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %9)
  %cmp21.i = icmp slt i32 %9, 15
  %.1.i = select i1 %cmp21.i, i8 2, i8 3
  br label %btc8192e2ant_wifi_rssi_state.exit

btc8192e2ant_wifi_rssi_state.exit:                ; preds = %if.else19.i, %if.then14.i
  %wifi_rssi_state.0.i = phi i8 [ %..i, %if.then14.i ], [ %.1.i, %if.else19.i ]
  store i8 %wifi_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 13), align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %10 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 12), align 1
  %11 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 11), align 4
  %12 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.269)
  switch i8 %10, label %if.else78.i [
    i8 2, label %btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge
    i8 5, label %btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge106
    i8 1, label %btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge
    i8 4, label %btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge107
  ]

btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge107: ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then64.i

btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge: ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then64.i

btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge106: ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then46.i

btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge: ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then46.i

if.then46.i:                                      ; preds = %btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge, %btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge106
  call void @__sanitizer_cov_trace_const_cmp1(i8 35, i8 %11)
  %cmp49.i = icmp ugt i8 %11, 35
  %spec.select = select i1 %cmp49.i, i8 1, i8 5
  br label %btc8192e2ant_bt_rssi_state.exit

if.then64.i:                                      ; preds = %btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge, %btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge107
  call void @__sanitizer_cov_trace_const_cmp1(i8 43, i8 %11)
  %cmp67.i = icmp ugt i8 %11, 43
  br i1 %cmp67.i, label %if.then64.i.btc8192e2ant_bt_rssi_state.exit_crit_edge, label %if.else70.i

if.then64.i.btc8192e2ant_bt_rssi_state.exit_crit_edge: ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8192e2ant_bt_rssi_state.exit

if.else70.i:                                      ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %11)
  %cmp72.i = icmp ult i8 %11, 34
  %spec.select95 = select i1 %cmp72.i, i8 2, i8 4
  br label %btc8192e2ant_bt_rssi_state.exit

if.else78.i:                                      ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %11)
  %cmp80.i = icmp ult i8 %11, 42
  %spec.select96 = select i1 %cmp80.i, i8 1, i8 3
  br label %btc8192e2ant_bt_rssi_state.exit

btc8192e2ant_bt_rssi_state.exit:                  ; preds = %if.else78.i, %if.else70.i, %if.then64.i.btc8192e2ant_bt_rssi_state.exit_crit_edge, %if.then46.i
  %bt_rssi_state.0.i = phi i8 [ 0, %if.then64.i.btc8192e2ant_bt_rssi_state.exit_crit_edge ], [ %spec.select, %if.then46.i ], [ %spec.select95, %if.else70.i ], [ %spec.select96, %if.else78.i ]
  store i8 %bt_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 12), align 1
  %13 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %btc_get.i, align 4
  %call2 = call zeroext i1 %14(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef nonnull %wifi_bw) #4
  call fastcc void @btc8192e2ant_switch_ss_type(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 1)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  %15 = ptrtoint ptr %reject_rx_agg.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %reject_rx_agg.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  %16 = ptrtoint ptr %bt_ctrl_rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %bt_ctrl_rx_agg_size.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  %17 = ptrtoint ptr %rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 8, ptr %rx_agg_size.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %18 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %btc_set.i, align 4
  %call.i82 = call zeroext i1 %19(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %reject_rx_agg.i) #4
  %20 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %btc_set.i, align 4
  %call7.i = call zeroext i1 %21(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %bt_ctrl_rx_agg_size.i) #4
  %22 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %btc_set.i, align 4
  %call9.i = call zeroext i1 %23(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %rx_agg_size.i) #4
  %24 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %btc_set.i, align 4
  %call11.i = call zeroext i1 %25(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  call fastcc void @btc8192e2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext false)
  call fastcc void @btc8192e2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef -536879105, i32 noundef 1608212443) #4
  %trunc = trunc i8 %bt_rssi_state.0.i to i3
  %26 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.270)
  switch i3 %trunc, label %btc8192e2ant_bt_rssi_state.exit.if.end25_crit_edge [
    i3 2, label %btc8192e2ant_bt_rssi_state.exit.if.then_crit_edge
    i3 -3, label %btc8192e2ant_bt_rssi_state.exit.if.then_crit_edge108
    i3 1, label %btc8192e2ant_bt_rssi_state.exit.if.then14_crit_edge
    i3 -4, label %btc8192e2ant_bt_rssi_state.exit.if.then14_crit_edge109
    i3 0, label %btc8192e2ant_bt_rssi_state.exit.if.then23_crit_edge
    i3 3, label %btc8192e2ant_bt_rssi_state.exit.if.then23_crit_edge110
  ]

btc8192e2ant_bt_rssi_state.exit.if.then23_crit_edge110: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then23

btc8192e2ant_bt_rssi_state.exit.if.then23_crit_edge: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then23

btc8192e2ant_bt_rssi_state.exit.if.then14_crit_edge109: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14

btc8192e2ant_bt_rssi_state.exit.if.then14_crit_edge: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14

btc8192e2ant_bt_rssi_state.exit.if.then_crit_edge108: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

btc8192e2ant_bt_rssi_state.exit.if.then_crit_edge: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

btc8192e2ant_bt_rssi_state.exit.if.end25_crit_edge: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then:                                          ; preds = %btc8192e2ant_bt_rssi_state.exit.if.then_crit_edge, %btc8192e2ant_bt_rssi_state.exit.if.then_crit_edge108
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %27 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adapter.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %28, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.111, i32 noundef 0) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %29 = load i8, ptr @glcoex_dm_8192e_2ant, align 4
  %conv2.i = zext i8 %29 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %28, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %conv2.i, i32 noundef 0) #4
  %30 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %31 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  %33 = ptrtoint ptr %h2c_parameter.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %30, ptr %h2c_parameter.i.i, align 1
  %conv.i.i = zext i8 %30 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %32, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef %conv.i.i, i32 noundef %conv.i.i) #4
  %btc_fill_h2c.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %34 = ptrtoint ptr %btc_fill_h2c.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %btc_fill_h2c.i.i, align 4
  call void %35(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  br label %if.end25.sink.split

if.then14:                                        ; preds = %btc8192e2ant_bt_rssi_state.exit.if.then14_crit_edge, %btc8192e2ant_bt_rssi_state.exit.if.then14_crit_edge109
  %adapter.i84 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %36 = ptrtoint ptr %adapter.i84 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %adapter.i84, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %37, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.111, i32 noundef 2) #4
  store i8 2, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %38 = load i8, ptr @glcoex_dm_8192e_2ant, align 4
  %conv2.i85 = zext i8 %38 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %37, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %conv2.i85, i32 noundef 2) #4
  %39 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %40 = ptrtoint ptr %adapter.i84 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %adapter.i84, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i83) #4
  %42 = ptrtoint ptr %h2c_parameter.i.i83 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %39, ptr %h2c_parameter.i.i83, align 1
  %conv.i.i86 = zext i8 %39 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %41, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef %conv.i.i86, i32 noundef %conv.i.i86) #4
  %btc_fill_h2c.i.i87 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %43 = ptrtoint ptr %btc_fill_h2c.i.i87 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %btc_fill_h2c.i.i87, align 4
  call void %44(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i83) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i83) #4
  br label %if.end25.sink.split

if.then23:                                        ; preds = %btc8192e2ant_bt_rssi_state.exit.if.then23_crit_edge, %btc8192e2ant_bt_rssi_state.exit.if.then23_crit_edge110
  %adapter.i89 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %45 = ptrtoint ptr %adapter.i89 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %adapter.i89, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %46, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.111, i32 noundef 4) #4
  store i8 4, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %47 = load i8, ptr @glcoex_dm_8192e_2ant, align 4
  %conv2.i90 = zext i8 %47 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %46, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %conv2.i90, i32 noundef 4) #4
  %48 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %49 = ptrtoint ptr %adapter.i89 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %adapter.i89, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i88) #4
  %51 = ptrtoint ptr %h2c_parameter.i.i88 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %48, ptr %h2c_parameter.i.i88, align 1
  %conv.i.i91 = zext i8 %48 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %50, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef %conv.i.i91, i32 noundef %conv.i.i91) #4
  %btc_fill_h2c.i.i92 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %52 = ptrtoint ptr %btc_fill_h2c.i.i92 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %btc_fill_h2c.i.i92, align 4
  call void %53(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i88) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i88) #4
  br label %if.end25.sink.split

if.end25.sink.split:                              ; preds = %if.then23, %if.then14, %if.then
  %.sink = phi i8 [ 10, %if.then14 ], [ 10, %if.then23 ], [ 14, %if.then ]
  %54 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  store i8 %54, ptr @glcoex_dm_8192e_2ant, align 4
  call fastcc void @btc8192e2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext %.sink)
  br label %if.end25

if.end25:                                         ; preds = %if.end25.sink.split, %btc8192e2ant_bt_rssi_state.exit.if.end25_crit_edge
  %55 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %wifi_bw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %56)
  %cmp26 = icmp eq i32 %56, 2
  %trunc98 = trunc i8 %wifi_rssi_state.0.i to i3
  %57 = sext i3 %trunc98 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %switch.selectcmp.case1102 = icmp eq i3 %trunc98, 0
  %58 = sext i3 %trunc98 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %58)
  %switch.selectcmp.case2103 = icmp eq i3 %trunc98, 3
  %switch.selectcmp104 = or i1 %switch.selectcmp.case1102, %switch.selectcmp.case2103
  call fastcc void @btc8192e2ant_sw_mechanism1(ptr noundef %btcoexist, i1 noundef zeroext %cmp26)
  call fastcc void @btc8192e2ant_sw_mechanism2(ptr noundef %btcoexist, i1 noundef zeroext %switch.selectcmp104, i1 noundef zeroext false, i32 noundef 24)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_bw) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8192e2ant_action_hid_a2dp_pan_edr(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i.i88 = alloca [1 x i8], align 1
  %h2c_parameter.i.i83 = alloca [1 x i8], align 1
  %h2c_parameter.i.i = alloca [1 x i8], align 1
  %reject_rx_agg.i = alloca i8, align 1
  %bt_ctrl_rx_agg_size.i = alloca i8, align 1
  %rx_agg_size.i = alloca i8, align 1
  %wifi_rssi.i = alloca i32, align 4
  %wifi_bw = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_bw) #4
  %0 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wifi_bw, align 4, !annotation !504
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %1 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %wifi_rssi.i, align 4
  %btc_get.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %2 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %btc_get.i, align 4
  %call.i = call zeroext i1 %3(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi.i) #4
  %4 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 13), align 2
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.271)
  switch i8 %4, label %if.else19.i [
    i8 2, label %entry.if.then14.i_crit_edge
    i8 5, label %entry.if.then14.i_crit_edge105
  ]

entry.if.then14.i_crit_edge105:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

entry.if.then14.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

if.then14.i:                                      ; preds = %entry.if.then14.i_crit_edge, %entry.if.then14.i_crit_edge105
  %6 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %7)
  %cmp16.i = icmp sgt i32 %7, 16
  %..i = select i1 %cmp16.i, i8 0, i8 5
  br label %btc8192e2ant_wifi_rssi_state.exit

if.else19.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %9)
  %cmp21.i = icmp slt i32 %9, 15
  %.1.i = select i1 %cmp21.i, i8 2, i8 3
  br label %btc8192e2ant_wifi_rssi_state.exit

btc8192e2ant_wifi_rssi_state.exit:                ; preds = %if.else19.i, %if.then14.i
  %wifi_rssi_state.0.i = phi i8 [ %..i, %if.then14.i ], [ %.1.i, %if.else19.i ]
  store i8 %wifi_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 13), align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %10 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 12), align 1
  %11 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 11), align 4
  %12 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.272)
  switch i8 %10, label %if.else78.i [
    i8 2, label %btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge
    i8 5, label %btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge106
    i8 1, label %btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge
    i8 4, label %btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge107
  ]

btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge107: ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then64.i

btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge: ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then64.i

btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge106: ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then46.i

btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge: ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then46.i

if.then46.i:                                      ; preds = %btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge, %btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge106
  call void @__sanitizer_cov_trace_const_cmp1(i8 35, i8 %11)
  %cmp49.i = icmp ugt i8 %11, 35
  %spec.select = select i1 %cmp49.i, i8 1, i8 5
  br label %btc8192e2ant_bt_rssi_state.exit

if.then64.i:                                      ; preds = %btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge, %btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge107
  call void @__sanitizer_cov_trace_const_cmp1(i8 43, i8 %11)
  %cmp67.i = icmp ugt i8 %11, 43
  br i1 %cmp67.i, label %if.then64.i.btc8192e2ant_bt_rssi_state.exit_crit_edge, label %if.else70.i

if.then64.i.btc8192e2ant_bt_rssi_state.exit_crit_edge: ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8192e2ant_bt_rssi_state.exit

if.else70.i:                                      ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %11)
  %cmp72.i = icmp ult i8 %11, 34
  %spec.select95 = select i1 %cmp72.i, i8 2, i8 4
  br label %btc8192e2ant_bt_rssi_state.exit

if.else78.i:                                      ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %11)
  %cmp80.i = icmp ult i8 %11, 42
  %spec.select96 = select i1 %cmp80.i, i8 1, i8 3
  br label %btc8192e2ant_bt_rssi_state.exit

btc8192e2ant_bt_rssi_state.exit:                  ; preds = %if.else78.i, %if.else70.i, %if.then64.i.btc8192e2ant_bt_rssi_state.exit_crit_edge, %if.then46.i
  %bt_rssi_state.0.i = phi i8 [ 0, %if.then64.i.btc8192e2ant_bt_rssi_state.exit_crit_edge ], [ %spec.select, %if.then46.i ], [ %spec.select95, %if.else70.i ], [ %spec.select96, %if.else78.i ]
  store i8 %bt_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 12), align 1
  call fastcc void @btc8192e2ant_switch_ss_type(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 1)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  %13 = ptrtoint ptr %reject_rx_agg.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %reject_rx_agg.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  %14 = ptrtoint ptr %bt_ctrl_rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %bt_ctrl_rx_agg_size.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  %15 = ptrtoint ptr %rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 8, ptr %rx_agg_size.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %16 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %btc_set.i, align 4
  %call.i82 = call zeroext i1 %17(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %reject_rx_agg.i) #4
  %18 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %btc_set.i, align 4
  %call7.i = call zeroext i1 %19(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %bt_ctrl_rx_agg_size.i) #4
  %20 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %btc_set.i, align 4
  %call9.i = call zeroext i1 %21(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %rx_agg_size.i) #4
  %22 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %btc_set.i, align 4
  %call11.i = call zeroext i1 %23(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  call fastcc void @btc8192e2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext false)
  %24 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %btc_get.i, align 4
  %call2 = call zeroext i1 %25(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef nonnull %wifi_bw) #4
  call fastcc void @btc8192e2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef -536879105, i32 noundef 1608212443) #4
  %trunc = trunc i8 %bt_rssi_state.0.i to i3
  %26 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.273)
  switch i3 %trunc, label %btc8192e2ant_bt_rssi_state.exit.if.end25_crit_edge [
    i3 2, label %btc8192e2ant_bt_rssi_state.exit.if.then_crit_edge
    i3 -3, label %btc8192e2ant_bt_rssi_state.exit.if.then_crit_edge108
    i3 1, label %btc8192e2ant_bt_rssi_state.exit.if.then14_crit_edge
    i3 -4, label %btc8192e2ant_bt_rssi_state.exit.if.then14_crit_edge109
    i3 0, label %btc8192e2ant_bt_rssi_state.exit.if.then23_crit_edge
    i3 3, label %btc8192e2ant_bt_rssi_state.exit.if.then23_crit_edge110
  ]

btc8192e2ant_bt_rssi_state.exit.if.then23_crit_edge110: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then23

btc8192e2ant_bt_rssi_state.exit.if.then23_crit_edge: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then23

btc8192e2ant_bt_rssi_state.exit.if.then14_crit_edge109: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14

btc8192e2ant_bt_rssi_state.exit.if.then14_crit_edge: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14

btc8192e2ant_bt_rssi_state.exit.if.then_crit_edge108: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

btc8192e2ant_bt_rssi_state.exit.if.then_crit_edge: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

btc8192e2ant_bt_rssi_state.exit.if.end25_crit_edge: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then:                                          ; preds = %btc8192e2ant_bt_rssi_state.exit.if.then_crit_edge, %btc8192e2ant_bt_rssi_state.exit.if.then_crit_edge108
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %27 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adapter.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %28, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.111, i32 noundef 0) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %29 = load i8, ptr @glcoex_dm_8192e_2ant, align 4
  %conv2.i = zext i8 %29 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %28, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %conv2.i, i32 noundef 0) #4
  %30 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %31 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  %33 = ptrtoint ptr %h2c_parameter.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %30, ptr %h2c_parameter.i.i, align 1
  %conv.i.i = zext i8 %30 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %32, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef %conv.i.i, i32 noundef %conv.i.i) #4
  %btc_fill_h2c.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %34 = ptrtoint ptr %btc_fill_h2c.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %btc_fill_h2c.i.i, align 4
  call void %35(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  br label %if.end25.sink.split

if.then14:                                        ; preds = %btc8192e2ant_bt_rssi_state.exit.if.then14_crit_edge, %btc8192e2ant_bt_rssi_state.exit.if.then14_crit_edge109
  %adapter.i84 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %36 = ptrtoint ptr %adapter.i84 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %adapter.i84, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %37, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.111, i32 noundef 2) #4
  store i8 2, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %38 = load i8, ptr @glcoex_dm_8192e_2ant, align 4
  %conv2.i85 = zext i8 %38 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %37, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %conv2.i85, i32 noundef 2) #4
  %39 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %40 = ptrtoint ptr %adapter.i84 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %adapter.i84, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i83) #4
  %42 = ptrtoint ptr %h2c_parameter.i.i83 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %39, ptr %h2c_parameter.i.i83, align 1
  %conv.i.i86 = zext i8 %39 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %41, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef %conv.i.i86, i32 noundef %conv.i.i86) #4
  %btc_fill_h2c.i.i87 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %43 = ptrtoint ptr %btc_fill_h2c.i.i87 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %btc_fill_h2c.i.i87, align 4
  call void %44(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i83) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i83) #4
  br label %if.end25.sink.split

if.then23:                                        ; preds = %btc8192e2ant_bt_rssi_state.exit.if.then23_crit_edge, %btc8192e2ant_bt_rssi_state.exit.if.then23_crit_edge110
  %adapter.i89 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %45 = ptrtoint ptr %adapter.i89 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %adapter.i89, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %46, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.111, i32 noundef 4) #4
  store i8 4, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %47 = load i8, ptr @glcoex_dm_8192e_2ant, align 4
  %conv2.i90 = zext i8 %47 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %46, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %conv2.i90, i32 noundef 4) #4
  %48 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %49 = ptrtoint ptr %adapter.i89 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %adapter.i89, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i88) #4
  %51 = ptrtoint ptr %h2c_parameter.i.i88 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %48, ptr %h2c_parameter.i.i88, align 1
  %conv.i.i91 = zext i8 %48 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %50, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef %conv.i.i91, i32 noundef %conv.i.i91) #4
  %btc_fill_h2c.i.i92 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %52 = ptrtoint ptr %btc_fill_h2c.i.i92 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %btc_fill_h2c.i.i92, align 4
  call void %53(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i88) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i88) #4
  br label %if.end25.sink.split

if.end25.sink.split:                              ; preds = %if.then23, %if.then14, %if.then
  %.sink = phi i1 [ false, %if.then14 ], [ false, %if.then23 ], [ true, %if.then ]
  %54 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  store i8 %54, ptr @glcoex_dm_8192e_2ant, align 4
  call fastcc void @btc8192e2ant_tdma_duration_adjust(ptr noundef %btcoexist, i1 noundef zeroext true, i1 noundef zeroext %.sink, i8 noundef zeroext 3)
  br label %if.end25

if.end25:                                         ; preds = %if.end25.sink.split, %btc8192e2ant_bt_rssi_state.exit.if.end25_crit_edge
  %55 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %wifi_bw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %56)
  %cmp26 = icmp eq i32 %56, 2
  %trunc98 = trunc i8 %wifi_rssi_state.0.i to i3
  %57 = sext i3 %trunc98 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %switch.selectcmp.case1102 = icmp eq i3 %trunc98, 0
  %58 = sext i3 %trunc98 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %58)
  %switch.selectcmp.case2103 = icmp eq i3 %trunc98, 3
  %switch.selectcmp104 = or i1 %switch.selectcmp.case1102, %switch.selectcmp.case2103
  call fastcc void @btc8192e2ant_sw_mechanism1(ptr noundef %btcoexist, i1 noundef zeroext %cmp26)
  call fastcc void @btc8192e2ant_sw_mechanism2(ptr noundef %btcoexist, i1 noundef zeroext %switch.selectcmp104, i1 noundef zeroext false, i32 noundef 24)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_bw) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8192e2ant_action_hid_a2dp(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i.i87 = alloca [1 x i8], align 1
  %h2c_parameter.i.i82 = alloca [1 x i8], align 1
  %h2c_parameter.i.i = alloca [1 x i8], align 1
  %reject_rx_agg.i = alloca i8, align 1
  %bt_ctrl_rx_agg_size.i = alloca i8, align 1
  %rx_agg_size.i = alloca i8, align 1
  %wifi_rssi.i = alloca i32, align 4
  %wifi_bw = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_bw) #4
  %0 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wifi_bw, align 4, !annotation !504
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %1 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %wifi_rssi.i, align 4
  %btc_get.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %2 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %btc_get.i, align 4
  %call.i = call zeroext i1 %3(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi.i) #4
  %4 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 13), align 2
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.274)
  switch i8 %4, label %if.else19.i [
    i8 2, label %entry.if.then14.i_crit_edge
    i8 5, label %entry.if.then14.i_crit_edge104
  ]

entry.if.then14.i_crit_edge104:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

entry.if.then14.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

if.then14.i:                                      ; preds = %entry.if.then14.i_crit_edge, %entry.if.then14.i_crit_edge104
  %6 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %7)
  %cmp16.i = icmp sgt i32 %7, 16
  %..i = select i1 %cmp16.i, i8 0, i8 5
  br label %btc8192e2ant_wifi_rssi_state.exit

if.else19.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %9)
  %cmp21.i = icmp slt i32 %9, 15
  %.1.i = select i1 %cmp21.i, i8 2, i8 3
  br label %btc8192e2ant_wifi_rssi_state.exit

btc8192e2ant_wifi_rssi_state.exit:                ; preds = %if.else19.i, %if.then14.i
  %wifi_rssi_state.0.i = phi i8 [ %..i, %if.then14.i ], [ %.1.i, %if.else19.i ]
  store i8 %wifi_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 13), align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %10 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 12), align 1
  %11 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 11), align 4
  %12 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.275)
  switch i8 %10, label %if.else78.i [
    i8 2, label %btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge
    i8 5, label %btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge105
    i8 1, label %btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge
    i8 4, label %btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge106
  ]

btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge106: ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then64.i

btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge: ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then64.i

btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge105: ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then46.i

btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge: ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then46.i

if.then46.i:                                      ; preds = %btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge, %btc8192e2ant_wifi_rssi_state.exit.if.then46.i_crit_edge105
  call void @__sanitizer_cov_trace_const_cmp1(i8 35, i8 %11)
  %cmp49.i = icmp ugt i8 %11, 35
  %spec.select = select i1 %cmp49.i, i8 1, i8 5
  br label %btc8192e2ant_bt_rssi_state.exit

if.then64.i:                                      ; preds = %btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge, %btc8192e2ant_wifi_rssi_state.exit.if.then64.i_crit_edge106
  call void @__sanitizer_cov_trace_const_cmp1(i8 43, i8 %11)
  %cmp67.i = icmp ugt i8 %11, 43
  br i1 %cmp67.i, label %if.then64.i.btc8192e2ant_bt_rssi_state.exit_crit_edge, label %if.else70.i

if.then64.i.btc8192e2ant_bt_rssi_state.exit_crit_edge: ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8192e2ant_bt_rssi_state.exit

if.else70.i:                                      ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %11)
  %cmp72.i = icmp ult i8 %11, 34
  %spec.select94 = select i1 %cmp72.i, i8 2, i8 4
  br label %btc8192e2ant_bt_rssi_state.exit

if.else78.i:                                      ; preds = %btc8192e2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %11)
  %cmp80.i = icmp ult i8 %11, 42
  %spec.select95 = select i1 %cmp80.i, i8 1, i8 3
  br label %btc8192e2ant_bt_rssi_state.exit

btc8192e2ant_bt_rssi_state.exit:                  ; preds = %if.else78.i, %if.else70.i, %if.then64.i.btc8192e2ant_bt_rssi_state.exit_crit_edge, %if.then46.i
  %bt_rssi_state.0.i = phi i8 [ 0, %if.then64.i.btc8192e2ant_bt_rssi_state.exit_crit_edge ], [ %spec.select, %if.then46.i ], [ %spec.select94, %if.else70.i ], [ %spec.select95, %if.else78.i ]
  store i8 %bt_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 12), align 1
  call fastcc void @btc8192e2ant_switch_ss_type(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 1)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  %13 = ptrtoint ptr %reject_rx_agg.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %reject_rx_agg.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  %14 = ptrtoint ptr %bt_ctrl_rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %bt_ctrl_rx_agg_size.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  %15 = ptrtoint ptr %rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 8, ptr %rx_agg_size.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %16 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %btc_set.i, align 4
  %call.i81 = call zeroext i1 %17(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %reject_rx_agg.i) #4
  %18 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %btc_set.i, align 4
  %call7.i = call zeroext i1 %19(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %bt_ctrl_rx_agg_size.i) #4
  %20 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %btc_set.i, align 4
  %call9.i = call zeroext i1 %21(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %rx_agg_size.i) #4
  %22 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %btc_set.i, align 4
  %call11.i = call zeroext i1 %23(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  %24 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %btc_get.i, align 4
  %call2 = call zeroext i1 %25(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef nonnull %wifi_bw) #4
  call fastcc void @btc8192e2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef -536879105, i32 noundef 1608212443) #4
  %trunc = trunc i8 %bt_rssi_state.0.i to i3
  %26 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.276)
  switch i3 %trunc, label %btc8192e2ant_bt_rssi_state.exit.if.end25_crit_edge [
    i3 2, label %btc8192e2ant_bt_rssi_state.exit.if.then_crit_edge
    i3 -3, label %btc8192e2ant_bt_rssi_state.exit.if.then_crit_edge107
    i3 1, label %btc8192e2ant_bt_rssi_state.exit.if.then14_crit_edge
    i3 -4, label %btc8192e2ant_bt_rssi_state.exit.if.then14_crit_edge108
    i3 0, label %btc8192e2ant_bt_rssi_state.exit.if.then23_crit_edge
    i3 3, label %btc8192e2ant_bt_rssi_state.exit.if.then23_crit_edge109
  ]

btc8192e2ant_bt_rssi_state.exit.if.then23_crit_edge109: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then23

btc8192e2ant_bt_rssi_state.exit.if.then23_crit_edge: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then23

btc8192e2ant_bt_rssi_state.exit.if.then14_crit_edge108: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14

btc8192e2ant_bt_rssi_state.exit.if.then14_crit_edge: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14

btc8192e2ant_bt_rssi_state.exit.if.then_crit_edge107: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

btc8192e2ant_bt_rssi_state.exit.if.then_crit_edge: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

btc8192e2ant_bt_rssi_state.exit.if.end25_crit_edge: ; preds = %btc8192e2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then:                                          ; preds = %btc8192e2ant_bt_rssi_state.exit.if.then_crit_edge, %btc8192e2ant_bt_rssi_state.exit.if.then_crit_edge107
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %27 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adapter.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %28, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.111, i32 noundef 0) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %29 = load i8, ptr @glcoex_dm_8192e_2ant, align 4
  %conv2.i = zext i8 %29 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %28, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %conv2.i, i32 noundef 0) #4
  %30 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %31 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  %33 = ptrtoint ptr %h2c_parameter.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %30, ptr %h2c_parameter.i.i, align 1
  %conv.i.i = zext i8 %30 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %32, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef %conv.i.i, i32 noundef %conv.i.i) #4
  %btc_fill_h2c.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %34 = ptrtoint ptr %btc_fill_h2c.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %btc_fill_h2c.i.i, align 4
  call void %35(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  br label %if.end25.sink.split

if.then14:                                        ; preds = %btc8192e2ant_bt_rssi_state.exit.if.then14_crit_edge, %btc8192e2ant_bt_rssi_state.exit.if.then14_crit_edge108
  %adapter.i83 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %36 = ptrtoint ptr %adapter.i83 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %adapter.i83, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %37, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.111, i32 noundef 2) #4
  store i8 2, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %38 = load i8, ptr @glcoex_dm_8192e_2ant, align 4
  %conv2.i84 = zext i8 %38 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %37, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %conv2.i84, i32 noundef 2) #4
  %39 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %40 = ptrtoint ptr %adapter.i83 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %adapter.i83, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i82) #4
  %42 = ptrtoint ptr %h2c_parameter.i.i82 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %39, ptr %h2c_parameter.i.i82, align 1
  %conv.i.i85 = zext i8 %39 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %41, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef %conv.i.i85, i32 noundef %conv.i.i85) #4
  %btc_fill_h2c.i.i86 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %43 = ptrtoint ptr %btc_fill_h2c.i.i86 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %btc_fill_h2c.i.i86, align 4
  call void %44(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i82) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i82) #4
  br label %if.end25.sink.split

if.then23:                                        ; preds = %btc8192e2ant_bt_rssi_state.exit.if.then23_crit_edge, %btc8192e2ant_bt_rssi_state.exit.if.then23_crit_edge109
  %adapter.i88 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %45 = ptrtoint ptr %adapter.i88 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %adapter.i88, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %46, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.111, i32 noundef 4) #4
  store i8 4, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %47 = load i8, ptr @glcoex_dm_8192e_2ant, align 4
  %conv2.i89 = zext i8 %47 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %46, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %conv2.i89, i32 noundef 4) #4
  %48 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  %49 = ptrtoint ptr %adapter.i88 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %adapter.i88, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i87) #4
  %51 = ptrtoint ptr %h2c_parameter.i.i87 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %48, ptr %h2c_parameter.i.i87, align 1
  %conv.i.i90 = zext i8 %48 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %50, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef %conv.i.i90, i32 noundef %conv.i.i90) #4
  %btc_fill_h2c.i.i91 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %52 = ptrtoint ptr %btc_fill_h2c.i.i91 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %btc_fill_h2c.i.i91, align 4
  call void %53(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i87) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i87) #4
  br label %if.end25.sink.split

if.end25.sink.split:                              ; preds = %if.then23, %if.then14, %if.then
  %.sink = phi i1 [ false, %if.then14 ], [ false, %if.then23 ], [ true, %if.then ]
  %54 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 1), align 1
  store i8 %54, ptr @glcoex_dm_8192e_2ant, align 4
  call fastcc void @btc8192e2ant_tdma_duration_adjust(ptr noundef %btcoexist, i1 noundef zeroext true, i1 noundef zeroext %.sink, i8 noundef zeroext 2)
  br label %if.end25

if.end25:                                         ; preds = %if.end25.sink.split, %btc8192e2ant_bt_rssi_state.exit.if.end25_crit_edge
  %55 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %wifi_bw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %56)
  %cmp26 = icmp eq i32 %56, 2
  %trunc97 = trunc i8 %wifi_rssi_state.0.i to i3
  %57 = sext i3 %trunc97 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %switch.selectcmp.case1101 = icmp eq i3 %trunc97, 0
  %58 = sext i3 %trunc97 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %58)
  %switch.selectcmp.case2102 = icmp eq i3 %trunc97, 3
  %switch.selectcmp103 = or i1 %switch.selectcmp.case1101, %switch.selectcmp.case2102
  call fastcc void @btc8192e2ant_sw_mechanism1(ptr noundef %btcoexist, i1 noundef zeroext %cmp26)
  call fastcc void @btc8192e2ant_sw_mechanism2(ptr noundef %btcoexist, i1 noundef zeroext %switch.selectcmp103, i1 noundef zeroext false, i32 noundef 24)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_bw) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8192e2ant_tdma_duration_adjust(ptr noundef %btcoexist, i1 noundef zeroext %sco_hid, i1 noundef zeroext %tx_pause, i8 noundef zeroext %max_interval) unnamed_addr #0 align 64 {
entry:
  %scan = alloca i8, align 1
  %link = alloca i8, align 1
  %roam = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.218) #4
  %2 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 11), align 1, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.then, label %if.else70

if.then:                                          ; preds = %entry
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 11), align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.219) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %max_interval)
  %switch.selectcmp = icmp eq i8 %max_interval, 2
  br i1 %sco_hid, label %if.then4, label %if.else34

if.then4:                                         ; preds = %if.then
  br i1 %tx_pause, label %if.then6, label %if.else17

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  %switch.select = select i1 %switch.selectcmp, i8 14, i8 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %max_interval)
  %switch.selectcmp199 = icmp eq i8 %max_interval, 1
  %switch.select200 = select i1 %switch.selectcmp199, i8 13, i8 %switch.select
  br label %if.end69

if.else17:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  %switch.select202 = select i1 %switch.selectcmp, i8 10, i8 11
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %max_interval)
  %switch.selectcmp203 = icmp eq i8 %max_interval, 1
  %switch.select204 = select i1 %switch.selectcmp203, i8 9, i8 %switch.select202
  br label %if.end69

if.else34:                                        ; preds = %if.then
  br i1 %tx_pause, label %if.then36, label %if.else52

if.then36:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #6
  %switch.select206 = select i1 %switch.selectcmp, i8 6, i8 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %max_interval)
  %switch.selectcmp207 = icmp eq i8 %max_interval, 1
  %switch.select208 = select i1 %switch.selectcmp207, i8 5, i8 %switch.select206
  br label %if.end69

if.else52:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #6
  %switch.select210 = select i1 %switch.selectcmp, i8 2, i8 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %max_interval)
  %switch.selectcmp211 = icmp eq i8 %max_interval, 1
  %switch.select212 = select i1 %switch.selectcmp211, i8 1, i8 %switch.select210
  br label %if.end69

if.end69:                                         ; preds = %if.else52, %if.then36, %if.else17, %if.then6
  %.sink198 = phi i8 [ %switch.select200, %if.then6 ], [ %switch.select204, %if.else17 ], [ %switch.select208, %if.then36 ], [ %switch.select212, %if.else52 ]
  tail call fastcc void @btc8192e2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext %.sink198)
  store i8 %.sink198, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 9), align 1
  store i32 0, ptr @btc8192e2ant_tdma_duration_adjust.up, align 4
  store i32 0, ptr @btc8192e2ant_tdma_duration_adjust.dn, align 4
  store i32 1, ptr @btc8192e2ant_tdma_duration_adjust.m, align 4
  store i32 3, ptr @btc8192e2ant_tdma_duration_adjust.n, align 4
  store i32 0, ptr @btc8192e2ant_tdma_duration_adjust.wait_cnt, align 4
  br label %if.end125

if.else70:                                        ; preds = %entry
  %3 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8192e_2ant, ptr @glcoex_sta_8192e_2ant, i32 0, i32 18), align 1
  %conv71 = zext i8 %3 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.220, i32 noundef %conv71) #4
  %4 = load i32, ptr @btc8192e2ant_tdma_duration_adjust.up, align 4
  %5 = load i32, ptr @btc8192e2ant_tdma_duration_adjust.dn, align 4
  %6 = load i32, ptr @btc8192e2ant_tdma_duration_adjust.m, align 4
  %7 = load i32, ptr @btc8192e2ant_tdma_duration_adjust.n, align 4
  %8 = load i32, ptr @btc8192e2ant_tdma_duration_adjust.wait_cnt, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.221, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #4
  %9 = load i32, ptr @btc8192e2ant_tdma_duration_adjust.wait_cnt, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr @btc8192e2ant_tdma_duration_adjust.wait_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp73 = icmp eq i8 %3, 0
  br i1 %cmp73, label %if.then75, label %if.else85

if.then75:                                        ; preds = %if.else70
  %10 = load i32, ptr @btc8192e2ant_tdma_duration_adjust.up, align 4
  %inc76 = add i32 %10, 1
  store i32 %inc76, ptr @btc8192e2ant_tdma_duration_adjust.up, align 4
  %11 = load i32, ptr @btc8192e2ant_tdma_duration_adjust.dn, align 4
  %dec = add i32 %11, -1
  %12 = tail call i32 @llvm.smax.i32(i32 %dec, i32 0)
  store i32 %12, ptr @btc8192e2ant_tdma_duration_adjust.dn, align 4
  %13 = load i32, ptr @btc8192e2ant_tdma_duration_adjust.n, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc76, i32 %13)
  %cmp81.not = icmp slt i32 %inc76, %13
  br i1 %cmp81.not, label %if.then75.if.end123_crit_edge, label %if.then83

if.then75.if.end123_crit_edge:                    ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end123

if.then83:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #6
  store i32 0, ptr @btc8192e2ant_tdma_duration_adjust.wait_cnt, align 4
  store i32 3, ptr @btc8192e2ant_tdma_duration_adjust.n, align 4
  br label %if.end123.sink.split

if.else85:                                        ; preds = %if.else70
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp87 = icmp ult i8 %3, 4
  br i1 %cmp87, label %if.then89, label %if.else110

if.then89:                                        ; preds = %if.else85
  %14 = load i32, ptr @btc8192e2ant_tdma_duration_adjust.up, align 4
  %dec90 = add i32 %14, -1
  store i32 %dec90, ptr @btc8192e2ant_tdma_duration_adjust.up, align 4
  %15 = load i32, ptr @btc8192e2ant_tdma_duration_adjust.dn, align 4
  %inc91 = add i32 %15, 1
  store i32 %inc91, ptr @btc8192e2ant_tdma_duration_adjust.dn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec90)
  %cmp92 = icmp slt i32 %dec90, 1
  br i1 %cmp92, label %if.then94, label %if.then89.if.end95_crit_edge

if.then89.if.end95_crit_edge:                     ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end95

if.then94:                                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #6
  store i32 0, ptr @btc8192e2ant_tdma_duration_adjust.up, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then94, %if.then89.if.end95_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc91)
  %cmp96 = icmp eq i32 %inc91, 2
  br i1 %cmp96, label %if.then98, label %if.end95.if.end123_crit_edge

if.end95.if.end123_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end123

if.then98:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc)
  %cmp99 = icmp slt i32 %inc, 3
  br i1 %cmp99, label %if.end104, label %if.then98.if.end104.thread_crit_edge

if.then98.if.end104.thread_crit_edge:             ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end104.thread

if.end104:                                        ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #6
  %16 = load i32, ptr @btc8192e2ant_tdma_duration_adjust.m, align 4
  %inc102 = add i32 %16, 1
  %17 = tail call i32 @llvm.smin.i32(i32 %inc102, i32 20)
  br label %if.end104.thread

if.end104.thread:                                 ; preds = %if.end104, %if.then98.if.end104.thread_crit_edge
  %18 = phi i32 [ 1, %if.then98.if.end104.thread_crit_edge ], [ %17, %if.end104 ]
  store i32 %18, ptr @btc8192e2ant_tdma_duration_adjust.m, align 4
  %mul = mul i32 %18, 3
  store i32 %mul, ptr @btc8192e2ant_tdma_duration_adjust.n, align 4
  store i32 0, ptr @btc8192e2ant_tdma_duration_adjust.up, align 4
  br label %if.end123.sink.split

if.else110:                                       ; preds = %if.else85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp111 = icmp eq i32 %9, 0
  br i1 %cmp111, label %if.end116, label %if.else110.if.end116.thread_crit_edge

if.else110.if.end116.thread_crit_edge:            ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end116.thread

if.end116:                                        ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #6
  %19 = load i32, ptr @btc8192e2ant_tdma_duration_adjust.m, align 4
  %inc114 = add i32 %19, 1
  %20 = tail call i32 @llvm.smin.i32(i32 %inc114, i32 20)
  br label %if.end116.thread

if.end116.thread:                                 ; preds = %if.end116, %if.else110.if.end116.thread_crit_edge
  %21 = phi i32 [ 1, %if.else110.if.end116.thread_crit_edge ], [ %20, %if.end116 ]
  store i32 %21, ptr @btc8192e2ant_tdma_duration_adjust.m, align 4
  %mul121 = mul i32 %21, 3
  store i32 %mul121, ptr @btc8192e2ant_tdma_duration_adjust.n, align 4
  store i32 0, ptr @btc8192e2ant_tdma_duration_adjust.up, align 4
  br label %if.end123.sink.split

if.end123.sink.split:                             ; preds = %if.end116.thread, %if.end104.thread, %if.then83
  %btc8192e2ant_tdma_duration_adjust.dn.sink = phi ptr [ @btc8192e2ant_tdma_duration_adjust.dn, %if.end116.thread ], [ @btc8192e2ant_tdma_duration_adjust.dn, %if.end104.thread ], [ @btc8192e2ant_tdma_duration_adjust.up, %if.then83 ]
  %btc8192e2ant_tdma_duration_adjust.wait_cnt.sink = phi ptr [ @btc8192e2ant_tdma_duration_adjust.wait_cnt, %if.end116.thread ], [ @btc8192e2ant_tdma_duration_adjust.wait_cnt, %if.end104.thread ], [ @btc8192e2ant_tdma_duration_adjust.dn, %if.then83 ]
  %.str.224.sink = phi ptr [ @.str.224, %if.end116.thread ], [ @.str.223, %if.end104.thread ], [ @.str.222, %if.then83 ]
  %22 = ptrtoint ptr %btc8192e2ant_tdma_duration_adjust.dn.sink to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %btc8192e2ant_tdma_duration_adjust.dn.sink, align 4
  %23 = ptrtoint ptr %btc8192e2ant_tdma_duration_adjust.wait_cnt.sink to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %btc8192e2ant_tdma_duration_adjust.wait_cnt.sink, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.224.sink) #4
  br label %if.end123

if.end123:                                        ; preds = %if.end123.sink.split, %if.end95.if.end123_crit_edge, %if.then75.if.end123_crit_edge
  %conv124 = zext i8 %max_interval to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.225, i32 noundef %conv124) #4
  br label %if.end125

if.end125:                                        ; preds = %if.end123, %if.end69
  %24 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 7), align 1
  %25 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 9), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %25)
  %cmp129.not = icmp eq i8 %24, %25
  br i1 %cmp129.not, label %if.end125.if.end148_crit_edge, label %if.then131

if.end125.if.end148_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end148

if.then131:                                       ; preds = %if.end125
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %scan) #4
  %26 = ptrtoint ptr %scan to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %scan, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link) #4
  %27 = ptrtoint ptr %link to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %link, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %roam) #4
  %28 = ptrtoint ptr %roam to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %roam, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.226) #4
  %29 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 7), align 1
  %conv133 = zext i8 %29 to i32
  %30 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 9), align 1
  %conv135 = zext i8 %30 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.227, i32 noundef %conv133, i32 noundef %conv135) #4
  %btc_get = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %31 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %btc_get, align 4
  %call = call zeroext i1 %32(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %scan) #4
  %33 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %btc_get, align 4
  %call137 = call zeroext i1 %34(ptr noundef %btcoexist, i8 noundef zeroext 6, ptr noundef nonnull %link) #4
  %35 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %btc_get, align 4
  %call139 = call zeroext i1 %36(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %roam) #4
  %37 = ptrtoint ptr %scan to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %scan, align 1, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool140.not = icmp eq i8 %38, 0
  br i1 %tobool140.not, label %land.lhs.true, label %if.then131.if.else146_crit_edge

if.then131.if.else146_crit_edge:                  ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else146

land.lhs.true:                                    ; preds = %if.then131
  %39 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %link, align 1, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool141.not = icmp eq i8 %40, 0
  br i1 %tobool141.not, label %land.lhs.true142, label %land.lhs.true.if.else146_crit_edge

land.lhs.true.if.else146_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else146

land.lhs.true142:                                 ; preds = %land.lhs.true
  %41 = ptrtoint ptr %roam to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %roam, align 1, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool143.not = icmp eq i8 %42, 0
  br i1 %tobool143.not, label %if.then144, label %land.lhs.true142.if.else146_crit_edge

land.lhs.true142.if.else146_crit_edge:            ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else146

if.then144:                                       ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #6
  %43 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8192e_2ant, ptr @glcoex_dm_8192e_2ant, i32 0, i32 9), align 1
  call fastcc void @btc8192e2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext %43)
  br label %if.end147

if.else146:                                       ; preds = %land.lhs.true142.if.else146_crit_edge, %land.lhs.true.if.else146_crit_edge, %if.then131.if.else146_crit_edge
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.228) #4
  br label %if.end147

if.end147:                                        ; preds = %if.else146, %if.then144
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %roam) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %scan) #4
  br label %if.end148

if.end148:                                        ; preds = %if.end147, %if.end125.if.end148_crit_edge
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

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 241)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 241)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !223, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !245, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !281, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !331, !332, !334, !336, !337, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !489, !491, !493}
!llvm.module.flags = !{!495, !496, !497, !498, !499, !500, !501, !502}
!llvm.ident = !{!503}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2662, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2682, i32 14}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2685, i32 15}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2686, i32 15}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2689, i32 16}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2689, i32 38}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2692, i32 16}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2692, i32 38}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2693, i32 40}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2693, i32 48}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2698, i32 16}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2699, i32 6}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2707, i32 16}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2708, i32 6}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2711, i32 16}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2712, i32 6}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2716, i32 16}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2717, i32 6}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2722, i32 16}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2723, i32 6}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2730, i32 16}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2731, i32 6}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2731, i32 38}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2731, i32 45}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2732, i32 41}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2733, i32 38}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2733, i32 47}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2734, i32 22}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2736, i32 5}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2736, i32 16}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2738, i32 16}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2739, i32 6}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2740, i32 43}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2742, i32 9}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2744, i32 26}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2746, i32 29}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2746, i32 48}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2749, i32 16}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2750, i32 6}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2756, i32 16}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2757, i32 6}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2758, i32 27}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2758, i32 42}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2762, i32 18}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2769, i32 16}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2770, i32 6}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2771, i32 30}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2771, i32 41}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2772, i32 30}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2772, i32 41}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2775, i32 16}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2775, i32 36}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2779, i32 16}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2780, i32 6}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2782, i32 6}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2784, i32 16}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2785, i32 6}
!114 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2789, i32 36}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2794, i32 6}
!118 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2798, i32 6}
!120 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2799, i32 6}
!122 = !{ptr @.str.61, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2803, i32 6}
!124 = !{ptr @.str.62, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2808, i32 6}
!126 = !{ptr @.str.63, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2810, i32 16}
!128 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2811, i32 6}
!130 = !{ptr @.str.65, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2813, i32 16}
!132 = !{ptr @.str.66, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2814, i32 6}
!134 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2823, i32 6}
!136 = !{ptr @.str.68, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2829, i32 16}
!138 = !{ptr @.str.69, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2830, i32 6}
!140 = !{ptr @.str.70, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2833, i32 35}
!142 = !{ptr @.str.71, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2837, i32 16}
!144 = !{ptr @.str.72, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2838, i32 6}
!146 = !{ptr @.str.73, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2843, i32 6}
!148 = !{ptr @.str.74, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2848, i32 6}
!150 = !{ptr @.str.75, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2851, i32 35}
!152 = !{ptr @.str.76, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2859, i32 6}
!154 = !{ptr @.str.77, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2860, i32 6}
!156 = !{ptr @.str.78, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2864, i32 6}
!158 = !{ptr @.str.79, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2867, i32 6}
!160 = !{ptr @.str.80, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2879, i32 3}
!162 = !{ptr @.str.81, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2884, i32 3}
!164 = !{ptr @.str.82, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2895, i32 3}
!166 = !{ptr @.str.83, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2899, i32 3}
!168 = !{ptr @.str.84, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2910, i32 3}
!170 = !{ptr @.str.85, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2913, i32 3}
!172 = !{ptr @.str.86, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2922, i32 3}
!174 = !{ptr @.str.87, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2925, i32 3}
!176 = !{ptr @.str.88, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2943, i32 3}
!178 = !{ptr @.str.89, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2946, i32 3}
!180 = !{ptr @.str.90, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2967, i32 2}
!182 = !{ptr @.str.91, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2981, i32 3}
!184 = !{ptr @.str.92, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 3001, i32 2}
!186 = !{ptr @.str.93, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 3009, i32 4}
!188 = !{ptr @.str.94, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 3012, i32 4}
!190 = !{ptr @.str.95, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 3031, i32 4}
!192 = !{ptr @.str.96, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 3048, i32 5}
!194 = !{ptr @.str.97, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 3105, i32 3}
!196 = !{ptr @.str.98, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 3109, i32 3}
!198 = !{ptr @.str.99, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 3114, i32 3}
!200 = !{ptr @.str.100, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 3118, i32 3}
!202 = !{ptr @.str.101, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 3122, i32 3}
!204 = !{ptr @.str.102, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 3148, i32 2}
!206 = !{ptr @ex_btc8192e2ant_periodical.dis_ver_info_cnt, !207, !"dis_ver_info_cnt", i1 false, i1 false}
!207 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 3157, i32 12}
!208 = !{ptr @.str.103, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 3162, i32 2}
!210 = !{ptr @.str.104, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 3166, i32 3}
!212 = !{ptr @.str.105, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 3168, i32 3}
!214 = !{ptr @.str.106, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 3172, i32 3}
!216 = !{ptr @.str.107, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 3179, i32 3}
!218 = !{ptr @.str.108, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2580, i32 2}
!220 = !{ptr @.str.109, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 1038, i32 2}
!222 = !{ptr @.str.110, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @.str.111, !221, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @.str.112, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 1041, i32 2}
!226 = !{ptr @.str.113, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 1050, i32 3}
!228 = !{ptr @.str.114, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 1053, i32 3}
!230 = !{ptr @.str.115, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 1056, i32 3}
!232 = !{ptr @.str.116, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 1059, i32 3}
!234 = !{ptr @.str.117, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 1015, i32 2}
!236 = !{ptr @.str.118, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 1019, i32 2}
!238 = !{ptr @.str.119, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 1023, i32 2}
!240 = !{ptr @.str.120, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 1027, i32 2}
!242 = !{ptr @.str.121, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 1199, i32 2}
!244 = !{ptr @.str.122, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @.str.123, !243, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @.str.124, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 1207, i32 3}
!248 = !{ptr @.str.125, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 1210, i32 3}
!250 = !{ptr @.str.126, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 1169, i32 2}
!252 = !{ptr @.str.127, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 828, i32 2}
!254 = !{ptr @.str.128, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 834, i32 3}
!256 = !{ptr @.str.129, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 734, i32 2}
!258 = !{ptr @.str.130, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 736, i32 2}
!260 = !{ptr @.str.131, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 762, i32 2}
!262 = !{ptr @.str.132, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 768, i32 3}
!264 = !{ptr @.str.133, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 750, i32 2}
!266 = !{ptr @.str.134, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 1375, i32 2}
!268 = !{ptr @.str.135, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 1340, i32 2}
!270 = !{ptr @.str.136, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 880, i32 2}
!272 = !{ptr @.str.137, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 887, i32 3}
!274 = !{ptr @.str.138, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 857, i32 3}
!276 = !{ptr @.str.139, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 866, i32 4}
!278 = !{ptr @.str.140, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 989, i32 2}
!280 = !{ptr @.str.141, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @.str.142, !279, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @.str.143, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 996, i32 3}
!284 = !{ptr @.str.144, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 964, i32 3}
!286 = !{ptr @.str.145, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 973, i32 3}
!288 = !{ptr @.str.146, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 929, i32 2}
!290 = !{ptr @.str.147, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 937, i32 3}
!292 = !{ptr @.str.148, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 941, i32 3}
!294 = !{ptr @.str.149, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 908, i32 2}
!296 = distinct !{null, !297, !"glcoex_ver_date_8192e_2ant", i1 false, i1 false}
!297 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 22, i32 12}
!298 = distinct !{null, !299, !"glcoex_ver_8192e_2ant", i1 false, i1 false}
!299 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 23, i32 12}
!300 = distinct !{null, !301, !"coex_dm", i1 false, i1 false}
!301 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 12, i32 35}
!302 = !{ptr @glcoex_dm_8192e_2ant, !303, !"glcoex_dm_8192e_2ant", i1 false, i1 false}
!303 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 11, i32 34}
!304 = distinct !{null, !305, !"coex_sta", i1 false, i1 false}
!305 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 14, i32 36}
!306 = !{ptr @glcoex_sta_8192e_2ant, !307, !"glcoex_sta_8192e_2ant", i1 false, i1 false}
!307 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 13, i32 35}
!308 = !{ptr @.str.150, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 17, i32 2}
!310 = !{ptr @.str.151, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 18, i32 2}
!312 = !{ptr @.str.152, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 19, i32 2}
!314 = distinct !{null, !315, !"glbt_info_src_8192e_2ant", i1 false, i1 false}
!315 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 16, i32 26}
!316 = !{ptr @.str.153, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 401, i32 2}
!318 = !{ptr @.str.154, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 404, i32 2}
!320 = !{ptr @.str.155, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 1128, i32 2}
!322 = distinct !{null, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 1134, i32 3}
!324 = distinct !{null, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 1137, i32 3}
!326 = !{ptr @.str.158, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 1116, i32 2}
!328 = !{ptr @.str.159, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 802, i32 2}
!330 = !{ptr @.str.160, !329, !"<string literal>", i1 false, i1 false}
!331 = distinct !{null, !329, !"<string literal>", i1 false, i1 false}
!332 = distinct !{null, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 809, i32 3}
!334 = !{ptr @.str.163, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 788, i32 2}
!336 = !{ptr @.str.164, !335, !"<string literal>", i1 false, i1 false}
!337 = distinct !{null, !335, !"<string literal>", i1 false, i1 false}
!338 = !{ptr @.str.166, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2467, i32 2}
!340 = !{ptr @.str.167, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2471, i32 3}
!342 = !{ptr @.str.168, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2477, i32 3}
!344 = !{ptr @.str.169, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2485, i32 3}
!346 = !{ptr @.str.170, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2492, i32 2}
!348 = !{ptr @.str.171, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2496, i32 3}
!350 = !{ptr @.str.172, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2501, i32 4}
!352 = !{ptr @.str.173, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2509, i32 4}
!354 = !{ptr @.str.174, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2514, i32 4}
!356 = !{ptr @.str.175, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2519, i32 4}
!358 = !{ptr @.str.176, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2524, i32 4}
!360 = !{ptr @.str.177, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2529, i32 4}
!362 = !{ptr @.str.178, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2534, i32 4}
!364 = !{ptr @.str.179, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2539, i32 4}
!366 = !{ptr @.str.180, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2544, i32 4}
!368 = !{ptr @.str.181, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2549, i32 4}
!370 = !{ptr @.str.182, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2554, i32 4}
!372 = !{ptr @.str.183, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2559, i32 4}
!374 = !{ptr @.str.184, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 2564, i32 4}
!376 = !{ptr @.str.185, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 529, i32 3}
!378 = !{ptr @.str.186, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 545, i32 4}
!380 = !{ptr @.str.187, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 550, i32 5}
!382 = !{ptr @.str.188, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 554, i32 5}
!384 = !{ptr @.str.189, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 559, i32 6}
!386 = !{ptr @.str.190, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 565, i32 6}
!388 = !{ptr @.str.191, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 576, i32 5}
!390 = !{ptr @.str.192, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 580, i32 5}
!392 = !{ptr @.str.193, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 585, i32 6}
!394 = !{ptr @.str.194, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 590, i32 6}
!396 = !{ptr @.str.195, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 601, i32 6}
!398 = !{ptr @.str.196, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 607, i32 6}
!400 = !{ptr @.str.197, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 616, i32 6}
!402 = !{ptr @.str.198, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 621, i32 6}
!404 = !{ptr @.str.199, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 630, i32 6}
!406 = !{ptr @.str.200, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 636, i32 6}
!408 = !{ptr @.str.201, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 648, i32 5}
!410 = !{ptr @.str.202, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 654, i32 6}
!412 = !{ptr @.str.203, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 659, i32 6}
!414 = !{ptr @.str.204, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 668, i32 6}
!416 = !{ptr @.str.205, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 673, i32 6}
!418 = !{ptr @.str.206, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 685, i32 6}
!420 = !{ptr @.str.207, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 691, i32 6}
!422 = !{ptr @.str.208, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 705, i32 6}
!424 = !{ptr @.str.209, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 710, i32 6}
!426 = !{ptr @.str.210, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 1459, i32 3}
!428 = !{ptr @.str.211, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 1494, i32 4}
!430 = !{ptr @.str.212, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 1520, i32 4}
!432 = !{ptr @.str.213, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 1546, i32 5}
!434 = !{ptr @.str.214, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 1550, i32 5}
!436 = distinct !{null, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 121, i32 4}
!438 = distinct !{null, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 57, i32 4}
!440 = !{ptr @.str.217, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 1965, i32 3}
!442 = !{ptr @btc8192e2ant_tdma_duration_adjust.up, !443, !"up", i1 false, i1 false}
!443 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 1580, i32 13}
!444 = !{ptr @btc8192e2ant_tdma_duration_adjust.dn, !445, !"dn", i1 false, i1 false}
!445 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 1580, i32 17}
!446 = !{ptr @btc8192e2ant_tdma_duration_adjust.m, !447, !"m", i1 false, i1 false}
!447 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 1580, i32 21}
!448 = !{ptr @btc8192e2ant_tdma_duration_adjust.n, !449, !"n", i1 false, i1 false}
!449 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 1580, i32 24}
!450 = !{ptr @btc8192e2ant_tdma_duration_adjust.wait_cnt, !451, !"wait_cnt", i1 false, i1 false}
!451 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 1580, i32 27}
!452 = !{ptr @.str.218, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 1583, i32 2}
!454 = !{ptr @.str.219, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 1588, i32 3}
!456 = !{ptr @.str.220, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 1672, i32 3}
!458 = !{ptr @.str.221, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 1674, i32 3}
!460 = !{ptr @.str.222, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 1691, i32 5}
!462 = !{ptr @.str.223, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 1714, i32 5}
!464 = !{ptr @.str.224, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 1730, i32 4}
!466 = !{ptr @.str.225, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 1734, i32 3}
!468 = !{ptr @.str.226, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 1745, i32 3}
!470 = !{ptr @.str.227, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 1747, i32 3}
!472 = !{ptr @.str.228, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 1759, i32 4}
!474 = !{ptr @.str.229, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 421, i32 2}
!476 = !{ptr @btc8192e2ant_monitor_bt_enable_disable.pre_bt_disabled, !477, !"pre_bt_disabled", i1 false, i1 false}
!477 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 163, i32 14}
!478 = !{ptr @btc8192e2ant_monitor_bt_enable_disable.bt_disable_cnt, !479, !"bt_disable_cnt", i1 false, i1 false}
!479 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 164, i32 13}
!480 = !{ptr @.str.230, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 186, i32 3}
!482 = !{ptr @.str.231, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 190, i32 3}
!484 = !{ptr @.str.232, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 197, i32 4}
!486 = !{ptr @.str.233, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 202, i32 3}
!488 = !{ptr @.str.234, !487, !"<string literal>", i1 false, i1 false}
!489 = !{ptr @btc8192e2ant_is_wifi_status_changed.pre_wifi_busy, !490, !"pre_wifi_busy", i1 false, i1 false}
!490 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 431, i32 14}
!491 = !{ptr @btc8192e2ant_is_wifi_status_changed.pre_under_4way, !492, !"pre_under_4way", i1 false, i1 false}
!492 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 431, i32 37}
!493 = !{ptr @btc8192e2ant_is_wifi_status_changed.pre_bt_hs_on, !494, !"pre_bt_hs_on", i1 false, i1 false}
!494 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8192e2ant.c", i32 432, i32 7}
!495 = !{i32 1, !"wchar_size", i32 2}
!496 = !{i32 1, !"min_enum_size", i32 4}
!497 = !{i32 8, !"branch-target-enforcement", i32 0}
!498 = !{i32 8, !"sign-return-address", i32 0}
!499 = !{i32 8, !"sign-return-address-all", i32 0}
!500 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!501 = !{i32 7, !"uwtable", i32 1}
!502 = !{i32 7, !"frame-pointer", i32 2}
!503 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!504 = !{!"auto-init"}
!505 = !{i8 0, i8 2}
!506 = distinct !{!506, !507}
!507 = !{!"llvm.loop.peeled.count", i32 2}
