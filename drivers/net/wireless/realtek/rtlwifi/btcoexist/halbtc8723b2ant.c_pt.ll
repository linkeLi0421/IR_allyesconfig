; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.coex_dm_8723b_2ant = type { i8, i8, i8, i8, i8, i8, i8, i8, [5 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i32, i8, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8 }
%struct.coex_sta_8723b_2ant = type { i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, [4 x i8], i8, [3 x [10 x i8]], [3 x i32], i8, i8, i8, i8, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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

@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[BTCoex], 2Ant Init HW Config!!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[BTCoex], Coex Mechanism Init!!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\0A ============[BT Coexist info]============\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\0A ==========[Under Manual Control]============\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\0A ==========================================\00", [51 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\0A %-35s = %d/ %d \00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Ant PG number/ Ant mechanism:\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\0A %-35s = %s / %d\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"BT stack/ hci ext ver\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Yes\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"No\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\0A %-35s = %d_%x/ 0x%x/ 0x%x(%d)\00", [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CoexVer/ FwVer/ PatchVer\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\0A %-35s = %d / %d(%d)\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Dot11 channel / HsChnl(HsMode)\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\0A %-35s = %3ph \00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"H2C Wifi inform bt chnl Info\00", [35 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\0A %-35s = %d/ %d/ %d\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Wifi rssi/ HS rssi/ AP#\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\0A %-35s = %d/ %d/ %d \00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Wifi link/ roam/ scan\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\0A %-35s = %s / %s/ %s \00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Wifi status\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"5G\00", [29 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"2.4G\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Legacy\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HT40\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HT20\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"idle\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"uplink\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"downlink\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\0A %-35s = %d / %d / %d / %d\00", [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SCO/HID/PAN/A2DP\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\0A %-35s = %s\00", [19 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"BT Info A2DP rate\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Basic rate\00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"EDR rate\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\0A %-35s = %7ph(%d)\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\0A %-35s = %s/%s\00", [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PS state, IPS/LPS\00", [46 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"IPS ON\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IPS OFF\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LPS ON\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LPS OFF\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\0A %-35s\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"============[Sw mechanism]============\00", [57 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SM1[ShRf/ LpRA/ LimDig]\00", [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\0A %-35s = %d/ %d/ %d(0x%x) \00", [36 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"SM2[AgcT/ AdcB/ SwDacSwing(lvl)]\00", [63 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"============[Fw mechanism]============\00", [57 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\0A %-35s = %5ph case-%d (auto:%d)\00", [63 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PS TDMA\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DecBtPwr/ IgnWlanAct\00", [43 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"============[Hw setting]============\00", [59 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\0A %-35s = 0x%x\00", [17 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RF-A, 0x1e initVal\00", [45 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\0A %-35s = 0x%x/ 0x%x\00", [43 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"0x778/0x880[29:25]\00", [45 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\0A %-35s = 0x%x/ 0x%x/ 0x%x\00", [37 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"0x948/ 0x67[5] / 0x765\00", [41 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"0x92c[1:0]/ 0x930[7:0]/0x944[1:0]\00", [62 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\0A %-35s = 0x%x/ 0x%x/ 0x%x/ 0x%x\00", [63 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"0x38[11]/0x40/0x4c[24:23]/0x64[0]\00", [62 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"0x550(bcn ctrl)/0x522\00", [42 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"0xc50(dig)/0x49c(null-drop)\00", [36 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"OFDM-CCA/OFDM-FA/CCK-FA\00", [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"0x6c0/0x6c4/0x6c8/0x6cc(coexTable)\00", [61 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\0A %-35s = %d/ %d\00", [47 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"0x770(high-pri rx/tx)\00", [42 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"0x774(low-pri rx/tx)\00", [43 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[BTCoex], IPS ENTER notify\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[BTCoex], IPS LEAVE notify\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[BTCoex], LPS ENABLE notify\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[BTCoex], LPS DISABLE notify\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[BTCoex], SCAN START notify\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[BTCoex], SCAN FINISH notify\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"############# [BTCoex], 0x948=0x%x, 0x765=0x%x, 0x76e=0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[BTCoex], CONNECT START notify\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[BTCoex], CONNECT FINISH notify\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[BTCoex], MEDIA connect notify\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[BTCoex], MEDIA disconnect notify\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[BTCoex], FW write 0x66=0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[BTCoex], DHCP Packet notify\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[BTCoex], Bt info[%d], length=%d, hex data=[\00", [51 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"0x%02x]\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"0x%02x, \00", [23 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[BTCoex], BtInfoNotify(), return for Manual CTRL<===\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"[BTCoex], BT ext info bit1 check, send wifi BW&Chnl to BT!!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"[BTCoex], BT ext info bit3 check, set BT NOT to ignore Wlan active!!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"[BTCoex], BtInfoNotify(), BT Non-Connected idle!!!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[BTCoex], BtInfoNotify(), BT Connected-idle!!!\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[BTCoex], BtInfoNotify(), BT SCO busy!!!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[BTCoex], BtInfoNotify(), BT ACL busy!!!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"[BTCoex], BtInfoNotify(), BT Non-Defined state!!!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[BTCoex], Halt notify\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[BTCoex], Pnp notify\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[BTCoex], Pnp notify to SLEEP\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[BTCoex], Pnp notify to WAKE UP\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"[BTCoex], ==========================Periodical===========================\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[BTCoex], Set GNT_BT control by PTA\0A\00", [59 x i8] zeroinitializer }, align 32
@glcoex_dm_8723b_2ant = internal global { %struct.coex_dm_8723b_2ant, [40 x i8] } zeroinitializer, align 32
@glcoex_sta_8723b_2ant = internal global { %struct.coex_sta_8723b_2ant, [36 x i8] } zeroinitializer, align 32
@.str.100 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"[BTCoex], %s write Coex Table 0x6c0=0x%x, 0x6c4=0x%x, 0x6c8=0x%x, 0x6cc=0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"force to\00", [23 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.103 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"[BTCoex], preVal0x6c0=0x%x, preVal0x6c4=0x%x, preVal0x6c8=0x%x, preVal0x6cc=0x%x !!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"[BTCoex], curVal0x6c0=0x%x, curVal0x6c4=0x%x, curVal0x6c8=0x%x, curVal0x6cc=0x%x !!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[BTCoex], set coex table, set 0x6c0=0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[BTCoex], set coex table, set 0x6c4=0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[BTCoex], set coex table, set 0x6c8=0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[BTCoex], set coex table, set 0x6cc=0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[BTCoex], %s turn %s PS TDMA, type=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ON\00", [29 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OFF\00", [28 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[BTCoex], bPrePsTdmaOn = %d, bCurPsTdmaOn = %d!!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[BTCoex], prePsTdma = %d, curPsTdma = %d!!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[BTCoex], wifi RSSI state switch to High\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[BTCoex], wifi RSSI state stay at Low\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[BTCoex], wifi RSSI state switch to Low\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"[BTCoex], wifi RSSI state stay at High\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"[BTCoex], BT Rssi state switch to High\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[BTCoex], BT Rssi state stay at Low\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[BTCoex], BT Rssi state switch to Low\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[BTCoex], BT Rssi state stay at High\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[BTCoex], BT Rssi thresh error!!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[BTCoex], BT Rssi state switch to Medium\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"[BTCoex], BT Rssi state stay at Medium\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[BTCoex], FW write 0x60(5bytes)=0x%x%08x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[BTCoex], %s set FW Dac Swing level = %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"[BTCoex], preFwDacSwingLvl=%d, curFwDacSwingLvl=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[BTCoex], Set Dac Swing Level=0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[BTCoex], FW write 0x64=0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[BTCoex], Dec BT power level = %u\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[BTCoex], PreDecBtPwrLvl=%d, CurDecBtPwrLvl=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"[BTCoex], decrease Bt Power Level : %u\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[BTCoex], %s turn LowPenaltyRA = %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"[BTCoex], bPreLowPenaltyRa=%d, bCurLowPenaltyRa=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[BTCoex], set WiFi Low-Penalty Retry: %s\00", [55 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ON!!\00", [27 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"OFF!!\00", [26 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"BT Info[wifi fw]\00", [47 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"BT Info[bt rsp]\00", [16 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"BT Info[bt auto report]\00", [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"[BTCoex], High Priority Tx/Rx(reg 0x%x)=0x%x(%d)/0x%x(%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"[BTCoex], Low Priority Tx/Rx(reg 0x%x)=0x%x(%d)/0x%x(%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[BTCoex], %s turn Ignore WlanAct %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"[BTCoex], set FW for BT Ignore Wlan_Act, FW write 0x63=0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"[BTCoex], Query Bt Info, FW write 0x61 = 0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[BTCoex], RunCoexistMechanism()===>\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"[BTCoex], RunCoexistMechanism(), return for Manual CTRL <===\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[BTCoex], wifi is under IPS !!!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[BTCoex], BT is under inquiry/page scan !!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[BTCoex], WiFi is under Link Process !!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"############# [BTCoex],  Multi-Port num_of_wifi_link = %d, wifi_link_status = 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[BTCoex], Algorithm = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[BTCoex], Action 2-Ant common\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[BTCoex], preAlgorithm=%d, curAlgorithm=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[BTCoex], Action 2-Ant, algorithm = SCO\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[BTCoex], Action 2-Ant, algorithm = HID\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[BTCoex], Action 2-Ant, algorithm = A2DP\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[BTCoex], Action 2-Ant, algorithm = A2DP+PAN(HS)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"[BTCoex], Action 2-Ant, algorithm = PAN(EDR)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[BTCoex], Action 2-Ant, algorithm = HS mode\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"[BTCoex], Action 2-Ant, algorithm = PAN+A2DP\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[BTCoex], Action 2-Ant, algorithm = PAN(EDR)+HID\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[BTCoex], Action 2-Ant, algorithm = HID+A2DP+PAN\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"[BTCoex], Action 2-Ant, algorithm = HID+A2DP\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"[BTCoex], Action 2-Ant, algorithm = coexist All Off!!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[BTCoex], No BT link exists!!!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"[BTCoex], SCO only\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"[BTCoex], HID only\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[BTCoex], A2DP only\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[BTCoex], PAN(HS) only\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[BTCoex], PAN(EDR) only\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[BTCoex], SCO + HID\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[BTCoex], SCO + A2DP ==> SCO\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[BTCoex], SCO + PAN(HS)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[BTCoex], SCO + PAN(EDR)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[BTCoex], HID + A2DP\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[BTCoex], HID + PAN(HS)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[BTCoex], HID + PAN(EDR)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[BTCoex], A2DP + PAN(HS)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[BTCoex],A2DP + PAN(EDR)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[BTCoex], SCO + HID + A2DP ==> HID\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[BTCoex], SCO + HID + PAN(HS)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[BTCoex], SCO + HID + PAN(EDR)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[BTCoex], SCO + A2DP + PAN(HS)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[BTCoex], SCO + A2DP + PAN(EDR) ==> HID\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[BTCoex], HID + A2DP + PAN(HS)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[BTCoex], HID + A2DP + PAN(EDR)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"[BTCoex], Error!!! SCO + HID + A2DP + PAN(HS)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[BTCoex], SCO + HID + A2DP + PAN(EDR)==>PAN(EDR)+HID\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[BTCoex], Wifi link process + BT Inq/Page!!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[BTCoex], Wifi connected + BT Inq/Page!!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"[BTCoex], 0x948 = 0x%x, 0x765 = 0x%x, 0x76e = 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[BTCoex], Wifi non-connected idle!!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"[BTCoex], Wifi connected + BT non connected-idle!!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[BTCoex], Wifi connected + BT connected-idle!!\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[BTCoex], Wifi Connected-Busy + BT Busy!!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[BTCoex], Wifi Connected-Idle + BT Busy!!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[BTCoex], Wifi  idle process for BT HID+A2DP exist!!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"[BTCoex], %s turn DacSwing=%s, dac_swing_lvl=0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"[BTCoex], bPreDacSwingOn=%d, preDacSwingLvl=0x%x, bCurDacSwingOn=%d, curDacSwingLvl=0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.205 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[BTCoex], Write SwDacSwing = 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@btc8723b2ant_tdma_duration_adjust.up = internal global { i32, [28 x i8] } zeroinitializer, align 32
@btc8723b2ant_tdma_duration_adjust.dn = internal global { i32, [28 x i8] } zeroinitializer, align 32
@btc8723b2ant_tdma_duration_adjust.m = internal global { i32, [28 x i8] } zeroinitializer, align 32
@btc8723b2ant_tdma_duration_adjust.n = internal global { i32, [28 x i8] } zeroinitializer, align 32
@btc8723b2ant_tdma_duration_adjust.wait_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.206 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[BTCoex], TdmaDurationAdjust()\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[BTCoex], first run TdmaDurationAdjust()!!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[BTCoex], retry_count = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"[BTCoex], up=%d, dn=%d, m=%d, n=%d, wait_count=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[BTCoex], Increase wifi duration!!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"[BTCoex], Decrease wifi duration for retry_counter<3!!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"[BTCoex], Decrease wifi duration for retry_counter>3!!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[BTCoex], max Interval = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"[BTCoex], PsTdma type mismatch!!!, curPsTdma=%d, recordPsTdma=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"[BTCoex], roaming/link/scan is under progress, will adjust next time!!!\0A\00", [55 x i8] zeroinitializer }, align 32
@btc8723b2ant_is_wifi_status_changed.pre_wifi_busy = internal global { i8, [31 x i8] } zeroinitializer, align 32
@btc8723b2ant_is_wifi_status_changed.pre_under_4way = internal global { i8, [31 x i8] } zeroinitializer, align 32
@btc8723b2ant_is_wifi_status_changed.pre_bt_hs_on = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.216 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.217 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.218 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.219 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.220 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.221 = internal global [5 x i64] [i64 3, i64 4, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.222 = internal global [12 x i64] [i64 10, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.223 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.224 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.225 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.226 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.227 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.228 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 3]
@__sancov_gen_cov_switch_values.229 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 3]
@__sancov_gen_cov_switch_values.230 = internal global [45 x i64] [i64 43, i64 8, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 71, i64 101, i64 102, i64 103, i64 104, i64 105, i64 106, i64 107, i64 108, i64 109, i64 110, i64 111, i64 112, i64 113, i64 114, i64 115, i64 116, i64 121, i64 122, i64 123, i64 171]
@__sancov_gen_cov_switch_values.231 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.232 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.233 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.234 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.235 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.236 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 3]
@__sancov_gen_cov_switch_values.237 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.238 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.239 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 3]
@__sancov_gen_cov_switch_values.240 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.241 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.242 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 3]
@__sancov_gen_cov_switch_values.243 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.244 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.245 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.246 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 3]
@__sancov_gen_cov_switch_values.247 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 3]
@__sancov_gen_cov_switch_values.248 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 3]
@__sancov_gen_cov_switch_values.249 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 3]
@__sancov_gen_cov_switch_values.250 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.251 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.252 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.253 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 3]
@__sancov_gen_cov_switch_values.254 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 3]
@__sancov_gen_cov_switch_values.255 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 3]
@__sancov_gen_cov_switch_values.256 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.257 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.258 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.259 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 3]
@__sancov_gen_cov_switch_values.260 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 3]
@__sancov_gen_cov_switch_values.261 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 3]
@__sancov_gen_cov_switch_values.262 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.263 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.264 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.265 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 3]
@__sancov_gen_cov_switch_values.266 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.267 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.268 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.269 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 3]
@__sancov_gen_cov_switch_values.270 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 3]
@__sancov_gen_cov_switch_values.271 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 3]
@__sancov_gen_cov_switch_values.272 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 3]
@__sancov_gen_cov_switch_values.273 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.274 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.275 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.276 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 3]
@__sancov_gen_cov_switch_values.277 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 3]
@__sancov_gen_cov_switch_values.278 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 3]
@__sancov_gen_cov_switch_values.279 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 3]
@__sancov_gen_cov_switch_values.280 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.281 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.282 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.283 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 3]
@__sancov_gen_cov_switch_values.284 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 3]
@__sancov_gen_cov_switch_values.285 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 3]
@__sancov_gen_cov_switch_values.286 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 3]
@__sancov_gen_cov_switch_values.287 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.288 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.289 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.290 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.291 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.292 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 3]
@__sancov_gen_cov_switch_values.293 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.294 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.295 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.296 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 3, i64 4, i64 71]
@__sancov_gen_cov_switch_values.297 = internal global [8 x i64] [i64 6, i64 8, i64 5, i64 6, i64 7, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.298 = internal global [8 x i64] [i64 6, i64 8, i64 6, i64 7, i64 8, i64 14, i64 15, i64 16]
@__sancov_gen_cov_switch_values.299 = internal global [9 x i64] [i64 7, i64 8, i64 1, i64 2, i64 3, i64 9, i64 10, i64 11, i64 71]
@__sancov_gen_cov_switch_values.300 = internal global [9 x i64] [i64 7, i64 8, i64 1, i64 2, i64 3, i64 4, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.301 = internal global [8 x i64] [i64 6, i64 8, i64 5, i64 6, i64 7, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.302 = internal global [8 x i64] [i64 6, i64 8, i64 6, i64 7, i64 8, i64 14, i64 15, i64 16]
@__sancov_gen_cov_switch_values.303 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 3, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.304 = internal global [8 x i64] [i64 6, i64 8, i64 2, i64 3, i64 4, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.305 = internal global [8 x i64] [i64 6, i64 8, i64 5, i64 6, i64 7, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.306 = internal global [8 x i64] [i64 6, i64 8, i64 6, i64 7, i64 8, i64 14, i64 15, i64 16]
@__sancov_gen_cov_switch_values.307 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 3, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.308 = internal global [8 x i64] [i64 6, i64 8, i64 2, i64 3, i64 4, i64 10, i64 11, i64 12]
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3534, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3634, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3656, i32 14 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3659, i32 15 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3660, i32 15 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3663, i32 16 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3664, i32 6 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3667, i32 16 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3668, i32 6 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3669, i32 40 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3669, i32 48 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3674, i32 16 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3675, i32 6 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3684, i32 16 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3685, i32 6 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3688, i32 16 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3689, i32 6 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3694, i32 16 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3695, i32 6 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3700, i32 16 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3701, i32 6 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3708, i32 16 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3709, i32 6 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3709, i32 38 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3709, i32 45 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3710, i32 39 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3711, i32 38 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3711, i32 47 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3712, i32 20 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3714, i32 5 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3714, i32 16 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3716, i32 16 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3717, i32 6 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3723, i32 16 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3724, i32 6 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3725, i32 29 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3725, i32 44 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3729, i32 18 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3736, i32 16 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3737, i32 6 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3738, i32 30 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3738, i32 41 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3739, i32 30 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3739, i32 41 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3744, i32 6 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3744, i32 18 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3746, i32 6 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3748, i32 16 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3749, i32 6 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3755, i32 6 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3758, i32 16 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3759, i32 6 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3763, i32 6 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3768, i32 6 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3770, i32 16 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3771, i32 6 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3775, i32 16 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3776, i32 6 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3782, i32 16 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3783, i32 6 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3790, i32 6 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3797, i32 16 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3798, i32 6 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3805, i32 6 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3810, i32 6 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3829, i32 6 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3837, i32 6 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3840, i32 16 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3841, i32 6 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3844, i32 6 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3856, i32 3 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3863, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3877, i32 3 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3881, i32 3 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3898, i32 3 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3901, i32 3 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3906, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3916, i32 3 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3919, i32 3 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3933, i32 3 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3936, i32 3 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3964, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3978, i32 3 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3998, i32 2 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 4006, i32 4 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 4009, i32 4 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 4014, i32 3 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 4046, i32 4 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 4061, i32 4 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 4123, i32 3 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 4128, i32 3 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 4133, i32 3 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 4137, i32 3 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 4141, i32 3 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 4167, i32 2 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 4178, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 4181, i32 3 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 4193, i32 3 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 4206, i32 2 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 4215, i32 4 }
@___asan_gen_.609 = private unnamed_addr constant [21 x i8] c"glcoex_dm_8723b_2ant\00", align 1
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 20, i32 34 }
@___asan_gen_.612 = private unnamed_addr constant [22 x i8] c"glcoex_sta_8723b_2ant\00", align 1
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 22, i32 35 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 878, i32 2 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 888, i32 3 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 892, i32 3 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 854, i32 2 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 858, i32 2 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 862, i32 2 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 866, i32 2 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 1223, i32 2 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 1240, i32 3 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 1243, i32 3 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 147, i32 5 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 151, i32 5 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 157, i32 5 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 161, i32 5 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 56, i32 5 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 60, i32 5 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 66, i32 5 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 70, i32 5 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 76, i32 4 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 86, i32 5 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 108, i32 5 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 1073, i32 2 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 724, i32 2 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 730, i32 3 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 644, i32 2 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 646, i32 2 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 671, i32 2 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 676, i32 3 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 660, i32 2 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 774, i32 2 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 781, i32 3 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 762, i32 2 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 26, i32 2 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 27, i32 2 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 28, i32 2 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 280, i32 2 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 283, i32 2 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 1033, i32 2 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 994, i32 2 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 337, i32 2 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3355, i32 2 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3359, i32 3 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3365, i32 3 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3373, i32 3 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3384, i32 3 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3397, i32 3 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3418, i32 2 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3423, i32 3 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3428, i32 4 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3436, i32 4 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3441, i32 4 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3446, i32 4 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3451, i32 4 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3456, i32 4 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3461, i32 4 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3466, i32 4 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3471, i32 4 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3476, i32 4 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3481, i32 4 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 3486, i32 4 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 449, i32 3 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 465, i32 4 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 470, i32 5 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 474, i32 5 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 479, i32 6 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 485, i32 6 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 496, i32 5 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 500, i32 5 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 505, i32 6 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 510, i32 6 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 520, i32 5 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 526, i32 6 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 531, i32 6 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 540, i32 6 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 546, i32 6 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 558, i32 5 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 564, i32 6 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 570, i32 6 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 579, i32 6 }
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 585, i32 6 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 597, i32 6 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 603, i32 6 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 617, i32 6 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 621, i32 6 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 1588, i32 3 }
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 1593, i32 3 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 1623, i32 2 }
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 1688, i32 3 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 1712, i32 4 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 1737, i32 4 }
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 1762, i32 5 }
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 1766, i32 5 }
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 1648, i32 3 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 821, i32 2 }
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 829, i32 3 }
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 800, i32 2 }
@___asan_gen_.921 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 1784, i32 13 }
@___asan_gen_.924 = private unnamed_addr constant [3 x i8] c"dn\00", align 1
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 1784, i32 17 }
@___asan_gen_.927 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 1784, i32 21 }
@___asan_gen_.930 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 1784, i32 24 }
@___asan_gen_.933 = private unnamed_addr constant [11 x i8] c"wait_count\00", align 1
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 1784, i32 27 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 1789, i32 2 }
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 1794, i32 3 }
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 1904, i32 3 }
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 1906, i32 3 }
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 1928, i32 5 }
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 1960, i32 5 }
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 1985, i32 4 }
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 1989, i32 3 }
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 2747, i32 3 }
@___asan_gen_.963 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.965 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 2759, i32 4 }
@___asan_gen_.966 = private unnamed_addr constant [14 x i8] c"pre_wifi_busy\00", align 1
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 346, i32 14 }
@___asan_gen_.969 = private unnamed_addr constant [15 x i8] c"pre_under_4way\00", align 1
@___asan_gen_.971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 347, i32 14 }
@___asan_gen_.972 = private unnamed_addr constant [13 x i8] c"pre_bt_hs_on\00", align 1
@___asan_gen_.973 = private constant [68 x i8] c"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c\00", align 1
@___asan_gen_.974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 348, i32 14 }
@llvm.compiler.used = appending global [222 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @glcoex_dm_8723b_2ant, ptr @glcoex_sta_8723b_2ant, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @btc8723b2ant_tdma_duration_adjust.up, ptr @btc8723b2ant_tdma_duration_adjust.dn, ptr @btc8723b2ant_tdma_duration_adjust.m, ptr @btc8723b2ant_tdma_duration_adjust.n, ptr @btc8723b2ant_tdma_duration_adjust.wait_count, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @btc8723b2ant_is_wifi_status_changed.pre_wifi_busy, ptr @btc8723b2ant_is_wifi_status_changed.pre_under_4way, ptr @btc8723b2ant_is_wifi_status_changed.pre_bt_hs_on], section "llvm.metadata"
@0 = internal global [222 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @glcoex_dm_8723b_2ant to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @glcoex_sta_8723b_2ant to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btc8723b2ant_tdma_duration_adjust.up to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btc8723b2ant_tdma_duration_adjust.dn to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btc8723b2ant_tdma_duration_adjust.m to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btc8723b2ant_tdma_duration_adjust.n to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btc8723b2ant_tdma_duration_adjust.wait_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btc8723b2ant_is_wifi_status_changed.pre_wifi_busy to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btc8723b2ant_is_wifi_status_changed.pre_under_4way to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btc8723b2ant_is_wifi_status_changed.pre_bt_hs_on to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8723b2ant_init_hwconfig(ptr noundef %btcoexist) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str) #4
  %btc_get_rf_reg = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 28
  %2 = ptrtoint ptr %btc_get_rf_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %btc_get_rf_reg, align 4
  %call = tail call i32 %3(ptr noundef %btcoexist, i8 noundef zeroext 0, i32 noundef 30, i32 noundef 1048575) #4
  store i32 %call, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 18), align 4
  %btc_read_1byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 17
  %4 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %btc_read_1byte, align 4
  %call1 = tail call zeroext i8 %5(ptr noundef %btcoexist, i32 noundef 1936) #4
  %6 = and i8 %call1, -64
  %7 = or i8 %6, 5
  %btc_write_1byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %8 = ptrtoint ptr %btc_write_1byte to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %btc_write_1byte, align 4
  %conv5 = zext i8 %7 to i32
  tail call void %9(ptr noundef %btcoexist, i32 noundef 1936, i32 noundef %conv5) #4
  tail call fastcc void @btc8723b2ant_set_ant_path(ptr noundef %btcoexist, i1 noundef zeroext true)
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 34), align 1
  tail call fastcc void @btc8723b2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext true, i32 noundef 1431655765, i32 noundef 1431655765) #4
  %10 = ptrtoint ptr %btc_write_1byte to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %btc_write_1byte, align 4
  tail call void %11(ptr noundef %btcoexist, i32 noundef 1902, i32 noundef 4) #4
  %12 = ptrtoint ptr %btc_write_1byte to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %btc_write_1byte, align 4
  tail call void %13(ptr noundef %btcoexist, i32 noundef 1912, i32 noundef 3) #4
  %btc_write_1byte_bitmask = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 19
  %14 = ptrtoint ptr %btc_write_1byte_bitmask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %btc_write_1byte_bitmask, align 4
  tail call void %15(ptr noundef %btcoexist, i32 noundef 64, i32 noundef 32, i8 noundef zeroext 1) #4
  %auto_report_2ant = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 8
  %16 = ptrtoint ptr %auto_report_2ant to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %auto_report_2ant, align 1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8723b2ant_set_ant_path(ptr noundef %btcoexist, i1 noundef zeroext %init_hwcfg) unnamed_addr #0 align 64 {
entry:
  %fw_ver = alloca i32, align 4
  %pg_ext_switch = alloca i8, align 1
  %h2c_parameter = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_ver) #4
  %0 = ptrtoint ptr %fw_ver to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %fw_ver, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pg_ext_switch) #4
  %1 = ptrtoint ptr %pg_ext_switch to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %pg_ext_switch, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %h2c_parameter) #4
  %2 = ptrtoint ptr %h2c_parameter to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %h2c_parameter, align 2
  %btc_get = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %3 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %btc_get, align 4
  %call = call zeroext i1 %4(ptr noundef %btcoexist, i8 noundef zeroext 17, ptr noundef nonnull %pg_ext_switch) #4
  %5 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %btc_get, align 4
  %call4 = call zeroext i1 %6(ptr noundef %btcoexist, i8 noundef zeroext 26, ptr noundef nonnull %fw_ver) #4
  %7 = ptrtoint ptr %fw_ver to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fw_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 786432, i32 %8)
  %cmp = icmp ult i32 %8, 786432
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %9 = ptrtoint ptr %pg_ext_switch to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pg_ext_switch, align 1, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
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
  %use_ext_switch.0.off0 = phi i1 [ true, %if.then ], [ false, %lor.lhs.false.if.end_crit_edge ]
  br i1 %init_hwcfg, label %if.then6, label %if.else29

if.then6:                                         ; preds = %if.end
  %btc_write_1byte_bitmask = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 19
  %11 = ptrtoint ptr %btc_write_1byte_bitmask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %btc_write_1byte_bitmask, align 4
  call void %12(ptr noundef %btcoexist, i32 noundef 57, i32 noundef 8, i8 noundef zeroext 1) #4
  %btc_write_1byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %13 = ptrtoint ptr %btc_write_1byte to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %btc_write_1byte, align 4
  call void %14(ptr noundef %btcoexist, i32 noundef 2420, i32 noundef 255) #4
  %15 = ptrtoint ptr %btc_write_1byte_bitmask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %btc_write_1byte_bitmask, align 4
  call void %16(ptr noundef %btcoexist, i32 noundef 2372, i32 noundef 3, i8 noundef zeroext 3) #4
  %17 = ptrtoint ptr %btc_write_1byte to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %btc_write_1byte, align 4
  call void %18(ptr noundef %btcoexist, i32 noundef 2352, i32 noundef 119) #4
  %19 = ptrtoint ptr %btc_write_1byte_bitmask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %btc_write_1byte_bitmask, align 4
  call void %20(ptr noundef %btcoexist, i32 noundef 103, i32 noundef 32, i8 noundef zeroext 1) #4
  %21 = ptrtoint ptr %fw_ver to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fw_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572863, i32 %22)
  %cmp10 = icmp ugt i32 %22, 1572863
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %h2c_parameter to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %h2c_parameter, align 2
  %btc_fill_h2c = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %24 = ptrtoint ptr %btc_fill_h2c to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %btc_fill_h2c, align 4
  call void %25(ptr noundef %btcoexist, i8 noundef zeroext 110, i32 noundef 1, ptr noundef nonnull %h2c_parameter) #4
  br label %if.end13

if.else:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %btc_write_1byte to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %btc_write_1byte, align 4
  call void %27(ptr noundef %btcoexist, i32 noundef 1893, i32 noundef 24) #4
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then11
  %btc_write_4byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 23
  %28 = ptrtoint ptr %btc_write_4byte to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %btc_write_4byte, align 4
  call void %29(ptr noundef %btcoexist, i32 noundef 2376, i32 noundef 0) #4
  %btc_set_rf_reg = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 27
  %30 = ptrtoint ptr %btc_set_rf_reg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %btc_set_rf_reg, align 4
  call void %31(ptr noundef %btcoexist, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 1048575, i32 noundef 0) #4
  %btdm_ant_pos = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 3
  %32 = ptrtoint ptr %btdm_ant_pos to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %btdm_ant_pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %33)
  %cmp14 = icmp ne i8 %33, 1
  %. = zext i1 %cmp14 to i8
  %34 = ptrtoint ptr %h2c_parameter to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %., ptr %h2c_parameter, align 2
  %arrayidx23 = getelementptr inbounds [2 x i8], ptr %h2c_parameter, i32 0, i32 1
  br i1 %use_ext_switch.0.off0, label %if.then41.thread, label %if.else59.thread

if.else29:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572863, i32 %8)
  %cmp30 = icmp ugt i32 %8, 1572863
  br i1 %cmp30, label %if.then32, label %if.else36

if.then32:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #6
  %35 = ptrtoint ptr %h2c_parameter to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %h2c_parameter, align 2
  %btc_fill_h2c34 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %36 = ptrtoint ptr %btc_fill_h2c34 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %btc_fill_h2c34, align 4
  call void %37(ptr noundef %btcoexist, i8 noundef zeroext 110, i32 noundef 1, ptr noundef nonnull %h2c_parameter) #4
  br label %if.end39

if.else36:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #6
  %btc_write_1byte37 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %38 = ptrtoint ptr %btc_write_1byte37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %btc_write_1byte37, align 4
  call void %39(ptr noundef %btcoexist, i32 noundef 1893, i32 noundef 0) #4
  br label %if.end39

if.end39:                                         ; preds = %if.else36, %if.then32
  br i1 %use_ext_switch.0.off0, label %if.end39.if.end46_crit_edge, label %if.end39.if.end67_crit_edge

if.end39.if.end67_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end67

if.end39.if.end46_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end46

if.else59.thread:                                 ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  %40 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %arrayidx23, align 1
  %btc_fill_h2c27 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %41 = ptrtoint ptr %btc_fill_h2c27 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %btc_fill_h2c27, align 4
  call void %42(ptr noundef %btcoexist, i8 noundef zeroext 101, i32 noundef 2, ptr noundef nonnull %h2c_parameter) #4
  %btc_read_4byte62 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 22
  %43 = ptrtoint ptr %btc_read_4byte62 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %btc_read_4byte62, align 4
  %call63 = call i32 %44(ptr noundef %btcoexist, i32 noundef 76) #4
  %or64 = and i32 %call63, -25165825
  %and65 = or i32 %or64, 8388608
  %45 = ptrtoint ptr %btc_write_4byte to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %btc_write_4byte, align 4
  call void %46(ptr noundef %btcoexist, i32 noundef 76, i32 noundef %and65) #4
  br label %if.end67

if.then41.thread:                                 ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  %47 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %arrayidx23, align 1
  %btc_fill_h2c271 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %48 = ptrtoint ptr %btc_fill_h2c271 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %btc_fill_h2c271, align 4
  call void %49(ptr noundef %btcoexist, i8 noundef zeroext 101, i32 noundef 2, ptr noundef nonnull %h2c_parameter) #4
  %btc_read_4byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 22
  %50 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %btc_read_4byte, align 4
  %call44 = call i32 %51(ptr noundef %btcoexist, i32 noundef 76) #4
  %and = and i32 %call44, -25165825
  %or = or i32 %and, 16777216
  %52 = ptrtoint ptr %btc_write_4byte to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %btc_write_4byte, align 4
  call void %53(ptr noundef %btcoexist, i32 noundef 76, i32 noundef %or) #4
  br label %if.end46

if.end46:                                         ; preds = %if.then41.thread, %if.end39.if.end46_crit_edge
  %btdm_ant_pos47 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 3
  %54 = ptrtoint ptr %btdm_ant_pos47 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %btdm_ant_pos47, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %55)
  %cmp49 = icmp eq i8 %55, 1
  %btc_write_2byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 21
  %56 = ptrtoint ptr %btc_write_2byte to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %btc_write_2byte, align 4
  %.2 = select i1 %cmp49, i16 0, i16 640
  call void %57(ptr noundef %btcoexist, i32 noundef 2376, i16 noundef zeroext %.2) #4
  %btc_write_1byte_bitmask56 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 19
  %58 = ptrtoint ptr %btc_write_1byte_bitmask56 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %btc_write_1byte_bitmask56, align 4
  call void %59(ptr noundef %btcoexist, i32 noundef 2348, i32 noundef 3, i8 noundef zeroext 1) #4
  br label %if.end75

if.end67:                                         ; preds = %if.else59.thread, %if.end39.if.end67_crit_edge
  %btc_write_1byte_bitmask68 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 19
  %60 = ptrtoint ptr %btc_write_1byte_bitmask68 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %btc_write_1byte_bitmask68, align 4
  call void %61(ptr noundef %btcoexist, i32 noundef 100, i32 noundef 1, i8 noundef zeroext 0) #4
  %btc_write_2byte71 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 21
  %62 = ptrtoint ptr %btc_write_2byte71 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %btc_write_2byte71, align 4
  call void %63(ptr noundef %btcoexist, i32 noundef 2376, i16 noundef zeroext 0) #4
  br label %if.end75

if.end75:                                         ; preds = %if.end67, %if.end46
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %h2c_parameter) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pg_ext_switch) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_ver) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8723b2ant_power_on_setting(ptr noundef %btcoexist) local_unnamed_addr #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #4
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %value, align 4
  %btc_write_1byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %1 = ptrtoint ptr %btc_write_1byte to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %btc_write_1byte, align 4
  tail call void %2(ptr noundef %btcoexist, i32 noundef 103, i32 noundef 32) #4
  %btc_read_2byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 20
  %3 = ptrtoint ptr %btc_read_2byte to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %btc_read_2byte, align 4
  %call = tail call zeroext i16 %4(ptr noundef %btcoexist, i32 noundef 2) #4
  %btc_write_2byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 21
  %5 = ptrtoint ptr %btc_write_2byte to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %btc_write_2byte, align 4
  %7 = or i16 %call, 3
  tail call void %6(ptr noundef %btcoexist, i32 noundef 2, i16 noundef zeroext %7) #4
  %btc_write_4byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 23
  %8 = ptrtoint ptr %btc_write_4byte to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %btc_write_4byte, align 4
  tail call void %9(ptr noundef %btcoexist, i32 noundef 2376, i32 noundef 0) #4
  %chip_interface = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 5
  %10 = ptrtoint ptr %chip_interface to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chip_interface, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp = icmp eq i32 %11, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %btdm_ant_pos = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 3
  %12 = ptrtoint ptr %btdm_ant_pos to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %btdm_ant_pos, align 1
  br label %if.end19

if.else:                                          ; preds = %entry
  %single_ant_path = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 4
  %13 = ptrtoint ptr %single_ant_path to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %single_ant_path, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i8 %14, label %if.else.if.end17_crit_edge [
    i8 0, label %if.else.if.end17.sink.split_crit_edge
    i8 1, label %if.then15
  ]

if.else.if.end17.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17.sink.split

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17.sink.split

if.end17.sink.split:                              ; preds = %if.then15, %if.else.if.end17.sink.split_crit_edge
  %.sink = phi i8 [ 2, %if.then15 ], [ 1, %if.else.if.end17.sink.split_crit_edge ]
  %btdm_ant_pos16 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 3
  %16 = ptrtoint ptr %btdm_ant_pos16 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %.sink, ptr %btdm_ant_pos16, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.end17.sink.split, %if.else.if.end17_crit_edge
  %btc_set = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %17 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %btc_set, align 4
  %call18 = call zeroext i1 %18(ptr noundef %btcoexist, i8 noundef zeroext 14, ptr noundef nonnull %value) #4
  br label %if.end19

if.end19:                                         ; preds = %if.end17, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8723b2ant_pre_load_firmware(ptr noundef %btcoexist) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_interface = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 5
  %0 = ptrtoint ptr %chip_interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chip_interface, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %btc_write_local_reg_1byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 24
  %2 = ptrtoint ptr %btc_write_local_reg_1byte to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %btc_write_local_reg_1byte, align 4
  tail call void %3(ptr noundef %btcoexist, i32 noundef 65032, i8 noundef zeroext 5) #4
  br label %if.end30

if.else:                                          ; preds = %entry
  %single_ant_path = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 4
  %4 = ptrtoint ptr %single_ant_path to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %single_ant_path, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cond = icmp eq i8 %5, 1
  %spec.select = select i1 %cond, i8 5, i8 4
  %6 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.216)
  switch i32 %1, label %if.else.if.end30_crit_edge [
    i32 1, label %if.then20
    i32 3, label %if.then26
  ]

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %btc_write_local_reg_1byte21 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 24
  %7 = ptrtoint ptr %btc_write_local_reg_1byte21 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %btc_write_local_reg_1byte21, align 4
  tail call void %8(ptr noundef %btcoexist, i32 noundef 900, i8 noundef zeroext %spec.select) #4
  br label %if.end30

if.then26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %btc_write_local_reg_1byte27 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 24
  %9 = ptrtoint ptr %btc_write_local_reg_1byte27 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %btc_write_local_reg_1byte27, align 4
  tail call void %10(ptr noundef %btcoexist, i32 noundef 96, i8 noundef zeroext %spec.select) #4
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.then20, %if.else.if.end30_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8723b2ant_init_coex_dm(ptr noundef %btcoexist) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.1) #4
  tail call fastcc void @btc8723b2ant_init_coex_dm(ptr noundef %btcoexist)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8723b2ant_init_coex_dm(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i.i6 = alloca [1 x i8], align 1
  %h2c_parameter.i.i = alloca [1 x i8], align 1
  %low_pwr_disable.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @btc8723b2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1431655765) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  %0 = ptrtoint ptr %low_pwr_disable.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %low_pwr_disable.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %1 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %btc_set.i, align 4
  %call5.i = call zeroext i1 %2(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i) #4
  %3 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %btc_set.i, align 4
  %call7.i = call zeroext i1 %4(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 33), align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext true, i1 noundef zeroext false, i8 noundef zeroext 1)
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %5 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adapter.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %6, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.101, i32 noundef 6) #4
  store i8 6, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 3), align 1
  %7 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  %9 = ptrtoint ptr %h2c_parameter.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 6, ptr %h2c_parameter.i.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %8, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131, i32 noundef 6) #4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %8, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef 6) #4
  %btc_fill_h2c.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %10 = ptrtoint ptr %btc_fill_h2c.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %btc_fill_h2c.i.i, align 4
  call void %11(ptr noundef %btcoexist, i8 noundef zeroext 100, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  %12 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 3), align 1
  store i8 %12, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 2), align 2
  %13 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %14, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef 0) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1
  %15 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i6) #4
  %17 = ptrtoint ptr %h2c_parameter.i.i6 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %h2c_parameter.i.i6, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %16, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.135, i32 noundef 0) #4
  %18 = ptrtoint ptr %btc_fill_h2c.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %btc_fill_h2c.i.i, align 4
  call void %19(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i6) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i6) #4
  %20 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1, !range !465
  store i8 %20, ptr @glcoex_dm_8723b_2ant, align 4
  call fastcc void @btc8723b2ant_sw_mechanism(ptr noundef %btcoexist, i1 noundef zeroext false)
  store i32 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 23), align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8723b2ant_display_coex_info(ptr noundef %btcoexist, ptr noundef %m) local_unnamed_addr #0 align 64 {
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
  %ap_num = alloca i8, align 1
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
  store i32 -1, ptr %wifi_bw, align 4, !annotation !466
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_traffic_dir) #4
  %9 = ptrtoint ptr %wifi_traffic_dir to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %wifi_traffic_dir, align 4, !annotation !466
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_dot11_chnl) #4
  %10 = ptrtoint ptr %wifi_dot11_chnl to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %wifi_dot11_chnl, align 1, !annotation !466
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_hs_chnl) #4
  %11 = ptrtoint ptr %wifi_hs_chnl to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %wifi_hs_chnl, align 1, !annotation !466
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_ver) #4
  %12 = ptrtoint ptr %fw_ver to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %fw_ver, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bt_patch_ver) #4
  %13 = ptrtoint ptr %bt_patch_ver to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %bt_patch_ver, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ap_num) #4
  %14 = ptrtoint ptr %ap_num to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %ap_num, align 1
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.2) #4
  %manual_control = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 13
  %15 = ptrtoint ptr %manual_control to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %manual_control, align 2, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.3) #4
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.4) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pg_ant_num = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %pg_ant_num to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pg_ant_num, align 1
  %conv = zext i8 %18 to i32
  %btdm_ant_num = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %btdm_ant_num to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %btdm_ant_num, align 1
  %conv4 = zext i8 %20 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %conv, i32 noundef %conv4) #4
  %21 = ptrtoint ptr %stack_info2 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %stack_info2, align 2, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool5.not = icmp eq i8 %22, 0
  %cond = select i1 %tobool5.not, ptr @.str.10, ptr @.str.9
  %hci_version = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 4, i32 1
  %23 = ptrtoint ptr %hci_version to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %hci_version, align 2
  %conv7 = zext i16 %24 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull %cond, i32 noundef %conv7) #4
  %btc_get = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %25 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %btc_get, align 4
  %call = call zeroext i1 %26(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %bt_patch_ver) #4
  %27 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %btc_get, align 4
  %call9 = call zeroext i1 %28(ptr noundef %btcoexist, i8 noundef zeroext 26, ptr noundef nonnull %fw_ver) #4
  %29 = ptrtoint ptr %fw_ver to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fw_ver, align 4
  %31 = ptrtoint ptr %bt_patch_ver to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bt_patch_ver, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 20131113, i32 noundef 63, i32 noundef %30, i32 noundef %32, i32 noundef %32) #4
  %33 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %btc_get, align 4
  %call11 = call zeroext i1 %34(ptr noundef %btcoexist, i8 noundef zeroext 0, ptr noundef nonnull %bt_hs_on) #4
  %35 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %btc_get, align 4
  %call13 = call zeroext i1 %36(ptr noundef %btcoexist, i8 noundef zeroext 37, ptr noundef nonnull %wifi_dot11_chnl) #4
  %37 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %btc_get, align 4
  %call15 = call zeroext i1 %38(ptr noundef %btcoexist, i8 noundef zeroext 39, ptr noundef nonnull %wifi_hs_chnl) #4
  %39 = ptrtoint ptr %wifi_dot11_chnl to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %wifi_dot11_chnl, align 1
  %conv16 = zext i8 %40 to i32
  %41 = ptrtoint ptr %wifi_hs_chnl to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %wifi_hs_chnl, align 1
  %conv17 = zext i8 %42 to i32
  %43 = ptrtoint ptr %bt_hs_on to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %bt_hs_on, align 1, !range !465
  %45 = zext i8 %44 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %conv16, i32 noundef %conv17, i32 noundef %45) #4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 41)) #4
  %46 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %btc_get, align 4
  %call21 = call zeroext i1 %47(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi) #4
  %48 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %btc_get, align 4
  %call23 = call zeroext i1 %49(ptr noundef %btcoexist, i8 noundef zeroext 23, ptr noundef nonnull %bt_hs_rssi) #4
  %50 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %btc_get, align 4
  %call25 = call zeroext i1 %51(ptr noundef %btcoexist, i8 noundef zeroext 41, ptr noundef nonnull %ap_num) #4
  %52 = ptrtoint ptr %wifi_rssi to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %wifi_rssi, align 4
  %54 = ptrtoint ptr %bt_hs_rssi to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bt_hs_rssi, align 4
  %56 = ptrtoint ptr %ap_num to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %ap_num, align 1
  %conv26 = zext i8 %57 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %53, i32 noundef %55, i32 noundef %conv26) #4
  %58 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %btc_get, align 4
  %call28 = call zeroext i1 %59(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %scan) #4
  %60 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %btc_get, align 4
  %call30 = call zeroext i1 %61(ptr noundef %btcoexist, i8 noundef zeroext 6, ptr noundef nonnull %link) #4
  %62 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %btc_get, align 4
  %call32 = call zeroext i1 %63(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %roam) #4
  %64 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %link, align 1, !range !465
  %66 = zext i8 %65 to i32
  %67 = ptrtoint ptr %roam to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %roam, align 1, !range !465
  %69 = zext i8 %68 to i32
  %70 = ptrtoint ptr %scan to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %scan, align 1, !range !465
  %72 = zext i8 %71 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef %66, i32 noundef %69, i32 noundef %72) #4
  %73 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %btc_get, align 4
  %call40 = call zeroext i1 %74(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef nonnull %wifi_under_5g) #4
  %75 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %btc_get, align 4
  %call42 = call zeroext i1 %76(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef nonnull %wifi_bw) #4
  %77 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %btc_get, align 4
  %call44 = call zeroext i1 %78(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %wifi_busy) #4
  %79 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %btc_get, align 4
  %call46 = call zeroext i1 %80(ptr noundef %btcoexist, i8 noundef zeroext 25, ptr noundef nonnull %wifi_traffic_dir) #4
  %81 = ptrtoint ptr %wifi_under_5g to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %wifi_under_5g, align 1, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool47.not = icmp eq i8 %82, 0
  %cond49 = select i1 %tobool47.not, ptr @.str.24, ptr @.str.23
  %83 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %wifi_bw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp = icmp eq i32 %84, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %84)
  %cmp51 = icmp eq i32 %84, 2
  %cond53 = select i1 %cmp51, ptr @.str.26, ptr @.str.27
  %cond54 = select i1 %cmp, ptr @.str.25, ptr %cond53
  %85 = ptrtoint ptr %wifi_busy to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %wifi_busy, align 1, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool55.not = icmp eq i8 %86, 0
  br i1 %tobool55.not, label %if.end.cond.end61_crit_edge, label %cond.false57

if.end.cond.end61_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end61

cond.false57:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %87 = ptrtoint ptr %wifi_traffic_dir to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %wifi_traffic_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp58 = icmp eq i32 %88, 0
  %cond60 = select i1 %cmp58, ptr @.str.29, ptr @.str.30
  br label %cond.end61

cond.end61:                                       ; preds = %cond.false57, %if.end.cond.end61_crit_edge
  %cond62 = phi ptr [ %cond60, %cond.false57 ], [ @.str.28, %if.end.cond.end61_crit_edge ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull %cond49, ptr noundef nonnull %cond54, ptr noundef nonnull %cond62) #4
  %sco_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 2
  %89 = ptrtoint ptr %sco_exist to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %sco_exist, align 1, !range !465
  %91 = zext i8 %90 to i32
  %hid_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 6
  %92 = ptrtoint ptr %hid_exist to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %hid_exist, align 1, !range !465
  %94 = zext i8 %93 to i32
  %pan_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 8
  %95 = ptrtoint ptr %pan_exist to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %pan_exist, align 1, !range !465
  %97 = zext i8 %96 to i32
  %a2dp_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 4
  %98 = ptrtoint ptr %a2dp_exist to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %a2dp_exist, align 1, !range !465
  %100 = zext i8 %99 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef %91, i32 noundef %94, i32 noundef %97, i32 noundef %100) #4
  %btc_disp_dbg_msg = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 30
  %101 = ptrtoint ptr %btc_disp_dbg_msg to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %btc_disp_dbg_msg, align 4
  call void %102(ptr noundef %btcoexist, i8 noundef zeroext 1, ptr noundef %m) #4
  %103 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 22), align 1
  %104 = and i8 %103, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool73.not = icmp eq i8 %104, 0
  %cond74 = select i1 %tobool73.not, ptr @.str.36, ptr @.str.35
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull %cond74) #4
  %105 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 18, i32 0), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool78.not = icmp eq i32 %105, 0
  br i1 %tobool78.not, label %cond.end61.for.inc_crit_edge, label %if.then79

cond.end61.for.inc_crit_edge:                     ; preds = %cond.end61
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then79:                                        ; preds = %cond.end61
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.141, ptr noundef getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 17, i32 0), i32 noundef %105) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then79, %cond.end61.for.inc_crit_edge
  %106 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 18, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool78.not.1 = icmp eq i32 %106, 0
  br i1 %tobool78.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then79.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

if.then79.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.142, ptr noundef getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 17, i32 1), i32 noundef %106) #4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then79.1, %for.inc.for.inc.1_crit_edge
  %107 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 18, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool78.not.2 = icmp eq i32 %107, 0
  br i1 %tobool78.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then79.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2

if.then79.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.143, ptr noundef getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 17, i32 2), i32 noundef %107) #4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then79.2, %for.inc.1.for.inc.2_crit_edge
  %108 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 7), align 1, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool89.not = icmp eq i8 %108, 0
  %cond91 = select i1 %tobool89.not, ptr @.str.41, ptr @.str.40
  %109 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 6), align 2, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool92.not = icmp eq i8 %109, 0
  %cond94 = select i1 %tobool92.not, ptr @.str.43, ptr @.str.42
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, ptr noundef nonnull %cond91, ptr noundef nonnull %cond94) #4
  %110 = ptrtoint ptr %btc_disp_dbg_msg to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %btc_disp_dbg_msg, align 4
  call void %111(ptr noundef %btcoexist, i8 noundef zeroext 3, ptr noundef %m) #4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45) #4
  %112 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 17), align 1, !range !465
  %113 = zext i8 %112 to i32
  %114 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 20), align 1, !range !465
  %115 = zext i8 %114 to i32
  %116 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 37), align 2, !range !465
  %117 = zext i8 %116 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.46, i32 noundef %113, i32 noundef %115, i32 noundef %117) #4
  %118 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 28), align 1, !range !465
  %119 = zext i8 %118 to i32
  %120 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 26), align 1, !range !465
  %121 = zext i8 %120 to i32
  %122 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 23), align 4, !range !465
  %123 = zext i8 %122 to i32
  %124 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 24), align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef %119, i32 noundef %121, i32 noundef %123, i32 noundef %124) #4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.49) #4
  %125 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 7), align 1
  %conv109 = zext i8 %125 to i32
  %126 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 11), align 1, !range !465
  %127 = zext i8 %126 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, ptr noundef getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 8), i32 noundef %conv109, i32 noundef %127) #4
  %128 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1, !range !465
  %129 = zext i8 %128 to i32
  %130 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 4), align 4, !range !465
  %131 = zext i8 %130 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.52, i32 noundef %129, i32 noundef %131) #4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.53) #4
  %132 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 18), align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, i32 noundef %132) #4
  %btc_read_1byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 17
  %133 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %btc_read_1byte, align 4
  %call116 = call zeroext i8 %134(ptr noundef %btcoexist, i32 noundef 1912) #4
  %btc_read_4byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 22
  %135 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %btc_read_4byte, align 4
  %call118 = call i32 %136(ptr noundef %btcoexist, i32 noundef 2176) #4
  %conv121 = zext i8 %call116 to i32
  %and123 = lshr i32 %call118, 25
  %shr = and i32 %and123, 31
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, i32 noundef %conv121, i32 noundef %shr) #4
  %137 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %btc_read_4byte, align 4
  %call125 = call i32 %138(ptr noundef %btcoexist, i32 noundef 2376) #4
  %139 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %btc_read_1byte, align 4
  %call128 = call zeroext i8 %140(ptr noundef %btcoexist, i32 noundef 103) #4
  %141 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %btc_read_1byte, align 4
  %call131 = call zeroext i8 %142(ptr noundef %btcoexist, i32 noundef 1893) #4
  %143 = lshr i8 %call128, 5
  %144 = and i8 %143, 1
  %145 = zext i8 %144 to i32
  %conv139 = zext i8 %call131 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, i32 noundef %call125, i32 noundef %145, i32 noundef %conv139) #4
  %146 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %btc_read_4byte, align 4
  %call141 = call i32 %147(ptr noundef %btcoexist, i32 noundef 2348) #4
  %148 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %btc_read_4byte, align 4
  %call144 = call i32 %149(ptr noundef %btcoexist, i32 noundef 2352) #4
  %150 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %btc_read_4byte, align 4
  %call147 = call i32 %151(ptr noundef %btcoexist, i32 noundef 2372) #4
  %and150 = and i32 %call141, 3
  %and152 = and i32 %call144, 255
  %and154 = and i32 %call147, 3
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.60, i32 noundef %and150, i32 noundef %and152, i32 noundef %and154) #4
  %152 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %btc_read_1byte, align 4
  %call156 = call zeroext i8 %153(ptr noundef %btcoexist, i32 noundef 57) #4
  %154 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %btc_read_1byte, align 4
  %call159 = call zeroext i8 %155(ptr noundef %btcoexist, i32 noundef 64) #4
  %156 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %btc_read_4byte, align 4
  %call162 = call i32 %157(ptr noundef %btcoexist, i32 noundef 76) #4
  %158 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %btc_read_1byte, align 4
  %call165 = call zeroext i8 %159(ptr noundef %btcoexist, i32 noundef 100) #4
  %160 = lshr i8 %call156, 3
  %161 = and i8 %160, 1
  %162 = zext i8 %161 to i32
  %conv172 = zext i8 %call159 to i32
  %and174 = lshr i32 %call162, 23
  %shr175 = and i32 %and174, 3
  %163 = and i8 %call165, 1
  %and178 = zext i8 %163 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef %162, i32 noundef %conv172, i32 noundef %shr175, i32 noundef %and178) #4
  %164 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %btc_read_4byte, align 4
  %call180 = call i32 %165(ptr noundef %btcoexist, i32 noundef 1360) #4
  %166 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %btc_read_1byte, align 4
  %call183 = call zeroext i8 %167(ptr noundef %btcoexist, i32 noundef 1314) #4
  %conv187 = zext i8 %call183 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.63, i32 noundef %call180, i32 noundef %conv187) #4
  %168 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %btc_read_4byte, align 4
  %call189 = call i32 %169(ptr noundef %btcoexist, i32 noundef 3152) #4
  %170 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %btc_read_1byte, align 4
  %call192 = call zeroext i8 %171(ptr noundef %btcoexist, i32 noundef 1180) #4
  %and195 = and i32 %call189, 255
  %conv197 = zext i8 %call192 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.64, i32 noundef %and195, i32 noundef %conv197) #4
  %172 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %btc_read_4byte, align 4
  %call199 = call i32 %173(ptr noundef %btcoexist, i32 noundef 3488) #4
  %174 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %btc_read_4byte, align 4
  %call202 = call i32 %175(ptr noundef %btcoexist, i32 noundef 3492) #4
  %176 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %btc_read_4byte, align 4
  %call205 = call i32 %177(ptr noundef %btcoexist, i32 noundef 3496) #4
  %178 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %btc_read_4byte, align 4
  %call208 = call i32 %179(ptr noundef %btcoexist, i32 noundef 3312) #4
  %180 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %btc_read_1byte, align 4
  %call211 = call zeroext i8 %181(ptr noundef %btcoexist, i32 noundef 2651) #4
  %182 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %btc_read_1byte, align 4
  %call214 = call zeroext i8 %183(ptr noundef %btcoexist, i32 noundef 2652) #4
  %shr218 = lshr i32 %call199, 16
  %shr221 = lshr i32 %call202, 16
  %add = add nuw nsw i32 %shr221, %shr218
  %and223 = and i32 %call202, 65535
  %add224 = add nuw nsw i32 %add, %and223
  %and226 = and i32 %call205, 65535
  %add227 = add nuw nsw i32 %add224, %and226
  %shr230 = lshr i32 %call208, 16
  %add231 = add nuw nsw i32 %add227, %shr230
  %and233 = and i32 %call208, 65535
  %add234 = add nuw nsw i32 %add231, %and233
  %conv236 = zext i8 %call211 to i32
  %shl = shl nuw nsw i32 %conv236, 8
  %conv238 = zext i8 %call214 to i32
  %add239 = or i32 %shl, %conv238
  %and241 = and i32 %call199, 65535
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.65, i32 noundef %and241, i32 noundef %add234, i32 noundef %add239) #4
  %184 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %btc_read_4byte, align 4
  %call243 = call i32 %185(ptr noundef %btcoexist, i32 noundef 1728) #4
  %186 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %btc_read_4byte, align 4
  %call246 = call i32 %187(ptr noundef %btcoexist, i32 noundef 1732) #4
  %188 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %btc_read_4byte, align 4
  %call249 = call i32 %189(ptr noundef %btcoexist, i32 noundef 1736) #4
  %190 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %btc_read_1byte, align 4
  %call252 = call zeroext i8 %191(ptr noundef %btcoexist, i32 noundef 1740) #4
  %conv258 = zext i8 %call252 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.66, i32 noundef %call243, i32 noundef %call246, i32 noundef %call249, i32 noundef %conv258) #4
  %192 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 9), align 4
  %193 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 8), align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef %192, i32 noundef %193) #4
  %194 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 11), align 4
  %195 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 10), align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.69, i32 noundef %194, i32 noundef %195) #4
  %auto_report_2ant = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 8
  %196 = ptrtoint ptr %auto_report_2ant to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %auto_report_2ant, align 1, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %197)
  %tobool259.not = icmp eq i8 %197, 0
  br i1 %tobool259.not, label %for.inc.2.if.end261_crit_edge, label %if.then260

for.inc.2.if.end261_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end261

if.then260:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8723b2ant_monitor_bt_ctr(ptr noundef %btcoexist)
  br label %if.end261

if.end261:                                        ; preds = %if.then260, %for.inc.2.if.end261_crit_edge
  %198 = ptrtoint ptr %btc_disp_dbg_msg to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %btc_disp_dbg_msg, align 4
  call void %199(ptr noundef %btcoexist, i8 noundef zeroext 0, ptr noundef %m) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ap_num) #4
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
define internal fastcc void @btc8723b2ant_monitor_bt_ctr(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %btc_read_4byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 22
  %2 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %btc_read_4byte, align 4
  %call = tail call i32 %3(ptr noundef %btcoexist, i32 noundef 1904) #4
  %and = and i32 %call, 65535
  %shr = lshr i32 %call, 16
  %4 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %btc_read_4byte, align 4
  %call4 = tail call i32 %5(ptr noundef %btcoexist, i32 noundef 1908) #4
  %and5 = and i32 %call4, 65535
  %shr7 = lshr i32 %call4, 16
  store i32 %and, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 8), align 4
  store i32 %shr, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 9), align 4
  store i32 %and5, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 10), align 4
  store i32 %shr7, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 11), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1050, i32 %and5)
  %cmp = icmp ugt i32 %and5, 1050
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 19), align 4, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %7 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 23), align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 23), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 62259200, i32 %call4)
  %cmp10 = icmp ult i32 %call4, 62259200
  call void @__sanitizer_cov_trace_cmp4(i32 %shr7, i32 %and5)
  %cmp14.not = icmp ult i32 %shr7, %and5
  %or.cond = or i1 %cmp10, %cmp14.not
  br i1 %or.cond, label %if.end.if.else_crit_edge, label %land.lhs.true15

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true15:                                  ; preds = %if.end
  %8 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 7), align 1, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool16.not = icmp eq i8 %8, 0
  br i1 %tobool16.not, label %land.lhs.true15.if.end19_crit_edge, label %land.lhs.true15.if.else_crit_edge

land.lhs.true15.if.else_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true15.if.end19_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

if.else:                                          ; preds = %land.lhs.true15.if.else_crit_edge, %if.end.if.else_crit_edge
  br label %if.end19

if.end19:                                         ; preds = %if.else, %land.lhs.true15.if.end19_crit_edge
  %.sink = phi i8 [ 0, %if.else ], [ 1, %land.lhs.true15.if.end19_crit_edge ]
  %slave_role18 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 10
  %9 = ptrtoint ptr %slave_role18 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %.sink, ptr %slave_role18, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.144, i32 noundef 1904, i32 noundef %and, i32 noundef %and, i32 noundef %shr, i32 noundef %shr) #4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.145, i32 noundef 1908, i32 noundef %and5, i32 noundef %and5, i32 noundef %shr7, i32 noundef %shr7) #4
  %btc_write_1byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %10 = ptrtoint ptr %btc_write_1byte to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %btc_write_1byte, align 4
  tail call void %11(ptr noundef %btcoexist, i32 noundef 1902, i32 noundef 12) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8723b2ant_ips_notify(ptr noundef %btcoexist, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i20 = alloca [1 x i8], align 1
  %h2c_parameter.i.i = alloca [1 x i8], align 1
  %is_in_mp_mode.i = alloca i8, align 1
  %h2c_parameter.i = alloca [2 x i8], align 2
  %fw_ver.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %2 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.217)
  switch i8 %type, label %entry.if.end7_crit_edge [
    i8 1, label %if.then
    i8 0, label %if.then5
  ]

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then:                                          ; preds = %entry
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.70) #4
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 7), align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %is_in_mp_mode.i) #4
  %3 = ptrtoint ptr %is_in_mp_mode.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %is_in_mp_mode.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %h2c_parameter.i) #4
  %4 = ptrtoint ptr %h2c_parameter.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %h2c_parameter.i, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_ver.i) #4
  %5 = ptrtoint ptr %fw_ver.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %fw_ver.i, align 4
  %btc_write_1byte.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %6 = ptrtoint ptr %btc_write_1byte.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %btc_write_1byte.i, align 4
  tail call void %7(ptr noundef %btcoexist, i32 noundef 1902, i32 noundef 4) #4
  %btc_set_rf_reg.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 27
  %8 = ptrtoint ptr %btc_set_rf_reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %btc_set_rf_reg.i, align 4
  tail call void %9(ptr noundef %btcoexist, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 1048575, i32 noundef 1920) #4
  %btc_get.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %10 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %btc_get.i, align 4
  %call.i = call zeroext i1 %11(ptr noundef %btcoexist, i8 noundef zeroext 26, ptr noundef nonnull %fw_ver.i) #4
  %12 = ptrtoint ptr %fw_ver.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fw_ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572863, i32 %13)
  %cmp.i = icmp ugt i32 %13, 1572863
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %h2c_parameter.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %h2c_parameter.i, align 2
  %btc_fill_h2c.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %15 = ptrtoint ptr %btc_fill_h2c.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %btc_fill_h2c.i, align 4
  call void %16(ptr noundef %btcoexist, i8 noundef zeroext 110, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i) #4
  br label %btc8723b2ant_wifioff_hwcfg.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %btc_write_1byte.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %btc_write_1byte.i, align 4
  call void %18(ptr noundef %btcoexist, i32 noundef 1893, i32 noundef 24) #4
  br label %btc8723b2ant_wifioff_hwcfg.exit

btc8723b2ant_wifioff_hwcfg.exit:                  ; preds = %if.else.i, %if.then.i
  %19 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %btc_get.i, align 4
  %call3.i = call zeroext i1 %20(ptr noundef %btcoexist, i8 noundef zeroext 18, ptr noundef nonnull %is_in_mp_mode.i) #4
  %21 = ptrtoint ptr %is_in_mp_mode.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %is_in_mp_mode.i, align 1, !range !465
  %btc_write_1byte_bitmask.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 19
  %23 = ptrtoint ptr %btc_write_1byte_bitmask.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %btc_write_1byte_bitmask.i, align 4
  call void %24(ptr noundef %btcoexist, i32 noundef 103, i32 noundef 32, i8 noundef zeroext %22) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_ver.i) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %h2c_parameter.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %is_in_mp_mode.i) #4
  %25 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %26, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.110) #4
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 4), align 4
  %27 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  %29 = ptrtoint ptr %h2c_parameter.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %h2c_parameter.i.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %28, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.148, i32 noundef 1) #4
  %btc_fill_h2c.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %30 = ptrtoint ptr %btc_fill_h2c.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %btc_fill_h2c.i.i, align 4
  call void %31(ptr noundef %btcoexist, i8 noundef zeroext 99, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  %32 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 4), align 4, !range !465
  store i8 %32, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 5), align 1
  call fastcc void @btc8723b2ant_coex_alloff(ptr noundef %btcoexist)
  br label %if.end7

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.71) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 7), align 1
  %33 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %adapter, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %34, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str) #4
  %btc_get_rf_reg.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 28
  %35 = ptrtoint ptr %btc_get_rf_reg.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %btc_get_rf_reg.i, align 4
  %call.i17 = tail call i32 %36(ptr noundef %btcoexist, i8 noundef zeroext 0, i32 noundef 30, i32 noundef 1048575) #4
  store i32 %call.i17, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 18), align 4
  %btc_read_1byte.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 17
  %37 = ptrtoint ptr %btc_read_1byte.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %btc_read_1byte.i, align 4
  %call1.i = tail call zeroext i8 %38(ptr noundef %btcoexist, i32 noundef 1936) #4
  %39 = and i8 %call1.i, -64
  %40 = or i8 %39, 5
  %btc_write_1byte.i18 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %41 = ptrtoint ptr %btc_write_1byte.i18 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %btc_write_1byte.i18, align 4
  %conv5.i = zext i8 %40 to i32
  tail call void %42(ptr noundef %btcoexist, i32 noundef 1936, i32 noundef %conv5.i) #4
  tail call fastcc void @btc8723b2ant_set_ant_path(ptr noundef %btcoexist, i1 noundef zeroext true) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 34), align 1
  tail call fastcc void @btc8723b2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext true, i32 noundef 1431655765, i32 noundef 1431655765) #4
  %43 = ptrtoint ptr %btc_write_1byte.i18 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %btc_write_1byte.i18, align 4
  tail call void %44(ptr noundef %btcoexist, i32 noundef 1902, i32 noundef 4) #4
  %45 = ptrtoint ptr %btc_write_1byte.i18 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %btc_write_1byte.i18, align 4
  tail call void %46(ptr noundef %btcoexist, i32 noundef 1912, i32 noundef 3) #4
  %btc_write_1byte_bitmask.i19 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 19
  %47 = ptrtoint ptr %btc_write_1byte_bitmask.i19 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %btc_write_1byte_bitmask.i19, align 4
  tail call void %48(ptr noundef %btcoexist, i32 noundef 64, i32 noundef 32, i8 noundef zeroext 1) #4
  %auto_report_2ant.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 8
  %49 = ptrtoint ptr %auto_report_2ant.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %auto_report_2ant.i, align 1
  tail call fastcc void @btc8723b2ant_init_coex_dm(ptr noundef %btcoexist)
  %50 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i20) #4
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 16), align 1
  %52 = ptrtoint ptr %h2c_parameter.i20 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %h2c_parameter.i20, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %51, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.149, i32 noundef 1) #4
  %btc_fill_h2c.i22 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %53 = ptrtoint ptr %btc_fill_h2c.i22 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %btc_fill_h2c.i22, align 4
  call void %54(ptr noundef %btcoexist, i8 noundef zeroext 97, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i20) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i20) #4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %btc8723b2ant_wifioff_hwcfg.exit, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8723b2ant_coex_alloff(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i.i = alloca [1 x i8], align 1
  %low_pwr_disable.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  %0 = ptrtoint ptr %low_pwr_disable.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %low_pwr_disable.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %1 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %btc_set.i, align 4
  %call5.i = call zeroext i1 %2(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i) #4
  %3 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %btc_set.i, align 4
  %call7.i = call zeroext i1 %4(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 33), align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 1)
  call fastcc void @btc8723b2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 6)
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %5 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adapter.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %6, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef 0) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1
  %7 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %8 = zext i8 %7 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %6, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.134, i32 noundef %8, i32 noundef 0) #4
  %9 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %10 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1, !range !465
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %10)
  %cmp.i = icmp eq i8 %9, %10
  br i1 %cmp.i, label %entry.btc8723b2ant_dec_bt_pwr.exit_crit_edge, label %if.end16.i

entry.btc8723b2ant_dec_bt_pwr.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8723b2ant_dec_bt_pwr.exit

if.end16.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  %13 = ptrtoint ptr %h2c_parameter.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %10, ptr %h2c_parameter.i.i, align 1
  %conv.i.i = zext i8 %10 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %12, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.135, i32 noundef %conv.i.i) #4
  %btc_fill_h2c.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %14 = ptrtoint ptr %btc_fill_h2c.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %btc_fill_h2c.i.i, align 4
  call void %15(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  %16 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1, !range !465
  store i8 %16, ptr @glcoex_dm_8723b_2ant, align 4
  br label %btc8723b2ant_dec_bt_pwr.exit

btc8723b2ant_dec_bt_pwr.exit:                     ; preds = %if.end16.i, %entry.btc8723b2ant_dec_bt_pwr.exit_crit_edge
  call fastcc void @btc8723b2ant_sw_mechanism(ptr noundef %btcoexist, i1 noundef zeroext false)
  %btc_set_rf_reg = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 27
  %17 = ptrtoint ptr %btc_set_rf_reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %btc_set_rf_reg, align 4
  call void %18(ptr noundef %btcoexist, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 1048575, i32 noundef 0) #4
  call fastcc void @btc8723b2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1431655765) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8723b2ant_lps_notify(ptr nocapture noundef readonly %btcoexist, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %2 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.218)
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
  %.str.73.sink = phi ptr [ @.str.73, %if.then5 ], [ @.str.72, %entry.if.end7.sink.split_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.73.sink) #4
  store i8 %type, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 6), align 2
  br label %if.end7

if.end7:                                          ; preds = %if.end7.sink.split, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8723b2ant_scan_notify(ptr noundef %btcoexist, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %btc_read_4byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 22
  %2 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %btc_read_4byte, align 4
  %call = tail call i32 %3(ptr noundef %btcoexist, i32 noundef 2376) #4
  %btc_read_1byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 17
  %4 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %btc_read_1byte, align 4
  %call1 = tail call zeroext i8 %5(ptr noundef %btcoexist, i32 noundef 1893) #4
  %6 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %btc_read_1byte, align 4
  %call3 = tail call zeroext i8 %7(ptr noundef %btcoexist, i32 noundef 1902) #4
  %8 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.219)
  switch i8 %type, label %entry.if.end9_crit_edge [
    i8 1, label %entry.if.end9.sink.split_crit_edge
    i8 0, label %if.then8
  ]

entry.if.end9.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9.sink.split

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9.sink.split

if.end9.sink.split:                               ; preds = %if.then8, %entry.if.end9.sink.split_crit_edge
  %.str.75.sink = phi ptr [ @.str.75, %if.then8 ], [ @.str.74, %entry.if.end9.sink.split_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.75.sink) #4
  br label %if.end9

if.end9:                                          ; preds = %if.end9.sink.split, %entry.if.end9_crit_edge
  %btc_get = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %9 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %btc_get, align 4
  %call10 = tail call zeroext i1 %10(ptr noundef %btcoexist, i8 noundef zeroext 41, ptr noundef getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 24)) #4
  %conv11 = zext i8 %call1 to i32
  %conv12 = zext i8 %call3 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.76, i32 noundef %call, i32 noundef %conv11, i32 noundef %conv12) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8723b2ant_connect_notify(ptr nocapture noundef readonly %btcoexist, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %2 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.220)
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
  %.str.78.sink = phi ptr [ @.str.78, %if.then5 ], [ @.str.77, %entry.if.end6.sink.split_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.78.sink) #4
  br label %if.end6

if.end6:                                          ; preds = %if.end6.sink.split, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8723b2ant_media_status_notify(ptr noundef %btcoexist, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  %h2c_parameter = alloca [3 x i8], align 1
  %wifi_bw = alloca i32, align 4
  %wifi_central_chnl = alloca i8, align 1
  %ap_num = alloca i8, align 1
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
  store i32 -1, ptr %wifi_bw, align 4, !annotation !466
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_central_chnl) #4
  %4 = ptrtoint ptr %wifi_central_chnl to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %wifi_central_chnl, align 1, !annotation !466
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ap_num) #4
  %5 = ptrtoint ptr %ap_num to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %ap_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %type)
  %cmp = icmp eq i8 %type, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.80) #4
  %btc_get = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %6 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %btc_get, align 4
  %call = call zeroext i1 %7(ptr noundef %btcoexist, i8 noundef zeroext 38, ptr noundef nonnull %wifi_central_chnl) #4
  br label %if.end28

land.lhs.true:                                    ; preds = %entry
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.79) #4
  %btc_get56 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %8 = ptrtoint ptr %btc_get56 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %btc_get56, align 4
  %call57 = call zeroext i1 %9(ptr noundef %btcoexist, i8 noundef zeroext 38, ptr noundef nonnull %wifi_central_chnl) #4
  %10 = ptrtoint ptr %wifi_central_chnl to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %wifi_central_chnl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %11)
  %cmp6 = icmp ult i8 %11, 15
  br i1 %cmp6, label %if.then8, label %land.lhs.true.if.end28_crit_edge

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

if.then8:                                         ; preds = %land.lhs.true
  %12 = ptrtoint ptr %h2c_parameter to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %h2c_parameter, align 1
  %arrayidx9 = getelementptr inbounds [3 x i8], ptr %h2c_parameter, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %11, ptr %arrayidx9, align 1
  %14 = ptrtoint ptr %btc_get56 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %btc_get56, align 4
  %call11 = call zeroext i1 %15(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef nonnull %wifi_bw) #4
  %16 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wifi_bw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp12 = icmp eq i32 %17, 2
  br i1 %cmp12, label %if.then14, label %if.else16

if.then14:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx15 = getelementptr inbounds [3 x i8], ptr %h2c_parameter, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 48, ptr %arrayidx15, align 1
  br label %if.end28

if.else16:                                        ; preds = %if.then8
  %19 = ptrtoint ptr %btc_get56 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %btc_get56, align 4
  %call18 = call zeroext i1 %20(ptr noundef %btcoexist, i8 noundef zeroext 41, ptr noundef nonnull %ap_num) #4
  %21 = ptrtoint ptr %ap_num to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ap_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %22)
  %cmp20 = icmp ult i8 %22, 10
  %arrayidx23 = getelementptr inbounds [3 x i8], ptr %h2c_parameter, i32 0, i32 2
  br i1 %cmp20, label %if.then22, label %if.else24

if.then22:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 48, ptr %arrayidx23, align 1
  br label %if.end28

if.else24:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 32, ptr %arrayidx23, align 1
  br label %if.end28

if.end28:                                         ; preds = %if.else24, %if.then22, %if.then14, %land.lhs.true.if.end28_crit_edge, %if.end
  %25 = ptrtoint ptr %h2c_parameter to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %h2c_parameter, align 1
  store i8 %26, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 41), align 2
  %arrayidx31 = getelementptr inbounds [3 x i8], ptr %h2c_parameter, i32 0, i32 1
  %27 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx31, align 1
  store i8 %28, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 41, i32 1), align 1
  %arrayidx34 = getelementptr inbounds [3 x i8], ptr %h2c_parameter, i32 0, i32 2
  %29 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx34, align 1
  store i8 %30, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 41, i32 2), align 4
  %conv38 = zext i8 %26 to i32
  %shl = shl nuw nsw i32 %conv38, 16
  %conv40 = zext i8 %28 to i32
  %shl41 = shl nuw nsw i32 %conv40, 8
  %or = or i32 %shl41, %shl
  %conv43 = zext i8 %30 to i32
  %or44 = or i32 %or, %conv43
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.81, i32 noundef %or44) #4
  %btc_fill_h2c = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %31 = ptrtoint ptr %btc_fill_h2c to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %btc_fill_h2c, align 4
  call void %32(ptr noundef %btcoexist, i8 noundef zeroext 102, i32 noundef 3, ptr noundef nonnull %h2c_parameter) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ap_num) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_central_chnl) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_bw) #4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %h2c_parameter) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8723b2ant_special_packet_notify(ptr nocapture noundef readonly %btcoexist, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.82) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8723b2ant_bt_info_notify(ptr noundef %btcoexist, ptr nocapture noundef readonly %tmpbuf, i8 noundef zeroext %length) local_unnamed_addr #0 align 64 {
entry:
  %bt_hs_on.i = alloca i8, align 1
  %h2c_parameter.i.i312 = alloca [1 x i8], align 1
  %h2c_parameter.i.i = alloca [1 x i8], align 1
  %h2c_parameter.i = alloca [3 x i8], align 1
  %wifi_central_chnl.i = alloca i8, align 1
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
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 16), align 1
  %5 = ptrtoint ptr %tmpbuf to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tmpbuf, align 1
  %7 = and i8 %6, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp = icmp ugt i8 %7, 2
  %spec.store.select = select i1 %cmp, i8 0, i8 %7
  %idxprom = zext i8 %spec.store.select to i32
  %arrayidx4 = getelementptr %struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 18, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %arrayidx4, align 4
  %conv6 = zext i8 %length to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.83, i32 noundef %idxprom, i32 noundef %conv6) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %length)
  %cmp9317.not = icmp eq i8 %length, 0
  br i1 %cmp9317.not, label %entry.for.end_crit_edge, label %if.end23.peel

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end23.peel:                                    ; preds = %entry
  %sub = add nsw i32 %conv6, -1
  %10 = ptrtoint ptr %tmpbuf to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tmpbuf, align 1
  %arrayidx16.peel = getelementptr %struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 17, i32 %idxprom, i32 0
  %12 = ptrtoint ptr %arrayidx16.peel to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %arrayidx16.peel, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp26.peel = icmp eq i32 %sub, 0
  %13 = ptrtoint ptr %tmpbuf to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %tmpbuf, align 1
  %conv31.peel = zext i8 %14 to i32
  br i1 %cmp26.peel, label %for.inc.peel.thread, label %for.inc.peel

for.inc.peel:                                     ; preds = %if.end23.peel
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.85, i32 noundef %conv31.peel) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %length)
  %exitcond.peel.not = icmp eq i8 %length, 1
  br i1 %exitcond.peel.not, label %for.inc.peel.for.end_crit_edge, label %if.end23.peel327

for.inc.peel.for.end_crit_edge:                   ; preds = %for.inc.peel
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.peel.thread:                              ; preds = %if.end23.peel
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.84, i32 noundef %conv31.peel) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %length)
  %exitcond.peel.not338 = icmp eq i8 %length, 1
  br i1 %exitcond.peel.not338, label %for.inc.peel.thread.for.end_crit_edge, label %if.end23.peel327.thread

for.inc.peel.thread.for.end_crit_edge:            ; preds = %for.inc.peel.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end23.peel327.thread:                          ; preds = %for.inc.peel.thread
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx12.peel323339 = getelementptr i8, ptr %tmpbuf, i32 1
  %15 = ptrtoint ptr %arrayidx12.peel323339 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx12.peel323339, align 1
  %arrayidx16.peel324340 = getelementptr %struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 17, i32 %idxprom, i32 1
  %17 = ptrtoint ptr %arrayidx16.peel324340 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %arrayidx16.peel324340, align 1
  br label %for.inc.peel334

if.end23.peel327:                                 ; preds = %for.inc.peel
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx12.peel323 = getelementptr i8, ptr %tmpbuf, i32 1
  %18 = ptrtoint ptr %arrayidx12.peel323 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx12.peel323, align 1
  %arrayidx16.peel324 = getelementptr %struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 17, i32 %idxprom, i32 1
  %20 = ptrtoint ptr %arrayidx16.peel324 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %arrayidx16.peel324, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp26.peel329 = icmp eq i32 %sub, 1
  %spec.select344 = select i1 %cmp26.peel329, ptr @.str.84, ptr @.str.85
  br label %for.inc.peel334

for.inc.peel334:                                  ; preds = %if.end23.peel327, %if.end23.peel327.thread
  %arrayidx12.peel323.sink = phi ptr [ %arrayidx12.peel323339, %if.end23.peel327.thread ], [ %arrayidx12.peel323, %if.end23.peel327 ]
  %.str.84.sink = phi ptr [ @.str.85, %if.end23.peel327.thread ], [ %spec.select344, %if.end23.peel327 ]
  %21 = ptrtoint ptr %arrayidx12.peel323.sink to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx12.peel323.sink, align 1
  %conv31.peel333 = zext i8 %22 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.84.sink, i32 noundef %conv31.peel333) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %length)
  %exitcond.peel336.not = icmp eq i8 %length, 2
  br i1 %exitcond.peel336.not, label %for.inc.peel334.for.end_crit_edge, label %for.inc.peel334.if.end23_crit_edge

for.inc.peel334.if.end23_crit_edge:               ; preds = %for.inc.peel334
  br label %if.end23

for.inc.peel334.for.end_crit_edge:                ; preds = %for.inc.peel334
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end23:                                         ; preds = %if.end23.if.end23_crit_edge, %for.inc.peel334.if.end23_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %if.end23.if.end23_crit_edge ], [ 2, %for.inc.peel334.if.end23_crit_edge ]
  %arrayidx12 = getelementptr i8, ptr %tmpbuf, i32 %indvars.iv
  %23 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx12, align 1
  %arrayidx16 = getelementptr %struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 17, i32 %idxprom, i32 %indvars.iv
  %25 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %arrayidx16, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %indvars.iv)
  %cmp26 = icmp eq i32 %sub, %indvars.iv
  %26 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx12, align 1
  %conv31 = zext i8 %27 to i32
  %.str.84..str.85 = select i1 %cmp26, ptr @.str.84, ptr @.str.85
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.84..str.85, i32 noundef %conv31) #4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %conv6
  br i1 %exitcond.not, label %if.end23.for.end_crit_edge, label %if.end23.if.end23_crit_edge, !llvm.loop !467

if.end23.if.end23_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

if.end23.for.end_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %if.end23.for.end_crit_edge, %for.inc.peel334.for.end_crit_edge, %for.inc.peel.thread.for.end_crit_edge, %for.inc.peel.for.end_crit_edge, %entry.for.end_crit_edge
  %bt_info.0.lcssa = phi i8 [ 0, %entry.for.end_crit_edge ], [ 0, %for.inc.peel.for.end_crit_edge ], [ %22, %for.inc.peel334.for.end_crit_edge ], [ 0, %for.inc.peel.thread.for.end_crit_edge ], [ %22, %if.end23.for.end_crit_edge ]
  %manual_control = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 13
  %28 = ptrtoint ptr %manual_control to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %manual_control, align 2, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not = icmp eq i8 %29, 0
  br i1 %tobool.not, label %if.end38, label %if.then37

if.then37:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.86) #4
  br label %cleanup

if.end38:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.store.select)
  %cmp40.not = icmp eq i8 %spec.store.select, 0
  br i1 %cmp40.not, label %if.end38.if.end119_crit_edge, label %if.then42

if.end38.if.end119_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end119

if.then42:                                        ; preds = %if.end38
  %arrayidx46 = getelementptr %struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 17, i32 %idxprom, i32 2
  %30 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx46, align 2
  %32 = and i8 %31, 15
  store i8 %32, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 21), align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp52.not = icmp eq i8 %32, 0
  br i1 %cmp52.not, label %if.then42.if.end56_crit_edge, label %if.then54

if.then42.if.end56_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end56

if.then54:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #6
  %33 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 23), align 4
  %inc55 = add i32 %33, 1
  store i32 %inc55, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 23), align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.then42.if.end56_crit_edge
  %arrayidx60 = getelementptr %struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 17, i32 %idxprom, i32 3
  %34 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx60, align 1
  %mul = shl i8 %35, 1
  %add = add i8 %mul, 10
  store i8 %add, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 12), align 4
  %arrayidx66 = getelementptr %struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 17, i32 %idxprom, i32 4
  %36 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx66, align 2
  store i8 %37, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 22), align 1
  %38 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx46, align 2
  %40 = lshr i8 %39, 5
  %.lobit = and i8 %40, 1
  store i8 %.lobit, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 20), align 1
  %arrayidx81 = getelementptr %struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 17, i32 %idxprom, i32 1
  %41 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx81, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 73, i8 %42)
  %cmp83 = icmp eq i8 %42, 73
  br i1 %cmp83, label %if.then85, label %if.end56.if.end92_crit_edge

if.end56.if.end92_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end92

if.then85:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx89 = getelementptr %struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 17, i32 %idxprom, i32 6
  %43 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx89, align 2
  br label %if.end92

if.end92:                                         ; preds = %if.then85, %if.end56.if.end92_crit_edge
  %storemerge308 = phi i8 [ %44, %if.then85 ], [ 0, %if.end56.if.end92_crit_edge ]
  store i8 %storemerge308, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 35), align 2
  %45 = and i8 %37, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool96.not = icmp eq i8 %45, 0
  br i1 %tobool96.not, label %if.end92.if.end102_crit_edge, label %if.then97

if.end92.if.end102_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end102

if.then97:                                        ; preds = %if.end92
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.87) #4
  %btc_get = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %46 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %btc_get, align 4
  %call = call zeroext i1 %47(ptr noundef %btcoexist, i8 noundef zeroext 2, ptr noundef nonnull %wifi_connected) #4
  %48 = ptrtoint ptr %wifi_connected to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %wifi_connected, align 1, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool98.not = icmp eq i8 %49, 0
  br i1 %tobool98.not, label %if.else100, label %if.then99

if.then99:                                        ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #6
  call void @ex_btc8723b2ant_media_status_notify(ptr noundef %btcoexist, i8 noundef zeroext 1)
  br label %if.end102

if.else100:                                       ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #6
  %50 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %h2c_parameter.i) #4
  %52 = call ptr @memset(ptr %h2c_parameter.i, i32 0, i32 3)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_central_chnl.i) #4
  %53 = ptrtoint ptr %wifi_central_chnl.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 -1, ptr %wifi_central_chnl.i, align 1, !annotation !466
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %51, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.80) #4
  %54 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %btc_get, align 4
  %call.i = call zeroext i1 %55(ptr noundef %btcoexist, i8 noundef zeroext 38, ptr noundef nonnull %wifi_central_chnl.i) #4
  %56 = ptrtoint ptr %h2c_parameter.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %h2c_parameter.i, align 1
  store i8 %57, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 41), align 2
  %arrayidx31.i = getelementptr inbounds [3 x i8], ptr %h2c_parameter.i, i32 0, i32 1
  %58 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx31.i, align 1
  store i8 %59, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 41, i32 1), align 1
  %arrayidx34.i = getelementptr inbounds [3 x i8], ptr %h2c_parameter.i, i32 0, i32 2
  %60 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx34.i, align 1
  store i8 %61, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 41, i32 2), align 4
  %conv38.i = zext i8 %57 to i32
  %shl.i = shl nuw nsw i32 %conv38.i, 16
  %conv40.i = zext i8 %59 to i32
  %shl41.i = shl nuw nsw i32 %conv40.i, 8
  %or.i = or i32 %shl41.i, %shl.i
  %conv43.i = zext i8 %61 to i32
  %or44.i = or i32 %or.i, %conv43.i
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %51, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.81, i32 noundef %or44.i) #4
  %btc_fill_h2c.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %62 = ptrtoint ptr %btc_fill_h2c.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %btc_fill_h2c.i, align 4
  call void %63(ptr noundef %btcoexist, i8 noundef zeroext 102, i32 noundef 3, ptr noundef nonnull %h2c_parameter.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_central_chnl.i) #4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %h2c_parameter.i) #4
  br label %if.end102

if.end102:                                        ; preds = %if.else100, %if.then99, %if.end92.if.end102_crit_edge
  %64 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 22), align 1
  %65 = and i8 %64, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool106.not = icmp eq i8 %65, 0
  br i1 %tobool106.not, label %if.end102.if.end109_crit_edge, label %if.then107

if.end102.if.end109_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end109

if.then107:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.88) #4
  %66 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %adapter, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %67, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.111) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 4), align 4
  %68 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  %70 = ptrtoint ptr %h2c_parameter.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %h2c_parameter.i.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %69, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.148, i32 noundef 0) #4
  %btc_fill_h2c.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %71 = ptrtoint ptr %btc_fill_h2c.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %btc_fill_h2c.i.i, align 4
  call void %72(ptr noundef %btcoexist, i8 noundef zeroext 99, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  %73 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 4), align 4, !range !465
  store i8 %73, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 5), align 1
  br label %if.end109

if.end109:                                        ; preds = %if.then107, %if.end102.if.end109_crit_edge
  %auto_report_2ant = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 8
  %74 = ptrtoint ptr %auto_report_2ant to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %auto_report_2ant, align 1, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool110.not = icmp eq i8 %75, 0
  br i1 %tobool110.not, label %if.then111, label %if.end109.if.end119_crit_edge

if.end109.if.end119_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end119

if.then111:                                       ; preds = %if.end109
  %76 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 22), align 1
  %77 = and i8 %76, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool115.not = icmp eq i8 %77, 0
  br i1 %tobool115.not, label %if.then116, label %if.then111.if.end119_crit_edge

if.then111.if.end119_crit_edge:                   ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end119

if.then116:                                       ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #6
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 15), align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i312) #4
  %78 = ptrtoint ptr %h2c_parameter.i.i312 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %h2c_parameter.i.i312, align 1
  %btc_fill_h2c.i.i313 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %79 = ptrtoint ptr %btc_fill_h2c.i.i313 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %btc_fill_h2c.i.i313, align 4
  call void %80(ptr noundef %btcoexist, i8 noundef zeroext 104, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i312) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i312) #4
  %81 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 15), align 1, !range !465
  store i8 %81, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 14), align 2
  br label %if.end119

if.end119:                                        ; preds = %if.then116, %if.then111.if.end119_crit_edge, %if.end109.if.end119_crit_edge, %if.end38.if.end119_crit_edge
  %conv120 = zext i8 %bt_info.0.lcssa to i32
  %and121 = lshr i8 %bt_info.0.lcssa, 2
  %and121.lobit = and i8 %and121, 1
  store i8 %and121.lobit, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 19), align 4
  %and128 = and i32 %conv120, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %if.then130, label %if.else131

if.then130:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #6
  %82 = call ptr @memset(ptr @glcoex_sta_8723b_2ant, i32 0, i32 5)
  br label %if.end182

if.else131:                                       ; preds = %if.end119
  store i8 1, ptr @glcoex_sta_8723b_2ant, align 4
  %and134.lobit = lshr i8 %bt_info.0.lcssa, 7
  store i8 %and134.lobit, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 4), align 4
  %and142 = lshr i8 %bt_info.0.lcssa, 6
  %and142.lobit = and i8 %and142, 1
  store i8 %and142.lobit, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 2), align 2
  %and150 = lshr i8 %bt_info.0.lcssa, 5
  %and150.lobit = and i8 %and150, 1
  store i8 %and150.lobit, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 3), align 1
  %and158 = lshr i8 %bt_info.0.lcssa, 1
  %and158.lobit = and i8 %and158, 1
  store i8 %and158.lobit, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 1), align 1
  %83 = and i32 %conv120, 38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %.not = icmp eq i32 %83, 0
  br i1 %.not, label %if.then172, label %if.else131.if.end182_crit_edge

if.else131.if.end182_crit_edge:                   ; preds = %if.else131
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end182

if.then172:                                       ; preds = %if.else131
  %84 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 8), align 4
  %85 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 9), align 4
  %add173 = add i32 %85, %84
  call void @__sanitizer_cov_trace_const_cmp4(i32 159, i32 %add173)
  %cmp174 = icmp ugt i32 %add173, 159
  br i1 %cmp174, label %if.then176, label %if.then172.if.end182_crit_edge

if.then172.if.end182_crit_edge:                   ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end182

if.then176:                                       ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #6
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 3), align 1
  %or = or i8 %bt_info.0.lcssa, 40
  br label %if.end182

if.end182:                                        ; preds = %if.then176, %if.then172.if.end182_crit_edge, %if.else131.if.end182_crit_edge, %if.then130
  %bt_info.2 = phi i8 [ %bt_info.0.lcssa, %if.else131.if.end182_crit_edge ], [ %or, %if.then176 ], [ %bt_info.0.lcssa, %if.then172.if.end182_crit_edge ], [ %bt_info.0.lcssa, %if.then130 ]
  %bt_link_info1.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_hs_on.i) #4
  %86 = ptrtoint ptr %bt_hs_on.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %bt_hs_on.i, align 1
  %btc_get.i314 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %87 = ptrtoint ptr %btc_get.i314 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %btc_get.i314, align 4
  %call.i315 = call zeroext i1 %88(ptr noundef %btcoexist, i8 noundef zeroext 0, ptr noundef nonnull %bt_hs_on.i) #4
  %89 = load i8, ptr @glcoex_sta_8723b_2ant, align 4, !range !465
  %90 = ptrtoint ptr %bt_link_info1.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %bt_link_info1.i, align 1
  %91 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 1), align 1, !range !465
  %sco_exist4.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 2
  %92 = ptrtoint ptr %sco_exist4.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %sco_exist4.i, align 1
  %93 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 2), align 2, !range !465
  %a2dp_exist7.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 4
  %94 = ptrtoint ptr %a2dp_exist7.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %a2dp_exist7.i, align 1
  %95 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 4), align 4, !range !465
  %pan_exist10.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 8
  %96 = ptrtoint ptr %pan_exist10.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %pan_exist10.i, align 1
  %97 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 3), align 1, !range !465
  %hid_exist13.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 6
  %98 = ptrtoint ptr %hid_exist13.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %97, ptr %hid_exist13.i, align 1
  %99 = ptrtoint ptr %bt_hs_on.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %bt_hs_on.i, align 1, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool15.not.i = icmp eq i8 %100, 0
  br i1 %tobool15.not.i, label %if.end182.if.end.i_crit_edge, label %if.then.i

if.end182.if.end.i_crit_edge:                     ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #6
  %101 = ptrtoint ptr %pan_exist10.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 1, ptr %pan_exist10.i, align 1
  %102 = ptrtoint ptr %bt_link_info1.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 1, ptr %bt_link_info1.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end182.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool19.not.i = icmp eq i8 %91, 0
  br i1 %tobool19.not.i, label %land.lhs.true33.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool21.not.i = icmp eq i8 %93, 0
  br i1 %tobool21.not.i, label %land.lhs.true22.i, label %land.lhs.true.i.if.end30.thread108.i_crit_edge

land.lhs.true.i.if.end30.thread108.i_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30.thread108.i

land.lhs.true22.i:                                ; preds = %land.lhs.true.i
  %103 = ptrtoint ptr %pan_exist10.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %pan_exist10.i, align 1, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool24.not.i = icmp eq i8 %104, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool27.not.i = icmp eq i8 %97, 0
  %or.cond.i = select i1 %tobool24.not.i, i1 %tobool27.not.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true22.i.if.end60.i_crit_edge, label %land.lhs.true22.i.if.end30.thread108.i_crit_edge

land.lhs.true22.i.if.end30.thread108.i_crit_edge: ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30.thread108.i

land.lhs.true22.i.if.end60.i_crit_edge:           ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60.i

if.end30.thread108.i:                             ; preds = %land.lhs.true22.i.if.end30.thread108.i_crit_edge, %land.lhs.true.i.if.end30.thread108.i_crit_edge
  br label %if.end60.i

land.lhs.true33.i:                                ; preds = %if.end.i
  %sco_only29.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 3
  %105 = ptrtoint ptr %sco_only29.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %sco_only29.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool35.not.i = icmp eq i8 %93, 0
  br i1 %tobool35.not.i, label %land.lhs.true51.i, label %land.lhs.true36.i

land.lhs.true36.i:                                ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #6
  %106 = ptrtoint ptr %pan_exist10.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %pan_exist10.i, align 1, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool38.not.i = icmp eq i8 %107, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool41.not.i = icmp eq i8 %97, 0
  %or.cond127.i = select i1 %tobool38.not.i, i1 %tobool41.not.i, i1 false
  %spec.select.i = zext i1 %or.cond127.i to i8
  %108 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 5
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %spec.select.i, ptr %108, align 1
  %pan_only59117.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 9
  %110 = ptrtoint ptr %pan_only59117.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %pan_only59117.i, align 1
  br label %if.else73.i

land.lhs.true51.i:                                ; preds = %land.lhs.true33.i
  %a2dp_only44111.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 5
  %111 = ptrtoint ptr %a2dp_only44111.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 0, ptr %a2dp_only44111.i, align 1
  %112 = ptrtoint ptr %pan_exist10.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %pan_exist10.i, align 1, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool53.not.i = icmp eq i8 %113, 0
  br i1 %tobool53.not.i, label %land.lhs.true69.i, label %land.lhs.true54.i

land.lhs.true54.i:                                ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool56.not.i = icmp eq i8 %97, 0
  %pan_only.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 9
  br i1 %tobool56.not.i, label %land.lhs.true66.thread.i, label %land.lhs.true66.i

if.end60.i:                                       ; preds = %if.end30.thread108.i, %land.lhs.true22.i.if.end60.i_crit_edge
  %.sink128.i = phi i8 [ 0, %if.end30.thread108.i ], [ 1, %land.lhs.true22.i.if.end60.i_crit_edge ]
  %sco_only29109.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 3
  %114 = ptrtoint ptr %sco_only29109.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %.sink128.i, ptr %sco_only29109.i, align 1
  %a2dp_only44.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 5
  %115 = ptrtoint ptr %a2dp_only44.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %a2dp_only44.i, align 1
  %pan_only59.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 9
  %116 = ptrtoint ptr %pan_only59.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %pan_only59.i, align 1
  br label %if.else73.i

land.lhs.true66.i:                                ; preds = %land.lhs.true54.i
  call void @__sanitizer_cov_trace_pc() #6
  %117 = ptrtoint ptr %pan_only.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 0, ptr %pan_only.i, align 1
  br label %if.else73.i

land.lhs.true66.thread.i:                         ; preds = %land.lhs.true54.i
  call void @__sanitizer_cov_trace_pc() #6
  %118 = ptrtoint ptr %pan_only.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 1, ptr %pan_only.i, align 1
  br label %if.else73.i

land.lhs.true69.i:                                ; preds = %land.lhs.true51.i
  %pan_only59117120125.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 9
  %119 = ptrtoint ptr %pan_only59117120125.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 0, ptr %pan_only59117120125.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool71.not.i = icmp eq i8 %97, 0
  br i1 %tobool71.not.i, label %land.lhs.true69.i.if.else73.i_crit_edge, label %land.lhs.true69.i.btc8723b2ant_update_bt_link_info.exit_crit_edge

land.lhs.true69.i.btc8723b2ant_update_bt_link_info.exit_crit_edge: ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8723b2ant_update_bt_link_info.exit

land.lhs.true69.i.if.else73.i_crit_edge:          ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else73.i

if.else73.i:                                      ; preds = %land.lhs.true69.i.if.else73.i_crit_edge, %land.lhs.true66.thread.i, %land.lhs.true66.i, %if.end60.i, %land.lhs.true36.i
  br label %btc8723b2ant_update_bt_link_info.exit

btc8723b2ant_update_bt_link_info.exit:            ; preds = %if.else73.i, %land.lhs.true69.i.btc8723b2ant_update_bt_link_info.exit_crit_edge
  %.sink.i = phi i8 [ 0, %if.else73.i ], [ 1, %land.lhs.true69.i.btc8723b2ant_update_bt_link_info.exit_crit_edge ]
  %hid_only74.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 7
  %120 = ptrtoint ptr %hid_only74.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %.sink.i, ptr %hid_only74.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_hs_on.i) #4
  %conv183 = zext i8 %bt_info.2 to i32
  %and184 = and i32 %conv183, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and184)
  %tobool185.not = icmp eq i32 %and184, 0
  br i1 %tobool185.not, label %btc8723b2ant_update_bt_link_info.exit.if.end213_crit_edge, label %if.else187

btc8723b2ant_update_bt_link_info.exit.if.end213_crit_edge: ; preds = %btc8723b2ant_update_bt_link_info.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end213

if.else187:                                       ; preds = %btc8723b2ant_update_bt_link_info.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bt_info.2)
  %cmp189 = icmp eq i8 %bt_info.2, 1
  br i1 %cmp189, label %if.else187.if.end213_crit_edge, label %if.else193

if.else187.if.end213_crit_edge:                   ; preds = %if.else187
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end213

if.else193:                                       ; preds = %if.else187
  %121 = and i32 %conv183, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %if.else202, label %if.else193.if.end213_crit_edge

if.else193.if.end213_crit_edge:                   ; preds = %if.else193
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end213

if.else202:                                       ; preds = %if.else193
  call void @__sanitizer_cov_trace_pc() #6
  %and204 = and i32 %conv183, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and204)
  %tobool205.not = icmp eq i32 %and204, 0
  %. = select i1 %tobool205.not, i8 6, i8 3
  %.str.93..str.92 = select i1 %tobool205.not, ptr @.str.93, ptr @.str.92
  br label %if.end213

if.end213:                                        ; preds = %if.else202, %if.else193.if.end213_crit_edge, %if.else187.if.end213_crit_edge, %btc8723b2ant_update_bt_link_info.exit.if.end213_crit_edge
  %.sink = phi i8 [ 0, %btc8723b2ant_update_bt_link_info.exit.if.end213_crit_edge ], [ 1, %if.else187.if.end213_crit_edge ], [ 4, %if.else193.if.end213_crit_edge ], [ %., %if.else202 ]
  %.str.90.sink = phi ptr [ @.str.89, %btc8723b2ant_update_bt_link_info.exit.if.end213_crit_edge ], [ @.str.90, %if.else187.if.end213_crit_edge ], [ @.str.91, %if.else193.if.end213_crit_edge ], [ %.str.93..str.92, %if.else202 ]
  store i8 %.sink, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 40), align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.90.sink) #4
  %123 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 40), align 1
  %.off = add i8 %123, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off)
  %switch = icmp ult i8 %.off, 3
  %spec.select = zext i1 %switch to i8
  %124 = ptrtoint ptr %bt_busy to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %spec.select, ptr %bt_busy, align 1
  %125 = ptrtoint ptr %limited_dig to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %spec.select, ptr %limited_dig, align 1
  %btc_set = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %126 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %btc_set, align 4
  %call231 = call zeroext i1 %127(ptr noundef %btcoexist, i8 noundef zeroext 1, ptr noundef nonnull %bt_busy) #4
  store i8 %spec.select, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 37), align 2
  %128 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %btc_set, align 4
  %call235 = call zeroext i1 %129(ptr noundef %btcoexist, i8 noundef zeroext 2, ptr noundef nonnull %limited_dig) #4
  call fastcc void @btc8723b2ant_run_coexist_mechanism(ptr noundef %btcoexist)
  br label %cleanup

cleanup:                                          ; preds = %if.end213, %if.then37
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_connected) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %limited_dig) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_busy) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8723b2ant_run_coexist_mechanism(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i.i42.i = alloca [1 x i8], align 1
  %h2c_parameter.i.i.i = alloca [1 x i8], align 1
  %low_pwr_disable.i.i = alloca i8, align 1
  %wifi_connected.i = alloca i8, align 1
  %low_pwr_disable.i = alloca i8, align 1
  %scan.i = alloca i8, align 1
  %link.i = alloca i8, align 1
  %roam.i = alloca i8, align 1
  %bt_hs_on.i = alloca i8, align 1
  %wifi_link_status = alloca i32, align 4
  %miracast_plus_bt = alloca i8, align 1
  %scan = alloca i8, align 1
  %link = alloca i8, align 1
  %roam = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_link_status) #4
  %2 = ptrtoint ptr %wifi_link_status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %wifi_link_status, align 4
  %bt_link_info1 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %miracast_plus_bt) #4
  %3 = ptrtoint ptr %miracast_plus_bt to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %miracast_plus_bt, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %scan) #4
  %4 = ptrtoint ptr %scan to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %scan, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link) #4
  %5 = ptrtoint ptr %link to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %link, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %roam) #4
  %6 = ptrtoint ptr %roam to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %roam, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.150) #4
  %manual_control = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 13
  %7 = ptrtoint ptr %manual_control to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %manual_control, align 2, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.151) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 7), align 1, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not = icmp eq i8 %9, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.152) #4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %10 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_hs_on.i) #4
  %12 = ptrtoint ptr %bt_hs_on.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %bt_hs_on.i, align 1
  %btc_get.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %13 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %btc_get.i, align 4
  %call.i = call zeroext i1 %14(ptr noundef %btcoexist, i8 noundef zeroext 0, ptr noundef nonnull %bt_hs_on.i) #4
  %15 = ptrtoint ptr %bt_link_info1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bt_link_info1, align 1, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %if.end4.cleanup.sink.split.i_crit_edge, label %if.end.i

if.end4.cleanup.sink.split.i_crit_edge:           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %if.end4
  %sco_exist.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 2
  %17 = ptrtoint ptr %sco_exist.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sco_exist.i, align 1, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool2.not.i = icmp eq i8 %18, 0
  %not.tobool2.not.i = xor i1 %tobool2.not.i, true
  %spec.select.i = zext i1 %not.tobool2.not.i to i8
  %hid_exist.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 6
  %19 = ptrtoint ptr %hid_exist.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %hid_exist.i, align 1, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool5.not.i = icmp eq i8 %20, 0
  %inc7.i = select i1 %tobool2.not.i, i8 1, i8 2
  %num_of_diff_profile.1.i = select i1 %tobool5.not.i, i8 %spec.select.i, i8 %inc7.i
  %pan_exist.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 8
  %21 = ptrtoint ptr %pan_exist.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pan_exist.i, align 1, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool9.not.i = icmp eq i8 %22, 0
  %not.tobool9.not.i = xor i1 %tobool9.not.i, true
  %inc11.i = zext i1 %not.tobool9.not.i to i8
  %num_of_diff_profile.2.i = add nuw nsw i8 %num_of_diff_profile.1.i, %inc11.i
  %a2dp_exist.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 4
  %23 = ptrtoint ptr %a2dp_exist.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %a2dp_exist.i, align 1, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool13.not.i = icmp eq i8 %24, 0
  %not.tobool13.not.i = xor i1 %tobool13.not.i, true
  %inc15.i = zext i1 %not.tobool13.not.i to i8
  %num_of_diff_profile.3.i = add nuw nsw i8 %num_of_diff_profile.2.i, %inc15.i
  %trunc.i = trunc i8 %num_of_diff_profile.3.i to i4
  %25 = zext i4 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.221)
  switch i4 %trunc.i, label %if.else169.i [
    i4 1, label %if.then18.i
    i4 2, label %if.then45.i
    i4 3, label %if.then109.i
  ]

if.then18.i:                                      ; preds = %if.end.i
  %26 = select i1 %tobool2.not.i, i1 %tobool5.not.i, i1 false
  %.str.171.mux.i = select i1 %tobool2.not.i, ptr @.str.172, ptr @.str.171
  %.mux.i = select i1 %tobool2.not.i, i8 2, i8 1
  %27 = select i1 %26, i1 %tobool13.not.i, i1 false
  %.str.171.mux.mux.i = select i1 %26, ptr @.str.173, ptr %.str.171.mux.i
  %.mux.mux.i = select i1 %26, i8 3, i8 %.mux.i
  br i1 %27, label %if.else29.i, label %if.then18.i.cleanup.sink.split.i_crit_edge

if.then18.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

if.else29.i:                                      ; preds = %if.then18.i
  br i1 %tobool9.not.i, label %if.else29.i.btc8723b2ant_action_algorithm.exit_crit_edge, label %if.then32.i

if.else29.i.btc8723b2ant_action_algorithm.exit_crit_edge: ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8723b2ant_action_algorithm.exit

if.then32.i:                                      ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #6
  %28 = ptrtoint ptr %bt_hs_on.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bt_hs_on.i, align 1, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool33.not.i = icmp eq i8 %29, 0
  %.str.175..str.174.i = select i1 %tobool33.not.i, ptr @.str.175, ptr @.str.174
  %..i = select i1 %tobool33.not.i, i8 5, i8 6
  br label %cleanup.sink.split.i

if.then45.i:                                      ; preds = %if.end.i
  br i1 %tobool2.not.i, label %if.else67.i, label %if.then48.i

if.then48.i:                                      ; preds = %if.then45.i
  %30 = select i1 %tobool5.not.i, i1 %tobool13.not.i, i1 false
  %.str.176.mux.i = select i1 %tobool5.not.i, ptr @.str.177, ptr @.str.176
  br i1 %30, label %if.else56.i, label %if.then48.i.cleanup.sink.split.i_crit_edge

if.then48.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

if.else56.i:                                      ; preds = %if.then48.i
  br i1 %tobool9.not.i, label %if.else56.i.btc8723b2ant_action_algorithm.exit_crit_edge, label %if.then59.i

if.else56.i.btc8723b2ant_action_algorithm.exit_crit_edge: ; preds = %if.else56.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8723b2ant_action_algorithm.exit

if.then59.i:                                      ; preds = %if.else56.i
  call void @__sanitizer_cov_trace_pc() #6
  %31 = ptrtoint ptr %bt_hs_on.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bt_hs_on.i, align 1, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool60.not.i = icmp eq i8 %32, 0
  %.str.179..str.178.i = select i1 %tobool60.not.i, ptr @.str.179, ptr @.str.178
  %.276.i = select i1 %tobool60.not.i, i8 8, i8 1
  br label %cleanup.sink.split.i

if.else67.i:                                      ; preds = %if.then45.i
  br i1 %tobool5.not.i, label %if.else88.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.else67.i
  br i1 %tobool13.not.i, label %land.lhs.true79.i, label %land.lhs.true.i.cleanup.sink.split.i_crit_edge

land.lhs.true.i.cleanup.sink.split.i_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

land.lhs.true79.i:                                ; preds = %land.lhs.true.i
  br i1 %tobool9.not.i, label %land.lhs.true79.i.btc8723b2ant_action_algorithm.exit_crit_edge, label %if.then83.i

land.lhs.true79.i.btc8723b2ant_action_algorithm.exit_crit_edge: ; preds = %land.lhs.true79.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8723b2ant_action_algorithm.exit

if.then83.i:                                      ; preds = %land.lhs.true79.i
  call void @__sanitizer_cov_trace_pc() #6
  %33 = ptrtoint ptr %bt_hs_on.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bt_hs_on.i, align 1, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool84.not.i = icmp eq i8 %34, 0
  %.str.182..str.181.i = select i1 %tobool84.not.i, ptr @.str.182, ptr @.str.181
  %.277.i = select i1 %tobool84.not.i, i8 8, i8 2
  br label %cleanup.sink.split.i

if.else88.i:                                      ; preds = %if.else67.i
  %brmerge.i = select i1 %tobool9.not.i, i1 true, i1 %tobool13.not.i
  br i1 %brmerge.i, label %if.else88.i.btc8723b2ant_action_algorithm.exit_crit_edge, label %if.then96.i

if.else88.i.btc8723b2ant_action_algorithm.exit_crit_edge: ; preds = %if.else88.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8723b2ant_action_algorithm.exit

if.then96.i:                                      ; preds = %if.else88.i
  call void @__sanitizer_cov_trace_pc() #6
  %35 = ptrtoint ptr %bt_hs_on.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bt_hs_on.i, align 1, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool97.not.i = icmp eq i8 %36, 0
  %.str.184..str.183.i = select i1 %tobool97.not.i, ptr @.str.184, ptr @.str.183
  %.278.i = select i1 %tobool97.not.i, i8 7, i8 4
  br label %cleanup.sink.split.i

if.then109.i:                                     ; preds = %if.end.i
  br i1 %tobool2.not.i, label %if.else150.i, label %if.then112.i

if.then112.i:                                     ; preds = %if.then109.i
  br i1 %tobool5.not.i, label %if.else134.i, label %land.lhs.true116.i

land.lhs.true116.i:                               ; preds = %if.then112.i
  br i1 %tobool13.not.i, label %land.lhs.true125.i, label %land.lhs.true116.i.cleanup.sink.split.i_crit_edge

land.lhs.true116.i.cleanup.sink.split.i_crit_edge: ; preds = %land.lhs.true116.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

land.lhs.true125.i:                               ; preds = %land.lhs.true116.i
  br i1 %tobool9.not.i, label %land.lhs.true125.i.btc8723b2ant_action_algorithm.exit_crit_edge, label %if.then129.i

land.lhs.true125.i.btc8723b2ant_action_algorithm.exit_crit_edge: ; preds = %land.lhs.true125.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8723b2ant_action_algorithm.exit

if.then129.i:                                     ; preds = %land.lhs.true125.i
  call void @__sanitizer_cov_trace_pc() #6
  %37 = ptrtoint ptr %bt_hs_on.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %bt_hs_on.i, align 1, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool130.not.i = icmp eq i8 %38, 0
  %.str.187..str.186.i = select i1 %tobool130.not.i, ptr @.str.187, ptr @.str.186
  br label %cleanup.sink.split.i

if.else134.i:                                     ; preds = %if.then112.i
  %brmerge269.i = select i1 %tobool9.not.i, i1 true, i1 %tobool13.not.i
  br i1 %brmerge269.i, label %if.else134.i.btc8723b2ant_action_algorithm.exit_crit_edge, label %if.then142.i

if.else134.i.btc8723b2ant_action_algorithm.exit_crit_edge: ; preds = %if.else134.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8723b2ant_action_algorithm.exit

if.then142.i:                                     ; preds = %if.else134.i
  call void @__sanitizer_cov_trace_pc() #6
  %39 = ptrtoint ptr %bt_hs_on.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %bt_hs_on.i, align 1, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool143.not.i = icmp eq i8 %40, 0
  %.str.189..str.188.i = select i1 %tobool143.not.i, ptr @.str.189, ptr @.str.188
  br label %cleanup.sink.split.i

if.else150.i:                                     ; preds = %if.then109.i
  %brmerge270.i = select i1 %tobool5.not.i, i1 true, i1 %tobool9.not.i
  %brmerge271.i = select i1 %brmerge270.i, i1 true, i1 %tobool13.not.i
  br i1 %brmerge271.i, label %if.else150.i.btc8723b2ant_action_algorithm.exit_crit_edge, label %if.then162.i

if.else150.i.btc8723b2ant_action_algorithm.exit_crit_edge: ; preds = %if.else150.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8723b2ant_action_algorithm.exit

if.then162.i:                                     ; preds = %if.else150.i
  call void @__sanitizer_cov_trace_pc() #6
  %41 = ptrtoint ptr %bt_hs_on.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %bt_hs_on.i, align 1, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool163.not.i = icmp eq i8 %42, 0
  %.str.191..str.190.i = select i1 %tobool163.not.i, ptr @.str.191, ptr @.str.190
  %.279.i = select i1 %tobool163.not.i, i8 9, i8 10
  br label %cleanup.sink.split.i

if.else169.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %num_of_diff_profile.3.i)
  %cmp171.i = icmp ult i8 %num_of_diff_profile.3.i, 3
  %brmerge272.i = select i1 %cmp171.i, i1 true, i1 %tobool2.not.i
  %brmerge273.i = select i1 %brmerge272.i, i1 true, i1 %tobool5.not.i
  %brmerge274.i = select i1 %brmerge273.i, i1 true, i1 %tobool9.not.i
  %brmerge275.i = select i1 %brmerge274.i, i1 true, i1 %tobool13.not.i
  br i1 %brmerge275.i, label %if.else169.i.btc8723b2ant_action_algorithm.exit_crit_edge, label %if.then188.i

if.else169.i.btc8723b2ant_action_algorithm.exit_crit_edge: ; preds = %if.else169.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8723b2ant_action_algorithm.exit

if.then188.i:                                     ; preds = %if.else169.i
  call void @__sanitizer_cov_trace_pc() #6
  %43 = ptrtoint ptr %bt_hs_on.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %bt_hs_on.i, align 1, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool189.not.i = icmp eq i8 %44, 0
  %.str.193..str.192.i = select i1 %tobool189.not.i, ptr @.str.193, ptr @.str.192
  %.280.i = select i1 %tobool189.not.i, i8 8, i8 0
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then188.i, %if.then162.i, %if.then142.i, %if.then129.i, %land.lhs.true116.i.cleanup.sink.split.i_crit_edge, %if.then96.i, %if.then83.i, %land.lhs.true.i.cleanup.sink.split.i_crit_edge, %if.then59.i, %if.then48.i.cleanup.sink.split.i_crit_edge, %if.then32.i, %if.then18.i.cleanup.sink.split.i_crit_edge, %if.end4.cleanup.sink.split.i_crit_edge
  %.str.172.sink.i = phi ptr [ @.str.170, %if.end4.cleanup.sink.split.i_crit_edge ], [ %.str.171.mux.mux.i, %if.then18.i.cleanup.sink.split.i_crit_edge ], [ %.str.175..str.174.i, %if.then32.i ], [ %.str.176.mux.i, %if.then48.i.cleanup.sink.split.i_crit_edge ], [ %.str.179..str.178.i, %if.then59.i ], [ @.str.180, %land.lhs.true.i.cleanup.sink.split.i_crit_edge ], [ %.str.182..str.181.i, %if.then83.i ], [ %.str.184..str.183.i, %if.then96.i ], [ @.str.185, %land.lhs.true116.i.cleanup.sink.split.i_crit_edge ], [ %.str.187..str.186.i, %if.then129.i ], [ %.str.189..str.188.i, %if.then142.i ], [ %.str.191..str.190.i, %if.then162.i ], [ %.str.193..str.192.i, %if.then188.i ]
  %retval.0.ph.i = phi i8 [ 0, %if.end4.cleanup.sink.split.i_crit_edge ], [ %.mux.mux.i, %if.then18.i.cleanup.sink.split.i_crit_edge ], [ %..i, %if.then32.i ], [ 8, %if.then48.i.cleanup.sink.split.i_crit_edge ], [ %.276.i, %if.then59.i ], [ 10, %land.lhs.true.i.cleanup.sink.split.i_crit_edge ], [ %.277.i, %if.then83.i ], [ %.278.i, %if.then96.i ], [ 8, %land.lhs.true116.i.cleanup.sink.split.i_crit_edge ], [ 8, %if.then129.i ], [ 8, %if.then142.i ], [ %.279.i, %if.then162.i ], [ %.280.i, %if.then188.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.172.sink.i) #4
  br label %btc8723b2ant_action_algorithm.exit

btc8723b2ant_action_algorithm.exit:               ; preds = %cleanup.sink.split.i, %if.else169.i.btc8723b2ant_action_algorithm.exit_crit_edge, %if.else150.i.btc8723b2ant_action_algorithm.exit_crit_edge, %if.else134.i.btc8723b2ant_action_algorithm.exit_crit_edge, %land.lhs.true125.i.btc8723b2ant_action_algorithm.exit_crit_edge, %if.else88.i.btc8723b2ant_action_algorithm.exit_crit_edge, %land.lhs.true79.i.btc8723b2ant_action_algorithm.exit_crit_edge, %if.else56.i.btc8723b2ant_action_algorithm.exit_crit_edge, %if.else29.i.btc8723b2ant_action_algorithm.exit_crit_edge
  %retval.0.i = phi i8 [ 0, %if.else29.i.btc8723b2ant_action_algorithm.exit_crit_edge ], [ 0, %if.else56.i.btc8723b2ant_action_algorithm.exit_crit_edge ], [ 0, %if.else88.i.btc8723b2ant_action_algorithm.exit_crit_edge ], [ 0, %if.else134.i.btc8723b2ant_action_algorithm.exit_crit_edge ], [ 0, %if.else150.i.btc8723b2ant_action_algorithm.exit_crit_edge ], [ 0, %if.else169.i.btc8723b2ant_action_algorithm.exit_crit_edge ], [ 0, %land.lhs.true79.i.btc8723b2ant_action_algorithm.exit_crit_edge ], [ 0, %land.lhs.true125.i.btc8723b2ant_action_algorithm.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_hs_on.i) #4
  %45 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 19), align 4, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool5.not = icmp eq i8 %45, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %retval.0.i)
  %cmp.not = icmp eq i8 %retval.0.i, 6
  %or.cond = select i1 %tobool5.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %if.end8, label %if.then7

if.then7:                                         ; preds = %btc8723b2ant_action_algorithm.exit
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.153) #4
  %46 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_connected.i) #4
  %48 = ptrtoint ptr %wifi_connected.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %wifi_connected.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  %49 = ptrtoint ptr %low_pwr_disable.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %low_pwr_disable.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %scan.i) #4
  %50 = ptrtoint ptr %scan.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %scan.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link.i) #4
  %51 = ptrtoint ptr %link.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %link.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %roam.i) #4
  %52 = ptrtoint ptr %roam.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %roam.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %53 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %btc_set.i, align 4
  %call.i129 = call zeroext i1 %54(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i) #4
  %55 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %btc_get.i, align 4
  %call1.i = call zeroext i1 %56(ptr noundef %btcoexist, i8 noundef zeroext 2, ptr noundef nonnull %wifi_connected.i) #4
  %57 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %btc_get.i, align 4
  %call3.i = call zeroext i1 %58(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %scan.i) #4
  %59 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %btc_get.i, align 4
  %call5.i = call zeroext i1 %60(ptr noundef %btcoexist, i8 noundef zeroext 6, ptr noundef nonnull %link.i) #4
  %61 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %btc_get.i, align 4
  %call7.i = call zeroext i1 %62(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %roam.i) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i.i) #4
  %63 = ptrtoint ptr %low_pwr_disable.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %low_pwr_disable.i.i, align 1
  %64 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %btc_set.i, align 4
  %call5.i.i = call zeroext i1 %65(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i.i) #4
  %66 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %btc_set.i, align 4
  %call7.i.i = call zeroext i1 %67(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 33), align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i.i) #4
  %68 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 5), align 1, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i131 = icmp eq i8 %68, 0
  br i1 %tobool.not.i131, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 23) #4
  call fastcc void @btc8723b2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef -1431655766, i32 noundef -1431655766) #4
  br label %if.end18.i

if.else.i:                                        ; preds = %if.then7
  %69 = ptrtoint ptr %scan.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %scan.i, align 1, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool8.not.i = icmp eq i8 %70, 0
  br i1 %tobool8.not.i, label %lor.lhs.false.i, label %if.else.i.if.then12.i_crit_edge

if.else.i.if.then12.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i

lor.lhs.false.i:                                  ; preds = %if.else.i
  %71 = ptrtoint ptr %link.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %link.i, align 1, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool9.not.i132 = icmp eq i8 %72, 0
  br i1 %tobool9.not.i132, label %lor.lhs.false10.i, label %lor.lhs.false.i.if.then12.i_crit_edge

lor.lhs.false.i.if.then12.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i

lor.lhs.false10.i:                                ; preds = %lor.lhs.false.i
  %73 = ptrtoint ptr %roam.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %roam.i, align 1, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool11.not.i = icmp eq i8 %74, 0
  br i1 %tobool11.not.i, label %if.else13.i, label %lor.lhs.false10.i.if.then12.i_crit_edge

lor.lhs.false10.i.if.then12.i_crit_edge:          ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i

if.then12.i:                                      ; preds = %lor.lhs.false10.i.if.then12.i_crit_edge, %lor.lhs.false.i.if.then12.i_crit_edge, %if.else.i.if.then12.i_crit_edge
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %47, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.194) #4
  call fastcc void @btc8723b2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1440568797, i32 noundef -1431655766) #4
  call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 22) #4
  br label %if.end18.i

if.else13.i:                                      ; preds = %lor.lhs.false10.i
  %75 = ptrtoint ptr %wifi_connected.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %wifi_connected.i, align 1, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool14.not.i = icmp eq i8 %76, 0
  br i1 %tobool14.not.i, label %if.else16.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %47, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.195) #4
  call fastcc void @btc8723b2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1440568797, i32 noundef -1431655766) #4
  call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 22) #4
  br label %if.end18.i

if.else16.i:                                      ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8723b2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1431655765) #4
  call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 1) #4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.else16.i, %if.then15.i, %if.then12.i, %if.then.i
  %77 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %adapter, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %78, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.101, i32 noundef 6) #4
  store i8 6, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 3), align 1
  %79 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i.i) #4
  %81 = ptrtoint ptr %h2c_parameter.i.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 6, ptr %h2c_parameter.i.i.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %80, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131, i32 noundef 6) #4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %80, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef 6) #4
  %btc_fill_h2c.i.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %82 = ptrtoint ptr %btc_fill_h2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %btc_fill_h2c.i.i.i, align 4
  call void %83(ptr noundef %btcoexist, i8 noundef zeroext 100, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i.i) #4
  %84 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 3), align 1
  store i8 %84, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 2), align 2
  %85 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %adapter, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %86, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef 0) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1
  %87 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %88 = zext i8 %87 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %86, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.134, i32 noundef %88, i32 noundef 0) #4
  %89 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %90 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1, !range !465
  call void @__sanitizer_cov_trace_cmp1(i8 %89, i8 %90)
  %cmp.i.i = icmp eq i8 %89, %90
  br i1 %cmp.i.i, label %if.end18.i.btc8723b2ant_action_bt_inquiry.exit_crit_edge, label %if.end16.i.i

if.end18.i.btc8723b2ant_action_bt_inquiry.exit_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8723b2ant_action_bt_inquiry.exit

if.end16.i.i:                                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #6
  %91 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i42.i) #4
  %93 = ptrtoint ptr %h2c_parameter.i.i42.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %90, ptr %h2c_parameter.i.i42.i, align 1
  %conv.i.i44.i = zext i8 %90 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %92, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.135, i32 noundef %conv.i.i44.i) #4
  %94 = ptrtoint ptr %btc_fill_h2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %btc_fill_h2c.i.i.i, align 4
  call void %95(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i42.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i42.i) #4
  %96 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1, !range !465
  store i8 %96, ptr @glcoex_dm_8723b_2ant, align 4
  br label %btc8723b2ant_action_bt_inquiry.exit

btc8723b2ant_action_bt_inquiry.exit:              ; preds = %if.end16.i.i, %if.end18.i.btc8723b2ant_action_bt_inquiry.exit_crit_edge
  call fastcc void @btc8723b2ant_sw_mechanism(ptr noundef %btcoexist, i1 noundef zeroext false) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %roam.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %scan.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_connected.i) #4
  br label %cleanup

if.end8:                                          ; preds = %btc8723b2ant_action_algorithm.exit
  %97 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %btc_get.i, align 4
  %call9 = call zeroext i1 %98(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %scan) #4
  %99 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %btc_get.i, align 4
  %call11 = call zeroext i1 %100(ptr noundef %btcoexist, i8 noundef zeroext 6, ptr noundef nonnull %link) #4
  %101 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %btc_get.i, align 4
  %call13 = call zeroext i1 %102(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %roam) #4
  %103 = ptrtoint ptr %scan to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %scan, align 1, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool14.not = icmp eq i8 %104, 0
  br i1 %tobool14.not, label %lor.lhs.false, label %if.end8.if.then21_crit_edge

if.end8.if.then21_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then21

lor.lhs.false:                                    ; preds = %if.end8
  %105 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %link, align 1, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool16.not = icmp eq i8 %106, 0
  br i1 %tobool16.not, label %lor.lhs.false18, label %lor.lhs.false.if.then21_crit_edge

lor.lhs.false.if.then21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then21

lor.lhs.false18:                                  ; preds = %lor.lhs.false
  %107 = ptrtoint ptr %roam to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %roam, align 1, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool19.not = icmp eq i8 %108, 0
  br i1 %tobool19.not, label %if.end22, label %lor.lhs.false18.if.then21_crit_edge

lor.lhs.false18.if.then21_crit_edge:              ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then21

if.then21:                                        ; preds = %lor.lhs.false18.if.then21_crit_edge, %lor.lhs.false.if.then21_crit_edge, %if.end8.if.then21_crit_edge
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.154) #4
  %109 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %adapter, align 4
  call fastcc void @btc8723b2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1440568797, i32 noundef -1431655766) #4
  call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 22) #4
  call fastcc void @btc8723b2ant_sw_mechanism(ptr noundef %btcoexist, i1 noundef zeroext false) #4
  %btc_read_4byte.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 22
  %111 = ptrtoint ptr %btc_read_4byte.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %btc_read_4byte.i, align 4
  %call.i134 = call i32 %112(ptr noundef %btcoexist, i32 noundef 2376) #4
  %btc_read_1byte.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 17
  %113 = ptrtoint ptr %btc_read_1byte.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %btc_read_1byte.i, align 4
  %call1.i135 = call zeroext i8 %114(ptr noundef %btcoexist, i32 noundef 1893) #4
  %115 = ptrtoint ptr %btc_read_1byte.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %btc_read_1byte.i, align 4
  %call3.i136 = call zeroext i8 %116(ptr noundef %btcoexist, i32 noundef 1902) #4
  %conv.i = zext i8 %call1.i135 to i32
  %conv4.i = zext i8 %call3.i136 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %110, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.196, i32 noundef %call.i134, i32 noundef %conv.i, i32 noundef %conv4.i) #4
  br label %cleanup

if.end22:                                         ; preds = %lor.lhs.false18
  %117 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %btc_get.i, align 4
  %call24 = call zeroext i1 %118(ptr noundef %btcoexist, i8 noundef zeroext 27, ptr noundef nonnull %wifi_link_status) #4
  %119 = ptrtoint ptr %wifi_link_status to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %wifi_link_status, align 4
  %121 = and i32 %120, -131064
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %if.end34, label %if.then29

if.then29:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  %shr = lshr i32 %120, 16
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.155, i32 noundef %shr, i32 noundef %120) #4
  %123 = ptrtoint ptr %bt_link_info1 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %bt_link_info1, align 1, !range !465
  %125 = ptrtoint ptr %miracast_plus_bt to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %124, ptr %miracast_plus_bt, align 1
  %btc_set = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %126 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %btc_set, align 4
  %call33 = call zeroext i1 %127(ptr noundef %btcoexist, i8 noundef zeroext 8, ptr noundef nonnull %miracast_plus_bt) #4
  call fastcc void @btc8723b2ant_action_wifi_multi_port(ptr noundef %btcoexist)
  br label %cleanup

if.end34:                                         ; preds = %if.end22
  %128 = ptrtoint ptr %miracast_plus_bt to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 0, ptr %miracast_plus_bt, align 1
  %btc_set35 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %129 = ptrtoint ptr %btc_set35 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %btc_set35, align 4
  %call36 = call zeroext i1 %130(ptr noundef %btcoexist, i8 noundef zeroext 8, ptr noundef nonnull %miracast_plus_bt) #4
  store i8 %retval.0.i, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 39), align 4
  %conv38 = zext i8 %retval.0.i to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.156, i32 noundef %conv38) #4
  %call39 = call fastcc zeroext i1 @btc8723b2ant_is_common_action(ptr noundef %btcoexist)
  br i1 %call39, label %if.then40, label %if.else41

if.then40:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.157) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 11), align 1
  br label %cleanup

if.else41:                                        ; preds = %if.end34
  %131 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 39), align 4
  %132 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 38), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %131, i8 %132)
  %cmp45.not = icmp eq i8 %131, %132
  br i1 %cmp45.not, label %if.else41.if.end53_crit_edge, label %if.then47

if.else41.if.end53_crit_edge:                     ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end53

if.then47:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #6
  %conv44 = zext i8 %132 to i32
  %conv43 = zext i8 %131 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.158, i32 noundef %conv44, i32 noundef %conv43) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 11), align 1
  %.pr = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 39), align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then47, %if.else41.if.end53_crit_edge
  %133 = phi i8 [ %.pr, %if.then47 ], [ %131, %if.else41.if.end53_crit_edge ]
  %134 = zext i8 %133 to i64
  call void @__sanitizer_cov_trace_switch(i64 %134, ptr @__sancov_gen_cov_switch_values.222)
  switch i8 %133, label %sw.default [
    i8 1, label %sw.bb
    i8 2, label %sw.bb56
    i8 3, label %sw.bb57
    i8 4, label %sw.bb58
    i8 5, label %sw.bb59
    i8 6, label %sw.bb60
    i8 7, label %sw.bb61
    i8 8, label %sw.bb62
    i8 9, label %sw.bb63
    i8 10, label %sw.bb64
  ]

sw.bb:                                            ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.159) #4
  call fastcc void @btc8723b2ant_action_sco(ptr noundef %btcoexist)
  br label %sw.epilog

sw.bb56:                                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.160) #4
  call fastcc void @btc8723b2ant_action_hid(ptr noundef %btcoexist)
  br label %sw.epilog

sw.bb57:                                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.161) #4
  call fastcc void @btc8723b2ant_action_a2dp(ptr noundef %btcoexist)
  br label %sw.epilog

sw.bb58:                                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.162) #4
  call fastcc void @btc8723b2ant_action_a2dp_pan_hs(ptr noundef %btcoexist)
  br label %sw.epilog

sw.bb59:                                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.163) #4
  call fastcc void @btc8723b2ant_action_pan_edr(ptr noundef %btcoexist)
  br label %sw.epilog

sw.bb60:                                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.164) #4
  call fastcc void @btc8723b2ant_action_pan_hs(ptr noundef %btcoexist)
  br label %sw.epilog

sw.bb61:                                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.165) #4
  call fastcc void @btc8723b2ant_action_pan_edr_a2dp(ptr noundef %btcoexist)
  br label %sw.epilog

sw.bb62:                                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.166) #4
  call fastcc void @btc8723b2ant_action_pan_edr_hid(ptr noundef %btcoexist)
  br label %sw.epilog

sw.bb63:                                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.167) #4
  call fastcc void @btc8723b2ant_action_hid_a2dp_pan_edr(ptr noundef %btcoexist)
  br label %sw.epilog

sw.bb64:                                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.168) #4
  call fastcc void @btc8723b2ant_action_hid_a2dp(ptr noundef %btcoexist)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.169) #4
  call fastcc void @btc8723b2ant_coex_alloff(ptr noundef %btcoexist)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb64, %sw.bb63, %sw.bb62, %sw.bb61, %sw.bb60, %sw.bb59, %sw.bb58, %sw.bb57, %sw.bb56, %sw.bb
  %135 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 39), align 4
  store i8 %135, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 38), align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then40, %if.then29, %if.then21, %btc8723b2ant_action_bt_inquiry.exit, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %roam) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %scan) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %miracast_plus_bt) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_link_status) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8723b2ant_halt_notify(ptr noundef %btcoexist) local_unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i4 = alloca [3 x i8], align 1
  %wifi_central_chnl.i = alloca i8, align 1
  %h2c_parameter.i.i = alloca [1 x i8], align 1
  %is_in_mp_mode.i = alloca i8, align 1
  %h2c_parameter.i = alloca [2 x i8], align 2
  %fw_ver.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.94) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %is_in_mp_mode.i) #4
  %2 = ptrtoint ptr %is_in_mp_mode.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %is_in_mp_mode.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %h2c_parameter.i) #4
  %3 = ptrtoint ptr %h2c_parameter.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %h2c_parameter.i, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_ver.i) #4
  %4 = ptrtoint ptr %fw_ver.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %fw_ver.i, align 4
  %btc_write_1byte.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %5 = ptrtoint ptr %btc_write_1byte.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %btc_write_1byte.i, align 4
  tail call void %6(ptr noundef %btcoexist, i32 noundef 1902, i32 noundef 4) #4
  %btc_set_rf_reg.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 27
  %7 = ptrtoint ptr %btc_set_rf_reg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %btc_set_rf_reg.i, align 4
  tail call void %8(ptr noundef %btcoexist, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 1048575, i32 noundef 1920) #4
  %btc_get.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %9 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %btc_get.i, align 4
  %call.i = call zeroext i1 %10(ptr noundef %btcoexist, i8 noundef zeroext 26, ptr noundef nonnull %fw_ver.i) #4
  %11 = ptrtoint ptr %fw_ver.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fw_ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572863, i32 %12)
  %cmp.i = icmp ugt i32 %12, 1572863
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %h2c_parameter.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %h2c_parameter.i, align 2
  %btc_fill_h2c.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %14 = ptrtoint ptr %btc_fill_h2c.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %btc_fill_h2c.i, align 4
  call void %15(ptr noundef %btcoexist, i8 noundef zeroext 110, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i) #4
  br label %btc8723b2ant_wifioff_hwcfg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %btc_write_1byte.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %btc_write_1byte.i, align 4
  call void %17(ptr noundef %btcoexist, i32 noundef 1893, i32 noundef 24) #4
  br label %btc8723b2ant_wifioff_hwcfg.exit

btc8723b2ant_wifioff_hwcfg.exit:                  ; preds = %if.else.i, %if.then.i
  %18 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %btc_get.i, align 4
  %call3.i = call zeroext i1 %19(ptr noundef %btcoexist, i8 noundef zeroext 18, ptr noundef nonnull %is_in_mp_mode.i) #4
  %20 = ptrtoint ptr %is_in_mp_mode.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %is_in_mp_mode.i, align 1, !range !465
  %btc_write_1byte_bitmask.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 19
  %22 = ptrtoint ptr %btc_write_1byte_bitmask.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %btc_write_1byte_bitmask.i, align 4
  call void %23(ptr noundef %btcoexist, i32 noundef 103, i32 noundef 32, i8 noundef zeroext %21) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_ver.i) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %h2c_parameter.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %is_in_mp_mode.i) #4
  %24 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adapter, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %25, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.110) #4
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 4), align 4
  %26 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  %28 = ptrtoint ptr %h2c_parameter.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %h2c_parameter.i.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %27, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.148, i32 noundef 1) #4
  %btc_fill_h2c.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %29 = ptrtoint ptr %btc_fill_h2c.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %btc_fill_h2c.i.i, align 4
  call void %30(ptr noundef %btcoexist, i8 noundef zeroext 99, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  %31 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 4), align 4, !range !465
  store i8 %31, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 5), align 1
  %32 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %h2c_parameter.i4) #4
  %34 = call ptr @memset(ptr %h2c_parameter.i4, i32 0, i32 3)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_central_chnl.i) #4
  %35 = ptrtoint ptr %wifi_central_chnl.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -1, ptr %wifi_central_chnl.i, align 1, !annotation !466
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %33, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.80) #4
  %36 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %btc_get.i, align 4
  %call.i7 = call zeroext i1 %37(ptr noundef %btcoexist, i8 noundef zeroext 38, ptr noundef nonnull %wifi_central_chnl.i) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 41), align 2
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 41, i32 1), align 1
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 41, i32 2), align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %33, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.81, i32 noundef 0) #4
  %38 = ptrtoint ptr %btc_fill_h2c.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %btc_fill_h2c.i.i, align 4
  call void %39(ptr noundef %btcoexist, i8 noundef zeroext 102, i32 noundef 3, ptr noundef nonnull %h2c_parameter.i4) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_central_chnl.i) #4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %h2c_parameter.i4) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8723b2ant_pnp_notify(ptr noundef %btcoexist, i8 noundef zeroext %pnp_state) local_unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.95) #4
  %2 = zext i8 %pnp_state to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.223)
  switch i8 %pnp_state, label %entry.if.end6_crit_edge [
    i8 1, label %if.then
    i8 0, label %if.then5
  ]

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.96) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 7), align 1
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 6), align 2
  br label %if.end6

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.97) #4
  %3 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adapter, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %4, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str) #4
  %btc_get_rf_reg.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 28
  %5 = ptrtoint ptr %btc_get_rf_reg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %btc_get_rf_reg.i, align 4
  %call.i = tail call i32 %6(ptr noundef %btcoexist, i8 noundef zeroext 0, i32 noundef 30, i32 noundef 1048575) #4
  store i32 %call.i, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 18), align 4
  %btc_read_1byte.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 17
  %7 = ptrtoint ptr %btc_read_1byte.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %btc_read_1byte.i, align 4
  %call1.i = tail call zeroext i8 %8(ptr noundef %btcoexist, i32 noundef 1936) #4
  %9 = and i8 %call1.i, -64
  %10 = or i8 %9, 5
  %btc_write_1byte.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %11 = ptrtoint ptr %btc_write_1byte.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %btc_write_1byte.i, align 4
  %conv5.i = zext i8 %10 to i32
  tail call void %12(ptr noundef %btcoexist, i32 noundef 1936, i32 noundef %conv5.i) #4
  tail call fastcc void @btc8723b2ant_set_ant_path(ptr noundef %btcoexist, i1 noundef zeroext true) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 34), align 1
  tail call fastcc void @btc8723b2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext true, i32 noundef 1431655765, i32 noundef 1431655765) #4
  %13 = ptrtoint ptr %btc_write_1byte.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %btc_write_1byte.i, align 4
  tail call void %14(ptr noundef %btcoexist, i32 noundef 1902, i32 noundef 4) #4
  %15 = ptrtoint ptr %btc_write_1byte.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %btc_write_1byte.i, align 4
  tail call void %16(ptr noundef %btcoexist, i32 noundef 1912, i32 noundef 3) #4
  %btc_write_1byte_bitmask.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 19
  %17 = ptrtoint ptr %btc_write_1byte_bitmask.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %btc_write_1byte_bitmask.i, align 4
  tail call void %18(ptr noundef %btcoexist, i32 noundef 64, i32 noundef 32, i8 noundef zeroext 1) #4
  %auto_report_2ant.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 8
  %19 = ptrtoint ptr %auto_report_2ant.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %auto_report_2ant.i, align 1
  tail call fastcc void @btc8723b2ant_init_coex_dm(ptr noundef %btcoexist)
  %20 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i) #4
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 16), align 1
  %22 = ptrtoint ptr %h2c_parameter.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %h2c_parameter.i, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %21, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.149, i32 noundef 1) #4
  %btc_fill_h2c.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %23 = ptrtoint ptr %btc_fill_h2c.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %btc_fill_h2c.i, align 4
  call void %24(ptr noundef %btcoexist, i8 noundef zeroext 97, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i) #4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.then, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8723b2ant_periodical(ptr noundef %btcoexist) local_unnamed_addr #0 align 64 {
entry:
  %wifi_rssi.i.i = alloca i32, align 4
  %wifi_busy.i = alloca i8, align 1
  %under_4way.i = alloca i8, align 1
  %bt_hs_on.i = alloca i8, align 1
  %wifi_connected.i = alloca i8, align 1
  %h2c_parameter.i = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.98) #4
  %2 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 34), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %2)
  %cmp = icmp ult i8 %2, 6
  br i1 %cmp, label %if.then, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then:                                          ; preds = %entry
  %add = add nuw nsw i8 %2, 1
  store i8 %add, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 34), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %add)
  %cmp8 = icmp eq i8 %add, 3
  br i1 %cmp8, label %if.then10, label %if.then.if.end11_crit_edge

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.99) #4
  tail call fastcc void @btc8723b2ant_set_ant_path(ptr noundef %btcoexist, i1 noundef zeroext false)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.then.if.end11_crit_edge, %entry.if.end11_crit_edge
  %auto_report_2ant = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 8
  %3 = ptrtoint ptr %auto_report_2ant to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %auto_report_2ant, align 1, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i) #4
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 16), align 1
  %7 = ptrtoint ptr %h2c_parameter.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %h2c_parameter.i, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %6, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.149, i32 noundef 1) #4
  %btc_fill_h2c.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %8 = ptrtoint ptr %btc_fill_h2c.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %btc_fill_h2c.i, align 4
  call void %9(ptr noundef %btcoexist, i8 noundef zeroext 97, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i) #4
  br label %if.end26

if.else:                                          ; preds = %if.end11
  tail call fastcc void @btc8723b2ant_monitor_bt_ctr(ptr noundef %btcoexist)
  %10 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 7), align 1, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %11 = call ptr @memset(ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 25), i32 0, i32 28)
  br label %btc8723b2ant_monitor_wifi_ctr.exit

if.else.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %btc_read_4byte.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 22
  %12 = ptrtoint ptr %btc_read_4byte.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %btc_read_4byte.i, align 4
  %call.i = tail call i32 %13(ptr noundef %btcoexist, i32 noundef 3976) #4
  store i32 %call.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 25), align 4
  %btc_read_2byte.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 20
  %14 = ptrtoint ptr %btc_read_2byte.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %btc_read_2byte.i, align 4
  %call2.i = tail call zeroext i16 %15(ptr noundef %btcoexist, i32 noundef 3988) #4
  %conv.i = zext i16 %call2.i to i32
  store i32 %conv.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 26), align 4
  %16 = ptrtoint ptr %btc_read_2byte.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %btc_read_2byte.i, align 4
  %call5.i = tail call zeroext i16 %17(ptr noundef %btcoexist, i32 noundef 3984) #4
  %conv6.i = zext i16 %call5.i to i32
  store i32 %conv6.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 27), align 4
  %18 = ptrtoint ptr %btc_read_2byte.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %btc_read_2byte.i, align 4
  %call9.i = tail call zeroext i16 %19(ptr noundef %btcoexist, i32 noundef 4024) #4
  %conv10.i = zext i16 %call9.i to i32
  store i32 %conv10.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 28), align 4
  %20 = ptrtoint ptr %btc_read_4byte.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %btc_read_4byte.i, align 4
  %call13.i = tail call i32 %21(ptr noundef %btcoexist, i32 noundef 3972) #4
  store i32 %call13.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 29), align 4
  %22 = ptrtoint ptr %btc_read_2byte.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %btc_read_2byte.i, align 4
  %call16.i = tail call zeroext i16 %23(ptr noundef %btcoexist, i32 noundef 3990) #4
  %conv17.i = zext i16 %call16.i to i32
  store i32 %conv17.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 30), align 4
  %24 = ptrtoint ptr %btc_read_2byte.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %btc_read_2byte.i, align 4
  %call20.i = tail call zeroext i16 %25(ptr noundef %btcoexist, i32 noundef 3986) #4
  %conv21.i = zext i16 %call20.i to i32
  store i32 %conv21.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 31), align 4
  %26 = ptrtoint ptr %btc_read_2byte.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %btc_read_2byte.i, align 4
  %call24.i = tail call zeroext i16 %27(ptr noundef %btcoexist, i32 noundef 4026) #4
  %conv25.i = zext i16 %call24.i to i32
  br label %btc8723b2ant_monitor_wifi_ctr.exit

btc8723b2ant_monitor_wifi_ctr.exit:               ; preds = %if.else.i, %if.then.i
  %storemerge.i = phi i32 [ %conv25.i, %if.else.i ], [ 0, %if.then.i ]
  store i32 %storemerge.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 32), align 4
  %btc_write_1byte_bitmask.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 19
  %28 = ptrtoint ptr %btc_write_1byte_bitmask.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %btc_write_1byte_bitmask.i, align 4
  tail call void %29(ptr noundef %btcoexist, i32 noundef 3862, i32 noundef 1, i8 noundef zeroext 1) #4
  %30 = ptrtoint ptr %btc_write_1byte_bitmask.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %btc_write_1byte_bitmask.i, align 4
  tail call void %31(ptr noundef %btcoexist, i32 noundef 3862, i32 noundef 1, i8 noundef zeroext 0) #4
  %32 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 8), align 4
  %33 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 9), align 4
  %add13 = add i32 %33, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %add13)
  %cmp14 = icmp ult i32 %add13, 50
  br i1 %cmp14, label %land.lhs.true, label %btc8723b2ant_monitor_wifi_ctr.exit.if.end20_crit_edge

btc8723b2ant_monitor_wifi_ctr.exit.if.end20_crit_edge: ; preds = %btc8723b2ant_monitor_wifi_ctr.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

land.lhs.true:                                    ; preds = %btc8723b2ant_monitor_wifi_ctr.exit
  %hid_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 6
  %34 = ptrtoint ptr %hid_exist to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %hid_exist, align 1, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool16.not = icmp eq i8 %35, 0
  br i1 %tobool16.not, label %land.lhs.true.if.end20_crit_edge, label %if.then18

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %36 = ptrtoint ptr %hid_exist to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %hid_exist, align 1
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %land.lhs.true.if.end20_crit_edge, %btc8723b2ant_monitor_wifi_ctr.exit.if.end20_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_busy.i) #4
  %37 = ptrtoint ptr %wifi_busy.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %wifi_busy.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %under_4way.i) #4
  %38 = ptrtoint ptr %under_4way.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %under_4way.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_hs_on.i) #4
  %39 = ptrtoint ptr %bt_hs_on.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %bt_hs_on.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_connected.i) #4
  %40 = ptrtoint ptr %wifi_connected.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %wifi_connected.i, align 1
  %btc_get.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %41 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %btc_get.i, align 4
  %call.i37 = call zeroext i1 %42(ptr noundef %btcoexist, i8 noundef zeroext 2, ptr noundef nonnull %wifi_connected.i) #4
  %43 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %btc_get.i, align 4
  %call2.i38 = call zeroext i1 %44(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %wifi_busy.i) #4
  %45 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %btc_get.i, align 4
  %call4.i = call zeroext i1 %46(ptr noundef %btcoexist, i8 noundef zeroext 0, ptr noundef nonnull %bt_hs_on.i) #4
  %47 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %btc_get.i, align 4
  %call6.i = call zeroext i1 %48(ptr noundef %btcoexist, i8 noundef zeroext 12, ptr noundef nonnull %under_4way.i) #4
  %49 = ptrtoint ptr %wifi_connected.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %wifi_connected.i, align 1, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i39 = icmp eq i8 %50, 0
  br i1 %tobool.not.i39, label %btc8723b2ant_is_wifi_status_changed.exit.thread42, label %if.then.i40

btc8723b2ant_is_wifi_status_changed.exit.thread42: ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_connected.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_hs_on.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %under_4way.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_busy.i) #4
  br label %lor.lhs.false

if.then.i40:                                      ; preds = %if.end20
  %51 = ptrtoint ptr %wifi_busy.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %wifi_busy.i, align 1, !range !465
  %53 = load i8, ptr @btc8723b2ant_is_wifi_status_changed.pre_wifi_busy, align 1, !range !465
  call void @__sanitizer_cov_trace_cmp1(i8 %52, i8 %53)
  %cmp.not.i = icmp eq i8 %52, %53
  br i1 %cmp.not.i, label %if.end.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.then.i40
  call void @__sanitizer_cov_trace_pc() #6
  store i8 %52, ptr @btc8723b2ant_is_wifi_status_changed.pre_wifi_busy, align 1
  br label %btc8723b2ant_is_wifi_status_changed.exit.thread

if.end.i:                                         ; preds = %if.then.i40
  %54 = ptrtoint ptr %under_4way.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %under_4way.i, align 1, !range !465
  %56 = load i8, ptr @btc8723b2ant_is_wifi_status_changed.pre_under_4way, align 1, !range !465
  call void @__sanitizer_cov_trace_cmp1(i8 %55, i8 %56)
  %cmp17.not.i = icmp eq i8 %55, %56
  br i1 %cmp17.not.i, label %if.end22.i, label %if.then19.i

if.then19.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  store i8 %55, ptr @btc8723b2ant_is_wifi_status_changed.pre_under_4way, align 1
  br label %btc8723b2ant_is_wifi_status_changed.exit.thread

if.end22.i:                                       ; preds = %if.end.i
  %57 = ptrtoint ptr %bt_hs_on.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %bt_hs_on.i, align 1, !range !465
  %59 = load i8, ptr @btc8723b2ant_is_wifi_status_changed.pre_bt_hs_on, align 1, !range !465
  call void @__sanitizer_cov_trace_cmp1(i8 %58, i8 %59)
  %cmp27.not.i = icmp eq i8 %58, %59
  br i1 %cmp27.not.i, label %if.end32.i, label %if.then29.i

if.then29.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #6
  store i8 %58, ptr @btc8723b2ant_is_wifi_status_changed.pre_bt_hs_on, align 1
  br label %btc8723b2ant_is_wifi_status_changed.exit.thread

if.end32.i:                                       ; preds = %if.end22.i
  %60 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 47), align 2
  %sub.i = sub i8 42, %60
  %61 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_rssi.i.i) #4
  %63 = ptrtoint ptr %wifi_rssi.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %wifi_rssi.i.i, align 4
  %64 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %btc_get.i, align 4
  %call.i.i = call zeroext i1 %65(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi.i.i) #4
  %66 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 15, i32 0), align 1
  %67 = zext i8 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.224)
  switch i8 %66, label %if.else19.i.i [
    i8 2, label %if.end32.i.if.then14.i.i_crit_edge
    i8 5, label %if.end32.i.if.then14.i.i_crit_edge44
  ]

if.end32.i.if.then14.i.i_crit_edge44:             ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i.i

if.end32.i.if.then14.i.i_crit_edge:               ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i.i

if.then14.i.i:                                    ; preds = %if.end32.i.if.then14.i.i_crit_edge, %if.end32.i.if.then14.i.i_crit_edge44
  %68 = ptrtoint ptr %wifi_rssi.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %wifi_rssi.i.i, align 4
  %conv15.i.i = zext i8 %sub.i to i32
  %add.i.i = add nuw nsw i32 %conv15.i.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %add.i.i)
  %cmp16.not.i.i = icmp slt i32 %69, %add.i.i
  %.str.115..str.114.i.i = select i1 %cmp16.not.i.i, ptr @.str.115, ptr @.str.114
  %..i.i = select i1 %cmp16.not.i.i, i8 5, i8 0
  br label %btc8723b2ant_is_wifi_status_changed.exit

if.else19.i.i:                                    ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #6
  %70 = ptrtoint ptr %wifi_rssi.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %wifi_rssi.i.i, align 4
  %conv20.i.i = zext i8 %sub.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %conv20.i.i)
  %cmp21.i.i = icmp slt i32 %71, %conv20.i.i
  %.str.116..str.117.i.i = select i1 %cmp21.i.i, ptr @.str.116, ptr @.str.117
  %.1.i.i = select i1 %cmp21.i.i, i8 2, i8 3
  br label %btc8723b2ant_is_wifi_status_changed.exit

btc8723b2ant_is_wifi_status_changed.exit.thread:  ; preds = %if.then29.i, %if.then19.i, %if.then11.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_connected.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_hs_on.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %under_4way.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_busy.i) #4
  br label %if.then24

btc8723b2ant_is_wifi_status_changed.exit:         ; preds = %if.else19.i.i, %if.then14.i.i
  %.str.115.sink.i.i = phi ptr [ %.str.115..str.114.i.i, %if.then14.i.i ], [ %.str.116..str.117.i.i, %if.else19.i.i ]
  %wifi_rssi_state.0.i.i = phi i8 [ %..i.i, %if.then14.i.i ], [ %.1.i.i, %if.else19.i.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %62, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.115.sink.i.i) #4
  store i8 %wifi_rssi_state.0.i.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 15, i32 0), align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i.i) #4
  %switch.and.i = and i8 %wifi_rssi_state.0.i.i, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %switch.and.i)
  %switch.selectcmp.i = icmp eq i8 %switch.and.i, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_connected.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_hs_on.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %under_4way.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_busy.i) #4
  br i1 %switch.selectcmp.i, label %btc8723b2ant_is_wifi_status_changed.exit.if.then24_crit_edge, label %btc8723b2ant_is_wifi_status_changed.exit.lor.lhs.false_crit_edge

btc8723b2ant_is_wifi_status_changed.exit.lor.lhs.false_crit_edge: ; preds = %btc8723b2ant_is_wifi_status_changed.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false

btc8723b2ant_is_wifi_status_changed.exit.if.then24_crit_edge: ; preds = %btc8723b2ant_is_wifi_status_changed.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

lor.lhs.false:                                    ; preds = %btc8723b2ant_is_wifi_status_changed.exit.lor.lhs.false_crit_edge, %btc8723b2ant_is_wifi_status_changed.exit.thread42
  %72 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 11), align 1, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool22.not = icmp eq i8 %72, 0
  br i1 %tobool22.not, label %lor.lhs.false.if.end26_crit_edge, label %lor.lhs.false.if.then24_crit_edge

lor.lhs.false.if.then24_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

lor.lhs.false.if.end26_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.then24:                                        ; preds = %lor.lhs.false.if.then24_crit_edge, %btc8723b2ant_is_wifi_status_changed.exit.if.then24_crit_edge, %btc8723b2ant_is_wifi_status_changed.exit.thread
  call fastcc void @btc8723b2ant_run_coexist_mechanism(ptr noundef %btcoexist)
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %lor.lhs.false.if.end26_crit_edge, %if.then12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8723b2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext %force_exec, i32 noundef %val0x6c0, i32 noundef %val0x6c4) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %cond = select i1 %force_exec, ptr @.str.101, ptr @.str.102
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.100, ptr noundef nonnull %cond, i32 noundef %val0x6c0, i32 noundef %val0x6c4, i32 noundef 16777215, i32 noundef 3) #4
  store i32 %val0x6c0, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 30), align 4
  store i32 %val0x6c4, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 32), align 4
  store i32 16777215, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 34), align 4
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 36), align 1
  br i1 %force_exec, label %entry.if.end28_crit_edge, label %if.then

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

if.then:                                          ; preds = %entry
  %2 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 29), align 4
  %3 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 31), align 4
  %4 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 33), align 4
  %5 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 35), align 4
  %conv2 = zext i8 %5 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.103, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %conv2) #4
  %6 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 30), align 4
  %7 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 32), align 4
  %8 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 34), align 4
  %9 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 36), align 1
  %conv7 = zext i8 %9 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.104, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %conv7) #4
  %10 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 29), align 4
  %11 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 30), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %11)
  %cmp = icmp eq i32 %10, %11
  br i1 %cmp, label %land.lhs.true, label %if.then.if.end28_crit_edge

if.then.if.end28_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

land.lhs.true:                                    ; preds = %if.then
  %12 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 31), align 4
  %13 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 32), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %13)
  %cmp13 = icmp eq i32 %12, %13
  br i1 %cmp13, label %land.lhs.true15, label %land.lhs.true.if.end28_crit_edge

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

land.lhs.true15:                                  ; preds = %land.lhs.true
  %14 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 33), align 4
  %15 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 34), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %15)
  %cmp18 = icmp eq i32 %14, %15
  br i1 %cmp18, label %land.lhs.true20, label %land.lhs.true15.if.end28_crit_edge

land.lhs.true15.if.end28_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

land.lhs.true20:                                  ; preds = %land.lhs.true15
  %16 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 35), align 4
  %17 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 36), align 1
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.105, i32 noundef %val0x6c0) #4
  %btc_write_4byte.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 23
  %20 = ptrtoint ptr %btc_write_4byte.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %btc_write_4byte.i, align 4
  tail call void %21(ptr noundef %btcoexist, i32 noundef 1728, i32 noundef %val0x6c0) #4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.106, i32 noundef %val0x6c4) #4
  %22 = ptrtoint ptr %btc_write_4byte.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %btc_write_4byte.i, align 4
  tail call void %23(ptr noundef %btcoexist, i32 noundef 1732, i32 noundef %val0x6c4) #4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.107, i32 noundef 16777215) #4
  %24 = ptrtoint ptr %btc_write_4byte.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %btc_write_4byte.i, align 4
  tail call void %25(ptr noundef %btcoexist, i32 noundef 1736, i32 noundef 16777215) #4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.108, i32 noundef 3) #4
  %btc_write_1byte.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %26 = ptrtoint ptr %btc_write_1byte.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %btc_write_1byte.i, align 4
  tail call void %27(ptr noundef %btcoexist, i32 noundef 1740, i32 noundef 3) #4
  %28 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 30), align 4
  store i32 %28, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 29), align 4
  %29 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 32), align 4
  store i32 %29, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 31), align 4
  %30 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 34), align 4
  store i32 %30, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 33), align 4
  %31 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 36), align 1
  store i8 %31, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 35), align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %land.lhs.true20.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8723b2ant_power_save_state(ptr noundef %btcoexist, i8 noundef zeroext %ps_type, i8 noundef zeroext %lps_val, i8 noundef zeroext %rpwm_val) unnamed_addr #0 align 64 {
entry:
  %lps.i.i = alloca i8, align 1
  %rpwm.i.i = alloca i8, align 1
  %lps_mode.i = alloca i8, align 1
  %low_pwr_disable = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable) #4
  %0 = ptrtoint ptr %low_pwr_disable to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %low_pwr_disable, align 1
  %1 = zext i8 %ps_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.225)
  switch i8 %ps_type, label %entry.sw.epilog_crit_edge [
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %lps_mode.i) #4
  %2 = ptrtoint ptr %lps_mode.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %lps_mode.i, align 1
  %btc_get.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %3 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %btc_get.i, align 4
  %call.i = call zeroext i1 %4(ptr noundef %btcoexist, i8 noundef zeroext 44, ptr noundef nonnull %lps_mode.i) #4
  %5 = ptrtoint ptr %lps_mode.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %lps_mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %if.then5.i, label %sw.bb3.btc8723b2ant_ps_tdma_check_for_power_save_state.exit_crit_edge

sw.bb3.btc8723b2ant_ps_tdma_check_for_power_save_state.exit_crit_edge: ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8723b2ant_ps_tdma_check_for_power_save_state.exit

if.then5.i:                                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 1) #4
  br label %btc8723b2ant_ps_tdma_check_for_power_save_state.exit

btc8723b2ant_ps_tdma_check_for_power_save_state.exit: ; preds = %if.then5.i, %sw.bb3.btc8723b2ant_ps_tdma_check_for_power_save_state.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lps_mode.i) #4
  store i8 %lps_val, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 43), align 2
  store i8 %rpwm_val, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 45), align 4
  %7 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 42), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %lps_val)
  %cmp.i = icmp eq i8 %7, %lps_val
  br i1 %cmp.i, label %land.lhs.true.i, label %btc8723b2ant_ps_tdma_check_for_power_save_state.exit.if.end10.i_crit_edge

btc8723b2ant_ps_tdma_check_for_power_save_state.exit.if.end10.i_crit_edge: ; preds = %btc8723b2ant_ps_tdma_check_for_power_save_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.i

land.lhs.true.i:                                  ; preds = %btc8723b2ant_ps_tdma_check_for_power_save_state.exit
  %8 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 44), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %rpwm_val)
  %cmp7.i = icmp eq i8 %8, %rpwm_val
  br i1 %cmp7.i, label %land.lhs.true.i.btc8723b2ant_lps_rpwm.exit_crit_edge, label %land.lhs.true.i.if.end10.i_crit_edge

land.lhs.true.i.if.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.i

land.lhs.true.i.btc8723b2ant_lps_rpwm.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8723b2ant_lps_rpwm.exit

if.end10.i:                                       ; preds = %land.lhs.true.i.if.end10.i_crit_edge, %btc8723b2ant_ps_tdma_check_for_power_save_state.exit.if.end10.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %lps.i.i) #4
  %9 = ptrtoint ptr %lps.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %lps_val, ptr %lps.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rpwm.i.i) #4
  %10 = ptrtoint ptr %rpwm.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %rpwm_val, ptr %rpwm.i.i, align 1
  %btc_set.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %11 = ptrtoint ptr %btc_set.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %btc_set.i.i, align 4
  %call.i.i = call zeroext i1 %12(ptr noundef %btcoexist, i8 noundef zeroext 18, ptr noundef nonnull %lps.i.i) #4
  %13 = ptrtoint ptr %btc_set.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %btc_set.i.i, align 4
  %call2.i.i = call zeroext i1 %14(ptr noundef %btcoexist, i8 noundef zeroext 19, ptr noundef nonnull %rpwm.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rpwm.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lps.i.i) #4
  %15 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 43), align 2
  store i8 %15, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 42), align 1
  %16 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 45), align 4
  store i8 %16, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 44), align 1
  br label %btc8723b2ant_lps_rpwm.exit

btc8723b2ant_lps_rpwm.exit:                       ; preds = %if.end10.i, %land.lhs.true.i.btc8723b2ant_lps_rpwm.exit_crit_edge
  %17 = ptrtoint ptr %low_pwr_disable to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %low_pwr_disable, align 1
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %btc8723b2ant_lps_rpwm.exit, %entry.sw.epilog.sink.split_crit_edge
  %.sink25 = phi i8 [ 23, %btc8723b2ant_lps_rpwm.exit ], [ 24, %entry.sw.epilog.sink.split_crit_edge ]
  %btc_set = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %18 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %btc_set, align 4
  %call5 = call zeroext i1 %19(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable) #4
  %20 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %btc_set, align 4
  %call7 = call zeroext i1 %21(ptr noundef %btcoexist, i8 noundef zeroext %.sink25, ptr noundef null) #4
  store i8 %ps_type, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 33), align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext %force_exec, i1 noundef zeroext %turn_on, i8 noundef zeroext %type) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i429 = alloca [5 x i8], align 1
  %h2c_parameter.i420 = alloca [5 x i8], align 1
  %h2c_parameter.i411 = alloca [5 x i8], align 1
  %h2c_parameter.i401 = alloca [5 x i8], align 1
  %h2c_parameter.i391 = alloca [5 x i8], align 1
  %h2c_parameter.i381 = alloca [5 x i8], align 1
  %h2c_parameter.i367 = alloca [5 x i8], align 1
  %h2c_parameter.i357 = alloca [5 x i8], align 1
  %h2c_parameter.i = alloca [5 x i8], align 1
  %wifi_rssi.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool1 = zext i1 %turn_on to i8
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %2 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 47), align 2
  %sub = sub i8 42, %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %3 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %wifi_rssi.i, align 4
  %btc_get.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %4 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %btc_get.i, align 4
  %call.i = call zeroext i1 %5(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi.i) #4
  %6 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 15, i32 0), align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.226)
  switch i8 %6, label %if.else19.i [
    i8 2, label %entry.if.then14.i_crit_edge
    i8 5, label %entry.if.then14.i_crit_edge439
  ]

entry.if.then14.i_crit_edge439:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

entry.if.then14.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

if.then14.i:                                      ; preds = %entry.if.then14.i_crit_edge, %entry.if.then14.i_crit_edge439
  %8 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wifi_rssi.i, align 4
  %conv15.i = zext i8 %sub to i32
  %add.i = add nuw nsw i32 %conv15.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %add.i)
  %cmp16.not.i = icmp slt i32 %9, %add.i
  %.str.115..str.114.i = select i1 %cmp16.not.i, ptr @.str.115, ptr @.str.114
  %..i = select i1 %cmp16.not.i, i8 5, i8 0
  br label %btc8723b2ant_wifi_rssi_state.exit

if.else19.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wifi_rssi.i, align 4
  %conv20.i = zext i8 %sub to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv20.i)
  %cmp21.i = icmp slt i32 %11, %conv20.i
  %.str.116..str.117.i = select i1 %cmp21.i, ptr @.str.116, ptr @.str.117
  %.1.i = select i1 %cmp21.i, i8 2, i8 3
  br label %btc8723b2ant_wifi_rssi_state.exit

btc8723b2ant_wifi_rssi_state.exit:                ; preds = %if.else19.i, %if.then14.i
  %.str.115.sink.i = phi ptr [ %.str.115..str.114.i, %if.then14.i ], [ %.str.116..str.117.i, %if.else19.i ]
  %wifi_rssi_state.0.i = phi i8 [ %..i, %if.then14.i ], [ %.1.i, %if.else19.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.115.sink.i) #4
  store i8 %wifi_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 15, i32 0), align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %12 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 47), align 2
  %sub6 = sub i8 46, %12
  %13 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter, align 4
  %15 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 14), align 2
  %16 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 12), align 4
  %17 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.227)
  switch i8 %15, label %if.else17.i [
    i8 2, label %btc8723b2ant_wifi_rssi_state.exit.if.then12.i_crit_edge
    i8 5, label %btc8723b2ant_wifi_rssi_state.exit.if.then12.i_crit_edge440
  ]

btc8723b2ant_wifi_rssi_state.exit.if.then12.i_crit_edge440: ; preds = %btc8723b2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i

btc8723b2ant_wifi_rssi_state.exit.if.then12.i_crit_edge: ; preds = %btc8723b2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i

if.then12.i:                                      ; preds = %btc8723b2ant_wifi_rssi_state.exit.if.then12.i_crit_edge, %btc8723b2ant_wifi_rssi_state.exit.if.then12.i_crit_edge440
  %conv.i = zext i8 %16 to i32
  %conv13.i = zext i8 %sub6 to i32
  %add.i354 = add nuw nsw i32 %conv13.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i354, i32 %conv.i)
  %cmp14.not.i = icmp ugt i32 %add.i354, %conv.i
  %.str.122..str.121.i = select i1 %cmp14.not.i, ptr @.str.122, ptr @.str.121
  %..i355 = select i1 %cmp14.not.i, i8 5, i8 0
  br label %btc8723b2ant_bt_rssi_state.exit

if.else17.i:                                      ; preds = %btc8723b2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %sub6)
  %cmp19.i = icmp ult i8 %16, %sub6
  %.str.123..str.124.i = select i1 %cmp19.i, ptr @.str.123, ptr @.str.124
  %.116.i = select i1 %cmp19.i, i8 2, i8 3
  br label %btc8723b2ant_bt_rssi_state.exit

btc8723b2ant_bt_rssi_state.exit:                  ; preds = %if.else17.i, %if.then12.i
  %.str.123.sink.i = phi ptr [ %.str.122..str.121.i, %if.then12.i ], [ %.str.123..str.124.i, %if.else17.i ]
  %bt_rssi_state.0.i = phi i8 [ %..i355, %if.then12.i ], [ %.116.i, %if.else17.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %14, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.123.sink.i) #4
  store i8 %bt_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 14), align 2
  %cond = select i1 %force_exec, ptr @.str.101, ptr @.str.102
  %cond12 = select i1 %turn_on, ptr @.str.110, ptr @.str.111
  %conv13 = zext i8 %type to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.109, ptr noundef nonnull %cond, ptr noundef nonnull %cond12, i32 noundef %conv13) #4
  store i8 %frombool1, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 13), align 1
  store i8 %type, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 7), align 1
  %trunc = trunc i8 %wifi_rssi_state.0.i to i3
  %18 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.228)
  switch i3 %trunc, label %btc8723b2ant_bt_rssi_state.exit.land.lhs.true30_crit_edge [
    i3 0, label %btc8723b2ant_bt_rssi_state.exit.land.lhs.true_crit_edge
    i3 3, label %btc8723b2ant_bt_rssi_state.exit.land.lhs.true_crit_edge441
  ]

btc8723b2ant_bt_rssi_state.exit.land.lhs.true_crit_edge441: ; preds = %btc8723b2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

btc8723b2ant_bt_rssi_state.exit.land.lhs.true_crit_edge: ; preds = %btc8723b2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

btc8723b2ant_bt_rssi_state.exit.land.lhs.true30_crit_edge: ; preds = %btc8723b2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true30

land.lhs.true:                                    ; preds = %btc8723b2ant_bt_rssi_state.exit.land.lhs.true_crit_edge, %btc8723b2ant_bt_rssi_state.exit.land.lhs.true_crit_edge441
  %trunc438 = trunc i8 %bt_rssi_state.0.i to i3
  %19 = zext i3 %trunc438 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.229)
  switch i3 %trunc438, label %land.lhs.true.land.lhs.true30_crit_edge [
    i3 0, label %land.lhs.true.if.end_crit_edge
    i3 3, label %land.lhs.true.if.end_crit_edge442
  ]

land.lhs.true.if.end_crit_edge442:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.land.lhs.true30_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true30

land.lhs.true30:                                  ; preds = %land.lhs.true.land.lhs.true30_crit_edge, %btc8723b2ant_bt_rssi_state.exit.land.lhs.true30_crit_edge
  %add = add i8 %type, 100
  %spec.select351 = select i1 %turn_on, i8 %add, i8 %type
  br label %if.end

if.end:                                           ; preds = %land.lhs.true30, %land.lhs.true.if.end_crit_edge, %land.lhs.true.if.end_crit_edge442
  %storemerge = phi i8 [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %land.lhs.true.if.end_crit_edge442 ], [ %frombool1, %land.lhs.true30 ]
  %type.addr.0 = phi i8 [ %type, %land.lhs.true.if.end_crit_edge ], [ %type, %land.lhs.true.if.end_crit_edge442 ], [ %spec.select351, %land.lhs.true30 ]
  store i8 %storemerge, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 46), align 1
  br i1 %force_exec, label %if.end.if.end63_crit_edge, label %if.then37

if.end.if.end63_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end63

if.then37:                                        ; preds = %if.end
  %20 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 12), align 4, !range !465
  %21 = zext i8 %20 to i32
  %22 = zext i1 %turn_on to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.112, i32 noundef %21, i32 noundef %22) #4
  %23 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 6), align 2
  %conv43 = zext i8 %23 to i32
  %24 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 7), align 1
  %conv45 = zext i8 %24 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.113, i32 noundef %conv43, i32 noundef %conv45) #4
  %25 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 12), align 4, !range !465
  %26 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 13), align 1, !range !465
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %26)
  %cmp52 = icmp eq i8 %25, %26
  br i1 %cmp52, label %land.lhs.true54, label %if.then37.if.end63_crit_edge

if.then37.if.end63_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end63

land.lhs.true54:                                  ; preds = %if.then37
  %27 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 6), align 2
  %28 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 7), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %28)
  %cmp59 = icmp eq i8 %27, %28
  br i1 %cmp59, label %land.lhs.true54.cleanup_crit_edge, label %land.lhs.true54.if.end63_crit_edge

land.lhs.true54.if.end63_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end63

land.lhs.true54.cleanup_crit_edge:                ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end63:                                         ; preds = %land.lhs.true54.if.end63_crit_edge, %if.then37.if.end63_crit_edge, %if.end.if.end63_crit_edge
  %29 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 24), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %29)
  %cmp65 = icmp ult i8 %29, 6
  br i1 %cmp65, label %if.then67, label %if.else81

if.then67:                                        ; preds = %if.end63
  %30 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 35), align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %30)
  %cmp69 = icmp ugt i8 %30, 44
  br i1 %cmp69, label %if.then67.if.end138_crit_edge, label %if.else72

if.then67.if.end138_crit_edge:                    ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end138

if.else72:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %30)
  %cmp75 = icmp ugt i8 %30, 34
  %. = select i1 %cmp75, i8 -10, i8 5
  br label %if.end138

if.else81:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %29)
  %cmp84 = icmp ult i8 %29, 21
  br i1 %cmp84, label %if.then86, label %if.else101

if.then86:                                        ; preds = %if.else81
  %31 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 35), align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %31)
  %cmp89 = icmp ugt i8 %31, 44
  br i1 %cmp89, label %if.then86.if.end138_crit_edge, label %if.else92

if.then86.if.end138_crit_edge:                    ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end138

if.else92:                                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %31)
  %cmp95 = icmp ugt i8 %31, 34
  %.348 = select i1 %cmp95, i8 -10, i8 0
  br label %if.end138

if.else101:                                       ; preds = %if.else81
  call void @__sanitizer_cov_trace_const_cmp1(i8 41, i8 %29)
  %cmp104 = icmp ult i8 %29, 41
  %32 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 35), align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %32)
  %cmp109 = icmp ugt i8 %32, 44
  br i1 %cmp104, label %if.then106, label %if.else121

if.then106:                                       ; preds = %if.else101
  br i1 %cmp109, label %if.then106.if.end138_crit_edge, label %if.else112

if.then106.if.end138_crit_edge:                   ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end138

if.else112:                                       ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %32)
  %cmp115 = icmp ugt i8 %32, 34
  %.349 = select i1 %cmp115, i8 -10, i8 -5
  br label %if.end138

if.else121:                                       ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #6
  %spec.select352 = select i1 %cmp109, i8 -15, i8 -10
  br label %if.end138

if.end138:                                        ; preds = %if.else121, %if.else112, %if.then106.if.end138_crit_edge, %if.else92, %if.then86.if.end138_crit_edge, %if.else72, %if.then67.if.end138_crit_edge
  %wifi_duration_adjust.0 = phi i8 [ -15, %if.then67.if.end138_crit_edge ], [ %., %if.else72 ], [ -15, %if.then86.if.end138_crit_edge ], [ %.348, %if.else92 ], [ -15, %if.then106.if.end138_crit_edge ], [ %.349, %if.else112 ], [ %spec.select352, %if.else121 ]
  %slave_role = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 10
  %33 = ptrtoint ptr %slave_role to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %slave_role, align 1, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool139.not = icmp eq i8 %34, 0
  br i1 %tobool139.not, label %if.end138.if.end145_crit_edge, label %land.lhs.true141

if.end138.if.end145_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end145

land.lhs.true141:                                 ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #6
  %a2dp_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 4
  %35 = ptrtoint ptr %a2dp_exist to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %a2dp_exist, align 1, !range !465
  br label %if.end145

if.end145:                                        ; preds = %land.lhs.true141, %if.end138.if.end145_crit_edge
  %tdma_byte4_modify.0 = phi i8 [ 0, %if.end138.if.end145_crit_edge ], [ %36, %land.lhs.true141 ]
  br i1 %turn_on, label %if.then147, label %if.else255

if.then147:                                       ; preds = %if.end145
  %37 = zext i8 %type.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.230)
  switch i8 %type.addr.0, label %sw.default [
    i8 122, label %if.then147.sw.bb254_crit_edge
    i8 2, label %sw.bb151
    i8 3, label %sw.bb155
    i8 4, label %sw.bb159
    i8 5, label %sw.bb163
    i8 6, label %sw.bb167
    i8 7, label %sw.bb171
    i8 8, label %sw.bb175
    i8 9, label %sw.bb179
    i8 10, label %sw.bb186
    i8 11, label %sw.bb190
    i8 12, label %sw.bb194
    i8 13, label %sw.bb198
    i8 14, label %sw.bb202
    i8 15, label %sw.bb206
    i8 16, label %sw.bb210
    i8 17, label %sw.bb214
    i8 18, label %sw.bb215
    i8 19, label %sw.bb216
    i8 20, label %sw.bb217
    i8 21, label %sw.bb218
    i8 23, label %if.then147.sw.bb219_crit_edge
    i8 123, label %if.then147.sw.bb219_crit_edge443
    i8 71, label %sw.bb220
    i8 101, label %if.then147.sw.bb224_crit_edge
    i8 105, label %if.then147.sw.bb224_crit_edge444
    i8 113, label %if.then147.sw.bb224_crit_edge445
    i8 -85, label %if.then147.sw.bb224_crit_edge446
    i8 102, label %if.then147.sw.bb231_crit_edge
    i8 106, label %if.then147.sw.bb231_crit_edge447
    i8 110, label %if.then147.sw.bb231_crit_edge448
    i8 114, label %if.then147.sw.bb231_crit_edge449
    i8 103, label %if.then147.sw.bb238_crit_edge
    i8 107, label %if.then147.sw.bb238_crit_edge450
    i8 111, label %if.then147.sw.bb238_crit_edge451
    i8 115, label %if.then147.sw.bb238_crit_edge452
    i8 104, label %if.then147.sw.bb242_crit_edge
    i8 108, label %if.then147.sw.bb242_crit_edge453
    i8 112, label %if.then147.sw.bb242_crit_edge454
    i8 116, label %if.then147.sw.bb242_crit_edge455
    i8 109, label %sw.bb246
    i8 121, label %sw.bb250
    i8 22, label %if.then147.sw.bb254_crit_edge456
  ]

if.then147.sw.bb254_crit_edge456:                 ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb254

if.then147.sw.bb242_crit_edge455:                 ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb242

if.then147.sw.bb242_crit_edge454:                 ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb242

if.then147.sw.bb242_crit_edge453:                 ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb242

if.then147.sw.bb242_crit_edge:                    ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb242

if.then147.sw.bb238_crit_edge452:                 ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb238

if.then147.sw.bb238_crit_edge451:                 ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb238

if.then147.sw.bb238_crit_edge450:                 ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb238

if.then147.sw.bb238_crit_edge:                    ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb238

if.then147.sw.bb231_crit_edge449:                 ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb231

if.then147.sw.bb231_crit_edge448:                 ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb231

if.then147.sw.bb231_crit_edge447:                 ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb231

if.then147.sw.bb231_crit_edge:                    ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb231

if.then147.sw.bb224_crit_edge446:                 ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb224

if.then147.sw.bb224_crit_edge445:                 ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb224

if.then147.sw.bb224_crit_edge444:                 ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb224

if.then147.sw.bb224_crit_edge:                    ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb224

if.then147.sw.bb219_crit_edge443:                 ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb219

if.then147.sw.bb219_crit_edge:                    ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb219

if.then147.sw.bb254_crit_edge:                    ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb254

sw.default:                                       ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #6
  %conv150 = or i8 %tdma_byte4_modify.0, -112
  call fastcc void @btc8723b2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 60, i8 noundef zeroext 3, i8 noundef zeroext -15, i8 noundef zeroext %conv150)
  br label %if.end261

sw.bb151:                                         ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #6
  %conv154 = or i8 %tdma_byte4_modify.0, -112
  call fastcc void @btc8723b2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 45, i8 noundef zeroext 3, i8 noundef zeroext -15, i8 noundef zeroext %conv154)
  br label %if.end261

sw.bb155:                                         ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #6
  %conv158 = or i8 %tdma_byte4_modify.0, -112
  call fastcc void @btc8723b2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext -15, i8 noundef zeroext %conv158)
  br label %if.end261

sw.bb159:                                         ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #6
  %conv162 = or i8 %tdma_byte4_modify.0, -112
  call fastcc void @btc8723b2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext -15, i8 noundef zeroext %conv162)
  br label %if.end261

sw.bb163:                                         ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #6
  %conv166 = or i8 %tdma_byte4_modify.0, -112
  call fastcc void @btc8723b2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 60, i8 noundef zeroext 3, i8 noundef zeroext 112, i8 noundef zeroext %conv166)
  br label %if.end261

sw.bb167:                                         ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #6
  %conv170 = or i8 %tdma_byte4_modify.0, -112
  call fastcc void @btc8723b2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 45, i8 noundef zeroext 3, i8 noundef zeroext 112, i8 noundef zeroext %conv170)
  br label %if.end261

sw.bb171:                                         ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #6
  %conv174 = or i8 %tdma_byte4_modify.0, -112
  call fastcc void @btc8723b2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 112, i8 noundef zeroext %conv174)
  br label %if.end261

sw.bb175:                                         ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #6
  %conv178 = or i8 %tdma_byte4_modify.0, -112
  call fastcc void @btc8723b2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -93, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 112, i8 noundef zeroext %conv178)
  br label %if.end261

sw.bb179:                                         ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #6
  %conv182 = add nsw i8 %wifi_duration_adjust.0, 60
  %conv185 = or i8 %tdma_byte4_modify.0, -112
  call fastcc void @btc8723b2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext %conv182, i8 noundef zeroext 3, i8 noundef zeroext -15, i8 noundef zeroext %conv185)
  br label %if.end261

sw.bb186:                                         ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #6
  %conv189 = or i8 %tdma_byte4_modify.0, -112
  call fastcc void @btc8723b2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 45, i8 noundef zeroext 3, i8 noundef zeroext -15, i8 noundef zeroext %conv189)
  br label %if.end261

sw.bb190:                                         ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #6
  %conv193 = or i8 %tdma_byte4_modify.0, -112
  call fastcc void @btc8723b2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext -15, i8 noundef zeroext %conv193)
  br label %if.end261

sw.bb194:                                         ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #6
  %conv197 = or i8 %tdma_byte4_modify.0, -112
  call fastcc void @btc8723b2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext -15, i8 noundef zeroext %conv197)
  br label %if.end261

sw.bb198:                                         ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #6
  %conv201 = or i8 %tdma_byte4_modify.0, -112
  call fastcc void @btc8723b2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 60, i8 noundef zeroext 3, i8 noundef zeroext 112, i8 noundef zeroext %conv201)
  br label %if.end261

sw.bb202:                                         ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #6
  %conv205 = or i8 %tdma_byte4_modify.0, -112
  call fastcc void @btc8723b2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 45, i8 noundef zeroext 3, i8 noundef zeroext 112, i8 noundef zeroext %conv205)
  br label %if.end261

sw.bb206:                                         ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #6
  %conv209 = or i8 %tdma_byte4_modify.0, -112
  call fastcc void @btc8723b2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 112, i8 noundef zeroext %conv209)
  br label %if.end261

sw.bb210:                                         ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #6
  %conv213 = or i8 %tdma_byte4_modify.0, -112
  call fastcc void @btc8723b2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 112, i8 noundef zeroext %conv213)
  br label %if.end261

sw.bb214:                                         ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8723b2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -93, i8 noundef zeroext 47, i8 noundef zeroext 47, i8 noundef zeroext 96, i8 noundef zeroext -112)
  br label %if.end261

sw.bb215:                                         ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8723b2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 5, i8 noundef zeroext 5, i8 noundef zeroext -31, i8 noundef zeroext -112)
  br label %if.end261

sw.bb216:                                         ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8723b2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 37, i8 noundef zeroext 37, i8 noundef zeroext -31, i8 noundef zeroext -112)
  br label %if.end261

sw.bb217:                                         ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8723b2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 37, i8 noundef zeroext 37, i8 noundef zeroext 96, i8 noundef zeroext -112)
  br label %if.end261

sw.bb218:                                         ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8723b2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 21, i8 noundef zeroext 3, i8 noundef zeroext 112, i8 noundef zeroext -112)
  br label %if.end261

sw.bb219:                                         ; preds = %if.then147.sw.bb219_crit_edge, %if.then147.sw.bb219_crit_edge443
  %38 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i) #4
  %40 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 2), align 2, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i = icmp eq i8 %40, 0
  br i1 %tobool.not.i, label %sw.bb219.btc8723b2ant_set_fw_ps_tdma.exit_crit_edge, label %land.lhs.true.i

sw.bb219.btc8723b2ant_set_fw_ps_tdma.exit_crit_edge: ; preds = %sw.bb219
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8723b2ant_set_fw_ps_tdma.exit

land.lhs.true.i:                                  ; preds = %sw.bb219
  call void @__sanitizer_cov_trace_pc() #6
  %41 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 3), align 1, !range !465
  %spec.select.i = or i8 %41, 16
  br label %btc8723b2ant_set_fw_ps_tdma.exit

btc8723b2ant_set_fw_ps_tdma.exit:                 ; preds = %land.lhs.true.i, %sw.bb219.btc8723b2ant_set_fw_ps_tdma.exit_crit_edge
  %byte5.addr.0.i = phi i8 [ 16, %sw.bb219.btc8723b2ant_set_fw_ps_tdma.exit_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %42 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i, i32 0, i32 4
  %43 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i, i32 0, i32 3
  %44 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i, i32 0, i32 2
  %45 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i, i32 0, i32 1
  %46 = ptrtoint ptr %h2c_parameter.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -29, ptr %h2c_parameter.i, align 1
  %47 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 53, ptr %45, align 1
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 3, ptr %44, align 1
  %49 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 113, ptr %43, align 1
  %50 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %byte5.addr.0.i, ptr %42, align 1
  store i8 -29, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 8), align 4
  store i8 53, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 8, i32 1), align 1
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 8, i32 2), align 2
  store i8 113, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 8, i32 3), align 1
  store i8 %byte5.addr.0.i, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 8, i32 4), align 4
  %conv29.i = zext i8 %byte5.addr.0.i to i32
  %or30.i = or i32 %conv29.i, 889417984
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.128, i32 noundef 227, i32 noundef %or30.i) #4
  %btc_fill_h2c.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %51 = ptrtoint ptr %btc_fill_h2c.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %btc_fill_h2c.i, align 4
  call void %52(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i) #4
  br label %if.end261

sw.bb220:                                         ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #6
  %conv223 = add nsw i8 %wifi_duration_adjust.0, 60
  call fastcc void @btc8723b2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext %conv223, i8 noundef zeroext 3, i8 noundef zeroext -15, i8 noundef zeroext -112)
  br label %if.end261

sw.bb224:                                         ; preds = %if.then147.sw.bb224_crit_edge, %if.then147.sw.bb224_crit_edge444, %if.then147.sw.bb224_crit_edge445, %if.then147.sw.bb224_crit_edge446
  %conv227 = add nsw i8 %wifi_duration_adjust.0, 58
  %conv230 = or i8 %tdma_byte4_modify.0, 80
  %53 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i357) #4
  %55 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 2), align 2, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i359 = icmp eq i8 %55, 0
  br i1 %tobool.not.i359, label %sw.bb224.btc8723b2ant_set_fw_ps_tdma.exit366_crit_edge, label %land.lhs.true.i361

sw.bb224.btc8723b2ant_set_fw_ps_tdma.exit366_crit_edge: ; preds = %sw.bb224
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8723b2ant_set_fw_ps_tdma.exit366

land.lhs.true.i361:                               ; preds = %sw.bb224
  call void @__sanitizer_cov_trace_pc() #6
  %56 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 3), align 1, !range !465
  %spec.select.i360 = or i8 %56, %conv230
  br label %btc8723b2ant_set_fw_ps_tdma.exit366

btc8723b2ant_set_fw_ps_tdma.exit366:              ; preds = %land.lhs.true.i361, %sw.bb224.btc8723b2ant_set_fw_ps_tdma.exit366_crit_edge
  %byte5.addr.0.i362 = phi i8 [ %conv230, %sw.bb224.btc8723b2ant_set_fw_ps_tdma.exit366_crit_edge ], [ %spec.select.i360, %land.lhs.true.i361 ]
  %57 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i357, i32 0, i32 4
  %58 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i357, i32 0, i32 3
  %59 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i357, i32 0, i32 2
  %60 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i357, i32 0, i32 1
  %61 = ptrtoint ptr %h2c_parameter.i357 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 -45, ptr %h2c_parameter.i357, align 1
  %62 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv227, ptr %60, align 1
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 3, ptr %59, align 1
  %64 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 112, ptr %58, align 1
  %65 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %byte5.addr.0.i362, ptr %57, align 1
  store i8 -45, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 8), align 4
  store i8 %conv227, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 8, i32 1), align 1
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 8, i32 2), align 2
  store i8 112, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 8, i32 3), align 1
  store i8 %byte5.addr.0.i362, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 8, i32 4), align 4
  %conv19.i = zext i8 %conv227 to i32
  %shl.i = shl nuw nsw i32 %conv19.i, 24
  %conv29.i363 = zext i8 %byte5.addr.0.i362 to i32
  %or27.i = or i32 %shl.i, %conv29.i363
  %or30.i364 = or i32 %or27.i, 225280
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %54, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.128, i32 noundef 211, i32 noundef %or30.i364) #4
  %btc_fill_h2c.i365 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %66 = ptrtoint ptr %btc_fill_h2c.i365 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %btc_fill_h2c.i365, align 4
  call void %67(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i357) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i357) #4
  br label %if.end261

sw.bb231:                                         ; preds = %if.then147.sw.bb231_crit_edge, %if.then147.sw.bb231_crit_edge447, %if.then147.sw.bb231_crit_edge448, %if.then147.sw.bb231_crit_edge449
  %conv234 = add nsw i8 %wifi_duration_adjust.0, 45
  %conv237 = or i8 %tdma_byte4_modify.0, 80
  %68 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i367) #4
  %70 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 2), align 2, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.not.i369 = icmp eq i8 %70, 0
  br i1 %tobool.not.i369, label %sw.bb231.btc8723b2ant_set_fw_ps_tdma.exit380_crit_edge, label %land.lhs.true.i371

sw.bb231.btc8723b2ant_set_fw_ps_tdma.exit380_crit_edge: ; preds = %sw.bb231
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8723b2ant_set_fw_ps_tdma.exit380

land.lhs.true.i371:                               ; preds = %sw.bb231
  call void @__sanitizer_cov_trace_pc() #6
  %71 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 3), align 1, !range !465
  %spec.select.i370 = or i8 %71, %conv237
  br label %btc8723b2ant_set_fw_ps_tdma.exit380

btc8723b2ant_set_fw_ps_tdma.exit380:              ; preds = %land.lhs.true.i371, %sw.bb231.btc8723b2ant_set_fw_ps_tdma.exit380_crit_edge
  %byte5.addr.0.i372 = phi i8 [ %conv237, %sw.bb231.btc8723b2ant_set_fw_ps_tdma.exit380_crit_edge ], [ %spec.select.i370, %land.lhs.true.i371 ]
  %72 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i367, i32 0, i32 4
  %73 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i367, i32 0, i32 3
  %74 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i367, i32 0, i32 2
  %75 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i367, i32 0, i32 1
  %76 = ptrtoint ptr %h2c_parameter.i367 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 -45, ptr %h2c_parameter.i367, align 1
  %77 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv234, ptr %75, align 1
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 3, ptr %74, align 1
  %79 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 112, ptr %73, align 1
  %80 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %byte5.addr.0.i372, ptr %72, align 1
  store i8 -45, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 8), align 4
  store i8 %conv234, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 8, i32 1), align 1
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 8, i32 2), align 2
  store i8 112, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 8, i32 3), align 1
  store i8 %byte5.addr.0.i372, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 8, i32 4), align 4
  %conv19.i373 = zext i8 %conv234 to i32
  %shl.i374 = shl nuw nsw i32 %conv19.i373, 24
  %conv29.i377 = zext i8 %byte5.addr.0.i372 to i32
  %or27.i376 = or i32 %shl.i374, %conv29.i377
  %or30.i378 = or i32 %or27.i376, 225280
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %69, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.128, i32 noundef 211, i32 noundef %or30.i378) #4
  %btc_fill_h2c.i379 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %81 = ptrtoint ptr %btc_fill_h2c.i379 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %btc_fill_h2c.i379, align 4
  call void %82(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i367) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i367) #4
  br label %if.end261

sw.bb238:                                         ; preds = %if.then147.sw.bb238_crit_edge, %if.then147.sw.bb238_crit_edge450, %if.then147.sw.bb238_crit_edge451, %if.then147.sw.bb238_crit_edge452
  %conv241 = or i8 %tdma_byte4_modify.0, 80
  %83 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i381) #4
  %85 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 2), align 2, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool.not.i383 = icmp eq i8 %85, 0
  br i1 %tobool.not.i383, label %sw.bb238.btc8723b2ant_set_fw_ps_tdma.exit390_crit_edge, label %land.lhs.true.i385

sw.bb238.btc8723b2ant_set_fw_ps_tdma.exit390_crit_edge: ; preds = %sw.bb238
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8723b2ant_set_fw_ps_tdma.exit390

land.lhs.true.i385:                               ; preds = %sw.bb238
  call void @__sanitizer_cov_trace_pc() #6
  %86 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 3), align 1, !range !465
  %spec.select.i384 = or i8 %86, %conv241
  br label %btc8723b2ant_set_fw_ps_tdma.exit390

btc8723b2ant_set_fw_ps_tdma.exit390:              ; preds = %land.lhs.true.i385, %sw.bb238.btc8723b2ant_set_fw_ps_tdma.exit390_crit_edge
  %byte5.addr.0.i386 = phi i8 [ %conv241, %sw.bb238.btc8723b2ant_set_fw_ps_tdma.exit390_crit_edge ], [ %spec.select.i384, %land.lhs.true.i385 ]
  %87 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i381, i32 0, i32 4
  %88 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i381, i32 0, i32 3
  %89 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i381, i32 0, i32 2
  %90 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i381, i32 0, i32 1
  %91 = ptrtoint ptr %h2c_parameter.i381 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 -45, ptr %h2c_parameter.i381, align 1
  %92 = ptrtoint ptr %90 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 28, ptr %90, align 1
  %93 = ptrtoint ptr %89 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 3, ptr %89, align 1
  %94 = ptrtoint ptr %88 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 112, ptr %88, align 1
  %95 = ptrtoint ptr %87 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %byte5.addr.0.i386, ptr %87, align 1
  store i8 -45, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 8), align 4
  store i8 28, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 8, i32 1), align 1
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 8, i32 2), align 2
  store i8 112, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 8, i32 3), align 1
  store i8 %byte5.addr.0.i386, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 8, i32 4), align 4
  %conv29.i387 = zext i8 %byte5.addr.0.i386 to i32
  %or30.i388 = or i32 %conv29.i387, 469987328
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %84, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.128, i32 noundef 211, i32 noundef %or30.i388) #4
  %btc_fill_h2c.i389 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %96 = ptrtoint ptr %btc_fill_h2c.i389 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %btc_fill_h2c.i389, align 4
  call void %97(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i381) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i381) #4
  br label %if.end261

sw.bb242:                                         ; preds = %if.then147.sw.bb242_crit_edge, %if.then147.sw.bb242_crit_edge453, %if.then147.sw.bb242_crit_edge454, %if.then147.sw.bb242_crit_edge455
  %conv245 = or i8 %tdma_byte4_modify.0, 80
  %98 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i391) #4
  %100 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 2), align 2, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool.not.i393 = icmp eq i8 %100, 0
  br i1 %tobool.not.i393, label %sw.bb242.btc8723b2ant_set_fw_ps_tdma.exit400_crit_edge, label %land.lhs.true.i395

sw.bb242.btc8723b2ant_set_fw_ps_tdma.exit400_crit_edge: ; preds = %sw.bb242
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8723b2ant_set_fw_ps_tdma.exit400

land.lhs.true.i395:                               ; preds = %sw.bb242
  call void @__sanitizer_cov_trace_pc() #6
  %101 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 3), align 1, !range !465
  %spec.select.i394 = or i8 %101, %conv245
  br label %btc8723b2ant_set_fw_ps_tdma.exit400

btc8723b2ant_set_fw_ps_tdma.exit400:              ; preds = %land.lhs.true.i395, %sw.bb242.btc8723b2ant_set_fw_ps_tdma.exit400_crit_edge
  %byte5.addr.0.i396 = phi i8 [ %conv245, %sw.bb242.btc8723b2ant_set_fw_ps_tdma.exit400_crit_edge ], [ %spec.select.i394, %land.lhs.true.i395 ]
  %102 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i391, i32 0, i32 4
  %103 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i391, i32 0, i32 3
  %104 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i391, i32 0, i32 2
  %105 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i391, i32 0, i32 1
  %106 = ptrtoint ptr %h2c_parameter.i391 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 -45, ptr %h2c_parameter.i391, align 1
  %107 = ptrtoint ptr %105 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 16, ptr %105, align 1
  %108 = ptrtoint ptr %104 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 3, ptr %104, align 1
  %109 = ptrtoint ptr %103 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 112, ptr %103, align 1
  %110 = ptrtoint ptr %102 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %byte5.addr.0.i396, ptr %102, align 1
  store i8 -45, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 8), align 4
  store i8 16, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 8, i32 1), align 1
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 8, i32 2), align 2
  store i8 112, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 8, i32 3), align 1
  store i8 %byte5.addr.0.i396, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 8, i32 4), align 4
  %conv29.i397 = zext i8 %byte5.addr.0.i396 to i32
  %or30.i398 = or i32 %conv29.i397, 268660736
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %99, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.128, i32 noundef 211, i32 noundef %or30.i398) #4
  %btc_fill_h2c.i399 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %111 = ptrtoint ptr %btc_fill_h2c.i399 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %btc_fill_h2c.i399, align 4
  call void %112(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i391) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i391) #4
  br label %if.end261

sw.bb246:                                         ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #6
  %conv249 = or i8 %tdma_byte4_modify.0, -112
  call fastcc void @btc8723b2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 60, i8 noundef zeroext 3, i8 noundef zeroext -15, i8 noundef zeroext %conv249)
  br label %if.end261

sw.bb250:                                         ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #6
  %conv253 = or i8 %tdma_byte4_modify.0, -112
  call fastcc void @btc8723b2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 21, i8 noundef zeroext 3, i8 noundef zeroext 112, i8 noundef zeroext %conv253)
  br label %if.end261

sw.bb254:                                         ; preds = %if.then147.sw.bb254_crit_edge, %if.then147.sw.bb254_crit_edge456
  %113 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i401) #4
  %115 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i401, i32 0, i32 4
  %116 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i401, i32 0, i32 3
  %117 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i401, i32 0, i32 2
  %118 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i401, i32 0, i32 1
  %119 = ptrtoint ptr %h2c_parameter.i401 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 -29, ptr %h2c_parameter.i401, align 1
  %120 = ptrtoint ptr %118 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 53, ptr %118, align 1
  %121 = ptrtoint ptr %117 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 3, ptr %117, align 1
  %122 = ptrtoint ptr %116 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 113, ptr %116, align 1
  %123 = ptrtoint ptr %115 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 17, ptr %115, align 1
  store i8 -29, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 8), align 4
  store i8 53, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 8, i32 1), align 1
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 8, i32 2), align 2
  store i8 113, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 8, i32 3), align 1
  store i8 17, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 8, i32 4), align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %114, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.128, i32 noundef 227, i32 noundef 889418001) #4
  %btc_fill_h2c.i409 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %124 = ptrtoint ptr %btc_fill_h2c.i409 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %btc_fill_h2c.i409, align 4
  call void %125(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i401) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i401) #4
  br label %if.end261

if.else255:                                       ; preds = %if.end145
  %126 = zext i8 %type.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values.231)
  switch i8 %type.addr.0, label %sw.default259 [
    i8 0, label %sw.bb257
    i8 1, label %sw.bb258
  ]

sw.bb257:                                         ; preds = %if.else255
  %127 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i411) #4
  %129 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 2), align 2, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool.not.i413 = icmp eq i8 %129, 0
  br i1 %tobool.not.i413, label %sw.bb257.btc8723b2ant_set_fw_ps_tdma.exit419_crit_edge, label %land.lhs.true.i414

sw.bb257.btc8723b2ant_set_fw_ps_tdma.exit419_crit_edge: ; preds = %sw.bb257
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8723b2ant_set_fw_ps_tdma.exit419

land.lhs.true.i414:                               ; preds = %sw.bb257
  call void @__sanitizer_cov_trace_pc() #6
  %130 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 3), align 1, !range !465
  br label %btc8723b2ant_set_fw_ps_tdma.exit419

btc8723b2ant_set_fw_ps_tdma.exit419:              ; preds = %land.lhs.true.i414, %sw.bb257.btc8723b2ant_set_fw_ps_tdma.exit419_crit_edge
  %byte5.addr.0.i415 = phi i8 [ 0, %sw.bb257.btc8723b2ant_set_fw_ps_tdma.exit419_crit_edge ], [ %130, %land.lhs.true.i414 ]
  %131 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i411, i32 0, i32 4
  %132 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i411, i32 0, i32 3
  %133 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i411, i32 0, i32 2
  %134 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i411, i32 0, i32 1
  %135 = ptrtoint ptr %h2c_parameter.i411 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %h2c_parameter.i411, align 1
  %136 = ptrtoint ptr %134 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 0, ptr %134, align 1
  %137 = ptrtoint ptr %133 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 0, ptr %133, align 1
  %138 = ptrtoint ptr %132 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 64, ptr %132, align 1
  %139 = ptrtoint ptr %131 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %byte5.addr.0.i415, ptr %131, align 1
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 8), align 4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 8, i32 1), align 1
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 8, i32 2), align 2
  store i8 64, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 8, i32 3), align 1
  store i8 %byte5.addr.0.i415, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 8, i32 4), align 4
  %conv29.i416 = zext i8 %byte5.addr.0.i415 to i32
  %or30.i417 = or i32 %conv29.i416, 16384
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %128, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.128, i32 noundef 0, i32 noundef %or30.i417) #4
  %btc_fill_h2c.i418 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %140 = ptrtoint ptr %btc_fill_h2c.i418 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %btc_fill_h2c.i418, align 4
  call void %141(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i411) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i411) #4
  br label %if.end261

sw.bb258:                                         ; preds = %if.else255
  %142 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i420) #4
  %144 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 2), align 2, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool.not.i422 = icmp eq i8 %144, 0
  br i1 %tobool.not.i422, label %sw.bb258.btc8723b2ant_set_fw_ps_tdma.exit428_crit_edge, label %land.lhs.true.i423

sw.bb258.btc8723b2ant_set_fw_ps_tdma.exit428_crit_edge: ; preds = %sw.bb258
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8723b2ant_set_fw_ps_tdma.exit428

land.lhs.true.i423:                               ; preds = %sw.bb258
  call void @__sanitizer_cov_trace_pc() #6
  %145 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 3), align 1, !range !465
  br label %btc8723b2ant_set_fw_ps_tdma.exit428

btc8723b2ant_set_fw_ps_tdma.exit428:              ; preds = %land.lhs.true.i423, %sw.bb258.btc8723b2ant_set_fw_ps_tdma.exit428_crit_edge
  %byte5.addr.0.i424 = phi i8 [ 0, %sw.bb258.btc8723b2ant_set_fw_ps_tdma.exit428_crit_edge ], [ %145, %land.lhs.true.i423 ]
  %146 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i420, i32 0, i32 4
  %147 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i420, i32 0, i32 3
  %148 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i420, i32 0, i32 2
  %149 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i420, i32 0, i32 1
  %150 = ptrtoint ptr %h2c_parameter.i420 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 0, ptr %h2c_parameter.i420, align 1
  %151 = ptrtoint ptr %149 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 0, ptr %149, align 1
  %152 = ptrtoint ptr %148 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 0, ptr %148, align 1
  %153 = ptrtoint ptr %147 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 72, ptr %147, align 1
  %154 = ptrtoint ptr %146 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %byte5.addr.0.i424, ptr %146, align 1
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 8), align 4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 8, i32 1), align 1
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 8, i32 2), align 2
  store i8 72, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 8, i32 3), align 1
  store i8 %byte5.addr.0.i424, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 8, i32 4), align 4
  %conv29.i425 = zext i8 %byte5.addr.0.i424 to i32
  %or30.i426 = or i32 %conv29.i425, 18432
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %143, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.128, i32 noundef 0, i32 noundef %or30.i426) #4
  %btc_fill_h2c.i427 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %155 = ptrtoint ptr %btc_fill_h2c.i427 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %btc_fill_h2c.i427, align 4
  call void %156(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i420) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i420) #4
  br label %if.end261

sw.default259:                                    ; preds = %if.else255
  %157 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i429) #4
  %159 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 2), align 2, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool.not.i431 = icmp eq i8 %159, 0
  br i1 %tobool.not.i431, label %sw.default259.btc8723b2ant_set_fw_ps_tdma.exit437_crit_edge, label %land.lhs.true.i432

sw.default259.btc8723b2ant_set_fw_ps_tdma.exit437_crit_edge: ; preds = %sw.default259
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8723b2ant_set_fw_ps_tdma.exit437

land.lhs.true.i432:                               ; preds = %sw.default259
  call void @__sanitizer_cov_trace_pc() #6
  %160 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 3), align 1, !range !465
  br label %btc8723b2ant_set_fw_ps_tdma.exit437

btc8723b2ant_set_fw_ps_tdma.exit437:              ; preds = %land.lhs.true.i432, %sw.default259.btc8723b2ant_set_fw_ps_tdma.exit437_crit_edge
  %byte5.addr.0.i433 = phi i8 [ 0, %sw.default259.btc8723b2ant_set_fw_ps_tdma.exit437_crit_edge ], [ %160, %land.lhs.true.i432 ]
  %161 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i429, i32 0, i32 4
  %162 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i429, i32 0, i32 3
  %163 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i429, i32 0, i32 2
  %164 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i429, i32 0, i32 1
  %165 = ptrtoint ptr %h2c_parameter.i429 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 0, ptr %h2c_parameter.i429, align 1
  %166 = ptrtoint ptr %164 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 0, ptr %164, align 1
  %167 = ptrtoint ptr %163 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 0, ptr %163, align 1
  %168 = ptrtoint ptr %162 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 64, ptr %162, align 1
  %169 = ptrtoint ptr %161 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %byte5.addr.0.i433, ptr %161, align 1
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 8), align 4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 8, i32 1), align 1
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 8, i32 2), align 2
  store i8 64, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 8, i32 3), align 1
  store i8 %byte5.addr.0.i433, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 8, i32 4), align 4
  %conv29.i434 = zext i8 %byte5.addr.0.i433 to i32
  %or30.i435 = or i32 %conv29.i434, 16384
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %158, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.128, i32 noundef 0, i32 noundef %or30.i435) #4
  %btc_fill_h2c.i436 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %170 = ptrtoint ptr %btc_fill_h2c.i436 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %btc_fill_h2c.i436, align 4
  call void %171(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i429) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i429) #4
  br label %if.end261

if.end261:                                        ; preds = %btc8723b2ant_set_fw_ps_tdma.exit437, %btc8723b2ant_set_fw_ps_tdma.exit428, %btc8723b2ant_set_fw_ps_tdma.exit419, %sw.bb254, %sw.bb250, %sw.bb246, %btc8723b2ant_set_fw_ps_tdma.exit400, %btc8723b2ant_set_fw_ps_tdma.exit390, %btc8723b2ant_set_fw_ps_tdma.exit380, %btc8723b2ant_set_fw_ps_tdma.exit366, %sw.bb220, %btc8723b2ant_set_fw_ps_tdma.exit, %sw.bb218, %sw.bb217, %sw.bb216, %sw.bb215, %sw.bb214, %sw.bb210, %sw.bb206, %sw.bb202, %sw.bb198, %sw.bb194, %sw.bb190, %sw.bb186, %sw.bb179, %sw.bb175, %sw.bb171, %sw.bb167, %sw.bb163, %sw.bb159, %sw.bb155, %sw.bb151, %sw.default
  %172 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 13), align 1, !range !465
  store i8 %172, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 12), align 4
  %173 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 7), align 1
  store i8 %173, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 6), align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end261, %land.lhs.true54.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8723b2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext %force_exec, i8 noundef zeroext %fw_dac_swing_lvl) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %cond = select i1 %force_exec, ptr @.str.101, ptr @.str.102
  %conv = zext i8 %fw_dac_swing_lvl to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.129, ptr noundef nonnull %cond, i32 noundef %conv) #4
  store i8 %fw_dac_swing_lvl, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 3), align 1
  br i1 %force_exec, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then:                                          ; preds = %entry
  %2 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 2), align 2
  %conv2 = zext i8 %2 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.130, i32 noundef %conv2, i32 noundef %conv) #4
  %3 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 2), align 2
  %4 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 3), align 1
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
  %5 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 3), align 1
  %6 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i) #4
  %8 = ptrtoint ptr %h2c_parameter.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %5, ptr %h2c_parameter.i, align 1
  %conv.i = zext i8 %5 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131, i32 noundef %conv.i) #4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %conv.i) #4
  %btc_fill_h2c.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %9 = ptrtoint ptr %btc_fill_h2c.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %btc_fill_h2c.i, align 4
  call void %10(ptr noundef %btcoexist, i8 noundef zeroext 100, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i) #4
  %11 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 3), align 1
  store i8 %11, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 2), align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8723b2ant_sw_mechanism(ptr noundef %btcoexist, i1 noundef zeroext %low_penalty_ra) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool1.i = zext i1 %low_penalty_ra to i8
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter.i, align 4
  %cond3.i = select i1 %low_penalty_ra, ptr @.str.110, ptr @.str.111
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.102, ptr noundef nonnull %cond3.i) #4
  store i8 %frombool1.i, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 20), align 1
  %2 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 19), align 4, !range !465
  %3 = zext i8 %2 to i32
  %4 = zext i1 %low_penalty_ra to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.137, i32 noundef %3, i32 noundef %4) #4
  %5 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 19), align 4, !range !465
  %6 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 20), align 1, !range !465
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %6)
  %cmp.i = icmp eq i8 %5, %6
  br i1 %cmp.i, label %entry.btc8723b2ant_low_penalty_ra.exit_crit_edge, label %if.end19.i

entry.btc8723b2ant_low_penalty_ra.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8723b2ant_low_penalty_ra.exit

if.end19.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool21.not.i = icmp eq i8 %6, 0
  %7 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %h2c_parameter.i.i) #4
  %9 = getelementptr inbounds i8, ptr %h2c_parameter.i.i, i32 1
  %10 = call ptr @memset(ptr %9, i32 0, i32 5)
  %11 = ptrtoint ptr %h2c_parameter.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 6, ptr %h2c_parameter.i.i, align 1
  br i1 %tobool21.not.i, label %if.end19.i.btc8723b_set_penalty_txrate.exit.i_crit_edge, label %if.then.i.i

if.end19.i.btc8723b_set_penalty_txrate.exit.i_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8723b_set_penalty_txrate.exit.i

if.then.i.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %9, align 1
  %14 = or i8 %13, 1
  store i8 %14, ptr %9, align 1
  %arrayidx4.i.i = getelementptr inbounds [6 x i8], ptr %h2c_parameter.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -12, ptr %arrayidx4.i.i, align 1
  %arrayidx5.i.i = getelementptr inbounds [6 x i8], ptr %h2c_parameter.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -11, ptr %arrayidx5.i.i, align 1
  %arrayidx6.i.i = getelementptr inbounds [6 x i8], ptr %h2c_parameter.i.i, i32 0, i32 5
  %17 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -10, ptr %arrayidx6.i.i, align 1
  br label %btc8723b_set_penalty_txrate.exit.i

btc8723b_set_penalty_txrate.exit.i:               ; preds = %if.then.i.i, %if.end19.i.btc8723b_set_penalty_txrate.exit.i_crit_edge
  %cond.i.i = phi ptr [ @.str.139, %if.then.i.i ], [ @.str.140, %if.end19.i.btc8723b_set_penalty_txrate.exit.i_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %8, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.138, ptr noundef nonnull %cond.i.i) #4
  %btc_fill_h2c.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %18 = ptrtoint ptr %btc_fill_h2c.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %btc_fill_h2c.i.i, align 4
  call void %19(ptr noundef %btcoexist, i8 noundef zeroext 105, i32 noundef 6, ptr noundef nonnull %h2c_parameter.i.i) #4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %h2c_parameter.i.i) #4
  %20 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 20), align 1, !range !465
  store i8 %20, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 19), align 4
  br label %btc8723b2ant_low_penalty_ra.exit

btc8723b2ant_low_penalty_ra.exit:                 ; preds = %btc8723b_set_penalty_txrate.exit.i, %entry.btc8723b2ant_low_penalty_ra.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8723b2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext %byte1, i8 noundef zeroext %byte2, i8 noundef zeroext %byte3, i8 noundef zeroext %byte4, i8 noundef zeroext %byte5) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter) #4
  %2 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 2), align 2, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 3), align 1, !range !465
  %spec.select = or i8 %3, %byte5
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %byte5.addr.0 = phi i8 [ %byte5, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %4 = getelementptr inbounds [5 x i8], ptr %h2c_parameter, i32 0, i32 4
  %5 = getelementptr inbounds [5 x i8], ptr %h2c_parameter, i32 0, i32 3
  %6 = getelementptr inbounds [5 x i8], ptr %h2c_parameter, i32 0, i32 2
  %7 = getelementptr inbounds [5 x i8], ptr %h2c_parameter, i32 0, i32 1
  %8 = ptrtoint ptr %h2c_parameter to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %byte1, ptr %h2c_parameter, align 1
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %byte2, ptr %7, align 1
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %byte3, ptr %6, align 1
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %byte4, ptr %5, align 1
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %byte5.addr.0, ptr %4, align 1
  store i8 %byte1, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 8), align 4
  store i8 %byte2, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 8, i32 1), align 1
  store i8 %byte3, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 8, i32 2), align 2
  store i8 %byte4, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 8, i32 3), align 1
  store i8 %byte5.addr.0, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 8, i32 4), align 4
  %conv17 = zext i8 %byte1 to i32
  %conv19 = zext i8 %byte2 to i32
  %shl = shl nuw i32 %conv19, 24
  %conv21 = zext i8 %byte3 to i32
  %shl22 = shl nuw nsw i32 %conv21, 16
  %or23 = or i32 %shl22, %shl
  %conv25 = zext i8 %byte4 to i32
  %shl26 = shl nuw nsw i32 %conv25, 8
  %or27 = or i32 %or23, %shl26
  %conv29 = zext i8 %byte5.addr.0 to i32
  %or30 = or i32 %or27, %conv29
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.128, i32 noundef %conv17, i32 noundef %or30) #4
  %btc_fill_h2c = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %13 = ptrtoint ptr %btc_fill_h2c to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %btc_fill_h2c, align 4
  call void %14(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8723b2ant_action_wifi_multi_port(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %low_pwr_disable.i = alloca i8, align 1
  %h2c_parameter.i.i = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @btc8723b2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 6)
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef 0) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1
  %2 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %3 = zext i8 %2 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.134, i32 noundef %3, i32 noundef 0) #4
  %4 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %5 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1, !range !465
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %5)
  %cmp.i = icmp eq i8 %4, %5
  br i1 %cmp.i, label %entry.btc8723b2ant_dec_bt_pwr.exit_crit_edge, label %if.end16.i

entry.btc8723b2ant_dec_bt_pwr.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8723b2ant_dec_bt_pwr.exit

if.end16.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  %8 = ptrtoint ptr %h2c_parameter.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %5, ptr %h2c_parameter.i.i, align 1
  %conv.i.i = zext i8 %5 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.135, i32 noundef %conv.i.i) #4
  %btc_fill_h2c.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %9 = ptrtoint ptr %btc_fill_h2c.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %btc_fill_h2c.i.i, align 4
  call void %10(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  %11 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1, !range !465
  store i8 %11, ptr @glcoex_dm_8723b_2ant, align 4
  br label %btc8723b2ant_dec_bt_pwr.exit

btc8723b2ant_dec_bt_pwr.exit:                     ; preds = %if.end16.i, %entry.btc8723b2ant_dec_bt_pwr.exit_crit_edge
  call fastcc void @btc8723b2ant_sw_mechanism(ptr noundef %btcoexist, i1 noundef zeroext false)
  call fastcc void @btc8723b2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1431655765) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  %12 = ptrtoint ptr %low_pwr_disable.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %low_pwr_disable.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %13 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %btc_set.i, align 4
  %call5.i = call zeroext i1 %14(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i) #4
  %15 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %btc_set.i, align 4
  %call7.i = call zeroext i1 %16(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 33), align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @btc8723b2ant_is_common_action(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %low_pwr_disable.i.i = alloca i8, align 1
  %h2c_parameter.i.i.i = alloca [1 x i8], align 1
  %wifi_rssi.i42.i = alloca i32, align 4
  %wifi_rssi.i.i = alloca i32, align 4
  %ap_num.i = alloca i8, align 1
  %h2c_parameter.i.i105 = alloca [1 x i8], align 1
  %reject_rx_agg.i97 = alloca i8, align 1
  %bt_ctrl_rx_agg_size.i98 = alloca i8, align 1
  %rx_agg_size.i99 = alloca i8, align 1
  %h2c_parameter.i.i90 = alloca [1 x i8], align 1
  %reject_rx_agg.i82 = alloca i8, align 1
  %bt_ctrl_rx_agg_size.i83 = alloca i8, align 1
  %rx_agg_size.i84 = alloca i8, align 1
  %h2c_parameter.i.i = alloca [1 x i8], align 1
  %reject_rx_agg.i = alloca i8, align 1
  %bt_ctrl_rx_agg_size.i = alloca i8, align 1
  %rx_agg_size.i = alloca i8, align 1
  %wifi_connected = alloca i8, align 1
  %wifi_busy = alloca i8, align 1
  %bt_hs_on = alloca i8, align 1
  %low_pwr_disable = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_connected) #4
  %2 = ptrtoint ptr %wifi_connected to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %wifi_connected, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_busy) #4
  %3 = ptrtoint ptr %wifi_busy to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %wifi_busy, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_hs_on) #4
  %4 = ptrtoint ptr %bt_hs_on to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %bt_hs_on, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable) #4
  %btc_get = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %5 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %btc_get, align 4
  %call = call zeroext i1 %6(ptr noundef %btcoexist, i8 noundef zeroext 0, ptr noundef nonnull %bt_hs_on) #4
  %7 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %btc_get, align 4
  %call2 = call zeroext i1 %8(ptr noundef %btcoexist, i8 noundef zeroext 2, ptr noundef nonnull %wifi_connected) #4
  %9 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %btc_get, align 4
  %call4 = call zeroext i1 %10(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %wifi_busy) #4
  %11 = ptrtoint ptr %wifi_connected to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %wifi_connected, align 1, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %13 = ptrtoint ptr %low_pwr_disable to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %low_pwr_disable, align 1
  %btc_set = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %14 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %btc_set, align 4
  %call5 = call zeroext i1 %15(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  %16 = ptrtoint ptr %reject_rx_agg.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %reject_rx_agg.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  %17 = ptrtoint ptr %bt_ctrl_rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %bt_ctrl_rx_agg_size.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  %18 = ptrtoint ptr %rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 8, ptr %rx_agg_size.i, align 1
  %19 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %btc_set, align 4
  %call.i = call zeroext i1 %20(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %reject_rx_agg.i) #4
  %21 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %btc_set, align 4
  %call7.i = call zeroext i1 %22(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %bt_ctrl_rx_agg_size.i) #4
  %23 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %btc_set, align 4
  %call9.i = call zeroext i1 %24(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %rx_agg_size.i) #4
  %25 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %btc_set, align 4
  %call11.i = call zeroext i1 %26(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.197) #4
  %btc_set_rf_reg = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 27
  %27 = ptrtoint ptr %btc_set_rf_reg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %btc_set_rf_reg, align 4
  call void %28(ptr noundef %btcoexist, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 1048575, i32 noundef 0) #4
  call fastcc void @btc8723b2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1431655765) #4
  call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 1)
  call fastcc void @btc8723b2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 6)
  %29 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %adapter, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %30, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef 0) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1
  %31 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %32 = zext i8 %31 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %30, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.134, i32 noundef %32, i32 noundef 0) #4
  %33 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %34 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1, !range !465
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %34)
  %cmp.i = icmp eq i8 %33, %34
  br i1 %cmp.i, label %if.then.btc8723b2ant_dec_bt_pwr.exit_crit_edge, label %if.end16.i

if.then.btc8723b2ant_dec_bt_pwr.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8723b2ant_dec_bt_pwr.exit

if.end16.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %35 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  %37 = ptrtoint ptr %h2c_parameter.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %34, ptr %h2c_parameter.i.i, align 1
  %conv.i.i = zext i8 %34 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %36, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.135, i32 noundef %conv.i.i) #4
  %btc_fill_h2c.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %38 = ptrtoint ptr %btc_fill_h2c.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %btc_fill_h2c.i.i, align 4
  call void %39(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  %40 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1, !range !465
  store i8 %40, ptr @glcoex_dm_8723b_2ant, align 4
  br label %btc8723b2ant_dec_bt_pwr.exit

btc8723b2ant_dec_bt_pwr.exit:                     ; preds = %if.end16.i, %if.then.btc8723b2ant_dec_bt_pwr.exit_crit_edge
  call fastcc void @btc8723b2ant_sw_mechanism(ptr noundef %btcoexist, i1 noundef zeroext false)
  br label %cleanup

if.else:                                          ; preds = %entry
  %41 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 40), align 1
  %42 = zext i8 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.232)
  switch i8 %41, label %if.else22 [
    i8 0, label %if.then7
    i8 1, label %if.then16
  ]

if.then7:                                         ; preds = %if.else
  %43 = ptrtoint ptr %low_pwr_disable to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %low_pwr_disable, align 1
  %btc_set8 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %44 = ptrtoint ptr %btc_set8 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %btc_set8, align 4
  %call9 = call zeroext i1 %45(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reject_rx_agg.i82) #4
  %46 = ptrtoint ptr %reject_rx_agg.i82 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %reject_rx_agg.i82, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i83) #4
  %47 = ptrtoint ptr %bt_ctrl_rx_agg_size.i83 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %bt_ctrl_rx_agg_size.i83, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rx_agg_size.i84) #4
  %48 = ptrtoint ptr %rx_agg_size.i84 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 8, ptr %rx_agg_size.i84, align 1
  %49 = ptrtoint ptr %btc_set8 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %btc_set8, align 4
  %call.i86 = call zeroext i1 %50(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %reject_rx_agg.i82) #4
  %51 = ptrtoint ptr %btc_set8 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %btc_set8, align 4
  %call7.i87 = call zeroext i1 %52(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %bt_ctrl_rx_agg_size.i83) #4
  %53 = ptrtoint ptr %btc_set8 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %btc_set8, align 4
  %call9.i88 = call zeroext i1 %54(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %rx_agg_size.i84) #4
  %55 = ptrtoint ptr %btc_set8 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %btc_set8, align 4
  %call11.i89 = call zeroext i1 %56(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rx_agg_size.i84) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i83) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reject_rx_agg.i82) #4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.198) #4
  %btc_set_rf_reg10 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 27
  %57 = ptrtoint ptr %btc_set_rf_reg10 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %btc_set_rf_reg10, align 4
  call void %58(ptr noundef %btcoexist, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 1048575, i32 noundef 0) #4
  call fastcc void @btc8723b2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1431655765) #4
  call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 1)
  call fastcc void @btc8723b2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 11)
  %59 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %adapter, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %60, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef 0) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1
  %61 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %62 = zext i8 %61 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %60, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.134, i32 noundef %62, i32 noundef 0) #4
  %63 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %64 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1, !range !465
  call void @__sanitizer_cov_trace_cmp1(i8 %63, i8 %64)
  %cmp.i92 = icmp eq i8 %63, %64
  br i1 %cmp.i92, label %if.then7.btc8723b2ant_dec_bt_pwr.exit96_crit_edge, label %if.end16.i95

if.then7.btc8723b2ant_dec_bt_pwr.exit96_crit_edge: ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8723b2ant_dec_bt_pwr.exit96

if.end16.i95:                                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  %65 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i90) #4
  %67 = ptrtoint ptr %h2c_parameter.i.i90 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %64, ptr %h2c_parameter.i.i90, align 1
  %conv.i.i93 = zext i8 %64 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %66, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.135, i32 noundef %conv.i.i93) #4
  %btc_fill_h2c.i.i94 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %68 = ptrtoint ptr %btc_fill_h2c.i.i94 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %btc_fill_h2c.i.i94, align 4
  call void %69(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i90) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i90) #4
  %70 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1, !range !465
  store i8 %70, ptr @glcoex_dm_8723b_2ant, align 4
  br label %btc8723b2ant_dec_bt_pwr.exit96

btc8723b2ant_dec_bt_pwr.exit96:                   ; preds = %if.end16.i95, %if.then7.btc8723b2ant_dec_bt_pwr.exit96_crit_edge
  call fastcc void @btc8723b2ant_sw_mechanism(ptr noundef %btcoexist, i1 noundef zeroext false)
  br label %cleanup

if.then16:                                        ; preds = %if.else
  %71 = ptrtoint ptr %low_pwr_disable to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %low_pwr_disable, align 1
  %btc_set17 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %72 = ptrtoint ptr %btc_set17 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %btc_set17, align 4
  %call18 = call zeroext i1 %73(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable) #4
  %74 = ptrtoint ptr %bt_hs_on to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %bt_hs_on, align 1, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool19.not = icmp eq i8 %75, 0
  br i1 %tobool19.not, label %if.end, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %if.then16
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.199) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reject_rx_agg.i97) #4
  %76 = ptrtoint ptr %reject_rx_agg.i97 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %reject_rx_agg.i97, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i98) #4
  %77 = ptrtoint ptr %bt_ctrl_rx_agg_size.i98 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %bt_ctrl_rx_agg_size.i98, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rx_agg_size.i99) #4
  %78 = ptrtoint ptr %rx_agg_size.i99 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 8, ptr %rx_agg_size.i99, align 1
  %79 = ptrtoint ptr %btc_set17 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %btc_set17, align 4
  %call.i101 = call zeroext i1 %80(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %reject_rx_agg.i97) #4
  %81 = ptrtoint ptr %btc_set17 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %btc_set17, align 4
  %call7.i102 = call zeroext i1 %82(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %bt_ctrl_rx_agg_size.i98) #4
  %83 = ptrtoint ptr %btc_set17 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %btc_set17, align 4
  %call9.i103 = call zeroext i1 %84(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %rx_agg_size.i99) #4
  %85 = ptrtoint ptr %btc_set17 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %btc_set17, align 4
  %call11.i104 = call zeroext i1 %86(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rx_agg_size.i99) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i98) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reject_rx_agg.i97) #4
  %btc_set_rf_reg21 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 27
  %87 = ptrtoint ptr %btc_set_rf_reg21 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %btc_set_rf_reg21, align 4
  call void %88(ptr noundef %btcoexist, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 1048575, i32 noundef 0) #4
  call fastcc void @btc8723b2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1431655765) #4
  call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 1)
  call fastcc void @btc8723b2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 11)
  %89 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %adapter, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %90, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef 0) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1
  %91 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %92 = zext i8 %91 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %90, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.134, i32 noundef %92, i32 noundef 0) #4
  %93 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %94 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1, !range !465
  call void @__sanitizer_cov_trace_cmp1(i8 %93, i8 %94)
  %cmp.i107 = icmp eq i8 %93, %94
  br i1 %cmp.i107, label %if.end.btc8723b2ant_dec_bt_pwr.exit111_crit_edge, label %if.end16.i110

if.end.btc8723b2ant_dec_bt_pwr.exit111_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8723b2ant_dec_bt_pwr.exit111

if.end16.i110:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %95 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i105) #4
  %97 = ptrtoint ptr %h2c_parameter.i.i105 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %94, ptr %h2c_parameter.i.i105, align 1
  %conv.i.i108 = zext i8 %94 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %96, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.135, i32 noundef %conv.i.i108) #4
  %btc_fill_h2c.i.i109 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %98 = ptrtoint ptr %btc_fill_h2c.i.i109 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %btc_fill_h2c.i.i109, align 4
  call void %99(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i105) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i105) #4
  %100 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1, !range !465
  store i8 %100, ptr @glcoex_dm_8723b_2ant, align 4
  br label %btc8723b2ant_dec_bt_pwr.exit111

btc8723b2ant_dec_bt_pwr.exit111:                  ; preds = %if.end16.i110, %if.end.btc8723b2ant_dec_bt_pwr.exit111_crit_edge
  call fastcc void @btc8723b2ant_sw_mechanism(ptr noundef %btcoexist, i1 noundef zeroext false)
  br label %cleanup

if.else22:                                        ; preds = %if.else
  %101 = ptrtoint ptr %low_pwr_disable to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 1, ptr %low_pwr_disable, align 1
  %btc_set23 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %102 = ptrtoint ptr %btc_set23 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %btc_set23, align 4
  %call24 = call zeroext i1 %103(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable) #4
  %104 = ptrtoint ptr %wifi_busy to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %wifi_busy, align 1, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool25.not = icmp eq i8 %105, 0
  br i1 %tobool25.not, label %if.else27, label %if.then26

if.then26:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.200) #4
  br label %cleanup

if.else27:                                        ; preds = %if.else22
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.201) #4
  %106 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ap_num.i) #4
  %108 = ptrtoint ptr %ap_num.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %ap_num.i, align 1
  %109 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 47), align 2
  %.neg.i = mul i8 %109, -2
  %sub3.i = add i8 %.neg.i, 42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_rssi.i.i) #4
  %110 = ptrtoint ptr %wifi_rssi.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %wifi_rssi.i.i, align 4
  %111 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %btc_get, align 4
  %call.i.i = call zeroext i1 %112(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi.i.i) #4
  %113 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 15, i32 0), align 1
  %114 = zext i8 %113 to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values.233)
  switch i8 %113, label %if.else19.i.i [
    i8 2, label %if.else27.if.then14.i.i_crit_edge
    i8 5, label %if.else27.if.then14.i.i_crit_edge114
  ]

if.else27.if.then14.i.i_crit_edge114:             ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i.i

if.else27.if.then14.i.i_crit_edge:                ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i.i

if.then14.i.i:                                    ; preds = %if.else27.if.then14.i.i_crit_edge, %if.else27.if.then14.i.i_crit_edge114
  %115 = ptrtoint ptr %wifi_rssi.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %wifi_rssi.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %116)
  %cmp16.not.i.i = icmp slt i32 %116, 17
  %.str.115..str.114.i.i = select i1 %cmp16.not.i.i, ptr @.str.115, ptr @.str.114
  %..i.i = select i1 %cmp16.not.i.i, i8 5, i8 0
  br label %btc8723b2ant_wifi_rssi_state.exit.i

if.else19.i.i:                                    ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #6
  %117 = ptrtoint ptr %wifi_rssi.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %wifi_rssi.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %118)
  %cmp21.i.i = icmp slt i32 %118, 15
  %.str.116..str.117.i.i = select i1 %cmp21.i.i, ptr @.str.116, ptr @.str.117
  %.1.i.i = select i1 %cmp21.i.i, i8 2, i8 3
  br label %btc8723b2ant_wifi_rssi_state.exit.i

btc8723b2ant_wifi_rssi_state.exit.i:              ; preds = %if.else19.i.i, %if.then14.i.i
  %.str.115.sink.i.i = phi ptr [ %.str.115..str.114.i.i, %if.then14.i.i ], [ %.str.116..str.117.i.i, %if.else19.i.i ]
  %wifi_rssi_state.0.i.i = phi i8 [ %..i.i, %if.then14.i.i ], [ %.1.i.i, %if.else19.i.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %107, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.115.sink.i.i) #4
  store i8 %wifi_rssi_state.0.i.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 15, i32 0), align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i.i) #4
  %119 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_rssi.i42.i) #4
  %121 = ptrtoint ptr %wifi_rssi.i42.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %wifi_rssi.i42.i, align 4
  %122 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %btc_get, align 4
  %call.i45.i = call zeroext i1 %123(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi.i42.i) #4
  %124 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 15, i32 1), align 4
  %125 = zext i8 %124 to i64
  call void @__sanitizer_cov_trace_switch(i64 %125, ptr @__sancov_gen_cov_switch_values.234)
  switch i8 %124, label %if.else19.i53.i [
    i8 2, label %btc8723b2ant_wifi_rssi_state.exit.i.if.then14.i49.i_crit_edge
    i8 5, label %btc8723b2ant_wifi_rssi_state.exit.i.if.then14.i49.i_crit_edge115
  ]

btc8723b2ant_wifi_rssi_state.exit.i.if.then14.i49.i_crit_edge115: ; preds = %btc8723b2ant_wifi_rssi_state.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i49.i

btc8723b2ant_wifi_rssi_state.exit.i.if.then14.i49.i_crit_edge: ; preds = %btc8723b2ant_wifi_rssi_state.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i49.i

if.then14.i49.i:                                  ; preds = %btc8723b2ant_wifi_rssi_state.exit.i.if.then14.i49.i_crit_edge, %btc8723b2ant_wifi_rssi_state.exit.i.if.then14.i49.i_crit_edge115
  %126 = ptrtoint ptr %wifi_rssi.i42.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %wifi_rssi.i42.i, align 4
  %conv15.i.i = zext i8 %sub3.i to i32
  %add.i.i = add nuw nsw i32 %conv15.i.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %127, i32 %add.i.i)
  %cmp16.not.i46.i = icmp slt i32 %127, %add.i.i
  %.str.115..str.114.i47.i = select i1 %cmp16.not.i46.i, ptr @.str.115, ptr @.str.114
  %..i48.i = select i1 %cmp16.not.i46.i, i8 5, i8 0
  br label %btc8723b2ant_wifi_rssi_state.exit56.i

if.else19.i53.i:                                  ; preds = %btc8723b2ant_wifi_rssi_state.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %128 = ptrtoint ptr %wifi_rssi.i42.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %wifi_rssi.i42.i, align 4
  %conv20.i.i = zext i8 %sub3.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %129, i32 %conv20.i.i)
  %cmp21.i50.i = icmp slt i32 %129, %conv20.i.i
  %.str.116..str.117.i51.i = select i1 %cmp21.i50.i, ptr @.str.116, ptr @.str.117
  %.1.i52.i = select i1 %cmp21.i50.i, i8 2, i8 3
  br label %btc8723b2ant_wifi_rssi_state.exit56.i

btc8723b2ant_wifi_rssi_state.exit56.i:            ; preds = %if.else19.i53.i, %if.then14.i49.i
  %.str.115.sink.i54.i = phi ptr [ %.str.115..str.114.i47.i, %if.then14.i49.i ], [ %.str.116..str.117.i51.i, %if.else19.i53.i ]
  %wifi_rssi_state.0.i55.i = phi i8 [ %..i48.i, %if.then14.i49.i ], [ %.1.i52.i, %if.else19.i53.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %120, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.115.sink.i54.i) #4
  store i8 %wifi_rssi_state.0.i55.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 15, i32 1), align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i42.i) #4
  %130 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 47), align 2
  %.neg41.i = mul i8 %130, -2
  %sub11.i = add i8 %.neg41.i, 46
  %131 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %adapter, align 4
  %133 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 14), align 2
  %134 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 12), align 4
  %135 = zext i8 %133 to i64
  call void @__sanitizer_cov_trace_switch(i64 %135, ptr @__sancov_gen_cov_switch_values.235)
  switch i8 %133, label %if.else17.i.i [
    i8 2, label %btc8723b2ant_wifi_rssi_state.exit56.i.if.then12.i.i_crit_edge
    i8 5, label %btc8723b2ant_wifi_rssi_state.exit56.i.if.then12.i.i_crit_edge116
  ]

btc8723b2ant_wifi_rssi_state.exit56.i.if.then12.i.i_crit_edge116: ; preds = %btc8723b2ant_wifi_rssi_state.exit56.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i.i

btc8723b2ant_wifi_rssi_state.exit56.i.if.then12.i.i_crit_edge: ; preds = %btc8723b2ant_wifi_rssi_state.exit56.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i.i

if.then12.i.i:                                    ; preds = %btc8723b2ant_wifi_rssi_state.exit56.i.if.then12.i.i_crit_edge, %btc8723b2ant_wifi_rssi_state.exit56.i.if.then12.i.i_crit_edge116
  %conv.i.i113 = zext i8 %134 to i32
  %conv13.i.i = zext i8 %sub11.i to i32
  %add.i58.i = add nuw nsw i32 %conv13.i.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i58.i, i32 %conv.i.i113)
  %cmp14.not.i.i = icmp ugt i32 %add.i58.i, %conv.i.i113
  %.str.122..str.121.i.i = select i1 %cmp14.not.i.i, ptr @.str.122, ptr @.str.121
  %..i59.i = select i1 %cmp14.not.i.i, i8 5, i8 0
  br label %btc8723b2ant_bt_rssi_state.exit.i

if.else17.i.i:                                    ; preds = %btc8723b2ant_wifi_rssi_state.exit56.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_cmp1(i8 %134, i8 %sub11.i)
  %cmp19.i.i = icmp ult i8 %134, %sub11.i
  %.str.123..str.124.i.i = select i1 %cmp19.i.i, ptr @.str.123, ptr @.str.124
  %.116.i.i = select i1 %cmp19.i.i, i8 2, i8 3
  br label %btc8723b2ant_bt_rssi_state.exit.i

btc8723b2ant_bt_rssi_state.exit.i:                ; preds = %if.else17.i.i, %if.then12.i.i
  %.str.123.sink.i.i = phi ptr [ %.str.122..str.121.i.i, %if.then12.i.i ], [ %.str.123..str.124.i.i, %if.else17.i.i ]
  %bt_rssi_state.0.i.i = phi i8 [ %..i59.i, %if.then12.i.i ], [ %.116.i.i, %if.else17.i.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %132, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.123.sink.i.i) #4
  store i8 %bt_rssi_state.0.i.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 14), align 2
  %136 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %btc_get, align 4
  %call14.i = call zeroext i1 %137(ptr noundef %btcoexist, i8 noundef zeroext 41, ptr noundef nonnull %ap_num.i) #4
  %trunc.i = trunc i8 %wifi_rssi_state.0.i55.i to i3
  %138 = zext i3 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %138, ptr @__sancov_gen_cov_switch_values.236)
  switch i3 %trunc.i, label %btc8723b2ant_bt_rssi_state.exit.i.if.end.i_crit_edge [
    i3 0, label %btc8723b2ant_bt_rssi_state.exit.i.land.lhs.true.i_crit_edge
    i3 3, label %btc8723b2ant_bt_rssi_state.exit.i.land.lhs.true.i_crit_edge117
  ]

btc8723b2ant_bt_rssi_state.exit.i.land.lhs.true.i_crit_edge117: ; preds = %btc8723b2ant_bt_rssi_state.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

btc8723b2ant_bt_rssi_state.exit.i.land.lhs.true.i_crit_edge: ; preds = %btc8723b2ant_bt_rssi_state.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

btc8723b2ant_bt_rssi_state.exit.i.if.end.i_crit_edge: ; preds = %btc8723b2ant_bt_rssi_state.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %btc8723b2ant_bt_rssi_state.exit.i.land.lhs.true.i_crit_edge, %btc8723b2ant_bt_rssi_state.exit.i.land.lhs.true.i_crit_edge117
  %139 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 3), align 1, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool.not.i = icmp eq i8 %139, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true21.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

land.lhs.true21.i:                                ; preds = %land.lhs.true.i
  %140 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 2), align 2, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool22.not.i = icmp eq i8 %140, 0
  br i1 %tobool22.not.i, label %land.lhs.true21.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true21.i.if.end.i_crit_edge:             ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true21.i
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %107, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.202) #4
  call fastcc void @btc8723b2ant_dac_swing(ptr noundef %btcoexist, i32 noundef 6) #4
  %141 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %adapter, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %142, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef 0) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1
  %143 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %144 = zext i8 %143 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %142, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.134, i32 noundef %144, i32 noundef 0) #4
  %145 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %146 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1, !range !465
  call void @__sanitizer_cov_trace_cmp1(i8 %145, i8 %146)
  %cmp.i.i = icmp eq i8 %145, %146
  br i1 %cmp.i.i, label %if.then.i.btc8723b2ant_dec_bt_pwr.exit.i_crit_edge, label %if.end16.i.i

if.then.i.btc8723b2ant_dec_bt_pwr.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8723b2ant_dec_bt_pwr.exit.i

if.end16.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %147 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i.i) #4
  %149 = ptrtoint ptr %h2c_parameter.i.i.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %146, ptr %h2c_parameter.i.i.i, align 1
  %conv.i.i.i = zext i8 %146 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %148, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.135, i32 noundef %conv.i.i.i) #4
  %btc_fill_h2c.i.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %150 = ptrtoint ptr %btc_fill_h2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %btc_fill_h2c.i.i.i, align 4
  call void %151(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i.i) #4
  %152 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1, !range !465
  store i8 %152, ptr @glcoex_dm_8723b_2ant, align 4
  br label %btc8723b2ant_dec_bt_pwr.exit.i

btc8723b2ant_dec_bt_pwr.exit.i:                   ; preds = %if.end16.i.i, %if.then.i.btc8723b2ant_dec_bt_pwr.exit.i_crit_edge
  call fastcc void @btc8723b2ant_sw_mechanism(ptr noundef %btcoexist, i1 noundef zeroext false) #4
  call fastcc void @btc8723b2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1431655765) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i.i) #4
  %153 = ptrtoint ptr %low_pwr_disable.i.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 0, ptr %low_pwr_disable.i.i, align 1
  %154 = ptrtoint ptr %btc_set23 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %btc_set23, align 4
  %call5.i.i = call zeroext i1 %155(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i.i) #4
  %156 = ptrtoint ptr %btc_set23 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %btc_set23, align 4
  %call7.i.i = call zeroext i1 %157(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 33), align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i.i) #4
  call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 1) #4
  br label %btc8723b2ant_action_wifi_idle_process.exit

if.end.i:                                         ; preds = %land.lhs.true21.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %btc8723b2ant_bt_rssi_state.exit.i.if.end.i_crit_edge
  call fastcc void @btc8723b2ant_dac_swing(ptr noundef %btcoexist, i32 noundef 24) #4
  br label %btc8723b2ant_action_wifi_idle_process.exit

btc8723b2ant_action_wifi_idle_process.exit:       ; preds = %if.end.i, %btc8723b2ant_dec_bt_pwr.exit.i
  %retval.0.i = phi i1 [ true, %btc8723b2ant_dec_bt_pwr.exit.i ], [ false, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ap_num.i) #4
  br label %cleanup

cleanup:                                          ; preds = %btc8723b2ant_action_wifi_idle_process.exit, %if.then26, %btc8723b2ant_dec_bt_pwr.exit111, %if.then16.cleanup_crit_edge, %btc8723b2ant_dec_bt_pwr.exit96, %btc8723b2ant_dec_bt_pwr.exit
  %retval.0 = phi i1 [ false, %if.then16.cleanup_crit_edge ], [ true, %btc8723b2ant_dec_bt_pwr.exit96 ], [ true, %btc8723b2ant_dec_bt_pwr.exit111 ], [ false, %if.then26 ], [ %retval.0.i, %btc8723b2ant_action_wifi_idle_process.exit ], [ true, %btc8723b2ant_dec_bt_pwr.exit ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_hs_on) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_busy) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_connected) #4
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8723b2ant_action_sco(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i.i38 = alloca [1 x i8], align 1
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
  store i32 -1, ptr %wifi_bw, align 4, !annotation !466
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %1 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %3 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %wifi_rssi.i, align 4
  %btc_get.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %4 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %btc_get.i, align 4
  %call.i = call zeroext i1 %5(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi.i) #4
  %6 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 15, i32 0), align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.237)
  switch i8 %6, label %if.else19.i [
    i8 2, label %entry.if.then14.i_crit_edge
    i8 5, label %entry.if.then14.i_crit_edge49
  ]

entry.if.then14.i_crit_edge49:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

entry.if.then14.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

if.then14.i:                                      ; preds = %entry.if.then14.i_crit_edge, %entry.if.then14.i_crit_edge49
  %8 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %9)
  %cmp16.not.i = icmp slt i32 %9, 17
  %.str.115..str.114.i = select i1 %cmp16.not.i, ptr @.str.115, ptr @.str.114
  %..i = select i1 %cmp16.not.i, i8 5, i8 0
  br label %btc8723b2ant_wifi_rssi_state.exit

if.else19.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %11)
  %cmp21.i = icmp slt i32 %11, 15
  %.str.116..str.117.i = select i1 %cmp21.i, ptr @.str.116, ptr @.str.117
  %.1.i = select i1 %cmp21.i, i8 2, i8 3
  br label %btc8723b2ant_wifi_rssi_state.exit

btc8723b2ant_wifi_rssi_state.exit:                ; preds = %if.else19.i, %if.then14.i
  %.str.115.sink.i = phi ptr [ %.str.115..str.114.i, %if.then14.i ], [ %.str.116..str.117.i, %if.else19.i ]
  %wifi_rssi_state.0.i = phi i8 [ %..i, %if.then14.i ], [ %.1.i, %if.else19.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %2, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.115.sink.i) #4
  store i8 %wifi_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 15, i32 0), align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %12 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 47), align 2
  %sub = sub i8 46, %12
  %13 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter.i, align 4
  %15 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 14), align 2
  %16 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 12), align 4
  %17 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.238)
  switch i8 %15, label %if.else17.i [
    i8 2, label %btc8723b2ant_wifi_rssi_state.exit.if.then12.i_crit_edge
    i8 5, label %btc8723b2ant_wifi_rssi_state.exit.if.then12.i_crit_edge50
  ]

btc8723b2ant_wifi_rssi_state.exit.if.then12.i_crit_edge50: ; preds = %btc8723b2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i

btc8723b2ant_wifi_rssi_state.exit.if.then12.i_crit_edge: ; preds = %btc8723b2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i

if.then12.i:                                      ; preds = %btc8723b2ant_wifi_rssi_state.exit.if.then12.i_crit_edge, %btc8723b2ant_wifi_rssi_state.exit.if.then12.i_crit_edge50
  %conv.i = zext i8 %16 to i32
  %conv13.i = zext i8 %sub to i32
  %add.i = add nuw nsw i32 %conv13.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv.i)
  %cmp14.not.i = icmp ugt i32 %add.i, %conv.i
  %spec.select = select i1 %cmp14.not.i, ptr @.str.122, ptr @.str.121
  %spec.select46 = select i1 %cmp14.not.i, i8 5, i8 0
  br label %btc8723b2ant_bt_rssi_state.exit

if.else17.i:                                      ; preds = %btc8723b2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %sub)
  %cmp19.i = icmp ult i8 %16, %sub
  %spec.select47 = select i1 %cmp19.i, ptr @.str.123, ptr @.str.124
  %spec.select48 = select i1 %cmp19.i, i8 2, i8 3
  br label %btc8723b2ant_bt_rssi_state.exit

btc8723b2ant_bt_rssi_state.exit:                  ; preds = %if.else17.i, %if.then12.i
  %.str.123.sink.i = phi ptr [ %spec.select, %if.then12.i ], [ %spec.select47, %if.else17.i ]
  %bt_rssi_state.0.i = phi i8 [ %spec.select46, %if.then12.i ], [ %spec.select48, %if.else17.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %14, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.123.sink.i) #4
  store i8 %bt_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 14), align 2
  %btc_set_rf_reg = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 27
  %18 = ptrtoint ptr %btc_set_rf_reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %btc_set_rf_reg, align 4
  call void %19(ptr noundef %btcoexist, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 1048575, i32 noundef 0) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  %20 = ptrtoint ptr %reject_rx_agg.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %reject_rx_agg.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  %21 = ptrtoint ptr %bt_ctrl_rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %bt_ctrl_rx_agg_size.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  %22 = ptrtoint ptr %rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 8, ptr %rx_agg_size.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %23 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %btc_set.i, align 4
  %call.i36 = call zeroext i1 %24(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %reject_rx_agg.i) #4
  %25 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %btc_set.i, align 4
  %call7.i = call zeroext i1 %26(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %bt_ctrl_rx_agg_size.i) #4
  %27 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %btc_set.i, align 4
  %call9.i = call zeroext i1 %28(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %rx_agg_size.i) #4
  %29 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %btc_set.i, align 4
  %call11.i = call zeroext i1 %30(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  call fastcc void @btc8723b2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 4)
  %trunc = trunc i8 %bt_rssi_state.0.i to i3
  %31 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.239)
  switch i3 %trunc, label %if.else [
    i3 0, label %btc8723b2ant_bt_rssi_state.exit.if.then_crit_edge
    i3 3, label %btc8723b2ant_bt_rssi_state.exit.if.then_crit_edge51
  ]

btc8723b2ant_bt_rssi_state.exit.if.then_crit_edge51: ; preds = %btc8723b2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

btc8723b2ant_bt_rssi_state.exit.if.then_crit_edge: ; preds = %btc8723b2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %btc8723b2ant_bt_rssi_state.exit.if.then_crit_edge, %btc8723b2ant_bt_rssi_state.exit.if.then_crit_edge51
  %32 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %adapter.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %33, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef 2) #4
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1
  %34 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %35 = zext i8 %34 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %33, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.134, i32 noundef %35, i32 noundef 1) #4
  %36 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %37 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1, !range !465
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %37)
  %cmp.i = icmp eq i8 %36, %37
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %if.end16.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end16.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %38 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  %40 = ptrtoint ptr %h2c_parameter.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %37, ptr %h2c_parameter.i.i, align 1
  %conv.i.i = zext i8 %37 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.135, i32 noundef %conv.i.i) #4
  %btc_fill_h2c.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %41 = ptrtoint ptr %btc_fill_h2c.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %btc_fill_h2c.i.i, align 4
  call void %42(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  br label %if.end.sink.split

if.else:                                          ; preds = %btc8723b2ant_bt_rssi_state.exit
  %43 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %adapter.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %44, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef 0) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1
  %45 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %46 = zext i8 %45 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %44, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.134, i32 noundef %46, i32 noundef 0) #4
  %47 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %48 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1, !range !465
  call void @__sanitizer_cov_trace_cmp1(i8 %47, i8 %48)
  %cmp.i40 = icmp eq i8 %47, %48
  br i1 %cmp.i40, label %if.else.if.end_crit_edge, label %if.end16.i43

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end16.i43:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %49 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i38) #4
  %51 = ptrtoint ptr %h2c_parameter.i.i38 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %48, ptr %h2c_parameter.i.i38, align 1
  %conv.i.i41 = zext i8 %48 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %50, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.135, i32 noundef %conv.i.i41) #4
  %btc_fill_h2c.i.i42 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %52 = ptrtoint ptr %btc_fill_h2c.i.i42 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %btc_fill_h2c.i.i42, align 4
  call void %53(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i38) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i38) #4
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %if.end16.i43, %if.end16.i
  %54 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1, !range !465
  store i8 %54, ptr @glcoex_dm_8723b_2ant, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.else.if.end_crit_edge, %if.then.if.end_crit_edge
  %55 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %btc_get.i, align 4
  %call8 = call zeroext i1 %56(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef nonnull %wifi_bw) #4
  %57 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %wifi_bw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp9 = icmp eq i32 %58, 0
  %. = select i1 %cmp9, i32 1524259546, i32 1440568797
  call fastcc void @btc8723b2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef %., i32 noundef 1524259546) #4
  call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 0)
  call fastcc void @btc8723b2ant_sw_mechanism(ptr noundef %btcoexist, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_bw) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8723b2ant_action_hid(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %low_pwr_disable.i = alloca i8, align 1
  %h2c_parameter.i.i53 = alloca [1 x i8], align 1
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
  store i32 -1, ptr %wifi_bw, align 4, !annotation !466
  %1 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 47), align 2
  %sub = sub i8 46, %1
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %2 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %4 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wifi_rssi.i, align 4
  %btc_get.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %5 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %btc_get.i, align 4
  %call.i = call zeroext i1 %6(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi.i) #4
  %7 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 15, i32 0), align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.240)
  switch i8 %7, label %if.else19.i [
    i8 2, label %entry.if.then14.i_crit_edge
    i8 5, label %entry.if.then14.i_crit_edge67
  ]

entry.if.then14.i_crit_edge67:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

entry.if.then14.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

if.then14.i:                                      ; preds = %entry.if.then14.i_crit_edge, %entry.if.then14.i_crit_edge67
  %9 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %10)
  %cmp16.not.i = icmp slt i32 %10, 17
  %.str.115..str.114.i = select i1 %cmp16.not.i, ptr @.str.115, ptr @.str.114
  %..i = select i1 %cmp16.not.i, i8 5, i8 0
  br label %btc8723b2ant_wifi_rssi_state.exit

if.else19.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %12)
  %cmp21.i = icmp slt i32 %12, 15
  %.str.116..str.117.i = select i1 %cmp21.i, ptr @.str.116, ptr @.str.117
  %.1.i = select i1 %cmp21.i, i8 2, i8 3
  br label %btc8723b2ant_wifi_rssi_state.exit

btc8723b2ant_wifi_rssi_state.exit:                ; preds = %if.else19.i, %if.then14.i
  %.str.115.sink.i = phi ptr [ %.str.115..str.114.i, %if.then14.i ], [ %.str.116..str.117.i, %if.else19.i ]
  %wifi_rssi_state.0.i = phi i8 [ %..i, %if.then14.i ], [ %.1.i, %if.else19.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %3, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.115.sink.i) #4
  store i8 %wifi_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 15, i32 0), align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %13 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter.i, align 4
  %15 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 14), align 2
  %16 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 12), align 4
  %17 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.241)
  switch i8 %15, label %if.else17.i [
    i8 2, label %btc8723b2ant_wifi_rssi_state.exit.if.then12.i_crit_edge
    i8 5, label %btc8723b2ant_wifi_rssi_state.exit.if.then12.i_crit_edge68
  ]

btc8723b2ant_wifi_rssi_state.exit.if.then12.i_crit_edge68: ; preds = %btc8723b2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i

btc8723b2ant_wifi_rssi_state.exit.if.then12.i_crit_edge: ; preds = %btc8723b2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i

if.then12.i:                                      ; preds = %btc8723b2ant_wifi_rssi_state.exit.if.then12.i_crit_edge, %btc8723b2ant_wifi_rssi_state.exit.if.then12.i_crit_edge68
  %conv.i = zext i8 %16 to i32
  %conv13.i = zext i8 %sub to i32
  %add.i = add nuw nsw i32 %conv13.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv.i)
  %cmp14.not.i = icmp ugt i32 %add.i, %conv.i
  %spec.select = select i1 %cmp14.not.i, ptr @.str.122, ptr @.str.121
  %spec.select63 = select i1 %cmp14.not.i, i8 5, i8 0
  br label %btc8723b2ant_bt_rssi_state.exit

if.else17.i:                                      ; preds = %btc8723b2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %sub)
  %cmp19.i = icmp ult i8 %16, %sub
  %spec.select64 = select i1 %cmp19.i, ptr @.str.123, ptr @.str.124
  %spec.select65 = select i1 %cmp19.i, i8 2, i8 3
  br label %btc8723b2ant_bt_rssi_state.exit

btc8723b2ant_bt_rssi_state.exit:                  ; preds = %if.else17.i, %if.then12.i
  %.str.123.sink.i = phi ptr [ %spec.select, %if.then12.i ], [ %spec.select64, %if.else17.i ]
  %bt_rssi_state.0.i = phi i8 [ %spec.select63, %if.then12.i ], [ %spec.select65, %if.else17.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %14, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.123.sink.i) #4
  store i8 %bt_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 14), align 2
  %btc_set_rf_reg = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 27
  %18 = ptrtoint ptr %btc_set_rf_reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %btc_set_rf_reg, align 4
  call void %19(ptr noundef %btcoexist, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 1048575, i32 noundef 0) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  %20 = ptrtoint ptr %reject_rx_agg.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %reject_rx_agg.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  %21 = ptrtoint ptr %bt_ctrl_rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %bt_ctrl_rx_agg_size.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  %22 = ptrtoint ptr %rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 8, ptr %rx_agg_size.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %23 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %btc_set.i, align 4
  %call.i51 = call zeroext i1 %24(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %reject_rx_agg.i) #4
  %25 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %btc_set.i, align 4
  %call7.i = call zeroext i1 %26(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %bt_ctrl_rx_agg_size.i) #4
  %27 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %btc_set.i, align 4
  %call9.i = call zeroext i1 %28(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %rx_agg_size.i) #4
  %29 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %btc_set.i, align 4
  %call11.i = call zeroext i1 %30(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  call fastcc void @btc8723b2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 6)
  %trunc = trunc i8 %bt_rssi_state.0.i to i3
  %31 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.242)
  switch i3 %trunc, label %if.else [
    i3 3, label %btc8723b2ant_bt_rssi_state.exit.if.then_crit_edge
    i3 0, label %btc8723b2ant_bt_rssi_state.exit.if.then_crit_edge69
  ]

btc8723b2ant_bt_rssi_state.exit.if.then_crit_edge69: ; preds = %btc8723b2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

btc8723b2ant_bt_rssi_state.exit.if.then_crit_edge: ; preds = %btc8723b2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %btc8723b2ant_bt_rssi_state.exit.if.then_crit_edge, %btc8723b2ant_bt_rssi_state.exit.if.then_crit_edge69
  %32 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %adapter.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %33, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef 2) #4
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1
  %34 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %35 = zext i8 %34 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %33, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.134, i32 noundef %35, i32 noundef 1) #4
  %36 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %37 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1, !range !465
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %37)
  %cmp.i = icmp eq i8 %36, %37
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %if.end16.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end16.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %38 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  %40 = ptrtoint ptr %h2c_parameter.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %37, ptr %h2c_parameter.i.i, align 1
  %conv.i.i = zext i8 %37 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.135, i32 noundef %conv.i.i) #4
  %btc_fill_h2c.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %41 = ptrtoint ptr %btc_fill_h2c.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %btc_fill_h2c.i.i, align 4
  call void %42(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  br label %if.end.sink.split

if.else:                                          ; preds = %btc8723b2ant_bt_rssi_state.exit
  %43 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %adapter.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %44, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef 0) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1
  %45 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %46 = zext i8 %45 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %44, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.134, i32 noundef %46, i32 noundef 0) #4
  %47 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %48 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1, !range !465
  call void @__sanitizer_cov_trace_cmp1(i8 %47, i8 %48)
  %cmp.i55 = icmp eq i8 %47, %48
  br i1 %cmp.i55, label %if.else.if.end_crit_edge, label %if.end16.i58

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end16.i58:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %49 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i53) #4
  %51 = ptrtoint ptr %h2c_parameter.i.i53 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %48, ptr %h2c_parameter.i.i53, align 1
  %conv.i.i56 = zext i8 %48 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %50, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.135, i32 noundef %conv.i.i56) #4
  %btc_fill_h2c.i.i57 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %52 = ptrtoint ptr %btc_fill_h2c.i.i57 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %btc_fill_h2c.i.i57, align 4
  call void %53(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i53) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i53) #4
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %if.end16.i58, %if.end16.i
  %54 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1, !range !465
  store i8 %54, ptr @glcoex_dm_8723b_2ant, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.else.if.end_crit_edge, %if.then.if.end_crit_edge
  %55 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %btc_get.i, align 4
  %call8 = call zeroext i1 %56(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef nonnull %wifi_bw) #4
  call fastcc void @btc8723b2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1440568797, i32 noundef 1524259546) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  %57 = ptrtoint ptr %low_pwr_disable.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %low_pwr_disable.i, align 1
  %58 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %btc_set.i, align 4
  %call5.i = call zeroext i1 %59(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i) #4
  %60 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %btc_set.i, align 4
  %call7.i61 = call zeroext i1 %61(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 33), align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  %62 = sext i3 %trunc to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %62)
  %switch.selectcmp.case1 = icmp eq i3 %trunc, 3
  %63 = sext i3 %trunc to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %switch.selectcmp.case2 = icmp eq i3 %trunc, 0
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %64 = select i1 %switch.selectcmp, i8 9, i8 13
  call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext %64)
  call fastcc void @btc8723b2ant_sw_mechanism(ptr noundef %btcoexist, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_bw) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8723b2ant_action_a2dp(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %low_pwr_disable.i = alloca i8, align 1
  %h2c_parameter.i.i141 = alloca [1 x i8], align 1
  %h2c_parameter.i.i134 = alloca [1 x i8], align 1
  %reject_rx_agg.i = alloca i8, align 1
  %bt_ctrl_rx_agg_size.i = alloca i8, align 1
  %rx_agg_size.i = alloca i8, align 1
  %h2c_parameter.i.i = alloca [1 x i8], align 1
  %wifi_rssi.i115 = alloca i32, align 4
  %wifi_rssi.i = alloca i32, align 4
  %wifi_bw = alloca i32, align 4
  %ap_num = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_bw) #4
  %0 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wifi_bw, align 4, !annotation !466
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ap_num) #4
  %1 = ptrtoint ptr %ap_num to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %ap_num, align 1
  %2 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 47), align 2
  %sub = sub i8 46, %2
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %3 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %5 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %wifi_rssi.i, align 4
  %btc_get.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %6 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %btc_get.i, align 4
  %call.i = call zeroext i1 %7(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi.i) #4
  %8 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 15, i32 0), align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.243)
  switch i8 %8, label %if.else19.i [
    i8 2, label %entry.if.then14.i_crit_edge
    i8 5, label %entry.if.then14.i_crit_edge154
  ]

entry.if.then14.i_crit_edge154:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

entry.if.then14.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

if.then14.i:                                      ; preds = %entry.if.then14.i_crit_edge, %entry.if.then14.i_crit_edge154
  %10 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %11)
  %cmp16.not.i = icmp slt i32 %11, 17
  %.str.115..str.114.i = select i1 %cmp16.not.i, ptr @.str.115, ptr @.str.114
  %..i = select i1 %cmp16.not.i, i8 5, i8 0
  br label %btc8723b2ant_wifi_rssi_state.exit

if.else19.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %13)
  %cmp21.i = icmp slt i32 %13, 15
  %.str.116..str.117.i = select i1 %cmp21.i, ptr @.str.116, ptr @.str.117
  %.1.i = select i1 %cmp21.i, i8 2, i8 3
  br label %btc8723b2ant_wifi_rssi_state.exit

btc8723b2ant_wifi_rssi_state.exit:                ; preds = %if.else19.i, %if.then14.i
  %.str.115.sink.i = phi ptr [ %.str.115..str.114.i, %if.then14.i ], [ %.str.116..str.117.i, %if.else19.i ]
  %wifi_rssi_state.0.i = phi i8 [ %..i, %if.then14.i ], [ %.1.i, %if.else19.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %4, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.115.sink.i) #4
  store i8 %wifi_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 15, i32 0), align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %14 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_rssi.i115) #4
  %16 = ptrtoint ptr %wifi_rssi.i115 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %wifi_rssi.i115, align 4
  %17 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %btc_get.i, align 4
  %call.i118 = call zeroext i1 %18(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi.i115) #4
  %19 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 15, i32 1), align 4
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.244)
  switch i8 %19, label %if.else19.i126 [
    i8 2, label %btc8723b2ant_wifi_rssi_state.exit.if.then14.i122_crit_edge
    i8 5, label %btc8723b2ant_wifi_rssi_state.exit.if.then14.i122_crit_edge155
  ]

btc8723b2ant_wifi_rssi_state.exit.if.then14.i122_crit_edge155: ; preds = %btc8723b2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i122

btc8723b2ant_wifi_rssi_state.exit.if.then14.i122_crit_edge: ; preds = %btc8723b2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i122

if.then14.i122:                                   ; preds = %btc8723b2ant_wifi_rssi_state.exit.if.then14.i122_crit_edge, %btc8723b2ant_wifi_rssi_state.exit.if.then14.i122_crit_edge155
  %21 = ptrtoint ptr %wifi_rssi.i115 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %wifi_rssi.i115, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %22)
  %cmp16.not.i119 = icmp slt i32 %22, 42
  %.str.115..str.114.i120 = select i1 %cmp16.not.i119, ptr @.str.115, ptr @.str.114
  %..i121 = select i1 %cmp16.not.i119, i8 5, i8 0
  br label %btc8723b2ant_wifi_rssi_state.exit129

if.else19.i126:                                   ; preds = %btc8723b2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %wifi_rssi.i115 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %wifi_rssi.i115, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %24)
  %cmp21.i123 = icmp slt i32 %24, 40
  %.str.116..str.117.i124 = select i1 %cmp21.i123, ptr @.str.116, ptr @.str.117
  %.1.i125 = select i1 %cmp21.i123, i8 2, i8 3
  br label %btc8723b2ant_wifi_rssi_state.exit129

btc8723b2ant_wifi_rssi_state.exit129:             ; preds = %if.else19.i126, %if.then14.i122
  %.str.115.sink.i127 = phi ptr [ %.str.115..str.114.i120, %if.then14.i122 ], [ %.str.116..str.117.i124, %if.else19.i126 ]
  %wifi_rssi_state.0.i128 = phi i8 [ %..i121, %if.then14.i122 ], [ %.1.i125, %if.else19.i126 ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %15, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.115.sink.i127) #4
  store i8 %wifi_rssi_state.0.i128, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 15, i32 1), align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i115) #4
  %25 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter.i, align 4
  %27 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 14), align 2
  %28 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 12), align 4
  %29 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.245)
  switch i8 %27, label %if.else17.i [
    i8 2, label %btc8723b2ant_wifi_rssi_state.exit129.if.then12.i_crit_edge
    i8 5, label %btc8723b2ant_wifi_rssi_state.exit129.if.then12.i_crit_edge156
  ]

btc8723b2ant_wifi_rssi_state.exit129.if.then12.i_crit_edge156: ; preds = %btc8723b2ant_wifi_rssi_state.exit129
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i

btc8723b2ant_wifi_rssi_state.exit129.if.then12.i_crit_edge: ; preds = %btc8723b2ant_wifi_rssi_state.exit129
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i

if.then12.i:                                      ; preds = %btc8723b2ant_wifi_rssi_state.exit129.if.then12.i_crit_edge, %btc8723b2ant_wifi_rssi_state.exit129.if.then12.i_crit_edge156
  %conv.i = zext i8 %28 to i32
  %conv13.i = zext i8 %sub to i32
  %add.i = add nuw nsw i32 %conv13.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv.i)
  %cmp14.not.i = icmp ugt i32 %add.i, %conv.i
  %.str.122..str.121.i = select i1 %cmp14.not.i, ptr @.str.122, ptr @.str.121
  %..i131 = select i1 %cmp14.not.i, i8 5, i8 0
  br label %btc8723b2ant_bt_rssi_state.exit

if.else17.i:                                      ; preds = %btc8723b2ant_wifi_rssi_state.exit129
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %sub)
  %cmp19.i = icmp ult i8 %28, %sub
  %.str.123..str.124.i = select i1 %cmp19.i, ptr @.str.123, ptr @.str.124
  %.116.i = select i1 %cmp19.i, i8 2, i8 3
  br label %btc8723b2ant_bt_rssi_state.exit

btc8723b2ant_bt_rssi_state.exit:                  ; preds = %if.else17.i, %if.then12.i
  %.str.123.sink.i = phi ptr [ %.str.122..str.121.i, %if.then12.i ], [ %.str.123..str.124.i, %if.else17.i ]
  %bt_rssi_state.0.i = phi i8 [ %..i131, %if.then12.i ], [ %.116.i, %if.else17.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %26, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.123.sink.i) #4
  store i8 %bt_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 14), align 2
  %30 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %btc_get.i, align 4
  %call4 = call zeroext i1 %31(ptr noundef %btcoexist, i8 noundef zeroext 41, ptr noundef nonnull %ap_num) #4
  %32 = ptrtoint ptr %ap_num to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ap_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %33)
  %cmp = icmp ugt i8 %33, 9
  br i1 %cmp, label %land.lhs.true, label %btc8723b2ant_bt_rssi_state.exit.if.end18_crit_edge

btc8723b2ant_bt_rssi_state.exit.if.end18_crit_edge: ; preds = %btc8723b2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

land.lhs.true:                                    ; preds = %btc8723b2ant_bt_rssi_state.exit
  %trunc153 = trunc i8 %wifi_rssi_state.0.i128 to i3
  %34 = zext i3 %trunc153 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.246)
  switch i3 %trunc153, label %land.lhs.true.if.end18_crit_edge [
    i3 0, label %land.lhs.true.if.then_crit_edge
    i3 3, label %land.lhs.true.if.then_crit_edge157
  ]

land.lhs.true.if.then_crit_edge157:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %land.lhs.true.if.then_crit_edge157
  %btc_set_rf_reg = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 27
  %35 = ptrtoint ptr %btc_set_rf_reg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %btc_set_rf_reg, align 4
  call void %36(ptr noundef %btcoexist, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 1048575, i32 noundef 0) #4
  call fastcc void @btc8723b2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 6)
  %37 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %adapter.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %38, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef 0) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1
  %39 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %40 = zext i8 %39 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %38, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.134, i32 noundef %40, i32 noundef 0) #4
  %41 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %42 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1, !range !465
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %42)
  %cmp.i = icmp eq i8 %41, %42
  br i1 %cmp.i, label %if.then.btc8723b2ant_dec_bt_pwr.exit_crit_edge, label %if.end16.i

if.then.btc8723b2ant_dec_bt_pwr.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8723b2ant_dec_bt_pwr.exit

if.end16.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %43 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  %45 = ptrtoint ptr %h2c_parameter.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %42, ptr %h2c_parameter.i.i, align 1
  %conv.i.i = zext i8 %42 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %44, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.135, i32 noundef %conv.i.i) #4
  %btc_fill_h2c.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %46 = ptrtoint ptr %btc_fill_h2c.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %btc_fill_h2c.i.i, align 4
  call void %47(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  %48 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1, !range !465
  store i8 %48, ptr @glcoex_dm_8723b_2ant, align 4
  br label %btc8723b2ant_dec_bt_pwr.exit

btc8723b2ant_dec_bt_pwr.exit:                     ; preds = %if.end16.i, %if.then.btc8723b2ant_dec_bt_pwr.exit_crit_edge
  call fastcc void @btc8723b2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1431655765) #4
  call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 1)
  br label %cleanup

if.end18:                                         ; preds = %land.lhs.true.if.end18_crit_edge, %btc8723b2ant_bt_rssi_state.exit.if.end18_crit_edge
  %btc_set_rf_reg19 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 27
  %49 = ptrtoint ptr %btc_set_rf_reg19 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %btc_set_rf_reg19, align 4
  call void %50(ptr noundef %btcoexist, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 1048575, i32 noundef 0) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  %51 = ptrtoint ptr %reject_rx_agg.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %reject_rx_agg.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  %52 = ptrtoint ptr %bt_ctrl_rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %bt_ctrl_rx_agg_size.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  %53 = ptrtoint ptr %rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 8, ptr %rx_agg_size.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %54 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %btc_set.i, align 4
  %call.i133 = call zeroext i1 %55(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %reject_rx_agg.i) #4
  %56 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %btc_set.i, align 4
  %call7.i = call zeroext i1 %57(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %bt_ctrl_rx_agg_size.i) #4
  %58 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %btc_set.i, align 4
  %call9.i = call zeroext i1 %59(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %rx_agg_size.i) #4
  %60 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %btc_set.i, align 4
  %call11.i = call zeroext i1 %61(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  call fastcc void @btc8723b2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 6)
  %trunc = trunc i8 %bt_rssi_state.0.i to i3
  %62 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.247)
  switch i3 %trunc, label %if.else30 [
    i3 3, label %if.end18.if.then29_crit_edge
    i3 0, label %if.end18.if.then29_crit_edge158
  ]

if.end18.if.then29_crit_edge158:                  ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then29

if.end18.if.then29_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then29

if.then29:                                        ; preds = %if.end18.if.then29_crit_edge, %if.end18.if.then29_crit_edge158
  %63 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %adapter.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %64, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef 2) #4
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1
  %65 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %66 = zext i8 %65 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %64, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.134, i32 noundef %66, i32 noundef 1) #4
  %67 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %68 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1, !range !465
  call void @__sanitizer_cov_trace_cmp1(i8 %67, i8 %68)
  %cmp.i136 = icmp eq i8 %67, %68
  br i1 %cmp.i136, label %if.then29.if.end31_crit_edge, label %if.end16.i139

if.then29.if.end31_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

if.end16.i139:                                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  %69 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i134) #4
  %71 = ptrtoint ptr %h2c_parameter.i.i134 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %68, ptr %h2c_parameter.i.i134, align 1
  %conv.i.i137 = zext i8 %68 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %70, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.135, i32 noundef %conv.i.i137) #4
  %btc_fill_h2c.i.i138 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %72 = ptrtoint ptr %btc_fill_h2c.i.i138 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %btc_fill_h2c.i.i138, align 4
  call void %73(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i134) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i134) #4
  br label %if.end31.sink.split

if.else30:                                        ; preds = %if.end18
  %74 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %adapter.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %75, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef 0) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1
  %76 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %77 = zext i8 %76 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %75, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.134, i32 noundef %77, i32 noundef 0) #4
  %78 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %79 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1, !range !465
  call void @__sanitizer_cov_trace_cmp1(i8 %78, i8 %79)
  %cmp.i143 = icmp eq i8 %78, %79
  br i1 %cmp.i143, label %if.else30.if.end31_crit_edge, label %if.end16.i146

if.else30.if.end31_crit_edge:                     ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

if.end16.i146:                                    ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #6
  %80 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i141) #4
  %82 = ptrtoint ptr %h2c_parameter.i.i141 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %79, ptr %h2c_parameter.i.i141, align 1
  %conv.i.i144 = zext i8 %79 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %81, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.135, i32 noundef %conv.i.i144) #4
  %btc_fill_h2c.i.i145 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %83 = ptrtoint ptr %btc_fill_h2c.i.i145 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %btc_fill_h2c.i.i145, align 4
  call void %84(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i141) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i141) #4
  br label %if.end31.sink.split

if.end31.sink.split:                              ; preds = %if.end16.i146, %if.end16.i139
  %85 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1, !range !465
  store i8 %85, ptr @glcoex_dm_8723b_2ant, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.end31.sink.split, %if.else30.if.end31_crit_edge, %if.then29.if.end31_crit_edge
  %trunc150 = trunc i8 %wifi_rssi_state.0.i128 to i3
  %86 = zext i3 %trunc150 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.248)
  switch i3 %trunc150, label %if.end31.if.else52_crit_edge [
    i3 0, label %if.end31.land.lhs.true41_crit_edge
    i3 3, label %if.end31.land.lhs.true41_crit_edge159
  ]

if.end31.land.lhs.true41_crit_edge159:            ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true41

if.end31.land.lhs.true41_crit_edge:               ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true41

if.end31.if.else52_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else52

land.lhs.true41:                                  ; preds = %if.end31.land.lhs.true41_crit_edge, %if.end31.land.lhs.true41_crit_edge159
  %87 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.249)
  switch i3 %trunc, label %land.lhs.true41.if.else52_crit_edge [
    i3 3, label %land.lhs.true41.if.then51_crit_edge
    i3 0, label %land.lhs.true41.if.then51_crit_edge160
  ]

land.lhs.true41.if.then51_crit_edge160:           ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then51

land.lhs.true41.if.then51_crit_edge:              ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then51

land.lhs.true41.if.else52_crit_edge:              ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else52

if.then51:                                        ; preds = %land.lhs.true41.if.then51_crit_edge, %land.lhs.true41.if.then51_crit_edge160
  call fastcc void @btc8723b2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1440568797, i32 noundef 1524259546) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  %88 = ptrtoint ptr %low_pwr_disable.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %low_pwr_disable.i, align 1
  %89 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %btc_set.i, align 4
  %call5.i = call zeroext i1 %90(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i) #4
  %91 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %btc_set.i, align 4
  %call7.i149 = call zeroext i1 %92(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 33), align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  br label %if.end53

if.else52:                                        ; preds = %land.lhs.true41.if.else52_crit_edge, %if.end31.if.else52_crit_edge
  call fastcc void @btc8723b2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1610571775, i32 noundef -1431655766) #4
  call fastcc void @btc8723b2ant_power_save_state(ptr noundef %btcoexist, i8 noundef zeroext 1, i8 noundef zeroext 80, i8 noundef zeroext 4)
  br label %if.end53

if.end53:                                         ; preds = %if.else52, %if.then51
  %93 = sext i3 %trunc to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %93)
  %switch.selectcmp.case1 = icmp ne i3 %trunc, 3
  %94 = sext i3 %trunc to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %switch.selectcmp.case2 = icmp ne i3 %trunc, 0
  %not.switch.selectcmp = and i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  call fastcc void @btc8723b2ant_tdma_duration_adjust(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext %not.switch.selectcmp, i8 noundef zeroext 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %btc8723b2ant_dec_bt_pwr.exit
  %95 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %btc_get.i, align 4
  %call65 = call zeroext i1 %96(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef nonnull %wifi_bw) #4
  call fastcc void @btc8723b2ant_sw_mechanism(ptr noundef %btcoexist, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ap_num) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_bw) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8723b2ant_action_a2dp_pan_hs(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %low_pwr_disable.i = alloca i8, align 1
  %h2c_parameter.i.i83 = alloca [1 x i8], align 1
  %h2c_parameter.i.i = alloca [1 x i8], align 1
  %reject_rx_agg.i = alloca i8, align 1
  %bt_ctrl_rx_agg_size.i = alloca i8, align 1
  %rx_agg_size.i = alloca i8, align 1
  %wifi_rssi.i63 = alloca i32, align 4
  %wifi_rssi.i = alloca i32, align 4
  %wifi_bw = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_bw) #4
  %0 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wifi_bw, align 4, !annotation !466
  %1 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 47), align 2
  %sub = sub i8 42, %1
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %2 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %4 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wifi_rssi.i, align 4
  %btc_get.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %5 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %btc_get.i, align 4
  %call.i = call zeroext i1 %6(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi.i) #4
  %7 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 15, i32 0), align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.250)
  switch i8 %7, label %if.else19.i [
    i8 2, label %entry.if.then14.i_crit_edge
    i8 5, label %entry.if.then14.i_crit_edge98
  ]

entry.if.then14.i_crit_edge98:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

entry.if.then14.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

if.then14.i:                                      ; preds = %entry.if.then14.i_crit_edge, %entry.if.then14.i_crit_edge98
  %9 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %10)
  %cmp16.not.i = icmp slt i32 %10, 17
  %.str.115..str.114.i = select i1 %cmp16.not.i, ptr @.str.115, ptr @.str.114
  %..i = select i1 %cmp16.not.i, i8 5, i8 0
  br label %btc8723b2ant_wifi_rssi_state.exit

if.else19.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %12)
  %cmp21.i = icmp slt i32 %12, 15
  %.str.116..str.117.i = select i1 %cmp21.i, ptr @.str.116, ptr @.str.117
  %.1.i = select i1 %cmp21.i, i8 2, i8 3
  br label %btc8723b2ant_wifi_rssi_state.exit

btc8723b2ant_wifi_rssi_state.exit:                ; preds = %if.else19.i, %if.then14.i
  %.str.115.sink.i = phi ptr [ %.str.115..str.114.i, %if.then14.i ], [ %.str.116..str.117.i, %if.else19.i ]
  %wifi_rssi_state.0.i = phi i8 [ %..i, %if.then14.i ], [ %.1.i, %if.else19.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %3, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.115.sink.i) #4
  store i8 %wifi_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 15, i32 0), align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %13 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_rssi.i63) #4
  %15 = ptrtoint ptr %wifi_rssi.i63 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %wifi_rssi.i63, align 4
  %16 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %btc_get.i, align 4
  %call.i66 = call zeroext i1 %17(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi.i63) #4
  %18 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 15, i32 1), align 4
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.251)
  switch i8 %18, label %if.else19.i74 [
    i8 2, label %btc8723b2ant_wifi_rssi_state.exit.if.then14.i70_crit_edge
    i8 5, label %btc8723b2ant_wifi_rssi_state.exit.if.then14.i70_crit_edge99
  ]

btc8723b2ant_wifi_rssi_state.exit.if.then14.i70_crit_edge99: ; preds = %btc8723b2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i70

btc8723b2ant_wifi_rssi_state.exit.if.then14.i70_crit_edge: ; preds = %btc8723b2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i70

if.then14.i70:                                    ; preds = %btc8723b2ant_wifi_rssi_state.exit.if.then14.i70_crit_edge, %btc8723b2ant_wifi_rssi_state.exit.if.then14.i70_crit_edge99
  %20 = ptrtoint ptr %wifi_rssi.i63 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %wifi_rssi.i63, align 4
  %conv15.i = zext i8 %sub to i32
  %add.i = add nuw nsw i32 %conv15.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %add.i)
  %cmp16.not.i67 = icmp slt i32 %21, %add.i
  %.str.115..str.114.i68 = select i1 %cmp16.not.i67, ptr @.str.115, ptr @.str.114
  %..i69 = select i1 %cmp16.not.i67, i8 5, i8 0
  br label %btc8723b2ant_wifi_rssi_state.exit77

if.else19.i74:                                    ; preds = %btc8723b2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %wifi_rssi.i63 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %wifi_rssi.i63, align 4
  %conv20.i = zext i8 %sub to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv20.i)
  %cmp21.i71 = icmp slt i32 %23, %conv20.i
  %.str.116..str.117.i72 = select i1 %cmp21.i71, ptr @.str.116, ptr @.str.117
  %.1.i73 = select i1 %cmp21.i71, i8 2, i8 3
  br label %btc8723b2ant_wifi_rssi_state.exit77

btc8723b2ant_wifi_rssi_state.exit77:              ; preds = %if.else19.i74, %if.then14.i70
  %.str.115.sink.i75 = phi ptr [ %.str.115..str.114.i68, %if.then14.i70 ], [ %.str.116..str.117.i72, %if.else19.i74 ]
  %wifi_rssi_state.0.i76 = phi i8 [ %..i69, %if.then14.i70 ], [ %.1.i73, %if.else19.i74 ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %14, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.115.sink.i75) #4
  store i8 %wifi_rssi_state.0.i76, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 15, i32 1), align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i63) #4
  %24 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 47), align 2
  %sub5 = sub i8 46, %24
  %25 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter.i, align 4
  %27 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 14), align 2
  %28 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 12), align 4
  %29 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.252)
  switch i8 %27, label %if.else17.i [
    i8 2, label %btc8723b2ant_wifi_rssi_state.exit77.if.then12.i_crit_edge
    i8 5, label %btc8723b2ant_wifi_rssi_state.exit77.if.then12.i_crit_edge100
  ]

btc8723b2ant_wifi_rssi_state.exit77.if.then12.i_crit_edge100: ; preds = %btc8723b2ant_wifi_rssi_state.exit77
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i

btc8723b2ant_wifi_rssi_state.exit77.if.then12.i_crit_edge: ; preds = %btc8723b2ant_wifi_rssi_state.exit77
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i

if.then12.i:                                      ; preds = %btc8723b2ant_wifi_rssi_state.exit77.if.then12.i_crit_edge, %btc8723b2ant_wifi_rssi_state.exit77.if.then12.i_crit_edge100
  %conv.i = zext i8 %28 to i32
  %conv13.i = zext i8 %sub5 to i32
  %add.i79 = add nuw nsw i32 %conv13.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i79, i32 %conv.i)
  %cmp14.not.i = icmp ugt i32 %add.i79, %conv.i
  %spec.select = select i1 %cmp14.not.i, ptr @.str.122, ptr @.str.121
  %spec.select93 = select i1 %cmp14.not.i, i8 5, i8 0
  br label %btc8723b2ant_bt_rssi_state.exit

if.else17.i:                                      ; preds = %btc8723b2ant_wifi_rssi_state.exit77
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %sub5)
  %cmp19.i = icmp ult i8 %28, %sub5
  %spec.select94 = select i1 %cmp19.i, ptr @.str.123, ptr @.str.124
  %spec.select95 = select i1 %cmp19.i, i8 2, i8 3
  br label %btc8723b2ant_bt_rssi_state.exit

btc8723b2ant_bt_rssi_state.exit:                  ; preds = %if.else17.i, %if.then12.i
  %.str.123.sink.i = phi ptr [ %spec.select, %if.then12.i ], [ %spec.select94, %if.else17.i ]
  %bt_rssi_state.0.i = phi i8 [ %spec.select93, %if.then12.i ], [ %spec.select95, %if.else17.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %26, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.123.sink.i) #4
  store i8 %bt_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 14), align 2
  %btc_set_rf_reg = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 27
  %30 = ptrtoint ptr %btc_set_rf_reg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %btc_set_rf_reg, align 4
  call void %31(ptr noundef %btcoexist, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 1048575, i32 noundef 0) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  %32 = ptrtoint ptr %reject_rx_agg.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %reject_rx_agg.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  %33 = ptrtoint ptr %bt_ctrl_rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %bt_ctrl_rx_agg_size.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  %34 = ptrtoint ptr %rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 8, ptr %rx_agg_size.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %35 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %btc_set.i, align 4
  %call.i81 = call zeroext i1 %36(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %reject_rx_agg.i) #4
  %37 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %btc_set.i, align 4
  %call7.i = call zeroext i1 %38(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %bt_ctrl_rx_agg_size.i) #4
  %39 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %btc_set.i, align 4
  %call9.i = call zeroext i1 %40(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %rx_agg_size.i) #4
  %41 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %btc_set.i, align 4
  %call11.i = call zeroext i1 %42(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  call fastcc void @btc8723b2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 6)
  %trunc = trunc i8 %bt_rssi_state.0.i to i3
  %43 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.253)
  switch i3 %trunc, label %if.else [
    i3 3, label %btc8723b2ant_bt_rssi_state.exit.if.then_crit_edge
    i3 0, label %btc8723b2ant_bt_rssi_state.exit.if.then_crit_edge101
  ]

btc8723b2ant_bt_rssi_state.exit.if.then_crit_edge101: ; preds = %btc8723b2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

btc8723b2ant_bt_rssi_state.exit.if.then_crit_edge: ; preds = %btc8723b2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %btc8723b2ant_bt_rssi_state.exit.if.then_crit_edge, %btc8723b2ant_bt_rssi_state.exit.if.then_crit_edge101
  %44 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %adapter.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %45, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef 2) #4
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1
  %46 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %47 = zext i8 %46 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %45, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.134, i32 noundef %47, i32 noundef 1) #4
  %48 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %49 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1, !range !465
  call void @__sanitizer_cov_trace_cmp1(i8 %48, i8 %49)
  %cmp.i = icmp eq i8 %48, %49
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %if.end16.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end16.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %50 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  %52 = ptrtoint ptr %h2c_parameter.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %49, ptr %h2c_parameter.i.i, align 1
  %conv.i.i = zext i8 %49 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %51, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.135, i32 noundef %conv.i.i) #4
  %btc_fill_h2c.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %53 = ptrtoint ptr %btc_fill_h2c.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %btc_fill_h2c.i.i, align 4
  call void %54(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  br label %if.end.sink.split

if.else:                                          ; preds = %btc8723b2ant_bt_rssi_state.exit
  %55 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %adapter.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %56, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef 0) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1
  %57 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %58 = zext i8 %57 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %56, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.134, i32 noundef %58, i32 noundef 0) #4
  %59 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %60 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1, !range !465
  call void @__sanitizer_cov_trace_cmp1(i8 %59, i8 %60)
  %cmp.i85 = icmp eq i8 %59, %60
  br i1 %cmp.i85, label %if.else.if.end_crit_edge, label %if.end16.i88

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end16.i88:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %61 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i83) #4
  %63 = ptrtoint ptr %h2c_parameter.i.i83 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %60, ptr %h2c_parameter.i.i83, align 1
  %conv.i.i86 = zext i8 %60 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %62, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.135, i32 noundef %conv.i.i86) #4
  %btc_fill_h2c.i.i87 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %64 = ptrtoint ptr %btc_fill_h2c.i.i87 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %btc_fill_h2c.i.i87, align 4
  call void %65(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i83) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i83) #4
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %if.end16.i88, %if.end16.i
  %66 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1, !range !465
  store i8 %66, ptr @glcoex_dm_8723b_2ant, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.else.if.end_crit_edge, %if.then.if.end_crit_edge
  %trunc96 = trunc i8 %wifi_rssi_state.0.i76 to i3
  %67 = zext i3 %trunc96 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.254)
  switch i3 %trunc96, label %if.end.if.else32_crit_edge [
    i3 0, label %if.end.land.lhs.true_crit_edge
    i3 3, label %if.end.land.lhs.true_crit_edge102
  ]

if.end.land.lhs.true_crit_edge102:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

if.end.if.else32_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else32

land.lhs.true:                                    ; preds = %if.end.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge102
  %68 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.255)
  switch i3 %trunc, label %land.lhs.true.if.else32_crit_edge [
    i3 3, label %land.lhs.true.if.then31_crit_edge
    i3 0, label %land.lhs.true.if.then31_crit_edge103
  ]

land.lhs.true.if.then31_crit_edge103:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then31

land.lhs.true.if.then31_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then31

land.lhs.true.if.else32_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else32

if.then31:                                        ; preds = %land.lhs.true.if.then31_crit_edge, %land.lhs.true.if.then31_crit_edge103
  call fastcc void @btc8723b2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1440568797, i32 noundef 1524259546) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  %69 = ptrtoint ptr %low_pwr_disable.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %low_pwr_disable.i, align 1
  %70 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %btc_set.i, align 4
  %call5.i = call zeroext i1 %71(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i) #4
  %72 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %btc_set.i, align 4
  %call7.i91 = call zeroext i1 %73(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 33), align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  br label %if.end33

if.else32:                                        ; preds = %land.lhs.true.if.else32_crit_edge, %if.end.if.else32_crit_edge
  call fastcc void @btc8723b2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1610571775, i32 noundef -1431655766) #4
  call fastcc void @btc8723b2ant_power_save_state(ptr noundef %btcoexist, i8 noundef zeroext 1, i8 noundef zeroext 80, i8 noundef zeroext 4)
  br label %if.end33

if.end33:                                         ; preds = %if.else32, %if.then31
  call fastcc void @btc8723b2ant_tdma_duration_adjust(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 2)
  %74 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %btc_get.i, align 4
  %call34 = call zeroext i1 %75(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef nonnull %wifi_bw) #4
  call fastcc void @btc8723b2ant_sw_mechanism(ptr noundef %btcoexist, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_bw) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8723b2ant_action_pan_edr(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %low_pwr_disable.i = alloca i8, align 1
  %h2c_parameter.i.i97 = alloca [1 x i8], align 1
  %h2c_parameter.i.i = alloca [1 x i8], align 1
  %reject_rx_agg.i = alloca i8, align 1
  %bt_ctrl_rx_agg_size.i = alloca i8, align 1
  %rx_agg_size.i = alloca i8, align 1
  %wifi_rssi.i77 = alloca i32, align 4
  %wifi_rssi.i = alloca i32, align 4
  %wifi_bw = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_bw) #4
  %0 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wifi_bw, align 4, !annotation !466
  %1 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 47), align 2
  %sub = sub i8 42, %1
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %2 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %4 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wifi_rssi.i, align 4
  %btc_get.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %5 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %btc_get.i, align 4
  %call.i = call zeroext i1 %6(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi.i) #4
  %7 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 15, i32 0), align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.256)
  switch i8 %7, label %if.else19.i [
    i8 2, label %entry.if.then14.i_crit_edge
    i8 5, label %entry.if.then14.i_crit_edge113
  ]

entry.if.then14.i_crit_edge113:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

entry.if.then14.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

if.then14.i:                                      ; preds = %entry.if.then14.i_crit_edge, %entry.if.then14.i_crit_edge113
  %9 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %10)
  %cmp16.not.i = icmp slt i32 %10, 17
  %.str.115..str.114.i = select i1 %cmp16.not.i, ptr @.str.115, ptr @.str.114
  %..i = select i1 %cmp16.not.i, i8 5, i8 0
  br label %btc8723b2ant_wifi_rssi_state.exit

if.else19.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %12)
  %cmp21.i = icmp slt i32 %12, 15
  %.str.116..str.117.i = select i1 %cmp21.i, ptr @.str.116, ptr @.str.117
  %.1.i = select i1 %cmp21.i, i8 2, i8 3
  br label %btc8723b2ant_wifi_rssi_state.exit

btc8723b2ant_wifi_rssi_state.exit:                ; preds = %if.else19.i, %if.then14.i
  %.str.115.sink.i = phi ptr [ %.str.115..str.114.i, %if.then14.i ], [ %.str.116..str.117.i, %if.else19.i ]
  %wifi_rssi_state.0.i = phi i8 [ %..i, %if.then14.i ], [ %.1.i, %if.else19.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %3, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.115.sink.i) #4
  store i8 %wifi_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 15, i32 0), align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %13 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_rssi.i77) #4
  %15 = ptrtoint ptr %wifi_rssi.i77 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %wifi_rssi.i77, align 4
  %16 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %btc_get.i, align 4
  %call.i80 = call zeroext i1 %17(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi.i77) #4
  %18 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 15, i32 1), align 4
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.257)
  switch i8 %18, label %if.else19.i88 [
    i8 2, label %btc8723b2ant_wifi_rssi_state.exit.if.then14.i84_crit_edge
    i8 5, label %btc8723b2ant_wifi_rssi_state.exit.if.then14.i84_crit_edge114
  ]

btc8723b2ant_wifi_rssi_state.exit.if.then14.i84_crit_edge114: ; preds = %btc8723b2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i84

btc8723b2ant_wifi_rssi_state.exit.if.then14.i84_crit_edge: ; preds = %btc8723b2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i84

if.then14.i84:                                    ; preds = %btc8723b2ant_wifi_rssi_state.exit.if.then14.i84_crit_edge, %btc8723b2ant_wifi_rssi_state.exit.if.then14.i84_crit_edge114
  %20 = ptrtoint ptr %wifi_rssi.i77 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %wifi_rssi.i77, align 4
  %conv15.i = zext i8 %sub to i32
  %add.i = add nuw nsw i32 %conv15.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %add.i)
  %cmp16.not.i81 = icmp slt i32 %21, %add.i
  %.str.115..str.114.i82 = select i1 %cmp16.not.i81, ptr @.str.115, ptr @.str.114
  %..i83 = select i1 %cmp16.not.i81, i8 5, i8 0
  br label %btc8723b2ant_wifi_rssi_state.exit91

if.else19.i88:                                    ; preds = %btc8723b2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %wifi_rssi.i77 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %wifi_rssi.i77, align 4
  %conv20.i = zext i8 %sub to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv20.i)
  %cmp21.i85 = icmp slt i32 %23, %conv20.i
  %.str.116..str.117.i86 = select i1 %cmp21.i85, ptr @.str.116, ptr @.str.117
  %.1.i87 = select i1 %cmp21.i85, i8 2, i8 3
  br label %btc8723b2ant_wifi_rssi_state.exit91

btc8723b2ant_wifi_rssi_state.exit91:              ; preds = %if.else19.i88, %if.then14.i84
  %.str.115.sink.i89 = phi ptr [ %.str.115..str.114.i82, %if.then14.i84 ], [ %.str.116..str.117.i86, %if.else19.i88 ]
  %wifi_rssi_state.0.i90 = phi i8 [ %..i83, %if.then14.i84 ], [ %.1.i87, %if.else19.i88 ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %14, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.115.sink.i89) #4
  store i8 %wifi_rssi_state.0.i90, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 15, i32 1), align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i77) #4
  %24 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 47), align 2
  %sub5 = sub i8 46, %24
  %25 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter.i, align 4
  %27 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 14), align 2
  %28 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 12), align 4
  %29 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.258)
  switch i8 %27, label %if.else17.i [
    i8 2, label %btc8723b2ant_wifi_rssi_state.exit91.if.then12.i_crit_edge
    i8 5, label %btc8723b2ant_wifi_rssi_state.exit91.if.then12.i_crit_edge115
  ]

btc8723b2ant_wifi_rssi_state.exit91.if.then12.i_crit_edge115: ; preds = %btc8723b2ant_wifi_rssi_state.exit91
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i

btc8723b2ant_wifi_rssi_state.exit91.if.then12.i_crit_edge: ; preds = %btc8723b2ant_wifi_rssi_state.exit91
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i

if.then12.i:                                      ; preds = %btc8723b2ant_wifi_rssi_state.exit91.if.then12.i_crit_edge, %btc8723b2ant_wifi_rssi_state.exit91.if.then12.i_crit_edge115
  %conv.i = zext i8 %28 to i32
  %conv13.i = zext i8 %sub5 to i32
  %add.i93 = add nuw nsw i32 %conv13.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i93, i32 %conv.i)
  %cmp14.not.i = icmp ugt i32 %add.i93, %conv.i
  %spec.select = select i1 %cmp14.not.i, ptr @.str.122, ptr @.str.121
  %spec.select107 = select i1 %cmp14.not.i, i8 5, i8 0
  br label %btc8723b2ant_bt_rssi_state.exit

if.else17.i:                                      ; preds = %btc8723b2ant_wifi_rssi_state.exit91
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %sub5)
  %cmp19.i = icmp ult i8 %28, %sub5
  %spec.select108 = select i1 %cmp19.i, ptr @.str.123, ptr @.str.124
  %spec.select109 = select i1 %cmp19.i, i8 2, i8 3
  br label %btc8723b2ant_bt_rssi_state.exit

btc8723b2ant_bt_rssi_state.exit:                  ; preds = %if.else17.i, %if.then12.i
  %.str.123.sink.i = phi ptr [ %spec.select, %if.then12.i ], [ %spec.select108, %if.else17.i ]
  %bt_rssi_state.0.i = phi i8 [ %spec.select107, %if.then12.i ], [ %spec.select109, %if.else17.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %26, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.123.sink.i) #4
  store i8 %bt_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 14), align 2
  %btc_set_rf_reg = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 27
  %30 = ptrtoint ptr %btc_set_rf_reg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %btc_set_rf_reg, align 4
  call void %31(ptr noundef %btcoexist, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 1048575, i32 noundef 0) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  %32 = ptrtoint ptr %reject_rx_agg.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %reject_rx_agg.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  %33 = ptrtoint ptr %bt_ctrl_rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %bt_ctrl_rx_agg_size.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  %34 = ptrtoint ptr %rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 8, ptr %rx_agg_size.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %35 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %btc_set.i, align 4
  %call.i95 = call zeroext i1 %36(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %reject_rx_agg.i) #4
  %37 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %btc_set.i, align 4
  %call7.i = call zeroext i1 %38(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %bt_ctrl_rx_agg_size.i) #4
  %39 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %btc_set.i, align 4
  %call9.i = call zeroext i1 %40(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %rx_agg_size.i) #4
  %41 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %btc_set.i, align 4
  %call11.i = call zeroext i1 %42(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  call fastcc void @btc8723b2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 6)
  %trunc = trunc i8 %bt_rssi_state.0.i to i3
  %43 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.259)
  switch i3 %trunc, label %if.else [
    i3 3, label %btc8723b2ant_bt_rssi_state.exit.if.then_crit_edge
    i3 0, label %btc8723b2ant_bt_rssi_state.exit.if.then_crit_edge116
  ]

btc8723b2ant_bt_rssi_state.exit.if.then_crit_edge116: ; preds = %btc8723b2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

btc8723b2ant_bt_rssi_state.exit.if.then_crit_edge: ; preds = %btc8723b2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %btc8723b2ant_bt_rssi_state.exit.if.then_crit_edge, %btc8723b2ant_bt_rssi_state.exit.if.then_crit_edge116
  %44 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %adapter.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %45, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef 2) #4
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1
  %46 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %47 = zext i8 %46 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %45, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.134, i32 noundef %47, i32 noundef 1) #4
  %48 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %49 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1, !range !465
  call void @__sanitizer_cov_trace_cmp1(i8 %48, i8 %49)
  %cmp.i = icmp eq i8 %48, %49
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %if.end16.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end16.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %50 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  %52 = ptrtoint ptr %h2c_parameter.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %49, ptr %h2c_parameter.i.i, align 1
  %conv.i.i = zext i8 %49 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %51, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.135, i32 noundef %conv.i.i) #4
  %btc_fill_h2c.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %53 = ptrtoint ptr %btc_fill_h2c.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %btc_fill_h2c.i.i, align 4
  call void %54(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  br label %if.end.sink.split

if.else:                                          ; preds = %btc8723b2ant_bt_rssi_state.exit
  %55 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %adapter.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %56, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef 0) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1
  %57 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %58 = zext i8 %57 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %56, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.134, i32 noundef %58, i32 noundef 0) #4
  %59 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %60 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1, !range !465
  call void @__sanitizer_cov_trace_cmp1(i8 %59, i8 %60)
  %cmp.i99 = icmp eq i8 %59, %60
  br i1 %cmp.i99, label %if.else.if.end_crit_edge, label %if.end16.i102

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end16.i102:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %61 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i97) #4
  %63 = ptrtoint ptr %h2c_parameter.i.i97 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %60, ptr %h2c_parameter.i.i97, align 1
  %conv.i.i100 = zext i8 %60 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %62, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.135, i32 noundef %conv.i.i100) #4
  %btc_fill_h2c.i.i101 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %64 = ptrtoint ptr %btc_fill_h2c.i.i101 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %btc_fill_h2c.i.i101, align 4
  call void %65(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i97) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i97) #4
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %if.end16.i102, %if.end16.i
  %66 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1, !range !465
  store i8 %66, ptr @glcoex_dm_8723b_2ant, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.else.if.end_crit_edge, %if.then.if.end_crit_edge
  %trunc110 = trunc i8 %wifi_rssi_state.0.i90 to i3
  %67 = zext i3 %trunc110 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.260)
  switch i3 %trunc110, label %if.end.if.else32_crit_edge [
    i3 0, label %if.end.land.lhs.true_crit_edge
    i3 3, label %if.end.land.lhs.true_crit_edge117
  ]

if.end.land.lhs.true_crit_edge117:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

if.end.if.else32_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else32

land.lhs.true:                                    ; preds = %if.end.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge117
  %68 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.261)
  switch i3 %trunc, label %land.lhs.true.if.else32_crit_edge [
    i3 3, label %land.lhs.true.if.then31_crit_edge
    i3 0, label %land.lhs.true.if.then31_crit_edge118
  ]

land.lhs.true.if.then31_crit_edge118:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then31

land.lhs.true.if.then31_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then31

land.lhs.true.if.else32_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else32

if.then31:                                        ; preds = %land.lhs.true.if.then31_crit_edge, %land.lhs.true.if.then31_crit_edge118
  call fastcc void @btc8723b2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1440568797, i32 noundef 1524259546) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  %69 = ptrtoint ptr %low_pwr_disable.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %low_pwr_disable.i, align 1
  %70 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %btc_set.i, align 4
  %call5.i = call zeroext i1 %71(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i) #4
  %72 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %btc_set.i, align 4
  %call7.i105 = call zeroext i1 %73(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 33), align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  br label %if.end33

if.else32:                                        ; preds = %land.lhs.true.if.else32_crit_edge, %if.end.if.else32_crit_edge
  call fastcc void @btc8723b2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1610571775, i32 noundef -1431655766) #4
  call fastcc void @btc8723b2ant_power_save_state(ptr noundef %btcoexist, i8 noundef zeroext 1, i8 noundef zeroext 80, i8 noundef zeroext 4)
  br label %if.end33

if.end33:                                         ; preds = %if.else32, %if.then31
  %74 = sext i3 %trunc to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %74)
  %switch.selectcmp.case1 = icmp eq i3 %trunc, 3
  %75 = sext i3 %trunc to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %switch.selectcmp.case2 = icmp eq i3 %trunc, 0
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %76 = select i1 %switch.selectcmp, i8 1, i8 5
  call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext %76)
  %77 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %btc_get.i, align 4
  %call44 = call zeroext i1 %78(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef nonnull %wifi_bw) #4
  call fastcc void @btc8723b2ant_sw_mechanism(ptr noundef %btcoexist, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_bw) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8723b2ant_action_pan_hs(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i.i55 = alloca [1 x i8], align 1
  %h2c_parameter.i.i = alloca [1 x i8], align 1
  %reject_rx_agg.i = alloca i8, align 1
  %bt_ctrl_rx_agg_size.i = alloca i8, align 1
  %rx_agg_size.i = alloca i8, align 1
  %wifi_rssi.i35 = alloca i32, align 4
  %wifi_rssi.i = alloca i32, align 4
  %wifi_bw = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_bw) #4
  %0 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wifi_bw, align 4, !annotation !466
  %1 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 47), align 2
  %sub = sub i8 42, %1
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %2 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %4 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wifi_rssi.i, align 4
  %btc_get.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %5 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %btc_get.i, align 4
  %call.i = call zeroext i1 %6(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi.i) #4
  %7 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 15, i32 0), align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.262)
  switch i8 %7, label %if.else19.i [
    i8 2, label %entry.if.then14.i_crit_edge
    i8 5, label %entry.if.then14.i_crit_edge66
  ]

entry.if.then14.i_crit_edge66:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

entry.if.then14.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

if.then14.i:                                      ; preds = %entry.if.then14.i_crit_edge, %entry.if.then14.i_crit_edge66
  %9 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %10)
  %cmp16.not.i = icmp slt i32 %10, 17
  %.str.115..str.114.i = select i1 %cmp16.not.i, ptr @.str.115, ptr @.str.114
  %..i = select i1 %cmp16.not.i, i8 5, i8 0
  br label %btc8723b2ant_wifi_rssi_state.exit

if.else19.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %12)
  %cmp21.i = icmp slt i32 %12, 15
  %.str.116..str.117.i = select i1 %cmp21.i, ptr @.str.116, ptr @.str.117
  %.1.i = select i1 %cmp21.i, i8 2, i8 3
  br label %btc8723b2ant_wifi_rssi_state.exit

btc8723b2ant_wifi_rssi_state.exit:                ; preds = %if.else19.i, %if.then14.i
  %.str.115.sink.i = phi ptr [ %.str.115..str.114.i, %if.then14.i ], [ %.str.116..str.117.i, %if.else19.i ]
  %wifi_rssi_state.0.i = phi i8 [ %..i, %if.then14.i ], [ %.1.i, %if.else19.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %3, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.115.sink.i) #4
  store i8 %wifi_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 15, i32 0), align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %13 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_rssi.i35) #4
  %15 = ptrtoint ptr %wifi_rssi.i35 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %wifi_rssi.i35, align 4
  %16 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %btc_get.i, align 4
  %call.i38 = call zeroext i1 %17(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi.i35) #4
  %18 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 15, i32 1), align 4
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.263)
  switch i8 %18, label %if.else19.i46 [
    i8 2, label %btc8723b2ant_wifi_rssi_state.exit.if.then14.i42_crit_edge
    i8 5, label %btc8723b2ant_wifi_rssi_state.exit.if.then14.i42_crit_edge67
  ]

btc8723b2ant_wifi_rssi_state.exit.if.then14.i42_crit_edge67: ; preds = %btc8723b2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i42

btc8723b2ant_wifi_rssi_state.exit.if.then14.i42_crit_edge: ; preds = %btc8723b2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i42

if.then14.i42:                                    ; preds = %btc8723b2ant_wifi_rssi_state.exit.if.then14.i42_crit_edge, %btc8723b2ant_wifi_rssi_state.exit.if.then14.i42_crit_edge67
  %20 = ptrtoint ptr %wifi_rssi.i35 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %wifi_rssi.i35, align 4
  %conv15.i = zext i8 %sub to i32
  %add.i = add nuw nsw i32 %conv15.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %add.i)
  %cmp16.not.i39 = icmp slt i32 %21, %add.i
  %.str.115..str.114.i40 = select i1 %cmp16.not.i39, ptr @.str.115, ptr @.str.114
  %..i41 = select i1 %cmp16.not.i39, i8 5, i8 0
  br label %btc8723b2ant_wifi_rssi_state.exit49

if.else19.i46:                                    ; preds = %btc8723b2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %wifi_rssi.i35 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %wifi_rssi.i35, align 4
  %conv20.i = zext i8 %sub to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv20.i)
  %cmp21.i43 = icmp slt i32 %23, %conv20.i
  %.str.116..str.117.i44 = select i1 %cmp21.i43, ptr @.str.116, ptr @.str.117
  %.1.i45 = select i1 %cmp21.i43, i8 2, i8 3
  br label %btc8723b2ant_wifi_rssi_state.exit49

btc8723b2ant_wifi_rssi_state.exit49:              ; preds = %if.else19.i46, %if.then14.i42
  %.str.115.sink.i47 = phi ptr [ %.str.115..str.114.i40, %if.then14.i42 ], [ %.str.116..str.117.i44, %if.else19.i46 ]
  %wifi_rssi_state.0.i48 = phi i8 [ %..i41, %if.then14.i42 ], [ %.1.i45, %if.else19.i46 ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %14, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.115.sink.i47) #4
  store i8 %wifi_rssi_state.0.i48, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 15, i32 1), align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i35) #4
  %24 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 47), align 2
  %sub5 = sub i8 46, %24
  %25 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter.i, align 4
  %27 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 14), align 2
  %28 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 12), align 4
  %29 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.264)
  switch i8 %27, label %if.else17.i [
    i8 2, label %btc8723b2ant_wifi_rssi_state.exit49.if.then12.i_crit_edge
    i8 5, label %btc8723b2ant_wifi_rssi_state.exit49.if.then12.i_crit_edge68
  ]

btc8723b2ant_wifi_rssi_state.exit49.if.then12.i_crit_edge68: ; preds = %btc8723b2ant_wifi_rssi_state.exit49
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i

btc8723b2ant_wifi_rssi_state.exit49.if.then12.i_crit_edge: ; preds = %btc8723b2ant_wifi_rssi_state.exit49
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i

if.then12.i:                                      ; preds = %btc8723b2ant_wifi_rssi_state.exit49.if.then12.i_crit_edge, %btc8723b2ant_wifi_rssi_state.exit49.if.then12.i_crit_edge68
  %conv.i = zext i8 %28 to i32
  %conv13.i = zext i8 %sub5 to i32
  %add.i51 = add nuw nsw i32 %conv13.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i51, i32 %conv.i)
  %cmp14.not.i = icmp ugt i32 %add.i51, %conv.i
  %spec.select = select i1 %cmp14.not.i, ptr @.str.122, ptr @.str.121
  %spec.select63 = select i1 %cmp14.not.i, i8 5, i8 0
  br label %btc8723b2ant_bt_rssi_state.exit

if.else17.i:                                      ; preds = %btc8723b2ant_wifi_rssi_state.exit49
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %sub5)
  %cmp19.i = icmp ult i8 %28, %sub5
  %spec.select64 = select i1 %cmp19.i, ptr @.str.123, ptr @.str.124
  %spec.select65 = select i1 %cmp19.i, i8 2, i8 3
  br label %btc8723b2ant_bt_rssi_state.exit

btc8723b2ant_bt_rssi_state.exit:                  ; preds = %if.else17.i, %if.then12.i
  %.str.123.sink.i = phi ptr [ %spec.select, %if.then12.i ], [ %spec.select64, %if.else17.i ]
  %bt_rssi_state.0.i = phi i8 [ %spec.select63, %if.then12.i ], [ %spec.select65, %if.else17.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %26, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.123.sink.i) #4
  store i8 %bt_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 14), align 2
  %btc_set_rf_reg = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 27
  %30 = ptrtoint ptr %btc_set_rf_reg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %btc_set_rf_reg, align 4
  call void %31(ptr noundef %btcoexist, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 1048575, i32 noundef 0) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  %32 = ptrtoint ptr %reject_rx_agg.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %reject_rx_agg.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  %33 = ptrtoint ptr %bt_ctrl_rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %bt_ctrl_rx_agg_size.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  %34 = ptrtoint ptr %rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 8, ptr %rx_agg_size.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %35 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %btc_set.i, align 4
  %call.i53 = call zeroext i1 %36(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %reject_rx_agg.i) #4
  %37 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %btc_set.i, align 4
  %call7.i = call zeroext i1 %38(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %bt_ctrl_rx_agg_size.i) #4
  %39 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %btc_set.i, align 4
  %call9.i = call zeroext i1 %40(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %rx_agg_size.i) #4
  %41 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %btc_set.i, align 4
  %call11.i = call zeroext i1 %42(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  call fastcc void @btc8723b2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 6)
  %trunc = trunc i8 %bt_rssi_state.0.i to i3
  %43 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.265)
  switch i3 %trunc, label %if.else [
    i3 0, label %btc8723b2ant_bt_rssi_state.exit.if.then_crit_edge
    i3 3, label %btc8723b2ant_bt_rssi_state.exit.if.then_crit_edge69
  ]

btc8723b2ant_bt_rssi_state.exit.if.then_crit_edge69: ; preds = %btc8723b2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

btc8723b2ant_bt_rssi_state.exit.if.then_crit_edge: ; preds = %btc8723b2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %btc8723b2ant_bt_rssi_state.exit.if.then_crit_edge, %btc8723b2ant_bt_rssi_state.exit.if.then_crit_edge69
  %44 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %adapter.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %45, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef 2) #4
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1
  %46 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %47 = zext i8 %46 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %45, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.134, i32 noundef %47, i32 noundef 1) #4
  %48 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %49 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1, !range !465
  call void @__sanitizer_cov_trace_cmp1(i8 %48, i8 %49)
  %cmp.i = icmp eq i8 %48, %49
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %if.end16.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end16.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %50 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  %52 = ptrtoint ptr %h2c_parameter.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %49, ptr %h2c_parameter.i.i, align 1
  %conv.i.i = zext i8 %49 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %51, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.135, i32 noundef %conv.i.i) #4
  %btc_fill_h2c.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %53 = ptrtoint ptr %btc_fill_h2c.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %btc_fill_h2c.i.i, align 4
  call void %54(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  br label %if.end.sink.split

if.else:                                          ; preds = %btc8723b2ant_bt_rssi_state.exit
  %55 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %adapter.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %56, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef 0) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1
  %57 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %58 = zext i8 %57 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %56, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.134, i32 noundef %58, i32 noundef 0) #4
  %59 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %60 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1, !range !465
  call void @__sanitizer_cov_trace_cmp1(i8 %59, i8 %60)
  %cmp.i57 = icmp eq i8 %59, %60
  br i1 %cmp.i57, label %if.else.if.end_crit_edge, label %if.end16.i60

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end16.i60:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %61 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i55) #4
  %63 = ptrtoint ptr %h2c_parameter.i.i55 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %60, ptr %h2c_parameter.i.i55, align 1
  %conv.i.i58 = zext i8 %60 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %62, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.135, i32 noundef %conv.i.i58) #4
  %btc_fill_h2c.i.i59 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %64 = ptrtoint ptr %btc_fill_h2c.i.i59 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %btc_fill_h2c.i.i59, align 4
  call void %65(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i55) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i55) #4
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %if.end16.i60, %if.end16.i
  %66 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1, !range !465
  store i8 %66, ptr @glcoex_dm_8723b_2ant, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.else.if.end_crit_edge, %if.then.if.end_crit_edge
  call fastcc void @btc8723b2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1440568797, i32 noundef 1524259546) #4
  call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 1)
  %67 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %btc_get.i, align 4
  %call13 = call zeroext i1 %68(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef nonnull %wifi_bw) #4
  call fastcc void @btc8723b2ant_sw_mechanism(ptr noundef %btcoexist, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_bw) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8723b2ant_action_pan_edr_a2dp(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %low_pwr_disable.i = alloca i8, align 1
  %h2c_parameter.i.i101 = alloca [1 x i8], align 1
  %h2c_parameter.i.i = alloca [1 x i8], align 1
  %wifi_rssi.i82 = alloca i32, align 4
  %wifi_rssi.i = alloca i32, align 4
  %wifi_bw = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_bw) #4
  %0 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wifi_bw, align 4, !annotation !466
  %1 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 47), align 2
  %sub = sub i8 42, %1
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %2 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %4 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wifi_rssi.i, align 4
  %btc_get.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %5 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %btc_get.i, align 4
  %call.i = call zeroext i1 %6(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi.i) #4
  %7 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 15, i32 0), align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.266)
  switch i8 %7, label %if.else19.i [
    i8 2, label %entry.if.then14.i_crit_edge
    i8 5, label %entry.if.then14.i_crit_edge115
  ]

entry.if.then14.i_crit_edge115:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

entry.if.then14.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

if.then14.i:                                      ; preds = %entry.if.then14.i_crit_edge, %entry.if.then14.i_crit_edge115
  %9 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %10)
  %cmp16.not.i = icmp slt i32 %10, 17
  %.str.115..str.114.i = select i1 %cmp16.not.i, ptr @.str.115, ptr @.str.114
  %..i = select i1 %cmp16.not.i, i8 5, i8 0
  br label %btc8723b2ant_wifi_rssi_state.exit

if.else19.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %12)
  %cmp21.i = icmp slt i32 %12, 15
  %.str.116..str.117.i = select i1 %cmp21.i, ptr @.str.116, ptr @.str.117
  %.1.i = select i1 %cmp21.i, i8 2, i8 3
  br label %btc8723b2ant_wifi_rssi_state.exit

btc8723b2ant_wifi_rssi_state.exit:                ; preds = %if.else19.i, %if.then14.i
  %.str.115.sink.i = phi ptr [ %.str.115..str.114.i, %if.then14.i ], [ %.str.116..str.117.i, %if.else19.i ]
  %wifi_rssi_state.0.i = phi i8 [ %..i, %if.then14.i ], [ %.1.i, %if.else19.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %3, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.115.sink.i) #4
  store i8 %wifi_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 15, i32 0), align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %13 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_rssi.i82) #4
  %15 = ptrtoint ptr %wifi_rssi.i82 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %wifi_rssi.i82, align 4
  %16 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %btc_get.i, align 4
  %call.i85 = call zeroext i1 %17(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi.i82) #4
  %18 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 15, i32 1), align 4
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.267)
  switch i8 %18, label %if.else19.i93 [
    i8 2, label %btc8723b2ant_wifi_rssi_state.exit.if.then14.i89_crit_edge
    i8 5, label %btc8723b2ant_wifi_rssi_state.exit.if.then14.i89_crit_edge116
  ]

btc8723b2ant_wifi_rssi_state.exit.if.then14.i89_crit_edge116: ; preds = %btc8723b2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i89

btc8723b2ant_wifi_rssi_state.exit.if.then14.i89_crit_edge: ; preds = %btc8723b2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i89

if.then14.i89:                                    ; preds = %btc8723b2ant_wifi_rssi_state.exit.if.then14.i89_crit_edge, %btc8723b2ant_wifi_rssi_state.exit.if.then14.i89_crit_edge116
  %20 = ptrtoint ptr %wifi_rssi.i82 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %wifi_rssi.i82, align 4
  %conv15.i = zext i8 %sub to i32
  %add.i = add nuw nsw i32 %conv15.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %add.i)
  %cmp16.not.i86 = icmp slt i32 %21, %add.i
  %.str.115..str.114.i87 = select i1 %cmp16.not.i86, ptr @.str.115, ptr @.str.114
  %..i88 = select i1 %cmp16.not.i86, i8 5, i8 0
  br label %btc8723b2ant_wifi_rssi_state.exit96

if.else19.i93:                                    ; preds = %btc8723b2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %wifi_rssi.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %wifi_rssi.i82, align 4
  %conv20.i = zext i8 %sub to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv20.i)
  %cmp21.i90 = icmp slt i32 %23, %conv20.i
  %.str.116..str.117.i91 = select i1 %cmp21.i90, ptr @.str.116, ptr @.str.117
  %.1.i92 = select i1 %cmp21.i90, i8 2, i8 3
  br label %btc8723b2ant_wifi_rssi_state.exit96

btc8723b2ant_wifi_rssi_state.exit96:              ; preds = %if.else19.i93, %if.then14.i89
  %.str.115.sink.i94 = phi ptr [ %.str.115..str.114.i87, %if.then14.i89 ], [ %.str.116..str.117.i91, %if.else19.i93 ]
  %wifi_rssi_state.0.i95 = phi i8 [ %..i88, %if.then14.i89 ], [ %.1.i92, %if.else19.i93 ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %14, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.115.sink.i94) #4
  store i8 %wifi_rssi_state.0.i95, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 15, i32 1), align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i82) #4
  %24 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 47), align 2
  %sub5 = sub i8 46, %24
  %25 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter.i, align 4
  %27 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 14), align 2
  %28 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 12), align 4
  %29 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.268)
  switch i8 %27, label %if.else17.i [
    i8 2, label %btc8723b2ant_wifi_rssi_state.exit96.if.then12.i_crit_edge
    i8 5, label %btc8723b2ant_wifi_rssi_state.exit96.if.then12.i_crit_edge117
  ]

btc8723b2ant_wifi_rssi_state.exit96.if.then12.i_crit_edge117: ; preds = %btc8723b2ant_wifi_rssi_state.exit96
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i

btc8723b2ant_wifi_rssi_state.exit96.if.then12.i_crit_edge: ; preds = %btc8723b2ant_wifi_rssi_state.exit96
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i

if.then12.i:                                      ; preds = %btc8723b2ant_wifi_rssi_state.exit96.if.then12.i_crit_edge, %btc8723b2ant_wifi_rssi_state.exit96.if.then12.i_crit_edge117
  %conv.i = zext i8 %28 to i32
  %conv13.i = zext i8 %sub5 to i32
  %add.i98 = add nuw nsw i32 %conv13.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i98, i32 %conv.i)
  %cmp14.not.i = icmp ugt i32 %add.i98, %conv.i
  %spec.select = select i1 %cmp14.not.i, ptr @.str.122, ptr @.str.121
  %spec.select109 = select i1 %cmp14.not.i, i8 5, i8 0
  br label %btc8723b2ant_bt_rssi_state.exit

if.else17.i:                                      ; preds = %btc8723b2ant_wifi_rssi_state.exit96
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %sub5)
  %cmp19.i = icmp ult i8 %28, %sub5
  %spec.select110 = select i1 %cmp19.i, ptr @.str.123, ptr @.str.124
  %spec.select111 = select i1 %cmp19.i, i8 2, i8 3
  br label %btc8723b2ant_bt_rssi_state.exit

btc8723b2ant_bt_rssi_state.exit:                  ; preds = %if.else17.i, %if.then12.i
  %.str.123.sink.i = phi ptr [ %spec.select, %if.then12.i ], [ %spec.select110, %if.else17.i ]
  %bt_rssi_state.0.i = phi i8 [ %spec.select109, %if.then12.i ], [ %spec.select111, %if.else17.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %26, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.123.sink.i) #4
  store i8 %bt_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 14), align 2
  %btc_set_rf_reg = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 27
  %30 = ptrtoint ptr %btc_set_rf_reg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %btc_set_rf_reg, align 4
  call void %31(ptr noundef %btcoexist, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 1048575, i32 noundef 0) #4
  call fastcc void @btc8723b2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 6)
  %trunc = trunc i8 %bt_rssi_state.0.i to i3
  %32 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.269)
  switch i3 %trunc, label %if.else [
    i3 3, label %btc8723b2ant_bt_rssi_state.exit.if.then_crit_edge
    i3 0, label %btc8723b2ant_bt_rssi_state.exit.if.then_crit_edge118
  ]

btc8723b2ant_bt_rssi_state.exit.if.then_crit_edge118: ; preds = %btc8723b2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

btc8723b2ant_bt_rssi_state.exit.if.then_crit_edge: ; preds = %btc8723b2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %btc8723b2ant_bt_rssi_state.exit.if.then_crit_edge, %btc8723b2ant_bt_rssi_state.exit.if.then_crit_edge118
  %33 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %adapter.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %34, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef 2) #4
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1
  %35 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %36 = zext i8 %35 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %34, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.134, i32 noundef %36, i32 noundef 1) #4
  %37 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %38 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1, !range !465
  call void @__sanitizer_cov_trace_cmp1(i8 %37, i8 %38)
  %cmp.i = icmp eq i8 %37, %38
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %if.end16.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end16.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %39 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  %41 = ptrtoint ptr %h2c_parameter.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %38, ptr %h2c_parameter.i.i, align 1
  %conv.i.i = zext i8 %38 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %40, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.135, i32 noundef %conv.i.i) #4
  %btc_fill_h2c.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %42 = ptrtoint ptr %btc_fill_h2c.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %btc_fill_h2c.i.i, align 4
  call void %43(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  br label %if.end.sink.split

if.else:                                          ; preds = %btc8723b2ant_bt_rssi_state.exit
  %44 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %adapter.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %45, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef 0) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1
  %46 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %47 = zext i8 %46 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %45, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.134, i32 noundef %47, i32 noundef 0) #4
  %48 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %49 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1, !range !465
  call void @__sanitizer_cov_trace_cmp1(i8 %48, i8 %49)
  %cmp.i103 = icmp eq i8 %48, %49
  br i1 %cmp.i103, label %if.else.if.end_crit_edge, label %if.end16.i106

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end16.i106:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %50 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i101) #4
  %52 = ptrtoint ptr %h2c_parameter.i.i101 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %49, ptr %h2c_parameter.i.i101, align 1
  %conv.i.i104 = zext i8 %49 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %51, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.135, i32 noundef %conv.i.i104) #4
  %btc_fill_h2c.i.i105 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %53 = ptrtoint ptr %btc_fill_h2c.i.i105 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %btc_fill_h2c.i.i105, align 4
  call void %54(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i101) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i101) #4
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %if.end16.i106, %if.end16.i
  %55 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1, !range !465
  store i8 %55, ptr @glcoex_dm_8723b_2ant, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.else.if.end_crit_edge, %if.then.if.end_crit_edge
  %trunc112 = trunc i8 %wifi_rssi_state.0.i95 to i3
  %56 = zext i3 %trunc112 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.270)
  switch i3 %trunc112, label %if.end.if.else32_crit_edge [
    i3 0, label %if.end.land.lhs.true_crit_edge
    i3 3, label %if.end.land.lhs.true_crit_edge119
  ]

if.end.land.lhs.true_crit_edge119:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

if.end.if.else32_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else32

land.lhs.true:                                    ; preds = %if.end.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge119
  %57 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.271)
  switch i3 %trunc, label %land.lhs.true.if.else32_crit_edge [
    i3 3, label %land.lhs.true.if.then31_crit_edge
    i3 0, label %land.lhs.true.if.then31_crit_edge120
  ]

land.lhs.true.if.then31_crit_edge120:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then31

land.lhs.true.if.then31_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then31

land.lhs.true.if.else32_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else32

if.then31:                                        ; preds = %land.lhs.true.if.then31_crit_edge, %land.lhs.true.if.then31_crit_edge120
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  %58 = ptrtoint ptr %low_pwr_disable.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %low_pwr_disable.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %59 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %btc_set.i, align 4
  %call5.i = call zeroext i1 %60(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i) #4
  %61 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %btc_set.i, align 4
  %call7.i = call zeroext i1 %62(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 33), align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  br label %if.end33

if.else32:                                        ; preds = %land.lhs.true.if.else32_crit_edge, %if.end.if.else32_crit_edge
  call fastcc void @btc8723b2ant_power_save_state(ptr noundef %btcoexist, i8 noundef zeroext 1, i8 noundef zeroext 80, i8 noundef zeroext 4)
  br label %if.end33

if.end33:                                         ; preds = %if.else32, %if.then31
  %63 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %btc_get.i, align 4
  %call34 = call zeroext i1 %64(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef nonnull %wifi_bw) #4
  %65 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.272)
  switch i3 %trunc, label %if.else48 [
    i3 3, label %if.end33.if.then42_crit_edge
    i3 0, label %if.end33.if.then42_crit_edge121
  ]

if.end33.if.then42_crit_edge121:                  ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then42

if.end33.if.then42_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then42

if.then42:                                        ; preds = %if.end33.if.then42_crit_edge, %if.end33.if.then42_crit_edge121
  call fastcc void @btc8723b2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1440568797, i32 noundef 1524259546) #4
  %66 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %wifi_bw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %67)
  %cmp43 = icmp eq i32 %67, 2
  br i1 %cmp43, label %if.then45, label %if.else46

if.then45:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8723b2ant_tdma_duration_adjust(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 3)
  br label %if.end49

if.else46:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8723b2ant_tdma_duration_adjust(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 3)
  br label %if.end49

if.else48:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8723b2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1440568797, i32 noundef 1524259546) #4
  call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 3)
  br label %if.end49

if.end49:                                         ; preds = %if.else48, %if.else46, %if.then45
  call fastcc void @btc8723b2ant_sw_mechanism(ptr noundef %btcoexist, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_bw) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8723b2ant_action_pan_edr_hid(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %low_pwr_disable.i = alloca i8, align 1
  %h2c_parameter.i.i110 = alloca [1 x i8], align 1
  %h2c_parameter.i.i = alloca [1 x i8], align 1
  %reject_rx_agg.i = alloca i8, align 1
  %bt_ctrl_rx_agg_size.i = alloca i8, align 1
  %rx_agg_size.i = alloca i8, align 1
  %wifi_rssi.i90 = alloca i32, align 4
  %wifi_rssi.i = alloca i32, align 4
  %wifi_bw = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_bw) #4
  %0 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wifi_bw, align 4, !annotation !466
  %1 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 47), align 2
  %sub = sub i8 42, %1
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %2 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %4 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wifi_rssi.i, align 4
  %btc_get.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %5 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %btc_get.i, align 4
  %call.i = call zeroext i1 %6(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi.i) #4
  %7 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 15, i32 0), align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.273)
  switch i8 %7, label %if.else19.i [
    i8 2, label %entry.if.then14.i_crit_edge
    i8 5, label %entry.if.then14.i_crit_edge133
  ]

entry.if.then14.i_crit_edge133:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

entry.if.then14.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

if.then14.i:                                      ; preds = %entry.if.then14.i_crit_edge, %entry.if.then14.i_crit_edge133
  %9 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %10)
  %cmp16.not.i = icmp slt i32 %10, 17
  %.str.115..str.114.i = select i1 %cmp16.not.i, ptr @.str.115, ptr @.str.114
  %..i = select i1 %cmp16.not.i, i8 5, i8 0
  br label %btc8723b2ant_wifi_rssi_state.exit

if.else19.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %12)
  %cmp21.i = icmp slt i32 %12, 15
  %.str.116..str.117.i = select i1 %cmp21.i, ptr @.str.116, ptr @.str.117
  %.1.i = select i1 %cmp21.i, i8 2, i8 3
  br label %btc8723b2ant_wifi_rssi_state.exit

btc8723b2ant_wifi_rssi_state.exit:                ; preds = %if.else19.i, %if.then14.i
  %.str.115.sink.i = phi ptr [ %.str.115..str.114.i, %if.then14.i ], [ %.str.116..str.117.i, %if.else19.i ]
  %wifi_rssi_state.0.i = phi i8 [ %..i, %if.then14.i ], [ %.1.i, %if.else19.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %3, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.115.sink.i) #4
  store i8 %wifi_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 15, i32 0), align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %13 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_rssi.i90) #4
  %15 = ptrtoint ptr %wifi_rssi.i90 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %wifi_rssi.i90, align 4
  %16 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %btc_get.i, align 4
  %call.i93 = call zeroext i1 %17(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi.i90) #4
  %18 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 15, i32 1), align 4
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.274)
  switch i8 %18, label %if.else19.i101 [
    i8 2, label %btc8723b2ant_wifi_rssi_state.exit.if.then14.i97_crit_edge
    i8 5, label %btc8723b2ant_wifi_rssi_state.exit.if.then14.i97_crit_edge134
  ]

btc8723b2ant_wifi_rssi_state.exit.if.then14.i97_crit_edge134: ; preds = %btc8723b2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i97

btc8723b2ant_wifi_rssi_state.exit.if.then14.i97_crit_edge: ; preds = %btc8723b2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i97

if.then14.i97:                                    ; preds = %btc8723b2ant_wifi_rssi_state.exit.if.then14.i97_crit_edge, %btc8723b2ant_wifi_rssi_state.exit.if.then14.i97_crit_edge134
  %20 = ptrtoint ptr %wifi_rssi.i90 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %wifi_rssi.i90, align 4
  %conv15.i = zext i8 %sub to i32
  %add.i = add nuw nsw i32 %conv15.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %add.i)
  %cmp16.not.i94 = icmp slt i32 %21, %add.i
  %.str.115..str.114.i95 = select i1 %cmp16.not.i94, ptr @.str.115, ptr @.str.114
  %..i96 = select i1 %cmp16.not.i94, i8 5, i8 0
  br label %btc8723b2ant_wifi_rssi_state.exit104

if.else19.i101:                                   ; preds = %btc8723b2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %wifi_rssi.i90 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %wifi_rssi.i90, align 4
  %conv20.i = zext i8 %sub to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv20.i)
  %cmp21.i98 = icmp slt i32 %23, %conv20.i
  %.str.116..str.117.i99 = select i1 %cmp21.i98, ptr @.str.116, ptr @.str.117
  %.1.i100 = select i1 %cmp21.i98, i8 2, i8 3
  br label %btc8723b2ant_wifi_rssi_state.exit104

btc8723b2ant_wifi_rssi_state.exit104:             ; preds = %if.else19.i101, %if.then14.i97
  %.str.115.sink.i102 = phi ptr [ %.str.115..str.114.i95, %if.then14.i97 ], [ %.str.116..str.117.i99, %if.else19.i101 ]
  %wifi_rssi_state.0.i103 = phi i8 [ %..i96, %if.then14.i97 ], [ %.1.i100, %if.else19.i101 ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %14, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.115.sink.i102) #4
  store i8 %wifi_rssi_state.0.i103, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 15, i32 1), align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i90) #4
  %24 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 47), align 2
  %sub5 = sub i8 46, %24
  %25 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter.i, align 4
  %27 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 14), align 2
  %28 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 12), align 4
  %29 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.275)
  switch i8 %27, label %if.else17.i [
    i8 2, label %btc8723b2ant_wifi_rssi_state.exit104.if.then12.i_crit_edge
    i8 5, label %btc8723b2ant_wifi_rssi_state.exit104.if.then12.i_crit_edge135
  ]

btc8723b2ant_wifi_rssi_state.exit104.if.then12.i_crit_edge135: ; preds = %btc8723b2ant_wifi_rssi_state.exit104
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i

btc8723b2ant_wifi_rssi_state.exit104.if.then12.i_crit_edge: ; preds = %btc8723b2ant_wifi_rssi_state.exit104
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i

if.then12.i:                                      ; preds = %btc8723b2ant_wifi_rssi_state.exit104.if.then12.i_crit_edge, %btc8723b2ant_wifi_rssi_state.exit104.if.then12.i_crit_edge135
  %conv.i = zext i8 %28 to i32
  %conv13.i = zext i8 %sub5 to i32
  %add.i106 = add nuw nsw i32 %conv13.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i106, i32 %conv.i)
  %cmp14.not.i = icmp ugt i32 %add.i106, %conv.i
  %spec.select = select i1 %cmp14.not.i, ptr @.str.122, ptr @.str.121
  %spec.select120 = select i1 %cmp14.not.i, i8 5, i8 0
  br label %btc8723b2ant_bt_rssi_state.exit

if.else17.i:                                      ; preds = %btc8723b2ant_wifi_rssi_state.exit104
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %sub5)
  %cmp19.i = icmp ult i8 %28, %sub5
  %spec.select121 = select i1 %cmp19.i, ptr @.str.123, ptr @.str.124
  %spec.select122 = select i1 %cmp19.i, i8 2, i8 3
  br label %btc8723b2ant_bt_rssi_state.exit

btc8723b2ant_bt_rssi_state.exit:                  ; preds = %if.else17.i, %if.then12.i
  %.str.123.sink.i = phi ptr [ %spec.select, %if.then12.i ], [ %spec.select121, %if.else17.i ]
  %bt_rssi_state.0.i = phi i8 [ %spec.select120, %if.then12.i ], [ %spec.select122, %if.else17.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %26, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.123.sink.i) #4
  store i8 %bt_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 14), align 2
  %30 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %btc_get.i, align 4
  %call8 = call zeroext i1 %31(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef nonnull %wifi_bw) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  %32 = ptrtoint ptr %reject_rx_agg.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %reject_rx_agg.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  %33 = ptrtoint ptr %bt_ctrl_rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %bt_ctrl_rx_agg_size.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  %34 = ptrtoint ptr %rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 8, ptr %rx_agg_size.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %35 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %btc_set.i, align 4
  %call.i108 = call zeroext i1 %36(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %reject_rx_agg.i) #4
  %37 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %btc_set.i, align 4
  %call7.i = call zeroext i1 %38(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %bt_ctrl_rx_agg_size.i) #4
  %39 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %btc_set.i, align 4
  %call9.i = call zeroext i1 %40(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %rx_agg_size.i) #4
  %41 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %btc_set.i, align 4
  %call11.i = call zeroext i1 %42(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  %trunc = trunc i8 %bt_rssi_state.0.i to i3
  %43 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.276)
  switch i3 %trunc, label %if.else [
    i3 3, label %btc8723b2ant_bt_rssi_state.exit.if.then_crit_edge
    i3 0, label %btc8723b2ant_bt_rssi_state.exit.if.then_crit_edge136
  ]

btc8723b2ant_bt_rssi_state.exit.if.then_crit_edge136: ; preds = %btc8723b2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

btc8723b2ant_bt_rssi_state.exit.if.then_crit_edge: ; preds = %btc8723b2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %btc8723b2ant_bt_rssi_state.exit.if.then_crit_edge, %btc8723b2ant_bt_rssi_state.exit.if.then_crit_edge136
  %44 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %adapter.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %45, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef 2) #4
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1
  %46 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %47 = zext i8 %46 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %45, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.134, i32 noundef %47, i32 noundef 1) #4
  %48 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %49 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1, !range !465
  call void @__sanitizer_cov_trace_cmp1(i8 %48, i8 %49)
  %cmp.i = icmp eq i8 %48, %49
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %if.end16.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end16.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %50 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  %52 = ptrtoint ptr %h2c_parameter.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %49, ptr %h2c_parameter.i.i, align 1
  %conv.i.i = zext i8 %49 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %51, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.135, i32 noundef %conv.i.i) #4
  %btc_fill_h2c.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %53 = ptrtoint ptr %btc_fill_h2c.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %btc_fill_h2c.i.i, align 4
  call void %54(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  br label %if.end.sink.split

if.else:                                          ; preds = %btc8723b2ant_bt_rssi_state.exit
  %55 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %adapter.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %56, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef 0) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1
  %57 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %58 = zext i8 %57 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %56, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.134, i32 noundef %58, i32 noundef 0) #4
  %59 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %60 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1, !range !465
  call void @__sanitizer_cov_trace_cmp1(i8 %59, i8 %60)
  %cmp.i112 = icmp eq i8 %59, %60
  br i1 %cmp.i112, label %if.else.if.end_crit_edge, label %if.end16.i115

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end16.i115:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %61 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i110) #4
  %63 = ptrtoint ptr %h2c_parameter.i.i110 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %60, ptr %h2c_parameter.i.i110, align 1
  %conv.i.i113 = zext i8 %60 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %62, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.135, i32 noundef %conv.i.i113) #4
  %btc_fill_h2c.i.i114 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %64 = ptrtoint ptr %btc_fill_h2c.i.i114 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %btc_fill_h2c.i.i114, align 4
  call void %65(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i110) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i110) #4
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %if.end16.i115, %if.end16.i
  %66 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1, !range !465
  store i8 %66, ptr @glcoex_dm_8723b_2ant, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.else.if.end_crit_edge, %if.then.if.end_crit_edge
  %trunc123 = trunc i8 %wifi_rssi_state.0.i103 to i3
  %67 = zext i3 %trunc123 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.277)
  switch i3 %trunc123, label %if.end.if.else33_crit_edge [
    i3 0, label %if.end.land.lhs.true_crit_edge
    i3 3, label %if.end.land.lhs.true_crit_edge137
  ]

if.end.land.lhs.true_crit_edge137:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

if.end.if.else33_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else33

land.lhs.true:                                    ; preds = %if.end.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge137
  %68 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.278)
  switch i3 %trunc, label %land.lhs.true.if.else33_crit_edge [
    i3 3, label %land.lhs.true.if.then32_crit_edge
    i3 0, label %land.lhs.true.if.then32_crit_edge138
  ]

land.lhs.true.if.then32_crit_edge138:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then32

land.lhs.true.if.then32_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then32

land.lhs.true.if.else33_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else33

if.then32:                                        ; preds = %land.lhs.true.if.then32_crit_edge, %land.lhs.true.if.then32_crit_edge138
  call fastcc void @btc8723b2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1440568797, i32 noundef 1524259546) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  %69 = ptrtoint ptr %low_pwr_disable.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %low_pwr_disable.i, align 1
  %70 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %btc_set.i, align 4
  %call5.i = call zeroext i1 %71(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i) #4
  %72 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %btc_set.i, align 4
  %call7.i118 = call zeroext i1 %73(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 33), align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  br label %if.end34

if.else33:                                        ; preds = %land.lhs.true.if.else33_crit_edge, %if.end.if.else33_crit_edge
  call fastcc void @btc8723b2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1610571775, i32 noundef 1524259546) #4
  call fastcc void @btc8723b2ant_power_save_state(ptr noundef %btcoexist, i8 noundef zeroext 1, i8 noundef zeroext 80, i8 noundef zeroext 4)
  br label %if.end34

if.end34:                                         ; preds = %if.else33, %if.then32
  %74 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.279)
  switch i3 %trunc, label %if.end34.if.end51_crit_edge [
    i3 3, label %if.end34.if.then42_crit_edge
    i3 0, label %if.end34.if.then42_crit_edge139
  ]

if.end34.if.then42_crit_edge139:                  ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then42

if.end34.if.then42_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then42

if.end34.if.end51_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end51

if.then42:                                        ; preds = %if.end34.if.then42_crit_edge, %if.end34.if.then42_crit_edge139
  %75 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %wifi_bw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %76)
  %cmp43 = icmp eq i32 %76, 2
  %. = select i1 %cmp43, i8 3, i8 6
  %.132 = select i1 %cmp43, i32 1920, i32 0
  br label %if.end51

if.end51:                                         ; preds = %if.then42, %if.end34.if.end51_crit_edge
  %.sink131 = phi i8 [ %., %if.then42 ], [ 6, %if.end34.if.end51_crit_edge ]
  %.sink129 = phi i32 [ %.132, %if.then42 ], [ 0, %if.end34.if.end51_crit_edge ]
  %.sink128 = phi i1 [ false, %if.then42 ], [ true, %if.end34.if.end51_crit_edge ]
  call fastcc void @btc8723b2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext %.sink131)
  %btc_set_rf_reg50 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 27
  %77 = ptrtoint ptr %btc_set_rf_reg50 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %btc_set_rf_reg50, align 4
  call void %78(ptr noundef %btcoexist, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 1048575, i32 noundef %.sink129) #4
  call fastcc void @btc8723b2ant_tdma_duration_adjust(ptr noundef %btcoexist, i1 noundef zeroext true, i1 noundef zeroext %.sink128, i8 noundef zeroext 2)
  call fastcc void @btc8723b2ant_sw_mechanism(ptr noundef %btcoexist, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_bw) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8723b2ant_action_hid_a2dp_pan_edr(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %low_pwr_disable.i = alloca i8, align 1
  %h2c_parameter.i.i103 = alloca [1 x i8], align 1
  %h2c_parameter.i.i = alloca [1 x i8], align 1
  %reject_rx_agg.i = alloca i8, align 1
  %bt_ctrl_rx_agg_size.i = alloca i8, align 1
  %rx_agg_size.i = alloca i8, align 1
  %wifi_rssi.i83 = alloca i32, align 4
  %wifi_rssi.i = alloca i32, align 4
  %wifi_bw = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_bw) #4
  %0 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wifi_bw, align 4, !annotation !466
  %1 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 47), align 2
  %sub = sub i8 42, %1
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %2 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %4 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wifi_rssi.i, align 4
  %btc_get.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %5 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %btc_get.i, align 4
  %call.i = call zeroext i1 %6(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi.i) #4
  %7 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 15, i32 0), align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.280)
  switch i8 %7, label %if.else19.i [
    i8 2, label %entry.if.then14.i_crit_edge
    i8 5, label %entry.if.then14.i_crit_edge119
  ]

entry.if.then14.i_crit_edge119:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

entry.if.then14.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

if.then14.i:                                      ; preds = %entry.if.then14.i_crit_edge, %entry.if.then14.i_crit_edge119
  %9 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %10)
  %cmp16.not.i = icmp slt i32 %10, 17
  %.str.115..str.114.i = select i1 %cmp16.not.i, ptr @.str.115, ptr @.str.114
  %..i = select i1 %cmp16.not.i, i8 5, i8 0
  br label %btc8723b2ant_wifi_rssi_state.exit

if.else19.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %12)
  %cmp21.i = icmp slt i32 %12, 15
  %.str.116..str.117.i = select i1 %cmp21.i, ptr @.str.116, ptr @.str.117
  %.1.i = select i1 %cmp21.i, i8 2, i8 3
  br label %btc8723b2ant_wifi_rssi_state.exit

btc8723b2ant_wifi_rssi_state.exit:                ; preds = %if.else19.i, %if.then14.i
  %.str.115.sink.i = phi ptr [ %.str.115..str.114.i, %if.then14.i ], [ %.str.116..str.117.i, %if.else19.i ]
  %wifi_rssi_state.0.i = phi i8 [ %..i, %if.then14.i ], [ %.1.i, %if.else19.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %3, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.115.sink.i) #4
  store i8 %wifi_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 15, i32 0), align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %13 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_rssi.i83) #4
  %15 = ptrtoint ptr %wifi_rssi.i83 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %wifi_rssi.i83, align 4
  %16 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %btc_get.i, align 4
  %call.i86 = call zeroext i1 %17(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi.i83) #4
  %18 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 15, i32 1), align 4
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.281)
  switch i8 %18, label %if.else19.i94 [
    i8 2, label %btc8723b2ant_wifi_rssi_state.exit.if.then14.i90_crit_edge
    i8 5, label %btc8723b2ant_wifi_rssi_state.exit.if.then14.i90_crit_edge120
  ]

btc8723b2ant_wifi_rssi_state.exit.if.then14.i90_crit_edge120: ; preds = %btc8723b2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i90

btc8723b2ant_wifi_rssi_state.exit.if.then14.i90_crit_edge: ; preds = %btc8723b2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i90

if.then14.i90:                                    ; preds = %btc8723b2ant_wifi_rssi_state.exit.if.then14.i90_crit_edge, %btc8723b2ant_wifi_rssi_state.exit.if.then14.i90_crit_edge120
  %20 = ptrtoint ptr %wifi_rssi.i83 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %wifi_rssi.i83, align 4
  %conv15.i = zext i8 %sub to i32
  %add.i = add nuw nsw i32 %conv15.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %add.i)
  %cmp16.not.i87 = icmp slt i32 %21, %add.i
  %.str.115..str.114.i88 = select i1 %cmp16.not.i87, ptr @.str.115, ptr @.str.114
  %..i89 = select i1 %cmp16.not.i87, i8 5, i8 0
  br label %btc8723b2ant_wifi_rssi_state.exit97

if.else19.i94:                                    ; preds = %btc8723b2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %wifi_rssi.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %wifi_rssi.i83, align 4
  %conv20.i = zext i8 %sub to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv20.i)
  %cmp21.i91 = icmp slt i32 %23, %conv20.i
  %.str.116..str.117.i92 = select i1 %cmp21.i91, ptr @.str.116, ptr @.str.117
  %.1.i93 = select i1 %cmp21.i91, i8 2, i8 3
  br label %btc8723b2ant_wifi_rssi_state.exit97

btc8723b2ant_wifi_rssi_state.exit97:              ; preds = %if.else19.i94, %if.then14.i90
  %.str.115.sink.i95 = phi ptr [ %.str.115..str.114.i88, %if.then14.i90 ], [ %.str.116..str.117.i92, %if.else19.i94 ]
  %wifi_rssi_state.0.i96 = phi i8 [ %..i89, %if.then14.i90 ], [ %.1.i93, %if.else19.i94 ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %14, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.115.sink.i95) #4
  store i8 %wifi_rssi_state.0.i96, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 15, i32 1), align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i83) #4
  %24 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 47), align 2
  %sub5 = sub i8 46, %24
  %25 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter.i, align 4
  %27 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 14), align 2
  %28 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 12), align 4
  %29 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.282)
  switch i8 %27, label %if.else17.i [
    i8 2, label %btc8723b2ant_wifi_rssi_state.exit97.if.then12.i_crit_edge
    i8 5, label %btc8723b2ant_wifi_rssi_state.exit97.if.then12.i_crit_edge121
  ]

btc8723b2ant_wifi_rssi_state.exit97.if.then12.i_crit_edge121: ; preds = %btc8723b2ant_wifi_rssi_state.exit97
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i

btc8723b2ant_wifi_rssi_state.exit97.if.then12.i_crit_edge: ; preds = %btc8723b2ant_wifi_rssi_state.exit97
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i

if.then12.i:                                      ; preds = %btc8723b2ant_wifi_rssi_state.exit97.if.then12.i_crit_edge, %btc8723b2ant_wifi_rssi_state.exit97.if.then12.i_crit_edge121
  %conv.i = zext i8 %28 to i32
  %conv13.i = zext i8 %sub5 to i32
  %add.i99 = add nuw nsw i32 %conv13.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i99, i32 %conv.i)
  %cmp14.not.i = icmp ugt i32 %add.i99, %conv.i
  %spec.select = select i1 %cmp14.not.i, ptr @.str.122, ptr @.str.121
  %spec.select113 = select i1 %cmp14.not.i, i8 5, i8 0
  br label %btc8723b2ant_bt_rssi_state.exit

if.else17.i:                                      ; preds = %btc8723b2ant_wifi_rssi_state.exit97
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %sub5)
  %cmp19.i = icmp ult i8 %28, %sub5
  %spec.select114 = select i1 %cmp19.i, ptr @.str.123, ptr @.str.124
  %spec.select115 = select i1 %cmp19.i, i8 2, i8 3
  br label %btc8723b2ant_bt_rssi_state.exit

btc8723b2ant_bt_rssi_state.exit:                  ; preds = %if.else17.i, %if.then12.i
  %.str.123.sink.i = phi ptr [ %spec.select, %if.then12.i ], [ %spec.select114, %if.else17.i ]
  %bt_rssi_state.0.i = phi i8 [ %spec.select113, %if.then12.i ], [ %spec.select115, %if.else17.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %26, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.123.sink.i) #4
  store i8 %bt_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 14), align 2
  %btc_set_rf_reg = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 27
  %30 = ptrtoint ptr %btc_set_rf_reg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %btc_set_rf_reg, align 4
  call void %31(ptr noundef %btcoexist, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 1048575, i32 noundef 0) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  %32 = ptrtoint ptr %reject_rx_agg.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %reject_rx_agg.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  %33 = ptrtoint ptr %bt_ctrl_rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %bt_ctrl_rx_agg_size.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  %34 = ptrtoint ptr %rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 8, ptr %rx_agg_size.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %35 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %btc_set.i, align 4
  %call.i101 = call zeroext i1 %36(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %reject_rx_agg.i) #4
  %37 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %btc_set.i, align 4
  %call7.i = call zeroext i1 %38(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %bt_ctrl_rx_agg_size.i) #4
  %39 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %btc_set.i, align 4
  %call9.i = call zeroext i1 %40(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %rx_agg_size.i) #4
  %41 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %btc_set.i, align 4
  %call11.i = call zeroext i1 %42(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  call fastcc void @btc8723b2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 6)
  %trunc = trunc i8 %bt_rssi_state.0.i to i3
  %43 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.283)
  switch i3 %trunc, label %if.else [
    i3 3, label %btc8723b2ant_bt_rssi_state.exit.if.then_crit_edge
    i3 0, label %btc8723b2ant_bt_rssi_state.exit.if.then_crit_edge122
  ]

btc8723b2ant_bt_rssi_state.exit.if.then_crit_edge122: ; preds = %btc8723b2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

btc8723b2ant_bt_rssi_state.exit.if.then_crit_edge: ; preds = %btc8723b2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %btc8723b2ant_bt_rssi_state.exit.if.then_crit_edge, %btc8723b2ant_bt_rssi_state.exit.if.then_crit_edge122
  %44 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %adapter.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %45, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef 2) #4
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1
  %46 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %47 = zext i8 %46 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %45, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.134, i32 noundef %47, i32 noundef 1) #4
  %48 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %49 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1, !range !465
  call void @__sanitizer_cov_trace_cmp1(i8 %48, i8 %49)
  %cmp.i = icmp eq i8 %48, %49
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %if.end16.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end16.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %50 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  %52 = ptrtoint ptr %h2c_parameter.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %49, ptr %h2c_parameter.i.i, align 1
  %conv.i.i = zext i8 %49 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %51, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.135, i32 noundef %conv.i.i) #4
  %btc_fill_h2c.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %53 = ptrtoint ptr %btc_fill_h2c.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %btc_fill_h2c.i.i, align 4
  call void %54(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  br label %if.end.sink.split

if.else:                                          ; preds = %btc8723b2ant_bt_rssi_state.exit
  %55 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %adapter.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %56, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef 0) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1
  %57 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %58 = zext i8 %57 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %56, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.134, i32 noundef %58, i32 noundef 0) #4
  %59 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %60 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1, !range !465
  call void @__sanitizer_cov_trace_cmp1(i8 %59, i8 %60)
  %cmp.i105 = icmp eq i8 %59, %60
  br i1 %cmp.i105, label %if.else.if.end_crit_edge, label %if.end16.i108

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end16.i108:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %61 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i103) #4
  %63 = ptrtoint ptr %h2c_parameter.i.i103 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %60, ptr %h2c_parameter.i.i103, align 1
  %conv.i.i106 = zext i8 %60 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %62, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.135, i32 noundef %conv.i.i106) #4
  %btc_fill_h2c.i.i107 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %64 = ptrtoint ptr %btc_fill_h2c.i.i107 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %btc_fill_h2c.i.i107, align 4
  call void %65(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i103) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i103) #4
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %if.end16.i108, %if.end16.i
  %66 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1, !range !465
  store i8 %66, ptr @glcoex_dm_8723b_2ant, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.else.if.end_crit_edge, %if.then.if.end_crit_edge
  %trunc116 = trunc i8 %wifi_rssi_state.0.i96 to i3
  %67 = zext i3 %trunc116 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.284)
  switch i3 %trunc116, label %if.end.if.else32_crit_edge [
    i3 0, label %if.end.land.lhs.true_crit_edge
    i3 3, label %if.end.land.lhs.true_crit_edge123
  ]

if.end.land.lhs.true_crit_edge123:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

if.end.if.else32_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else32

land.lhs.true:                                    ; preds = %if.end.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge123
  %68 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.285)
  switch i3 %trunc, label %land.lhs.true.if.else32_crit_edge [
    i3 3, label %land.lhs.true.if.then31_crit_edge
    i3 0, label %land.lhs.true.if.then31_crit_edge124
  ]

land.lhs.true.if.then31_crit_edge124:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then31

land.lhs.true.if.then31_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then31

land.lhs.true.if.else32_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else32

if.then31:                                        ; preds = %land.lhs.true.if.then31_crit_edge, %land.lhs.true.if.then31_crit_edge124
  call fastcc void @btc8723b2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1440568797, i32 noundef 1524259546) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  %69 = ptrtoint ptr %low_pwr_disable.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %low_pwr_disable.i, align 1
  %70 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %btc_set.i, align 4
  %call5.i = call zeroext i1 %71(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i) #4
  %72 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %btc_set.i, align 4
  %call7.i111 = call zeroext i1 %73(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 33), align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  br label %if.end33

if.else32:                                        ; preds = %land.lhs.true.if.else32_crit_edge, %if.end.if.else32_crit_edge
  call fastcc void @btc8723b2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1610571775, i32 noundef 1524259546) #4
  call fastcc void @btc8723b2ant_power_save_state(ptr noundef %btcoexist, i8 noundef zeroext 1, i8 noundef zeroext 80, i8 noundef zeroext 4)
  br label %if.end33

if.end33:                                         ; preds = %if.else32, %if.then31
  %74 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %btc_get.i, align 4
  %call34 = call zeroext i1 %75(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef nonnull %wifi_bw) #4
  %76 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.286)
  switch i3 %trunc, label %if.else48 [
    i3 3, label %if.end33.if.then42_crit_edge
    i3 0, label %if.end33.if.then42_crit_edge125
  ]

if.end33.if.then42_crit_edge125:                  ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then42

if.end33.if.then42_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then42

if.then42:                                        ; preds = %if.end33.if.then42_crit_edge, %if.end33.if.then42_crit_edge125
  %77 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %wifi_bw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %78)
  %cmp43 = icmp eq i32 %78, 2
  br i1 %cmp43, label %if.then45, label %if.else46

if.then45:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8723b2ant_tdma_duration_adjust(ptr noundef %btcoexist, i1 noundef zeroext true, i1 noundef zeroext true, i8 noundef zeroext 2)
  br label %if.end49

if.else46:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8723b2ant_tdma_duration_adjust(ptr noundef %btcoexist, i1 noundef zeroext true, i1 noundef zeroext false, i8 noundef zeroext 3)
  br label %if.end49

if.else48:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8723b2ant_tdma_duration_adjust(ptr noundef %btcoexist, i1 noundef zeroext true, i1 noundef zeroext true, i8 noundef zeroext 3)
  br label %if.end49

if.end49:                                         ; preds = %if.else48, %if.else46, %if.then45
  call fastcc void @btc8723b2ant_sw_mechanism(ptr noundef %btcoexist, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_bw) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8723b2ant_action_hid_a2dp(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %low_pwr_disable.i = alloca i8, align 1
  %h2c_parameter.i.i207 = alloca [1 x i8], align 1
  %h2c_parameter.i.i200 = alloca [1 x i8], align 1
  %h2c_parameter.i.i193 = alloca [1 x i8], align 1
  %h2c_parameter.i.i186 = alloca [1 x i8], align 1
  %h2c_parameter.i.i179 = alloca [1 x i8], align 1
  %h2c_parameter.i.i = alloca [1 x i8], align 1
  %reject_rx_agg.i = alloca i8, align 1
  %bt_ctrl_rx_agg_size.i = alloca i8, align 1
  %rx_agg_size.i = alloca i8, align 1
  %wifi_rssi.i161 = alloca i32, align 4
  %wifi_rssi.i = alloca i32, align 4
  %wifi_bw = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_bw) #4
  %0 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wifi_bw, align 4, !annotation !466
  %1 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 47), align 2
  %sub = sub i8 42, %1
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %2 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %4 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wifi_rssi.i, align 4
  %btc_get.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %5 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %btc_get.i, align 4
  %call.i = call zeroext i1 %6(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi.i) #4
  %7 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 15, i32 0), align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.287)
  switch i8 %7, label %if.else19.i [
    i8 2, label %entry.if.then14.i_crit_edge
    i8 5, label %entry.if.then14.i_crit_edge216
  ]

entry.if.then14.i_crit_edge216:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

entry.if.then14.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

if.then14.i:                                      ; preds = %entry.if.then14.i_crit_edge, %entry.if.then14.i_crit_edge216
  %9 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %10)
  %cmp16.not.i = icmp slt i32 %10, 17
  %.str.115..str.114.i = select i1 %cmp16.not.i, ptr @.str.115, ptr @.str.114
  %..i = select i1 %cmp16.not.i, i8 5, i8 0
  br label %btc8723b2ant_wifi_rssi_state.exit

if.else19.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %12)
  %cmp21.i = icmp slt i32 %12, 15
  %.str.116..str.117.i = select i1 %cmp21.i, ptr @.str.116, ptr @.str.117
  %.1.i = select i1 %cmp21.i, i8 2, i8 3
  br label %btc8723b2ant_wifi_rssi_state.exit

btc8723b2ant_wifi_rssi_state.exit:                ; preds = %if.else19.i, %if.then14.i
  %.str.115.sink.i = phi ptr [ %.str.115..str.114.i, %if.then14.i ], [ %.str.116..str.117.i, %if.else19.i ]
  %wifi_rssi_state.0.i = phi i8 [ %..i, %if.then14.i ], [ %.1.i, %if.else19.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %3, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.115.sink.i) #4
  store i8 %wifi_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 15, i32 0), align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %13 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_rssi.i161) #4
  %15 = ptrtoint ptr %wifi_rssi.i161 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %wifi_rssi.i161, align 4
  %16 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %btc_get.i, align 4
  %call.i164 = call zeroext i1 %17(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi.i161) #4
  %18 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 15, i32 1), align 4
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.288)
  switch i8 %18, label %if.else19.i172 [
    i8 2, label %btc8723b2ant_wifi_rssi_state.exit.if.then14.i168_crit_edge
    i8 5, label %btc8723b2ant_wifi_rssi_state.exit.if.then14.i168_crit_edge217
  ]

btc8723b2ant_wifi_rssi_state.exit.if.then14.i168_crit_edge217: ; preds = %btc8723b2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i168

btc8723b2ant_wifi_rssi_state.exit.if.then14.i168_crit_edge: ; preds = %btc8723b2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i168

if.then14.i168:                                   ; preds = %btc8723b2ant_wifi_rssi_state.exit.if.then14.i168_crit_edge, %btc8723b2ant_wifi_rssi_state.exit.if.then14.i168_crit_edge217
  %20 = ptrtoint ptr %wifi_rssi.i161 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %wifi_rssi.i161, align 4
  %conv15.i = zext i8 %sub to i32
  %add.i = add nuw nsw i32 %conv15.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %add.i)
  %cmp16.not.i165 = icmp slt i32 %21, %add.i
  %.str.115..str.114.i166 = select i1 %cmp16.not.i165, ptr @.str.115, ptr @.str.114
  %..i167 = select i1 %cmp16.not.i165, i8 5, i8 0
  br label %btc8723b2ant_wifi_rssi_state.exit175

if.else19.i172:                                   ; preds = %btc8723b2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %wifi_rssi.i161 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %wifi_rssi.i161, align 4
  %conv20.i = zext i8 %sub to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv20.i)
  %cmp21.i169 = icmp slt i32 %23, %conv20.i
  %.str.116..str.117.i170 = select i1 %cmp21.i169, ptr @.str.116, ptr @.str.117
  %.1.i171 = select i1 %cmp21.i169, i8 2, i8 3
  br label %btc8723b2ant_wifi_rssi_state.exit175

btc8723b2ant_wifi_rssi_state.exit175:             ; preds = %if.else19.i172, %if.then14.i168
  %.str.115.sink.i173 = phi ptr [ %.str.115..str.114.i166, %if.then14.i168 ], [ %.str.116..str.117.i170, %if.else19.i172 ]
  %wifi_rssi_state.0.i174 = phi i8 [ %..i167, %if.then14.i168 ], [ %.1.i171, %if.else19.i172 ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %14, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.115.sink.i173) #4
  store i8 %wifi_rssi_state.0.i174, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 15, i32 1), align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i161) #4
  %24 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 47), align 2
  %sub5 = sub i8 46, %24
  %25 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter.i, align 4
  %27 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 12), align 4
  %conv.i = zext i8 %27 to i32
  %conv30.i = zext i8 %sub5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 37, i8 %sub5)
  %cmp32.i = icmp ugt i8 %sub5, 37
  br i1 %cmp32.i, label %if.then34.i, label %if.end36.i

if.then34.i:                                      ; preds = %btc8723b2ant_wifi_rssi_state.exit175
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %26, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.125) #4
  %28 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 14), align 2
  br label %btc8723b2ant_bt_rssi_state.exit

if.end36.i:                                       ; preds = %btc8723b2ant_wifi_rssi_state.exit175
  %29 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 14), align 2
  %30 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.289)
  switch i8 %29, label %if.else78.i [
    i8 2, label %if.end36.i.if.then46.i_crit_edge
    i8 5, label %if.end36.i.if.then46.i_crit_edge218
    i8 1, label %if.end36.i.if.then64.i_crit_edge
    i8 4, label %if.end36.i.if.then64.i_crit_edge219
  ]

if.end36.i.if.then64.i_crit_edge219:              ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then64.i

if.end36.i.if.then64.i_crit_edge:                 ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then64.i

if.end36.i.if.then46.i_crit_edge218:              ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then46.i

if.end36.i.if.then46.i_crit_edge:                 ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then46.i

if.then46.i:                                      ; preds = %if.end36.i.if.then46.i_crit_edge, %if.end36.i.if.then46.i_crit_edge218
  %add48.i = add nuw nsw i32 %conv30.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add48.i, i32 %conv.i)
  %cmp49.not.i = icmp ugt i32 %add48.i, %conv.i
  %.str.122..str.126.i = select i1 %cmp49.not.i, ptr @.str.122, ptr @.str.126
  %.117.i = select i1 %cmp49.not.i, i8 5, i8 1
  br label %if.end88.i

if.then64.i:                                      ; preds = %if.end36.i.if.then64.i_crit_edge, %if.end36.i.if.then64.i_crit_edge219
  call void @__sanitizer_cov_trace_const_cmp1(i8 39, i8 %27)
  %cmp67.not.i = icmp ult i8 %27, 39
  br i1 %cmp67.not.i, label %if.else70.i, label %if.then64.i.if.end88.i_crit_edge

if.then64.i.if.end88.i_crit_edge:                 ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end88.i

if.else70.i:                                      ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %sub5)
  %cmp72.i = icmp ult i8 %27, %sub5
  %.str.123..str.127.i = select i1 %cmp72.i, ptr @.str.123, ptr @.str.127
  %.118.i = select i1 %cmp72.i, i8 2, i8 4
  br label %if.end88.i

if.else78.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 37, i8 %27)
  %cmp80.i = icmp ult i8 %27, 37
  %.str.126..str.124.i = select i1 %cmp80.i, ptr @.str.126, ptr @.str.124
  %.119.i = select i1 %cmp80.i, i8 1, i8 3
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.else78.i, %if.else70.i, %if.then64.i.if.end88.i_crit_edge, %if.then46.i
  %.str.123.sink.i = phi ptr [ %.str.122..str.126.i, %if.then46.i ], [ @.str.121, %if.then64.i.if.end88.i_crit_edge ], [ %.str.123..str.127.i, %if.else70.i ], [ %.str.126..str.124.i, %if.else78.i ]
  %bt_rssi_state.0.i = phi i8 [ %.117.i, %if.then46.i ], [ 0, %if.then64.i.if.end88.i_crit_edge ], [ %.118.i, %if.else70.i ], [ %.119.i, %if.else78.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %26, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.123.sink.i) #4
  store i8 %bt_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 14), align 2
  br label %btc8723b2ant_bt_rssi_state.exit

btc8723b2ant_bt_rssi_state.exit:                  ; preds = %if.end88.i, %if.then34.i
  %retval.0.i = phi i8 [ %bt_rssi_state.0.i, %if.end88.i ], [ %28, %if.then34.i ]
  %btc_set_rf_reg = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 27
  %31 = ptrtoint ptr %btc_set_rf_reg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %btc_set_rf_reg, align 4
  call void %32(ptr noundef %btcoexist, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 1048575, i32 noundef 0) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  %33 = ptrtoint ptr %reject_rx_agg.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %reject_rx_agg.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  %34 = ptrtoint ptr %bt_ctrl_rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %bt_ctrl_rx_agg_size.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  %35 = ptrtoint ptr %rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 5, ptr %rx_agg_size.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %36 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %btc_set.i, align 4
  %call.i177 = call zeroext i1 %37(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %reject_rx_agg.i) #4
  %38 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %btc_set.i, align 4
  %call7.i = call zeroext i1 %39(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %bt_ctrl_rx_agg_size.i) #4
  %40 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %btc_set.i, align 4
  %call9.i = call zeroext i1 %41(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %rx_agg_size.i) #4
  %42 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %btc_set.i, align 4
  %call11.i = call zeroext i1 %43(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  call fastcc void @btc8723b2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 6)
  %44 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %btc_get.i, align 4
  %call8 = call zeroext i1 %45(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef nonnull %wifi_bw) #4
  %46 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %wifi_bw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp = icmp eq i32 %47, 0
  br i1 %cmp, label %if.then, label %if.else29

if.then:                                          ; preds = %btc8723b2ant_bt_rssi_state.exit
  %48 = zext i8 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.290)
  switch i8 %retval.0.i, label %if.else27 [
    i8 0, label %if.then.if.then16_crit_edge
    i8 3, label %if.then.if.then16_crit_edge220
    i8 1, label %if.then.if.then26_crit_edge
    i8 4, label %if.then.if.then26_crit_edge221
  ]

if.then.if.then26_crit_edge221:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then26

if.then.if.then26_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then26

if.then.if.then16_crit_edge220:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then16

if.then.if.then16_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then16

if.then16:                                        ; preds = %if.then.if.then16_crit_edge, %if.then.if.then16_crit_edge220
  %49 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %adapter.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %50, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef 2) #4
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1
  %51 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %52 = zext i8 %51 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %50, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.134, i32 noundef %52, i32 noundef 1) #4
  %53 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %54 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1, !range !465
  call void @__sanitizer_cov_trace_cmp1(i8 %53, i8 %54)
  %cmp.i = icmp eq i8 %53, %54
  br i1 %cmp.i, label %if.then16.if.end60_crit_edge, label %if.end16.i

if.then16.if.end60_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60

if.end16.i:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  %55 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  %57 = ptrtoint ptr %h2c_parameter.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %54, ptr %h2c_parameter.i.i, align 1
  %conv.i.i = zext i8 %54 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %56, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.135, i32 noundef %conv.i.i) #4
  %btc_fill_h2c.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %58 = ptrtoint ptr %btc_fill_h2c.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %btc_fill_h2c.i.i, align 4
  call void %59(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  br label %if.end60.sink.split

if.then26:                                        ; preds = %if.then.if.then26_crit_edge, %if.then.if.then26_crit_edge221
  %60 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %adapter.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %61, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef 2) #4
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1
  %62 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %63 = zext i8 %62 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %61, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.134, i32 noundef %63, i32 noundef 1) #4
  %64 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %65 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1, !range !465
  call void @__sanitizer_cov_trace_cmp1(i8 %64, i8 %65)
  %cmp.i181 = icmp eq i8 %64, %65
  br i1 %cmp.i181, label %if.then26.if.end60_crit_edge, label %if.end16.i184

if.then26.if.end60_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60

if.end16.i184:                                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  %66 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i179) #4
  %68 = ptrtoint ptr %h2c_parameter.i.i179 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %65, ptr %h2c_parameter.i.i179, align 1
  %conv.i.i182 = zext i8 %65 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %67, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.135, i32 noundef %conv.i.i182) #4
  %btc_fill_h2c.i.i183 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %69 = ptrtoint ptr %btc_fill_h2c.i.i183 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %btc_fill_h2c.i.i183, align 4
  call void %70(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i179) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i179) #4
  br label %if.end60.sink.split

if.else27:                                        ; preds = %if.then
  %71 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %adapter.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %72, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef 0) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1
  %73 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %74 = zext i8 %73 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %72, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.134, i32 noundef %74, i32 noundef 0) #4
  %75 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %76 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1, !range !465
  call void @__sanitizer_cov_trace_cmp1(i8 %75, i8 %76)
  %cmp.i188 = icmp eq i8 %75, %76
  br i1 %cmp.i188, label %if.else27.if.end60_crit_edge, label %if.end16.i191

if.else27.if.end60_crit_edge:                     ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60

if.end16.i191:                                    ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #6
  %77 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i186) #4
  %79 = ptrtoint ptr %h2c_parameter.i.i186 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %76, ptr %h2c_parameter.i.i186, align 1
  %conv.i.i189 = zext i8 %76 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %78, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.135, i32 noundef %conv.i.i189) #4
  %btc_fill_h2c.i.i190 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %80 = ptrtoint ptr %btc_fill_h2c.i.i190 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %btc_fill_h2c.i.i190, align 4
  call void %81(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i186) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i186) #4
  br label %if.end60.sink.split

if.else29:                                        ; preds = %btc8723b2ant_bt_rssi_state.exit
  %82 = zext i8 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.291)
  switch i8 %retval.0.i, label %if.else57 [
    i8 0, label %if.else29.if.then43_crit_edge
    i8 3, label %if.else29.if.then43_crit_edge222
    i8 1, label %if.else29.if.then56_crit_edge
    i8 4, label %if.else29.if.then56_crit_edge223
  ]

if.else29.if.then56_crit_edge223:                 ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then56

if.else29.if.then56_crit_edge:                    ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then56

if.else29.if.then43_crit_edge222:                 ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then43

if.else29.if.then43_crit_edge:                    ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then43

if.then43:                                        ; preds = %if.else29.if.then43_crit_edge, %if.else29.if.then43_crit_edge222
  %83 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %adapter.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %84, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef 4) #4
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1
  %85 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %86 = zext i8 %85 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %84, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.134, i32 noundef %86, i32 noundef 1) #4
  %87 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %88 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1, !range !465
  call void @__sanitizer_cov_trace_cmp1(i8 %87, i8 %88)
  %cmp.i195 = icmp eq i8 %87, %88
  br i1 %cmp.i195, label %if.then43.if.end60_crit_edge, label %if.end16.i198

if.then43.if.end60_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60

if.end16.i198:                                    ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #6
  %89 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i193) #4
  %91 = ptrtoint ptr %h2c_parameter.i.i193 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %88, ptr %h2c_parameter.i.i193, align 1
  %conv.i.i196 = zext i8 %88 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %90, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.135, i32 noundef %conv.i.i196) #4
  %btc_fill_h2c.i.i197 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %92 = ptrtoint ptr %btc_fill_h2c.i.i197 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %btc_fill_h2c.i.i197, align 4
  call void %93(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i193) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i193) #4
  br label %if.end60.sink.split

if.then56:                                        ; preds = %if.else29.if.then56_crit_edge, %if.else29.if.then56_crit_edge223
  %94 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %adapter.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %95, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef 2) #4
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1
  %96 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %97 = zext i8 %96 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %95, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.134, i32 noundef %97, i32 noundef 1) #4
  %98 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %99 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1, !range !465
  call void @__sanitizer_cov_trace_cmp1(i8 %98, i8 %99)
  %cmp.i202 = icmp eq i8 %98, %99
  br i1 %cmp.i202, label %if.then56.if.end60_crit_edge, label %if.end16.i205

if.then56.if.end60_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60

if.end16.i205:                                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #6
  %100 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i200) #4
  %102 = ptrtoint ptr %h2c_parameter.i.i200 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %99, ptr %h2c_parameter.i.i200, align 1
  %conv.i.i203 = zext i8 %99 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %101, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.135, i32 noundef %conv.i.i203) #4
  %btc_fill_h2c.i.i204 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %103 = ptrtoint ptr %btc_fill_h2c.i.i204 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %btc_fill_h2c.i.i204, align 4
  call void %104(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i200) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i200) #4
  br label %if.end60.sink.split

if.else57:                                        ; preds = %if.else29
  %105 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %adapter.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %106, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef 0) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1
  %107 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %108 = zext i8 %107 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %106, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.134, i32 noundef %108, i32 noundef 0) #4
  %109 = load i8, ptr @glcoex_dm_8723b_2ant, align 4, !range !465
  %110 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1, !range !465
  call void @__sanitizer_cov_trace_cmp1(i8 %109, i8 %110)
  %cmp.i209 = icmp eq i8 %109, %110
  br i1 %cmp.i209, label %if.else57.if.end60_crit_edge, label %if.end16.i212

if.else57.if.end60_crit_edge:                     ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60

if.end16.i212:                                    ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #6
  %111 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i207) #4
  %113 = ptrtoint ptr %h2c_parameter.i.i207 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %110, ptr %h2c_parameter.i.i207, align 1
  %conv.i.i210 = zext i8 %110 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %112, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.135, i32 noundef %conv.i.i210) #4
  %btc_fill_h2c.i.i211 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %114 = ptrtoint ptr %btc_fill_h2c.i.i211 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %btc_fill_h2c.i.i211, align 4
  call void %115(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i207) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i207) #4
  br label %if.end60.sink.split

if.end60.sink.split:                              ; preds = %if.end16.i212, %if.end16.i205, %if.end16.i198, %if.end16.i191, %if.end16.i184, %if.end16.i
  %116 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 1), align 1, !range !465
  store i8 %116, ptr @glcoex_dm_8723b_2ant, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.end60.sink.split, %if.else57.if.end60_crit_edge, %if.then56.if.end60_crit_edge, %if.then43.if.end60_crit_edge, %if.else27.if.end60_crit_edge, %if.then26.if.end60_crit_edge, %if.then16.if.end60_crit_edge
  %trunc = trunc i8 %wifi_rssi_state.0.i174 to i3
  %117 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %117, ptr @__sancov_gen_cov_switch_values.292)
  switch i3 %trunc, label %if.end60.if.else80_crit_edge [
    i3 0, label %if.end60.land.lhs.true_crit_edge
    i3 3, label %if.end60.land.lhs.true_crit_edge224
  ]

if.end60.land.lhs.true_crit_edge224:              ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

if.end60.land.lhs.true_crit_edge:                 ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

if.end60.if.else80_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else80

land.lhs.true:                                    ; preds = %if.end60.land.lhs.true_crit_edge, %if.end60.land.lhs.true_crit_edge224
  %118 = zext i8 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %118, ptr @__sancov_gen_cov_switch_values.293)
  switch i8 %retval.0.i, label %land.lhs.true.if.else80_crit_edge [
    i8 0, label %land.lhs.true.if.then79_crit_edge
    i8 3, label %land.lhs.true.if.then79_crit_edge225
  ]

land.lhs.true.if.then79_crit_edge225:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then79

land.lhs.true.if.then79_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then79

land.lhs.true.if.else80_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else80

if.then79:                                        ; preds = %land.lhs.true.if.then79_crit_edge, %land.lhs.true.if.then79_crit_edge225
  call fastcc void @btc8723b2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1440568797, i32 noundef 1524259546) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  %119 = ptrtoint ptr %low_pwr_disable.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 0, ptr %low_pwr_disable.i, align 1
  %120 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %btc_set.i, align 4
  %call5.i = call zeroext i1 %121(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i) #4
  %122 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %btc_set.i, align 4
  %call7.i215 = call zeroext i1 %123(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 33), align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  br label %if.end81

if.else80:                                        ; preds = %land.lhs.true.if.else80_crit_edge, %if.end60.if.else80_crit_edge
  call fastcc void @btc8723b2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1610571775, i32 noundef 1524259546) #4
  call fastcc void @btc8723b2ant_power_save_state(ptr noundef %btcoexist, i8 noundef zeroext 1, i8 noundef zeroext 80, i8 noundef zeroext 4)
  br label %if.end81

if.end81:                                         ; preds = %if.else80, %if.then79
  %124 = zext i8 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %124, ptr @__sancov_gen_cov_switch_values.294)
  switch i8 %retval.0.i, label %if.else98 [
    i8 0, label %if.end81.if.end106_crit_edge
    i8 3, label %if.end81.if.end106_crit_edge226
  ]

if.end81.if.end106_crit_edge226:                  ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end106

if.end81.if.end106_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end106

if.else98:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8723b2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 18)
  %btc_write_1byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %125 = ptrtoint ptr %btc_write_1byte to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %btc_write_1byte, align 4
  call void %126(ptr noundef %btcoexist, i32 noundef 1110, i32 noundef 56) #4
  %btc_write_2byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 21
  %127 = ptrtoint ptr %btc_write_2byte to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %btc_write_2byte, align 4
  call void %128(ptr noundef %btcoexist, i32 noundef 1066, i16 noundef zeroext 2056) #4
  %btc_write_4byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 23
  %129 = ptrtoint ptr %btc_write_4byte to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %btc_write_4byte, align 4
  call void %130(ptr noundef %btcoexist, i32 noundef 1072, i32 noundef 0) #4
  %131 = ptrtoint ptr %btc_write_4byte to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %btc_write_4byte, align 4
  call void %132(ptr noundef %btcoexist, i32 noundef 1076, i32 noundef 16842752) #4
  br label %if.end106

if.end106:                                        ; preds = %if.else98, %if.end81.if.end106_crit_edge, %if.end81.if.end106_crit_edge226
  %.sink = phi i1 [ true, %if.else98 ], [ false, %if.end81.if.end106_crit_edge ], [ false, %if.end81.if.end106_crit_edge226 ]
  call fastcc void @btc8723b2ant_tdma_duration_adjust(ptr noundef %btcoexist, i1 noundef zeroext true, i1 noundef zeroext %.sink, i8 noundef zeroext 1)
  call fastcc void @btc8723b2ant_sw_mechanism(ptr noundef %btcoexist, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_bw) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8723b2ant_dac_swing(ptr noundef %btcoexist, i32 noundef %dac_swing_lvl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.203, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.110, i32 noundef %dac_swing_lvl) #4
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 23), align 4
  store i32 %dac_swing_lvl, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 24), align 4
  %2 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 21), align 2, !range !465
  %3 = zext i8 %2 to i32
  %4 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 22), align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.204, i32 noundef %3, i32 noundef %4, i32 noundef 1, i32 noundef %dac_swing_lvl) #4
  %5 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 21), align 2, !range !465
  %6 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 23), align 4, !range !465
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %6)
  %cmp = icmp eq i8 %5, %6
  br i1 %cmp, label %land.lhs.true, label %entry.if.end24_crit_edge

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

land.lhs.true:                                    ; preds = %entry
  %7 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 22), align 4
  %8 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 24), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %8)
  %cmp21 = icmp eq i32 %7, %8
  br i1 %cmp21, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end24_crit_edge

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end24:                                         ; preds = %land.lhs.true.if.end24_crit_edge, %entry.if.end24_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #4
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
  %39 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %adapter, align 4
  %conv.i.i = trunc i32 %dac_swing_lvl to i8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %40, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.205, i32 noundef %dac_swing_lvl) #4
  %btc_write_1byte_bitmask.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 19
  %41 = ptrtoint ptr %btc_write_1byte_bitmask.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %btc_write_1byte_bitmask.i.i, align 4
  tail call void %42(ptr noundef %btcoexist, i32 noundef 2179, i32 noundef 62, i8 noundef zeroext %conv.i.i) #4
  %43 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 23), align 4, !range !465
  store i8 %43, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 21), align 2
  %44 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 24), align 4
  store i32 %44, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 22), align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8723b2ant_tdma_duration_adjust(ptr noundef %btcoexist, i1 noundef zeroext %sco_hid, i1 noundef zeroext %tx_pause, i8 noundef zeroext %max_interval) unnamed_addr #0 align 64 {
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.206) #4
  %2 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 11), align 1, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.then, label %if.else98

if.then:                                          ; preds = %entry
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 11), align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.207) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %max_interval)
  %switch.selectcmp = icmp eq i8 %max_interval, 2
  br i1 %sco_hid, label %if.then4, label %if.else48

if.then4:                                         ; preds = %if.then
  br i1 %tx_pause, label %if.then6, label %if.else24

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  %switch.select = select i1 %switch.selectcmp, i8 14, i8 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %max_interval)
  %switch.selectcmp1457 = icmp eq i8 %max_interval, 1
  %switch.select1458 = select i1 %switch.selectcmp1457, i8 13, i8 %switch.select
  br label %if.end97

if.else24:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  %switch.select1460 = select i1 %switch.selectcmp, i8 10, i8 11
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %max_interval)
  %switch.selectcmp1461 = icmp eq i8 %max_interval, 1
  %switch.select1462 = select i1 %switch.selectcmp1461, i8 9, i8 %switch.select1460
  br label %if.end97

if.else48:                                        ; preds = %if.then
  br i1 %tx_pause, label %if.then50, label %if.else73

if.then50:                                        ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #6
  %switch.select1464 = select i1 %switch.selectcmp, i8 6, i8 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %max_interval)
  %switch.selectcmp1465 = icmp eq i8 %max_interval, 1
  %switch.select1466 = select i1 %switch.selectcmp1465, i8 5, i8 %switch.select1464
  br label %if.end97

if.else73:                                        ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #6
  %switch.select1468 = select i1 %switch.selectcmp, i8 2, i8 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %max_interval)
  %switch.selectcmp1469 = icmp eq i8 %max_interval, 1
  %switch.select1470 = select i1 %switch.selectcmp1469, i8 1, i8 %switch.select1468
  br label %if.end97

if.end97:                                         ; preds = %if.else73, %if.then50, %if.else24, %if.then6
  %.sink1432 = phi i8 [ %switch.select1458, %if.then6 ], [ %switch.select1462, %if.else24 ], [ %switch.select1466, %if.then50 ], [ %switch.select1470, %if.else73 ]
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext %.sink1432)
  store i8 %.sink1432, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  store i32 0, ptr @btc8723b2ant_tdma_duration_adjust.up, align 4
  store i32 0, ptr @btc8723b2ant_tdma_duration_adjust.dn, align 4
  store i32 1, ptr @btc8723b2ant_tdma_duration_adjust.m, align 4
  store i32 3, ptr @btc8723b2ant_tdma_duration_adjust.n, align 4
  store i32 0, ptr @btc8723b2ant_tdma_duration_adjust.wait_count, align 4
  %.pre = zext i8 %max_interval to i32
  br label %if.end1202

if.else98:                                        ; preds = %entry
  %3 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 21), align 2
  %4 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 10), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1050, i32 %4)
  %cmp99 = icmp ugt i32 %4, 1050
  br i1 %cmp99, label %if.else98.if.then103_crit_edge, label %lor.lhs.false

if.else98.if.then103_crit_edge:                   ; preds = %if.else98
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then103

lor.lhs.false:                                    ; preds = %if.else98
  %5 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8723b_2ant, ptr @glcoex_sta_8723b_2ant, i32 0, i32 11), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1250, i32 %5)
  %cmp101 = icmp ugt i32 %5, 1250
  br i1 %cmp101, label %lor.lhs.false.if.then103_crit_edge, label %lor.lhs.false.if.end104_crit_edge

lor.lhs.false.if.end104_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end104

lor.lhs.false.if.then103_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then103

if.then103:                                       ; preds = %lor.lhs.false.if.then103_crit_edge, %if.else98.if.then103_crit_edge
  %inc = add i8 %3, 1
  br label %if.end104

if.end104:                                        ; preds = %if.then103, %lor.lhs.false.if.end104_crit_edge
  %retry_count.0 = phi i8 [ %inc, %if.then103 ], [ %3, %lor.lhs.false.if.end104_crit_edge ]
  %conv105 = zext i8 %retry_count.0 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.208, i32 noundef %conv105) #4
  %6 = load i32, ptr @btc8723b2ant_tdma_duration_adjust.up, align 4
  %7 = load i32, ptr @btc8723b2ant_tdma_duration_adjust.dn, align 4
  %8 = load i32, ptr @btc8723b2ant_tdma_duration_adjust.m, align 4
  %9 = load i32, ptr @btc8723b2ant_tdma_duration_adjust.n, align 4
  %10 = load i32, ptr @btc8723b2ant_tdma_duration_adjust.wait_count, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.209, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) #4
  %11 = load i32, ptr @btc8723b2ant_tdma_duration_adjust.wait_count, align 4
  %inc106 = add i32 %11, 1
  store i32 %inc106, ptr @btc8723b2ant_tdma_duration_adjust.wait_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retry_count.0)
  %cmp108 = icmp eq i8 %retry_count.0, 0
  br i1 %cmp108, label %if.then110, label %if.else120

if.then110:                                       ; preds = %if.end104
  %12 = load i32, ptr @btc8723b2ant_tdma_duration_adjust.up, align 4
  %inc111 = add i32 %12, 1
  store i32 %inc111, ptr @btc8723b2ant_tdma_duration_adjust.up, align 4
  %13 = load i32, ptr @btc8723b2ant_tdma_duration_adjust.dn, align 4
  %dec = add i32 %13, -1
  %14 = tail call i32 @llvm.smax.i32(i32 %dec, i32 0)
  store i32 %14, ptr @btc8723b2ant_tdma_duration_adjust.dn, align 4
  %15 = load i32, ptr @btc8723b2ant_tdma_duration_adjust.n, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc111, i32 %15)
  %cmp116.not = icmp slt i32 %inc111, %15
  br i1 %cmp116.not, label %if.then110.if.end158_crit_edge, label %if.then118

if.then110.if.end158_crit_edge:                   ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end158

if.then118:                                       ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #6
  store i32 0, ptr @btc8723b2ant_tdma_duration_adjust.wait_count, align 4
  store i32 3, ptr @btc8723b2ant_tdma_duration_adjust.n, align 4
  br label %if.end158.sink.split

if.else120:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %retry_count.0)
  %cmp122 = icmp ult i8 %retry_count.0, 4
  br i1 %cmp122, label %if.then124, label %if.else145

if.then124:                                       ; preds = %if.else120
  %16 = load i32, ptr @btc8723b2ant_tdma_duration_adjust.up, align 4
  %dec125 = add i32 %16, -1
  store i32 %dec125, ptr @btc8723b2ant_tdma_duration_adjust.up, align 4
  %17 = load i32, ptr @btc8723b2ant_tdma_duration_adjust.dn, align 4
  %inc126 = add i32 %17, 1
  store i32 %inc126, ptr @btc8723b2ant_tdma_duration_adjust.dn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec125)
  %cmp127 = icmp slt i32 %dec125, 1
  br i1 %cmp127, label %if.then129, label %if.then124.if.end130_crit_edge

if.then124.if.end130_crit_edge:                   ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end130

if.then129:                                       ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #6
  store i32 0, ptr @btc8723b2ant_tdma_duration_adjust.up, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.then129, %if.then124.if.end130_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc126)
  %cmp131 = icmp eq i32 %inc126, 2
  br i1 %cmp131, label %if.then133, label %if.end130.if.end158_crit_edge

if.end130.if.end158_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end158

if.then133:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc106)
  %cmp134 = icmp slt i32 %inc106, 3
  br i1 %cmp134, label %if.end139, label %if.then133.if.end139.thread_crit_edge

if.then133.if.end139.thread_crit_edge:            ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end139.thread

if.end139:                                        ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #6
  %18 = load i32, ptr @btc8723b2ant_tdma_duration_adjust.m, align 4
  %inc137 = add i32 %18, 1
  %19 = tail call i32 @llvm.smin.i32(i32 %inc137, i32 20)
  br label %if.end139.thread

if.end139.thread:                                 ; preds = %if.end139, %if.then133.if.end139.thread_crit_edge
  %20 = phi i32 [ 1, %if.then133.if.end139.thread_crit_edge ], [ %19, %if.end139 ]
  store i32 %20, ptr @btc8723b2ant_tdma_duration_adjust.m, align 4
  %mul = mul i32 %20, 3
  store i32 %mul, ptr @btc8723b2ant_tdma_duration_adjust.n, align 4
  store i32 0, ptr @btc8723b2ant_tdma_duration_adjust.up, align 4
  br label %if.end158.sink.split

if.else145:                                       ; preds = %if.else120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp146 = icmp eq i32 %11, 0
  br i1 %cmp146, label %if.end151, label %if.else145.if.end151.thread_crit_edge

if.else145.if.end151.thread_crit_edge:            ; preds = %if.else145
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end151.thread

if.end151:                                        ; preds = %if.else145
  call void @__sanitizer_cov_trace_pc() #6
  %21 = load i32, ptr @btc8723b2ant_tdma_duration_adjust.m, align 4
  %inc149 = add i32 %21, 1
  %22 = tail call i32 @llvm.smin.i32(i32 %inc149, i32 20)
  br label %if.end151.thread

if.end151.thread:                                 ; preds = %if.end151, %if.else145.if.end151.thread_crit_edge
  %23 = phi i32 [ 1, %if.else145.if.end151.thread_crit_edge ], [ %22, %if.end151 ]
  store i32 %23, ptr @btc8723b2ant_tdma_duration_adjust.m, align 4
  %mul156 = mul i32 %23, 3
  store i32 %mul156, ptr @btc8723b2ant_tdma_duration_adjust.n, align 4
  store i32 0, ptr @btc8723b2ant_tdma_duration_adjust.up, align 4
  br label %if.end158.sink.split

if.end158.sink.split:                             ; preds = %if.end151.thread, %if.end139.thread, %if.then118
  %btc8723b2ant_tdma_duration_adjust.dn.sink = phi ptr [ @btc8723b2ant_tdma_duration_adjust.dn, %if.end151.thread ], [ @btc8723b2ant_tdma_duration_adjust.dn, %if.end139.thread ], [ @btc8723b2ant_tdma_duration_adjust.up, %if.then118 ]
  %btc8723b2ant_tdma_duration_adjust.wait_count.sink = phi ptr [ @btc8723b2ant_tdma_duration_adjust.wait_count, %if.end151.thread ], [ @btc8723b2ant_tdma_duration_adjust.wait_count, %if.end139.thread ], [ @btc8723b2ant_tdma_duration_adjust.dn, %if.then118 ]
  %.str.212.sink = phi ptr [ @.str.212, %if.end151.thread ], [ @.str.211, %if.end139.thread ], [ @.str.210, %if.then118 ]
  %24 = xor i1 %cmp108, true
  %25 = ptrtoint ptr %btc8723b2ant_tdma_duration_adjust.dn.sink to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %btc8723b2ant_tdma_duration_adjust.dn.sink, align 4
  %26 = ptrtoint ptr %btc8723b2ant_tdma_duration_adjust.wait_count.sink to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %btc8723b2ant_tdma_duration_adjust.wait_count.sink, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.212.sink) #4
  br label %if.end158

if.end158:                                        ; preds = %if.end158.sink.split, %if.end130.if.end158_crit_edge, %if.then110.if.end158_crit_edge
  %cmp1095 = phi i1 [ false, %if.end130.if.end158_crit_edge ], [ false, %if.then110.if.end158_crit_edge ], [ %24, %if.end158.sink.split ]
  %cmp1146 = phi i1 [ false, %if.end130.if.end158_crit_edge ], [ false, %if.then110.if.end158_crit_edge ], [ %cmp108, %if.end158.sink.split ]
  %conv159 = zext i8 %max_interval to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.213, i32 noundef %conv159) #4
  %27 = zext i8 %max_interval to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.295)
  switch i8 %max_interval, label %if.then864 [
    i8 1, label %if.then163
    i8 2, label %if.then525
  ]

if.then163:                                       ; preds = %if.end158
  %28 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 7), align 1
  br i1 %tx_pause, label %if.then165, label %if.else338

if.then165:                                       ; preds = %if.then163
  %29 = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.296)
  switch i8 %28, label %if.then165.if.end203_crit_edge [
    i8 71, label %if.then165.if.end203thread-pre-split_crit_edge
    i8 1, label %if.then165.if.end203thread-pre-split_crit_edge1524
    i8 2, label %if.then183
    i8 3, label %if.then190
    i8 4, label %if.then197
  ]

if.then165.if.end203thread-pre-split_crit_edge1524: ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end203thread-pre-split

if.then165.if.end203thread-pre-split_crit_edge:   ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end203thread-pre-split

if.then165.if.end203_crit_edge:                   ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end203

if.then183:                                       ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end203thread-pre-split

if.then190:                                       ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end203thread-pre-split

if.then197:                                       ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end203thread-pre-split

if.end203thread-pre-split:                        ; preds = %if.then197, %if.then190, %if.then183, %if.then165.if.end203thread-pre-split_crit_edge, %if.then165.if.end203thread-pre-split_crit_edge1524
  %.sink1434 = phi i8 [ 6, %if.then183 ], [ 8, %if.then197 ], [ 7, %if.then190 ], [ 5, %if.then165.if.end203thread-pre-split_crit_edge ], [ 5, %if.then165.if.end203thread-pre-split_crit_edge1524 ]
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext %.sink1434)
  store i8 %.sink1434, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  %.pr = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 7), align 1
  br label %if.end203

if.end203:                                        ; preds = %if.end203thread-pre-split, %if.then165.if.end203_crit_edge
  %30 = phi i8 [ %.pr, %if.end203thread-pre-split ], [ %28, %if.then165.if.end203_crit_edge ]
  %switch.tableidx = add i8 %30, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx)
  %31 = icmp ult i8 %switch.tableidx, 4
  br i1 %31, label %switch.lookup, label %if.end203.if.end234_crit_edge

if.end203.if.end234_crit_edge:                    ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end234

switch.lookup:                                    ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #6
  %switch.offset = add i8 %30, 4
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext %switch.offset)
  store i8 %switch.offset, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end234

if.end234:                                        ; preds = %switch.lookup, %if.end203.if.end234_crit_edge
  br i1 %cmp1095, label %if.then237, label %if.else285

if.then237:                                       ; preds = %if.end234
  %32 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 7), align 1
  %33 = zext i8 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.297)
  switch i8 %32, label %if.then237.if.end1202_crit_edge [
    i8 5, label %if.then242
    i8 6, label %if.then249
    i8 7, label %if.then256
    i8 13, label %if.then263
    i8 14, label %if.then270
    i8 15, label %if.then277
  ]

if.then237.if.end1202_crit_edge:                  ; preds = %if.then237
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1202

if.then242:                                       ; preds = %if.then237
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 6)
  store i8 6, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then249:                                       ; preds = %if.then237
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 7)
  store i8 7, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then256:                                       ; preds = %if.then237
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 8)
  store i8 8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then263:                                       ; preds = %if.then237
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 14)
  store i8 14, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then270:                                       ; preds = %if.then237
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 15)
  store i8 15, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then277:                                       ; preds = %if.then237
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 16)
  store i8 16, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.else285:                                       ; preds = %if.end234
  br i1 %cmp1146, label %if.then288, label %if.else285.if.end1202_crit_edge

if.else285.if.end1202_crit_edge:                  ; preds = %if.else285
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1202

if.then288:                                       ; preds = %if.else285
  %34 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 7), align 1
  %35 = zext i8 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.298)
  switch i8 %34, label %if.then288.if.end1202_crit_edge [
    i8 8, label %if.then293
    i8 7, label %if.then300
    i8 6, label %if.then307
    i8 16, label %if.then314
    i8 15, label %if.then321
    i8 14, label %if.then328
  ]

if.then288.if.end1202_crit_edge:                  ; preds = %if.then288
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1202

if.then293:                                       ; preds = %if.then288
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 7)
  store i8 7, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then300:                                       ; preds = %if.then288
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 6)
  store i8 6, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then307:                                       ; preds = %if.then288
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 5)
  store i8 5, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then314:                                       ; preds = %if.then288
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 15)
  store i8 15, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then321:                                       ; preds = %if.then288
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 14)
  store i8 14, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then328:                                       ; preds = %if.then288
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 13)
  store i8 13, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.else338:                                       ; preds = %if.then163
  %switch.tableidx1472 = add i8 %28, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx1472)
  %36 = icmp ult i8 %switch.tableidx1472, 4
  br i1 %36, label %switch.lookup1471, label %if.else338.if.end369_crit_edge

if.else338.if.end369_crit_edge:                   ; preds = %if.else338
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end369

switch.lookup1471:                                ; preds = %if.else338
  call void @__sanitizer_cov_trace_pc() #6
  %switch.cast = zext i8 %switch.tableidx1472 to i32
  %switch.shiftamt = shl nuw nsw i32 %switch.cast, 3
  %switch.downshift = lshr i32 67306055, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext %switch.masked)
  store i8 %switch.masked, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  %.pr1426 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 7), align 1
  br label %if.end369

if.end369:                                        ; preds = %switch.lookup1471, %if.else338.if.end369_crit_edge
  %37 = phi i8 [ %.pr1426, %switch.lookup1471 ], [ %28, %if.else338.if.end369_crit_edge ]
  %switch.tableidx1474 = add i8 %37, -13
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx1474)
  %38 = icmp ult i8 %switch.tableidx1474, 4
  br i1 %38, label %switch.lookup1473, label %if.end369.if.end400_crit_edge

if.end369.if.end400_crit_edge:                    ; preds = %if.end369
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end400

switch.lookup1473:                                ; preds = %if.end369
  call void @__sanitizer_cov_trace_pc() #6
  %switch.offset1475 = add i8 %37, -4
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext %switch.offset1475)
  store i8 %switch.offset1475, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end400

if.end400:                                        ; preds = %switch.lookup1473, %if.end369.if.end400_crit_edge
  br i1 %cmp1095, label %if.then403, label %if.else459

if.then403:                                       ; preds = %if.end400
  %39 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 7), align 1
  %40 = zext i8 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.299)
  switch i8 %39, label %if.then403.if.end1202_crit_edge [
    i8 71, label %if.then408
    i8 1, label %if.then415
    i8 2, label %if.then422
    i8 3, label %if.then429
    i8 9, label %if.then436
    i8 10, label %if.then443
    i8 11, label %if.then450
  ]

if.then403.if.end1202_crit_edge:                  ; preds = %if.then403
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1202

if.then408:                                       ; preds = %if.then403
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 1)
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then415:                                       ; preds = %if.then403
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 2)
  store i8 2, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then422:                                       ; preds = %if.then403
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 3)
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then429:                                       ; preds = %if.then403
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 4)
  store i8 4, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then436:                                       ; preds = %if.then403
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 10)
  store i8 10, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then443:                                       ; preds = %if.then403
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 11)
  store i8 11, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then450:                                       ; preds = %if.then403
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 12)
  store i8 12, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.else459:                                       ; preds = %if.end400
  br i1 %cmp1146, label %if.then462, label %if.else459.if.end1202_crit_edge

if.else459.if.end1202_crit_edge:                  ; preds = %if.else459
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1202

if.then462:                                       ; preds = %if.else459
  %41 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 7), align 1
  %42 = zext i8 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.300)
  switch i8 %41, label %if.then462.if.end1202_crit_edge [
    i8 4, label %if.then467
    i8 3, label %if.then474
    i8 2, label %if.then481
    i8 1, label %if.then488
    i8 12, label %if.then495
    i8 11, label %if.then502
    i8 10, label %if.then509
  ]

if.then462.if.end1202_crit_edge:                  ; preds = %if.then462
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1202

if.then467:                                       ; preds = %if.then462
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 3)
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then474:                                       ; preds = %if.then462
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 2)
  store i8 2, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then481:                                       ; preds = %if.then462
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 1)
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then488:                                       ; preds = %if.then462
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 71)
  store i8 71, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then495:                                       ; preds = %if.then462
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 11)
  store i8 11, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then502:                                       ; preds = %if.then462
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 10)
  store i8 10, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then509:                                       ; preds = %if.then462
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 9)
  store i8 9, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then525:                                       ; preds = %if.end158
  %43 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 7), align 1
  br i1 %tx_pause, label %if.then527, label %if.else693

if.then527:                                       ; preds = %if.then525
  %switch.tableidx1477 = add i8 %43, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx1477)
  %44 = icmp ult i8 %switch.tableidx1477, 4
  br i1 %44, label %switch.lookup1476, label %if.then527.if.end558_crit_edge

if.then527.if.end558_crit_edge:                   ; preds = %if.then527
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end558

switch.lookup1476:                                ; preds = %if.then527
  call void @__sanitizer_cov_trace_pc() #6
  %switch.cast1478 = zext i8 %switch.tableidx1477 to i32
  %switch.shiftamt1479 = shl nuw nsw i32 %switch.cast1478, 3
  %switch.downshift1480 = lshr i32 134678022, %switch.shiftamt1479
  %switch.masked1481 = trunc i32 %switch.downshift1480 to i8
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext %switch.masked1481)
  store i8 %switch.masked1481, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  %.pr1427 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 7), align 1
  br label %if.end558

if.end558:                                        ; preds = %switch.lookup1476, %if.then527.if.end558_crit_edge
  %45 = phi i8 [ %.pr1427, %switch.lookup1476 ], [ %43, %if.then527.if.end558_crit_edge ]
  %switch.tableidx1483 = add i8 %45, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx1483)
  %46 = icmp ult i8 %switch.tableidx1483, 4
  br i1 %46, label %switch.lookup1482, label %if.end558.if.end589_crit_edge

if.end558.if.end589_crit_edge:                    ; preds = %if.end558
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end589

switch.lookup1482:                                ; preds = %if.end558
  call void @__sanitizer_cov_trace_pc() #6
  %switch.cast1484 = zext i8 %switch.tableidx1483 to i32
  %switch.shiftamt1485 = shl nuw nsw i32 %switch.cast1484, 3
  %switch.downshift1486 = lshr i32 269422094, %switch.shiftamt1485
  %switch.masked1487 = trunc i32 %switch.downshift1486 to i8
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext %switch.masked1487)
  store i8 %switch.masked1487, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end589

if.end589:                                        ; preds = %switch.lookup1482, %if.end558.if.end589_crit_edge
  br i1 %cmp1095, label %if.then592, label %if.else640

if.then592:                                       ; preds = %if.end589
  %47 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 7), align 1
  %48 = zext i8 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.301)
  switch i8 %47, label %if.then592.if.end1202_crit_edge [
    i8 5, label %if.then597
    i8 6, label %if.then604
    i8 7, label %if.then611
    i8 13, label %if.then618
    i8 14, label %if.then625
    i8 15, label %if.then632
  ]

if.then592.if.end1202_crit_edge:                  ; preds = %if.then592
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1202

if.then597:                                       ; preds = %if.then592
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 6)
  store i8 6, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then604:                                       ; preds = %if.then592
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 7)
  store i8 7, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then611:                                       ; preds = %if.then592
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 8)
  store i8 8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then618:                                       ; preds = %if.then592
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 14)
  store i8 14, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then625:                                       ; preds = %if.then592
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 15)
  store i8 15, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then632:                                       ; preds = %if.then592
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 16)
  store i8 16, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.else640:                                       ; preds = %if.end589
  br i1 %cmp1146, label %if.then643, label %if.else640.if.end1202_crit_edge

if.else640.if.end1202_crit_edge:                  ; preds = %if.else640
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1202

if.then643:                                       ; preds = %if.else640
  %49 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 7), align 1
  %50 = zext i8 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.302)
  switch i8 %49, label %if.then643.if.end1202_crit_edge [
    i8 8, label %if.then648
    i8 7, label %if.then655
    i8 6, label %if.then662
    i8 16, label %if.then669
    i8 15, label %if.then676
    i8 14, label %if.then683
  ]

if.then643.if.end1202_crit_edge:                  ; preds = %if.then643
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1202

if.then648:                                       ; preds = %if.then643
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 7)
  store i8 7, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then655:                                       ; preds = %if.then643
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 6)
  store i8 6, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then662:                                       ; preds = %if.then643
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 6)
  store i8 6, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then669:                                       ; preds = %if.then643
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 15)
  store i8 15, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then676:                                       ; preds = %if.then643
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 14)
  store i8 14, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then683:                                       ; preds = %if.then643
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 14)
  store i8 14, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.else693:                                       ; preds = %if.then525
  %switch.tableidx1489 = add i8 %43, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx1489)
  %51 = icmp ult i8 %switch.tableidx1489, 4
  br i1 %51, label %switch.lookup1488, label %if.else693.if.end724_crit_edge

if.else693.if.end724_crit_edge:                   ; preds = %if.else693
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end724

switch.lookup1488:                                ; preds = %if.else693
  call void @__sanitizer_cov_trace_pc() #6
  %switch.cast1490 = zext i8 %switch.tableidx1489 to i32
  %switch.shiftamt1491 = shl nuw nsw i32 %switch.cast1490, 3
  %switch.downshift1492 = lshr i32 67305986, %switch.shiftamt1491
  %switch.masked1493 = trunc i32 %switch.downshift1492 to i8
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext %switch.masked1493)
  store i8 %switch.masked1493, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  %.pr1428 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 7), align 1
  br label %if.end724

if.end724:                                        ; preds = %switch.lookup1488, %if.else693.if.end724_crit_edge
  %52 = phi i8 [ %.pr1428, %switch.lookup1488 ], [ %43, %if.else693.if.end724_crit_edge ]
  %switch.tableidx1495 = add i8 %52, -13
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx1495)
  %53 = icmp ult i8 %switch.tableidx1495, 4
  br i1 %53, label %switch.lookup1494, label %if.end724.if.end755_crit_edge

if.end724.if.end755_crit_edge:                    ; preds = %if.end724
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end755

switch.lookup1494:                                ; preds = %if.end724
  call void @__sanitizer_cov_trace_pc() #6
  %switch.cast1496 = zext i8 %switch.tableidx1495 to i32
  %switch.shiftamt1497 = shl nuw nsw i32 %switch.cast1496, 3
  %switch.downshift1498 = lshr i32 202050058, %switch.shiftamt1497
  %switch.masked1499 = trunc i32 %switch.downshift1498 to i8
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext %switch.masked1499)
  store i8 %switch.masked1499, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end755

if.end755:                                        ; preds = %switch.lookup1494, %if.end724.if.end755_crit_edge
  br i1 %cmp1095, label %if.then758, label %if.else806

if.then758:                                       ; preds = %if.end755
  %54 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 7), align 1
  %55 = zext i8 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.303)
  switch i8 %54, label %if.then758.if.end1202_crit_edge [
    i8 1, label %if.then763
    i8 2, label %if.then770
    i8 3, label %if.then777
    i8 9, label %if.then784
    i8 10, label %if.then791
    i8 11, label %if.then798
  ]

if.then758.if.end1202_crit_edge:                  ; preds = %if.then758
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1202

if.then763:                                       ; preds = %if.then758
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 2)
  store i8 2, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then770:                                       ; preds = %if.then758
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 3)
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then777:                                       ; preds = %if.then758
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 4)
  store i8 4, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then784:                                       ; preds = %if.then758
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 10)
  store i8 10, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then791:                                       ; preds = %if.then758
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 11)
  store i8 11, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then798:                                       ; preds = %if.then758
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 12)
  store i8 12, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.else806:                                       ; preds = %if.end755
  br i1 %cmp1146, label %if.then809, label %if.else806.if.end1202_crit_edge

if.else806.if.end1202_crit_edge:                  ; preds = %if.else806
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1202

if.then809:                                       ; preds = %if.else806
  %56 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 7), align 1
  %57 = zext i8 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.304)
  switch i8 %56, label %if.then809.if.end1202_crit_edge [
    i8 4, label %if.then814
    i8 3, label %if.then821
    i8 2, label %if.then828
    i8 12, label %if.then835
    i8 11, label %if.then842
    i8 10, label %if.then849
  ]

if.then809.if.end1202_crit_edge:                  ; preds = %if.then809
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1202

if.then814:                                       ; preds = %if.then809
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 3)
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then821:                                       ; preds = %if.then809
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 2)
  store i8 2, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then828:                                       ; preds = %if.then809
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 2)
  store i8 2, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then835:                                       ; preds = %if.then809
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 11)
  store i8 11, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then842:                                       ; preds = %if.then809
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 10)
  store i8 10, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then849:                                       ; preds = %if.then809
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 10)
  store i8 10, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then864:                                       ; preds = %if.end158
  %58 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 7), align 1
  br i1 %tx_pause, label %if.then866, label %if.else1032

if.then866:                                       ; preds = %if.then864
  %switch.tableidx1501 = add i8 %58, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx1501)
  %59 = icmp ult i8 %switch.tableidx1501, 4
  br i1 %59, label %switch.lookup1500, label %if.then866.if.end897_crit_edge

if.then866.if.end897_crit_edge:                   ; preds = %if.then866
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end897

switch.lookup1500:                                ; preds = %if.then866
  call void @__sanitizer_cov_trace_pc() #6
  %switch.cast1502 = zext i8 %switch.tableidx1501 to i32
  %switch.shiftamt1503 = shl nuw nsw i32 %switch.cast1502, 3
  %switch.downshift1504 = lshr i32 134678279, %switch.shiftamt1503
  %switch.masked1505 = trunc i32 %switch.downshift1504 to i8
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext %switch.masked1505)
  store i8 %switch.masked1505, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  %.pr1429 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 7), align 1
  br label %if.end897

if.end897:                                        ; preds = %switch.lookup1500, %if.then866.if.end897_crit_edge
  %60 = phi i8 [ %.pr1429, %switch.lookup1500 ], [ %58, %if.then866.if.end897_crit_edge ]
  %switch.tableidx1507 = add i8 %60, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx1507)
  %61 = icmp ult i8 %switch.tableidx1507, 4
  br i1 %61, label %switch.lookup1506, label %if.end897.if.end928_crit_edge

if.end897.if.end928_crit_edge:                    ; preds = %if.end897
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end928

switch.lookup1506:                                ; preds = %if.end897
  call void @__sanitizer_cov_trace_pc() #6
  %switch.cast1508 = zext i8 %switch.tableidx1507 to i32
  %switch.shiftamt1509 = shl nuw nsw i32 %switch.cast1508, 3
  %switch.downshift1510 = lshr i32 269422351, %switch.shiftamt1509
  %switch.masked1511 = trunc i32 %switch.downshift1510 to i8
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext %switch.masked1511)
  store i8 %switch.masked1511, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end928

if.end928:                                        ; preds = %switch.lookup1506, %if.end897.if.end928_crit_edge
  br i1 %cmp1095, label %if.then931, label %if.else979

if.then931:                                       ; preds = %if.end928
  %62 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 7), align 1
  %63 = zext i8 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.305)
  switch i8 %62, label %if.then931.if.end1202_crit_edge [
    i8 5, label %if.then936
    i8 6, label %if.then943
    i8 7, label %if.then950
    i8 13, label %if.then957
    i8 14, label %if.then964
    i8 15, label %if.then971
  ]

if.then931.if.end1202_crit_edge:                  ; preds = %if.then931
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1202

if.then936:                                       ; preds = %if.then931
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 7)
  store i8 7, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then943:                                       ; preds = %if.then931
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 7)
  store i8 7, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then950:                                       ; preds = %if.then931
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 8)
  store i8 8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then957:                                       ; preds = %if.then931
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 15)
  store i8 15, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then964:                                       ; preds = %if.then931
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 15)
  store i8 15, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then971:                                       ; preds = %if.then931
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 16)
  store i8 16, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.else979:                                       ; preds = %if.end928
  br i1 %cmp1146, label %if.then982, label %if.else979.if.end1202_crit_edge

if.else979.if.end1202_crit_edge:                  ; preds = %if.else979
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1202

if.then982:                                       ; preds = %if.else979
  %64 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 7), align 1
  %65 = zext i8 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.306)
  switch i8 %64, label %if.then982.if.end1202_crit_edge [
    i8 8, label %if.then987
    i8 7, label %if.then994
    i8 6, label %if.then1001
    i8 16, label %if.then1008
    i8 15, label %if.then1015
    i8 14, label %if.then1022
  ]

if.then982.if.end1202_crit_edge:                  ; preds = %if.then982
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1202

if.then987:                                       ; preds = %if.then982
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 7)
  store i8 7, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then994:                                       ; preds = %if.then982
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 7)
  store i8 7, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then1001:                                      ; preds = %if.then982
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 7)
  store i8 7, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then1008:                                      ; preds = %if.then982
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 15)
  store i8 15, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then1015:                                      ; preds = %if.then982
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 15)
  store i8 15, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then1022:                                      ; preds = %if.then982
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 15)
  store i8 15, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.else1032:                                      ; preds = %if.then864
  %switch.tableidx1513 = add i8 %58, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx1513)
  %66 = icmp ult i8 %switch.tableidx1513, 4
  br i1 %66, label %switch.lookup1512, label %if.else1032.if.end1063_crit_edge

if.else1032.if.end1063_crit_edge:                 ; preds = %if.else1032
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1063

switch.lookup1512:                                ; preds = %if.else1032
  call void @__sanitizer_cov_trace_pc() #6
  %switch.cast1514 = zext i8 %switch.tableidx1513 to i32
  %switch.shiftamt1515 = shl nuw nsw i32 %switch.cast1514, 3
  %switch.downshift1516 = lshr i32 67306243, %switch.shiftamt1515
  %switch.masked1517 = trunc i32 %switch.downshift1516 to i8
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext %switch.masked1517)
  store i8 %switch.masked1517, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  %.pr1430 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 7), align 1
  br label %if.end1063

if.end1063:                                       ; preds = %switch.lookup1512, %if.else1032.if.end1063_crit_edge
  %67 = phi i8 [ %.pr1430, %switch.lookup1512 ], [ %58, %if.else1032.if.end1063_crit_edge ]
  %switch.tableidx1519 = add i8 %67, -13
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx1519)
  %68 = icmp ult i8 %switch.tableidx1519, 4
  br i1 %68, label %switch.lookup1518, label %if.end1063.if.end1094_crit_edge

if.end1063.if.end1094_crit_edge:                  ; preds = %if.end1063
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1094

switch.lookup1518:                                ; preds = %if.end1063
  call void @__sanitizer_cov_trace_pc() #6
  %switch.cast1520 = zext i8 %switch.tableidx1519 to i32
  %switch.shiftamt1521 = shl nuw nsw i32 %switch.cast1520, 3
  %switch.downshift1522 = lshr i32 202050315, %switch.shiftamt1521
  %switch.masked1523 = trunc i32 %switch.downshift1522 to i8
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext %switch.masked1523)
  store i8 %switch.masked1523, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1094

if.end1094:                                       ; preds = %switch.lookup1518, %if.end1063.if.end1094_crit_edge
  br i1 %cmp1095, label %if.then1097, label %if.else1145

if.then1097:                                      ; preds = %if.end1094
  %69 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 7), align 1
  %70 = zext i8 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.307)
  switch i8 %69, label %if.then1097.if.end1202_crit_edge [
    i8 1, label %if.then1102
    i8 2, label %if.then1109
    i8 3, label %if.then1116
    i8 9, label %if.then1123
    i8 10, label %if.then1130
    i8 11, label %if.then1137
  ]

if.then1097.if.end1202_crit_edge:                 ; preds = %if.then1097
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1202

if.then1102:                                      ; preds = %if.then1097
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 3)
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then1109:                                      ; preds = %if.then1097
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 3)
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then1116:                                      ; preds = %if.then1097
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 4)
  store i8 4, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then1123:                                      ; preds = %if.then1097
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 11)
  store i8 11, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then1130:                                      ; preds = %if.then1097
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 11)
  store i8 11, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then1137:                                      ; preds = %if.then1097
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 12)
  store i8 12, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.else1145:                                      ; preds = %if.end1094
  br i1 %cmp1146, label %if.then1148, label %if.else1145.if.end1202_crit_edge

if.else1145.if.end1202_crit_edge:                 ; preds = %if.else1145
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1202

if.then1148:                                      ; preds = %if.else1145
  %71 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 7), align 1
  %72 = zext i8 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.308)
  switch i8 %71, label %if.then1148.if.end1202_crit_edge [
    i8 4, label %if.then1153
    i8 3, label %if.then1160
    i8 2, label %if.then1167
    i8 12, label %if.then1174
    i8 11, label %if.then1181
    i8 10, label %if.then1188
  ]

if.then1148.if.end1202_crit_edge:                 ; preds = %if.then1148
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1202

if.then1153:                                      ; preds = %if.then1148
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 3)
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then1160:                                      ; preds = %if.then1148
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 3)
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then1167:                                      ; preds = %if.then1148
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 3)
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then1174:                                      ; preds = %if.then1148
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 11)
  store i8 11, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then1181:                                      ; preds = %if.then1148
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 11)
  store i8 11, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.then1188:                                      ; preds = %if.then1148
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 11)
  store i8 11, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  br label %if.end1202

if.end1202:                                       ; preds = %if.then1188, %if.then1181, %if.then1174, %if.then1167, %if.then1160, %if.then1153, %if.then1148.if.end1202_crit_edge, %if.else1145.if.end1202_crit_edge, %if.then1137, %if.then1130, %if.then1123, %if.then1116, %if.then1109, %if.then1102, %if.then1097.if.end1202_crit_edge, %if.then1022, %if.then1015, %if.then1008, %if.then1001, %if.then994, %if.then987, %if.then982.if.end1202_crit_edge, %if.else979.if.end1202_crit_edge, %if.then971, %if.then964, %if.then957, %if.then950, %if.then943, %if.then936, %if.then931.if.end1202_crit_edge, %if.then849, %if.then842, %if.then835, %if.then828, %if.then821, %if.then814, %if.then809.if.end1202_crit_edge, %if.else806.if.end1202_crit_edge, %if.then798, %if.then791, %if.then784, %if.then777, %if.then770, %if.then763, %if.then758.if.end1202_crit_edge, %if.then683, %if.then676, %if.then669, %if.then662, %if.then655, %if.then648, %if.then643.if.end1202_crit_edge, %if.else640.if.end1202_crit_edge, %if.then632, %if.then625, %if.then618, %if.then611, %if.then604, %if.then597, %if.then592.if.end1202_crit_edge, %if.then509, %if.then502, %if.then495, %if.then488, %if.then481, %if.then474, %if.then467, %if.then462.if.end1202_crit_edge, %if.else459.if.end1202_crit_edge, %if.then450, %if.then443, %if.then436, %if.then429, %if.then422, %if.then415, %if.then408, %if.then403.if.end1202_crit_edge, %if.then328, %if.then321, %if.then314, %if.then307, %if.then300, %if.then293, %if.then288.if.end1202_crit_edge, %if.else285.if.end1202_crit_edge, %if.then277, %if.then270, %if.then263, %if.then256, %if.then249, %if.then242, %if.then237.if.end1202_crit_edge, %if.end97
  %conv1203.pre-phi = phi i32 [ %conv159, %if.then1148.if.end1202_crit_edge ], [ %conv159, %if.then1097.if.end1202_crit_edge ], [ %conv159, %if.then982.if.end1202_crit_edge ], [ %conv159, %if.then931.if.end1202_crit_edge ], [ 2, %if.then809.if.end1202_crit_edge ], [ 2, %if.then758.if.end1202_crit_edge ], [ 2, %if.then643.if.end1202_crit_edge ], [ 2, %if.then592.if.end1202_crit_edge ], [ 1, %if.then462.if.end1202_crit_edge ], [ 1, %if.then403.if.end1202_crit_edge ], [ 1, %if.then288.if.end1202_crit_edge ], [ 1, %if.then237.if.end1202_crit_edge ], [ 1, %if.then415 ], [ 1, %if.then429 ], [ 1, %if.then443 ], [ 1, %if.then450 ], [ 1, %if.then436 ], [ 1, %if.then422 ], [ 1, %if.then408 ], [ 1, %if.then467 ], [ 1, %if.then481 ], [ 1, %if.then495 ], [ 1, %if.then509 ], [ 1, %if.then502 ], [ 1, %if.then488 ], [ 1, %if.then474 ], [ 1, %if.else459.if.end1202_crit_edge ], [ 1, %if.then249 ], [ 1, %if.then263 ], [ 1, %if.then277 ], [ 1, %if.then270 ], [ 1, %if.then256 ], [ 1, %if.then242 ], [ 1, %if.then293 ], [ 1, %if.then307 ], [ 1, %if.then321 ], [ 1, %if.then328 ], [ 1, %if.then314 ], [ 1, %if.then300 ], [ 1, %if.else285.if.end1202_crit_edge ], [ %conv159, %if.then1109 ], [ %conv159, %if.then1123 ], [ %conv159, %if.then1137 ], [ %conv159, %if.then1130 ], [ %conv159, %if.then1116 ], [ %conv159, %if.then1102 ], [ %conv159, %if.then1153 ], [ %conv159, %if.then1167 ], [ %conv159, %if.then1181 ], [ %conv159, %if.then1188 ], [ %conv159, %if.then1174 ], [ %conv159, %if.then1160 ], [ %conv159, %if.else1145.if.end1202_crit_edge ], [ %conv159, %if.then943 ], [ %conv159, %if.then957 ], [ %conv159, %if.then971 ], [ %conv159, %if.then964 ], [ %conv159, %if.then950 ], [ %conv159, %if.then936 ], [ %conv159, %if.then987 ], [ %conv159, %if.then1001 ], [ %conv159, %if.then1015 ], [ %conv159, %if.then1022 ], [ %conv159, %if.then1008 ], [ %conv159, %if.then994 ], [ %conv159, %if.else979.if.end1202_crit_edge ], [ 2, %if.else640.if.end1202_crit_edge ], [ 2, %if.then655 ], [ 2, %if.then669 ], [ 2, %if.then683 ], [ 2, %if.then676 ], [ 2, %if.then662 ], [ 2, %if.then648 ], [ 2, %if.then597 ], [ 2, %if.then611 ], [ 2, %if.then625 ], [ 2, %if.then632 ], [ 2, %if.then618 ], [ 2, %if.then604 ], [ 2, %if.else806.if.end1202_crit_edge ], [ 2, %if.then821 ], [ 2, %if.then835 ], [ 2, %if.then849 ], [ 2, %if.then842 ], [ 2, %if.then828 ], [ 2, %if.then814 ], [ 2, %if.then763 ], [ 2, %if.then777 ], [ 2, %if.then791 ], [ 2, %if.then798 ], [ 2, %if.then784 ], [ 2, %if.then770 ], [ %.pre, %if.end97 ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.213, i32 noundef %conv1203.pre-phi) #4
  %73 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 7), align 1
  %74 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %73, i8 %74)
  %cmp1208.not = icmp eq i8 %73, %74
  br i1 %cmp1208.not, label %if.end1202.if.end1227_crit_edge, label %if.then1210

if.end1202.if.end1227_crit_edge:                  ; preds = %if.end1202
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1227

if.then1210:                                      ; preds = %if.end1202
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %scan) #4
  %75 = ptrtoint ptr %scan to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %scan, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link) #4
  %76 = ptrtoint ptr %link to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %link, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %roam) #4
  %77 = ptrtoint ptr %roam to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %roam, align 1
  %conv1212 = zext i8 %73 to i32
  %conv1214 = zext i8 %74 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.214, i32 noundef %conv1212, i32 noundef %conv1214) #4
  %btc_get = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %78 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %btc_get, align 4
  %call = call zeroext i1 %79(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %scan) #4
  %80 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %btc_get, align 4
  %call1216 = call zeroext i1 %81(ptr noundef %btcoexist, i8 noundef zeroext 6, ptr noundef nonnull %link) #4
  %82 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %btc_get, align 4
  %call1218 = call zeroext i1 %83(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %roam) #4
  %84 = ptrtoint ptr %scan to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %scan, align 1, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool1219.not = icmp eq i8 %85, 0
  br i1 %tobool1219.not, label %land.lhs.true, label %if.then1210.if.else1225_crit_edge

if.then1210.if.else1225_crit_edge:                ; preds = %if.then1210
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else1225

land.lhs.true:                                    ; preds = %if.then1210
  %86 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %link, align 1, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool1220.not = icmp eq i8 %87, 0
  br i1 %tobool1220.not, label %land.lhs.true1221, label %land.lhs.true.if.else1225_crit_edge

land.lhs.true.if.else1225_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else1225

land.lhs.true1221:                                ; preds = %land.lhs.true
  %88 = ptrtoint ptr %roam to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %roam, align 1, !range !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool1222.not = icmp eq i8 %89, 0
  br i1 %tobool1222.not, label %if.then1223, label %land.lhs.true1221.if.else1225_crit_edge

land.lhs.true1221.if.else1225_crit_edge:          ; preds = %land.lhs.true1221
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else1225

if.then1223:                                      ; preds = %land.lhs.true1221
  call void @__sanitizer_cov_trace_pc() #6
  %90 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8723b_2ant, ptr @glcoex_dm_8723b_2ant, i32 0, i32 9), align 1
  call fastcc void @btc8723b2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext %90)
  br label %if.end1226

if.else1225:                                      ; preds = %land.lhs.true1221.if.else1225_crit_edge, %land.lhs.true.if.else1225_crit_edge, %if.then1210.if.else1225_crit_edge
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.215) #4
  br label %if.end1226

if.end1226:                                       ; preds = %if.else1225, %if.then1223
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %roam) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %scan) #4
  br label %if.end1227

if.end1227:                                       ; preds = %if.end1226, %if.end1202.if.end1227_crit_edge
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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 222)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 222)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !211, !212, !214, !216, !218, !220, !222, !224, !226, !227, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !283, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454}
!llvm.module.flags = !{!456, !457, !458, !459, !460, !461, !462, !463}
!llvm.ident = !{!464}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3534, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3634, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3656, i32 14}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3659, i32 15}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3660, i32 15}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3663, i32 16}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3664, i32 6}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3667, i32 16}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3668, i32 6}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3669, i32 40}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3669, i32 48}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3674, i32 16}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3675, i32 6}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3684, i32 16}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3685, i32 6}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3688, i32 16}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3689, i32 6}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3694, i32 16}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3695, i32 6}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3700, i32 16}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3701, i32 6}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3708, i32 16}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3709, i32 6}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3709, i32 38}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3709, i32 45}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3710, i32 39}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3711, i32 38}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3711, i32 47}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3712, i32 20}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3714, i32 5}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3714, i32 16}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3716, i32 16}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3717, i32 6}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3723, i32 16}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3724, i32 6}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3725, i32 29}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3725, i32 44}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3729, i32 18}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3736, i32 16}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3737, i32 6}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3738, i32 30}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3738, i32 41}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3739, i32 30}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3739, i32 41}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3744, i32 6}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3744, i32 18}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3746, i32 6}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3748, i32 16}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3749, i32 6}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3755, i32 6}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3758, i32 16}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3759, i32 6}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3763, i32 6}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3768, i32 6}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3770, i32 16}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3771, i32 6}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3775, i32 16}
!114 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3776, i32 6}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3782, i32 16}
!118 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3783, i32 6}
!120 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3790, i32 6}
!122 = !{ptr @.str.61, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3797, i32 16}
!124 = !{ptr @.str.62, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3798, i32 6}
!126 = !{ptr @.str.63, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3805, i32 6}
!128 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3810, i32 6}
!130 = !{ptr @.str.65, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3829, i32 6}
!132 = !{ptr @.str.66, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3837, i32 6}
!134 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3840, i32 16}
!136 = !{ptr @.str.68, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3841, i32 6}
!138 = !{ptr @.str.69, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3844, i32 6}
!140 = !{ptr @.str.70, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3856, i32 3}
!142 = !{ptr @.str.71, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3863, i32 3}
!144 = !{ptr @.str.72, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3877, i32 3}
!146 = !{ptr @.str.73, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3881, i32 3}
!148 = !{ptr @.str.74, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3898, i32 3}
!150 = !{ptr @.str.75, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3901, i32 3}
!152 = !{ptr @.str.76, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3906, i32 2}
!154 = !{ptr @.str.77, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3916, i32 3}
!156 = !{ptr @.str.78, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3919, i32 3}
!158 = !{ptr @.str.79, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3933, i32 3}
!160 = !{ptr @.str.80, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3936, i32 3}
!162 = !{ptr @.str.81, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3964, i32 2}
!164 = !{ptr @.str.82, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3978, i32 3}
!166 = !{ptr @.str.83, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3998, i32 2}
!168 = !{ptr @.str.84, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 4006, i32 4}
!170 = !{ptr @.str.85, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 4009, i32 4}
!172 = !{ptr @.str.86, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 4014, i32 3}
!174 = !{ptr @.str.87, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 4046, i32 4}
!176 = !{ptr @.str.88, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 4061, i32 4}
!178 = !{ptr @.str.89, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 4123, i32 3}
!180 = !{ptr @.str.90, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 4128, i32 3}
!182 = !{ptr @.str.91, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 4133, i32 3}
!184 = !{ptr @.str.92, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 4137, i32 3}
!186 = !{ptr @.str.93, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 4141, i32 3}
!188 = !{ptr @.str.94, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 4167, i32 2}
!190 = !{ptr @.str.95, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 4178, i32 2}
!192 = !{ptr @.str.96, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 4181, i32 3}
!194 = !{ptr @.str.97, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 4193, i32 3}
!196 = !{ptr @.str.98, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 4206, i32 2}
!198 = !{ptr @.str.99, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 4215, i32 4}
!200 = distinct !{null, !201, !"coex_dm", i1 false, i1 false}
!201 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 21, i32 35}
!202 = !{ptr @glcoex_dm_8723b_2ant, !203, !"glcoex_dm_8723b_2ant", i1 false, i1 false}
!203 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 20, i32 34}
!204 = distinct !{null, !205, !"coex_sta", i1 false, i1 false}
!205 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 23, i32 36}
!206 = !{ptr @glcoex_sta_8723b_2ant, !207, !"glcoex_sta_8723b_2ant", i1 false, i1 false}
!207 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 22, i32 35}
!208 = !{ptr @.str.100, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 878, i32 2}
!210 = !{ptr @.str.101, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @.str.102, !209, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @.str.103, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 888, i32 3}
!214 = !{ptr @.str.104, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 892, i32 3}
!216 = !{ptr @.str.105, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 854, i32 2}
!218 = !{ptr @.str.106, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 858, i32 2}
!220 = !{ptr @.str.107, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 862, i32 2}
!222 = !{ptr @.str.108, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 866, i32 2}
!224 = !{ptr @.str.109, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 1223, i32 2}
!226 = !{ptr @.str.110, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @.str.111, !225, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @.str.112, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 1240, i32 3}
!230 = !{ptr @.str.113, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 1243, i32 3}
!232 = !{ptr @.str.114, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 147, i32 5}
!234 = !{ptr @.str.115, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 151, i32 5}
!236 = !{ptr @.str.116, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 157, i32 5}
!238 = !{ptr @.str.117, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 161, i32 5}
!240 = distinct !{null, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 167, i32 4}
!242 = distinct !{null, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 179, i32 5}
!244 = distinct !{null, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 201, i32 5}
!246 = !{ptr @.str.121, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 56, i32 5}
!248 = !{ptr @.str.122, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 60, i32 5}
!250 = !{ptr @.str.123, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 66, i32 5}
!252 = !{ptr @.str.124, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 70, i32 5}
!254 = !{ptr @.str.125, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 76, i32 4}
!256 = !{ptr @.str.126, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 86, i32 5}
!258 = !{ptr @.str.127, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 108, i32 5}
!260 = !{ptr @.str.128, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 1073, i32 2}
!262 = !{ptr @.str.129, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 724, i32 2}
!264 = !{ptr @.str.130, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 730, i32 3}
!266 = !{ptr @.str.131, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 644, i32 2}
!268 = !{ptr @.str.132, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 646, i32 2}
!270 = !{ptr @.str.133, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 671, i32 2}
!272 = !{ptr @.str.134, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 676, i32 3}
!274 = !{ptr @.str.135, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 660, i32 2}
!276 = !{ptr @.str.136, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 774, i32 2}
!278 = !{ptr @.str.137, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 781, i32 3}
!280 = !{ptr @.str.138, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 762, i32 2}
!282 = !{ptr @.str.139, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @.str.140, !281, !"<string literal>", i1 false, i1 false}
!284 = distinct !{null, !285, !"glcoex_ver_date_8723b_2ant", i1 false, i1 false}
!285 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 31, i32 12}
!286 = distinct !{null, !287, !"glcoex_ver_8723b_2ant", i1 false, i1 false}
!287 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 32, i32 12}
!288 = !{ptr @.str.141, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 26, i32 2}
!290 = !{ptr @.str.142, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 27, i32 2}
!292 = !{ptr @.str.143, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 28, i32 2}
!294 = distinct !{null, !295, !"glbt_info_src_8723b_2ant", i1 false, i1 false}
!295 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 25, i32 26}
!296 = !{ptr @.str.144, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 280, i32 2}
!298 = !{ptr @.str.145, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 283, i32 2}
!300 = !{ptr @.str.146, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 1033, i32 2}
!302 = distinct !{null, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 1039, i32 3}
!304 = !{ptr @.str.148, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 994, i32 2}
!306 = !{ptr @.str.149, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 337, i32 2}
!308 = !{ptr @.str.150, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3355, i32 2}
!310 = !{ptr @.str.151, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3359, i32 3}
!312 = !{ptr @.str.152, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3365, i32 3}
!314 = !{ptr @.str.153, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3373, i32 3}
!316 = !{ptr @.str.154, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3384, i32 3}
!318 = !{ptr @.str.155, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3397, i32 3}
!320 = !{ptr @.str.156, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3418, i32 2}
!322 = !{ptr @.str.157, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3423, i32 3}
!324 = !{ptr @.str.158, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3428, i32 4}
!326 = !{ptr @.str.159, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3436, i32 4}
!328 = !{ptr @.str.160, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3441, i32 4}
!330 = !{ptr @.str.161, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3446, i32 4}
!332 = !{ptr @.str.162, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3451, i32 4}
!334 = !{ptr @.str.163, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3456, i32 4}
!336 = !{ptr @.str.164, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3461, i32 4}
!338 = !{ptr @.str.165, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3466, i32 4}
!340 = !{ptr @.str.166, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3471, i32 4}
!342 = !{ptr @.str.167, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3476, i32 4}
!344 = !{ptr @.str.168, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3481, i32 4}
!346 = !{ptr @.str.169, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 3486, i32 4}
!348 = !{ptr @.str.170, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 449, i32 3}
!350 = !{ptr @.str.171, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 465, i32 4}
!352 = !{ptr @.str.172, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 470, i32 5}
!354 = !{ptr @.str.173, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 474, i32 5}
!356 = !{ptr @.str.174, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 479, i32 6}
!358 = !{ptr @.str.175, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 485, i32 6}
!360 = !{ptr @.str.176, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 496, i32 5}
!362 = !{ptr @.str.177, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 500, i32 5}
!364 = !{ptr @.str.178, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 505, i32 6}
!366 = !{ptr @.str.179, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 510, i32 6}
!368 = !{ptr @.str.180, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 520, i32 5}
!370 = !{ptr @.str.181, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 526, i32 6}
!372 = !{ptr @.str.182, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 531, i32 6}
!374 = !{ptr @.str.183, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 540, i32 6}
!376 = !{ptr @.str.184, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 546, i32 6}
!378 = !{ptr @.str.185, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 558, i32 5}
!380 = !{ptr @.str.186, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 564, i32 6}
!382 = !{ptr @.str.187, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 570, i32 6}
!384 = !{ptr @.str.188, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 579, i32 6}
!386 = !{ptr @.str.189, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 585, i32 6}
!388 = !{ptr @.str.190, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 597, i32 6}
!390 = !{ptr @.str.191, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 603, i32 6}
!392 = !{ptr @.str.192, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 617, i32 6}
!394 = !{ptr @.str.193, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 621, i32 6}
!396 = !{ptr @.str.194, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 1588, i32 3}
!398 = !{ptr @.str.195, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 1593, i32 3}
!400 = !{ptr @.str.196, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 1623, i32 2}
!402 = !{ptr @.str.197, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 1688, i32 3}
!404 = !{ptr @.str.198, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 1712, i32 4}
!406 = !{ptr @.str.199, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 1737, i32 4}
!408 = !{ptr @.str.200, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 1762, i32 5}
!410 = !{ptr @.str.201, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 1766, i32 5}
!412 = !{ptr @.str.202, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 1648, i32 3}
!414 = !{ptr @.str.203, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 821, i32 2}
!416 = !{ptr @.str.204, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 829, i32 3}
!418 = !{ptr @.str.205, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 800, i32 2}
!420 = !{ptr @btc8723b2ant_tdma_duration_adjust.up, !421, !"up", i1 false, i1 false}
!421 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 1784, i32 13}
!422 = !{ptr @btc8723b2ant_tdma_duration_adjust.dn, !423, !"dn", i1 false, i1 false}
!423 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 1784, i32 17}
!424 = !{ptr @btc8723b2ant_tdma_duration_adjust.m, !425, !"m", i1 false, i1 false}
!425 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 1784, i32 21}
!426 = !{ptr @btc8723b2ant_tdma_duration_adjust.n, !427, !"n", i1 false, i1 false}
!427 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 1784, i32 24}
!428 = !{ptr @btc8723b2ant_tdma_duration_adjust.wait_count, !429, !"wait_count", i1 false, i1 false}
!429 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 1784, i32 27}
!430 = !{ptr @.str.206, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 1789, i32 2}
!432 = !{ptr @.str.207, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 1794, i32 3}
!434 = !{ptr @.str.208, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 1904, i32 3}
!436 = !{ptr @.str.209, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 1906, i32 3}
!438 = !{ptr @.str.210, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 1928, i32 5}
!440 = !{ptr @.str.211, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 1960, i32 5}
!442 = !{ptr @.str.212, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 1985, i32 4}
!444 = !{ptr @.str.213, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 1989, i32 3}
!446 = !{ptr @.str.214, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 2747, i32 3}
!448 = !{ptr @.str.215, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 2759, i32 4}
!450 = !{ptr @btc8723b2ant_is_wifi_status_changed.pre_wifi_busy, !451, !"pre_wifi_busy", i1 false, i1 false}
!451 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 346, i32 14}
!452 = !{ptr @btc8723b2ant_is_wifi_status_changed.pre_under_4way, !453, !"pre_under_4way", i1 false, i1 false}
!453 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 347, i32 14}
!454 = !{ptr @btc8723b2ant_is_wifi_status_changed.pre_bt_hs_on, !455, !"pre_bt_hs_on", i1 false, i1 false}
!455 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8723b2ant.c", i32 348, i32 14}
!456 = !{i32 1, !"wchar_size", i32 2}
!457 = !{i32 1, !"min_enum_size", i32 4}
!458 = !{i32 8, !"branch-target-enforcement", i32 0}
!459 = !{i32 8, !"sign-return-address", i32 0}
!460 = !{i32 8, !"sign-return-address-all", i32 0}
!461 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!462 = !{i32 7, !"uwtable", i32 1}
!463 = !{i32 7, !"frame-pointer", i32 2}
!464 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!465 = !{i8 0, i8 2}
!466 = !{!"auto-init"}
!467 = distinct !{!467, !468}
!468 = !{!"llvm.loop.peeled.count", i32 2}
