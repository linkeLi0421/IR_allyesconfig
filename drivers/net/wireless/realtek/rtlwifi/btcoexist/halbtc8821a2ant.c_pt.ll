; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.coex_dm_8821a_2ant = type { i8, i8, i8, i8, i8, i8, i8, i8, [5 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i32, i8, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8 }
%struct.coex_sta_8821a_2ant = type { i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, [4 x i8], i8, [3 x [10 x i8]], [3 x i32], i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8 }
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
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\0A %-35s = %d/ %d \00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Ant PG number/ Ant mechanism:\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\0A %-35s\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[Action Manual control]!!\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\0A %-35s = %s / %d\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"BT stack/ hci ext ver\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Yes\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"No\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\0A %-35s = %d_%d/ 0x%x/ 0x%x(%d)\00", [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CoexVer/ FwVer/ PatchVer\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\0A %-35s = %d / %d(%d)\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Dot11 channel / HsMode(HsChnl)\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\0A %-35s = %3ph \00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"H2C Wifi inform bt chnl Info\00", [35 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\0A %-35s = %ld/ %ld\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Wifi rssi/ HS rssi\00", [45 x i8] zeroinitializer }, align 32
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
@.str.44 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"============[Sw mechanism]============\00", [57 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\0A %-35s = %d/ %d/ %d(0x%x) \00", [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"SM2[AgcT/ AdcB/ SwDacSwing(lvl)]\00", [63 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"============[Fw mechanism]============\00", [57 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\0A %-35s = %5ph case-%d\00", [41 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PS TDMA\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DecBtPwr/ IgnWlanAct\00", [43 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"============[Hw setting]============\00", [59 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\0A %-35s = 0x%x\00", [17 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RF-A, 0x1e initVal\00", [45 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\0A %-35s = 0x%x/ 0x%x \00", [42 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"0x778 (W_Act)/ 0x6cc (CoTab Sel)\00", [63 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\0A %-35s = 0x%x/ 0x%x\00", [43 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"0x8db(ADC)/0xc5b[29:25](DAC)\00", [35 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"0xcb4[7:0](ctrl)/ 0xcb4[29:28](val)\00", [60 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\0A %-35s = 0x%x/ 0x%x/ 0x%x\00", [37 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"0x40/ 0x4c[24:23]/ 0x974\00", [39 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"0x550(bcn ctrl)/0x522\00", [42 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"0xc50(DIG)/0xa0a(CCK-TH)\00", [39 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"OFDM-FA/ CCK-FA\00", [16 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"0x6c0/0x6c4/0x6c8\00", [46 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\0A %-35s = %d/ %d\00", [47 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"0x770 (hi-pri Rx/Tx)\00", [43 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"0x774(low-pri Rx/Tx)\00", [43 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"0x41b (mgntQ hang chk == 0xf)\00", [34 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[BTCoex], IPS ENTER notify\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[BTCoex], IPS LEAVE notify\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[BTCoex], LPS ENABLE notify\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[BTCoex], LPS DISABLE notify\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[BTCoex], SCAN START notify\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[BTCoex], SCAN FINISH notify\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[BTCoex], CONNECT START notify\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[BTCoex], CONNECT FINISH notify\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[BTCoex], MEDIA connect notify\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[BTCoex], MEDIA disconnect notify\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[BTCoex], FW write 0x66 = 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[BTCoex], DHCP Packet notify\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"[BTCoex], Bt info[%d], length = %d, hex data = [\00", [47 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"0x%02x]\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"0x%02x, \00", [23 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[BTCoex], BtInfoNotify(), return for Manual CTRL<===\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"[BTCoex], Switch BT TRx Mask since BT RF REG 0x3C != 0x01\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[BTCoex], BT ext info = 0x%x!!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"[BTCoex], BT ext info bit3=1, wifi_connected=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"[BTCoex], BT ext info bit3 check, set BT NOT to ignore Wlan active!!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"[BTCoex], BT ext info bit3=0, wifi_connected=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"[BTCoex], BT ext info bit3 check, set BT to ignore Wlan active!!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"[BTCoex], BtInfoNotify(), BT Non-Connected idle!!!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[BTCoex], BtInfoNotify(), BT Connected-idle!!!\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[BTCoex], BtInfoNotify(), BT SCO busy!!!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[BTCoex], BtInfoNotify(), BT ACL busy!!!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"[BTCoex], BtInfoNotify(), BT Non-Defined state!!!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[BTCoex], Halt notify\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[BTCoex], Pnp notify\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[BTCoex], Pnp notify to SLEEP\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[BTCoex], Pnp notify to WAKE UP\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"[BTCoex], ==========================Periodical===========================\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[BTCoex], Set GNT_BT control by PTA\0A\00", [59 x i8] zeroinitializer }, align 32
@glcoex_dm_8821a_2ant = internal global { %struct.coex_dm_8821a_2ant, [40 x i8] } zeroinitializer, align 32
@glcoex_sta_8821a_2ant = internal global { %struct.coex_sta_8821a_2ant, [44 x i8] } zeroinitializer, align 32
@.str.102 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"[BTCoex], %s write Coex Table 0x6c0 = 0x%x, 0x6c4 = 0x%x, 0x6c8 = 0x%x, 0x6cc = 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"force to\00", [23 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.105 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"[BTCoex], pre_val0x6c0 = 0x%x, pre_val0x6c4 = 0x%x, pre_val0x6c8 = 0x%x, pre_val0x6cc = 0x%x !!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"[BTCoex], cur_val0x6c0 = 0x%x, cur_val0x6c4 = 0x%x, cur_val0x6c8 = 0x%x, cur_val0x6cc = 0x%x !!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[BTCoex], set coex table, set 0x6c0 = 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[BTCoex], set coex table, set 0x6c4 = 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[BTCoex], set coex table, set 0x6c8 = 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[BTCoex], set coex table, set 0x6cc = 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[BTCoex], %s turn %s PS TDMA, type = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ON\00", [29 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OFF\00", [28 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[BTCoex], pre_ps_tdma_on = %d, cur_ps_tdma_on = %d!!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[BTCoex], pre_ps_tdma = %d, cur_ps_tdma = %d!!\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[BTCoex], wifi RSSI state switch to High\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[BTCoex], wifi RSSI state stay at Low\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[BTCoex], wifi RSSI state switch to Low\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"[BTCoex], wifi RSSI state stay at High\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"[BTCoex], BT Rssi state switch to High\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[BTCoex], BT Rssi state stay at Low\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[BTCoex], BT Rssi state switch to Low\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[BTCoex], BT Rssi state stay at High\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[BTCoex], BT Rssi thresh error!!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[BTCoex], FW write 0x60(5bytes) = 0x%x%08x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[BTCoex], %s set FW Dac Swing level = %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"[BTCoex], pre_fw_dac_swing_lvl = %d, cur_fw_dac_swing_lvl = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[BTCoex], Set Dac Swing Level = 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[BTCoex], FW write 0x64 = 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[BTCoex], %s Dec BT power level = %u\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"[BTCoex], pre_dec_bt_pwr_lvl = %d, cur_dec_bt_pwr_lvl = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"[BTCoex], decrease Bt Power Level : %u, FW write 0x62 = 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[BTCoex], %s turn LowPenaltyRA = %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"[BTCoex], pre_low_penalty_ra = %d, cur_low_penalty_ra = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[BTCoex], set WiFi Low-Penalty Retry: %s\00", [55 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ON!!\00", [27 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"OFF!!\00", [26 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"[BTCoex], %s turn DacSwing = %s, dac_swing_lvl = 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [108 x i8], [52 x i8] } { [108 x i8] c"[BTCoex], pre_dac_swing_on = %d, pre_dac_swing_lvl = 0x%x, cur_dac_swing_on = %d, cur_dac_swing_lvl = 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.145 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[BTCoex], Write SwDacSwing = 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"BT Info[wifi fw]\00", [47 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"BT Info[bt rsp]\00", [16 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"BT Info[bt auto report]\00", [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[BTCoex], %s turn Ignore WlanAct %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"[BTCoex], pre_ignore_wlan_act = %d, cur_ignore_wlan_act = %d!!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"[BTCoex], set FW for BT Ignore Wlan_Act, FW write 0x63 = 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"[BTCoex], Query Bt Info, FW write 0x61 = 0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[BTCoex], Manual control!!!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"[BTCoex], RunCoexistMechanism(), run 5G coex setting!!<===\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[BTCoex], wifi is under IPS !!!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[BTCoex], BT is under inquiry/page scan !!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[BTCoex], WiFi is under Link Process !!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"############# [BTCoex],  Multi-Port num_of_wifi_link = %d, wifi_link_status = 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[BTCoex], Algorithm = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[BTCoex], Action 2-Ant common\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[BTCoex], pre_algorithm = %d, cur_algorithm = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[BTCoex], Action 2-Ant, algorithm = SCO\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[BTCoex], Action 2-Ant, algorithm = HID\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[BTCoex], Action 2-Ant, algorithm = A2DP\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[BTCoex], Action 2-Ant, algorithm = A2DP+PAN(HS)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"[BTCoex], Action 2-Ant, algorithm = PAN(EDR)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[BTCoex], Action 2-Ant, algorithm = HS mode\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"[BTCoex], Action 2-Ant, algorithm = PAN+A2DP\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[BTCoex], Action 2-Ant, algorithm = PAN(EDR)+HID\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[BTCoex], Action 2-Ant, algorithm = HID+A2DP+PAN\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"[BTCoex], Action 2-Ant, algorithm = HID+A2DP\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"[BTCoex], Action 2-Ant, algorithm = coexist All Off!!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[BTCoex], No BT link exists!!!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"[BTCoex], SCO only\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"[BTCoex], HID only\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[BTCoex], A2DP only\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[BTCoex], PAN(HS) only\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[BTCoex], PAN(EDR) only\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[BTCoex], SCO + HID\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[BTCoex], SCO + A2DP ==> SCO\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[BTCoex], SCO + PAN(HS)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[BTCoex], SCO + PAN(EDR)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[BTCoex], HID + A2DP\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[BTCoex], HID + PAN(HS)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[BTCoex], HID + PAN(EDR)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[BTCoex], A2DP + PAN(HS)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[BTCoex], A2DP + PAN(EDR)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[BTCoex], SCO + HID + A2DP ==> HID\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[BTCoex], SCO + HID + PAN(HS)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[BTCoex], SCO + HID + PAN(EDR)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[BTCoex], SCO + A2DP + PAN(HS)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[BTCoex], SCO + A2DP + PAN(EDR) ==> HID\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[BTCoex], HID + A2DP + PAN(HS)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[BTCoex], HID + A2DP + PAN(EDR)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"[BTCoex], Error!!! SCO + HID + A2DP + PAN(HS)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[BTCoex], SCO + HID + A2DP + PAN(EDR)==>PAN(EDR)+HID\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[BTCoex], Wifi link process + BT Inq/Page!!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[BTCoex], Wifi connected + BT Inq/Page!!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"[BTCoex], Wifi no-link + BT Inq/Page!!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[BTCoex], 0x765=0x%x, 0x76e=0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[BTCoex], Wifi non-connected idle!!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"[BTCoex], Wifi connected + BT non connected-idle!!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[BTCoex], Wifi connected + BT connected-idle!!\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[BTCoex], Wifi Connected-Busy + BT Busy!!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[BTCoex], Wifi Connected-Idle + BT Busy!!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[BTCoex], Wifi  idle process for BT HID+A2DP exist!!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"[BTCoex], Wifi  idle process for BT PAN exist!!\0A\00", [47 x i8] zeroinitializer }, align 32
@btc8821a2ant_tdma_duration_adjust.up = internal global { i32, [28 x i8] } zeroinitializer, align 32
@btc8821a2ant_tdma_duration_adjust.dn = internal global { i32, [28 x i8] } zeroinitializer, align 32
@btc8821a2ant_tdma_duration_adjust.m = internal global { i32, [28 x i8] } zeroinitializer, align 32
@btc8821a2ant_tdma_duration_adjust.n = internal global { i32, [28 x i8] } zeroinitializer, align 32
@btc8821a2ant_tdma_duration_adjust.wait_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.208 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[BTCoex], TdmaDurationAdjust()\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[BTCoex], first run TdmaDurationAdjust()!!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[BTCoex], retry_count = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"[BTCoex], up = %d, dn = %d, m = %d, n = %d, wait_count = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[BTCoex], Increase wifi duration!!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"[BTCoex], Decrease wifi duration for retryCounter<3!!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"[BTCoex], Decrease wifi duration for retryCounter>3!!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[BTCoex], max Interval = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"[BTCoex], PsTdma type mismatch!!!, cur_ps_tdma = %d, recordPsTdma = %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"[BTCoex], roaming/link/scan is under progress, will adjust next time!!!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"[BTCoex], High Priority Tx/Rx (reg 0x%x) = 0x%x(%d)/0x%x(%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"[BTCoex], Low Priority Tx/Rx (reg 0x%x) = 0x%x(%d)/0x%x(%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@btc8821a2ant_is_wifi_status_changed.pre_wifi_busy = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@btc8821a2ant_is_wifi_status_changed.pre_under_4way = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@btc8821a2ant_is_wifi_status_changed.pre_bt_hs_on = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@switch.table.btc8821a2ant_action_hid_a2dp = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\02\02\00\02\02", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.220 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.221 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.222 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.223 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.224 = internal global [5 x i64] [i64 3, i64 4, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.225 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.226 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.227 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.228 = internal global [12 x i64] [i64 10, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.229 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.230 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.231 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.232 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.233 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.234 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 3]
@__sancov_gen_cov_switch_values.235 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 3]
@__sancov_gen_cov_switch_values.236 = internal global [51 x i64] [i64 49, i64 8, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 71, i64 101, i64 102, i64 103, i64 104, i64 105, i64 106, i64 107, i64 108, i64 109, i64 110, i64 111, i64 112, i64 113, i64 114, i64 115, i64 116, i64 121, i64 122, i64 123, i64 124, i64 125, i64 126, i64 171]
@__sancov_gen_cov_switch_values.237 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.238 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.239 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.240 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.241 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.242 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 3]
@__sancov_gen_cov_switch_values.243 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.244 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.245 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.246 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.247 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.248 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.249 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.250 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.251 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 3]
@__sancov_gen_cov_switch_values.252 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 3]
@__sancov_gen_cov_switch_values.253 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.254 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.255 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.256 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 3]
@__sancov_gen_cov_switch_values.257 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 3]
@__sancov_gen_cov_switch_values.258 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.259 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.260 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.261 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 3]
@__sancov_gen_cov_switch_values.262 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 3]
@__sancov_gen_cov_switch_values.263 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.264 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.265 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.266 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.267 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.268 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.269 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 3]
@__sancov_gen_cov_switch_values.270 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 3]
@__sancov_gen_cov_switch_values.271 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 3]
@__sancov_gen_cov_switch_values.272 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.273 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.274 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.275 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.276 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.277 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 3]
@__sancov_gen_cov_switch_values.278 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 3]
@__sancov_gen_cov_switch_values.279 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 3]
@__sancov_gen_cov_switch_values.280 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.281 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.282 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.283 = internal global [8 x i64] [i64 6, i64 8, i64 5, i64 6, i64 7, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.284 = internal global [8 x i64] [i64 6, i64 8, i64 6, i64 7, i64 8, i64 14, i64 15, i64 16]
@__sancov_gen_cov_switch_values.285 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 3, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.286 = internal global [8 x i64] [i64 6, i64 8, i64 2, i64 3, i64 4, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.287 = internal global [8 x i64] [i64 6, i64 8, i64 5, i64 6, i64 7, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.288 = internal global [8 x i64] [i64 6, i64 8, i64 6, i64 7, i64 8, i64 14, i64 15, i64 16]
@__sancov_gen_cov_switch_values.289 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 3, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.290 = internal global [8 x i64] [i64 6, i64 8, i64 2, i64 3, i64 4, i64 10, i64 11, i64 12]
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3549, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3617, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3637, i32 14 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3639, i32 16 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3639, i32 38 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3643, i32 17 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3643, i32 29 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3646, i32 16 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3646, i32 38 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3647, i32 40 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3647, i32 48 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3652, i32 16 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3653, i32 6 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3663, i32 16 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3664, i32 6 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3667, i32 16 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3668, i32 6 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3673, i32 16 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3673, i32 39 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3679, i32 16 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3679, i32 42 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3690, i32 16 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3690, i32 43 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3691, i32 23 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3691, i32 30 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3692, i32 41 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3693, i32 41 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3693, i32 50 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3694, i32 22 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3696, i32 8 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3696, i32 19 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3699, i32 17 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3700, i32 7 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3710, i32 16 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3710, i32 33 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3711, i32 27 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3711, i32 42 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3715, i32 18 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3722, i32 16 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3723, i32 6 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3724, i32 30 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3724, i32 41 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3725, i32 30 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3725, i32 41 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3730, i32 6 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3731, i32 16 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3732, i32 6 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3738, i32 6 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3742, i32 17 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3743, i32 7 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3746, i32 39 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3752, i32 28 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3754, i32 16 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3754, i32 35 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3759, i32 16 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3760, i32 6 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3765, i32 16 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3766, i32 6 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3771, i32 6 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3777, i32 16 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3778, i32 6 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3784, i32 6 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3790, i32 6 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3797, i32 6 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3804, i32 6 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3807, i32 16 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3808, i32 6 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3811, i32 6 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3817, i32 6 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3828, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3835, i32 3 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3849, i32 3 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3853, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3864, i32 3 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3867, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3877, i32 3 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3880, i32 3 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3895, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3898, i32 3 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3925, i32 2 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3940, i32 3 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3964, i32 2 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3972, i32 4 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3975, i32 4 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3981, i32 3 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 4004, i32 4 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 4027, i32 4 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 4031, i32 5 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 4035, i32 6 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 4043, i32 5 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 4050, i32 6 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 4105, i32 3 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 4110, i32 3 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 4115, i32 3 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 4119, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 4123, i32 3 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 4149, i32 2 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 4161, i32 2 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 4164, i32 3 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 4167, i32 3 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 4179, i32 2 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 4188, i32 4 }
@___asan_gen_.597 = private unnamed_addr constant [21 x i8] c"glcoex_dm_8821a_2ant\00", align 1
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 22, i32 34 }
@___asan_gen_.600 = private unnamed_addr constant [22 x i8] c"glcoex_sta_8821a_2ant\00", align 1
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 24, i32 35 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 840, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 850, i32 3 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 856, i32 3 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 817, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 821, i32 2 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 825, i32 2 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 829, i32 2 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 1140, i32 2 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 1148, i32 3 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 1151, i32 3 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 150, i32 5 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 154, i32 5 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 160, i32 5 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 164, i32 5 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 57, i32 5 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 61, i32 5 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 67, i32 5 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 71, i32 5 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 77, i32 4 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 1048, i32 2 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 680, i32 2 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 686, i32 3 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 628, i32 2 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 630, i32 2 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 656, i32 2 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 662, i32 3 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 644, i32 2 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 734, i32 2 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 741, i32 3 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 722, i32 2 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 782, i32 2 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 791, i32 3 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 761, i32 2 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 28, i32 2 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 29, i32 2 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 30, i32 2 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 1009, i32 2 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 1015, i32 3 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 970, i32 2 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 333, i32 2 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3377, i32 3 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3385, i32 3 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3392, i32 3 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3400, i32 3 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3411, i32 3 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3424, i32 3 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3445, i32 2 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3449, i32 3 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3454, i32 4 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3462, i32 4 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3467, i32 4 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3472, i32 4 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3477, i32 4 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3482, i32 4 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3487, i32 4 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3492, i32 4 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3497, i32 4 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3502, i32 4 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3507, i32 4 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 3512, i32 4 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 440, i32 3 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 456, i32 4 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 461, i32 5 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 465, i32 5 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 470, i32 6 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 475, i32 6 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 485, i32 5 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 489, i32 5 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 494, i32 6 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 499, i32 6 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 508, i32 5 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 514, i32 6 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 519, i32 6 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 528, i32 6 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 534, i32 6 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 546, i32 5 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 552, i32 6 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 557, i32 6 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 565, i32 6 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 570, i32 6 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 581, i32 6 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 587, i32 6 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 601, i32 6 }
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 606, i32 6 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 1473, i32 3 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 1478, i32 3 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 1483, i32 3 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 1510, i32 2 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 1592, i32 3 }
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 1620, i32 4 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 1650, i32 4 }
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 1679, i32 5 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 1683, i32 5 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 1531, i32 3 }
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 1550, i32 3 }
@___asan_gen_.906 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 1699, i32 14 }
@___asan_gen_.909 = private unnamed_addr constant [3 x i8] c"dn\00", align 1
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 1699, i32 18 }
@___asan_gen_.912 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 1699, i32 22 }
@___asan_gen_.915 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 1699, i32 25 }
@___asan_gen_.918 = private unnamed_addr constant [11 x i8] c"wait_count\00", align 1
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 1699, i32 28 }
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 1707, i32 2 }
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 1712, i32 3 }
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 1785, i32 3 }
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 1787, i32 3 }
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 1810, i32 5 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 1840, i32 5 }
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 1862, i32 4 }
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 1866, i32 3 }
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 2575, i32 3 }
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 2587, i32 4 }
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 276, i32 2 }
@___asan_gen_.954 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 279, i32 2 }
@___asan_gen_.957 = private unnamed_addr constant [14 x i8] c"pre_wifi_busy\00", align 1
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 342, i32 14 }
@___asan_gen_.960 = private unnamed_addr constant [15 x i8] c"pre_under_4way\00", align 1
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 343, i32 14 }
@___asan_gen_.963 = private unnamed_addr constant [13 x i8] c"pre_bt_hs_on\00", align 1
@___asan_gen_.964 = private constant [68 x i8] c"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c\00", align 1
@___asan_gen_.965 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.964, i32 344, i32 14 }
@___asan_gen_.966 = private unnamed_addr constant [42 x i8] c"switch.table.btc8821a2ant_action_hid_a2dp\00", align 1
@llvm.compiler.used = appending global [226 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @glcoex_dm_8821a_2ant, ptr @glcoex_sta_8821a_2ant, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @btc8821a2ant_tdma_duration_adjust.up, ptr @btc8821a2ant_tdma_duration_adjust.dn, ptr @btc8821a2ant_tdma_duration_adjust.m, ptr @btc8821a2ant_tdma_duration_adjust.n, ptr @btc8821a2ant_tdma_duration_adjust.wait_count, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @btc8821a2ant_is_wifi_status_changed.pre_wifi_busy, ptr @btc8821a2ant_is_wifi_status_changed.pre_under_4way, ptr @btc8821a2ant_is_wifi_status_changed.pre_bt_hs_on, ptr @switch.table.btc8821a2ant_action_hid_a2dp], section "llvm.metadata"
@0 = internal global [226 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @glcoex_dm_8821a_2ant to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @glcoex_sta_8821a_2ant to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btc8821a2ant_tdma_duration_adjust.up to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btc8821a2ant_tdma_duration_adjust.dn to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btc8821a2ant_tdma_duration_adjust.m to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btc8821a2ant_tdma_duration_adjust.n to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btc8821a2ant_tdma_duration_adjust.wait_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btc8821a2ant_is_wifi_status_changed.pre_wifi_busy to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btc8821a2ant_is_wifi_status_changed.pre_under_4way to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btc8821a2ant_is_wifi_status_changed.pre_bt_hs_on to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.btc8821a2ant_action_hid_a2dp to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8821a2ant_init_hwconfig(ptr noundef %btcoexist) local_unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i = alloca [2 x i8], align 2
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
  store i32 %call, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 18), align 4
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
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %h2c_parameter.i) #4
  %btc_read_4byte.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 22
  %10 = ptrtoint ptr %btc_read_4byte.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %btc_read_4byte.i, align 4
  %call.i = tail call i32 %11(ptr noundef %btcoexist, i32 noundef 76) #4
  %and.i = and i32 %call.i, -25165825
  %or.i = or i32 %and.i, 16777216
  %btc_write_4byte.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 23
  %12 = ptrtoint ptr %btc_write_4byte.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %btc_write_4byte.i, align 4
  tail call void %13(ptr noundef %btcoexist, i32 noundef 76, i32 noundef %or.i) #4
  %14 = ptrtoint ptr %btc_write_4byte.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %btc_write_4byte.i, align 4
  tail call void %15(ptr noundef %btcoexist, i32 noundef 2420, i32 noundef 1023) #4
  %btdm_ant_pos.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 3
  %16 = ptrtoint ptr %btdm_ant_pos.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %btdm_ant_pos.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %cmp.i = icmp eq i8 %17, 1
  %spec.select = zext i1 %cmp.i to i8
  %18 = ptrtoint ptr %h2c_parameter.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %spec.select, ptr %h2c_parameter.i, align 2
  %arrayidx8.i = getelementptr inbounds [2 x i8], ptr %h2c_parameter.i, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %arrayidx8.i, align 1
  %btc_fill_h2c9.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %20 = ptrtoint ptr %btc_fill_h2c9.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %btc_fill_h2c9.i, align 4
  call void %21(ptr noundef %btcoexist, i8 noundef zeroext 101, i32 noundef 2, ptr noundef nonnull %h2c_parameter.i) #4
  %btc_write_1byte_bitmask.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 19
  %22 = ptrtoint ptr %btc_write_1byte_bitmask.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %btc_write_1byte_bitmask.i, align 4
  call void %23(ptr noundef %btcoexist, i32 noundef 3255, i32 noundef 48, i8 noundef zeroext 1) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %h2c_parameter.i) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 31), align 2
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 29), align 4
  call fastcc void @btc8821a2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext true, i32 noundef 1431655765, i32 noundef 1431655765, i32 noundef 16777215) #4
  %24 = ptrtoint ptr %btc_write_1byte to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %btc_write_1byte, align 4
  call void %25(ptr noundef %btcoexist, i32 noundef 1902, i32 noundef 4) #4
  %26 = ptrtoint ptr %btc_write_1byte to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %btc_write_1byte, align 4
  call void %27(ptr noundef %btcoexist, i32 noundef 1912, i32 noundef 3) #4
  %28 = ptrtoint ptr %btc_write_1byte_bitmask.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %btc_write_1byte_bitmask.i, align 4
  call void %29(ptr noundef %btcoexist, i32 noundef 64, i32 noundef 32, i8 noundef zeroext 1) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8821a2ant_pre_load_firmware(ptr noundef %btcoexist) local_unnamed_addr #0 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
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
define dso_local void @ex_btc8821a2ant_init_coex_dm(ptr noundef %btcoexist) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.1) #4
  tail call fastcc void @btc8821a2ant_init_coex_dm(ptr noundef %btcoexist)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8821a2ant_init_coex_dm(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i.i7 = alloca [1 x i8], align 1
  %h2c_parameter.i.i = alloca [1 x i8], align 1
  %low_pwr_disable.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 29), align 4
  tail call fastcc void @btc8821a2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1431655765, i32 noundef 16777215) #4
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
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 30), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext true, i1 noundef zeroext false, i8 noundef zeroext 1)
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %5 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adapter.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %6, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.103, i32 noundef 6) #4
  store i8 6, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 3), align 1
  %7 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  %9 = ptrtoint ptr %h2c_parameter.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 6, ptr %h2c_parameter.i.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %8, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef 6) #4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %8, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.134, i32 noundef 6) #4
  %btc_fill_h2c.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %10 = ptrtoint ptr %btc_fill_h2c.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %btc_fill_h2c.i.i, align 4
  call void %11(ptr noundef %btcoexist, i8 noundef zeroext 100, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  %12 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 3), align 1
  store i8 %12, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 2), align 2
  %13 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %14, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.103, i32 noundef 0) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 1), align 1
  %15 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i7) #4
  %17 = ptrtoint ptr %h2c_parameter.i.i7 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %h2c_parameter.i.i7, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %16, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.137, i32 noundef 0, i32 noundef 0) #4
  %18 = ptrtoint ptr %btc_fill_h2c.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %btc_fill_h2c.i.i, align 4
  call void %19(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i7) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i7) #4
  %20 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 1), align 1, !range !473
  store i8 %20, ptr @glcoex_dm_8821a_2ant, align 4
  call fastcc void @btc8821a2ant_sw_mechanism1(ptr noundef %btcoexist, i1 noundef zeroext false)
  call fastcc void @btc8821a2ant_dac_swing(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 24) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8821a2ant_display_coex_info(ptr noundef %btcoexist, ptr noundef %m) local_unnamed_addr #0 align 64 {
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
  %wifi_dot_11_chnl = alloca i8, align 1
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
  store i32 -1, ptr %wifi_bw, align 4, !annotation !474
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_traffic_dir) #4
  %9 = ptrtoint ptr %wifi_traffic_dir to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %wifi_traffic_dir, align 4, !annotation !474
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_dot_11_chnl) #4
  %10 = ptrtoint ptr %wifi_dot_11_chnl to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %wifi_dot_11_chnl, align 1, !annotation !474
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_hs_chnl) #4
  %11 = ptrtoint ptr %wifi_hs_chnl to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %wifi_hs_chnl, align 1, !annotation !474
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_ver) #4
  %12 = ptrtoint ptr %fw_ver to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %fw_ver, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bt_patch_ver) #4
  %13 = ptrtoint ptr %bt_patch_ver to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %bt_patch_ver, align 4
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.2) #4
  %pg_ant_num = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %pg_ant_num to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pg_ant_num, align 1
  %conv = zext i8 %15 to i32
  %btdm_ant_num = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %btdm_ant_num to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %btdm_ant_num, align 1
  %conv3 = zext i8 %17 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %conv, i32 noundef %conv3) #4
  %manual_control = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 13
  %18 = ptrtoint ptr %manual_control to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %manual_control, align 2, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not = icmp eq i8 %19, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %20 = ptrtoint ptr %stack_info2 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %stack_info2, align 2, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool4.not = icmp eq i8 %21, 0
  %cond = select i1 %tobool4.not, ptr @.str.10, ptr @.str.9
  %hci_version = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %hci_version to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %hci_version, align 2
  %conv6 = zext i16 %23 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull %cond, i32 noundef %conv6) #4
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
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 20130618, i32 noundef 20560, i32 noundef %29, i32 noundef %31, i32 noundef %31) #4
  %32 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %btc_get, align 4
  %call10 = call zeroext i1 %33(ptr noundef %btcoexist, i8 noundef zeroext 0, ptr noundef nonnull %bt_hs_on) #4
  %34 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %btc_get, align 4
  %call12 = call zeroext i1 %35(ptr noundef %btcoexist, i8 noundef zeroext 37, ptr noundef nonnull %wifi_dot_11_chnl) #4
  %36 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %btc_get, align 4
  %call14 = call zeroext i1 %37(ptr noundef %btcoexist, i8 noundef zeroext 39, ptr noundef nonnull %wifi_hs_chnl) #4
  %38 = ptrtoint ptr %wifi_dot_11_chnl to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %wifi_dot_11_chnl, align 1
  %conv15 = zext i8 %39 to i32
  %40 = ptrtoint ptr %bt_hs_on to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %bt_hs_on, align 1, !range !473
  %42 = zext i8 %41 to i32
  %43 = ptrtoint ptr %wifi_hs_chnl to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %wifi_hs_chnl, align 1
  %conv18 = zext i8 %44 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %conv15, i32 noundef %42, i32 noundef %conv18) #4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 41)) #4
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
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %50, i32 noundef %52) #4
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
  %60 = load i8, ptr %link, align 1, !range !473
  %61 = zext i8 %60 to i32
  %62 = ptrtoint ptr %roam to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %roam, align 1, !range !473
  %64 = zext i8 %63 to i32
  %65 = ptrtoint ptr %scan to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %scan, align 1, !range !473
  %67 = zext i8 %66 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef %61, i32 noundef %64, i32 noundef %67) #4
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
  %77 = load i8, ptr %wifi_under_5g, align 1, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool43.not = icmp eq i8 %77, 0
  %cond45 = select i1 %tobool43.not, ptr @.str.24, ptr @.str.23
  %78 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %wifi_bw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp = icmp eq i32 %79, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %79)
  %cmp47 = icmp eq i32 %79, 2
  %cond49 = select i1 %cmp47, ptr @.str.26, ptr @.str.27
  %cond50 = select i1 %cmp, ptr @.str.25, ptr %cond49
  %80 = ptrtoint ptr %wifi_busy to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %wifi_busy, align 1, !range !473
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
  %cond56 = select i1 %cmp54, ptr @.str.29, ptr @.str.30
  br label %cond.end57

cond.end57:                                       ; preds = %cond.false53, %if.end.cond.end57_crit_edge
  %cond58 = phi ptr [ %cond56, %cond.false53 ], [ @.str.28, %if.end.cond.end57_crit_edge ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull %cond45, ptr noundef nonnull %cond50, ptr noundef nonnull %cond58) #4
  %84 = ptrtoint ptr %stack_info2 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %stack_info2, align 2, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool60.not = icmp eq i8 %85, 0
  br i1 %tobool60.not, label %cond.end57.if.end70_crit_edge, label %if.then61

cond.end57.if.end70_crit_edge:                    ; preds = %cond.end57
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end70

if.then61:                                        ; preds = %cond.end57
  call void @__sanitizer_cov_trace_pc() #6
  %sco_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 4, i32 4
  %86 = ptrtoint ptr %sco_exist to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %sco_exist, align 2, !range !473
  %88 = zext i8 %87 to i32
  %hid_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 4, i32 7
  %89 = ptrtoint ptr %hid_exist to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %hid_exist, align 1, !range !473
  %91 = zext i8 %90 to i32
  %pan_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 4, i32 9
  %92 = ptrtoint ptr %pan_exist to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %pan_exist, align 1, !range !473
  %94 = zext i8 %93 to i32
  %a2dp_exist = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 4, i32 6
  %95 = ptrtoint ptr %a2dp_exist to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %a2dp_exist, align 2, !range !473
  %97 = zext i8 %96 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef %88, i32 noundef %91, i32 noundef %94, i32 noundef %97) #4
  %btc_disp_dbg_msg = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 30
  %98 = ptrtoint ptr %btc_disp_dbg_msg to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %btc_disp_dbg_msg, align 4
  call void %99(ptr noundef %btcoexist, i8 noundef zeroext 1, ptr noundef %m) #4
  br label %if.end70

if.end70:                                         ; preds = %if.then61, %cond.end57.if.end70_crit_edge
  %100 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 20), align 2
  %101 = and i8 %100, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool73.not = icmp eq i8 %101, 0
  %cond74 = select i1 %tobool73.not, ptr @.str.36, ptr @.str.35
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull %cond74) #4
  %102 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 17, i32 0), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool78.not = icmp eq i32 %102, 0
  br i1 %tobool78.not, label %if.end70.for.inc_crit_edge, label %if.then79

if.end70.for.inc_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then79:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.146, ptr noundef getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 16, i32 0), i32 noundef %102) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then79, %if.end70.for.inc_crit_edge
  %103 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 17, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool78.not.1 = icmp eq i32 %103, 0
  br i1 %tobool78.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then79.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

if.then79.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.147, ptr noundef getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 16, i32 1), i32 noundef %103) #4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then79.1, %for.inc.for.inc.1_crit_edge
  %104 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 17, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool78.not.2 = icmp eq i32 %104, 0
  br i1 %tobool78.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then79.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2

if.then79.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.148, ptr noundef getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 16, i32 2), i32 noundef %104) #4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then79.2, %for.inc.1.for.inc.2_crit_edge
  %105 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 6), align 2, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool89.not = icmp eq i8 %105, 0
  %cond91 = select i1 %tobool89.not, ptr @.str.41, ptr @.str.40
  %106 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 5), align 1, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool92.not = icmp eq i8 %106, 0
  %cond94 = select i1 %tobool92.not, ptr @.str.43, ptr @.str.42
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, ptr noundef nonnull %cond91, ptr noundef nonnull %cond94) #4
  %btc_disp_dbg_msg95 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 30
  %107 = ptrtoint ptr %btc_disp_dbg_msg95 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %btc_disp_dbg_msg95, align 4
  call void %108(ptr noundef %btcoexist, i8 noundef zeroext 3, ptr noundef %m) #4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.44) #4
  %109 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 28), align 1, !range !473
  %110 = zext i8 %109 to i32
  %111 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 26), align 1, !range !473
  %112 = zext i8 %111 to i32
  %113 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 23), align 4, !range !473
  %114 = zext i8 %113 to i32
  %115 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 24), align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, i32 noundef %110, i32 noundef %112, i32 noundef %114, i32 noundef %115) #4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.47) #4
  %116 = ptrtoint ptr %manual_control to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %manual_control, align 2, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool103.not = icmp eq i8 %117, 0
  br i1 %tobool103.not, label %if.then104, label %for.inc.2.if.end111_crit_edge

for.inc.2.if.end111_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end111

if.then104:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  %118 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 7), align 1
  %conv106 = zext i8 %118 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, ptr noundef getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 8), i32 noundef %conv106) #4
  %119 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 1), align 1, !range !473
  %120 = zext i8 %119 to i32
  %121 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 4), align 4, !range !473
  %122 = zext i8 %121 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.50, i32 noundef %120, i32 noundef %122) #4
  br label %if.end111

if.end111:                                        ; preds = %if.then104, %for.inc.2.if.end111_crit_edge
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.51) #4
  %123 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 18), align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, i32 noundef %123) #4
  %btc_read_1byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 17
  %124 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %btc_read_1byte, align 4
  %call112 = call zeroext i8 %125(ptr noundef %btcoexist, i32 noundef 1912) #4
  %126 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %btc_read_1byte, align 4
  %call115 = call zeroext i8 %127(ptr noundef %btcoexist, i32 noundef 1740) #4
  %conv118 = zext i8 %call112 to i32
  %conv120 = zext i8 %call115 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, i32 noundef %conv118, i32 noundef %conv120) #4
  %128 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %btc_read_1byte, align 4
  %call122 = call zeroext i8 %129(ptr noundef %btcoexist, i32 noundef 2267) #4
  %130 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %btc_read_1byte, align 4
  %call125 = call zeroext i8 %131(ptr noundef %btcoexist, i32 noundef 3163) #4
  %132 = lshr i8 %call122, 5
  %133 = and i8 %132, 3
  %134 = zext i8 %133 to i32
  %135 = lshr i8 %call125, 1
  %136 = and i8 %135, 31
  %137 = zext i8 %136 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, i32 noundef %134, i32 noundef %137) #4
  %btc_read_4byte = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 22
  %138 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %btc_read_4byte, align 4
  %call134 = call i32 %139(ptr noundef %btcoexist, i32 noundef 3252) #4
  %and137 = and i32 %call134, 255
  %and139 = lshr i32 %call134, 28
  %shr140 = and i32 %and139, 3
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.58, i32 noundef %and137, i32 noundef %shr140) #4
  %140 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %btc_read_1byte, align 4
  %call142 = call zeroext i8 %141(ptr noundef %btcoexist, i32 noundef 64) #4
  %142 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %btc_read_4byte, align 4
  %call145 = call i32 %143(ptr noundef %btcoexist, i32 noundef 76) #4
  %144 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %btc_read_4byte, align 4
  %call148 = call i32 %145(ptr noundef %btcoexist, i32 noundef 2420) #4
  %conv151 = zext i8 %call142 to i32
  %and153 = lshr i32 %call145, 23
  %shr154 = and i32 %and153, 3
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, i32 noundef %conv151, i32 noundef %shr154, i32 noundef %call148) #4
  %146 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %btc_read_4byte, align 4
  %call157 = call i32 %147(ptr noundef %btcoexist, i32 noundef 1360) #4
  %148 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %btc_read_1byte, align 4
  %call160 = call zeroext i8 %149(ptr noundef %btcoexist, i32 noundef 1314) #4
  %conv164 = zext i8 %call160 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.61, i32 noundef %call157, i32 noundef %conv164) #4
  %150 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %btc_read_4byte, align 4
  %call166 = call i32 %151(ptr noundef %btcoexist, i32 noundef 3152) #4
  %152 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %btc_read_1byte, align 4
  %call169 = call zeroext i8 %153(ptr noundef %btcoexist, i32 noundef 2570) #4
  %conv173 = zext i8 %call169 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.62, i32 noundef %call166, i32 noundef %conv173) #4
  %154 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %btc_read_4byte, align 4
  %call175 = call i32 %155(ptr noundef %btcoexist, i32 noundef 3912) #4
  %156 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %btc_read_1byte, align 4
  %call178 = call zeroext i8 %157(ptr noundef %btcoexist, i32 noundef 2651) #4
  %158 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %btc_read_1byte, align 4
  %call181 = call zeroext i8 %159(ptr noundef %btcoexist, i32 noundef 2652) #4
  %conv185 = zext i8 %call178 to i32
  %shl = shl nuw nsw i32 %conv185, 8
  %conv187 = zext i8 %call181 to i32
  %add = or i32 %shl, %conv187
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.63, i32 noundef %call175, i32 noundef %add) #4
  %160 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %btc_read_4byte, align 4
  %call189 = call i32 %161(ptr noundef %btcoexist, i32 noundef 1728) #4
  %162 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %btc_read_4byte, align 4
  %call192 = call i32 %163(ptr noundef %btcoexist, i32 noundef 1732) #4
  %164 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %btc_read_4byte, align 4
  %call195 = call i32 %165(ptr noundef %btcoexist, i32 noundef 1736) #4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.64, i32 noundef %call189, i32 noundef %call192, i32 noundef %call195) #4
  %166 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 8), align 4
  %167 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 7), align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, i32 noundef %166, i32 noundef %167) #4
  %168 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 10), align 4
  %169 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 9), align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.67, i32 noundef %168, i32 noundef %169) #4
  %170 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %btc_read_1byte, align 4
  %call201 = call zeroext i8 %171(ptr noundef %btcoexist, i32 noundef 1051) #4
  %conv204 = zext i8 %call201 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.68, i32 noundef %conv204) #4
  %172 = ptrtoint ptr %btc_disp_dbg_msg95 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %btc_disp_dbg_msg95, align 4
  call void %173(ptr noundef %btcoexist, i8 noundef zeroext 0, ptr noundef %m) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bt_patch_ver) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_ver) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_hs_chnl) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_dot_11_chnl) #4
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
define dso_local void @ex_btc8821a2ant_ips_notify(ptr noundef %btcoexist, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i16 = alloca [1 x i8], align 1
  %low_pwr_disable.i.i = alloca i8, align 1
  %h2c_parameter.i.i = alloca [1 x i8], align 1
  %h2c_parameter.i = alloca [2 x i8], align 2
  %fw_ver.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %2 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.220)
  switch i8 %type, label %entry.if.end7_crit_edge [
    i8 1, label %if.then
    i8 0, label %if.then5
  ]

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then:                                          ; preds = %entry
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.69) #4
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 6), align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %h2c_parameter.i) #4
  %3 = ptrtoint ptr %h2c_parameter.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 256, ptr %h2c_parameter.i, align 2
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

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %btc_fill_h2c.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %13 = ptrtoint ptr %btc_fill_h2c.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %btc_fill_h2c.i, align 4
  call void %14(ptr noundef %btcoexist, i8 noundef zeroext 110, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i) #4
  br label %btc8821a2ant_wifi_off_hw_cfg.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %btc_write_1byte.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %btc_write_1byte.i, align 4
  call void %16(ptr noundef %btcoexist, i32 noundef 1893, i32 noundef 24) #4
  br label %btc8821a2ant_wifi_off_hw_cfg.exit

btc8821a2ant_wifi_off_hw_cfg.exit:                ; preds = %if.else.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_ver.i) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %h2c_parameter.i) #4
  %17 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %18, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.112) #4
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 4), align 4
  %19 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  %21 = ptrtoint ptr %h2c_parameter.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %h2c_parameter.i.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %20, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.151, i32 noundef 1) #4
  %btc_fill_h2c.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %22 = ptrtoint ptr %btc_fill_h2c.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %btc_fill_h2c.i.i, align 4
  call void %23(ptr noundef %btcoexist, i8 noundef zeroext 99, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  %24 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 4), align 4, !range !473
  store i8 %24, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 5), align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i.i) #4
  %25 = ptrtoint ptr %low_pwr_disable.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %low_pwr_disable.i.i, align 1
  %btc_set.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %26 = ptrtoint ptr %btc_set.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %btc_set.i.i, align 4
  %call5.i.i = call zeroext i1 %27(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i.i) #4
  %28 = ptrtoint ptr %btc_set.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %btc_set.i.i, align 4
  %call7.i.i = call zeroext i1 %29(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 30), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i.i) #4
  call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 1) #4
  call fastcc void @btc8821a2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 6) #4
  call fastcc void @btc8821a2ant_dec_bt_pwr(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 0) #4
  call fastcc void @btc8821a2ant_sw_mechanism1(ptr noundef %btcoexist, i1 noundef zeroext false) #4
  call fastcc void @btc8821a2ant_dac_swing(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 24) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 29), align 4
  call fastcc void @btc8821a2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1431655765, i32 noundef 16777215) #4
  br label %if.end7

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.70) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 6), align 2
  tail call void @ex_btc8821a2ant_init_hwconfig(ptr noundef %btcoexist)
  tail call fastcc void @btc8821a2ant_init_coex_dm(ptr noundef %btcoexist)
  %30 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i16) #4
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 15), align 1
  %32 = ptrtoint ptr %h2c_parameter.i16 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %h2c_parameter.i16, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %31, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.152, i32 noundef 1) #4
  %btc_fill_h2c.i18 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %33 = ptrtoint ptr %btc_fill_h2c.i18 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %btc_fill_h2c.i18, align 4
  call void %34(ptr noundef %btcoexist, i8 noundef zeroext 97, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i16) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i16) #4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %btc8821a2ant_wifi_off_hw_cfg.exit, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8821a2ant_ignore_wlan_act(ptr noundef %btcoexist, i1 noundef zeroext %force_exec, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool1 = zext i1 %enable to i8
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %cond = select i1 %force_exec, ptr @.str.103, ptr @.str.104
  %cond3 = select i1 %enable, ptr @.str.112, ptr @.str.113
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.149, ptr noundef nonnull %cond, ptr noundef nonnull %cond3) #4
  store i8 %frombool1, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 4), align 4
  br i1 %force_exec, label %entry.if.end19_crit_edge, label %if.then

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %.pre = zext i1 %enable to i32
  br label %if.end19

if.then:                                          ; preds = %entry
  %2 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 5), align 1, !range !473
  %3 = zext i8 %2 to i32
  %4 = zext i1 %enable to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.150, i32 noundef %3, i32 noundef %4) #4
  %5 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 5), align 1, !range !473
  %6 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 4), align 4, !range !473
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %6)
  %cmp = icmp eq i8 %5, %6
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end19_crit_edge

if.then.if.end19_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end19:                                         ; preds = %if.then.if.end19_crit_edge, %entry.if.end19_crit_edge
  %conv3.i.pre-phi = phi i32 [ %.pre, %entry.if.end19_crit_edge ], [ %4, %if.then.if.end19_crit_edge ]
  %7 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i) #4
  %9 = ptrtoint ptr %h2c_parameter.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool1, ptr %h2c_parameter.i, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %8, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.151, i32 noundef %conv3.i.pre-phi) #4
  %btc_fill_h2c.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %10 = ptrtoint ptr %btc_fill_h2c.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %btc_fill_h2c.i, align 4
  call void %11(ptr noundef %btcoexist, i8 noundef zeroext 99, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i) #4
  %12 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 4), align 4, !range !473
  store i8 %12, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 5), align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8821a2ant_coex_all_off(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
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
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 30), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 1)
  call fastcc void @btc8821a2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 6)
  call fastcc void @btc8821a2ant_dec_bt_pwr(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 0)
  call fastcc void @btc8821a2ant_sw_mechanism1(ptr noundef %btcoexist, i1 noundef zeroext false)
  call fastcc void @btc8821a2ant_dac_swing(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 24) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 29), align 4
  call fastcc void @btc8821a2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1431655765, i32 noundef 16777215) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8821a2ant_lps_notify(ptr nocapture noundef readonly %btcoexist, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %2 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.221)
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
  %.str.72.sink = phi ptr [ @.str.72, %if.then5 ], [ @.str.71, %entry.if.end7.sink.split_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.72.sink) #4
  store i8 %type, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 5), align 1
  br label %if.end7

if.end7:                                          ; preds = %if.end7.sink.split, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8821a2ant_scan_notify(ptr nocapture noundef readonly %btcoexist, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %2 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.222)
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
  %.str.74.sink = phi ptr [ @.str.74, %if.then5 ], [ @.str.73, %entry.if.end6.sink.split_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.74.sink) #4
  br label %if.end6

if.end6:                                          ; preds = %if.end6.sink.split, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8821a2ant_connect_notify(ptr nocapture noundef readonly %btcoexist, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %2 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.223)
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
  %.str.76.sink = phi ptr [ @.str.76, %if.then5 ], [ @.str.75, %entry.if.end6.sink.split_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.76.sink) #4
  br label %if.end6

if.end6:                                          ; preds = %if.end6.sink.split, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8821a2ant_media_status_notify(ptr noundef %btcoexist, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  %h2c_parameter = alloca [3 x i8], align 1
  %wifi_bw = alloca i32, align 4
  %wifi_central_chnl = alloca i8, align 1
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
  store i32 -1, ptr %wifi_bw, align 4, !annotation !474
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_central_chnl) #4
  %4 = ptrtoint ptr %wifi_central_chnl to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %wifi_central_chnl, align 1, !annotation !474
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %type)
  %cmp = icmp eq i8 %type, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.78) #4
  %btc_get = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %5 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %btc_get, align 4
  %call = call zeroext i1 %6(ptr noundef %btcoexist, i8 noundef zeroext 38, ptr noundef nonnull %wifi_central_chnl) #4
  br label %if.end27

land.lhs.true:                                    ; preds = %entry
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.77) #4
  %btc_get53 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %7 = ptrtoint ptr %btc_get53 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %btc_get53, align 4
  %call54 = call zeroext i1 %8(ptr noundef %btcoexist, i8 noundef zeroext 38, ptr noundef nonnull %wifi_central_chnl) #4
  %9 = ptrtoint ptr %wifi_central_chnl to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %wifi_central_chnl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %10)
  %cmp6 = icmp ult i8 %10, 15
  br i1 %cmp6, label %if.then8, label %land.lhs.true.if.end27_crit_edge

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %h2c_parameter to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %h2c_parameter, align 1
  %arrayidx9 = getelementptr inbounds [3 x i8], ptr %h2c_parameter, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %10, ptr %arrayidx9, align 1
  %13 = ptrtoint ptr %btc_get53 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %btc_get53, align 4
  %call11 = call zeroext i1 %14(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef nonnull %wifi_bw) #4
  %arrayidx15 = getelementptr inbounds [3 x i8], ptr %h2c_parameter, i32 0, i32 2
  %15 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 48, ptr %arrayidx15, align 1
  br label %if.end27

if.end27:                                         ; preds = %if.then8, %land.lhs.true.if.end27_crit_edge, %if.end
  %16 = ptrtoint ptr %h2c_parameter to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %h2c_parameter, align 1
  store i8 %17, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 41), align 2
  %arrayidx30 = getelementptr inbounds [3 x i8], ptr %h2c_parameter, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx30, align 1
  store i8 %19, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 41, i32 1), align 1
  %arrayidx33 = getelementptr inbounds [3 x i8], ptr %h2c_parameter, i32 0, i32 2
  %20 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx33, align 1
  store i8 %21, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 41, i32 2), align 4
  %conv37 = zext i8 %17 to i32
  %shl = shl nuw nsw i32 %conv37, 16
  %conv39 = zext i8 %19 to i32
  %shl40 = shl nuw nsw i32 %conv39, 8
  %or = or i32 %shl40, %shl
  %conv42 = zext i8 %21 to i32
  %or43 = or i32 %or, %conv42
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.79, i32 noundef %or43) #4
  %btc_fill_h2c = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %22 = ptrtoint ptr %btc_fill_h2c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %btc_fill_h2c, align 4
  call void %23(ptr noundef %btcoexist, i8 noundef zeroext 102, i32 noundef 3, ptr noundef nonnull %h2c_parameter) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_central_chnl) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_bw) #4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %h2c_parameter) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8821a2ant_special_packet_notify(ptr nocapture noundef readonly %btcoexist, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.80) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8821a2ant_bt_info_notify(ptr noundef %btcoexist, ptr nocapture noundef readonly %tmp_buf, i8 noundef zeroext %length) local_unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i = alloca [3 x i8], align 1
  %wifi_central_chnl.i = alloca i8, align 1
  %bt_busy = alloca i8, align 1
  %limited_dig = alloca i8, align 1
  %wifi_connected = alloca i8, align 1
  %wifi_under_5g = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_busy) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %limited_dig) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_connected) #4
  %2 = ptrtoint ptr %wifi_connected to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %wifi_connected, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_under_5g) #4
  %3 = ptrtoint ptr %wifi_under_5g to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %wifi_under_5g, align 1
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 15), align 1
  %btc_get = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %4 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %btc_get, align 4
  %call = call zeroext i1 %5(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef nonnull %wifi_under_5g) #4
  %6 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %btc_get, align 4
  %call2 = call zeroext i1 %7(ptr noundef %btcoexist, i8 noundef zeroext 2, ptr noundef nonnull %wifi_connected) #4
  %8 = ptrtoint ptr %tmp_buf to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tmp_buf, align 1
  %10 = and i8 %9, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp = icmp ugt i8 %10, 2
  %spec.store.select = select i1 %cmp, i8 0, i8 %10
  %idxprom = zext i8 %spec.store.select to i32
  %arrayidx6 = getelementptr %struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 17, i32 %idxprom
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx6, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %arrayidx6, align 4
  %conv8 = zext i8 %length to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.81, i32 noundef %idxprom, i32 noundef %conv8) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %length)
  %cmp11315.not = icmp eq i8 %length, 0
  br i1 %cmp11315.not, label %entry.for.end_crit_edge, label %if.end25.peel

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end25.peel:                                    ; preds = %entry
  %sub = add nsw i32 %conv8, -1
  %13 = ptrtoint ptr %tmp_buf to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %tmp_buf, align 1
  %arrayidx18.peel = getelementptr %struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 16, i32 %idxprom, i32 0
  %15 = ptrtoint ptr %arrayidx18.peel to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %arrayidx18.peel, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp28.peel = icmp eq i32 %sub, 0
  %16 = ptrtoint ptr %tmp_buf to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tmp_buf, align 1
  %conv33.peel = zext i8 %17 to i32
  br i1 %cmp28.peel, label %for.inc.peel.thread, label %for.inc.peel

for.inc.peel:                                     ; preds = %if.end25.peel
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.83, i32 noundef %conv33.peel) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %length)
  %exitcond.peel.not = icmp eq i8 %length, 1
  br i1 %exitcond.peel.not, label %for.inc.peel.for.end_crit_edge, label %if.end25.peel325

for.inc.peel.for.end_crit_edge:                   ; preds = %for.inc.peel
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.peel.thread:                              ; preds = %if.end25.peel
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.82, i32 noundef %conv33.peel) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %length)
  %exitcond.peel.not336 = icmp eq i8 %length, 1
  br i1 %exitcond.peel.not336, label %for.inc.peel.thread.for.end_crit_edge, label %if.end25.peel325.thread

for.inc.peel.thread.for.end_crit_edge:            ; preds = %for.inc.peel.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end25.peel325.thread:                          ; preds = %for.inc.peel.thread
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx14.peel321337 = getelementptr i8, ptr %tmp_buf, i32 1
  %18 = ptrtoint ptr %arrayidx14.peel321337 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx14.peel321337, align 1
  %arrayidx18.peel322338 = getelementptr %struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 16, i32 %idxprom, i32 1
  %20 = ptrtoint ptr %arrayidx18.peel322338 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %arrayidx18.peel322338, align 1
  br label %for.inc.peel332

if.end25.peel325:                                 ; preds = %for.inc.peel
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx14.peel321 = getelementptr i8, ptr %tmp_buf, i32 1
  %21 = ptrtoint ptr %arrayidx14.peel321 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx14.peel321, align 1
  %arrayidx18.peel322 = getelementptr %struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 16, i32 %idxprom, i32 1
  %23 = ptrtoint ptr %arrayidx18.peel322 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %arrayidx18.peel322, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp28.peel327 = icmp eq i32 %sub, 1
  %spec.select344 = select i1 %cmp28.peel327, ptr @.str.82, ptr @.str.83
  br label %for.inc.peel332

for.inc.peel332:                                  ; preds = %if.end25.peel325, %if.end25.peel325.thread
  %arrayidx14.peel321.sink = phi ptr [ %arrayidx14.peel321337, %if.end25.peel325.thread ], [ %arrayidx14.peel321, %if.end25.peel325 ]
  %.str.82.sink = phi ptr [ @.str.83, %if.end25.peel325.thread ], [ %spec.select344, %if.end25.peel325 ]
  %24 = ptrtoint ptr %arrayidx14.peel321.sink to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx14.peel321.sink, align 1
  %conv33.peel331 = zext i8 %25 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.82.sink, i32 noundef %conv33.peel331) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %length)
  %exitcond.peel334.not = icmp eq i8 %length, 2
  br i1 %exitcond.peel334.not, label %for.inc.peel332.for.end_crit_edge, label %for.inc.peel332.if.end25_crit_edge

for.inc.peel332.if.end25_crit_edge:               ; preds = %for.inc.peel332
  br label %if.end25

for.inc.peel332.for.end_crit_edge:                ; preds = %for.inc.peel332
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end25:                                         ; preds = %if.end25.if.end25_crit_edge, %for.inc.peel332.if.end25_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %if.end25.if.end25_crit_edge ], [ 2, %for.inc.peel332.if.end25_crit_edge ]
  %arrayidx14 = getelementptr i8, ptr %tmp_buf, i32 %indvars.iv
  %26 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx14, align 1
  %arrayidx18 = getelementptr %struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 16, i32 %idxprom, i32 %indvars.iv
  %28 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %arrayidx18, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %indvars.iv)
  %cmp28 = icmp eq i32 %sub, %indvars.iv
  %29 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx14, align 1
  %conv33 = zext i8 %30 to i32
  %.str.82..str.83 = select i1 %cmp28, ptr @.str.82, ptr @.str.83
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.82..str.83, i32 noundef %conv33) #4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %conv8
  br i1 %exitcond.not, label %if.end25.for.end_crit_edge, label %if.end25.if.end25_crit_edge, !llvm.loop !475

if.end25.if.end25_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.end25.for.end_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %if.end25.for.end_crit_edge, %for.inc.peel332.for.end_crit_edge, %for.inc.peel.thread.for.end_crit_edge, %for.inc.peel.for.end_crit_edge, %entry.for.end_crit_edge
  %bt_info.0.lcssa = phi i8 [ 0, %entry.for.end_crit_edge ], [ 0, %for.inc.peel.for.end_crit_edge ], [ %25, %for.inc.peel332.for.end_crit_edge ], [ 0, %for.inc.peel.thread.for.end_crit_edge ], [ %25, %if.end25.for.end_crit_edge ]
  %manual_control = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 13
  %31 = ptrtoint ptr %manual_control to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %manual_control, align 2, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not = icmp eq i8 %32, 0
  br i1 %tobool.not, label %if.end40, label %if.then39

if.then39:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.84) #4
  br label %cleanup

if.end40:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.store.select)
  %cmp42.not = icmp eq i8 %spec.store.select, 0
  br i1 %cmp42.not, label %if.end40.if.end111_crit_edge, label %if.then44

if.end40.if.end111_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end111

if.then44:                                        ; preds = %if.end40
  %arrayidx48 = getelementptr %struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 16, i32 %idxprom, i32 2
  %33 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx48, align 2
  %35 = and i8 %34, 15
  store i8 %35, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 19), align 1
  %arrayidx55 = getelementptr %struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 16, i32 %idxprom, i32 3
  %36 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx55, align 1
  %mul = shl i8 %37, 1
  %add = add i8 %mul, 10
  store i8 %add, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 11), align 4
  %arrayidx61 = getelementptr %struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 16, i32 %idxprom, i32 4
  %38 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx61, align 2
  store i8 %39, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 20), align 2
  %40 = load i8, ptr %arrayidx48, align 2
  %41 = lshr i8 %40, 6
  %.lobit = and i8 %41, 1
  store i8 %.lobit, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 12), align 1
  %btc_set = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %42 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %btc_set, align 4
  %call70 = call zeroext i1 %43(ptr noundef %btcoexist, i8 noundef zeroext 7, ptr noundef getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 12)) #4
  %44 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 12), align 1, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool72.not = icmp eq i8 %44, 0
  br i1 %tobool72.not, label %if.then44.if.end74_crit_edge, label %if.then73

if.then44.if.end74_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end74

if.then73:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.85) #4
  %btc_set_bt_reg = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 33
  %45 = ptrtoint ptr %btc_set_bt_reg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %btc_set_bt_reg, align 4
  call void %46(ptr noundef %btcoexist, i8 noundef zeroext 0, i32 noundef 60, i32 noundef 1) #4
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %if.then44.if.end74_crit_edge
  %47 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 20), align 2
  %48 = and i8 %47, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool78.not = icmp eq i8 %48, 0
  br i1 %tobool78.not, label %if.end74.if.end86_crit_edge, label %if.then79

if.end74.if.end86_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end86

if.then79:                                        ; preds = %if.end74
  %49 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %btc_get, align 4
  %call81 = call zeroext i1 %50(ptr noundef %btcoexist, i8 noundef zeroext 2, ptr noundef nonnull %wifi_connected) #4
  %51 = ptrtoint ptr %wifi_connected to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %wifi_connected, align 1, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool82.not = icmp eq i8 %52, 0
  br i1 %tobool82.not, label %if.else84, label %if.then83

if.then83:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #6
  call void @ex_btc8821a2ant_media_status_notify(ptr noundef %btcoexist, i8 noundef zeroext 1)
  br label %if.end86

if.else84:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #6
  %53 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %h2c_parameter.i) #4
  %55 = call ptr @memset(ptr %h2c_parameter.i, i32 0, i32 3)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_central_chnl.i) #4
  %56 = ptrtoint ptr %wifi_central_chnl.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -1, ptr %wifi_central_chnl.i, align 1, !annotation !474
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %54, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.78) #4
  %57 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %btc_get, align 4
  %call.i = call zeroext i1 %58(ptr noundef %btcoexist, i8 noundef zeroext 38, ptr noundef nonnull %wifi_central_chnl.i) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 41), align 2
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 41, i32 1), align 1
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 41, i32 2), align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %54, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.79, i32 noundef 0) #4
  %btc_fill_h2c.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %59 = ptrtoint ptr %btc_fill_h2c.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %btc_fill_h2c.i, align 4
  call void %60(ptr noundef %btcoexist, i8 noundef zeroext 102, i32 noundef 3, ptr noundef nonnull %h2c_parameter.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_central_chnl.i) #4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %h2c_parameter.i) #4
  br label %if.end86

if.end86:                                         ; preds = %if.else84, %if.then83, %if.end74.if.end86_crit_edge
  %61 = ptrtoint ptr %manual_control to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %manual_control, align 2, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool88.not = icmp eq i8 %62, 0
  br i1 %tobool88.not, label %land.lhs.true, label %if.end86.if.end111_crit_edge

if.end86.if.end111_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end111

land.lhs.true:                                    ; preds = %if.end86
  %63 = ptrtoint ptr %wifi_under_5g to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %wifi_under_5g, align 1, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool89.not = icmp eq i8 %64, 0
  br i1 %tobool89.not, label %if.then90, label %land.lhs.true.if.end111_crit_edge

land.lhs.true.if.end111_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end111

if.then90:                                        ; preds = %land.lhs.true
  %65 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 20), align 2
  %conv92 = zext i8 %65 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.86, i32 noundef %conv92) #4
  %66 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 20), align 2
  %67 = and i8 %66, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool96.not = icmp eq i8 %67, 0
  %68 = ptrtoint ptr %wifi_connected to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %wifi_connected, align 1, !range !473
  %70 = zext i8 %69 to i32
  br i1 %tobool96.not, label %if.else103, label %if.then97

if.then97:                                        ; preds = %if.then90
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.87, i32 noundef %70) #4
  %71 = ptrtoint ptr %wifi_connected to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %wifi_connected, align 1, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool100.not = icmp eq i8 %72, 0
  br i1 %tobool100.not, label %if.then97.if.end111_crit_edge, label %if.then97.if.end111.sink.split_crit_edge

if.then97.if.end111.sink.split_crit_edge:         ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end111.sink.split

if.then97.if.end111_crit_edge:                    ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end111

if.else103:                                       ; preds = %if.then90
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.89, i32 noundef %70) #4
  %73 = ptrtoint ptr %wifi_connected to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %wifi_connected, align 1, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool106.not = icmp eq i8 %74, 0
  br i1 %tobool106.not, label %if.else103.if.end111.sink.split_crit_edge, label %if.else103.if.end111_crit_edge

if.else103.if.end111_crit_edge:                   ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end111

if.else103.if.end111.sink.split_crit_edge:        ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end111.sink.split

if.end111.sink.split:                             ; preds = %if.else103.if.end111.sink.split_crit_edge, %if.then97.if.end111.sink.split_crit_edge
  %.str.90.sink = phi ptr [ @.str.88, %if.then97.if.end111.sink.split_crit_edge ], [ @.str.90, %if.else103.if.end111.sink.split_crit_edge ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.90.sink) #4
  call fastcc void @btc8821a2ant_ignore_wlan_act(ptr noundef %btcoexist, i1 noundef zeroext true, i1 noundef zeroext %tobool96.not)
  br label %if.end111

if.end111:                                        ; preds = %if.end111.sink.split, %if.else103.if.end111_crit_edge, %if.then97.if.end111_crit_edge, %land.lhs.true.if.end111_crit_edge, %if.end86.if.end111_crit_edge, %if.end40.if.end111_crit_edge
  %conv112 = zext i8 %bt_info.0.lcssa to i32
  %and113 = lshr i8 %bt_info.0.lcssa, 2
  %and113.lobit = and i8 %and113, 1
  store i8 %and113.lobit, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 18), align 4
  %and120 = and i32 %conv112, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %if.then122, label %if.else123

if.then122:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #6
  %75 = call ptr @memset(ptr @glcoex_sta_8821a_2ant, i32 0, i32 5)
  call fastcc void @btc8821a2ant_update_bt_link_info(ptr noundef %btcoexist)
  br label %if.end204

if.else123:                                       ; preds = %if.end111
  store i8 1, ptr @glcoex_sta_8821a_2ant, align 4
  %and126.lobit = lshr i8 %bt_info.0.lcssa, 7
  store i8 %and126.lobit, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 4), align 4
  %and134 = lshr i8 %bt_info.0.lcssa, 6
  %and134.lobit = and i8 %and134, 1
  store i8 %and134.lobit, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 2), align 2
  %and142 = lshr i8 %bt_info.0.lcssa, 5
  %and142.lobit = and i8 %and142, 1
  store i8 %and142.lobit, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 3), align 1
  %and150 = and i32 %conv112, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150)
  %tobool151.not = icmp eq i32 %and150, 0
  %not.tobool151.not = xor i1 %tobool151.not, true
  %storemerge309 = zext i1 %not.tobool151.not to i8
  store i8 %storemerge309, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 1), align 1
  %76 = and i32 %conv112, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %77 = icmp ne i32 %76, 0
  %tobool151.not.not = xor i1 %tobool151.not, true
  %brmerge345 = select i1 %77, i1 true, i1 %tobool151.not.not
  br i1 %brmerge345, label %if.else123.if.else178_crit_edge, label %if.then165

if.else123.if.else178_crit_edge:                  ; preds = %if.else123
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else178

if.then165:                                       ; preds = %if.else123
  %78 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 7), align 4
  %79 = load i32, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 8), align 4
  %add166 = add i32 %79, %78
  call void @__sanitizer_cov_trace_const_cmp4(i32 159, i32 %add166)
  %cmp167 = icmp ugt i32 %add166, 159
  br i1 %cmp167, label %if.then169, label %if.then165.if.else178_crit_edge

if.then165.if.else178_crit_edge:                  ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else178

if.then169:                                       ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #6
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 3), align 1
  br label %if.else178

if.else178:                                       ; preds = %if.then169, %if.then165.if.else178_crit_edge, %if.else123.if.else178_crit_edge
  call fastcc void @btc8821a2ant_update_bt_link_info(ptr noundef %btcoexist)
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bt_info.0.lcssa)
  %cmp180 = icmp eq i8 %bt_info.0.lcssa, 1
  br i1 %cmp180, label %if.else178.if.end204_crit_edge, label %if.else184

if.else178.if.end204_crit_edge:                   ; preds = %if.else178
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end204

if.else184:                                       ; preds = %if.else178
  %80 = and i32 %conv112, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %if.else193, label %if.else184.if.end204_crit_edge

if.else184.if.end204_crit_edge:                   ; preds = %if.else184
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end204

if.else193:                                       ; preds = %if.else184
  call void @__sanitizer_cov_trace_pc() #6
  %and195 = and i32 %conv112, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and195)
  %tobool196.not = icmp eq i32 %and195, 0
  %.343 = select i1 %tobool196.not, i8 6, i8 3
  %.str.95..str.94 = select i1 %tobool196.not, ptr @.str.95, ptr @.str.94
  br label %if.end204

if.end204:                                        ; preds = %if.else193, %if.else184.if.end204_crit_edge, %if.else178.if.end204_crit_edge, %if.then122
  %.sink342 = phi i8 [ 0, %if.then122 ], [ 1, %if.else178.if.end204_crit_edge ], [ 4, %if.else184.if.end204_crit_edge ], [ %.343, %if.else193 ]
  %.str.92.sink = phi ptr [ @.str.91, %if.then122 ], [ @.str.92, %if.else178.if.end204_crit_edge ], [ @.str.93, %if.else184.if.end204_crit_edge ], [ %.str.95..str.94, %if.else193 ]
  store i8 %.sink342, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 40), align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.92.sink) #4
  %82 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 40), align 1
  %.off = add i8 %82, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off)
  %switch = icmp ult i8 %.off, 3
  %spec.select = zext i1 %switch to i8
  %83 = ptrtoint ptr %bt_busy to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %spec.select, ptr %bt_busy, align 1
  %84 = ptrtoint ptr %limited_dig to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %spec.select, ptr %limited_dig, align 1
  %btc_set222 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %85 = ptrtoint ptr %btc_set222 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %btc_set222, align 4
  %call223 = call zeroext i1 %86(ptr noundef %btcoexist, i8 noundef zeroext 1, ptr noundef nonnull %bt_busy) #4
  store i8 %spec.select, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 37), align 2
  %87 = ptrtoint ptr %btc_set222 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %btc_set222, align 4
  %call228 = call zeroext i1 %88(ptr noundef %btcoexist, i8 noundef zeroext 2, ptr noundef nonnull %limited_dig) #4
  call fastcc void @btc8821a2ant_run_coexist_mechanism(ptr noundef %btcoexist)
  br label %cleanup

cleanup:                                          ; preds = %if.end204, %if.then39
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_under_5g) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_connected) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %limited_dig) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_busy) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8821a2ant_update_bt_link_info(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
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
  %3 = load i8, ptr @glcoex_sta_8821a_2ant, align 4, !range !473
  %4 = ptrtoint ptr %bt_link_info1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %bt_link_info1, align 1
  %5 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 1), align 1, !range !473
  %sco_exist4 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 2
  %6 = ptrtoint ptr %sco_exist4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %sco_exist4, align 1
  %7 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 2), align 2, !range !473
  %a2dp_exist7 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 4
  %8 = ptrtoint ptr %a2dp_exist7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %a2dp_exist7, align 1
  %9 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 4), align 4, !range !473
  %pan_exist10 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 8
  %10 = ptrtoint ptr %pan_exist10 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %pan_exist10, align 1
  %11 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 3), align 1, !range !473
  %hid_exist13 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 6
  %12 = ptrtoint ptr %hid_exist13 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %hid_exist13, align 1
  %13 = ptrtoint ptr %bt_hs_on to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bt_hs_on, align 1, !range !473
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
  %18 = load i8, ptr %pan_exist10, align 1, !range !473
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
  %21 = load i8, ptr %pan_exist10, align 1, !range !473
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
  %27 = load i8, ptr %pan_exist10, align 1, !range !473
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
define internal fastcc void @btc8821a2ant_run_coexist_mechanism(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i.i.i137 = alloca [1 x i8], align 1
  %low_pwr_disable.i.i = alloca i8, align 1
  %wifi_rssi.i44.i = alloca i32, align 4
  %wifi_rssi.i.i = alloca i32, align 4
  %wifi_connected.i = alloca i8, align 1
  %low_pwr_disable.i = alloca i8, align 1
  %scan.i = alloca i8, align 1
  %link.i = alloca i8, align 1
  %roam.i = alloca i8, align 1
  %bt_hs_on.i = alloca i8, align 1
  %h2c_parameter.i.i.i = alloca [1 x i8], align 1
  %low_pwr_disable.i.i.i = alloca i8, align 1
  %wifi_under_5g = alloca i8, align 1
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
  %bt_link_info1 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_under_5g) #4
  %2 = ptrtoint ptr %wifi_under_5g to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %wifi_under_5g, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_link_status) #4
  %3 = ptrtoint ptr %wifi_link_status to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %wifi_link_status, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %miracast_plus_bt) #4
  %4 = ptrtoint ptr %miracast_plus_bt to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %miracast_plus_bt, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %scan) #4
  %5 = ptrtoint ptr %scan to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %scan, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link) #4
  %6 = ptrtoint ptr %link to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %link, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %roam) #4
  %7 = ptrtoint ptr %roam to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %roam, align 1
  %manual_control = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 13
  %8 = ptrtoint ptr %manual_control to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %manual_control, align 2, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.153) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %btc_get = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %10 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %btc_get, align 4
  %call = call zeroext i1 %11(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef nonnull %wifi_under_5g) #4
  %12 = ptrtoint ptr %wifi_under_5g to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %wifi_under_5g, align 1, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool2.not = icmp eq i8 %13, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.154) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i.i.i) #4
  %14 = ptrtoint ptr %low_pwr_disable.i.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %low_pwr_disable.i.i.i, align 1
  %btc_set.i.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %15 = ptrtoint ptr %btc_set.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %btc_set.i.i.i, align 4
  %call5.i.i.i = call zeroext i1 %16(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i.i.i) #4
  %17 = ptrtoint ptr %btc_set.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %btc_set.i.i.i, align 4
  %call7.i.i.i = call zeroext i1 %18(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 30), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i.i.i) #4
  call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 1) #4
  call fastcc void @btc8821a2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 6) #4
  call fastcc void @btc8821a2ant_dec_bt_pwr(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 0) #4
  call fastcc void @btc8821a2ant_sw_mechanism1(ptr noundef %btcoexist, i1 noundef zeroext false) #4
  call fastcc void @btc8821a2ant_dac_swing(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 24) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 29), align 4
  call fastcc void @btc8821a2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1431655765, i32 noundef 16777215) #4
  %19 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adapter, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %20, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.112) #4
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 4), align 4
  %21 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 5), align 1, !range !473
  %22 = zext i8 %21 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %20, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.150, i32 noundef %22, i32 noundef 1) #4
  %23 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 5), align 1, !range !473
  %24 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 4), align 4, !range !473
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %24)
  %cmp.i.i = icmp eq i8 %23, %24
  br i1 %cmp.i.i, label %if.then3.cleanup_crit_edge, label %if.end19.i.i

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end19.i.i:                                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i.i) #4
  %27 = ptrtoint ptr %h2c_parameter.i.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %h2c_parameter.i.i.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %26, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.151, i32 noundef 1) #4
  %btc_fill_h2c.i.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %28 = ptrtoint ptr %btc_fill_h2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %btc_fill_h2c.i.i.i, align 4
  call void %29(ptr noundef %btcoexist, i8 noundef zeroext 99, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i.i) #4
  %30 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 4), align 4, !range !473
  store i8 %30, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 5), align 1
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %31 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 6), align 2, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool5.not = icmp eq i8 %31, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.155) #4
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %32 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_hs_on.i) #4
  %34 = ptrtoint ptr %bt_hs_on.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %bt_hs_on.i, align 1
  %35 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %btc_get, align 4
  %call.i = call zeroext i1 %36(ptr noundef %btcoexist, i8 noundef zeroext 0, ptr noundef nonnull %bt_hs_on.i) #4
  %37 = ptrtoint ptr %bt_link_info1 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %bt_link_info1, align 1, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i = icmp eq i8 %38, 0
  br i1 %tobool.not.i, label %if.end7.cleanup.sink.split.i_crit_edge, label %if.end.i

if.end7.cleanup.sink.split.i_crit_edge:           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %if.end7
  %sco_exist.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 2
  %39 = ptrtoint ptr %sco_exist.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %sco_exist.i, align 1, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool2.not.i = icmp eq i8 %40, 0
  %not.tobool2.not.i = xor i1 %tobool2.not.i, true
  %spec.select.i = zext i1 %not.tobool2.not.i to i8
  %hid_exist.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 6
  %41 = ptrtoint ptr %hid_exist.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %hid_exist.i, align 1, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool5.not.i = icmp eq i8 %42, 0
  %inc7.i = select i1 %tobool2.not.i, i8 1, i8 2
  %num_of_diff_profile.1.i = select i1 %tobool5.not.i, i8 %spec.select.i, i8 %inc7.i
  %pan_exist.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 8
  %43 = ptrtoint ptr %pan_exist.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %pan_exist.i, align 1, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool9.not.i = icmp eq i8 %44, 0
  %not.tobool9.not.i = xor i1 %tobool9.not.i, true
  %inc11.i = zext i1 %not.tobool9.not.i to i8
  %num_of_diff_profile.2.i = add nuw nsw i8 %num_of_diff_profile.1.i, %inc11.i
  %a2dp_exist.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 4
  %45 = ptrtoint ptr %a2dp_exist.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %a2dp_exist.i, align 1, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool13.not.i = icmp eq i8 %46, 0
  %not.tobool13.not.i = xor i1 %tobool13.not.i, true
  %inc15.i = zext i1 %not.tobool13.not.i to i8
  %num_of_diff_profile.3.i = add nuw nsw i8 %num_of_diff_profile.2.i, %inc15.i
  %trunc.i = trunc i8 %num_of_diff_profile.3.i to i4
  %47 = zext i4 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.224)
  switch i4 %trunc.i, label %if.else169.i [
    i4 1, label %if.then18.i
    i4 2, label %if.then45.i
    i4 3, label %if.then109.i
  ]

if.then18.i:                                      ; preds = %if.end.i
  %48 = select i1 %tobool2.not.i, i1 %tobool5.not.i, i1 false
  %.str.174.mux.i = select i1 %tobool2.not.i, ptr @.str.175, ptr @.str.174
  %.mux.i = select i1 %tobool2.not.i, i8 2, i8 1
  %49 = select i1 %48, i1 %tobool13.not.i, i1 false
  %.str.174.mux.mux.i = select i1 %48, ptr @.str.176, ptr %.str.174.mux.i
  %.mux.mux.i = select i1 %48, i8 3, i8 %.mux.i
  br i1 %49, label %if.else29.i, label %if.then18.i.cleanup.sink.split.i_crit_edge

if.then18.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

if.else29.i:                                      ; preds = %if.then18.i
  br i1 %tobool9.not.i, label %if.else29.i.btc8821a2ant_action_algorithm.exit_crit_edge, label %if.then32.i

if.else29.i.btc8821a2ant_action_algorithm.exit_crit_edge: ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8821a2ant_action_algorithm.exit

if.then32.i:                                      ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #6
  %50 = ptrtoint ptr %bt_hs_on.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %bt_hs_on.i, align 1, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool33.not.i = icmp eq i8 %51, 0
  %.str.178..str.177.i = select i1 %tobool33.not.i, ptr @.str.178, ptr @.str.177
  %..i = select i1 %tobool33.not.i, i8 5, i8 6
  br label %cleanup.sink.split.i

if.then45.i:                                      ; preds = %if.end.i
  br i1 %tobool2.not.i, label %if.else67.i, label %if.then48.i

if.then48.i:                                      ; preds = %if.then45.i
  %52 = select i1 %tobool5.not.i, i1 %tobool13.not.i, i1 false
  %.str.179.mux.i = select i1 %tobool5.not.i, ptr @.str.180, ptr @.str.179
  br i1 %52, label %if.else56.i, label %if.then48.i.cleanup.sink.split.i_crit_edge

if.then48.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

if.else56.i:                                      ; preds = %if.then48.i
  br i1 %tobool9.not.i, label %if.else56.i.btc8821a2ant_action_algorithm.exit_crit_edge, label %if.then59.i

if.else56.i.btc8821a2ant_action_algorithm.exit_crit_edge: ; preds = %if.else56.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8821a2ant_action_algorithm.exit

if.then59.i:                                      ; preds = %if.else56.i
  call void @__sanitizer_cov_trace_pc() #6
  %53 = ptrtoint ptr %bt_hs_on.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %bt_hs_on.i, align 1, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool60.not.i = icmp eq i8 %54, 0
  %.str.182..str.181.i = select i1 %tobool60.not.i, ptr @.str.182, ptr @.str.181
  br label %cleanup.sink.split.i

if.else67.i:                                      ; preds = %if.then45.i
  br i1 %tobool5.not.i, label %if.else88.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.else67.i
  br i1 %tobool13.not.i, label %land.lhs.true79.i, label %land.lhs.true.i.cleanup.sink.split.i_crit_edge

land.lhs.true.i.cleanup.sink.split.i_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

land.lhs.true79.i:                                ; preds = %land.lhs.true.i
  br i1 %tobool9.not.i, label %land.lhs.true79.i.btc8821a2ant_action_algorithm.exit_crit_edge, label %if.then83.i

land.lhs.true79.i.btc8821a2ant_action_algorithm.exit_crit_edge: ; preds = %land.lhs.true79.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8821a2ant_action_algorithm.exit

if.then83.i:                                      ; preds = %land.lhs.true79.i
  call void @__sanitizer_cov_trace_pc() #6
  %55 = ptrtoint ptr %bt_hs_on.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %bt_hs_on.i, align 1, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool84.not.i = icmp eq i8 %56, 0
  %.str.185..str.184.i = select i1 %tobool84.not.i, ptr @.str.185, ptr @.str.184
  %.276.i = select i1 %tobool84.not.i, i8 8, i8 2
  br label %cleanup.sink.split.i

if.else88.i:                                      ; preds = %if.else67.i
  %brmerge.i = select i1 %tobool9.not.i, i1 true, i1 %tobool13.not.i
  br i1 %brmerge.i, label %if.else88.i.btc8821a2ant_action_algorithm.exit_crit_edge, label %if.then96.i

if.else88.i.btc8821a2ant_action_algorithm.exit_crit_edge: ; preds = %if.else88.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8821a2ant_action_algorithm.exit

if.then96.i:                                      ; preds = %if.else88.i
  call void @__sanitizer_cov_trace_pc() #6
  %57 = ptrtoint ptr %bt_hs_on.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %bt_hs_on.i, align 1, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool97.not.i = icmp eq i8 %58, 0
  %.str.187..str.186.i = select i1 %tobool97.not.i, ptr @.str.187, ptr @.str.186
  %.277.i = select i1 %tobool97.not.i, i8 7, i8 4
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
  br i1 %tobool9.not.i, label %land.lhs.true125.i.btc8821a2ant_action_algorithm.exit_crit_edge, label %if.then129.i

land.lhs.true125.i.btc8821a2ant_action_algorithm.exit_crit_edge: ; preds = %land.lhs.true125.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8821a2ant_action_algorithm.exit

if.then129.i:                                     ; preds = %land.lhs.true125.i
  call void @__sanitizer_cov_trace_pc() #6
  %59 = ptrtoint ptr %bt_hs_on.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %bt_hs_on.i, align 1, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool130.not.i = icmp eq i8 %60, 0
  %.str.190..str.189.i = select i1 %tobool130.not.i, ptr @.str.190, ptr @.str.189
  br label %cleanup.sink.split.i

if.else134.i:                                     ; preds = %if.then112.i
  %brmerge269.i = select i1 %tobool9.not.i, i1 true, i1 %tobool13.not.i
  br i1 %brmerge269.i, label %if.else134.i.btc8821a2ant_action_algorithm.exit_crit_edge, label %if.then142.i

if.else134.i.btc8821a2ant_action_algorithm.exit_crit_edge: ; preds = %if.else134.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8821a2ant_action_algorithm.exit

if.then142.i:                                     ; preds = %if.else134.i
  call void @__sanitizer_cov_trace_pc() #6
  %61 = ptrtoint ptr %bt_hs_on.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %bt_hs_on.i, align 1, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool143.not.i = icmp eq i8 %62, 0
  %.str.192..str.191.i = select i1 %tobool143.not.i, ptr @.str.192, ptr @.str.191
  br label %cleanup.sink.split.i

if.else150.i:                                     ; preds = %if.then109.i
  %brmerge270.i = select i1 %tobool5.not.i, i1 true, i1 %tobool9.not.i
  %brmerge271.i = select i1 %brmerge270.i, i1 true, i1 %tobool13.not.i
  br i1 %brmerge271.i, label %if.else150.i.btc8821a2ant_action_algorithm.exit_crit_edge, label %if.then162.i

if.else150.i.btc8821a2ant_action_algorithm.exit_crit_edge: ; preds = %if.else150.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8821a2ant_action_algorithm.exit

if.then162.i:                                     ; preds = %if.else150.i
  call void @__sanitizer_cov_trace_pc() #6
  %63 = ptrtoint ptr %bt_hs_on.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %bt_hs_on.i, align 1, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool163.not.i = icmp eq i8 %64, 0
  %.str.194..str.193.i = select i1 %tobool163.not.i, ptr @.str.194, ptr @.str.193
  %.278.i = select i1 %tobool163.not.i, i8 9, i8 10
  br label %cleanup.sink.split.i

if.else169.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %num_of_diff_profile.3.i)
  %cmp171.i = icmp ult i8 %num_of_diff_profile.3.i, 3
  %brmerge272.i = select i1 %cmp171.i, i1 true, i1 %tobool2.not.i
  %brmerge273.i = select i1 %brmerge272.i, i1 true, i1 %tobool5.not.i
  %brmerge274.i = select i1 %brmerge273.i, i1 true, i1 %tobool9.not.i
  %brmerge275.i = select i1 %brmerge274.i, i1 true, i1 %tobool13.not.i
  br i1 %brmerge275.i, label %if.else169.i.btc8821a2ant_action_algorithm.exit_crit_edge, label %if.then188.i

if.else169.i.btc8821a2ant_action_algorithm.exit_crit_edge: ; preds = %if.else169.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8821a2ant_action_algorithm.exit

if.then188.i:                                     ; preds = %if.else169.i
  call void @__sanitizer_cov_trace_pc() #6
  %65 = ptrtoint ptr %bt_hs_on.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %bt_hs_on.i, align 1, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool189.not.i = icmp eq i8 %66, 0
  %.str.196..str.195.i = select i1 %tobool189.not.i, ptr @.str.196, ptr @.str.195
  %67 = xor i8 %66, 1
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then188.i, %if.then162.i, %if.then142.i, %if.then129.i, %land.lhs.true116.i.cleanup.sink.split.i_crit_edge, %if.then96.i, %if.then83.i, %land.lhs.true.i.cleanup.sink.split.i_crit_edge, %if.then59.i, %if.then48.i.cleanup.sink.split.i_crit_edge, %if.then32.i, %if.then18.i.cleanup.sink.split.i_crit_edge, %if.end7.cleanup.sink.split.i_crit_edge
  %.str.175.sink.i = phi ptr [ @.str.173, %if.end7.cleanup.sink.split.i_crit_edge ], [ %.str.174.mux.mux.i, %if.then18.i.cleanup.sink.split.i_crit_edge ], [ %.str.178..str.177.i, %if.then32.i ], [ %.str.179.mux.i, %if.then48.i.cleanup.sink.split.i_crit_edge ], [ %.str.182..str.181.i, %if.then59.i ], [ @.str.183, %land.lhs.true.i.cleanup.sink.split.i_crit_edge ], [ %.str.185..str.184.i, %if.then83.i ], [ %.str.187..str.186.i, %if.then96.i ], [ @.str.188, %land.lhs.true116.i.cleanup.sink.split.i_crit_edge ], [ %.str.190..str.189.i, %if.then129.i ], [ %.str.192..str.191.i, %if.then142.i ], [ %.str.194..str.193.i, %if.then162.i ], [ %.str.196..str.195.i, %if.then188.i ]
  %retval.0.ph.i = phi i8 [ 0, %if.end7.cleanup.sink.split.i_crit_edge ], [ %.mux.mux.i, %if.then18.i.cleanup.sink.split.i_crit_edge ], [ %..i, %if.then32.i ], [ 1, %if.then48.i.cleanup.sink.split.i_crit_edge ], [ 1, %if.then59.i ], [ 10, %land.lhs.true.i.cleanup.sink.split.i_crit_edge ], [ %.276.i, %if.then83.i ], [ %.277.i, %if.then96.i ], [ 1, %land.lhs.true116.i.cleanup.sink.split.i_crit_edge ], [ 1, %if.then129.i ], [ 1, %if.then142.i ], [ %.278.i, %if.then162.i ], [ %67, %if.then188.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %33, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.175.sink.i) #4
  br label %btc8821a2ant_action_algorithm.exit

btc8821a2ant_action_algorithm.exit:               ; preds = %cleanup.sink.split.i, %if.else169.i.btc8821a2ant_action_algorithm.exit_crit_edge, %if.else150.i.btc8821a2ant_action_algorithm.exit_crit_edge, %if.else134.i.btc8821a2ant_action_algorithm.exit_crit_edge, %land.lhs.true125.i.btc8821a2ant_action_algorithm.exit_crit_edge, %if.else88.i.btc8821a2ant_action_algorithm.exit_crit_edge, %land.lhs.true79.i.btc8821a2ant_action_algorithm.exit_crit_edge, %if.else56.i.btc8821a2ant_action_algorithm.exit_crit_edge, %if.else29.i.btc8821a2ant_action_algorithm.exit_crit_edge
  %retval.0.i = phi i8 [ 0, %if.else29.i.btc8821a2ant_action_algorithm.exit_crit_edge ], [ 0, %if.else56.i.btc8821a2ant_action_algorithm.exit_crit_edge ], [ 0, %if.else88.i.btc8821a2ant_action_algorithm.exit_crit_edge ], [ 0, %if.else134.i.btc8821a2ant_action_algorithm.exit_crit_edge ], [ 0, %if.else150.i.btc8821a2ant_action_algorithm.exit_crit_edge ], [ 0, %if.else169.i.btc8821a2ant_action_algorithm.exit_crit_edge ], [ 0, %land.lhs.true79.i.btc8821a2ant_action_algorithm.exit_crit_edge ], [ 0, %land.lhs.true125.i.btc8821a2ant_action_algorithm.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_hs_on.i) #4
  %68 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 18), align 4, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool9.not = icmp eq i8 %68, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %retval.0.i)
  %cmp.not = icmp eq i8 %retval.0.i, 6
  %or.cond = select i1 %tobool9.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %if.end12, label %if.then11

if.then11:                                        ; preds = %btc8821a2ant_action_algorithm.exit
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.156) #4
  %69 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_connected.i) #4
  %71 = ptrtoint ptr %wifi_connected.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %wifi_connected.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  %72 = ptrtoint ptr %low_pwr_disable.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 1, ptr %low_pwr_disable.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %scan.i) #4
  %73 = ptrtoint ptr %scan.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %scan.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link.i) #4
  %74 = ptrtoint ptr %link.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %link.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %roam.i) #4
  %75 = ptrtoint ptr %roam.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %roam.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_rssi.i.i) #4
  %76 = ptrtoint ptr %wifi_rssi.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %wifi_rssi.i.i, align 4
  %77 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %btc_get, align 4
  %call.i.i = call zeroext i1 %78(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi.i.i) #4
  %79 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 14, i32 0), align 1
  %80 = zext i8 %79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.225)
  switch i8 %79, label %if.else19.i.i [
    i8 2, label %if.then11.if.then14.i.i_crit_edge
    i8 5, label %if.then11.if.then14.i.i_crit_edge144
  ]

if.then11.if.then14.i.i_crit_edge144:             ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i.i

if.then11.if.then14.i.i_crit_edge:                ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i.i

if.then14.i.i:                                    ; preds = %if.then11.if.then14.i.i_crit_edge, %if.then11.if.then14.i.i_crit_edge144
  %81 = ptrtoint ptr %wifi_rssi.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %wifi_rssi.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %82)
  %cmp16.not.i.i = icmp slt i32 %82, 17
  %.str.117..str.116.i.i = select i1 %cmp16.not.i.i, ptr @.str.117, ptr @.str.116
  %..i.i = select i1 %cmp16.not.i.i, i8 5, i8 0
  br label %btc8821a2ant_wifi_rssi_state.exit.i

if.else19.i.i:                                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  %83 = ptrtoint ptr %wifi_rssi.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %wifi_rssi.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %84)
  %cmp21.i.i = icmp slt i32 %84, 15
  %.str.118..str.119.i.i = select i1 %cmp21.i.i, ptr @.str.118, ptr @.str.119
  %.1.i.i = select i1 %cmp21.i.i, i8 2, i8 3
  br label %btc8821a2ant_wifi_rssi_state.exit.i

btc8821a2ant_wifi_rssi_state.exit.i:              ; preds = %if.else19.i.i, %if.then14.i.i
  %.str.117.sink.i.i = phi ptr [ %.str.117..str.116.i.i, %if.then14.i.i ], [ %.str.118..str.119.i.i, %if.else19.i.i ]
  %wifi_rssi_state.0.i.i = phi i8 [ %..i.i, %if.then14.i.i ], [ %.1.i.i, %if.else19.i.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %70, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.117.sink.i.i) #4
  store i8 %wifi_rssi_state.0.i.i, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 14, i32 0), align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i.i) #4
  %85 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_rssi.i44.i) #4
  %87 = ptrtoint ptr %wifi_rssi.i44.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %wifi_rssi.i44.i, align 4
  %88 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %btc_get, align 4
  %call.i47.i = call zeroext i1 %89(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi.i44.i) #4
  %90 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 14, i32 1), align 4
  %91 = zext i8 %90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.226)
  switch i8 %90, label %if.else19.i55.i [
    i8 2, label %btc8821a2ant_wifi_rssi_state.exit.i.if.then14.i51.i_crit_edge
    i8 5, label %btc8821a2ant_wifi_rssi_state.exit.i.if.then14.i51.i_crit_edge145
  ]

btc8821a2ant_wifi_rssi_state.exit.i.if.then14.i51.i_crit_edge145: ; preds = %btc8821a2ant_wifi_rssi_state.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i51.i

btc8821a2ant_wifi_rssi_state.exit.i.if.then14.i51.i_crit_edge: ; preds = %btc8821a2ant_wifi_rssi_state.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i51.i

if.then14.i51.i:                                  ; preds = %btc8821a2ant_wifi_rssi_state.exit.i.if.then14.i51.i_crit_edge, %btc8821a2ant_wifi_rssi_state.exit.i.if.then14.i51.i_crit_edge145
  %92 = ptrtoint ptr %wifi_rssi.i44.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %wifi_rssi.i44.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %93)
  %cmp16.not.i48.i = icmp slt i32 %93, 44
  %.str.117..str.116.i49.i = select i1 %cmp16.not.i48.i, ptr @.str.117, ptr @.str.116
  %..i50.i = select i1 %cmp16.not.i48.i, i8 5, i8 0
  br label %btc8821a2ant_wifi_rssi_state.exit58.i

if.else19.i55.i:                                  ; preds = %btc8821a2ant_wifi_rssi_state.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %94 = ptrtoint ptr %wifi_rssi.i44.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %wifi_rssi.i44.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %95)
  %cmp21.i52.i = icmp slt i32 %95, 42
  %.str.118..str.119.i53.i = select i1 %cmp21.i52.i, ptr @.str.118, ptr @.str.119
  %.1.i54.i = select i1 %cmp21.i52.i, i8 2, i8 3
  br label %btc8821a2ant_wifi_rssi_state.exit58.i

btc8821a2ant_wifi_rssi_state.exit58.i:            ; preds = %if.else19.i55.i, %if.then14.i51.i
  %.str.117.sink.i56.i = phi ptr [ %.str.117..str.116.i49.i, %if.then14.i51.i ], [ %.str.118..str.119.i53.i, %if.else19.i55.i ]
  %wifi_rssi_state.0.i57.i = phi i8 [ %..i50.i, %if.then14.i51.i ], [ %.1.i54.i, %if.else19.i55.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %86, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.117.sink.i56.i) #4
  store i8 %wifi_rssi_state.0.i57.i, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 14, i32 1), align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i44.i) #4
  %96 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %adapter, align 4
  %98 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 13), align 2
  %99 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 11), align 4
  %100 = zext i8 %98 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.227)
  switch i8 %98, label %if.else17.i.i [
    i8 2, label %btc8821a2ant_wifi_rssi_state.exit58.i.if.then12.i.i_crit_edge
    i8 5, label %btc8821a2ant_wifi_rssi_state.exit58.i.if.then12.i.i_crit_edge146
  ]

btc8821a2ant_wifi_rssi_state.exit58.i.if.then12.i.i_crit_edge146: ; preds = %btc8821a2ant_wifi_rssi_state.exit58.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i.i

btc8821a2ant_wifi_rssi_state.exit58.i.if.then12.i.i_crit_edge: ; preds = %btc8821a2ant_wifi_rssi_state.exit58.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i.i

if.then12.i.i:                                    ; preds = %btc8821a2ant_wifi_rssi_state.exit58.i.if.then12.i.i_crit_edge, %btc8821a2ant_wifi_rssi_state.exit58.i.if.then12.i.i_crit_edge146
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %99)
  %cmp14.not.i.i = icmp ult i8 %99, 48
  %.str.124..str.123.i.i = select i1 %cmp14.not.i.i, ptr @.str.124, ptr @.str.123
  %..i60.i = select i1 %cmp14.not.i.i, i8 5, i8 0
  br label %btc8821a2ant_bt_rssi_state.exit.i

if.else17.i.i:                                    ; preds = %btc8821a2ant_wifi_rssi_state.exit58.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %99)
  %cmp19.i.i = icmp ult i8 %99, 46
  %.str.125..str.126.i.i = select i1 %cmp19.i.i, ptr @.str.125, ptr @.str.126
  %.116.i.i = select i1 %cmp19.i.i, i8 2, i8 3
  br label %btc8821a2ant_bt_rssi_state.exit.i

btc8821a2ant_bt_rssi_state.exit.i:                ; preds = %if.else17.i.i, %if.then12.i.i
  %.str.125.sink.i.i = phi ptr [ %.str.124..str.123.i.i, %if.then12.i.i ], [ %.str.125..str.126.i.i, %if.else17.i.i ]
  %bt_rssi_state.0.i.i = phi i8 [ %..i60.i, %if.then12.i.i ], [ %.116.i.i, %if.else17.i.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %97, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.125.sink.i.i) #4
  store i8 %bt_rssi_state.0.i.i, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 13), align 2
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %101 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %btc_set.i, align 4
  %call3.i = call zeroext i1 %102(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i) #4
  %103 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %btc_get, align 4
  %call4.i = call zeroext i1 %104(ptr noundef %btcoexist, i8 noundef zeroext 2, ptr noundef nonnull %wifi_connected.i) #4
  %105 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %btc_get, align 4
  %call6.i = call zeroext i1 %106(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %scan.i) #4
  %107 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %btc_get, align 4
  %call8.i = call zeroext i1 %108(ptr noundef %btcoexist, i8 noundef zeroext 6, ptr noundef nonnull %link.i) #4
  %109 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %btc_get, align 4
  %call10.i = call zeroext i1 %110(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %roam.i) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i.i) #4
  %111 = ptrtoint ptr %low_pwr_disable.i.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 0, ptr %low_pwr_disable.i.i, align 1
  %112 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %btc_set.i, align 4
  %call5.i.i = call zeroext i1 %113(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i.i) #4
  %114 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %btc_set.i, align 4
  %call7.i.i = call zeroext i1 %115(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 30), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i.i) #4
  %116 = ptrtoint ptr %scan.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %scan.i, align 1, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool.not.i139 = icmp eq i8 %117, 0
  br i1 %tobool.not.i139, label %lor.lhs.false.i, label %btc8821a2ant_bt_rssi_state.exit.i.if.then.i_crit_edge

btc8821a2ant_bt_rssi_state.exit.i.if.then.i_crit_edge: ; preds = %btc8821a2ant_bt_rssi_state.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %btc8821a2ant_bt_rssi_state.exit.i
  %118 = ptrtoint ptr %link.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %link.i, align 1, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool11.not.i = icmp eq i8 %119, 0
  br i1 %tobool11.not.i, label %lor.lhs.false12.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

lor.lhs.false12.i:                                ; preds = %lor.lhs.false.i
  %120 = ptrtoint ptr %roam.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %roam.i, align 1, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool13.not.i140 = icmp eq i8 %121, 0
  br i1 %tobool13.not.i140, label %if.else.i, label %lor.lhs.false12.i.if.then.i_crit_edge

lor.lhs.false12.i.if.then.i_crit_edge:            ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false12.i.if.then.i_crit_edge, %lor.lhs.false.i.if.then.i_crit_edge, %btc8821a2ant_bt_rssi_state.exit.i.if.then.i_crit_edge
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %70, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.197) #4
  store i8 15, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 29), align 4
  call fastcc void @btc8821a2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1440568797, i32 noundef -1431655766, i32 noundef 16777215) #4
  call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 22) #4
  br label %btc8821a2ant_action_bt_inquiry.exit

if.else.i:                                        ; preds = %lor.lhs.false12.i
  %122 = ptrtoint ptr %wifi_connected.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %wifi_connected.i, align 1, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool14.not.i = icmp eq i8 %123, 0
  br i1 %tobool14.not.i, label %if.else16.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %70, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.198) #4
  store i8 15, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 29), align 4
  call fastcc void @btc8821a2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1440568797, i32 noundef -1431655766, i32 noundef 16777215) #4
  call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 22) #4
  br label %btc8821a2ant_action_bt_inquiry.exit

if.else16.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %70, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.199) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 29), align 4
  call fastcc void @btc8821a2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1431655765, i32 noundef 16777215) #4
  call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 1) #4
  br label %btc8821a2ant_action_bt_inquiry.exit

btc8821a2ant_action_bt_inquiry.exit:              ; preds = %if.else16.i, %if.then15.i, %if.then.i
  %124 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %adapter, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %125, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.103, i32 noundef 6) #4
  store i8 6, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 3), align 1
  %126 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i.i137) #4
  %128 = ptrtoint ptr %h2c_parameter.i.i.i137 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 6, ptr %h2c_parameter.i.i.i137, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %127, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef 6) #4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %127, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.134, i32 noundef 6) #4
  %btc_fill_h2c.i.i.i141 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %129 = ptrtoint ptr %btc_fill_h2c.i.i.i141 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %btc_fill_h2c.i.i.i141, align 4
  call void %130(ptr noundef %btcoexist, i8 noundef zeroext 100, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i.i137) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i.i137) #4
  %131 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 3), align 1
  store i8 %131, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 2), align 2
  call fastcc void @btc8821a2ant_dec_bt_pwr(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 0) #4
  call fastcc void @btc8821a2ant_sw_mechanism1(ptr noundef %btcoexist, i1 noundef zeroext false) #4
  call fastcc void @btc8821a2ant_dac_swing(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 24) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %roam.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %scan.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_connected.i) #4
  br label %cleanup

if.end12:                                         ; preds = %btc8821a2ant_action_algorithm.exit
  %132 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %btc_get, align 4
  %call14 = call zeroext i1 %133(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %scan) #4
  %134 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %btc_get, align 4
  %call16 = call zeroext i1 %135(ptr noundef %btcoexist, i8 noundef zeroext 6, ptr noundef nonnull %link) #4
  %136 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %btc_get, align 4
  %call18 = call zeroext i1 %137(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %roam) #4
  %138 = ptrtoint ptr %scan to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %scan, align 1, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool19.not = icmp eq i8 %139, 0
  br i1 %tobool19.not, label %lor.lhs.false, label %if.end12.if.then26_crit_edge

if.end12.if.then26_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then26

lor.lhs.false:                                    ; preds = %if.end12
  %140 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %link, align 1, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool21.not = icmp eq i8 %141, 0
  br i1 %tobool21.not, label %lor.lhs.false23, label %lor.lhs.false.if.then26_crit_edge

lor.lhs.false.if.then26_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then26

lor.lhs.false23:                                  ; preds = %lor.lhs.false
  %142 = ptrtoint ptr %roam to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %roam, align 1, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool24.not = icmp eq i8 %143, 0
  br i1 %tobool24.not, label %if.end27, label %lor.lhs.false23.if.then26_crit_edge

lor.lhs.false23.if.then26_crit_edge:              ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then26

if.then26:                                        ; preds = %lor.lhs.false23.if.then26_crit_edge, %lor.lhs.false.if.then26_crit_edge, %if.end12.if.then26_crit_edge
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.157) #4
  %144 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %adapter, align 4
  store i8 15, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 29), align 4
  call fastcc void @btc8821a2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1440568797, i32 noundef -1431655766, i32 noundef 16777215) #4
  call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 22) #4
  call fastcc void @btc8821a2ant_sw_mechanism1(ptr noundef %btcoexist, i1 noundef zeroext false) #4
  call fastcc void @btc8821a2ant_dac_swing(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 24) #4
  %btc_read_1byte.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 17
  %146 = ptrtoint ptr %btc_read_1byte.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %btc_read_1byte.i, align 4
  %call.i143 = call zeroext i8 %147(ptr noundef %btcoexist, i32 noundef 1893) #4
  %148 = ptrtoint ptr %btc_read_1byte.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %btc_read_1byte.i, align 4
  %call2.i = call zeroext i8 %149(ptr noundef %btcoexist, i32 noundef 1902) #4
  %conv.i = zext i8 %call.i143 to i32
  %conv3.i = zext i8 %call2.i to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %145, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.200, i32 noundef %conv.i, i32 noundef %conv3.i) #4
  br label %cleanup

if.end27:                                         ; preds = %lor.lhs.false23
  %150 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %btc_get, align 4
  %call29 = call zeroext i1 %151(ptr noundef %btcoexist, i8 noundef zeroext 27, ptr noundef nonnull %wifi_link_status) #4
  %152 = ptrtoint ptr %wifi_link_status to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %wifi_link_status, align 4
  %154 = and i32 %153, -131064
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %if.end39, label %if.then34

if.then34:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  %shr = lshr i32 %153, 16
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.158, i32 noundef %shr, i32 noundef %153) #4
  %156 = ptrtoint ptr %bt_link_info1 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %bt_link_info1, align 1, !range !473
  %158 = ptrtoint ptr %miracast_plus_bt to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %157, ptr %miracast_plus_bt, align 1
  %btc_set = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %159 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %btc_set, align 4
  %call38 = call zeroext i1 %160(ptr noundef %btcoexist, i8 noundef zeroext 8, ptr noundef nonnull %miracast_plus_bt) #4
  call fastcc void @btc8821a2ant_action_wifi_multi_port(ptr noundef %btcoexist)
  br label %cleanup

if.end39:                                         ; preds = %if.end27
  %161 = ptrtoint ptr %miracast_plus_bt to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 0, ptr %miracast_plus_bt, align 1
  %btc_set40 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %162 = ptrtoint ptr %btc_set40 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %btc_set40, align 4
  %call41 = call zeroext i1 %163(ptr noundef %btcoexist, i8 noundef zeroext 8, ptr noundef nonnull %miracast_plus_bt) #4
  store i8 %retval.0.i, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 39), align 4
  %conv43 = zext i8 %retval.0.i to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.159, i32 noundef %conv43) #4
  %call44 = call fastcc zeroext i1 @btc8821a2ant_is_common_action(ptr noundef %btcoexist)
  br i1 %call44, label %if.then45, label %if.else46

if.then45:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.160) #4
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 11), align 1
  br label %cleanup

if.else46:                                        ; preds = %if.end39
  %164 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 39), align 4
  %165 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 38), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %164, i8 %165)
  %cmp50.not = icmp eq i8 %164, %165
  br i1 %cmp50.not, label %if.else46.if.end58_crit_edge, label %if.then52

if.else46.if.end58_crit_edge:                     ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end58

if.then52:                                        ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #6
  %conv49 = zext i8 %165 to i32
  %conv48 = zext i8 %164 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.161, i32 noundef %conv49, i32 noundef %conv48) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 11), align 1
  %.pr = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 39), align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then52, %if.else46.if.end58_crit_edge
  %166 = phi i8 [ %.pr, %if.then52 ], [ %164, %if.else46.if.end58_crit_edge ]
  %167 = zext i8 %166 to i64
  call void @__sanitizer_cov_trace_switch(i64 %167, ptr @__sancov_gen_cov_switch_values.228)
  switch i8 %166, label %sw.default [
    i8 1, label %sw.bb
    i8 2, label %sw.bb61
    i8 3, label %sw.bb62
    i8 4, label %sw.bb63
    i8 5, label %sw.bb64
    i8 6, label %sw.bb65
    i8 7, label %sw.bb66
    i8 8, label %sw.bb67
    i8 9, label %sw.bb68
    i8 10, label %sw.bb69
  ]

sw.bb:                                            ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.162) #4
  call fastcc void @btc8821a2ant_action_sco(ptr noundef %btcoexist)
  br label %sw.epilog

sw.bb61:                                          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.163) #4
  call fastcc void @btc8821a2ant_action_hid(ptr noundef %btcoexist)
  br label %sw.epilog

sw.bb62:                                          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.164) #4
  call fastcc void @btc8821a2ant_action_a2dp(ptr noundef %btcoexist)
  br label %sw.epilog

sw.bb63:                                          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.165) #4
  call fastcc void @btc8821a2ant_action_a2dp_pan_hs(ptr noundef %btcoexist)
  br label %sw.epilog

sw.bb64:                                          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.166) #4
  call fastcc void @btc8821a2ant_action_pan_edr(ptr noundef %btcoexist)
  br label %sw.epilog

sw.bb65:                                          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.167) #4
  call fastcc void @btc8821a2ant_action_pan_hs(ptr noundef %btcoexist)
  br label %sw.epilog

sw.bb66:                                          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.168) #4
  call fastcc void @btc8821a2ant_action_pan_edr_a2dp(ptr noundef %btcoexist)
  br label %sw.epilog

sw.bb67:                                          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.169) #4
  call fastcc void @btc8821a2ant_action_pan_edr_hid(ptr noundef %btcoexist)
  br label %sw.epilog

sw.bb68:                                          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.170) #4
  call fastcc void @btc8821a2ant_act_hid_a2dp_pan_edr(ptr noundef %btcoexist)
  br label %sw.epilog

sw.bb69:                                          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.171) #4
  call fastcc void @btc8821a2ant_action_hid_a2dp(ptr noundef %btcoexist)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.172) #4
  call fastcc void @btc8821a2ant_coex_all_off(ptr noundef %btcoexist)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb69, %sw.bb68, %sw.bb67, %sw.bb66, %sw.bb65, %sw.bb64, %sw.bb63, %sw.bb62, %sw.bb61, %sw.bb
  %168 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 39), align 4
  store i8 %168, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 38), align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then45, %if.then34, %if.then26, %btc8821a2ant_action_bt_inquiry.exit, %if.then6, %if.end19.i.i, %if.then3.cleanup_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %roam) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %scan) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %miracast_plus_bt) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_link_status) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_under_5g) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8821a2ant_halt_notify(ptr noundef %btcoexist) local_unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i4 = alloca [3 x i8], align 1
  %wifi_central_chnl.i = alloca i8, align 1
  %h2c_parameter.i.i = alloca [1 x i8], align 1
  %h2c_parameter.i = alloca [2 x i8], align 2
  %fw_ver.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.96) #4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %h2c_parameter.i) #4
  %2 = ptrtoint ptr %h2c_parameter.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 256, ptr %h2c_parameter.i, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_ver.i) #4
  %3 = ptrtoint ptr %fw_ver.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %fw_ver.i, align 4
  %btc_write_1byte.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %4 = ptrtoint ptr %btc_write_1byte.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %btc_write_1byte.i, align 4
  tail call void %5(ptr noundef %btcoexist, i32 noundef 1902, i32 noundef 4) #4
  %btc_set_rf_reg.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 27
  %6 = ptrtoint ptr %btc_set_rf_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %btc_set_rf_reg.i, align 4
  tail call void %7(ptr noundef %btcoexist, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 1048575, i32 noundef 1920) #4
  %btc_get.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %8 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %btc_get.i, align 4
  %call.i = call zeroext i1 %9(ptr noundef %btcoexist, i8 noundef zeroext 26, ptr noundef nonnull %fw_ver.i) #4
  %10 = ptrtoint ptr %fw_ver.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fw_ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572863, i32 %11)
  %cmp.i = icmp ugt i32 %11, 1572863
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %btc_fill_h2c.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %12 = ptrtoint ptr %btc_fill_h2c.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %btc_fill_h2c.i, align 4
  call void %13(ptr noundef %btcoexist, i8 noundef zeroext 110, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i) #4
  br label %btc8821a2ant_wifi_off_hw_cfg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %btc_write_1byte.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %btc_write_1byte.i, align 4
  call void %15(ptr noundef %btcoexist, i32 noundef 1893, i32 noundef 24) #4
  br label %btc8821a2ant_wifi_off_hw_cfg.exit

btc8821a2ant_wifi_off_hw_cfg.exit:                ; preds = %if.else.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_ver.i) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %h2c_parameter.i) #4
  %16 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %17, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.112) #4
  store i8 1, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 4), align 4
  %18 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  %20 = ptrtoint ptr %h2c_parameter.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %h2c_parameter.i.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.151, i32 noundef 1) #4
  %btc_fill_h2c.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %21 = ptrtoint ptr %btc_fill_h2c.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %btc_fill_h2c.i.i, align 4
  call void %22(ptr noundef %btcoexist, i8 noundef zeroext 99, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i.i) #4
  %23 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 4), align 4, !range !473
  store i8 %23, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 5), align 1
  %24 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %h2c_parameter.i4) #4
  %26 = call ptr @memset(ptr %h2c_parameter.i4, i32 0, i32 3)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_central_chnl.i) #4
  %27 = ptrtoint ptr %wifi_central_chnl.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %wifi_central_chnl.i, align 1, !annotation !474
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %25, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.78) #4
  %28 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %btc_get.i, align 4
  %call.i7 = call zeroext i1 %29(ptr noundef %btcoexist, i8 noundef zeroext 38, ptr noundef nonnull %wifi_central_chnl.i) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 41), align 2
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 41, i32 1), align 1
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 41, i32 2), align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %25, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.79, i32 noundef 0) #4
  %30 = ptrtoint ptr %btc_fill_h2c.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %btc_fill_h2c.i.i, align 4
  call void %31(ptr noundef %btcoexist, i8 noundef zeroext 102, i32 noundef 3, ptr noundef nonnull %h2c_parameter.i4) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_central_chnl.i) #4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %h2c_parameter.i4) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8821a2ant_pnp_notify(ptr noundef %btcoexist, i8 noundef zeroext %pnp_state) local_unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.97) #4
  %2 = zext i8 %pnp_state to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.229)
  switch i8 %pnp_state, label %entry.if.end6_crit_edge [
    i8 1, label %if.then
    i8 0, label %if.then5
  ]

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.98) #4
  br label %if.end6

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.99) #4
  tail call void @ex_btc8821a2ant_init_hwconfig(ptr noundef %btcoexist)
  tail call fastcc void @btc8821a2ant_init_coex_dm(ptr noundef %btcoexist)
  %3 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i) #4
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 15), align 1
  %5 = ptrtoint ptr %h2c_parameter.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %h2c_parameter.i, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %4, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.152, i32 noundef 1) #4
  %btc_fill_h2c.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %6 = ptrtoint ptr %btc_fill_h2c.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %btc_fill_h2c.i, align 4
  call void %7(ptr noundef %btcoexist, i8 noundef zeroext 97, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i) #4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.then, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ex_btc8821a2ant_periodical(ptr noundef %btcoexist) local_unnamed_addr #0 align 64 {
entry:
  %wifi_rssi.i.i = alloca i32, align 4
  %wifi_busy.i = alloca i8, align 1
  %under_4way.i = alloca i8, align 1
  %bt_hs_on.i = alloca i8, align 1
  %wifi_connected.i = alloca i8, align 1
  %h2c_parameter.i26 = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.100) #4
  %2 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 31), align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %2)
  %cmp = icmp ult i8 %2, 6
  br i1 %cmp, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then:                                          ; preds = %entry
  %add = add nuw nsw i8 %2, 1
  store i8 %add, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 31), align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %add)
  %cmp7 = icmp eq i8 %add, 3
  br i1 %cmp7, label %if.then9, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.101) #4
  %btc_write_1byte_bitmask.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 19
  %3 = ptrtoint ptr %btc_write_1byte_bitmask.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %btc_write_1byte_bitmask.i, align 4
  tail call void %4(ptr noundef %btcoexist, i32 noundef 3255, i32 noundef 48, i8 noundef zeroext 1) #4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  %auto_report_2ant = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 8
  %5 = ptrtoint ptr %auto_report_2ant to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %auto_report_2ant, align 1, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %7 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter, align 4
  br i1 %tobool.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i26) #4
  store i8 1, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 15), align 1
  %9 = ptrtoint ptr %h2c_parameter.i26 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %h2c_parameter.i26, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %8, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.152, i32 noundef 1) #4
  %btc_fill_h2c.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %10 = ptrtoint ptr %btc_fill_h2c.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %btc_fill_h2c.i, align 4
  call void %11(ptr noundef %btcoexist, i8 noundef zeroext 97, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i26) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i26) #4
  br label %if.end17

if.else:                                          ; preds = %if.end10
  %btc_read_4byte.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 22
  %12 = ptrtoint ptr %btc_read_4byte.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %btc_read_4byte.i, align 4
  %call.i = tail call i32 %13(ptr noundef %btcoexist, i32 noundef 1904) #4
  %and.i = and i32 %call.i, 65535
  %shr.i = lshr i32 %call.i, 16
  %14 = ptrtoint ptr %btc_read_4byte.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %btc_read_4byte.i, align 4
  %call4.i = tail call i32 %15(ptr noundef %btcoexist, i32 noundef 1908) #4
  %and5.i = and i32 %call4.i, 65535
  %shr7.i = lshr i32 %call4.i, 16
  store i32 %and.i, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 7), align 4
  store i32 %shr.i, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 8), align 4
  store i32 %and5.i, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 9), align 4
  store i32 %shr7.i, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 10), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 62259200, i32 %call4.i)
  %cmp.i = icmp ult i32 %call4.i, 62259200
  call void @__sanitizer_cov_trace_cmp4(i32 %shr7.i, i32 %and5.i)
  %cmp11.not.i = icmp ult i32 %shr7.i, %and5.i
  %or.cond.i = or i1 %cmp.i, %cmp11.not.i
  br i1 %or.cond.i, label %if.else.if.else.i_crit_edge, label %land.lhs.true12.i

if.else.if.else.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

land.lhs.true12.i:                                ; preds = %if.else
  %16 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 6), align 2, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %land.lhs.true12.i.btc8821a2ant_monitor_bt_ctr.exit_crit_edge, label %land.lhs.true12.i.if.else.i_crit_edge

land.lhs.true12.i.if.else.i_crit_edge:            ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

land.lhs.true12.i.btc8821a2ant_monitor_bt_ctr.exit_crit_edge: ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8821a2ant_monitor_bt_ctr.exit

if.else.i:                                        ; preds = %land.lhs.true12.i.if.else.i_crit_edge, %if.else.if.else.i_crit_edge
  br label %btc8821a2ant_monitor_bt_ctr.exit

btc8821a2ant_monitor_bt_ctr.exit:                 ; preds = %if.else.i, %land.lhs.true12.i.btc8821a2ant_monitor_bt_ctr.exit_crit_edge
  %.sink.i = phi i8 [ 0, %if.else.i ], [ 1, %land.lhs.true12.i.btc8821a2ant_monitor_bt_ctr.exit_crit_edge ]
  %slave_role13.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 10
  %17 = ptrtoint ptr %slave_role13.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %.sink.i, ptr %slave_role13.i, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %8, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.218, i32 noundef 1904, i32 noundef %and.i, i32 noundef %and.i, i32 noundef %shr.i, i32 noundef %shr.i) #4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %8, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.219, i32 noundef 1908, i32 noundef %and5.i, i32 noundef %and5.i, i32 noundef %shr7.i, i32 noundef %shr7.i) #4
  %btc_write_1byte.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %18 = ptrtoint ptr %btc_write_1byte.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %btc_write_1byte.i, align 4
  tail call void %19(ptr noundef %btcoexist, i32 noundef 1902, i32 noundef 12) #4
  %20 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 6), align 2, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i28 = icmp eq i8 %20, 0
  br i1 %tobool.not.i28, label %if.else.i31, label %if.then.i

if.then.i:                                        ; preds = %btc8821a2ant_monitor_bt_ctr.exit
  call void @__sanitizer_cov_trace_pc() #6
  %21 = call ptr @memset(ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 21), i32 0, i32 28)
  br label %btc8821a2ant_monitor_wifi_ctr.exit

if.else.i31:                                      ; preds = %btc8821a2ant_monitor_bt_ctr.exit
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %btc_read_4byte.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %btc_read_4byte.i, align 4
  %call.i30 = tail call i32 %23(ptr noundef %btcoexist, i32 noundef 3976) #4
  store i32 %call.i30, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 21), align 4
  %btc_read_2byte.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 20
  %24 = ptrtoint ptr %btc_read_2byte.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %btc_read_2byte.i, align 4
  %call2.i = tail call zeroext i16 %25(ptr noundef %btcoexist, i32 noundef 3988) #4
  %conv.i = zext i16 %call2.i to i32
  store i32 %conv.i, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 22), align 4
  %26 = ptrtoint ptr %btc_read_2byte.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %btc_read_2byte.i, align 4
  %call5.i = tail call zeroext i16 %27(ptr noundef %btcoexist, i32 noundef 3984) #4
  %conv6.i = zext i16 %call5.i to i32
  store i32 %conv6.i, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 23), align 4
  %28 = ptrtoint ptr %btc_read_2byte.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %btc_read_2byte.i, align 4
  %call9.i = tail call zeroext i16 %29(ptr noundef %btcoexist, i32 noundef 4024) #4
  %conv10.i = zext i16 %call9.i to i32
  store i32 %conv10.i, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 24), align 4
  %30 = ptrtoint ptr %btc_read_4byte.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %btc_read_4byte.i, align 4
  %call13.i = tail call i32 %31(ptr noundef %btcoexist, i32 noundef 3972) #4
  store i32 %call13.i, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 25), align 4
  %32 = ptrtoint ptr %btc_read_2byte.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %btc_read_2byte.i, align 4
  %call16.i = tail call zeroext i16 %33(ptr noundef %btcoexist, i32 noundef 3990) #4
  %conv17.i = zext i16 %call16.i to i32
  store i32 %conv17.i, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 26), align 4
  %34 = ptrtoint ptr %btc_read_2byte.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %btc_read_2byte.i, align 4
  %call20.i = tail call zeroext i16 %35(ptr noundef %btcoexist, i32 noundef 3986) #4
  %conv21.i = zext i16 %call20.i to i32
  store i32 %conv21.i, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 27), align 4
  %36 = ptrtoint ptr %btc_read_2byte.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %btc_read_2byte.i, align 4
  %call24.i = tail call zeroext i16 %37(ptr noundef %btcoexist, i32 noundef 4026) #4
  %conv25.i = zext i16 %call24.i to i32
  br label %btc8821a2ant_monitor_wifi_ctr.exit

btc8821a2ant_monitor_wifi_ctr.exit:               ; preds = %if.else.i31, %if.then.i
  %storemerge.i = phi i32 [ %conv25.i, %if.else.i31 ], [ 0, %if.then.i ]
  store i32 %storemerge.i, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 28), align 4
  %btc_write_1byte_bitmask.i32 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 19
  %38 = ptrtoint ptr %btc_write_1byte_bitmask.i32 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %btc_write_1byte_bitmask.i32, align 4
  tail call void %39(ptr noundef %btcoexist, i32 noundef 3862, i32 noundef 1, i8 noundef zeroext 1) #4
  %40 = ptrtoint ptr %btc_write_1byte_bitmask.i32 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %btc_write_1byte_bitmask.i32, align 4
  tail call void %41(ptr noundef %btcoexist, i32 noundef 3862, i32 noundef 1, i8 noundef zeroext 0) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_busy.i) #4
  %42 = ptrtoint ptr %wifi_busy.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %wifi_busy.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %under_4way.i) #4
  %43 = ptrtoint ptr %under_4way.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %under_4way.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_hs_on.i) #4
  %44 = ptrtoint ptr %bt_hs_on.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %bt_hs_on.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_connected.i) #4
  %45 = ptrtoint ptr %wifi_connected.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %wifi_connected.i, align 1
  %btc_get.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %46 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %btc_get.i, align 4
  %call.i33 = call zeroext i1 %47(ptr noundef %btcoexist, i8 noundef zeroext 2, ptr noundef nonnull %wifi_connected.i) #4
  %48 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %btc_get.i, align 4
  %call2.i34 = call zeroext i1 %49(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %wifi_busy.i) #4
  %50 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %btc_get.i, align 4
  %call4.i35 = call zeroext i1 %51(ptr noundef %btcoexist, i8 noundef zeroext 0, ptr noundef nonnull %bt_hs_on.i) #4
  %52 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %btc_get.i, align 4
  %call6.i = call zeroext i1 %53(ptr noundef %btcoexist, i8 noundef zeroext 12, ptr noundef nonnull %under_4way.i) #4
  %54 = ptrtoint ptr %wifi_connected.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %wifi_connected.i, align 1, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i36 = icmp eq i8 %55, 0
  br i1 %tobool.not.i36, label %btc8821a2ant_is_wifi_status_changed.exit.thread39, label %if.then.i37

btc8821a2ant_is_wifi_status_changed.exit.thread39: ; preds = %btc8821a2ant_monitor_wifi_ctr.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_connected.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_hs_on.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %under_4way.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_busy.i) #4
  br label %lor.lhs.false

if.then.i37:                                      ; preds = %btc8821a2ant_monitor_wifi_ctr.exit
  %56 = ptrtoint ptr %wifi_busy.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %wifi_busy.i, align 1, !range !473
  %58 = load i8, ptr @btc8821a2ant_is_wifi_status_changed.pre_wifi_busy, align 1, !range !473
  call void @__sanitizer_cov_trace_cmp1(i8 %57, i8 %58)
  %cmp.not.i = icmp eq i8 %57, %58
  br i1 %cmp.not.i, label %if.end.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.then.i37
  call void @__sanitizer_cov_trace_pc() #6
  store i8 %57, ptr @btc8821a2ant_is_wifi_status_changed.pre_wifi_busy, align 1
  br label %btc8821a2ant_is_wifi_status_changed.exit.thread

if.end.i:                                         ; preds = %if.then.i37
  %59 = ptrtoint ptr %under_4way.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %under_4way.i, align 1, !range !473
  %61 = load i8, ptr @btc8821a2ant_is_wifi_status_changed.pre_under_4way, align 1, !range !473
  call void @__sanitizer_cov_trace_cmp1(i8 %60, i8 %61)
  %cmp17.not.i = icmp eq i8 %60, %61
  br i1 %cmp17.not.i, label %if.end22.i, label %if.then19.i

if.then19.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  store i8 %60, ptr @btc8821a2ant_is_wifi_status_changed.pre_under_4way, align 1
  br label %btc8821a2ant_is_wifi_status_changed.exit.thread

if.end22.i:                                       ; preds = %if.end.i
  %62 = ptrtoint ptr %bt_hs_on.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %bt_hs_on.i, align 1, !range !473
  %64 = load i8, ptr @btc8821a2ant_is_wifi_status_changed.pre_bt_hs_on, align 1, !range !473
  call void @__sanitizer_cov_trace_cmp1(i8 %63, i8 %64)
  %cmp27.not.i = icmp eq i8 %63, %64
  br i1 %cmp27.not.i, label %if.end32.i, label %if.then29.i

if.then29.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #6
  store i8 %63, ptr @btc8821a2ant_is_wifi_status_changed.pre_bt_hs_on, align 1
  br label %btc8821a2ant_is_wifi_status_changed.exit.thread

if.end32.i:                                       ; preds = %if.end22.i
  %65 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_rssi.i.i) #4
  %67 = ptrtoint ptr %wifi_rssi.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %wifi_rssi.i.i, align 4
  %68 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %btc_get.i, align 4
  %call.i.i = call zeroext i1 %69(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi.i.i) #4
  %70 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 14, i32 3), align 2
  %71 = zext i8 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.230)
  switch i8 %70, label %if.else19.i.i [
    i8 2, label %if.end32.i.if.then14.i.i_crit_edge
    i8 5, label %if.end32.i.if.then14.i.i_crit_edge41
  ]

if.end32.i.if.then14.i.i_crit_edge41:             ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i.i

if.end32.i.if.then14.i.i_crit_edge:               ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i.i

if.then14.i.i:                                    ; preds = %if.end32.i.if.then14.i.i_crit_edge, %if.end32.i.if.then14.i.i_crit_edge41
  %72 = ptrtoint ptr %wifi_rssi.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %wifi_rssi.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %73)
  %cmp16.not.i.i = icmp slt i32 %73, 44
  %.str.117..str.116.i.i = select i1 %cmp16.not.i.i, ptr @.str.117, ptr @.str.116
  %..i.i = select i1 %cmp16.not.i.i, i8 5, i8 0
  br label %btc8821a2ant_is_wifi_status_changed.exit

if.else19.i.i:                                    ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #6
  %74 = ptrtoint ptr %wifi_rssi.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %wifi_rssi.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %75)
  %cmp21.i.i = icmp slt i32 %75, 42
  %.str.118..str.119.i.i = select i1 %cmp21.i.i, ptr @.str.118, ptr @.str.119
  %.1.i.i = select i1 %cmp21.i.i, i8 2, i8 3
  br label %btc8821a2ant_is_wifi_status_changed.exit

btc8821a2ant_is_wifi_status_changed.exit.thread:  ; preds = %if.then29.i, %if.then19.i, %if.then11.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_connected.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_hs_on.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %under_4way.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_busy.i) #4
  br label %if.then15

btc8821a2ant_is_wifi_status_changed.exit:         ; preds = %if.else19.i.i, %if.then14.i.i
  %.str.117.sink.i.i = phi ptr [ %.str.117..str.116.i.i, %if.then14.i.i ], [ %.str.118..str.119.i.i, %if.else19.i.i ]
  %wifi_rssi_state.0.i.i = phi i8 [ %..i.i, %if.then14.i.i ], [ %.1.i.i, %if.else19.i.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %66, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.117.sink.i.i) #4
  store i8 %wifi_rssi_state.0.i.i, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 14, i32 3), align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i.i) #4
  %switch.and.i = and i8 %wifi_rssi_state.0.i.i, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %switch.and.i)
  %switch.selectcmp.i = icmp eq i8 %switch.and.i, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_connected.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_hs_on.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %under_4way.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_busy.i) #4
  br i1 %switch.selectcmp.i, label %btc8821a2ant_is_wifi_status_changed.exit.if.then15_crit_edge, label %btc8821a2ant_is_wifi_status_changed.exit.lor.lhs.false_crit_edge

btc8821a2ant_is_wifi_status_changed.exit.lor.lhs.false_crit_edge: ; preds = %btc8821a2ant_is_wifi_status_changed.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false

btc8821a2ant_is_wifi_status_changed.exit.if.then15_crit_edge: ; preds = %btc8821a2ant_is_wifi_status_changed.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

lor.lhs.false:                                    ; preds = %btc8821a2ant_is_wifi_status_changed.exit.lor.lhs.false_crit_edge, %btc8821a2ant_is_wifi_status_changed.exit.thread39
  %76 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 11), align 1, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool13.not = icmp eq i8 %76, 0
  br i1 %tobool13.not, label %lor.lhs.false.if.end17_crit_edge, label %lor.lhs.false.if.then15_crit_edge

lor.lhs.false.if.then15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

lor.lhs.false.if.end17_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.then15:                                        ; preds = %lor.lhs.false.if.then15_crit_edge, %btc8821a2ant_is_wifi_status_changed.exit.if.then15_crit_edge, %btc8821a2ant_is_wifi_status_changed.exit.thread
  call fastcc void @btc8821a2ant_run_coexist_mechanism(ptr noundef %btcoexist)
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %lor.lhs.false.if.end17_crit_edge, %if.then11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8821a2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext %force_exec, i32 noundef %val0x6c0, i32 noundef %val0x6c4, i32 noundef %val0x6c8) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %cond = select i1 %force_exec, ptr @.str.103, ptr @.str.104
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.102, ptr noundef nonnull %cond, i32 noundef %val0x6c0, i32 noundef %val0x6c4, i32 noundef %val0x6c8, i32 noundef 3) #4
  store i32 %val0x6c0, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 30), align 4
  store i32 %val0x6c4, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 32), align 4
  store i32 %val0x6c8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 34), align 4
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 36), align 1
  br i1 %force_exec, label %entry.if.end28_crit_edge, label %if.then

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

if.then:                                          ; preds = %entry
  %2 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 29), align 4
  %3 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 31), align 4
  %4 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 33), align 4
  %5 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 35), align 4
  %conv2 = zext i8 %5 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.105, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %conv2) #4
  %6 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 30), align 4
  %7 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 32), align 4
  %8 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 34), align 4
  %9 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 36), align 1
  %conv7 = zext i8 %9 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.106, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %conv7) #4
  %10 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 29), align 4
  %11 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 30), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %11)
  %cmp = icmp eq i32 %10, %11
  br i1 %cmp, label %land.lhs.true, label %if.then.if.end28_crit_edge

if.then.if.end28_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

land.lhs.true:                                    ; preds = %if.then
  %12 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 31), align 4
  %13 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 32), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %13)
  %cmp13 = icmp eq i32 %12, %13
  br i1 %cmp13, label %land.lhs.true15, label %land.lhs.true.if.end28_crit_edge

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

land.lhs.true15:                                  ; preds = %land.lhs.true
  %14 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 33), align 4
  %15 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 34), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %15)
  %cmp18 = icmp eq i32 %14, %15
  br i1 %cmp18, label %land.lhs.true20, label %land.lhs.true15.if.end28_crit_edge

land.lhs.true15.if.end28_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

land.lhs.true20:                                  ; preds = %land.lhs.true15
  %16 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 35), align 4
  %17 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 36), align 1
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.107, i32 noundef %val0x6c0) #4
  %btc_write_4byte.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 23
  %20 = ptrtoint ptr %btc_write_4byte.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %btc_write_4byte.i, align 4
  tail call void %21(ptr noundef %btcoexist, i32 noundef 1728, i32 noundef %val0x6c0) #4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.108, i32 noundef %val0x6c4) #4
  %22 = ptrtoint ptr %btc_write_4byte.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %btc_write_4byte.i, align 4
  tail call void %23(ptr noundef %btcoexist, i32 noundef 1732, i32 noundef %val0x6c4) #4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.109, i32 noundef %val0x6c8) #4
  %24 = ptrtoint ptr %btc_write_4byte.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %btc_write_4byte.i, align 4
  tail call void %25(ptr noundef %btcoexist, i32 noundef 1736, i32 noundef %val0x6c8) #4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.110, i32 noundef 3) #4
  %btc_write_1byte.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 18
  %26 = ptrtoint ptr %btc_write_1byte.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %btc_write_1byte.i, align 4
  tail call void %27(ptr noundef %btcoexist, i32 noundef 1740, i32 noundef 3) #4
  %28 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 30), align 4
  store i32 %28, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 29), align 4
  %29 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 32), align 4
  store i32 %29, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 31), align 4
  %30 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 34), align 4
  store i32 %30, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 33), align 4
  %31 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 36), align 1
  store i8 %31, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 35), align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %land.lhs.true20.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8821a2ant_power_save_state(ptr noundef %btcoexist, i8 noundef zeroext %ps_type, i8 noundef zeroext %lps_val, i8 noundef zeroext %rpwm_val) unnamed_addr #0 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.231)
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
  br i1 %tobool.not.i, label %if.then5.i, label %sw.bb3.btc8821a2ant_ps_tdma_check_for_power_save_state.exit_crit_edge

sw.bb3.btc8821a2ant_ps_tdma_check_for_power_save_state.exit_crit_edge: ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8821a2ant_ps_tdma_check_for_power_save_state.exit

if.then5.i:                                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 1) #4
  br label %btc8821a2ant_ps_tdma_check_for_power_save_state.exit

btc8821a2ant_ps_tdma_check_for_power_save_state.exit: ; preds = %if.then5.i, %sw.bb3.btc8821a2ant_ps_tdma_check_for_power_save_state.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lps_mode.i) #4
  store i8 %lps_val, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 43), align 2
  store i8 %rpwm_val, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 45), align 4
  %7 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 42), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %lps_val)
  %cmp.i = icmp eq i8 %7, %lps_val
  br i1 %cmp.i, label %land.lhs.true.i, label %btc8821a2ant_ps_tdma_check_for_power_save_state.exit.if.end10.i_crit_edge

btc8821a2ant_ps_tdma_check_for_power_save_state.exit.if.end10.i_crit_edge: ; preds = %btc8821a2ant_ps_tdma_check_for_power_save_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.i

land.lhs.true.i:                                  ; preds = %btc8821a2ant_ps_tdma_check_for_power_save_state.exit
  %8 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 44), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %rpwm_val)
  %cmp7.i = icmp eq i8 %8, %rpwm_val
  br i1 %cmp7.i, label %land.lhs.true.i.btc8821a2ant_lps_rpwm.exit_crit_edge, label %land.lhs.true.i.if.end10.i_crit_edge

land.lhs.true.i.if.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.i

land.lhs.true.i.btc8821a2ant_lps_rpwm.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8821a2ant_lps_rpwm.exit

if.end10.i:                                       ; preds = %land.lhs.true.i.if.end10.i_crit_edge, %btc8821a2ant_ps_tdma_check_for_power_save_state.exit.if.end10.i_crit_edge
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
  %15 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 43), align 2
  store i8 %15, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 42), align 1
  %16 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 45), align 4
  store i8 %16, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 44), align 1
  br label %btc8821a2ant_lps_rpwm.exit

btc8821a2ant_lps_rpwm.exit:                       ; preds = %if.end10.i, %land.lhs.true.i.btc8821a2ant_lps_rpwm.exit_crit_edge
  %17 = ptrtoint ptr %low_pwr_disable to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %low_pwr_disable, align 1
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %btc8821a2ant_lps_rpwm.exit, %entry.sw.epilog.sink.split_crit_edge
  %.sink25 = phi i8 [ 23, %btc8821a2ant_lps_rpwm.exit ], [ 24, %entry.sw.epilog.sink.split_crit_edge ]
  %btc_set = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %18 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %btc_set, align 4
  %call5 = call zeroext i1 %19(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable) #4
  %20 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %btc_set, align 4
  %call7 = call zeroext i1 %21(ptr noundef %btcoexist, i8 noundef zeroext %.sink25, ptr noundef null) #4
  store i8 %ps_type, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 30), align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext %force_exec, i1 noundef zeroext %turn_on, i8 noundef zeroext %type) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i181 = alloca [5 x i8], align 1
  %h2c_parameter.i178 = alloca [5 x i8], align 1
  %h2c_parameter.i175 = alloca [5 x i8], align 1
  %h2c_parameter.i172 = alloca [5 x i8], align 1
  %h2c_parameter.i169 = alloca [5 x i8], align 1
  %h2c_parameter.i166 = alloca [5 x i8], align 1
  %h2c_parameter.i = alloca [5 x i8], align 1
  %wifi_rssi.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool1 = zext i1 %turn_on to i8
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %2 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %wifi_rssi.i, align 4
  %btc_get.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %3 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %btc_get.i, align 4
  %call.i = call zeroext i1 %4(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi.i) #4
  %5 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 14, i32 1), align 4
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.232)
  switch i8 %5, label %if.else19.i [
    i8 2, label %entry.if.then14.i_crit_edge
    i8 5, label %entry.if.then14.i_crit_edge185
  ]

entry.if.then14.i_crit_edge185:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

entry.if.then14.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

if.then14.i:                                      ; preds = %entry.if.then14.i_crit_edge, %entry.if.then14.i_crit_edge185
  %7 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %8)
  %cmp16.not.i = icmp slt i32 %8, 44
  %.str.117..str.116.i = select i1 %cmp16.not.i, ptr @.str.117, ptr @.str.116
  %..i = select i1 %cmp16.not.i, i8 5, i8 0
  br label %btc8821a2ant_wifi_rssi_state.exit

if.else19.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %10)
  %cmp21.i = icmp slt i32 %10, 42
  %.str.118..str.119.i = select i1 %cmp21.i, ptr @.str.118, ptr @.str.119
  %.1.i = select i1 %cmp21.i, i8 2, i8 3
  br label %btc8821a2ant_wifi_rssi_state.exit

btc8821a2ant_wifi_rssi_state.exit:                ; preds = %if.else19.i, %if.then14.i
  %.str.117.sink.i = phi ptr [ %.str.117..str.116.i, %if.then14.i ], [ %.str.118..str.119.i, %if.else19.i ]
  %wifi_rssi_state.0.i = phi i8 [ %..i, %if.then14.i ], [ %.1.i, %if.else19.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.117.sink.i) #4
  store i8 %wifi_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 14, i32 1), align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %11 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adapter, align 4
  %13 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 13), align 2
  %14 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 11), align 4
  %15 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.233)
  switch i8 %13, label %if.else17.i [
    i8 2, label %btc8821a2ant_wifi_rssi_state.exit.if.then12.i_crit_edge
    i8 5, label %btc8821a2ant_wifi_rssi_state.exit.if.then12.i_crit_edge186
  ]

btc8821a2ant_wifi_rssi_state.exit.if.then12.i_crit_edge186: ; preds = %btc8821a2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i

btc8821a2ant_wifi_rssi_state.exit.if.then12.i_crit_edge: ; preds = %btc8821a2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i

if.then12.i:                                      ; preds = %btc8821a2ant_wifi_rssi_state.exit.if.then12.i_crit_edge, %btc8821a2ant_wifi_rssi_state.exit.if.then12.i_crit_edge186
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %14)
  %cmp14.not.i = icmp ult i8 %14, 48
  %.str.124..str.123.i = select i1 %cmp14.not.i, ptr @.str.124, ptr @.str.123
  %..i164 = select i1 %cmp14.not.i, i8 5, i8 0
  br label %btc8821a2ant_bt_rssi_state.exit

if.else17.i:                                      ; preds = %btc8821a2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %14)
  %cmp19.i = icmp ult i8 %14, 46
  %.str.125..str.126.i = select i1 %cmp19.i, ptr @.str.125, ptr @.str.126
  %.116.i = select i1 %cmp19.i, i8 2, i8 3
  br label %btc8821a2ant_bt_rssi_state.exit

btc8821a2ant_bt_rssi_state.exit:                  ; preds = %if.else17.i, %if.then12.i
  %.str.125.sink.i = phi ptr [ %.str.124..str.123.i, %if.then12.i ], [ %.str.125..str.126.i, %if.else17.i ]
  %bt_rssi_state.0.i = phi i8 [ %..i164, %if.then12.i ], [ %.116.i, %if.else17.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %12, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.125.sink.i) #4
  store i8 %bt_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 13), align 2
  %trunc = trunc i8 %wifi_rssi_state.0.i to i3
  %16 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.234)
  switch i3 %trunc, label %btc8821a2ant_bt_rssi_state.exit.land.lhs.true16_crit_edge [
    i3 0, label %btc8821a2ant_bt_rssi_state.exit.land.lhs.true_crit_edge
    i3 3, label %btc8821a2ant_bt_rssi_state.exit.land.lhs.true_crit_edge187
  ]

btc8821a2ant_bt_rssi_state.exit.land.lhs.true_crit_edge187: ; preds = %btc8821a2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

btc8821a2ant_bt_rssi_state.exit.land.lhs.true_crit_edge: ; preds = %btc8821a2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

btc8821a2ant_bt_rssi_state.exit.land.lhs.true16_crit_edge: ; preds = %btc8821a2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true16

land.lhs.true:                                    ; preds = %btc8821a2ant_bt_rssi_state.exit.land.lhs.true_crit_edge, %btc8821a2ant_bt_rssi_state.exit.land.lhs.true_crit_edge187
  %trunc184 = trunc i8 %bt_rssi_state.0.i to i3
  %17 = zext i3 %trunc184 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.235)
  switch i3 %trunc184, label %land.lhs.true.land.lhs.true16_crit_edge [
    i3 0, label %land.lhs.true.if.end_crit_edge
    i3 3, label %land.lhs.true.if.end_crit_edge188
  ]

land.lhs.true.if.end_crit_edge188:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.land.lhs.true16_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true16

land.lhs.true16:                                  ; preds = %land.lhs.true.land.lhs.true16_crit_edge, %btc8821a2ant_bt_rssi_state.exit.land.lhs.true16_crit_edge
  %add = add i8 %type, 100
  %spec.select = select i1 %turn_on, i8 %add, i8 %type
  br label %if.end

if.end:                                           ; preds = %land.lhs.true16, %land.lhs.true.if.end_crit_edge, %land.lhs.true.if.end_crit_edge188
  %type.addr.0 = phi i8 [ %type, %land.lhs.true.if.end_crit_edge ], [ %type, %land.lhs.true.if.end_crit_edge188 ], [ %spec.select, %land.lhs.true16 ]
  %cond = select i1 %force_exec, ptr @.str.103, ptr @.str.104
  %cond24 = select i1 %turn_on, ptr @.str.112, ptr @.str.113
  %conv25 = zext i8 %type.addr.0 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.111, ptr noundef nonnull %cond, ptr noundef nonnull %cond24, i32 noundef %conv25) #4
  store i8 %frombool1, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 13), align 1
  store i8 %type.addr.0, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 7), align 1
  br i1 %force_exec, label %if.end.if.end55_crit_edge, label %if.then29

if.end.if.end55_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end55

if.then29:                                        ; preds = %if.end
  %18 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 12), align 4, !range !473
  %19 = zext i8 %18 to i32
  %20 = zext i1 %turn_on to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.114, i32 noundef %19, i32 noundef %20) #4
  %21 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 6), align 2
  %conv35 = zext i8 %21 to i32
  %22 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 7), align 1
  %conv37 = zext i8 %22 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.115, i32 noundef %conv35, i32 noundef %conv37) #4
  %23 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 12), align 4, !range !473
  %24 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 13), align 1, !range !473
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %24)
  %cmp44 = icmp eq i8 %23, %24
  br i1 %cmp44, label %land.lhs.true46, label %if.then29.if.end55_crit_edge

if.then29.if.end55_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end55

land.lhs.true46:                                  ; preds = %if.then29
  %25 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 6), align 2
  %26 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 7), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %26)
  %cmp51 = icmp eq i8 %25, %26
  br i1 %cmp51, label %land.lhs.true46.cleanup_crit_edge, label %land.lhs.true46.if.end55_crit_edge

land.lhs.true46.if.end55_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end55

land.lhs.true46.cleanup_crit_edge:                ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end55:                                         ; preds = %land.lhs.true46.if.end55_crit_edge, %if.then29.if.end55_crit_edge, %if.end.if.end55_crit_edge
  br i1 %turn_on, label %if.then57, label %if.else

if.then57:                                        ; preds = %if.end55
  %27 = zext i8 %type.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.236)
  switch i8 %type.addr.0, label %sw.default [
    i8 126, label %sw.bb94
    i8 2, label %sw.bb59
    i8 3, label %sw.bb60
    i8 4, label %sw.bb61
    i8 5, label %sw.bb62
    i8 6, label %sw.bb63
    i8 7, label %sw.bb64
    i8 8, label %sw.bb65
    i8 9, label %sw.bb66
    i8 10, label %sw.bb67
    i8 11, label %sw.bb68
    i8 12, label %sw.bb69
    i8 13, label %sw.bb70
    i8 14, label %sw.bb71
    i8 15, label %sw.bb72
    i8 16, label %sw.bb73
    i8 17, label %sw.bb74
    i8 18, label %sw.bb75
    i8 19, label %sw.bb76
    i8 20, label %sw.bb77
    i8 21, label %sw.bb78
    i8 23, label %sw.bb79
    i8 24, label %if.then57.sw.bb80_crit_edge
    i8 124, label %if.then57.sw.bb80_crit_edge189
    i8 25, label %sw.bb81
    i8 26, label %sw.bb82
    i8 71, label %sw.bb83
    i8 101, label %if.then57.sw.bb84_crit_edge
    i8 105, label %if.then57.sw.bb84_crit_edge190
    i8 -85, label %if.then57.sw.bb84_crit_edge191
    i8 102, label %if.then57.sw.bb85_crit_edge
    i8 106, label %if.then57.sw.bb85_crit_edge192
    i8 110, label %if.then57.sw.bb85_crit_edge193
    i8 114, label %if.then57.sw.bb85_crit_edge194
    i8 103, label %if.then57.sw.bb86_crit_edge
    i8 107, label %if.then57.sw.bb86_crit_edge195
    i8 111, label %if.then57.sw.bb86_crit_edge196
    i8 115, label %if.then57.sw.bb86_crit_edge197
    i8 104, label %if.then57.sw.bb87_crit_edge
    i8 108, label %if.then57.sw.bb87_crit_edge198
    i8 112, label %if.then57.sw.bb87_crit_edge199
    i8 116, label %if.then57.sw.bb87_crit_edge200
    i8 109, label %sw.bb88
    i8 113, label %sw.bb89
    i8 121, label %sw.bb90
    i8 22, label %if.then57.sw.bb91_crit_edge
    i8 122, label %if.then57.sw.bb91_crit_edge201
    i8 123, label %sw.bb92
    i8 125, label %sw.bb93
  ]

if.then57.sw.bb91_crit_edge201:                   ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb91

if.then57.sw.bb91_crit_edge:                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb91

if.then57.sw.bb87_crit_edge200:                   ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb87

if.then57.sw.bb87_crit_edge199:                   ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb87

if.then57.sw.bb87_crit_edge198:                   ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb87

if.then57.sw.bb87_crit_edge:                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb87

if.then57.sw.bb86_crit_edge197:                   ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb86

if.then57.sw.bb86_crit_edge196:                   ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb86

if.then57.sw.bb86_crit_edge195:                   ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb86

if.then57.sw.bb86_crit_edge:                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb86

if.then57.sw.bb85_crit_edge194:                   ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb85

if.then57.sw.bb85_crit_edge193:                   ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb85

if.then57.sw.bb85_crit_edge192:                   ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb85

if.then57.sw.bb85_crit_edge:                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb85

if.then57.sw.bb84_crit_edge191:                   ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb84

if.then57.sw.bb84_crit_edge190:                   ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb84

if.then57.sw.bb84_crit_edge:                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb84

if.then57.sw.bb80_crit_edge189:                   ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb80

if.then57.sw.bb80_crit_edge:                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb80

sw.default:                                       ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8821a2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 60, i8 noundef zeroext 3, i8 noundef zeroext -15, i8 noundef zeroext -112)
  br label %if.end100

sw.bb59:                                          ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8821a2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 45, i8 noundef zeroext 3, i8 noundef zeroext -15, i8 noundef zeroext -112)
  br label %if.end100

sw.bb60:                                          ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8821a2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext -15, i8 noundef zeroext -112)
  br label %if.end100

sw.bb61:                                          ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8821a2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext -15, i8 noundef zeroext -112)
  br label %if.end100

sw.bb62:                                          ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8821a2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 60, i8 noundef zeroext 3, i8 noundef zeroext 112, i8 noundef zeroext -112)
  br label %if.end100

sw.bb63:                                          ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8821a2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 45, i8 noundef zeroext 3, i8 noundef zeroext 112, i8 noundef zeroext -112)
  br label %if.end100

sw.bb64:                                          ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8821a2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 112, i8 noundef zeroext -112)
  br label %if.end100

sw.bb65:                                          ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8821a2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -93, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 112, i8 noundef zeroext -112)
  br label %if.end100

sw.bb66:                                          ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8821a2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 60, i8 noundef zeroext 3, i8 noundef zeroext -15, i8 noundef zeroext -112)
  br label %if.end100

sw.bb67:                                          ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8821a2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 45, i8 noundef zeroext 3, i8 noundef zeroext -15, i8 noundef zeroext -112)
  br label %if.end100

sw.bb68:                                          ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8821a2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext -15, i8 noundef zeroext -112)
  br label %if.end100

sw.bb69:                                          ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8821a2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext -15, i8 noundef zeroext -112)
  br label %if.end100

sw.bb70:                                          ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8821a2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 60, i8 noundef zeroext 3, i8 noundef zeroext 112, i8 noundef zeroext -112)
  br label %if.end100

sw.bb71:                                          ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8821a2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 45, i8 noundef zeroext 3, i8 noundef zeroext 112, i8 noundef zeroext -112)
  br label %if.end100

sw.bb72:                                          ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8821a2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 112, i8 noundef zeroext -112)
  br label %if.end100

sw.bb73:                                          ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8821a2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 112, i8 noundef zeroext -112)
  br label %if.end100

sw.bb74:                                          ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8821a2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -93, i8 noundef zeroext 47, i8 noundef zeroext 47, i8 noundef zeroext 96, i8 noundef zeroext -112)
  br label %if.end100

sw.bb75:                                          ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8821a2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 5, i8 noundef zeroext 5, i8 noundef zeroext -31, i8 noundef zeroext -112)
  br label %if.end100

sw.bb76:                                          ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8821a2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 37, i8 noundef zeroext 37, i8 noundef zeroext -31, i8 noundef zeroext -112)
  br label %if.end100

sw.bb77:                                          ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8821a2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 37, i8 noundef zeroext 37, i8 noundef zeroext 96, i8 noundef zeroext -112)
  br label %if.end100

sw.bb78:                                          ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8821a2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 21, i8 noundef zeroext 3, i8 noundef zeroext 112, i8 noundef zeroext -112)
  br label %if.end100

sw.bb79:                                          ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8821a2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext -16, i8 noundef zeroext 20)
  br label %if.end100

sw.bb80:                                          ; preds = %if.then57.sw.bb80_crit_edge, %if.then57.sw.bb80_crit_edge189
  call fastcc void @btc8821a2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -45, i8 noundef zeroext 60, i8 noundef zeroext 3, i8 noundef zeroext 112, i8 noundef zeroext 80)
  br label %if.end100

sw.bb81:                                          ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8821a2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext -15, i8 noundef zeroext -112)
  br label %if.end100

sw.bb82:                                          ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8821a2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 48, i8 noundef zeroext 3, i8 noundef zeroext -15, i8 noundef zeroext -112)
  br label %if.end100

sw.bb83:                                          ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8821a2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 60, i8 noundef zeroext 3, i8 noundef zeroext -15, i8 noundef zeroext -112)
  br label %if.end100

sw.bb84:                                          ; preds = %if.then57.sw.bb84_crit_edge, %if.then57.sw.bb84_crit_edge190, %if.then57.sw.bb84_crit_edge191
  %28 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i) #4
  %30 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i, i32 0, i32 1
  %31 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i, i32 0, i32 2
  %32 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i, i32 0, i32 3
  %33 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i, i32 0, i32 4
  %34 = ptrtoint ptr %h2c_parameter.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -45, ptr %h2c_parameter.i, align 1
  %35 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 58, ptr %30, align 1
  %36 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 3, ptr %31, align 1
  %37 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 112, ptr %32, align 1
  %38 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 80, ptr %33, align 1
  store i8 -45, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 8), align 4
  store i8 58, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 8, i32 1), align 1
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 8, i32 2), align 2
  store i8 112, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 8, i32 3), align 1
  store i8 80, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 8, i32 4), align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %29, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.130, i32 noundef 211, i32 noundef 973303888) #4
  %btc_fill_h2c.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %39 = ptrtoint ptr %btc_fill_h2c.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %btc_fill_h2c.i, align 4
  call void %40(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i) #4
  br label %if.end100

sw.bb85:                                          ; preds = %if.then57.sw.bb85_crit_edge, %if.then57.sw.bb85_crit_edge192, %if.then57.sw.bb85_crit_edge193, %if.then57.sw.bb85_crit_edge194
  %41 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i166) #4
  %43 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i166, i32 0, i32 1
  %44 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i166, i32 0, i32 2
  %45 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i166, i32 0, i32 3
  %46 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i166, i32 0, i32 4
  %47 = ptrtoint ptr %h2c_parameter.i166 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -45, ptr %h2c_parameter.i166, align 1
  %48 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 45, ptr %43, align 1
  %49 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 3, ptr %44, align 1
  %50 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 112, ptr %45, align 1
  %51 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 80, ptr %46, align 1
  store i8 -45, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 8), align 4
  store i8 45, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 8, i32 1), align 1
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 8, i32 2), align 2
  store i8 112, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 8, i32 3), align 1
  store i8 80, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 8, i32 4), align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %42, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.130, i32 noundef 211, i32 noundef 755200080) #4
  %btc_fill_h2c.i168 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %52 = ptrtoint ptr %btc_fill_h2c.i168 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %btc_fill_h2c.i168, align 4
  call void %53(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i166) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i166) #4
  br label %if.end100

sw.bb86:                                          ; preds = %if.then57.sw.bb86_crit_edge, %if.then57.sw.bb86_crit_edge195, %if.then57.sw.bb86_crit_edge196, %if.then57.sw.bb86_crit_edge197
  %54 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i169) #4
  %56 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i169, i32 0, i32 1
  %57 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i169, i32 0, i32 2
  %58 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i169, i32 0, i32 3
  %59 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i169, i32 0, i32 4
  %60 = ptrtoint ptr %h2c_parameter.i169 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -45, ptr %h2c_parameter.i169, align 1
  %61 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 28, ptr %56, align 1
  %62 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 3, ptr %57, align 1
  %63 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 112, ptr %58, align 1
  %64 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 80, ptr %59, align 1
  store i8 -45, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 8), align 4
  store i8 28, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 8, i32 1), align 1
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 8, i32 2), align 2
  store i8 112, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 8, i32 3), align 1
  store i8 80, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 8, i32 4), align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %55, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.130, i32 noundef 211, i32 noundef 469987408) #4
  %btc_fill_h2c.i171 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %65 = ptrtoint ptr %btc_fill_h2c.i171 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %btc_fill_h2c.i171, align 4
  call void %66(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i169) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i169) #4
  br label %if.end100

sw.bb87:                                          ; preds = %if.then57.sw.bb87_crit_edge, %if.then57.sw.bb87_crit_edge198, %if.then57.sw.bb87_crit_edge199, %if.then57.sw.bb87_crit_edge200
  %67 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i172) #4
  %69 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i172, i32 0, i32 1
  %70 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i172, i32 0, i32 2
  %71 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i172, i32 0, i32 3
  %72 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i172, i32 0, i32 4
  %73 = ptrtoint ptr %h2c_parameter.i172 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 -45, ptr %h2c_parameter.i172, align 1
  %74 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 16, ptr %69, align 1
  %75 = ptrtoint ptr %70 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 3, ptr %70, align 1
  %76 = ptrtoint ptr %71 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 112, ptr %71, align 1
  %77 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 80, ptr %72, align 1
  store i8 -45, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 8), align 4
  store i8 16, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 8, i32 1), align 1
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 8, i32 2), align 2
  store i8 112, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 8, i32 3), align 1
  store i8 80, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 8, i32 4), align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %68, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.130, i32 noundef 211, i32 noundef 268660816) #4
  %btc_fill_h2c.i174 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %78 = ptrtoint ptr %btc_fill_h2c.i174 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %btc_fill_h2c.i174, align 4
  call void %79(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i172) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i172) #4
  br label %if.end100

sw.bb88:                                          ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8821a2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 60, i8 noundef zeroext 3, i8 noundef zeroext -15, i8 noundef zeroext -112)
  br label %if.end100

sw.bb89:                                          ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8821a2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 60, i8 noundef zeroext 3, i8 noundef zeroext 112, i8 noundef zeroext -112)
  br label %if.end100

sw.bb90:                                          ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8821a2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 21, i8 noundef zeroext 3, i8 noundef zeroext 112, i8 noundef zeroext -112)
  br label %if.end100

sw.bb91:                                          ; preds = %if.then57.sw.bb91_crit_edge, %if.then57.sw.bb91_crit_edge201
  call fastcc void @btc8821a2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -29, i8 noundef zeroext 53, i8 noundef zeroext 3, i8 noundef zeroext 113, i8 noundef zeroext 17)
  br label %if.end100

sw.bb92:                                          ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8821a2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -45, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 112, i8 noundef zeroext 84)
  br label %if.end100

sw.bb93:                                          ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8821a2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -45, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 112, i8 noundef zeroext 80)
  br label %if.end100

sw.bb94:                                          ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8821a2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext -45, i8 noundef zeroext 48, i8 noundef zeroext 3, i8 noundef zeroext 112, i8 noundef zeroext 80)
  br label %if.end100

if.else:                                          ; preds = %if.end55
  %80 = zext i8 %type.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.237)
  switch i8 %type.addr.0, label %sw.default98 [
    i8 0, label %sw.bb96
    i8 1, label %sw.bb97
  ]

sw.bb96:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %81 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i175) #4
  %83 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i175, i32 0, i32 1
  %84 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i175, i32 0, i32 2
  %85 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i175, i32 0, i32 3
  %86 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i175, i32 0, i32 4
  %87 = ptrtoint ptr %h2c_parameter.i175 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %h2c_parameter.i175, align 1
  %88 = ptrtoint ptr %83 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %83, align 1
  %89 = ptrtoint ptr %84 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %84, align 1
  %90 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 64, ptr %85, align 1
  %91 = ptrtoint ptr %86 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %86, align 1
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 8), align 4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 8, i32 1), align 1
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 8, i32 2), align 2
  store i8 64, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 8, i32 3), align 1
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 8, i32 4), align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %82, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.130, i32 noundef 0, i32 noundef 16384) #4
  %btc_fill_h2c.i177 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %92 = ptrtoint ptr %btc_fill_h2c.i177 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %btc_fill_h2c.i177, align 4
  call void %93(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i175) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i175) #4
  br label %if.end100

sw.bb97:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %94 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i178) #4
  %96 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i178, i32 0, i32 1
  %97 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i178, i32 0, i32 2
  %98 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i178, i32 0, i32 3
  %99 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i178, i32 0, i32 4
  %100 = ptrtoint ptr %h2c_parameter.i178 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %h2c_parameter.i178, align 1
  %101 = ptrtoint ptr %96 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %96, align 1
  %102 = ptrtoint ptr %97 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %97, align 1
  %103 = ptrtoint ptr %98 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 72, ptr %98, align 1
  %104 = ptrtoint ptr %99 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %99, align 1
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 8), align 4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 8, i32 1), align 1
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 8, i32 2), align 2
  store i8 72, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 8, i32 3), align 1
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 8, i32 4), align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %95, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.130, i32 noundef 0, i32 noundef 18432) #4
  %btc_fill_h2c.i180 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %105 = ptrtoint ptr %btc_fill_h2c.i180 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %btc_fill_h2c.i180, align 4
  call void %106(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i178) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i178) #4
  br label %if.end100

sw.default98:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %107 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i181) #4
  %109 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i181, i32 0, i32 1
  %110 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i181, i32 0, i32 2
  %111 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i181, i32 0, i32 3
  %112 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i181, i32 0, i32 4
  %113 = ptrtoint ptr %h2c_parameter.i181 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 0, ptr %h2c_parameter.i181, align 1
  %114 = ptrtoint ptr %109 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 0, ptr %109, align 1
  %115 = ptrtoint ptr %110 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %110, align 1
  %116 = ptrtoint ptr %111 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 64, ptr %111, align 1
  %117 = ptrtoint ptr %112 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 0, ptr %112, align 1
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 8), align 4
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 8, i32 1), align 1
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 8, i32 2), align 2
  store i8 64, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 8, i32 3), align 1
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 8, i32 4), align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %108, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.130, i32 noundef 0, i32 noundef 16384) #4
  %btc_fill_h2c.i183 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %118 = ptrtoint ptr %btc_fill_h2c.i183 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %btc_fill_h2c.i183, align 4
  call void %119(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i181) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i181) #4
  br label %if.end100

if.end100:                                        ; preds = %sw.default98, %sw.bb97, %sw.bb96, %sw.bb94, %sw.bb93, %sw.bb92, %sw.bb91, %sw.bb90, %sw.bb89, %sw.bb88, %sw.bb87, %sw.bb86, %sw.bb85, %sw.bb84, %sw.bb83, %sw.bb82, %sw.bb81, %sw.bb80, %sw.bb79, %sw.bb78, %sw.bb77, %sw.bb76, %sw.bb75, %sw.bb74, %sw.bb73, %sw.bb72, %sw.bb71, %sw.bb70, %sw.bb69, %sw.bb68, %sw.bb67, %sw.bb66, %sw.bb65, %sw.bb64, %sw.bb63, %sw.bb62, %sw.bb61, %sw.bb60, %sw.bb59, %sw.default
  %120 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 13), align 1, !range !473
  store i8 %120, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 12), align 4
  %121 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 7), align 1
  store i8 %121, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 6), align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end100, %land.lhs.true46.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8821a2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext %force_exec, i8 noundef zeroext %fw_dac_swing_lvl) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %cond = select i1 %force_exec, ptr @.str.103, ptr @.str.104
  %conv = zext i8 %fw_dac_swing_lvl to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.131, ptr noundef nonnull %cond, i32 noundef %conv) #4
  store i8 %fw_dac_swing_lvl, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 3), align 1
  br i1 %force_exec, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then:                                          ; preds = %entry
  %2 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 2), align 2
  %conv2 = zext i8 %2 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.132, i32 noundef %conv2, i32 noundef %conv) #4
  %3 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 2), align 2
  %4 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 3), align 1
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
  %5 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 3), align 1
  %6 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i) #4
  %8 = ptrtoint ptr %h2c_parameter.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %5, ptr %h2c_parameter.i, align 1
  %conv.i = zext i8 %5 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef %conv.i) #4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.134, i32 noundef %conv.i) #4
  %btc_fill_h2c.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %9 = ptrtoint ptr %btc_fill_h2c.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %btc_fill_h2c.i, align 4
  call void %10(ptr noundef %btcoexist, i8 noundef zeroext 100, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i) #4
  %11 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 3), align 1
  store i8 %11, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 2), align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8821a2ant_dec_bt_pwr(ptr noundef %btcoexist, i1 noundef zeroext %force_exec, i8 noundef zeroext %dec_bt_pwr_lvl) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %cond = select i1 %force_exec, ptr @.str.103, ptr @.str.104
  %conv = zext i8 %dec_bt_pwr_lvl to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.135, ptr noundef nonnull %cond, i32 noundef %conv) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec_bt_pwr_lvl)
  %tobool1 = icmp ne i8 %dec_bt_pwr_lvl, 0
  %frombool2 = zext i1 %tobool1 to i8
  store i8 %frombool2, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 1), align 1
  br i1 %force_exec, label %entry.if.end17_crit_edge, label %if.then

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.then:                                          ; preds = %entry
  %2 = load i8, ptr @glcoex_dm_8821a_2ant, align 4, !range !473
  %3 = zext i8 %2 to i32
  %4 = zext i1 %tobool1 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.136, i32 noundef %3, i32 noundef %4) #4
  %5 = load i8, ptr @glcoex_dm_8821a_2ant, align 4, !range !473
  %6 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 1), align 1, !range !473
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %6)
  %cmp = icmp eq i8 %5, %6
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end17_crit_edge

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end17:                                         ; preds = %if.then.if.end17_crit_edge, %entry.if.end17_crit_edge
  %7 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 1), align 1, !range !473
  %8 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i) #4
  %10 = ptrtoint ptr %h2c_parameter.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %7, ptr %h2c_parameter.i, align 1
  %conv.i = zext i8 %7 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %9, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.137, i32 noundef %conv.i, i32 noundef %conv.i) #4
  %btc_fill_h2c.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %11 = ptrtoint ptr %btc_fill_h2c.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %btc_fill_h2c.i, align 4
  call void %12(ptr noundef %btcoexist, i8 noundef zeroext 98, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i) #4
  %13 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 1), align 1, !range !473
  store i8 %13, ptr @glcoex_dm_8821a_2ant, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8821a2ant_sw_mechanism1(ptr noundef %btcoexist, i1 noundef zeroext %low_penalty_ra) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool1.i = zext i1 %low_penalty_ra to i8
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter.i, align 4
  %cond3.i = select i1 %low_penalty_ra, ptr @.str.112, ptr @.str.113
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.104, ptr noundef nonnull %cond3.i) #4
  store i8 %frombool1.i, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 20), align 1
  %2 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 19), align 4, !range !473
  %3 = zext i8 %2 to i32
  %4 = zext i1 %low_penalty_ra to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.139, i32 noundef %3, i32 noundef %4) #4
  %5 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 19), align 4, !range !473
  %6 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 20), align 1, !range !473
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %6)
  %cmp.i = icmp eq i8 %5, %6
  br i1 %cmp.i, label %entry.btc8821a2ant_low_penalty_ra.exit_crit_edge, label %if.end19.i

entry.btc8821a2ant_low_penalty_ra.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8821a2ant_low_penalty_ra.exit

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
  br i1 %tobool21.not.i, label %if.end19.i.btc8821a2ant_set_sw_penalty_tx_rate_adaptive.exit.i_crit_edge, label %if.then.i.i

if.end19.i.btc8821a2ant_set_sw_penalty_tx_rate_adaptive.exit.i_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %btc8821a2ant_set_sw_penalty_tx_rate_adaptive.exit.i

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
  store i8 -11, ptr %arrayidx4.i.i, align 1
  %arrayidx5.i.i = getelementptr inbounds [6 x i8], ptr %h2c_parameter.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -96, ptr %arrayidx5.i.i, align 1
  %arrayidx6.i.i = getelementptr inbounds [6 x i8], ptr %h2c_parameter.i.i, i32 0, i32 5
  %17 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -96, ptr %arrayidx6.i.i, align 1
  br label %btc8821a2ant_set_sw_penalty_tx_rate_adaptive.exit.i

btc8821a2ant_set_sw_penalty_tx_rate_adaptive.exit.i: ; preds = %if.then.i.i, %if.end19.i.btc8821a2ant_set_sw_penalty_tx_rate_adaptive.exit.i_crit_edge
  %cond.i.i = phi ptr [ @.str.141, %if.then.i.i ], [ @.str.142, %if.end19.i.btc8821a2ant_set_sw_penalty_tx_rate_adaptive.exit.i_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %8, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.140, ptr noundef nonnull %cond.i.i) #4
  %btc_fill_h2c.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %18 = ptrtoint ptr %btc_fill_h2c.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %btc_fill_h2c.i.i, align 4
  call void %19(ptr noundef %btcoexist, i8 noundef zeroext 105, i32 noundef 6, ptr noundef nonnull %h2c_parameter.i.i) #4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %h2c_parameter.i.i) #4
  %20 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 20), align 1, !range !473
  store i8 %20, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 19), align 4
  br label %btc8821a2ant_low_penalty_ra.exit

btc8821a2ant_low_penalty_ra.exit:                 ; preds = %btc8821a2ant_set_sw_penalty_tx_rate_adaptive.exit.i, %entry.btc8821a2ant_low_penalty_ra.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8821a2ant_set_fw_ps_tdma(ptr noundef %btcoexist, i8 noundef zeroext %byte1, i8 noundef zeroext %byte2, i8 noundef zeroext %byte3, i8 noundef zeroext %byte4, i8 noundef zeroext %byte5) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter) #4
  %2 = getelementptr inbounds [5 x i8], ptr %h2c_parameter, i32 0, i32 1
  %3 = getelementptr inbounds [5 x i8], ptr %h2c_parameter, i32 0, i32 2
  %4 = getelementptr inbounds [5 x i8], ptr %h2c_parameter, i32 0, i32 3
  %5 = getelementptr inbounds [5 x i8], ptr %h2c_parameter, i32 0, i32 4
  %6 = ptrtoint ptr %h2c_parameter to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %byte1, ptr %h2c_parameter, align 1
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %byte2, ptr %2, align 1
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %byte3, ptr %3, align 1
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %byte4, ptr %4, align 1
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %byte5, ptr %5, align 1
  store i8 %byte1, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 8), align 4
  store i8 %byte2, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 8, i32 1), align 1
  store i8 %byte3, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 8, i32 2), align 2
  store i8 %byte4, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 8, i32 3), align 1
  store i8 %byte5, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 8, i32 4), align 4
  %conv = zext i8 %byte1 to i32
  %conv16 = zext i8 %byte2 to i32
  %shl = shl nuw i32 %conv16, 24
  %conv18 = zext i8 %byte3 to i32
  %shl19 = shl nuw nsw i32 %conv18, 16
  %or = or i32 %shl19, %shl
  %conv21 = zext i8 %byte4 to i32
  %shl22 = shl nuw nsw i32 %conv21, 8
  %or23 = or i32 %or, %shl22
  %conv25 = zext i8 %byte5 to i32
  %or26 = or i32 %or23, %conv25
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.130, i32 noundef %conv, i32 noundef %or26) #4
  %btc_fill_h2c = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 29
  %11 = ptrtoint ptr %btc_fill_h2c to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %btc_fill_h2c, align 4
  call void %12(ptr noundef %btcoexist, i8 noundef zeroext 96, i32 noundef 5, ptr noundef nonnull %h2c_parameter) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8821a2ant_dac_swing(ptr noundef %btcoexist, i1 noundef zeroext %dac_swing_on, i32 noundef %dac_swing_lvl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool1 = zext i1 %dac_swing_on to i8
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %cond3 = select i1 %dac_swing_on, ptr @.str.112, ptr @.str.113
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.104, ptr noundef nonnull %cond3, i32 noundef %dac_swing_lvl) #4
  store i8 %frombool1, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 23), align 4
  store i32 %dac_swing_lvl, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 24), align 4
  %2 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 21), align 2, !range !473
  %3 = zext i8 %2 to i32
  %4 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 22), align 4
  %5 = zext i1 %dac_swing_on to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.144, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %dac_swing_lvl) #4
  %6 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 21), align 2, !range !473
  %7 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 23), align 4, !range !473
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %7)
  %cmp = icmp eq i8 %6, %7
  br i1 %cmp, label %land.lhs.true, label %entry.if.end24_crit_edge

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

land.lhs.true:                                    ; preds = %entry
  %8 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 22), align 4
  %9 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 24), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %9)
  %cmp21 = icmp eq i32 %8, %9
  br i1 %cmp21, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end24_crit_edge

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end24:                                         ; preds = %land.lhs.true.if.end24_crit_edge, %entry.if.end24_crit_edge
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
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748000) #4
  %40 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %adapter, align 4
  %conv.i.i = trunc i32 %dac_swing_lvl to i8
  %.sink5.i = select i1 %dac_swing_on, i32 %dac_swing_lvl, i32 24
  %.sink.i = select i1 %dac_swing_on, i8 %conv.i.i, i8 24
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %41, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.145, i32 noundef %.sink5.i) #4
  %btc_write_1byte_bitmask.i3.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 19
  %42 = ptrtoint ptr %btc_write_1byte_bitmask.i3.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %btc_write_1byte_bitmask.i3.i, align 4
  tail call void %43(ptr noundef %btcoexist, i32 noundef 3163, i32 noundef 62, i8 noundef zeroext %.sink.i) #4
  %44 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 23), align 4, !range !473
  store i8 %44, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 21), align 2
  %45 = load i32, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 24), align 4
  store i32 %45, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 22), align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8821a2ant_action_wifi_multi_port(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %low_pwr_disable.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @btc8821a2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 6)
  tail call fastcc void @btc8821a2ant_dec_bt_pwr(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 0)
  tail call fastcc void @btc8821a2ant_sw_mechanism1(ptr noundef %btcoexist, i1 noundef zeroext false)
  tail call fastcc void @btc8821a2ant_dac_swing(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 24) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 29), align 4
  tail call fastcc void @btc8821a2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1431655765, i32 noundef 16777215) #4
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
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 30), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @btc8821a2ant_is_common_action(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %low_pwr_disable.i56.i = alloca i8, align 1
  %low_pwr_disable.i.i = alloca i8, align 1
  %wifi_rssi.i39.i = alloca i32, align 4
  %wifi_rssi.i.i = alloca i32, align 4
  %ap_num.i = alloca i8, align 1
  %low_pwr_disable.i110 = alloca i8, align 1
  %reject_rx_agg.i102 = alloca i8, align 1
  %bt_ctrl_rx_agg_size.i103 = alloca i8, align 1
  %rx_agg_size.i104 = alloca i8, align 1
  %low_pwr_disable.i98 = alloca i8, align 1
  %reject_rx_agg.i90 = alloca i8, align 1
  %bt_ctrl_rx_agg_size.i91 = alloca i8, align 1
  %rx_agg_size.i92 = alloca i8, align 1
  %low_pwr_disable.i = alloca i8, align 1
  %reject_rx_agg.i = alloca i8, align 1
  %bt_ctrl_rx_agg_size.i = alloca i8, align 1
  %rx_agg_size.i = alloca i8, align 1
  %wifi_connected = alloca i8, align 1
  %wifi_busy = alloca i8, align 1
  %low_pwr_disable = alloca i8, align 1
  %bt_hs_on = alloca i8, align 1
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_hs_on) #4
  %4 = ptrtoint ptr %bt_hs_on to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %bt_hs_on, align 1
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
  %12 = load i8, ptr %wifi_connected, align 1, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
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
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.201) #4
  %btc_set_rf_reg = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 27
  %27 = ptrtoint ptr %btc_set_rf_reg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %btc_set_rf_reg, align 4
  call void %28(ptr noundef %btcoexist, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 1048575, i32 noundef 0) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 29), align 4
  call fastcc void @btc8821a2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1431655765, i32 noundef 16777215) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  %29 = ptrtoint ptr %low_pwr_disable.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %low_pwr_disable.i, align 1
  %30 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %btc_set, align 4
  %call5.i = call zeroext i1 %31(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i) #4
  %32 = ptrtoint ptr %btc_set to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %btc_set, align 4
  %call7.i89 = call zeroext i1 %33(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 30), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 1)
  call fastcc void @btc8821a2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 6)
  call fastcc void @btc8821a2ant_dec_bt_pwr(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 0)
  call fastcc void @btc8821a2ant_sw_mechanism1(ptr noundef %btcoexist, i1 noundef zeroext false)
  call fastcc void @btc8821a2ant_dac_swing(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 24) #4
  br label %cleanup

if.else:                                          ; preds = %entry
  %34 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 40), align 1
  %35 = zext i8 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.238)
  switch i8 %34, label %if.else22 [
    i8 0, label %if.then7
    i8 1, label %if.then16
  ]

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %36 = ptrtoint ptr %low_pwr_disable to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %low_pwr_disable, align 1
  %btc_set8 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %37 = ptrtoint ptr %btc_set8 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %btc_set8, align 4
  %call9 = call zeroext i1 %38(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reject_rx_agg.i90) #4
  %39 = ptrtoint ptr %reject_rx_agg.i90 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %reject_rx_agg.i90, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i91) #4
  %40 = ptrtoint ptr %bt_ctrl_rx_agg_size.i91 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %bt_ctrl_rx_agg_size.i91, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rx_agg_size.i92) #4
  %41 = ptrtoint ptr %rx_agg_size.i92 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 8, ptr %rx_agg_size.i92, align 1
  %42 = ptrtoint ptr %btc_set8 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %btc_set8, align 4
  %call.i94 = call zeroext i1 %43(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %reject_rx_agg.i90) #4
  %44 = ptrtoint ptr %btc_set8 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %btc_set8, align 4
  %call7.i95 = call zeroext i1 %45(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %bt_ctrl_rx_agg_size.i91) #4
  %46 = ptrtoint ptr %btc_set8 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %btc_set8, align 4
  %call9.i96 = call zeroext i1 %47(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %rx_agg_size.i92) #4
  %48 = ptrtoint ptr %btc_set8 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %btc_set8, align 4
  %call11.i97 = call zeroext i1 %49(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rx_agg_size.i92) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i91) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reject_rx_agg.i90) #4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.202) #4
  %btc_set_rf_reg10 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 27
  %50 = ptrtoint ptr %btc_set_rf_reg10 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %btc_set_rf_reg10, align 4
  call void %51(ptr noundef %btcoexist, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 1048575, i32 noundef 0) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 29), align 4
  call fastcc void @btc8821a2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1431655765, i32 noundef 16777215) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i98) #4
  %52 = ptrtoint ptr %low_pwr_disable.i98 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %low_pwr_disable.i98, align 1
  %53 = ptrtoint ptr %btc_set8 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %btc_set8, align 4
  %call5.i100 = call zeroext i1 %54(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i98) #4
  %55 = ptrtoint ptr %btc_set8 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %btc_set8, align 4
  %call7.i101 = call zeroext i1 %56(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 30), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i98) #4
  call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 1)
  call fastcc void @btc8821a2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 11)
  call fastcc void @btc8821a2ant_dec_bt_pwr(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 0)
  call fastcc void @btc8821a2ant_sw_mechanism1(ptr noundef %btcoexist, i1 noundef zeroext false)
  call fastcc void @btc8821a2ant_dac_swing(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 24) #4
  br label %cleanup

if.then16:                                        ; preds = %if.else
  %57 = ptrtoint ptr %low_pwr_disable to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %low_pwr_disable, align 1
  %btc_set17 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %58 = ptrtoint ptr %btc_set17 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %btc_set17, align 4
  %call18 = call zeroext i1 %59(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable) #4
  %60 = ptrtoint ptr %bt_hs_on to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %bt_hs_on, align 1, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool19.not = icmp eq i8 %61, 0
  br i1 %tobool19.not, label %if.end, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.203) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reject_rx_agg.i102) #4
  %62 = ptrtoint ptr %reject_rx_agg.i102 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %reject_rx_agg.i102, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i103) #4
  %63 = ptrtoint ptr %bt_ctrl_rx_agg_size.i103 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %bt_ctrl_rx_agg_size.i103, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rx_agg_size.i104) #4
  %64 = ptrtoint ptr %rx_agg_size.i104 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 8, ptr %rx_agg_size.i104, align 1
  %65 = ptrtoint ptr %btc_set17 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %btc_set17, align 4
  %call.i106 = call zeroext i1 %66(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %reject_rx_agg.i102) #4
  %67 = ptrtoint ptr %btc_set17 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %btc_set17, align 4
  %call7.i107 = call zeroext i1 %68(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %bt_ctrl_rx_agg_size.i103) #4
  %69 = ptrtoint ptr %btc_set17 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %btc_set17, align 4
  %call9.i108 = call zeroext i1 %70(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %rx_agg_size.i104) #4
  %71 = ptrtoint ptr %btc_set17 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %btc_set17, align 4
  %call11.i109 = call zeroext i1 %72(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rx_agg_size.i104) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i103) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reject_rx_agg.i102) #4
  %btc_set_rf_reg21 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 27
  %73 = ptrtoint ptr %btc_set_rf_reg21 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %btc_set_rf_reg21, align 4
  call void %74(ptr noundef %btcoexist, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 1048575, i32 noundef 0) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 29), align 4
  call fastcc void @btc8821a2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1431655765, i32 noundef 16777215) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i110) #4
  %75 = ptrtoint ptr %low_pwr_disable.i110 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %low_pwr_disable.i110, align 1
  %76 = ptrtoint ptr %btc_set17 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %btc_set17, align 4
  %call5.i112 = call zeroext i1 %77(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i110) #4
  %78 = ptrtoint ptr %btc_set17 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %btc_set17, align 4
  %call7.i113 = call zeroext i1 %79(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 30), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i110) #4
  call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 1)
  call fastcc void @btc8821a2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 11)
  call fastcc void @btc8821a2ant_dec_bt_pwr(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 0)
  call fastcc void @btc8821a2ant_sw_mechanism1(ptr noundef %btcoexist, i1 noundef zeroext false)
  call fastcc void @btc8821a2ant_dac_swing(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 24) #4
  br label %cleanup

if.else22:                                        ; preds = %if.else
  %80 = ptrtoint ptr %low_pwr_disable to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 1, ptr %low_pwr_disable, align 1
  %btc_set23 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %81 = ptrtoint ptr %btc_set23 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %btc_set23, align 4
  %call24 = call zeroext i1 %82(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable) #4
  %83 = ptrtoint ptr %wifi_busy to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %wifi_busy, align 1, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool25.not = icmp eq i8 %84, 0
  br i1 %tobool25.not, label %if.else27, label %if.then26

if.then26:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.204) #4
  br label %cleanup

if.else27:                                        ; preds = %if.else22
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.205) #4
  %85 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ap_num.i) #4
  %87 = ptrtoint ptr %ap_num.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %ap_num.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_rssi.i.i) #4
  %88 = ptrtoint ptr %wifi_rssi.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %wifi_rssi.i.i, align 4
  %89 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %btc_get, align 4
  %call.i.i = call zeroext i1 %90(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi.i.i) #4
  %91 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 14, i32 0), align 1
  %92 = zext i8 %91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.239)
  switch i8 %91, label %if.else19.i.i [
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
  %93 = ptrtoint ptr %wifi_rssi.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %wifi_rssi.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %94)
  %cmp16.not.i.i = icmp slt i32 %94, 17
  %.str.117..str.116.i.i = select i1 %cmp16.not.i.i, ptr @.str.117, ptr @.str.116
  %..i.i = select i1 %cmp16.not.i.i, i8 5, i8 0
  br label %btc8821a2ant_wifi_rssi_state.exit.i

if.else19.i.i:                                    ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #6
  %95 = ptrtoint ptr %wifi_rssi.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %wifi_rssi.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %96)
  %cmp21.i.i = icmp slt i32 %96, 15
  %.str.118..str.119.i.i = select i1 %cmp21.i.i, ptr @.str.118, ptr @.str.119
  %.1.i.i = select i1 %cmp21.i.i, i8 2, i8 3
  br label %btc8821a2ant_wifi_rssi_state.exit.i

btc8821a2ant_wifi_rssi_state.exit.i:              ; preds = %if.else19.i.i, %if.then14.i.i
  %.str.117.sink.i.i = phi ptr [ %.str.117..str.116.i.i, %if.then14.i.i ], [ %.str.118..str.119.i.i, %if.else19.i.i ]
  %wifi_rssi_state.0.i.i = phi i8 [ %..i.i, %if.then14.i.i ], [ %.1.i.i, %if.else19.i.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %86, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.117.sink.i.i) #4
  store i8 %wifi_rssi_state.0.i.i, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 14, i32 0), align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i.i) #4
  %97 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_rssi.i39.i) #4
  %99 = ptrtoint ptr %wifi_rssi.i39.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %wifi_rssi.i39.i, align 4
  %100 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %btc_get, align 4
  %call.i42.i = call zeroext i1 %101(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi.i39.i) #4
  %102 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 14, i32 1), align 4
  %103 = zext i8 %102 to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values.240)
  switch i8 %102, label %if.else19.i50.i [
    i8 2, label %btc8821a2ant_wifi_rssi_state.exit.i.if.then14.i46.i_crit_edge
    i8 5, label %btc8821a2ant_wifi_rssi_state.exit.i.if.then14.i46.i_crit_edge115
  ]

btc8821a2ant_wifi_rssi_state.exit.i.if.then14.i46.i_crit_edge115: ; preds = %btc8821a2ant_wifi_rssi_state.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i46.i

btc8821a2ant_wifi_rssi_state.exit.i.if.then14.i46.i_crit_edge: ; preds = %btc8821a2ant_wifi_rssi_state.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i46.i

if.then14.i46.i:                                  ; preds = %btc8821a2ant_wifi_rssi_state.exit.i.if.then14.i46.i_crit_edge, %btc8821a2ant_wifi_rssi_state.exit.i.if.then14.i46.i_crit_edge115
  %104 = ptrtoint ptr %wifi_rssi.i39.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %wifi_rssi.i39.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %105)
  %cmp16.not.i43.i = icmp slt i32 %105, 24
  %.str.117..str.116.i44.i = select i1 %cmp16.not.i43.i, ptr @.str.117, ptr @.str.116
  %..i45.i = select i1 %cmp16.not.i43.i, i8 5, i8 0
  br label %btc8821a2ant_wifi_rssi_state.exit53.i

if.else19.i50.i:                                  ; preds = %btc8821a2ant_wifi_rssi_state.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %106 = ptrtoint ptr %wifi_rssi.i39.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %wifi_rssi.i39.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %107)
  %cmp21.i47.i = icmp slt i32 %107, 22
  %.str.118..str.119.i48.i = select i1 %cmp21.i47.i, ptr @.str.118, ptr @.str.119
  %.1.i49.i = select i1 %cmp21.i47.i, i8 2, i8 3
  br label %btc8821a2ant_wifi_rssi_state.exit53.i

btc8821a2ant_wifi_rssi_state.exit53.i:            ; preds = %if.else19.i50.i, %if.then14.i46.i
  %.str.117.sink.i51.i = phi ptr [ %.str.117..str.116.i44.i, %if.then14.i46.i ], [ %.str.118..str.119.i48.i, %if.else19.i50.i ]
  %wifi_rssi_state.0.i52.i = phi i8 [ %..i45.i, %if.then14.i46.i ], [ %.1.i49.i, %if.else19.i50.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %98, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.117.sink.i51.i) #4
  store i8 %wifi_rssi_state.0.i52.i, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 14, i32 1), align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i39.i) #4
  %108 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %adapter, align 4
  %110 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 13), align 2
  %111 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 11), align 4
  %112 = zext i8 %110 to i64
  call void @__sanitizer_cov_trace_switch(i64 %112, ptr @__sancov_gen_cov_switch_values.241)
  switch i8 %110, label %if.else17.i.i [
    i8 2, label %btc8821a2ant_wifi_rssi_state.exit53.i.if.then12.i.i_crit_edge
    i8 5, label %btc8821a2ant_wifi_rssi_state.exit53.i.if.then12.i.i_crit_edge116
  ]

btc8821a2ant_wifi_rssi_state.exit53.i.if.then12.i.i_crit_edge116: ; preds = %btc8821a2ant_wifi_rssi_state.exit53.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i.i

btc8821a2ant_wifi_rssi_state.exit53.i.if.then12.i.i_crit_edge: ; preds = %btc8821a2ant_wifi_rssi_state.exit53.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i.i

if.then12.i.i:                                    ; preds = %btc8821a2ant_wifi_rssi_state.exit53.i.if.then12.i.i_crit_edge, %btc8821a2ant_wifi_rssi_state.exit53.i.if.then12.i.i_crit_edge116
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %111)
  %cmp14.not.i.i = icmp ult i8 %111, 48
  %.str.124..str.123.i.i = select i1 %cmp14.not.i.i, ptr @.str.124, ptr @.str.123
  %..i55.i = select i1 %cmp14.not.i.i, i8 5, i8 0
  br label %btc8821a2ant_bt_rssi_state.exit.i

if.else17.i.i:                                    ; preds = %btc8821a2ant_wifi_rssi_state.exit53.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %111)
  %cmp19.i.i = icmp ult i8 %111, 46
  %.str.125..str.126.i.i = select i1 %cmp19.i.i, ptr @.str.125, ptr @.str.126
  %.116.i.i = select i1 %cmp19.i.i, i8 2, i8 3
  br label %btc8821a2ant_bt_rssi_state.exit.i

btc8821a2ant_bt_rssi_state.exit.i:                ; preds = %if.else17.i.i, %if.then12.i.i
  %.str.125.sink.i.i = phi ptr [ %.str.124..str.123.i.i, %if.then12.i.i ], [ %.str.125..str.126.i.i, %if.else17.i.i ]
  %bt_rssi_state.0.i.i = phi i8 [ %..i55.i, %if.then12.i.i ], [ %.116.i.i, %if.else17.i.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %109, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.125.sink.i.i) #4
  store i8 %bt_rssi_state.0.i.i, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 13), align 2
  %113 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %btc_get, align 4
  %call3.i = call zeroext i1 %114(ptr noundef %btcoexist, i8 noundef zeroext 41, ptr noundef nonnull %ap_num.i) #4
  %trunc.i = trunc i8 %wifi_rssi_state.0.i52.i to i3
  %115 = zext i3 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %115, ptr @__sancov_gen_cov_switch_values.242)
  switch i3 %trunc.i, label %btc8821a2ant_bt_rssi_state.exit.i.if.else.i_crit_edge [
    i3 0, label %btc8821a2ant_bt_rssi_state.exit.i.land.lhs.true.i_crit_edge
    i3 3, label %btc8821a2ant_bt_rssi_state.exit.i.land.lhs.true.i_crit_edge117
  ]

btc8821a2ant_bt_rssi_state.exit.i.land.lhs.true.i_crit_edge117: ; preds = %btc8821a2ant_bt_rssi_state.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

btc8821a2ant_bt_rssi_state.exit.i.land.lhs.true.i_crit_edge: ; preds = %btc8821a2ant_bt_rssi_state.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

btc8821a2ant_bt_rssi_state.exit.i.if.else.i_crit_edge: ; preds = %btc8821a2ant_bt_rssi_state.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %btc8821a2ant_bt_rssi_state.exit.i.land.lhs.true.i_crit_edge, %btc8821a2ant_bt_rssi_state.exit.i.land.lhs.true.i_crit_edge117
  %116 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 3), align 1, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool.not.i = icmp eq i8 %116, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true9.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %117 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 2), align 2, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool10.not.i = icmp eq i8 %117, 0
  br i1 %tobool10.not.i, label %land.lhs.true9.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true9.i.if.else.i_crit_edge:             ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %86, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.206) #4
  call fastcc void @btc8821a2ant_dac_swing(ptr noundef %btcoexist, i1 noundef zeroext true, i32 noundef 6) #4
  call fastcc void @btc8821a2ant_dec_bt_pwr(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 0) #4
  call fastcc void @btc8821a2ant_sw_mechanism1(ptr noundef %btcoexist, i1 noundef zeroext false) #4
  call fastcc void @btc8821a2ant_dac_swing(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 24) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 29), align 4
  call fastcc void @btc8821a2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1431655765, i32 noundef 16777215) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i.i) #4
  %118 = ptrtoint ptr %low_pwr_disable.i.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 0, ptr %low_pwr_disable.i.i, align 1
  %119 = ptrtoint ptr %btc_set23 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %btc_set23, align 4
  %call5.i.i = call zeroext i1 %120(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i.i) #4
  %121 = ptrtoint ptr %btc_set23 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %btc_set23, align 4
  %call7.i.i = call zeroext i1 %122(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 30), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i.i) #4
  call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 1) #4
  br label %btc8821a2ant_action_wifi_idle_process.exit

if.else.i:                                        ; preds = %land.lhs.true9.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %btc8821a2ant_bt_rssi_state.exit.i.if.else.i_crit_edge
  %123 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 4), align 4, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool12.not.i = icmp eq i8 %123, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %86, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.207) #4
  call fastcc void @btc8821a2ant_dac_swing(ptr noundef %btcoexist, i1 noundef zeroext true, i32 noundef 6) #4
  call fastcc void @btc8821a2ant_dec_bt_pwr(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 0) #4
  call fastcc void @btc8821a2ant_sw_mechanism1(ptr noundef %btcoexist, i1 noundef zeroext false) #4
  call fastcc void @btc8821a2ant_dac_swing(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 24) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 29), align 4
  call fastcc void @btc8821a2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1431655765, i32 noundef 1431655765, i32 noundef 16777215) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i56.i) #4
  %124 = ptrtoint ptr %low_pwr_disable.i56.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 0, ptr %low_pwr_disable.i56.i, align 1
  %125 = ptrtoint ptr %btc_set23 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %btc_set23, align 4
  %call5.i58.i = call zeroext i1 %126(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i56.i) #4
  %127 = ptrtoint ptr %btc_set23 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %btc_set23, align 4
  %call7.i59.i = call zeroext i1 %128(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 30), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i56.i) #4
  call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 1) #4
  br label %btc8821a2ant_action_wifi_idle_process.exit

if.end14.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @btc8821a2ant_dac_swing(ptr noundef %btcoexist, i1 noundef zeroext true, i32 noundef 24) #4
  br label %btc8821a2ant_action_wifi_idle_process.exit

btc8821a2ant_action_wifi_idle_process.exit:       ; preds = %if.end14.i, %if.then13.i, %if.then.i
  %retval.0.i = phi i1 [ true, %if.then.i ], [ true, %if.then13.i ], [ false, %if.end14.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ap_num.i) #4
  br label %cleanup

cleanup:                                          ; preds = %btc8821a2ant_action_wifi_idle_process.exit, %if.then26, %if.end, %if.then16.cleanup_crit_edge, %if.then7, %if.then
  %retval.0 = phi i1 [ false, %if.then16.cleanup_crit_edge ], [ true, %if.then7 ], [ true, %if.end ], [ false, %if.then26 ], [ %retval.0.i, %btc8821a2ant_action_wifi_idle_process.exit ], [ true, %if.then ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_hs_on) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_busy) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_connected) #4
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8821a2ant_action_sco(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %low_pwr_disable.i = alloca i8, align 1
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
  store i32 -1, ptr %wifi_bw, align 4, !annotation !474
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
  %6 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 14, i32 0), align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.243)
  switch i8 %6, label %if.else19.i [
    i8 2, label %entry.if.then14.i_crit_edge
    i8 5, label %entry.if.then14.i_crit_edge85
  ]

entry.if.then14.i_crit_edge85:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

entry.if.then14.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

if.then14.i:                                      ; preds = %entry.if.then14.i_crit_edge, %entry.if.then14.i_crit_edge85
  %8 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %9)
  %cmp16.not.i = icmp slt i32 %9, 17
  %.str.117..str.116.i = select i1 %cmp16.not.i, ptr @.str.117, ptr @.str.116
  %..i = select i1 %cmp16.not.i, i8 5, i8 0
  br label %btc8821a2ant_wifi_rssi_state.exit

if.else19.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %11)
  %cmp21.i = icmp slt i32 %11, 15
  %.str.118..str.119.i = select i1 %cmp21.i, ptr @.str.118, ptr @.str.119
  %.1.i = select i1 %cmp21.i, i8 2, i8 3
  br label %btc8821a2ant_wifi_rssi_state.exit

btc8821a2ant_wifi_rssi_state.exit:                ; preds = %if.else19.i, %if.then14.i
  %.str.117.sink.i = phi ptr [ %.str.117..str.116.i, %if.then14.i ], [ %.str.118..str.119.i, %if.else19.i ]
  %wifi_rssi_state.0.i = phi i8 [ %..i, %if.then14.i ], [ %.1.i, %if.else19.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %2, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.117.sink.i) #4
  store i8 %wifi_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 14, i32 0), align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %12 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter.i, align 4
  %14 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 13), align 2
  %15 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 11), align 4
  %16 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.244)
  switch i8 %14, label %if.else17.i [
    i8 2, label %btc8821a2ant_wifi_rssi_state.exit.if.then12.i_crit_edge
    i8 5, label %btc8821a2ant_wifi_rssi_state.exit.if.then12.i_crit_edge86
  ]

btc8821a2ant_wifi_rssi_state.exit.if.then12.i_crit_edge86: ; preds = %btc8821a2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i

btc8821a2ant_wifi_rssi_state.exit.if.then12.i_crit_edge: ; preds = %btc8821a2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i

if.then12.i:                                      ; preds = %btc8821a2ant_wifi_rssi_state.exit.if.then12.i_crit_edge, %btc8821a2ant_wifi_rssi_state.exit.if.then12.i_crit_edge86
  call void @__sanitizer_cov_trace_const_cmp1(i8 37, i8 %15)
  %cmp14.not.i = icmp ult i8 %15, 37
  %spec.select = select i1 %cmp14.not.i, ptr @.str.124, ptr @.str.123
  %spec.select80 = select i1 %cmp14.not.i, i8 5, i8 0
  br label %btc8821a2ant_bt_rssi_state.exit

if.else17.i:                                      ; preds = %btc8821a2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 35, i8 %15)
  %cmp19.i = icmp ult i8 %15, 35
  %spec.select81 = select i1 %cmp19.i, ptr @.str.125, ptr @.str.126
  %spec.select82 = select i1 %cmp19.i, i8 2, i8 3
  br label %btc8821a2ant_bt_rssi_state.exit

btc8821a2ant_bt_rssi_state.exit:                  ; preds = %if.else17.i, %if.then12.i
  %.str.125.sink.i = phi ptr [ %spec.select, %if.then12.i ], [ %spec.select81, %if.else17.i ]
  %bt_rssi_state.0.i = phi i8 [ %spec.select80, %if.then12.i ], [ %spec.select82, %if.else17.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %13, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.125.sink.i) #4
  store i8 %bt_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 13), align 2
  %btc_set_rf_reg = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 27
  %17 = ptrtoint ptr %btc_set_rf_reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %btc_set_rf_reg, align 4
  call void %18(ptr noundef %btcoexist, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 1048575, i32 noundef 0) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  %19 = ptrtoint ptr %reject_rx_agg.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %reject_rx_agg.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  %20 = ptrtoint ptr %bt_ctrl_rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %bt_ctrl_rx_agg_size.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  %21 = ptrtoint ptr %rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 8, ptr %rx_agg_size.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %22 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %btc_set.i, align 4
  %call.i76 = call zeroext i1 %23(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %reject_rx_agg.i) #4
  %24 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %btc_set.i, align 4
  %call7.i = call zeroext i1 %25(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %bt_ctrl_rx_agg_size.i) #4
  %26 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %btc_set.i, align 4
  %call9.i = call zeroext i1 %27(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %rx_agg_size.i) #4
  %28 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %btc_set.i, align 4
  %call11.i = call zeroext i1 %29(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  call fastcc void @btc8821a2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 4)
  %trunc = trunc i8 %bt_rssi_state.0.i to i3
  %30 = sext i3 %trunc to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %switch.selectcmp.case1 = icmp eq i3 %trunc, 0
  %31 = sext i3 %trunc to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %31)
  %switch.selectcmp.case2 = icmp eq i3 %trunc, 3
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %32 = zext i1 %switch.selectcmp to i8
  call fastcc void @btc8821a2ant_dec_bt_pwr(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext %32)
  %33 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %btc_get.i, align 4
  %call7 = call zeroext i1 %34(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef nonnull %wifi_bw) #4
  %35 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %wifi_bw, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.245)
  switch i32 %36, label %if.else15 [
    i32 0, label %if.then10
    i32 2, label %if.then14
  ]

if.then10:                                        ; preds = %btc8821a2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  store i8 2, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 29), align 4
  call fastcc void @btc8821a2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1524259546, i32 noundef 1524259546, i32 noundef 16777215) #4
  br label %if.end20

if.then14:                                        ; preds = %btc8821a2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  store i8 8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 29), align 4
  call fastcc void @btc8821a2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1440568797, i32 noundef 1524259546, i32 noundef 16777215) #4
  br label %if.end20

if.else15:                                        ; preds = %btc8821a2ant_bt_rssi_state.exit
  %sco_only = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 6, i32 3
  %38 = ptrtoint ptr %sco_only to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %sco_only, align 1, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not = icmp eq i8 %39, 0
  br i1 %tobool.not, label %if.else17, label %if.then16

if.then16:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #6
  store i8 17, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 29), align 4
  call fastcc void @btc8821a2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef -84215046, i32 noundef -84215046, i32 noundef 16777215) #4
  br label %if.end20

if.else17:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #6
  store i8 12, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 29), align 4
  call fastcc void @btc8821a2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1440568797, i32 noundef 1524259546, i32 noundef 16777215) #4
  br label %if.end20

if.end20:                                         ; preds = %if.else17, %if.then16, %if.then14, %if.then10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  %40 = ptrtoint ptr %low_pwr_disable.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %low_pwr_disable.i, align 1
  %41 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %btc_set.i, align 4
  %call5.i = call zeroext i1 %42(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i) #4
  %43 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %btc_set.i, align 4
  %call7.i78 = call zeroext i1 %44(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 30), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 0)
  call fastcc void @btc8821a2ant_sw_mechanism1(ptr noundef %btcoexist, i1 noundef zeroext true)
  call fastcc void @btc8821a2ant_dac_swing(ptr noundef %btcoexist, i1 noundef zeroext true, i32 noundef 24) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_bw) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8821a2ant_action_hid(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %low_pwr_disable.i = alloca i8, align 1
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
  store i32 -1, ptr %wifi_bw, align 4, !annotation !474
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
  %6 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 14, i32 0), align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.246)
  switch i8 %6, label %if.else19.i [
    i8 2, label %entry.if.then14.i_crit_edge
    i8 5, label %entry.if.then14.i_crit_edge75
  ]

entry.if.then14.i_crit_edge75:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

entry.if.then14.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

if.then14.i:                                      ; preds = %entry.if.then14.i_crit_edge, %entry.if.then14.i_crit_edge75
  %8 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %9)
  %cmp16.not.i = icmp slt i32 %9, 17
  %.str.117..str.116.i = select i1 %cmp16.not.i, ptr @.str.117, ptr @.str.116
  %..i = select i1 %cmp16.not.i, i8 5, i8 0
  br label %btc8821a2ant_wifi_rssi_state.exit

if.else19.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %11)
  %cmp21.i = icmp slt i32 %11, 15
  %.str.118..str.119.i = select i1 %cmp21.i, ptr @.str.118, ptr @.str.119
  %.1.i = select i1 %cmp21.i, i8 2, i8 3
  br label %btc8821a2ant_wifi_rssi_state.exit

btc8821a2ant_wifi_rssi_state.exit:                ; preds = %if.else19.i, %if.then14.i
  %.str.117.sink.i = phi ptr [ %.str.117..str.116.i, %if.then14.i ], [ %.str.118..str.119.i, %if.else19.i ]
  %wifi_rssi_state.0.i = phi i8 [ %..i, %if.then14.i ], [ %.1.i, %if.else19.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %2, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.117.sink.i) #4
  store i8 %wifi_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 14, i32 0), align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %12 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter.i, align 4
  %14 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 13), align 2
  %15 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 11), align 4
  %16 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.247)
  switch i8 %14, label %if.else17.i [
    i8 2, label %btc8821a2ant_wifi_rssi_state.exit.if.then12.i_crit_edge
    i8 5, label %btc8821a2ant_wifi_rssi_state.exit.if.then12.i_crit_edge76
  ]

btc8821a2ant_wifi_rssi_state.exit.if.then12.i_crit_edge76: ; preds = %btc8821a2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i

btc8821a2ant_wifi_rssi_state.exit.if.then12.i_crit_edge: ; preds = %btc8821a2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i

if.then12.i:                                      ; preds = %btc8821a2ant_wifi_rssi_state.exit.if.then12.i_crit_edge, %btc8821a2ant_wifi_rssi_state.exit.if.then12.i_crit_edge76
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %15)
  %cmp14.not.i = icmp ult i8 %15, 48
  %spec.select = select i1 %cmp14.not.i, ptr @.str.124, ptr @.str.123
  %spec.select68 = select i1 %cmp14.not.i, i8 5, i8 0
  br label %btc8821a2ant_bt_rssi_state.exit

if.else17.i:                                      ; preds = %btc8821a2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %15)
  %cmp19.i = icmp ult i8 %15, 46
  %spec.select69 = select i1 %cmp19.i, ptr @.str.125, ptr @.str.126
  %spec.select70 = select i1 %cmp19.i, i8 2, i8 3
  br label %btc8821a2ant_bt_rssi_state.exit

btc8821a2ant_bt_rssi_state.exit:                  ; preds = %if.else17.i, %if.then12.i
  %.str.125.sink.i = phi ptr [ %spec.select, %if.then12.i ], [ %spec.select69, %if.else17.i ]
  %bt_rssi_state.0.i = phi i8 [ %spec.select68, %if.then12.i ], [ %spec.select70, %if.else17.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %13, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.125.sink.i) #4
  store i8 %bt_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 13), align 2
  %btc_set_rf_reg = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 27
  %17 = ptrtoint ptr %btc_set_rf_reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %btc_set_rf_reg, align 4
  call void %18(ptr noundef %btcoexist, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 1048575, i32 noundef 0) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  %19 = ptrtoint ptr %reject_rx_agg.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %reject_rx_agg.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  %20 = ptrtoint ptr %bt_ctrl_rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %bt_ctrl_rx_agg_size.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  %21 = ptrtoint ptr %rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 8, ptr %rx_agg_size.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %22 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %btc_set.i, align 4
  %call.i64 = call zeroext i1 %23(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %reject_rx_agg.i) #4
  %24 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %btc_set.i, align 4
  %call7.i = call zeroext i1 %25(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %bt_ctrl_rx_agg_size.i) #4
  %26 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %btc_set.i, align 4
  %call9.i = call zeroext i1 %27(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %rx_agg_size.i) #4
  %28 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %btc_set.i, align 4
  %call11.i = call zeroext i1 %29(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  call fastcc void @btc8821a2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 6)
  %trunc = trunc i8 %bt_rssi_state.0.i to i3
  %30 = sext i3 %trunc to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %switch.selectcmp.case1 = icmp eq i3 %trunc, 0
  %31 = sext i3 %trunc to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %31)
  %switch.selectcmp.case2 = icmp eq i3 %trunc, 3
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %32 = zext i1 %switch.selectcmp to i8
  call fastcc void @btc8821a2ant_dec_bt_pwr(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext %32)
  %33 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %btc_get.i, align 4
  %call6 = call zeroext i1 %34(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef nonnull %wifi_bw) #4
  %35 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %wifi_bw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp7 = icmp eq i32 %36, 0
  %.sink74 = select i1 %cmp7, i8 7, i8 2
  %.sink73 = select i1 %cmp7, i32 1440568797, i32 1524259546
  store i8 %.sink74, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 29), align 4
  call fastcc void @btc8821a2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef %.sink73, i32 noundef 1524259546, i32 noundef 16777215) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  %37 = ptrtoint ptr %low_pwr_disable.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %low_pwr_disable.i, align 1
  %38 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %btc_set.i, align 4
  %call5.i = call zeroext i1 %39(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i) #4
  %40 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %btc_set.i, align 4
  %call7.i66 = call zeroext i1 %41(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 30), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 24)
  call fastcc void @btc8821a2ant_sw_mechanism1(ptr noundef %btcoexist, i1 noundef zeroext true)
  call fastcc void @btc8821a2ant_dac_swing(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 24) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_bw) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8821a2ant_action_a2dp(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %low_pwr_disable.i = alloca i8, align 1
  %reject_rx_agg.i = alloca i8, align 1
  %bt_ctrl_rx_agg_size.i = alloca i8, align 1
  %rx_agg_size.i = alloca i8, align 1
  %wifi_rssi.i155 = alloca i32, align 4
  %wifi_rssi.i = alloca i32, align 4
  %wifi_bw = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_bw) #4
  %0 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wifi_bw, align 4, !annotation !474
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
  %6 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 14, i32 0), align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.248)
  switch i8 %6, label %if.else19.i [
    i8 2, label %entry.if.then14.i_crit_edge
    i8 5, label %entry.if.then14.i_crit_edge184
  ]

entry.if.then14.i_crit_edge184:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

entry.if.then14.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

if.then14.i:                                      ; preds = %entry.if.then14.i_crit_edge, %entry.if.then14.i_crit_edge184
  %8 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %9)
  %cmp16.not.i = icmp slt i32 %9, 17
  %.str.117..str.116.i = select i1 %cmp16.not.i, ptr @.str.117, ptr @.str.116
  %..i = select i1 %cmp16.not.i, i8 5, i8 0
  br label %btc8821a2ant_wifi_rssi_state.exit

if.else19.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %11)
  %cmp21.i = icmp slt i32 %11, 15
  %.str.118..str.119.i = select i1 %cmp21.i, ptr @.str.118, ptr @.str.119
  %.1.i = select i1 %cmp21.i, i8 2, i8 3
  br label %btc8821a2ant_wifi_rssi_state.exit

btc8821a2ant_wifi_rssi_state.exit:                ; preds = %if.else19.i, %if.then14.i
  %.str.117.sink.i = phi ptr [ %.str.117..str.116.i, %if.then14.i ], [ %.str.118..str.119.i, %if.else19.i ]
  %wifi_rssi_state.0.i = phi i8 [ %..i, %if.then14.i ], [ %.1.i, %if.else19.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %2, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.117.sink.i) #4
  store i8 %wifi_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 14, i32 0), align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %12 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_rssi.i155) #4
  %14 = ptrtoint ptr %wifi_rssi.i155 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %wifi_rssi.i155, align 4
  %15 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %btc_get.i, align 4
  %call.i158 = call zeroext i1 %16(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi.i155) #4
  %17 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 14, i32 1), align 4
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.249)
  switch i8 %17, label %if.else19.i166 [
    i8 2, label %btc8821a2ant_wifi_rssi_state.exit.if.then14.i162_crit_edge
    i8 5, label %btc8821a2ant_wifi_rssi_state.exit.if.then14.i162_crit_edge185
  ]

btc8821a2ant_wifi_rssi_state.exit.if.then14.i162_crit_edge185: ; preds = %btc8821a2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i162

btc8821a2ant_wifi_rssi_state.exit.if.then14.i162_crit_edge: ; preds = %btc8821a2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i162

if.then14.i162:                                   ; preds = %btc8821a2ant_wifi_rssi_state.exit.if.then14.i162_crit_edge, %btc8821a2ant_wifi_rssi_state.exit.if.then14.i162_crit_edge185
  %19 = ptrtoint ptr %wifi_rssi.i155 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %wifi_rssi.i155, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %20)
  %cmp16.not.i159 = icmp slt i32 %20, 44
  %.str.117..str.116.i160 = select i1 %cmp16.not.i159, ptr @.str.117, ptr @.str.116
  %..i161 = select i1 %cmp16.not.i159, i8 5, i8 0
  br label %btc8821a2ant_wifi_rssi_state.exit169

if.else19.i166:                                   ; preds = %btc8821a2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %wifi_rssi.i155 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %wifi_rssi.i155, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %22)
  %cmp21.i163 = icmp slt i32 %22, 42
  %.str.118..str.119.i164 = select i1 %cmp21.i163, ptr @.str.118, ptr @.str.119
  %.1.i165 = select i1 %cmp21.i163, i8 2, i8 3
  br label %btc8821a2ant_wifi_rssi_state.exit169

btc8821a2ant_wifi_rssi_state.exit169:             ; preds = %if.else19.i166, %if.then14.i162
  %.str.117.sink.i167 = phi ptr [ %.str.117..str.116.i160, %if.then14.i162 ], [ %.str.118..str.119.i164, %if.else19.i166 ]
  %wifi_rssi_state.0.i168 = phi i8 [ %..i161, %if.then14.i162 ], [ %.1.i165, %if.else19.i166 ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %13, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.117.sink.i167) #4
  store i8 %wifi_rssi_state.0.i168, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 14, i32 1), align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i155) #4
  %23 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter.i, align 4
  %25 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 13), align 2
  %26 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 11), align 4
  %27 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.250)
  switch i8 %25, label %if.else17.i [
    i8 2, label %btc8821a2ant_wifi_rssi_state.exit169.if.then12.i_crit_edge
    i8 5, label %btc8821a2ant_wifi_rssi_state.exit169.if.then12.i_crit_edge186
  ]

btc8821a2ant_wifi_rssi_state.exit169.if.then12.i_crit_edge186: ; preds = %btc8821a2ant_wifi_rssi_state.exit169
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i

btc8821a2ant_wifi_rssi_state.exit169.if.then12.i_crit_edge: ; preds = %btc8821a2ant_wifi_rssi_state.exit169
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i

if.then12.i:                                      ; preds = %btc8821a2ant_wifi_rssi_state.exit169.if.then12.i_crit_edge, %btc8821a2ant_wifi_rssi_state.exit169.if.then12.i_crit_edge186
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %26)
  %cmp14.not.i = icmp ult i8 %26, 48
  %spec.select = select i1 %cmp14.not.i, ptr @.str.124, ptr @.str.123
  %spec.select176 = select i1 %cmp14.not.i, i8 5, i8 0
  br label %btc8821a2ant_bt_rssi_state.exit

if.else17.i:                                      ; preds = %btc8821a2ant_wifi_rssi_state.exit169
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %26)
  %cmp19.i = icmp ult i8 %26, 46
  %spec.select177 = select i1 %cmp19.i, ptr @.str.125, ptr @.str.126
  %spec.select178 = select i1 %cmp19.i, i8 2, i8 3
  br label %btc8821a2ant_bt_rssi_state.exit

btc8821a2ant_bt_rssi_state.exit:                  ; preds = %if.else17.i, %if.then12.i
  %.str.125.sink.i = phi ptr [ %spec.select, %if.then12.i ], [ %spec.select177, %if.else17.i ]
  %bt_rssi_state.0.i = phi i8 [ %spec.select176, %if.then12.i ], [ %spec.select178, %if.else17.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %24, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.125.sink.i) #4
  store i8 %bt_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 13), align 2
  %btc_set_rf_reg25 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 27
  %28 = ptrtoint ptr %btc_set_rf_reg25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %btc_set_rf_reg25, align 4
  call void %29(ptr noundef %btcoexist, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 1048575, i32 noundef 0) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  %30 = ptrtoint ptr %reject_rx_agg.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %reject_rx_agg.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  %31 = ptrtoint ptr %bt_ctrl_rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %bt_ctrl_rx_agg_size.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  %32 = ptrtoint ptr %rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 8, ptr %rx_agg_size.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %33 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %btc_set.i, align 4
  %call.i172 = call zeroext i1 %34(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %reject_rx_agg.i) #4
  %35 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %btc_set.i, align 4
  %call7.i = call zeroext i1 %36(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %bt_ctrl_rx_agg_size.i) #4
  %37 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %btc_set.i, align 4
  %call9.i = call zeroext i1 %38(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %rx_agg_size.i) #4
  %39 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %btc_set.i, align 4
  %call11.i = call zeroext i1 %40(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  call fastcc void @btc8821a2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 6)
  %trunc = trunc i8 %bt_rssi_state.0.i to i3
  %41 = sext i3 %trunc to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %41)
  %switch.selectcmp.case1 = icmp eq i3 %trunc, 3
  %42 = sext i3 %trunc to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %switch.selectcmp.case2 = icmp eq i3 %trunc, 0
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %43 = select i1 %switch.selectcmp, i8 2, i8 0
  call fastcc void @btc8821a2ant_dec_bt_pwr(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext %43)
  %trunc179 = trunc i8 %wifi_rssi_state.0.i168 to i3
  %44 = zext i3 %trunc179 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.251)
  switch i3 %trunc179, label %btc8821a2ant_bt_rssi_state.exit.if.else58_crit_edge [
    i3 0, label %btc8821a2ant_bt_rssi_state.exit.land.lhs.true47_crit_edge
    i3 3, label %btc8821a2ant_bt_rssi_state.exit.land.lhs.true47_crit_edge187
  ]

btc8821a2ant_bt_rssi_state.exit.land.lhs.true47_crit_edge187: ; preds = %btc8821a2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true47

btc8821a2ant_bt_rssi_state.exit.land.lhs.true47_crit_edge: ; preds = %btc8821a2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true47

btc8821a2ant_bt_rssi_state.exit.if.else58_crit_edge: ; preds = %btc8821a2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else58

land.lhs.true47:                                  ; preds = %btc8821a2ant_bt_rssi_state.exit.land.lhs.true47_crit_edge, %btc8821a2ant_bt_rssi_state.exit.land.lhs.true47_crit_edge187
  %45 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.252)
  switch i3 %trunc, label %land.lhs.true47.if.else58_crit_edge [
    i3 3, label %land.lhs.true47.if.then57_crit_edge
    i3 0, label %land.lhs.true47.if.then57_crit_edge188
  ]

land.lhs.true47.if.then57_crit_edge188:           ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then57

land.lhs.true47.if.then57_crit_edge:              ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then57

land.lhs.true47.if.else58_crit_edge:              ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else58

if.then57:                                        ; preds = %land.lhs.true47.if.then57_crit_edge, %land.lhs.true47.if.then57_crit_edge188
  store i8 7, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 29), align 4
  call fastcc void @btc8821a2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1440568797, i32 noundef 1524259546, i32 noundef 16777215) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  %46 = ptrtoint ptr %low_pwr_disable.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %low_pwr_disable.i, align 1
  %47 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %btc_set.i, align 4
  %call5.i = call zeroext i1 %48(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i) #4
  %49 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %btc_set.i, align 4
  %call7.i174 = call zeroext i1 %50(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 30), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  br label %if.end59

if.else58:                                        ; preds = %land.lhs.true47.if.else58_crit_edge, %btc8821a2ant_bt_rssi_state.exit.if.else58_crit_edge
  store i8 13, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 29), align 4
  call fastcc void @btc8821a2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1610571775, i32 noundef -1431655766, i32 noundef 16777215) #4
  call fastcc void @btc8821a2ant_power_save_state(ptr noundef %btcoexist, i8 noundef zeroext 1, i8 noundef zeroext 80, i8 noundef zeroext 4)
  br label %if.end59

if.end59:                                         ; preds = %if.else58, %if.then57
  call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 23)
  %51 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %btc_get.i, align 4
  %call71 = call zeroext i1 %52(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef nonnull %wifi_bw) #4
  call fastcc void @btc8821a2ant_sw_mechanism1(ptr noundef %btcoexist, i1 noundef zeroext false)
  call fastcc void @btc8821a2ant_dac_swing(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 24) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_bw) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8821a2ant_action_a2dp_pan_hs(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %low_pwr_disable.i = alloca i8, align 1
  %reject_rx_agg.i = alloca i8, align 1
  %bt_ctrl_rx_agg_size.i = alloca i8, align 1
  %rx_agg_size.i = alloca i8, align 1
  %wifi_rssi.i85 = alloca i32, align 4
  %wifi_rssi.i = alloca i32, align 4
  %wifi_bw = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_bw) #4
  %0 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wifi_bw, align 4, !annotation !474
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
  %6 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 14, i32 0), align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.253)
  switch i8 %6, label %if.else19.i [
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
  %8 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %9)
  %cmp16.not.i = icmp slt i32 %9, 17
  %.str.117..str.116.i = select i1 %cmp16.not.i, ptr @.str.117, ptr @.str.116
  %..i = select i1 %cmp16.not.i, i8 5, i8 0
  br label %btc8821a2ant_wifi_rssi_state.exit

if.else19.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %11)
  %cmp21.i = icmp slt i32 %11, 15
  %.str.118..str.119.i = select i1 %cmp21.i, ptr @.str.118, ptr @.str.119
  %.1.i = select i1 %cmp21.i, i8 2, i8 3
  br label %btc8821a2ant_wifi_rssi_state.exit

btc8821a2ant_wifi_rssi_state.exit:                ; preds = %if.else19.i, %if.then14.i
  %.str.117.sink.i = phi ptr [ %.str.117..str.116.i, %if.then14.i ], [ %.str.118..str.119.i, %if.else19.i ]
  %wifi_rssi_state.0.i = phi i8 [ %..i, %if.then14.i ], [ %.1.i, %if.else19.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %2, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.117.sink.i) #4
  store i8 %wifi_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 14, i32 0), align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %12 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_rssi.i85) #4
  %14 = ptrtoint ptr %wifi_rssi.i85 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %wifi_rssi.i85, align 4
  %15 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %btc_get.i, align 4
  %call.i88 = call zeroext i1 %16(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi.i85) #4
  %17 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 14, i32 1), align 4
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.254)
  switch i8 %17, label %if.else19.i96 [
    i8 2, label %btc8821a2ant_wifi_rssi_state.exit.if.then14.i92_crit_edge
    i8 5, label %btc8821a2ant_wifi_rssi_state.exit.if.then14.i92_crit_edge114
  ]

btc8821a2ant_wifi_rssi_state.exit.if.then14.i92_crit_edge114: ; preds = %btc8821a2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i92

btc8821a2ant_wifi_rssi_state.exit.if.then14.i92_crit_edge: ; preds = %btc8821a2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i92

if.then14.i92:                                    ; preds = %btc8821a2ant_wifi_rssi_state.exit.if.then14.i92_crit_edge, %btc8821a2ant_wifi_rssi_state.exit.if.then14.i92_crit_edge114
  %19 = ptrtoint ptr %wifi_rssi.i85 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %wifi_rssi.i85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %20)
  %cmp16.not.i89 = icmp slt i32 %20, 44
  %.str.117..str.116.i90 = select i1 %cmp16.not.i89, ptr @.str.117, ptr @.str.116
  %..i91 = select i1 %cmp16.not.i89, i8 5, i8 0
  br label %btc8821a2ant_wifi_rssi_state.exit99

if.else19.i96:                                    ; preds = %btc8821a2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %wifi_rssi.i85 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %wifi_rssi.i85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %22)
  %cmp21.i93 = icmp slt i32 %22, 42
  %.str.118..str.119.i94 = select i1 %cmp21.i93, ptr @.str.118, ptr @.str.119
  %.1.i95 = select i1 %cmp21.i93, i8 2, i8 3
  br label %btc8821a2ant_wifi_rssi_state.exit99

btc8821a2ant_wifi_rssi_state.exit99:              ; preds = %if.else19.i96, %if.then14.i92
  %.str.117.sink.i97 = phi ptr [ %.str.117..str.116.i90, %if.then14.i92 ], [ %.str.118..str.119.i94, %if.else19.i96 ]
  %wifi_rssi_state.0.i98 = phi i8 [ %..i91, %if.then14.i92 ], [ %.1.i95, %if.else19.i96 ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %13, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.117.sink.i97) #4
  store i8 %wifi_rssi_state.0.i98, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 14, i32 1), align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i85) #4
  %23 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter.i, align 4
  %25 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 13), align 2
  %26 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 11), align 4
  %27 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.255)
  switch i8 %25, label %if.else17.i [
    i8 2, label %btc8821a2ant_wifi_rssi_state.exit99.if.then12.i_crit_edge
    i8 5, label %btc8821a2ant_wifi_rssi_state.exit99.if.then12.i_crit_edge115
  ]

btc8821a2ant_wifi_rssi_state.exit99.if.then12.i_crit_edge115: ; preds = %btc8821a2ant_wifi_rssi_state.exit99
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i

btc8821a2ant_wifi_rssi_state.exit99.if.then12.i_crit_edge: ; preds = %btc8821a2ant_wifi_rssi_state.exit99
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i

if.then12.i:                                      ; preds = %btc8821a2ant_wifi_rssi_state.exit99.if.then12.i_crit_edge, %btc8821a2ant_wifi_rssi_state.exit99.if.then12.i_crit_edge115
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %26)
  %cmp14.not.i = icmp ult i8 %26, 48
  %spec.select = select i1 %cmp14.not.i, ptr @.str.124, ptr @.str.123
  %spec.select106 = select i1 %cmp14.not.i, i8 5, i8 0
  br label %btc8821a2ant_bt_rssi_state.exit

if.else17.i:                                      ; preds = %btc8821a2ant_wifi_rssi_state.exit99
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %26)
  %cmp19.i = icmp ult i8 %26, 46
  %spec.select107 = select i1 %cmp19.i, ptr @.str.125, ptr @.str.126
  %spec.select108 = select i1 %cmp19.i, i8 2, i8 3
  br label %btc8821a2ant_bt_rssi_state.exit

btc8821a2ant_bt_rssi_state.exit:                  ; preds = %if.else17.i, %if.then12.i
  %.str.125.sink.i = phi ptr [ %spec.select, %if.then12.i ], [ %spec.select107, %if.else17.i ]
  %bt_rssi_state.0.i = phi i8 [ %spec.select106, %if.then12.i ], [ %spec.select108, %if.else17.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %24, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.125.sink.i) #4
  store i8 %bt_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 13), align 2
  %btc_set_rf_reg = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 27
  %28 = ptrtoint ptr %btc_set_rf_reg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %btc_set_rf_reg, align 4
  call void %29(ptr noundef %btcoexist, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 1048575, i32 noundef 0) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  %30 = ptrtoint ptr %reject_rx_agg.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %reject_rx_agg.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  %31 = ptrtoint ptr %bt_ctrl_rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %bt_ctrl_rx_agg_size.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  %32 = ptrtoint ptr %rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 8, ptr %rx_agg_size.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %33 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %btc_set.i, align 4
  %call.i102 = call zeroext i1 %34(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %reject_rx_agg.i) #4
  %35 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %btc_set.i, align 4
  %call7.i = call zeroext i1 %36(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %bt_ctrl_rx_agg_size.i) #4
  %37 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %btc_set.i, align 4
  %call9.i = call zeroext i1 %38(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %rx_agg_size.i) #4
  %39 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %btc_set.i, align 4
  %call11.i = call zeroext i1 %40(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  call fastcc void @btc8821a2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 6)
  %trunc = trunc i8 %bt_rssi_state.0.i to i3
  %41 = sext i3 %trunc to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %41)
  %switch.selectcmp.case1 = icmp eq i3 %trunc, 3
  %42 = sext i3 %trunc to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %switch.selectcmp.case2 = icmp eq i3 %trunc, 0
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %43 = select i1 %switch.selectcmp, i8 2, i8 0
  call fastcc void @btc8821a2ant_dec_bt_pwr(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext %43)
  %trunc109 = trunc i8 %wifi_rssi_state.0.i98 to i3
  %44 = zext i3 %trunc109 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.256)
  switch i3 %trunc109, label %btc8821a2ant_bt_rssi_state.exit.if.else26_crit_edge [
    i3 0, label %btc8821a2ant_bt_rssi_state.exit.land.lhs.true_crit_edge
    i3 3, label %btc8821a2ant_bt_rssi_state.exit.land.lhs.true_crit_edge116
  ]

btc8821a2ant_bt_rssi_state.exit.land.lhs.true_crit_edge116: ; preds = %btc8821a2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

btc8821a2ant_bt_rssi_state.exit.land.lhs.true_crit_edge: ; preds = %btc8821a2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

btc8821a2ant_bt_rssi_state.exit.if.else26_crit_edge: ; preds = %btc8821a2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else26

land.lhs.true:                                    ; preds = %btc8821a2ant_bt_rssi_state.exit.land.lhs.true_crit_edge, %btc8821a2ant_bt_rssi_state.exit.land.lhs.true_crit_edge116
  %45 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.257)
  switch i3 %trunc, label %land.lhs.true.if.else26_crit_edge [
    i3 3, label %land.lhs.true.if.then25_crit_edge
    i3 0, label %land.lhs.true.if.then25_crit_edge117
  ]

land.lhs.true.if.then25_crit_edge117:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then25

land.lhs.true.if.then25_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then25

land.lhs.true.if.else26_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else26

if.then25:                                        ; preds = %land.lhs.true.if.then25_crit_edge, %land.lhs.true.if.then25_crit_edge117
  store i8 7, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 29), align 4
  call fastcc void @btc8821a2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1440568797, i32 noundef 1524259546, i32 noundef 16777215) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  %46 = ptrtoint ptr %low_pwr_disable.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %low_pwr_disable.i, align 1
  %47 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %btc_set.i, align 4
  %call5.i = call zeroext i1 %48(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i) #4
  %49 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %btc_set.i, align 4
  %call7.i104 = call zeroext i1 %50(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 30), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  br label %if.end27

if.else26:                                        ; preds = %land.lhs.true.if.else26_crit_edge, %btc8821a2ant_bt_rssi_state.exit.if.else26_crit_edge
  store i8 13, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 29), align 4
  call fastcc void @btc8821a2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1610571775, i32 noundef -1431655766, i32 noundef 16777215) #4
  call fastcc void @btc8821a2ant_power_save_state(ptr noundef %btcoexist, i8 noundef zeroext 1, i8 noundef zeroext 80, i8 noundef zeroext 4)
  br label %if.end27

if.end27:                                         ; preds = %if.else26, %if.then25
  call fastcc void @btc8821a2ant_tdma_duration_adjust(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 2)
  %51 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %btc_get.i, align 4
  %call28 = call zeroext i1 %52(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef nonnull %wifi_bw) #4
  call fastcc void @btc8821a2ant_sw_mechanism1(ptr noundef %btcoexist, i1 noundef zeroext false)
  call fastcc void @btc8821a2ant_dac_swing(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 24) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_bw) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8821a2ant_action_pan_edr(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %low_pwr_disable.i = alloca i8, align 1
  %reject_rx_agg.i = alloca i8, align 1
  %bt_ctrl_rx_agg_size.i = alloca i8, align 1
  %rx_agg_size.i = alloca i8, align 1
  %wifi_rssi.i99 = alloca i32, align 4
  %wifi_rssi.i = alloca i32, align 4
  %wifi_bw = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_bw) #4
  %0 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wifi_bw, align 4, !annotation !474
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
  %6 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 14, i32 0), align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.258)
  switch i8 %6, label %if.else19.i [
    i8 2, label %entry.if.then14.i_crit_edge
    i8 5, label %entry.if.then14.i_crit_edge128
  ]

entry.if.then14.i_crit_edge128:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

entry.if.then14.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

if.then14.i:                                      ; preds = %entry.if.then14.i_crit_edge, %entry.if.then14.i_crit_edge128
  %8 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %9)
  %cmp16.not.i = icmp slt i32 %9, 17
  %.str.117..str.116.i = select i1 %cmp16.not.i, ptr @.str.117, ptr @.str.116
  %..i = select i1 %cmp16.not.i, i8 5, i8 0
  br label %btc8821a2ant_wifi_rssi_state.exit

if.else19.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %11)
  %cmp21.i = icmp slt i32 %11, 15
  %.str.118..str.119.i = select i1 %cmp21.i, ptr @.str.118, ptr @.str.119
  %.1.i = select i1 %cmp21.i, i8 2, i8 3
  br label %btc8821a2ant_wifi_rssi_state.exit

btc8821a2ant_wifi_rssi_state.exit:                ; preds = %if.else19.i, %if.then14.i
  %.str.117.sink.i = phi ptr [ %.str.117..str.116.i, %if.then14.i ], [ %.str.118..str.119.i, %if.else19.i ]
  %wifi_rssi_state.0.i = phi i8 [ %..i, %if.then14.i ], [ %.1.i, %if.else19.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %2, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.117.sink.i) #4
  store i8 %wifi_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 14, i32 0), align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %12 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_rssi.i99) #4
  %14 = ptrtoint ptr %wifi_rssi.i99 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %wifi_rssi.i99, align 4
  %15 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %btc_get.i, align 4
  %call.i102 = call zeroext i1 %16(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi.i99) #4
  %17 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 14, i32 1), align 4
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.259)
  switch i8 %17, label %if.else19.i110 [
    i8 2, label %btc8821a2ant_wifi_rssi_state.exit.if.then14.i106_crit_edge
    i8 5, label %btc8821a2ant_wifi_rssi_state.exit.if.then14.i106_crit_edge129
  ]

btc8821a2ant_wifi_rssi_state.exit.if.then14.i106_crit_edge129: ; preds = %btc8821a2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i106

btc8821a2ant_wifi_rssi_state.exit.if.then14.i106_crit_edge: ; preds = %btc8821a2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i106

if.then14.i106:                                   ; preds = %btc8821a2ant_wifi_rssi_state.exit.if.then14.i106_crit_edge, %btc8821a2ant_wifi_rssi_state.exit.if.then14.i106_crit_edge129
  %19 = ptrtoint ptr %wifi_rssi.i99 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %wifi_rssi.i99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %20)
  %cmp16.not.i103 = icmp slt i32 %20, 44
  %.str.117..str.116.i104 = select i1 %cmp16.not.i103, ptr @.str.117, ptr @.str.116
  %..i105 = select i1 %cmp16.not.i103, i8 5, i8 0
  br label %btc8821a2ant_wifi_rssi_state.exit113

if.else19.i110:                                   ; preds = %btc8821a2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %wifi_rssi.i99 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %wifi_rssi.i99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %22)
  %cmp21.i107 = icmp slt i32 %22, 42
  %.str.118..str.119.i108 = select i1 %cmp21.i107, ptr @.str.118, ptr @.str.119
  %.1.i109 = select i1 %cmp21.i107, i8 2, i8 3
  br label %btc8821a2ant_wifi_rssi_state.exit113

btc8821a2ant_wifi_rssi_state.exit113:             ; preds = %if.else19.i110, %if.then14.i106
  %.str.117.sink.i111 = phi ptr [ %.str.117..str.116.i104, %if.then14.i106 ], [ %.str.118..str.119.i108, %if.else19.i110 ]
  %wifi_rssi_state.0.i112 = phi i8 [ %..i105, %if.then14.i106 ], [ %.1.i109, %if.else19.i110 ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %13, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.117.sink.i111) #4
  store i8 %wifi_rssi_state.0.i112, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 14, i32 1), align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i99) #4
  %23 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter.i, align 4
  %25 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 13), align 2
  %26 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 11), align 4
  %27 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.260)
  switch i8 %25, label %if.else17.i [
    i8 2, label %btc8821a2ant_wifi_rssi_state.exit113.if.then12.i_crit_edge
    i8 5, label %btc8821a2ant_wifi_rssi_state.exit113.if.then12.i_crit_edge130
  ]

btc8821a2ant_wifi_rssi_state.exit113.if.then12.i_crit_edge130: ; preds = %btc8821a2ant_wifi_rssi_state.exit113
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i

btc8821a2ant_wifi_rssi_state.exit113.if.then12.i_crit_edge: ; preds = %btc8821a2ant_wifi_rssi_state.exit113
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i

if.then12.i:                                      ; preds = %btc8821a2ant_wifi_rssi_state.exit113.if.then12.i_crit_edge, %btc8821a2ant_wifi_rssi_state.exit113.if.then12.i_crit_edge130
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %26)
  %cmp14.not.i = icmp ult i8 %26, 48
  %spec.select = select i1 %cmp14.not.i, ptr @.str.124, ptr @.str.123
  %spec.select120 = select i1 %cmp14.not.i, i8 5, i8 0
  br label %btc8821a2ant_bt_rssi_state.exit

if.else17.i:                                      ; preds = %btc8821a2ant_wifi_rssi_state.exit113
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %26)
  %cmp19.i = icmp ult i8 %26, 46
  %spec.select121 = select i1 %cmp19.i, ptr @.str.125, ptr @.str.126
  %spec.select122 = select i1 %cmp19.i, i8 2, i8 3
  br label %btc8821a2ant_bt_rssi_state.exit

btc8821a2ant_bt_rssi_state.exit:                  ; preds = %if.else17.i, %if.then12.i
  %.str.125.sink.i = phi ptr [ %spec.select, %if.then12.i ], [ %spec.select121, %if.else17.i ]
  %bt_rssi_state.0.i = phi i8 [ %spec.select120, %if.then12.i ], [ %spec.select122, %if.else17.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %24, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.125.sink.i) #4
  store i8 %bt_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 13), align 2
  %btc_set_rf_reg = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 27
  %28 = ptrtoint ptr %btc_set_rf_reg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %btc_set_rf_reg, align 4
  call void %29(ptr noundef %btcoexist, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 1048575, i32 noundef 0) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  %30 = ptrtoint ptr %reject_rx_agg.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %reject_rx_agg.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  %31 = ptrtoint ptr %bt_ctrl_rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %bt_ctrl_rx_agg_size.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  %32 = ptrtoint ptr %rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 8, ptr %rx_agg_size.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %33 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %btc_set.i, align 4
  %call.i116 = call zeroext i1 %34(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %reject_rx_agg.i) #4
  %35 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %btc_set.i, align 4
  %call7.i = call zeroext i1 %36(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %bt_ctrl_rx_agg_size.i) #4
  %37 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %btc_set.i, align 4
  %call9.i = call zeroext i1 %38(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %rx_agg_size.i) #4
  %39 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %btc_set.i, align 4
  %call11.i = call zeroext i1 %40(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  call fastcc void @btc8821a2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 6)
  %trunc = trunc i8 %bt_rssi_state.0.i to i3
  %41 = sext i3 %trunc to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %41)
  %switch.selectcmp.case1 = icmp eq i3 %trunc, 3
  %42 = sext i3 %trunc to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %switch.selectcmp.case2 = icmp eq i3 %trunc, 0
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %43 = zext i1 %switch.selectcmp to i8
  call fastcc void @btc8821a2ant_dec_bt_pwr(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext %43)
  %trunc123 = trunc i8 %wifi_rssi_state.0.i112 to i3
  %44 = zext i3 %trunc123 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.261)
  switch i3 %trunc123, label %btc8821a2ant_bt_rssi_state.exit.if.else26_crit_edge [
    i3 0, label %btc8821a2ant_bt_rssi_state.exit.land.lhs.true_crit_edge
    i3 3, label %btc8821a2ant_bt_rssi_state.exit.land.lhs.true_crit_edge131
  ]

btc8821a2ant_bt_rssi_state.exit.land.lhs.true_crit_edge131: ; preds = %btc8821a2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

btc8821a2ant_bt_rssi_state.exit.land.lhs.true_crit_edge: ; preds = %btc8821a2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

btc8821a2ant_bt_rssi_state.exit.if.else26_crit_edge: ; preds = %btc8821a2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else26

land.lhs.true:                                    ; preds = %btc8821a2ant_bt_rssi_state.exit.land.lhs.true_crit_edge, %btc8821a2ant_bt_rssi_state.exit.land.lhs.true_crit_edge131
  %45 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.262)
  switch i3 %trunc, label %land.lhs.true.if.else26_crit_edge [
    i3 3, label %land.lhs.true.if.then25_crit_edge
    i3 0, label %land.lhs.true.if.then25_crit_edge132
  ]

land.lhs.true.if.then25_crit_edge132:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then25

land.lhs.true.if.then25_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then25

land.lhs.true.if.else26_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else26

if.then25:                                        ; preds = %land.lhs.true.if.then25_crit_edge, %land.lhs.true.if.then25_crit_edge132
  store i8 10, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 29), align 4
  call fastcc void @btc8821a2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1440568797, i32 noundef 1524259546, i32 noundef 16777215) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  %46 = ptrtoint ptr %low_pwr_disable.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %low_pwr_disable.i, align 1
  %47 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %btc_set.i, align 4
  %call5.i = call zeroext i1 %48(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i) #4
  %49 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %btc_set.i, align 4
  %call7.i118 = call zeroext i1 %50(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 30), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  br label %if.end27

if.else26:                                        ; preds = %land.lhs.true.if.else26_crit_edge, %btc8821a2ant_bt_rssi_state.exit.if.else26_crit_edge
  store i8 13, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 29), align 4
  call fastcc void @btc8821a2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1610571775, i32 noundef -1431655766, i32 noundef 16777215) #4
  call fastcc void @btc8821a2ant_power_save_state(ptr noundef %btcoexist, i8 noundef zeroext 1, i8 noundef zeroext 80, i8 noundef zeroext 4)
  br label %if.end27

if.end27:                                         ; preds = %if.else26, %if.then25
  call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 26)
  %51 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %btc_get.i, align 4
  %call38 = call zeroext i1 %52(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef nonnull %wifi_bw) #4
  call fastcc void @btc8821a2ant_sw_mechanism1(ptr noundef %btcoexist, i1 noundef zeroext false)
  call fastcc void @btc8821a2ant_dac_swing(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 24) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_bw) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8821a2ant_action_pan_hs(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %low_pwr_disable.i = alloca i8, align 1
  %reject_rx_agg.i = alloca i8, align 1
  %bt_ctrl_rx_agg_size.i = alloca i8, align 1
  %rx_agg_size.i = alloca i8, align 1
  %wifi_rssi.i58 = alloca i32, align 4
  %wifi_rssi.i = alloca i32, align 4
  %wifi_bw = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_bw) #4
  %0 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wifi_bw, align 4, !annotation !474
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
  %6 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 14, i32 0), align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.263)
  switch i8 %6, label %if.else19.i [
    i8 2, label %entry.if.then14.i_crit_edge
    i8 5, label %entry.if.then14.i_crit_edge84
  ]

entry.if.then14.i_crit_edge84:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

entry.if.then14.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

if.then14.i:                                      ; preds = %entry.if.then14.i_crit_edge, %entry.if.then14.i_crit_edge84
  %8 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %9)
  %cmp16.not.i = icmp slt i32 %9, 17
  %.str.117..str.116.i = select i1 %cmp16.not.i, ptr @.str.117, ptr @.str.116
  %..i = select i1 %cmp16.not.i, i8 5, i8 0
  br label %btc8821a2ant_wifi_rssi_state.exit

if.else19.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %11)
  %cmp21.i = icmp slt i32 %11, 15
  %.str.118..str.119.i = select i1 %cmp21.i, ptr @.str.118, ptr @.str.119
  %.1.i = select i1 %cmp21.i, i8 2, i8 3
  br label %btc8821a2ant_wifi_rssi_state.exit

btc8821a2ant_wifi_rssi_state.exit:                ; preds = %if.else19.i, %if.then14.i
  %.str.117.sink.i = phi ptr [ %.str.117..str.116.i, %if.then14.i ], [ %.str.118..str.119.i, %if.else19.i ]
  %wifi_rssi_state.0.i = phi i8 [ %..i, %if.then14.i ], [ %.1.i, %if.else19.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %2, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.117.sink.i) #4
  store i8 %wifi_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 14, i32 0), align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %12 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_rssi.i58) #4
  %14 = ptrtoint ptr %wifi_rssi.i58 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %wifi_rssi.i58, align 4
  %15 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %btc_get.i, align 4
  %call.i61 = call zeroext i1 %16(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi.i58) #4
  %17 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 14, i32 1), align 4
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.264)
  switch i8 %17, label %if.else19.i69 [
    i8 2, label %btc8821a2ant_wifi_rssi_state.exit.if.then14.i65_crit_edge
    i8 5, label %btc8821a2ant_wifi_rssi_state.exit.if.then14.i65_crit_edge85
  ]

btc8821a2ant_wifi_rssi_state.exit.if.then14.i65_crit_edge85: ; preds = %btc8821a2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i65

btc8821a2ant_wifi_rssi_state.exit.if.then14.i65_crit_edge: ; preds = %btc8821a2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i65

if.then14.i65:                                    ; preds = %btc8821a2ant_wifi_rssi_state.exit.if.then14.i65_crit_edge, %btc8821a2ant_wifi_rssi_state.exit.if.then14.i65_crit_edge85
  %19 = ptrtoint ptr %wifi_rssi.i58 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %wifi_rssi.i58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %20)
  %cmp16.not.i62 = icmp slt i32 %20, 44
  %.str.117..str.116.i63 = select i1 %cmp16.not.i62, ptr @.str.117, ptr @.str.116
  %..i64 = select i1 %cmp16.not.i62, i8 5, i8 0
  br label %btc8821a2ant_wifi_rssi_state.exit72

if.else19.i69:                                    ; preds = %btc8821a2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %wifi_rssi.i58 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %wifi_rssi.i58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %22)
  %cmp21.i66 = icmp slt i32 %22, 42
  %.str.118..str.119.i67 = select i1 %cmp21.i66, ptr @.str.118, ptr @.str.119
  %.1.i68 = select i1 %cmp21.i66, i8 2, i8 3
  br label %btc8821a2ant_wifi_rssi_state.exit72

btc8821a2ant_wifi_rssi_state.exit72:              ; preds = %if.else19.i69, %if.then14.i65
  %.str.117.sink.i70 = phi ptr [ %.str.117..str.116.i63, %if.then14.i65 ], [ %.str.118..str.119.i67, %if.else19.i69 ]
  %wifi_rssi_state.0.i71 = phi i8 [ %..i64, %if.then14.i65 ], [ %.1.i68, %if.else19.i69 ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %13, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.117.sink.i70) #4
  store i8 %wifi_rssi_state.0.i71, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 14, i32 1), align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i58) #4
  %23 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter.i, align 4
  %25 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 13), align 2
  %26 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 11), align 4
  %27 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.265)
  switch i8 %25, label %if.else17.i [
    i8 2, label %btc8821a2ant_wifi_rssi_state.exit72.if.then12.i_crit_edge
    i8 5, label %btc8821a2ant_wifi_rssi_state.exit72.if.then12.i_crit_edge86
  ]

btc8821a2ant_wifi_rssi_state.exit72.if.then12.i_crit_edge86: ; preds = %btc8821a2ant_wifi_rssi_state.exit72
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i

btc8821a2ant_wifi_rssi_state.exit72.if.then12.i_crit_edge: ; preds = %btc8821a2ant_wifi_rssi_state.exit72
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i

if.then12.i:                                      ; preds = %btc8821a2ant_wifi_rssi_state.exit72.if.then12.i_crit_edge, %btc8821a2ant_wifi_rssi_state.exit72.if.then12.i_crit_edge86
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %26)
  %cmp14.not.i = icmp ult i8 %26, 48
  %spec.select = select i1 %cmp14.not.i, ptr @.str.124, ptr @.str.123
  %spec.select79 = select i1 %cmp14.not.i, i8 5, i8 0
  br label %btc8821a2ant_bt_rssi_state.exit

if.else17.i:                                      ; preds = %btc8821a2ant_wifi_rssi_state.exit72
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %26)
  %cmp19.i = icmp ult i8 %26, 46
  %spec.select80 = select i1 %cmp19.i, ptr @.str.125, ptr @.str.126
  %spec.select81 = select i1 %cmp19.i, i8 2, i8 3
  br label %btc8821a2ant_bt_rssi_state.exit

btc8821a2ant_bt_rssi_state.exit:                  ; preds = %if.else17.i, %if.then12.i
  %.str.125.sink.i = phi ptr [ %spec.select, %if.then12.i ], [ %spec.select80, %if.else17.i ]
  %bt_rssi_state.0.i = phi i8 [ %spec.select79, %if.then12.i ], [ %spec.select81, %if.else17.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %24, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.125.sink.i) #4
  store i8 %bt_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 13), align 2
  %btc_set_rf_reg = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 27
  %28 = ptrtoint ptr %btc_set_rf_reg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %btc_set_rf_reg, align 4
  call void %29(ptr noundef %btcoexist, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 1048575, i32 noundef 0) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  %30 = ptrtoint ptr %reject_rx_agg.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %reject_rx_agg.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  %31 = ptrtoint ptr %bt_ctrl_rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %bt_ctrl_rx_agg_size.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  %32 = ptrtoint ptr %rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 8, ptr %rx_agg_size.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %33 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %btc_set.i, align 4
  %call.i75 = call zeroext i1 %34(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %reject_rx_agg.i) #4
  %35 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %btc_set.i, align 4
  %call7.i = call zeroext i1 %36(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %bt_ctrl_rx_agg_size.i) #4
  %37 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %btc_set.i, align 4
  %call9.i = call zeroext i1 %38(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %rx_agg_size.i) #4
  %39 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %btc_set.i, align 4
  %call11.i = call zeroext i1 %40(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  call fastcc void @btc8821a2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 6)
  %trunc = trunc i8 %bt_rssi_state.0.i to i3
  %41 = sext i3 %trunc to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %switch.selectcmp.case1 = icmp eq i3 %trunc, 0
  %42 = sext i3 %trunc to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %42)
  %switch.selectcmp.case2 = icmp eq i3 %trunc, 3
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %43 = select i1 %switch.selectcmp, i8 2, i8 0
  call fastcc void @btc8821a2ant_dec_bt_pwr(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext %43)
  store i8 7, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 29), align 4
  call fastcc void @btc8821a2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1440568797, i32 noundef 1524259546, i32 noundef 16777215) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  %44 = ptrtoint ptr %low_pwr_disable.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %low_pwr_disable.i, align 1
  %45 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %btc_set.i, align 4
  %call5.i = call zeroext i1 %46(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i) #4
  %47 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %btc_set.i, align 4
  %call7.i77 = call zeroext i1 %48(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 30), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 1)
  %49 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %btc_get.i, align 4
  %call7 = call zeroext i1 %50(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef nonnull %wifi_bw) #4
  call fastcc void @btc8821a2ant_sw_mechanism1(ptr noundef %btcoexist, i1 noundef zeroext false)
  call fastcc void @btc8821a2ant_dac_swing(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 24) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_bw) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8821a2ant_action_pan_edr_a2dp(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %low_pwr_disable.i = alloca i8, align 1
  %reject_rx_agg.i = alloca i8, align 1
  %bt_ctrl_rx_agg_size.i = alloca i8, align 1
  %rx_agg_size.i = alloca i8, align 1
  %wifi_rssi.i105 = alloca i32, align 4
  %wifi_rssi.i = alloca i32, align 4
  %wifi_bw = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_bw) #4
  %0 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wifi_bw, align 4, !annotation !474
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
  %6 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 14, i32 0), align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.266)
  switch i8 %6, label %if.else19.i [
    i8 2, label %entry.if.then14.i_crit_edge
    i8 5, label %entry.if.then14.i_crit_edge135
  ]

entry.if.then14.i_crit_edge135:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

entry.if.then14.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

if.then14.i:                                      ; preds = %entry.if.then14.i_crit_edge, %entry.if.then14.i_crit_edge135
  %8 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %9)
  %cmp16.not.i = icmp slt i32 %9, 17
  %.str.117..str.116.i = select i1 %cmp16.not.i, ptr @.str.117, ptr @.str.116
  %..i = select i1 %cmp16.not.i, i8 5, i8 0
  br label %btc8821a2ant_wifi_rssi_state.exit

if.else19.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %11)
  %cmp21.i = icmp slt i32 %11, 15
  %.str.118..str.119.i = select i1 %cmp21.i, ptr @.str.118, ptr @.str.119
  %.1.i = select i1 %cmp21.i, i8 2, i8 3
  br label %btc8821a2ant_wifi_rssi_state.exit

btc8821a2ant_wifi_rssi_state.exit:                ; preds = %if.else19.i, %if.then14.i
  %.str.117.sink.i = phi ptr [ %.str.117..str.116.i, %if.then14.i ], [ %.str.118..str.119.i, %if.else19.i ]
  %wifi_rssi_state.0.i = phi i8 [ %..i, %if.then14.i ], [ %.1.i, %if.else19.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %2, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.117.sink.i) #4
  store i8 %wifi_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 14, i32 0), align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %12 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_rssi.i105) #4
  %14 = ptrtoint ptr %wifi_rssi.i105 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %wifi_rssi.i105, align 4
  %15 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %btc_get.i, align 4
  %call.i108 = call zeroext i1 %16(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi.i105) #4
  %17 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 14, i32 1), align 4
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.267)
  switch i8 %17, label %if.else19.i116 [
    i8 2, label %btc8821a2ant_wifi_rssi_state.exit.if.then14.i112_crit_edge
    i8 5, label %btc8821a2ant_wifi_rssi_state.exit.if.then14.i112_crit_edge136
  ]

btc8821a2ant_wifi_rssi_state.exit.if.then14.i112_crit_edge136: ; preds = %btc8821a2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i112

btc8821a2ant_wifi_rssi_state.exit.if.then14.i112_crit_edge: ; preds = %btc8821a2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i112

if.then14.i112:                                   ; preds = %btc8821a2ant_wifi_rssi_state.exit.if.then14.i112_crit_edge, %btc8821a2ant_wifi_rssi_state.exit.if.then14.i112_crit_edge136
  %19 = ptrtoint ptr %wifi_rssi.i105 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %wifi_rssi.i105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %20)
  %cmp16.not.i109 = icmp slt i32 %20, 44
  %.str.117..str.116.i110 = select i1 %cmp16.not.i109, ptr @.str.117, ptr @.str.116
  %..i111 = select i1 %cmp16.not.i109, i8 5, i8 0
  br label %btc8821a2ant_wifi_rssi_state.exit119

if.else19.i116:                                   ; preds = %btc8821a2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %wifi_rssi.i105 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %wifi_rssi.i105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %22)
  %cmp21.i113 = icmp slt i32 %22, 42
  %.str.118..str.119.i114 = select i1 %cmp21.i113, ptr @.str.118, ptr @.str.119
  %.1.i115 = select i1 %cmp21.i113, i8 2, i8 3
  br label %btc8821a2ant_wifi_rssi_state.exit119

btc8821a2ant_wifi_rssi_state.exit119:             ; preds = %if.else19.i116, %if.then14.i112
  %.str.117.sink.i117 = phi ptr [ %.str.117..str.116.i110, %if.then14.i112 ], [ %.str.118..str.119.i114, %if.else19.i116 ]
  %wifi_rssi_state.0.i118 = phi i8 [ %..i111, %if.then14.i112 ], [ %.1.i115, %if.else19.i116 ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %13, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.117.sink.i117) #4
  store i8 %wifi_rssi_state.0.i118, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 14, i32 1), align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i105) #4
  %23 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter.i, align 4
  %25 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 13), align 2
  %26 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 11), align 4
  %27 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.268)
  switch i8 %25, label %if.else17.i [
    i8 2, label %btc8821a2ant_wifi_rssi_state.exit119.if.then12.i_crit_edge
    i8 5, label %btc8821a2ant_wifi_rssi_state.exit119.if.then12.i_crit_edge137
  ]

btc8821a2ant_wifi_rssi_state.exit119.if.then12.i_crit_edge137: ; preds = %btc8821a2ant_wifi_rssi_state.exit119
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i

btc8821a2ant_wifi_rssi_state.exit119.if.then12.i_crit_edge: ; preds = %btc8821a2ant_wifi_rssi_state.exit119
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i

if.then12.i:                                      ; preds = %btc8821a2ant_wifi_rssi_state.exit119.if.then12.i_crit_edge, %btc8821a2ant_wifi_rssi_state.exit119.if.then12.i_crit_edge137
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %26)
  %cmp14.not.i = icmp ult i8 %26, 48
  %spec.select = select i1 %cmp14.not.i, ptr @.str.124, ptr @.str.123
  %spec.select126 = select i1 %cmp14.not.i, i8 5, i8 0
  br label %btc8821a2ant_bt_rssi_state.exit

if.else17.i:                                      ; preds = %btc8821a2ant_wifi_rssi_state.exit119
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %26)
  %cmp19.i = icmp ult i8 %26, 46
  %spec.select127 = select i1 %cmp19.i, ptr @.str.125, ptr @.str.126
  %spec.select128 = select i1 %cmp19.i, i8 2, i8 3
  br label %btc8821a2ant_bt_rssi_state.exit

btc8821a2ant_bt_rssi_state.exit:                  ; preds = %if.else17.i, %if.then12.i
  %.str.125.sink.i = phi ptr [ %spec.select, %if.then12.i ], [ %spec.select127, %if.else17.i ]
  %bt_rssi_state.0.i = phi i8 [ %spec.select126, %if.then12.i ], [ %spec.select128, %if.else17.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %24, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.125.sink.i) #4
  store i8 %bt_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 13), align 2
  %btc_set_rf_reg = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 27
  %28 = ptrtoint ptr %btc_set_rf_reg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %btc_set_rf_reg, align 4
  call void %29(ptr noundef %btcoexist, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 1048575, i32 noundef 0) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  %30 = ptrtoint ptr %reject_rx_agg.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %reject_rx_agg.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  %31 = ptrtoint ptr %bt_ctrl_rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %bt_ctrl_rx_agg_size.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  %32 = ptrtoint ptr %rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 8, ptr %rx_agg_size.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %33 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %btc_set.i, align 4
  %call.i122 = call zeroext i1 %34(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %reject_rx_agg.i) #4
  %35 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %btc_set.i, align 4
  %call7.i = call zeroext i1 %36(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %bt_ctrl_rx_agg_size.i) #4
  %37 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %btc_set.i, align 4
  %call9.i = call zeroext i1 %38(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %rx_agg_size.i) #4
  %39 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %btc_set.i, align 4
  %call11.i = call zeroext i1 %40(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  call fastcc void @btc8821a2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 6)
  %trunc = trunc i8 %bt_rssi_state.0.i to i3
  %41 = sext i3 %trunc to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %41)
  %switch.selectcmp.case1 = icmp eq i3 %trunc, 3
  %42 = sext i3 %trunc to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %switch.selectcmp.case2 = icmp eq i3 %trunc, 0
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %43 = select i1 %switch.selectcmp, i8 2, i8 0
  call fastcc void @btc8821a2ant_dec_bt_pwr(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext %43)
  %trunc129 = trunc i8 %wifi_rssi_state.0.i118 to i3
  %44 = zext i3 %trunc129 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.269)
  switch i3 %trunc129, label %btc8821a2ant_bt_rssi_state.exit.if.else26_crit_edge [
    i3 0, label %btc8821a2ant_bt_rssi_state.exit.land.lhs.true_crit_edge
    i3 3, label %btc8821a2ant_bt_rssi_state.exit.land.lhs.true_crit_edge138
  ]

btc8821a2ant_bt_rssi_state.exit.land.lhs.true_crit_edge138: ; preds = %btc8821a2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

btc8821a2ant_bt_rssi_state.exit.land.lhs.true_crit_edge: ; preds = %btc8821a2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

btc8821a2ant_bt_rssi_state.exit.if.else26_crit_edge: ; preds = %btc8821a2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else26

land.lhs.true:                                    ; preds = %btc8821a2ant_bt_rssi_state.exit.land.lhs.true_crit_edge, %btc8821a2ant_bt_rssi_state.exit.land.lhs.true_crit_edge138
  %45 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.270)
  switch i3 %trunc, label %land.lhs.true.if.else26_crit_edge [
    i3 3, label %land.lhs.true.if.then25_crit_edge
    i3 0, label %land.lhs.true.if.then25_crit_edge139
  ]

land.lhs.true.if.then25_crit_edge139:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then25

land.lhs.true.if.then25_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then25

land.lhs.true.if.else26_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else26

if.then25:                                        ; preds = %land.lhs.true.if.then25_crit_edge, %land.lhs.true.if.then25_crit_edge139
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  %46 = ptrtoint ptr %low_pwr_disable.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %low_pwr_disable.i, align 1
  %47 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %btc_set.i, align 4
  %call5.i = call zeroext i1 %48(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i) #4
  %49 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %btc_set.i, align 4
  %call7.i124 = call zeroext i1 %50(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 30), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  br label %if.end27

if.else26:                                        ; preds = %land.lhs.true.if.else26_crit_edge, %btc8821a2ant_bt_rssi_state.exit.if.else26_crit_edge
  call fastcc void @btc8821a2ant_power_save_state(ptr noundef %btcoexist, i8 noundef zeroext 1, i8 noundef zeroext 80, i8 noundef zeroext 4)
  br label %if.end27

if.end27:                                         ; preds = %if.else26, %if.then25
  %51 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %btc_get.i, align 4
  %call28 = call zeroext i1 %52(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef nonnull %wifi_bw) #4
  %53 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.271)
  switch i3 %trunc, label %if.else42 [
    i3 3, label %if.end27.if.then36_crit_edge
    i3 0, label %if.end27.if.then36_crit_edge140
  ]

if.end27.if.then36_crit_edge140:                  ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then36

if.end27.if.then36_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then36

if.then36:                                        ; preds = %if.end27.if.then36_crit_edge, %if.end27.if.then36_crit_edge140
  store i8 12, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 29), align 4
  call fastcc void @btc8821a2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1440568797, i32 noundef 1524259546, i32 noundef 16777215) #4
  %54 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %wifi_bw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %55)
  %cmp37 = icmp eq i32 %55, 2
  br label %if.end43

if.else42:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  store i8 13, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 29), align 4
  call fastcc void @btc8821a2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1610571775, i32 noundef -1431655766, i32 noundef 16777215) #4
  br label %if.end43

if.end43:                                         ; preds = %if.else42, %if.then36
  %.sink134 = phi i1 [ true, %if.else42 ], [ %cmp37, %if.then36 ]
  call fastcc void @btc8821a2ant_tdma_duration_adjust(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext %.sink134, i8 noundef zeroext 3)
  call fastcc void @btc8821a2ant_sw_mechanism1(ptr noundef %btcoexist, i1 noundef zeroext false)
  call fastcc void @btc8821a2ant_dac_swing(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 24) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_bw) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8821a2ant_action_pan_edr_hid(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %wifi_rssi.i = alloca i32, align 4
  %wifi_bw = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_bw) #4
  %0 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wifi_bw, align 4, !annotation !474
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
  %6 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 14, i32 0), align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.272)
  switch i8 %6, label %if.else19.i [
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
  %8 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %9)
  %cmp16.not.i = icmp slt i32 %9, 17
  %.str.117..str.116.i = select i1 %cmp16.not.i, ptr @.str.117, ptr @.str.116
  %..i = select i1 %cmp16.not.i, i8 5, i8 0
  br label %btc8821a2ant_wifi_rssi_state.exit

if.else19.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %11)
  %cmp21.i = icmp slt i32 %11, 15
  %.str.118..str.119.i = select i1 %cmp21.i, ptr @.str.118, ptr @.str.119
  %.1.i = select i1 %cmp21.i, i8 2, i8 3
  br label %btc8821a2ant_wifi_rssi_state.exit

btc8821a2ant_wifi_rssi_state.exit:                ; preds = %if.else19.i, %if.then14.i
  %.str.117.sink.i = phi ptr [ %.str.117..str.116.i, %if.then14.i ], [ %.str.118..str.119.i, %if.else19.i ]
  %wifi_rssi_state.0.i = phi i8 [ %..i, %if.then14.i ], [ %.1.i, %if.else19.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %2, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.117.sink.i) #4
  store i8 %wifi_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 14, i32 0), align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %12 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter.i, align 4
  %14 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 13), align 2
  %15 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 11), align 4
  %16 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.273)
  switch i8 %14, label %if.else17.i [
    i8 2, label %btc8821a2ant_wifi_rssi_state.exit.if.then12.i_crit_edge
    i8 5, label %btc8821a2ant_wifi_rssi_state.exit.if.then12.i_crit_edge105
  ]

btc8821a2ant_wifi_rssi_state.exit.if.then12.i_crit_edge105: ; preds = %btc8821a2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i

btc8821a2ant_wifi_rssi_state.exit.if.then12.i_crit_edge: ; preds = %btc8821a2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i

if.then12.i:                                      ; preds = %btc8821a2ant_wifi_rssi_state.exit.if.then12.i_crit_edge, %btc8821a2ant_wifi_rssi_state.exit.if.then12.i_crit_edge105
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %15)
  %cmp14.not.i = icmp ult i8 %15, 48
  br i1 %cmp14.not.i, label %if.then12.i.if.else_crit_edge, label %if.then12.i.if.end_crit_edge

if.then12.i.if.end_crit_edge:                     ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then12.i.if.else_crit_edge:                    ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.else17.i:                                      ; preds = %btc8821a2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %15)
  %cmp19.i = icmp ult i8 %15, 46
  br i1 %cmp19.i, label %if.else17.i.if.else_crit_edge, label %if.else17.i.if.end_crit_edge

if.else17.i.if.end_crit_edge:                     ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.else17.i.if.else_crit_edge:                    ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.else:                                          ; preds = %if.else17.i.if.else_crit_edge, %if.then12.i.if.else_crit_edge
  %.str.125.sink.i.ph = phi ptr [ @.str.124, %if.then12.i.if.else_crit_edge ], [ @.str.125, %if.else17.i.if.else_crit_edge ]
  %bt_rssi_state.0.i.ph = phi i8 [ 5, %if.then12.i.if.else_crit_edge ], [ 2, %if.else17.i.if.else_crit_edge ]
  br label %if.end

if.end:                                           ; preds = %if.else, %if.else17.i.if.end_crit_edge, %if.then12.i.if.end_crit_edge
  %.str.125.sink.i.ph.sink = phi ptr [ %.str.125.sink.i.ph, %if.else ], [ @.str.123, %if.then12.i.if.end_crit_edge ], [ @.str.126, %if.else17.i.if.end_crit_edge ]
  %bt_rssi_state.0.i.ph.sink = phi i8 [ %bt_rssi_state.0.i.ph, %if.else ], [ 0, %if.then12.i.if.end_crit_edge ], [ 3, %if.else17.i.if.end_crit_edge ]
  %.sink = phi i8 [ 0, %if.else ], [ 1, %if.then12.i.if.end_crit_edge ], [ 1, %if.else17.i.if.end_crit_edge ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %13, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.125.sink.i.ph.sink) #4
  store i8 %bt_rssi_state.0.i.ph.sink, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 13), align 2
  call fastcc void @btc8821a2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 6)
  call fastcc void @btc8821a2ant_dec_bt_pwr(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext %.sink)
  %17 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %btc_get.i, align 4
  %call6 = call zeroext i1 %18(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef nonnull %wifi_bw) #4
  call fastcc void @btc8821a2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1442797055, i32 noundef 1516198495, i32 noundef 65535)
  %19 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %wifi_bw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp12 = icmp eq i32 %20, 2
  %. = select i1 %cmp12, i8 3, i8 6
  call fastcc void @btc8821a2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext %.)
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %bt_rssi_state.0.i.ph.sink)
  %switch.selectcmp.case199 = icmp eq i8 %bt_rssi_state.0.i.ph.sink, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bt_rssi_state.0.i.ph.sink)
  %switch.selectcmp.case2100 = icmp eq i8 %bt_rssi_state.0.i.ph.sink, 0
  %switch.selectcmp101 = or i1 %switch.selectcmp.case199, %switch.selectcmp.case2100
  %21 = select i1 %switch.selectcmp101, i8 10, i8 14
  call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext %21)
  call fastcc void @btc8821a2ant_sw_mechanism1(ptr noundef %btcoexist, i1 noundef zeroext true)
  call fastcc void @btc8821a2ant_dac_swing(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 24) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_bw) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8821a2ant_act_hid_a2dp_pan_edr(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %low_pwr_disable.i = alloca i8, align 1
  %reject_rx_agg.i = alloca i8, align 1
  %bt_ctrl_rx_agg_size.i = alloca i8, align 1
  %rx_agg_size.i = alloca i8, align 1
  %wifi_rssi.i105 = alloca i32, align 4
  %wifi_rssi.i = alloca i32, align 4
  %wifi_bw = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_bw) #4
  %0 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wifi_bw, align 4, !annotation !474
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
  %6 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 14, i32 0), align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.274)
  switch i8 %6, label %if.else19.i [
    i8 2, label %entry.if.then14.i_crit_edge
    i8 5, label %entry.if.then14.i_crit_edge135
  ]

entry.if.then14.i_crit_edge135:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

entry.if.then14.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

if.then14.i:                                      ; preds = %entry.if.then14.i_crit_edge, %entry.if.then14.i_crit_edge135
  %8 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %9)
  %cmp16.not.i = icmp slt i32 %9, 17
  %.str.117..str.116.i = select i1 %cmp16.not.i, ptr @.str.117, ptr @.str.116
  %..i = select i1 %cmp16.not.i, i8 5, i8 0
  br label %btc8821a2ant_wifi_rssi_state.exit

if.else19.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %11)
  %cmp21.i = icmp slt i32 %11, 15
  %.str.118..str.119.i = select i1 %cmp21.i, ptr @.str.118, ptr @.str.119
  %.1.i = select i1 %cmp21.i, i8 2, i8 3
  br label %btc8821a2ant_wifi_rssi_state.exit

btc8821a2ant_wifi_rssi_state.exit:                ; preds = %if.else19.i, %if.then14.i
  %.str.117.sink.i = phi ptr [ %.str.117..str.116.i, %if.then14.i ], [ %.str.118..str.119.i, %if.else19.i ]
  %wifi_rssi_state.0.i = phi i8 [ %..i, %if.then14.i ], [ %.1.i, %if.else19.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %2, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.117.sink.i) #4
  store i8 %wifi_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 14, i32 0), align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %12 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_rssi.i105) #4
  %14 = ptrtoint ptr %wifi_rssi.i105 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %wifi_rssi.i105, align 4
  %15 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %btc_get.i, align 4
  %call.i108 = call zeroext i1 %16(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi.i105) #4
  %17 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 14, i32 1), align 4
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.275)
  switch i8 %17, label %if.else19.i116 [
    i8 2, label %btc8821a2ant_wifi_rssi_state.exit.if.then14.i112_crit_edge
    i8 5, label %btc8821a2ant_wifi_rssi_state.exit.if.then14.i112_crit_edge136
  ]

btc8821a2ant_wifi_rssi_state.exit.if.then14.i112_crit_edge136: ; preds = %btc8821a2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i112

btc8821a2ant_wifi_rssi_state.exit.if.then14.i112_crit_edge: ; preds = %btc8821a2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i112

if.then14.i112:                                   ; preds = %btc8821a2ant_wifi_rssi_state.exit.if.then14.i112_crit_edge, %btc8821a2ant_wifi_rssi_state.exit.if.then14.i112_crit_edge136
  %19 = ptrtoint ptr %wifi_rssi.i105 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %wifi_rssi.i105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %20)
  %cmp16.not.i109 = icmp slt i32 %20, 44
  %.str.117..str.116.i110 = select i1 %cmp16.not.i109, ptr @.str.117, ptr @.str.116
  %..i111 = select i1 %cmp16.not.i109, i8 5, i8 0
  br label %btc8821a2ant_wifi_rssi_state.exit119

if.else19.i116:                                   ; preds = %btc8821a2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %wifi_rssi.i105 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %wifi_rssi.i105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %22)
  %cmp21.i113 = icmp slt i32 %22, 42
  %.str.118..str.119.i114 = select i1 %cmp21.i113, ptr @.str.118, ptr @.str.119
  %.1.i115 = select i1 %cmp21.i113, i8 2, i8 3
  br label %btc8821a2ant_wifi_rssi_state.exit119

btc8821a2ant_wifi_rssi_state.exit119:             ; preds = %if.else19.i116, %if.then14.i112
  %.str.117.sink.i117 = phi ptr [ %.str.117..str.116.i110, %if.then14.i112 ], [ %.str.118..str.119.i114, %if.else19.i116 ]
  %wifi_rssi_state.0.i118 = phi i8 [ %..i111, %if.then14.i112 ], [ %.1.i115, %if.else19.i116 ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %13, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.117.sink.i117) #4
  store i8 %wifi_rssi_state.0.i118, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 14, i32 1), align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i105) #4
  %23 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter.i, align 4
  %25 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 13), align 2
  %26 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 11), align 4
  %27 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.276)
  switch i8 %25, label %if.else17.i [
    i8 2, label %btc8821a2ant_wifi_rssi_state.exit119.if.then12.i_crit_edge
    i8 5, label %btc8821a2ant_wifi_rssi_state.exit119.if.then12.i_crit_edge137
  ]

btc8821a2ant_wifi_rssi_state.exit119.if.then12.i_crit_edge137: ; preds = %btc8821a2ant_wifi_rssi_state.exit119
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i

btc8821a2ant_wifi_rssi_state.exit119.if.then12.i_crit_edge: ; preds = %btc8821a2ant_wifi_rssi_state.exit119
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i

if.then12.i:                                      ; preds = %btc8821a2ant_wifi_rssi_state.exit119.if.then12.i_crit_edge, %btc8821a2ant_wifi_rssi_state.exit119.if.then12.i_crit_edge137
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %26)
  %cmp14.not.i = icmp ult i8 %26, 48
  %spec.select = select i1 %cmp14.not.i, ptr @.str.124, ptr @.str.123
  %spec.select126 = select i1 %cmp14.not.i, i8 5, i8 0
  br label %btc8821a2ant_bt_rssi_state.exit

if.else17.i:                                      ; preds = %btc8821a2ant_wifi_rssi_state.exit119
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %26)
  %cmp19.i = icmp ult i8 %26, 46
  %spec.select127 = select i1 %cmp19.i, ptr @.str.125, ptr @.str.126
  %spec.select128 = select i1 %cmp19.i, i8 2, i8 3
  br label %btc8821a2ant_bt_rssi_state.exit

btc8821a2ant_bt_rssi_state.exit:                  ; preds = %if.else17.i, %if.then12.i
  %.str.125.sink.i = phi ptr [ %spec.select, %if.then12.i ], [ %spec.select127, %if.else17.i ]
  %bt_rssi_state.0.i = phi i8 [ %spec.select126, %if.then12.i ], [ %spec.select128, %if.else17.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %24, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.125.sink.i) #4
  store i8 %bt_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 13), align 2
  %btc_set_rf_reg = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 27
  %28 = ptrtoint ptr %btc_set_rf_reg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %btc_set_rf_reg, align 4
  call void %29(ptr noundef %btcoexist, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 1048575, i32 noundef 0) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  %30 = ptrtoint ptr %reject_rx_agg.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %reject_rx_agg.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  %31 = ptrtoint ptr %bt_ctrl_rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %bt_ctrl_rx_agg_size.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  %32 = ptrtoint ptr %rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 8, ptr %rx_agg_size.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %33 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %btc_set.i, align 4
  %call.i122 = call zeroext i1 %34(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %reject_rx_agg.i) #4
  %35 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %btc_set.i, align 4
  %call7.i = call zeroext i1 %36(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %bt_ctrl_rx_agg_size.i) #4
  %37 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %btc_set.i, align 4
  %call9.i = call zeroext i1 %38(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %rx_agg_size.i) #4
  %39 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %btc_set.i, align 4
  %call11.i = call zeroext i1 %40(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  call fastcc void @btc8821a2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 6)
  %trunc = trunc i8 %bt_rssi_state.0.i to i3
  %41 = sext i3 %trunc to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %41)
  %switch.selectcmp.case1 = icmp eq i3 %trunc, 3
  %42 = sext i3 %trunc to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %switch.selectcmp.case2 = icmp eq i3 %trunc, 0
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %43 = select i1 %switch.selectcmp, i8 2, i8 0
  call fastcc void @btc8821a2ant_dec_bt_pwr(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext %43)
  %trunc129 = trunc i8 %wifi_rssi_state.0.i118 to i3
  %44 = zext i3 %trunc129 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.277)
  switch i3 %trunc129, label %btc8821a2ant_bt_rssi_state.exit.if.else26_crit_edge [
    i3 0, label %btc8821a2ant_bt_rssi_state.exit.land.lhs.true_crit_edge
    i3 3, label %btc8821a2ant_bt_rssi_state.exit.land.lhs.true_crit_edge138
  ]

btc8821a2ant_bt_rssi_state.exit.land.lhs.true_crit_edge138: ; preds = %btc8821a2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

btc8821a2ant_bt_rssi_state.exit.land.lhs.true_crit_edge: ; preds = %btc8821a2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

btc8821a2ant_bt_rssi_state.exit.if.else26_crit_edge: ; preds = %btc8821a2ant_bt_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else26

land.lhs.true:                                    ; preds = %btc8821a2ant_bt_rssi_state.exit.land.lhs.true_crit_edge, %btc8821a2ant_bt_rssi_state.exit.land.lhs.true_crit_edge138
  %45 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.278)
  switch i3 %trunc, label %land.lhs.true.if.else26_crit_edge [
    i3 3, label %land.lhs.true.if.then25_crit_edge
    i3 0, label %land.lhs.true.if.then25_crit_edge139
  ]

land.lhs.true.if.then25_crit_edge139:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then25

land.lhs.true.if.then25_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then25

land.lhs.true.if.else26_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else26

if.then25:                                        ; preds = %land.lhs.true.if.then25_crit_edge, %land.lhs.true.if.then25_crit_edge139
  store i8 7, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 29), align 4
  call fastcc void @btc8821a2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1440568797, i32 noundef 1524259546, i32 noundef 16777215) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  %46 = ptrtoint ptr %low_pwr_disable.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %low_pwr_disable.i, align 1
  %47 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %btc_set.i, align 4
  %call5.i = call zeroext i1 %48(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i) #4
  %49 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %btc_set.i, align 4
  %call7.i124 = call zeroext i1 %50(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 30), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  br label %if.end27

if.else26:                                        ; preds = %land.lhs.true.if.else26_crit_edge, %btc8821a2ant_bt_rssi_state.exit.if.else26_crit_edge
  store i8 14, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 29), align 4
  call fastcc void @btc8821a2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1610571775, i32 noundef 1524259546, i32 noundef 16777215) #4
  call fastcc void @btc8821a2ant_power_save_state(ptr noundef %btcoexist, i8 noundef zeroext 1, i8 noundef zeroext 80, i8 noundef zeroext 4)
  br label %if.end27

if.end27:                                         ; preds = %if.else26, %if.then25
  %51 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %btc_get.i, align 4
  %call28 = call zeroext i1 %52(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef nonnull %wifi_bw) #4
  %53 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.279)
  switch i3 %trunc, label %if.end27.if.end43_crit_edge [
    i3 3, label %if.end27.if.then36_crit_edge
    i3 0, label %if.end27.if.then36_crit_edge140
  ]

if.end27.if.then36_crit_edge140:                  ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then36

if.end27.if.then36_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then36

if.end27.if.end43_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43

if.then36:                                        ; preds = %if.end27.if.then36_crit_edge, %if.end27.if.then36_crit_edge140
  %54 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %wifi_bw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %55)
  %cmp37 = icmp eq i32 %55, 2
  br label %if.end43

if.end43:                                         ; preds = %if.then36, %if.end27.if.end43_crit_edge
  %.sink134 = phi i1 [ %cmp37, %if.then36 ], [ true, %if.end27.if.end43_crit_edge ]
  call fastcc void @btc8821a2ant_tdma_duration_adjust(ptr noundef %btcoexist, i1 noundef zeroext true, i1 noundef zeroext %.sink134, i8 noundef zeroext 3)
  call fastcc void @btc8821a2ant_sw_mechanism1(ptr noundef %btcoexist, i1 noundef zeroext true)
  call fastcc void @btc8821a2ant_dac_swing(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 24) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_bw) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8821a2ant_action_hid_a2dp(ptr noundef %btcoexist) unnamed_addr #0 align 64 {
entry:
  %low_pwr_disable.i = alloca i8, align 1
  %reject_rx_agg.i = alloca i8, align 1
  %bt_ctrl_rx_agg_size.i = alloca i8, align 1
  %rx_agg_size.i = alloca i8, align 1
  %wifi_rssi.i139 = alloca i32, align 4
  %wifi_rssi.i = alloca i32, align 4
  %wifi_bw = alloca i32, align 4
  %ap_num = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_bw) #4
  %0 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wifi_bw, align 4, !annotation !474
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ap_num) #4
  %1 = ptrtoint ptr %ap_num to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %ap_num, align 1
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
  %7 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 14, i32 0), align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.280)
  switch i8 %7, label %if.else19.i [
    i8 2, label %entry.if.then14.i_crit_edge
    i8 5, label %entry.if.then14.i_crit_edge159
  ]

entry.if.then14.i_crit_edge159:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

entry.if.then14.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

if.then14.i:                                      ; preds = %entry.if.then14.i_crit_edge, %entry.if.then14.i_crit_edge159
  %9 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %10)
  %cmp16.not.i = icmp slt i32 %10, 17
  %.str.117..str.116.i = select i1 %cmp16.not.i, ptr @.str.117, ptr @.str.116
  %..i = select i1 %cmp16.not.i, i8 5, i8 0
  br label %btc8821a2ant_wifi_rssi_state.exit

if.else19.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wifi_rssi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %12)
  %cmp21.i = icmp slt i32 %12, 15
  %.str.118..str.119.i = select i1 %cmp21.i, ptr @.str.118, ptr @.str.119
  %.1.i = select i1 %cmp21.i, i8 2, i8 3
  br label %btc8821a2ant_wifi_rssi_state.exit

btc8821a2ant_wifi_rssi_state.exit:                ; preds = %if.else19.i, %if.then14.i
  %.str.117.sink.i = phi ptr [ %.str.117..str.116.i, %if.then14.i ], [ %.str.118..str.119.i, %if.else19.i ]
  %wifi_rssi_state.0.i = phi i8 [ %..i, %if.then14.i ], [ %.1.i, %if.else19.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %3, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.117.sink.i) #4
  store i8 %wifi_rssi_state.0.i, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 14, i32 0), align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i) #4
  %13 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_rssi.i139) #4
  %15 = ptrtoint ptr %wifi_rssi.i139 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %wifi_rssi.i139, align 4
  %16 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %btc_get.i, align 4
  %call.i142 = call zeroext i1 %17(ptr noundef %btcoexist, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi.i139) #4
  %18 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 14, i32 1), align 4
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.281)
  switch i8 %18, label %if.else19.i150 [
    i8 2, label %btc8821a2ant_wifi_rssi_state.exit.if.then14.i146_crit_edge
    i8 5, label %btc8821a2ant_wifi_rssi_state.exit.if.then14.i146_crit_edge160
  ]

btc8821a2ant_wifi_rssi_state.exit.if.then14.i146_crit_edge160: ; preds = %btc8821a2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i146

btc8821a2ant_wifi_rssi_state.exit.if.then14.i146_crit_edge: ; preds = %btc8821a2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i146

if.then14.i146:                                   ; preds = %btc8821a2ant_wifi_rssi_state.exit.if.then14.i146_crit_edge, %btc8821a2ant_wifi_rssi_state.exit.if.then14.i146_crit_edge160
  %20 = ptrtoint ptr %wifi_rssi.i139 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %wifi_rssi.i139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %21)
  %cmp16.not.i143 = icmp slt i32 %21, 44
  %.str.117..str.116.i144 = select i1 %cmp16.not.i143, ptr @.str.117, ptr @.str.116
  %..i145 = select i1 %cmp16.not.i143, i8 5, i8 0
  br label %btc8821a2ant_wifi_rssi_state.exit153

if.else19.i150:                                   ; preds = %btc8821a2ant_wifi_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %wifi_rssi.i139 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %wifi_rssi.i139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %23)
  %cmp21.i147 = icmp slt i32 %23, 42
  %.str.118..str.119.i148 = select i1 %cmp21.i147, ptr @.str.118, ptr @.str.119
  %.1.i149 = select i1 %cmp21.i147, i8 2, i8 3
  br label %btc8821a2ant_wifi_rssi_state.exit153

btc8821a2ant_wifi_rssi_state.exit153:             ; preds = %if.else19.i150, %if.then14.i146
  %.str.117.sink.i151 = phi ptr [ %.str.117..str.116.i144, %if.then14.i146 ], [ %.str.118..str.119.i148, %if.else19.i150 ]
  %wifi_rssi_state.0.i152 = phi i8 [ %..i145, %if.then14.i146 ], [ %.1.i149, %if.else19.i150 ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %14, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.117.sink.i151) #4
  store i8 %wifi_rssi_state.0.i152, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 14, i32 1), align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i139) #4
  %24 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adapter.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %25, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.127) #4
  %26 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 13), align 2
  %btc_set_rf_reg = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 27
  %27 = ptrtoint ptr %btc_set_rf_reg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %btc_set_rf_reg, align 4
  call void %28(ptr noundef %btcoexist, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 1048575, i32 noundef 0) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  %29 = ptrtoint ptr %reject_rx_agg.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %reject_rx_agg.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  %30 = ptrtoint ptr %bt_ctrl_rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %bt_ctrl_rx_agg_size.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  %31 = ptrtoint ptr %rx_agg_size.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 5, ptr %rx_agg_size.i, align 1
  %btc_set.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 32
  %32 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %btc_set.i, align 4
  %call.i155 = call zeroext i1 %33(ptr noundef %btcoexist, i8 noundef zeroext 4, ptr noundef nonnull %reject_rx_agg.i) #4
  %34 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %btc_set.i, align 4
  %call7.i = call zeroext i1 %35(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %bt_ctrl_rx_agg_size.i) #4
  %36 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %btc_set.i, align 4
  %call9.i = call zeroext i1 %37(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %rx_agg_size.i) #4
  %38 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %btc_set.i, align 4
  %call11.i = call zeroext i1 %39(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_ctrl_rx_agg_size.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reject_rx_agg.i) #4
  call fastcc void @btc8821a2ant_fw_dac_swing_lvl(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext 6)
  %40 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %btc_get.i, align 4
  %call3 = call zeroext i1 %41(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef nonnull %wifi_bw) #4
  %42 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %wifi_bw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp = icmp eq i32 %43, 0
  br i1 %cmp, label %if.then, label %if.else22

if.then:                                          ; preds = %btc8821a2ant_wifi_rssi_state.exit153
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %26)
  %44 = icmp ult i8 %26, 5
  br i1 %44, label %switch.lookup, label %if.then.if.end55_crit_edge

if.then.if.end55_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end55

if.else22:                                        ; preds = %btc8821a2ant_wifi_rssi_state.exit153
  %45 = zext i8 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.282)
  switch i8 %26, label %if.else52 [
    i8 0, label %if.else22.if.then32_crit_edge
    i8 3, label %if.else22.if.then32_crit_edge161
    i8 1, label %if.else22.if.end55_crit_edge
    i8 4, label %if.else22.if.end55_crit_edge162
  ]

if.else22.if.end55_crit_edge162:                  ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end55

if.else22.if.end55_crit_edge:                     ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end55

if.else22.if.then32_crit_edge161:                 ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then32

if.else22.if.then32_crit_edge:                    ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then32

if.then32:                                        ; preds = %if.else22.if.then32_crit_edge, %if.else22.if.then32_crit_edge161
  %46 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %btc_get.i, align 4
  %call34 = call zeroext i1 %47(ptr noundef %btcoexist, i8 noundef zeroext 41, ptr noundef nonnull %ap_num) #4
  %48 = ptrtoint ptr %ap_num to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %ap_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %49)
  %cmp36 = icmp ult i8 %49, 10
  %. = select i1 %cmp36, i8 4, i8 2
  br label %if.end55

if.else52:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end55

switch.lookup:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %50 = sext i8 %26 to i32
  %switch.gep = getelementptr inbounds [5 x i8], ptr @switch.table.btc8821a2ant_action_hid_a2dp, i32 0, i32 %50
  %51 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %51)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %if.end55

if.end55:                                         ; preds = %switch.lookup, %if.else52, %if.then32, %if.else22.if.end55_crit_edge, %if.else22.if.end55_crit_edge162, %if.then.if.end55_crit_edge
  %.sink = phi i8 [ 0, %if.else52 ], [ %., %if.then32 ], [ 2, %if.else22.if.end55_crit_edge ], [ 2, %if.else22.if.end55_crit_edge162 ], [ %switch.load, %switch.lookup ], [ 0, %if.then.if.end55_crit_edge ]
  call fastcc void @btc8821a2ant_dec_bt_pwr(ptr noundef %btcoexist, i1 noundef zeroext false, i8 noundef zeroext %.sink)
  %52 = ptrtoint ptr %wifi_bw to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %wifi_bw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp56 = icmp eq i32 %53, 0
  br i1 %cmp56, label %if.then58, label %if.else59

if.then58:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #6
  store i8 7, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 29), align 4
  call fastcc void @btc8821a2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1440568797, i32 noundef 1524259546, i32 noundef 16777215) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  %54 = ptrtoint ptr %low_pwr_disable.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %low_pwr_disable.i, align 1
  %55 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %btc_set.i, align 4
  %call5.i = call zeroext i1 %56(ptr noundef %btcoexist, i8 noundef zeroext 28, ptr noundef nonnull %low_pwr_disable.i) #4
  %57 = ptrtoint ptr %btc_set.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %btc_set.i, align 4
  %call7.i157 = call zeroext i1 %58(ptr noundef %btcoexist, i8 noundef zeroext 24, ptr noundef null) #4
  store i8 0, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 30), align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_pwr_disable.i) #4
  br label %if.end60

if.else59:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #6
  store i8 14, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 29), align 4
  call fastcc void @btc8821a2ant_coex_table(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 1610571775, i32 noundef 1524259546, i32 noundef 16777215) #4
  call fastcc void @btc8821a2ant_power_save_state(ptr noundef %btcoexist, i8 noundef zeroext 1, i8 noundef zeroext 80, i8 noundef zeroext 4)
  br label %if.end60

if.end60:                                         ; preds = %if.else59, %if.then58
  call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 23)
  call fastcc void @btc8821a2ant_sw_mechanism1(ptr noundef %btcoexist, i1 noundef zeroext true)
  call fastcc void @btc8821a2ant_dac_swing(ptr noundef %btcoexist, i1 noundef zeroext false, i32 noundef 24) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ap_num) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_bw) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc8821a2ant_tdma_duration_adjust(ptr noundef %btcoexist, i1 noundef zeroext %sco_hid, i1 noundef zeroext %tx_pause, i8 noundef zeroext %max_interval) unnamed_addr #0 align 64 {
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.208) #4
  %2 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 11), align 1, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.else70, label %if.then

if.then:                                          ; preds = %entry
  store i8 0, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 11), align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.209) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %max_interval)
  %cmp10 = icmp eq i8 %max_interval, 2
  br i1 %sco_hid, label %if.then4, label %if.else34

if.then4:                                         ; preds = %if.then
  br i1 %tx_pause, label %if.else, label %if.else23

if.else:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  %. = select i1 %cmp10, i8 14, i8 15
  br label %if.end69

if.else23:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  %.1400 = select i1 %cmp10, i8 10, i8 11
  br label %if.end69

if.else34:                                        ; preds = %if.then
  br i1 %tx_pause, label %if.else42, label %if.else58

if.else42:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #6
  %.1401 = select i1 %cmp10, i8 6, i8 7
  br label %if.end69

if.else58:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #6
  %.1402 = select i1 %cmp10, i8 2, i8 3
  br label %if.end69

if.end69:                                         ; preds = %if.else58, %if.else42, %if.else23, %if.else
  %.sink1383 = phi i8 [ %., %if.else ], [ %.1400, %if.else23 ], [ %.1401, %if.else42 ], [ %.1402, %if.else58 ]
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext %.sink1383)
  store i8 %.sink1383, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  store i32 0, ptr @btc8821a2ant_tdma_duration_adjust.up, align 4
  store i32 0, ptr @btc8821a2ant_tdma_duration_adjust.dn, align 4
  store i32 1, ptr @btc8821a2ant_tdma_duration_adjust.m, align 4
  store i32 3, ptr @btc8821a2ant_tdma_duration_adjust.n, align 4
  store i32 0, ptr @btc8821a2ant_tdma_duration_adjust.wait_count, align 4
  br label %if.end1167

if.else70:                                        ; preds = %entry
  %3 = load i8, ptr getelementptr inbounds (%struct.coex_sta_8821a_2ant, ptr @glcoex_sta_8821a_2ant, i32 0, i32 19), align 1
  %conv71 = zext i8 %3 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.210, i32 noundef %conv71) #4
  %4 = load i32, ptr @btc8821a2ant_tdma_duration_adjust.up, align 4
  %5 = load i32, ptr @btc8821a2ant_tdma_duration_adjust.dn, align 4
  %6 = load i32, ptr @btc8821a2ant_tdma_duration_adjust.m, align 4
  %7 = load i32, ptr @btc8821a2ant_tdma_duration_adjust.n, align 4
  %8 = load i32, ptr @btc8821a2ant_tdma_duration_adjust.wait_count, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.211, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #4
  %9 = load i32, ptr @btc8821a2ant_tdma_duration_adjust.wait_count, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr @btc8821a2ant_tdma_duration_adjust.wait_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp73 = icmp eq i8 %3, 0
  br i1 %cmp73, label %if.then75, label %if.else85

if.then75:                                        ; preds = %if.else70
  %10 = load i32, ptr @btc8821a2ant_tdma_duration_adjust.up, align 4
  %inc76 = add i32 %10, 1
  store i32 %inc76, ptr @btc8821a2ant_tdma_duration_adjust.up, align 4
  %11 = load i32, ptr @btc8821a2ant_tdma_duration_adjust.dn, align 4
  %dec = add i32 %11, -1
  %12 = tail call i32 @llvm.smax.i32(i32 %dec, i32 0)
  store i32 %12, ptr @btc8821a2ant_tdma_duration_adjust.dn, align 4
  %13 = load i32, ptr @btc8821a2ant_tdma_duration_adjust.n, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc76, i32 %13)
  %cmp81.not = icmp slt i32 %inc76, %13
  br i1 %cmp81.not, label %if.then75.if.end123_crit_edge, label %if.then83

if.then75.if.end123_crit_edge:                    ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end123

if.then83:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #6
  store i32 0, ptr @btc8821a2ant_tdma_duration_adjust.wait_count, align 4
  store i32 3, ptr @btc8821a2ant_tdma_duration_adjust.n, align 4
  br label %if.end123.sink.split

if.else85:                                        ; preds = %if.else70
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp87 = icmp ult i8 %3, 4
  br i1 %cmp87, label %if.then89, label %if.else110

if.then89:                                        ; preds = %if.else85
  %14 = load i32, ptr @btc8821a2ant_tdma_duration_adjust.up, align 4
  %dec90 = add i32 %14, -1
  store i32 %dec90, ptr @btc8821a2ant_tdma_duration_adjust.up, align 4
  %15 = load i32, ptr @btc8821a2ant_tdma_duration_adjust.dn, align 4
  %inc91 = add i32 %15, 1
  store i32 %inc91, ptr @btc8821a2ant_tdma_duration_adjust.dn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec90)
  %cmp92 = icmp slt i32 %dec90, 1
  br i1 %cmp92, label %if.then94, label %if.then89.if.end95_crit_edge

if.then89.if.end95_crit_edge:                     ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end95

if.then94:                                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #6
  store i32 0, ptr @btc8821a2ant_tdma_duration_adjust.up, align 4
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
  %16 = load i32, ptr @btc8821a2ant_tdma_duration_adjust.m, align 4
  %inc102 = add i32 %16, 1
  %17 = tail call i32 @llvm.smin.i32(i32 %inc102, i32 20)
  br label %if.end104.thread

if.end104.thread:                                 ; preds = %if.end104, %if.then98.if.end104.thread_crit_edge
  %18 = phi i32 [ 1, %if.then98.if.end104.thread_crit_edge ], [ %17, %if.end104 ]
  store i32 %18, ptr @btc8821a2ant_tdma_duration_adjust.m, align 4
  %mul = mul i32 %18, 3
  store i32 %mul, ptr @btc8821a2ant_tdma_duration_adjust.n, align 4
  store i32 0, ptr @btc8821a2ant_tdma_duration_adjust.up, align 4
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
  %19 = load i32, ptr @btc8821a2ant_tdma_duration_adjust.m, align 4
  %inc114 = add i32 %19, 1
  %20 = tail call i32 @llvm.smin.i32(i32 %inc114, i32 20)
  br label %if.end116.thread

if.end116.thread:                                 ; preds = %if.end116, %if.else110.if.end116.thread_crit_edge
  %21 = phi i32 [ 1, %if.else110.if.end116.thread_crit_edge ], [ %20, %if.end116 ]
  store i32 %21, ptr @btc8821a2ant_tdma_duration_adjust.m, align 4
  %mul121 = mul i32 %21, 3
  store i32 %mul121, ptr @btc8821a2ant_tdma_duration_adjust.n, align 4
  store i32 0, ptr @btc8821a2ant_tdma_duration_adjust.up, align 4
  br label %if.end123.sink.split

if.end123.sink.split:                             ; preds = %if.end116.thread, %if.end104.thread, %if.then83
  %btc8821a2ant_tdma_duration_adjust.dn.sink = phi ptr [ @btc8821a2ant_tdma_duration_adjust.dn, %if.end116.thread ], [ @btc8821a2ant_tdma_duration_adjust.dn, %if.end104.thread ], [ @btc8821a2ant_tdma_duration_adjust.up, %if.then83 ]
  %btc8821a2ant_tdma_duration_adjust.wait_count.sink = phi ptr [ @btc8821a2ant_tdma_duration_adjust.wait_count, %if.end116.thread ], [ @btc8821a2ant_tdma_duration_adjust.wait_count, %if.end104.thread ], [ @btc8821a2ant_tdma_duration_adjust.dn, %if.then83 ]
  %.str.214.sink = phi ptr [ @.str.214, %if.end116.thread ], [ @.str.213, %if.end104.thread ], [ @.str.212, %if.then83 ]
  %22 = xor i1 %cmp73, true
  %23 = ptrtoint ptr %btc8821a2ant_tdma_duration_adjust.dn.sink to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %btc8821a2ant_tdma_duration_adjust.dn.sink, align 4
  %24 = ptrtoint ptr %btc8821a2ant_tdma_duration_adjust.wait_count.sink to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %btc8821a2ant_tdma_duration_adjust.wait_count.sink, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.214.sink) #4
  br label %if.end123

if.end123:                                        ; preds = %if.end123.sink.split, %if.end95.if.end123_crit_edge, %if.then75.if.end123_crit_edge
  %cmp1060 = phi i1 [ false, %if.end95.if.end123_crit_edge ], [ false, %if.then75.if.end123_crit_edge ], [ %22, %if.end123.sink.split ]
  %cmp1111 = phi i1 [ false, %if.end95.if.end123_crit_edge ], [ false, %if.then75.if.end123_crit_edge ], [ %cmp73, %if.end123.sink.split ]
  %conv124 = zext i8 %max_interval to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.215, i32 noundef %conv124) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %max_interval)
  %cmp488 = icmp eq i8 %max_interval, 2
  %25 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 7), align 1
  br i1 %cmp488, label %if.then490, label %if.then829

if.then490:                                       ; preds = %if.end123
  br i1 %tx_pause, label %if.then492, label %if.else658

if.then492:                                       ; preds = %if.then490
  %switch.tableidx = add i8 %25, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx)
  %26 = icmp ult i8 %switch.tableidx, 4
  br i1 %26, label %switch.lookup, label %if.then492.if.end523_crit_edge

if.then492.if.end523_crit_edge:                   ; preds = %if.then492
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end523

switch.lookup:                                    ; preds = %if.then492
  call void @__sanitizer_cov_trace_pc() #6
  %switch.cast = zext i8 %switch.tableidx to i32
  %switch.shiftamt = shl nuw nsw i32 %switch.cast, 3
  %switch.downshift = lshr i32 134678022, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext %switch.masked)
  store i8 %switch.masked, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  %.pr = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 7), align 1
  br label %if.end523

if.end523:                                        ; preds = %switch.lookup, %if.then492.if.end523_crit_edge
  %27 = phi i8 [ %.pr, %switch.lookup ], [ %25, %if.then492.if.end523_crit_edge ]
  %switch.tableidx1404 = add i8 %27, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx1404)
  %28 = icmp ult i8 %switch.tableidx1404, 4
  br i1 %28, label %switch.lookup1403, label %if.end523.if.end554_crit_edge

if.end523.if.end554_crit_edge:                    ; preds = %if.end523
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end554

switch.lookup1403:                                ; preds = %if.end523
  call void @__sanitizer_cov_trace_pc() #6
  %switch.cast1405 = zext i8 %switch.tableidx1404 to i32
  %switch.shiftamt1406 = shl nuw nsw i32 %switch.cast1405, 3
  %switch.downshift1407 = lshr i32 269422094, %switch.shiftamt1406
  %switch.masked1408 = trunc i32 %switch.downshift1407 to i8
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext %switch.masked1408)
  store i8 %switch.masked1408, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  br label %if.end554

if.end554:                                        ; preds = %switch.lookup1403, %if.end523.if.end554_crit_edge
  br i1 %cmp1060, label %if.then557, label %if.else605

if.then557:                                       ; preds = %if.end554
  %29 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 7), align 1
  %30 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.283)
  switch i8 %29, label %if.then557.if.end1167_crit_edge [
    i8 5, label %if.then562
    i8 6, label %if.then569
    i8 7, label %if.then576
    i8 13, label %if.then583
    i8 14, label %if.then590
    i8 15, label %if.then597
  ]

if.then557.if.end1167_crit_edge:                  ; preds = %if.then557
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1167

if.then562:                                       ; preds = %if.then557
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 6)
  store i8 6, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  br label %if.end1167

if.then569:                                       ; preds = %if.then557
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 7)
  store i8 7, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  br label %if.end1167

if.then576:                                       ; preds = %if.then557
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 8)
  store i8 8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  br label %if.end1167

if.then583:                                       ; preds = %if.then557
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 14)
  store i8 14, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  br label %if.end1167

if.then590:                                       ; preds = %if.then557
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 15)
  store i8 15, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  br label %if.end1167

if.then597:                                       ; preds = %if.then557
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 16)
  store i8 16, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  br label %if.end1167

if.else605:                                       ; preds = %if.end554
  br i1 %cmp1111, label %if.then608, label %if.else605.if.end1167_crit_edge

if.else605.if.end1167_crit_edge:                  ; preds = %if.else605
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1167

if.then608:                                       ; preds = %if.else605
  %31 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 7), align 1
  %32 = zext i8 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.284)
  switch i8 %31, label %if.then608.if.end1167_crit_edge [
    i8 8, label %if.then613
    i8 7, label %if.then620
    i8 6, label %if.then627
    i8 16, label %if.then634
    i8 15, label %if.then641
    i8 14, label %if.then648
  ]

if.then608.if.end1167_crit_edge:                  ; preds = %if.then608
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1167

if.then613:                                       ; preds = %if.then608
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 7)
  store i8 7, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  br label %if.end1167

if.then620:                                       ; preds = %if.then608
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 6)
  store i8 6, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  br label %if.end1167

if.then627:                                       ; preds = %if.then608
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 6)
  store i8 6, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  br label %if.end1167

if.then634:                                       ; preds = %if.then608
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 15)
  store i8 15, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  br label %if.end1167

if.then641:                                       ; preds = %if.then608
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 14)
  store i8 14, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  br label %if.end1167

if.then648:                                       ; preds = %if.then608
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 14)
  store i8 14, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  br label %if.end1167

if.else658:                                       ; preds = %if.then490
  %switch.tableidx1410 = add i8 %25, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx1410)
  %33 = icmp ult i8 %switch.tableidx1410, 4
  br i1 %33, label %switch.lookup1409, label %if.else658.if.end689_crit_edge

if.else658.if.end689_crit_edge:                   ; preds = %if.else658
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end689

switch.lookup1409:                                ; preds = %if.else658
  call void @__sanitizer_cov_trace_pc() #6
  %switch.cast1411 = zext i8 %switch.tableidx1410 to i32
  %switch.shiftamt1412 = shl nuw nsw i32 %switch.cast1411, 3
  %switch.downshift1413 = lshr i32 67305986, %switch.shiftamt1412
  %switch.masked1414 = trunc i32 %switch.downshift1413 to i8
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext %switch.masked1414)
  store i8 %switch.masked1414, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  %.pr1379 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 7), align 1
  br label %if.end689

if.end689:                                        ; preds = %switch.lookup1409, %if.else658.if.end689_crit_edge
  %34 = phi i8 [ %.pr1379, %switch.lookup1409 ], [ %25, %if.else658.if.end689_crit_edge ]
  %switch.tableidx1416 = add i8 %34, -13
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx1416)
  %35 = icmp ult i8 %switch.tableidx1416, 4
  br i1 %35, label %switch.lookup1415, label %if.end689.if.end720_crit_edge

if.end689.if.end720_crit_edge:                    ; preds = %if.end689
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end720

switch.lookup1415:                                ; preds = %if.end689
  call void @__sanitizer_cov_trace_pc() #6
  %switch.cast1417 = zext i8 %switch.tableidx1416 to i32
  %switch.shiftamt1418 = shl nuw nsw i32 %switch.cast1417, 3
  %switch.downshift1419 = lshr i32 202050058, %switch.shiftamt1418
  %switch.masked1420 = trunc i32 %switch.downshift1419 to i8
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext %switch.masked1420)
  store i8 %switch.masked1420, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  br label %if.end720

if.end720:                                        ; preds = %switch.lookup1415, %if.end689.if.end720_crit_edge
  br i1 %cmp1060, label %if.then723, label %if.else771

if.then723:                                       ; preds = %if.end720
  %36 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 7), align 1
  %37 = zext i8 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.285)
  switch i8 %36, label %if.then723.if.end1167_crit_edge [
    i8 1, label %if.then728
    i8 2, label %if.then735
    i8 3, label %if.then742
    i8 9, label %if.then749
    i8 10, label %if.then756
    i8 11, label %if.then763
  ]

if.then723.if.end1167_crit_edge:                  ; preds = %if.then723
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1167

if.then728:                                       ; preds = %if.then723
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 2)
  store i8 2, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  br label %if.end1167

if.then735:                                       ; preds = %if.then723
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 3)
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  br label %if.end1167

if.then742:                                       ; preds = %if.then723
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 4)
  store i8 4, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  br label %if.end1167

if.then749:                                       ; preds = %if.then723
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 10)
  store i8 10, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  br label %if.end1167

if.then756:                                       ; preds = %if.then723
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 11)
  store i8 11, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  br label %if.end1167

if.then763:                                       ; preds = %if.then723
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 12)
  store i8 12, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  br label %if.end1167

if.else771:                                       ; preds = %if.end720
  br i1 %cmp1111, label %if.then774, label %if.else771.if.end1167_crit_edge

if.else771.if.end1167_crit_edge:                  ; preds = %if.else771
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1167

if.then774:                                       ; preds = %if.else771
  %38 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 7), align 1
  %39 = zext i8 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.286)
  switch i8 %38, label %if.then774.if.end1167_crit_edge [
    i8 4, label %if.then779
    i8 3, label %if.then786
    i8 2, label %if.then793
    i8 12, label %if.then800
    i8 11, label %if.then807
    i8 10, label %if.then814
  ]

if.then774.if.end1167_crit_edge:                  ; preds = %if.then774
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1167

if.then779:                                       ; preds = %if.then774
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 3)
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  br label %if.end1167

if.then786:                                       ; preds = %if.then774
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 2)
  store i8 2, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  br label %if.end1167

if.then793:                                       ; preds = %if.then774
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 2)
  store i8 2, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  br label %if.end1167

if.then800:                                       ; preds = %if.then774
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 11)
  store i8 11, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  br label %if.end1167

if.then807:                                       ; preds = %if.then774
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 10)
  store i8 10, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  br label %if.end1167

if.then814:                                       ; preds = %if.then774
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 10)
  store i8 10, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  br label %if.end1167

if.then829:                                       ; preds = %if.end123
  br i1 %tx_pause, label %if.then831, label %if.else997

if.then831:                                       ; preds = %if.then829
  %switch.tableidx1422 = add i8 %25, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx1422)
  %40 = icmp ult i8 %switch.tableidx1422, 4
  br i1 %40, label %switch.lookup1421, label %if.then831.if.end862_crit_edge

if.then831.if.end862_crit_edge:                   ; preds = %if.then831
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end862

switch.lookup1421:                                ; preds = %if.then831
  call void @__sanitizer_cov_trace_pc() #6
  %switch.cast1423 = zext i8 %switch.tableidx1422 to i32
  %switch.shiftamt1424 = shl nuw nsw i32 %switch.cast1423, 3
  %switch.downshift1425 = lshr i32 134678279, %switch.shiftamt1424
  %switch.masked1426 = trunc i32 %switch.downshift1425 to i8
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext %switch.masked1426)
  store i8 %switch.masked1426, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  %.pr1380 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 7), align 1
  br label %if.end862

if.end862:                                        ; preds = %switch.lookup1421, %if.then831.if.end862_crit_edge
  %41 = phi i8 [ %.pr1380, %switch.lookup1421 ], [ %25, %if.then831.if.end862_crit_edge ]
  %switch.tableidx1428 = add i8 %41, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx1428)
  %42 = icmp ult i8 %switch.tableidx1428, 4
  br i1 %42, label %switch.lookup1427, label %if.end862.if.end893_crit_edge

if.end862.if.end893_crit_edge:                    ; preds = %if.end862
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end893

switch.lookup1427:                                ; preds = %if.end862
  call void @__sanitizer_cov_trace_pc() #6
  %switch.cast1429 = zext i8 %switch.tableidx1428 to i32
  %switch.shiftamt1430 = shl nuw nsw i32 %switch.cast1429, 3
  %switch.downshift1431 = lshr i32 269422351, %switch.shiftamt1430
  %switch.masked1432 = trunc i32 %switch.downshift1431 to i8
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext %switch.masked1432)
  store i8 %switch.masked1432, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  br label %if.end893

if.end893:                                        ; preds = %switch.lookup1427, %if.end862.if.end893_crit_edge
  br i1 %cmp1060, label %if.then896, label %if.else944

if.then896:                                       ; preds = %if.end893
  %43 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 7), align 1
  %44 = zext i8 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.287)
  switch i8 %43, label %if.then896.if.end1167_crit_edge [
    i8 5, label %if.then901
    i8 6, label %if.then908
    i8 7, label %if.then915
    i8 13, label %if.then922
    i8 14, label %if.then929
    i8 15, label %if.then936
  ]

if.then896.if.end1167_crit_edge:                  ; preds = %if.then896
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1167

if.then901:                                       ; preds = %if.then896
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 7)
  store i8 7, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  br label %if.end1167

if.then908:                                       ; preds = %if.then896
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 7)
  store i8 7, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  br label %if.end1167

if.then915:                                       ; preds = %if.then896
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 8)
  store i8 8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  br label %if.end1167

if.then922:                                       ; preds = %if.then896
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 15)
  store i8 15, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  br label %if.end1167

if.then929:                                       ; preds = %if.then896
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 15)
  store i8 15, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  br label %if.end1167

if.then936:                                       ; preds = %if.then896
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 16)
  store i8 16, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  br label %if.end1167

if.else944:                                       ; preds = %if.end893
  br i1 %cmp1111, label %if.then947, label %if.else944.if.end1167_crit_edge

if.else944.if.end1167_crit_edge:                  ; preds = %if.else944
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1167

if.then947:                                       ; preds = %if.else944
  %45 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 7), align 1
  %46 = zext i8 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.288)
  switch i8 %45, label %if.then947.if.end1167_crit_edge [
    i8 8, label %if.then952
    i8 7, label %if.then959
    i8 6, label %if.then966
    i8 16, label %if.then973
    i8 15, label %if.then980
    i8 14, label %if.then987
  ]

if.then947.if.end1167_crit_edge:                  ; preds = %if.then947
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1167

if.then952:                                       ; preds = %if.then947
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 7)
  store i8 7, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  br label %if.end1167

if.then959:                                       ; preds = %if.then947
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 7)
  store i8 7, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  br label %if.end1167

if.then966:                                       ; preds = %if.then947
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 7)
  store i8 7, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  br label %if.end1167

if.then973:                                       ; preds = %if.then947
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 15)
  store i8 15, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  br label %if.end1167

if.then980:                                       ; preds = %if.then947
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 15)
  store i8 15, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  br label %if.end1167

if.then987:                                       ; preds = %if.then947
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 15)
  store i8 15, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  br label %if.end1167

if.else997:                                       ; preds = %if.then829
  %switch.tableidx1434 = add i8 %25, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx1434)
  %47 = icmp ult i8 %switch.tableidx1434, 4
  br i1 %47, label %switch.lookup1433, label %if.else997.if.end1028_crit_edge

if.else997.if.end1028_crit_edge:                  ; preds = %if.else997
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1028

switch.lookup1433:                                ; preds = %if.else997
  call void @__sanitizer_cov_trace_pc() #6
  %switch.cast1435 = zext i8 %switch.tableidx1434 to i32
  %switch.shiftamt1436 = shl nuw nsw i32 %switch.cast1435, 3
  %switch.downshift1437 = lshr i32 67306243, %switch.shiftamt1436
  %switch.masked1438 = trunc i32 %switch.downshift1437 to i8
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext %switch.masked1438)
  store i8 %switch.masked1438, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  %.pr1381 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 7), align 1
  br label %if.end1028

if.end1028:                                       ; preds = %switch.lookup1433, %if.else997.if.end1028_crit_edge
  %48 = phi i8 [ %.pr1381, %switch.lookup1433 ], [ %25, %if.else997.if.end1028_crit_edge ]
  %switch.tableidx1440 = add i8 %48, -13
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx1440)
  %49 = icmp ult i8 %switch.tableidx1440, 4
  br i1 %49, label %switch.lookup1439, label %if.end1028.if.end1059_crit_edge

if.end1028.if.end1059_crit_edge:                  ; preds = %if.end1028
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1059

switch.lookup1439:                                ; preds = %if.end1028
  call void @__sanitizer_cov_trace_pc() #6
  %switch.cast1441 = zext i8 %switch.tableidx1440 to i32
  %switch.shiftamt1442 = shl nuw nsw i32 %switch.cast1441, 3
  %switch.downshift1443 = lshr i32 202050315, %switch.shiftamt1442
  %switch.masked1444 = trunc i32 %switch.downshift1443 to i8
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext %switch.masked1444)
  store i8 %switch.masked1444, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  br label %if.end1059

if.end1059:                                       ; preds = %switch.lookup1439, %if.end1028.if.end1059_crit_edge
  br i1 %cmp1060, label %if.then1062, label %if.else1110

if.then1062:                                      ; preds = %if.end1059
  %50 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 7), align 1
  %51 = zext i8 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.289)
  switch i8 %50, label %if.then1062.if.end1167_crit_edge [
    i8 1, label %if.then1067
    i8 2, label %if.then1074
    i8 3, label %if.then1081
    i8 9, label %if.then1088
    i8 10, label %if.then1095
    i8 11, label %if.then1102
  ]

if.then1062.if.end1167_crit_edge:                 ; preds = %if.then1062
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1167

if.then1067:                                      ; preds = %if.then1062
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 3)
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  br label %if.end1167

if.then1074:                                      ; preds = %if.then1062
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 3)
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  br label %if.end1167

if.then1081:                                      ; preds = %if.then1062
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 4)
  store i8 4, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  br label %if.end1167

if.then1088:                                      ; preds = %if.then1062
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 11)
  store i8 11, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  br label %if.end1167

if.then1095:                                      ; preds = %if.then1062
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 11)
  store i8 11, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  br label %if.end1167

if.then1102:                                      ; preds = %if.then1062
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 12)
  store i8 12, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  br label %if.end1167

if.else1110:                                      ; preds = %if.end1059
  br i1 %cmp1111, label %if.then1113, label %if.else1110.if.end1167_crit_edge

if.else1110.if.end1167_crit_edge:                 ; preds = %if.else1110
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1167

if.then1113:                                      ; preds = %if.else1110
  %52 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 7), align 1
  %53 = zext i8 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.290)
  switch i8 %52, label %if.then1113.if.end1167_crit_edge [
    i8 4, label %if.then1118
    i8 3, label %if.then1125
    i8 2, label %if.then1132
    i8 12, label %if.then1139
    i8 11, label %if.then1146
    i8 10, label %if.then1153
  ]

if.then1113.if.end1167_crit_edge:                 ; preds = %if.then1113
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1167

if.then1118:                                      ; preds = %if.then1113
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 3)
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  br label %if.end1167

if.then1125:                                      ; preds = %if.then1113
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 3)
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  br label %if.end1167

if.then1132:                                      ; preds = %if.then1113
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 3)
  store i8 3, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  br label %if.end1167

if.then1139:                                      ; preds = %if.then1113
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 11)
  store i8 11, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  br label %if.end1167

if.then1146:                                      ; preds = %if.then1113
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 11)
  store i8 11, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  br label %if.end1167

if.then1153:                                      ; preds = %if.then1113
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext 11)
  store i8 11, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  br label %if.end1167

if.end1167:                                       ; preds = %if.then1153, %if.then1146, %if.then1139, %if.then1132, %if.then1125, %if.then1118, %if.then1113.if.end1167_crit_edge, %if.else1110.if.end1167_crit_edge, %if.then1102, %if.then1095, %if.then1088, %if.then1081, %if.then1074, %if.then1067, %if.then1062.if.end1167_crit_edge, %if.then987, %if.then980, %if.then973, %if.then966, %if.then959, %if.then952, %if.then947.if.end1167_crit_edge, %if.else944.if.end1167_crit_edge, %if.then936, %if.then929, %if.then922, %if.then915, %if.then908, %if.then901, %if.then896.if.end1167_crit_edge, %if.then814, %if.then807, %if.then800, %if.then793, %if.then786, %if.then779, %if.then774.if.end1167_crit_edge, %if.else771.if.end1167_crit_edge, %if.then763, %if.then756, %if.then749, %if.then742, %if.then735, %if.then728, %if.then723.if.end1167_crit_edge, %if.then648, %if.then641, %if.then634, %if.then627, %if.then620, %if.then613, %if.then608.if.end1167_crit_edge, %if.else605.if.end1167_crit_edge, %if.then597, %if.then590, %if.then583, %if.then576, %if.then569, %if.then562, %if.then557.if.end1167_crit_edge, %if.end69
  %54 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 7), align 1
  %55 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %54, i8 %55)
  %cmp1172.not = icmp eq i8 %54, %55
  br i1 %cmp1172.not, label %if.end1167.if.end1191_crit_edge, label %if.then1174

if.end1167.if.end1191_crit_edge:                  ; preds = %if.end1167
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1191

if.then1174:                                      ; preds = %if.end1167
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %scan) #4
  %56 = ptrtoint ptr %scan to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %scan, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link) #4
  %57 = ptrtoint ptr %link to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %link, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %roam) #4
  %58 = ptrtoint ptr %roam to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %roam, align 1
  %conv1176 = zext i8 %54 to i32
  %conv1178 = zext i8 %55 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.216, i32 noundef %conv1176, i32 noundef %conv1178) #4
  %btc_get = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %59 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %btc_get, align 4
  %call = call zeroext i1 %60(ptr noundef %btcoexist, i8 noundef zeroext 5, ptr noundef nonnull %scan) #4
  %61 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %btc_get, align 4
  %call1180 = call zeroext i1 %62(ptr noundef %btcoexist, i8 noundef zeroext 6, ptr noundef nonnull %link) #4
  %63 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %btc_get, align 4
  %call1182 = call zeroext i1 %64(ptr noundef %btcoexist, i8 noundef zeroext 11, ptr noundef nonnull %roam) #4
  %65 = ptrtoint ptr %scan to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %scan, align 1, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool1183.not = icmp eq i8 %66, 0
  br i1 %tobool1183.not, label %land.lhs.true, label %if.then1174.if.else1189_crit_edge

if.then1174.if.else1189_crit_edge:                ; preds = %if.then1174
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else1189

land.lhs.true:                                    ; preds = %if.then1174
  %67 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %link, align 1, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool1184.not = icmp eq i8 %68, 0
  br i1 %tobool1184.not, label %land.lhs.true1185, label %land.lhs.true.if.else1189_crit_edge

land.lhs.true.if.else1189_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else1189

land.lhs.true1185:                                ; preds = %land.lhs.true
  %69 = ptrtoint ptr %roam to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %roam, align 1, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool1186.not = icmp eq i8 %70, 0
  br i1 %tobool1186.not, label %if.then1187, label %land.lhs.true1185.if.else1189_crit_edge

land.lhs.true1185.if.else1189_crit_edge:          ; preds = %land.lhs.true1185
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else1189

if.then1187:                                      ; preds = %land.lhs.true1185
  call void @__sanitizer_cov_trace_pc() #6
  %71 = load i8, ptr getelementptr inbounds (%struct.coex_dm_8821a_2ant, ptr @glcoex_dm_8821a_2ant, i32 0, i32 9), align 1
  call fastcc void @btc8821a2ant_ps_tdma(ptr noundef %btcoexist, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext %71)
  br label %if.end1190

if.else1189:                                      ; preds = %land.lhs.true1185.if.else1189_crit_edge, %land.lhs.true.if.else1189_crit_edge, %if.then1174.if.else1189_crit_edge
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.217) #4
  br label %if.end1190

if.end1190:                                       ; preds = %if.else1189, %if.then1187
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %roam) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %scan) #4
  br label %if.end1191

if.end1191:                                       ; preds = %if.end1190, %if.end1167.if.end1191_crit_edge
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 226)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 226)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !215, !216, !218, !220, !222, !224, !226, !228, !230, !231, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !287, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462}
!llvm.module.flags = !{!464, !465, !466, !467, !468, !469, !470, !471}
!llvm.ident = !{!472}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3549, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3617, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3637, i32 14}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3639, i32 16}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3639, i32 38}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3643, i32 17}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3643, i32 29}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3646, i32 16}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3646, i32 38}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3647, i32 40}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3647, i32 48}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3652, i32 16}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3653, i32 6}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3663, i32 16}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3664, i32 6}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3667, i32 16}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3668, i32 6}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3673, i32 16}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3673, i32 39}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3679, i32 16}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3679, i32 42}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3690, i32 16}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3690, i32 43}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3691, i32 23}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3691, i32 30}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3692, i32 41}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3693, i32 41}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3693, i32 50}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3694, i32 22}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3696, i32 8}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3696, i32 19}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3699, i32 17}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3700, i32 7}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3710, i32 16}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3710, i32 33}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3711, i32 27}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3711, i32 42}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3715, i32 18}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3722, i32 16}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3723, i32 6}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3724, i32 30}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3724, i32 41}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3725, i32 30}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3725, i32 41}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3730, i32 6}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3731, i32 16}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3732, i32 6}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3738, i32 6}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3742, i32 17}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3743, i32 7}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3746, i32 39}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3752, i32 28}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3754, i32 16}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3754, i32 35}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3759, i32 16}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3760, i32 6}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3765, i32 16}
!114 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3766, i32 6}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3771, i32 6}
!118 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3777, i32 16}
!120 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3778, i32 6}
!122 = !{ptr @.str.61, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3784, i32 6}
!124 = !{ptr @.str.62, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3790, i32 6}
!126 = !{ptr @.str.63, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3797, i32 6}
!128 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3804, i32 6}
!130 = !{ptr @.str.65, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3807, i32 16}
!132 = !{ptr @.str.66, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3808, i32 6}
!134 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3811, i32 6}
!136 = !{ptr @.str.68, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3817, i32 6}
!138 = !{ptr @.str.69, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3828, i32 3}
!140 = !{ptr @.str.70, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3835, i32 3}
!142 = !{ptr @.str.71, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3849, i32 3}
!144 = !{ptr @.str.72, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3853, i32 3}
!146 = !{ptr @.str.73, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3864, i32 3}
!148 = !{ptr @.str.74, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3867, i32 3}
!150 = !{ptr @.str.75, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3877, i32 3}
!152 = !{ptr @.str.76, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3880, i32 3}
!154 = !{ptr @.str.77, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3895, i32 3}
!156 = !{ptr @.str.78, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3898, i32 3}
!158 = !{ptr @.str.79, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3925, i32 2}
!160 = !{ptr @.str.80, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3940, i32 3}
!162 = !{ptr @.str.81, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3964, i32 2}
!164 = !{ptr @.str.82, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3972, i32 4}
!166 = !{ptr @.str.83, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3975, i32 4}
!168 = !{ptr @.str.84, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3981, i32 3}
!170 = !{ptr @.str.85, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 4004, i32 4}
!172 = !{ptr @.str.86, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 4027, i32 4}
!174 = !{ptr @.str.87, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 4031, i32 5}
!176 = !{ptr @.str.88, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 4035, i32 6}
!178 = !{ptr @.str.89, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 4043, i32 5}
!180 = !{ptr @.str.90, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 4050, i32 6}
!182 = !{ptr @.str.91, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 4105, i32 3}
!184 = !{ptr @.str.92, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 4110, i32 3}
!186 = !{ptr @.str.93, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 4115, i32 3}
!188 = !{ptr @.str.94, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 4119, i32 3}
!190 = !{ptr @.str.95, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 4123, i32 3}
!192 = !{ptr @.str.96, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 4149, i32 2}
!194 = !{ptr @.str.97, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 4161, i32 2}
!196 = !{ptr @.str.98, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 4164, i32 3}
!198 = !{ptr @.str.99, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 4167, i32 3}
!200 = !{ptr @.str.100, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 4179, i32 2}
!202 = !{ptr @.str.101, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 4188, i32 4}
!204 = distinct !{null, !205, !"coex_dm", i1 false, i1 false}
!205 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 23, i32 35}
!206 = !{ptr @glcoex_dm_8821a_2ant, !207, !"glcoex_dm_8821a_2ant", i1 false, i1 false}
!207 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 22, i32 34}
!208 = distinct !{null, !209, !"coex_sta", i1 false, i1 false}
!209 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 25, i32 36}
!210 = !{ptr @glcoex_sta_8821a_2ant, !211, !"glcoex_sta_8821a_2ant", i1 false, i1 false}
!211 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 24, i32 35}
!212 = !{ptr @.str.102, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 840, i32 2}
!214 = !{ptr @.str.103, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @.str.104, !213, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @.str.105, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 850, i32 3}
!218 = !{ptr @.str.106, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 856, i32 3}
!220 = !{ptr @.str.107, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 817, i32 2}
!222 = !{ptr @.str.108, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 821, i32 2}
!224 = !{ptr @.str.109, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 825, i32 2}
!226 = !{ptr @.str.110, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 829, i32 2}
!228 = !{ptr @.str.111, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 1140, i32 2}
!230 = !{ptr @.str.112, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @.str.113, !229, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @.str.114, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 1148, i32 3}
!234 = !{ptr @.str.115, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 1151, i32 3}
!236 = !{ptr @.str.116, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 150, i32 5}
!238 = !{ptr @.str.117, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 154, i32 5}
!240 = !{ptr @.str.118, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 160, i32 5}
!242 = !{ptr @.str.119, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 164, i32 5}
!244 = distinct !{null, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 170, i32 4}
!246 = distinct !{null, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 183, i32 5}
!248 = distinct !{null, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 205, i32 5}
!250 = !{ptr @.str.123, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 57, i32 5}
!252 = !{ptr @.str.124, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 61, i32 5}
!254 = !{ptr @.str.125, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 67, i32 5}
!256 = !{ptr @.str.126, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 71, i32 5}
!258 = !{ptr @.str.127, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 77, i32 4}
!260 = distinct !{null, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 88, i32 5}
!262 = distinct !{null, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 111, i32 5}
!264 = !{ptr @.str.130, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 1048, i32 2}
!266 = !{ptr @.str.131, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 680, i32 2}
!268 = !{ptr @.str.132, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 686, i32 3}
!270 = !{ptr @.str.133, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 628, i32 2}
!272 = !{ptr @.str.134, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 630, i32 2}
!274 = !{ptr @.str.135, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 656, i32 2}
!276 = !{ptr @.str.136, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 662, i32 3}
!278 = !{ptr @.str.137, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 644, i32 2}
!280 = !{ptr @.str.138, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 734, i32 2}
!282 = !{ptr @.str.139, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 741, i32 3}
!284 = !{ptr @.str.140, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 722, i32 2}
!286 = !{ptr @.str.141, !285, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @.str.142, !285, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @.str.143, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 782, i32 2}
!290 = !{ptr @.str.144, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 791, i32 3}
!292 = !{ptr @.str.145, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 761, i32 2}
!294 = distinct !{null, !295, !"glcoex_ver_date_8821a_2ant", i1 false, i1 false}
!295 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 33, i32 12}
!296 = distinct !{null, !297, !"glcoex_ver_8821a_2ant", i1 false, i1 false}
!297 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 34, i32 12}
!298 = !{ptr @.str.146, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 28, i32 2}
!300 = !{ptr @.str.147, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 29, i32 2}
!302 = !{ptr @.str.148, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 30, i32 2}
!304 = distinct !{null, !305, !"glbt_info_src_8821a_2ant", i1 false, i1 false}
!305 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 27, i32 26}
!306 = !{ptr @.str.149, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 1009, i32 2}
!308 = !{ptr @.str.150, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 1015, i32 3}
!310 = !{ptr @.str.151, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 970, i32 2}
!312 = !{ptr @.str.152, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 333, i32 2}
!314 = !{ptr @.str.153, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3377, i32 3}
!316 = !{ptr @.str.154, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3385, i32 3}
!318 = !{ptr @.str.155, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3392, i32 3}
!320 = !{ptr @.str.156, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3400, i32 3}
!322 = !{ptr @.str.157, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3411, i32 3}
!324 = !{ptr @.str.158, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3424, i32 3}
!326 = !{ptr @.str.159, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3445, i32 2}
!328 = !{ptr @.str.160, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3449, i32 3}
!330 = !{ptr @.str.161, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3454, i32 4}
!332 = !{ptr @.str.162, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3462, i32 4}
!334 = !{ptr @.str.163, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3467, i32 4}
!336 = !{ptr @.str.164, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3472, i32 4}
!338 = !{ptr @.str.165, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3477, i32 4}
!340 = !{ptr @.str.166, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3482, i32 4}
!342 = !{ptr @.str.167, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3487, i32 4}
!344 = !{ptr @.str.168, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3492, i32 4}
!346 = !{ptr @.str.169, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3497, i32 4}
!348 = !{ptr @.str.170, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3502, i32 4}
!350 = !{ptr @.str.171, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3507, i32 4}
!352 = !{ptr @.str.172, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 3512, i32 4}
!354 = !{ptr @.str.173, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 440, i32 3}
!356 = !{ptr @.str.174, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 456, i32 4}
!358 = !{ptr @.str.175, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 461, i32 5}
!360 = !{ptr @.str.176, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 465, i32 5}
!362 = !{ptr @.str.177, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 470, i32 6}
!364 = !{ptr @.str.178, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 475, i32 6}
!366 = !{ptr @.str.179, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 485, i32 5}
!368 = !{ptr @.str.180, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 489, i32 5}
!370 = !{ptr @.str.181, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 494, i32 6}
!372 = !{ptr @.str.182, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 499, i32 6}
!374 = !{ptr @.str.183, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 508, i32 5}
!376 = !{ptr @.str.184, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 514, i32 6}
!378 = !{ptr @.str.185, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 519, i32 6}
!380 = !{ptr @.str.186, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 528, i32 6}
!382 = !{ptr @.str.187, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 534, i32 6}
!384 = !{ptr @.str.188, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 546, i32 5}
!386 = !{ptr @.str.189, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 552, i32 6}
!388 = !{ptr @.str.190, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 557, i32 6}
!390 = !{ptr @.str.191, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 565, i32 6}
!392 = !{ptr @.str.192, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 570, i32 6}
!394 = !{ptr @.str.193, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 581, i32 6}
!396 = !{ptr @.str.194, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 587, i32 6}
!398 = !{ptr @.str.195, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 601, i32 6}
!400 = !{ptr @.str.196, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 606, i32 6}
!402 = !{ptr @.str.197, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 1473, i32 3}
!404 = !{ptr @.str.198, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 1478, i32 3}
!406 = !{ptr @.str.199, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 1483, i32 3}
!408 = !{ptr @.str.200, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 1510, i32 2}
!410 = !{ptr @.str.201, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 1592, i32 3}
!412 = !{ptr @.str.202, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 1620, i32 4}
!414 = !{ptr @.str.203, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 1650, i32 4}
!416 = !{ptr @.str.204, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 1679, i32 5}
!418 = !{ptr @.str.205, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 1683, i32 5}
!420 = !{ptr @.str.206, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 1531, i32 3}
!422 = !{ptr @.str.207, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 1550, i32 3}
!424 = !{ptr @btc8821a2ant_tdma_duration_adjust.up, !425, !"up", i1 false, i1 false}
!425 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 1699, i32 14}
!426 = !{ptr @btc8821a2ant_tdma_duration_adjust.dn, !427, !"dn", i1 false, i1 false}
!427 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 1699, i32 18}
!428 = !{ptr @btc8821a2ant_tdma_duration_adjust.m, !429, !"m", i1 false, i1 false}
!429 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 1699, i32 22}
!430 = !{ptr @btc8821a2ant_tdma_duration_adjust.n, !431, !"n", i1 false, i1 false}
!431 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 1699, i32 25}
!432 = !{ptr @btc8821a2ant_tdma_duration_adjust.wait_count, !433, !"wait_count", i1 false, i1 false}
!433 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 1699, i32 28}
!434 = !{ptr @.str.208, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 1707, i32 2}
!436 = !{ptr @.str.209, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 1712, i32 3}
!438 = !{ptr @.str.210, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 1785, i32 3}
!440 = !{ptr @.str.211, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 1787, i32 3}
!442 = !{ptr @.str.212, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 1810, i32 5}
!444 = !{ptr @.str.213, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 1840, i32 5}
!446 = !{ptr @.str.214, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 1862, i32 4}
!448 = !{ptr @.str.215, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 1866, i32 3}
!450 = !{ptr @.str.216, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 2575, i32 3}
!452 = !{ptr @.str.217, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 2587, i32 4}
!454 = !{ptr @.str.218, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 276, i32 2}
!456 = !{ptr @.str.219, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 279, i32 2}
!458 = !{ptr @btc8821a2ant_is_wifi_status_changed.pre_wifi_busy, !459, !"pre_wifi_busy", i1 false, i1 false}
!459 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 342, i32 14}
!460 = !{ptr @btc8821a2ant_is_wifi_status_changed.pre_under_4way, !461, !"pre_under_4way", i1 false, i1 false}
!461 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 343, i32 14}
!462 = !{ptr @btc8821a2ant_is_wifi_status_changed.pre_bt_hs_on, !463, !"pre_bt_hs_on", i1 false, i1 false}
!463 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtc8821a2ant.c", i32 344, i32 14}
!464 = !{i32 1, !"wchar_size", i32 2}
!465 = !{i32 1, !"min_enum_size", i32 4}
!466 = !{i32 8, !"branch-target-enforcement", i32 0}
!467 = !{i32 8, !"sign-return-address", i32 0}
!468 = !{i32 8, !"sign-return-address-all", i32 0}
!469 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!470 = !{i32 7, !"uwtable", i32 1}
!471 = !{i32 7, !"frame-pointer", i32 2}
!472 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!473 = !{i8 0, i8 2}
!474 = !{!"auto-init"}
!475 = distinct !{!475, !476}
!476 = !{!"llvm.loop.peeled.count", i32 2}
